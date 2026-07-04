// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { AccessControlEnumerable } from "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

struct InitAction {
    uint8 actionType;
    address shareholder;
    uint256 amountOrValue;
    uint64 timestamp;
}

contract SnowblVault is ERC4626, Ownable, AccessControlEnumerable, ReentrancyGuard {
    using Math for uint256;

    error ProtocolPaused();
    error InvalidAddress();
    error AccountNotAdmin();
    error CannotRevokeLastAdmin();
    error AccountNotValidator();
    error InvalidRecipient();
    error InsufficientBalance();
    error InvalidAssetsAmount();
    error InsufficientShares();
    error RequestAlreadyExecuted();
    error RequestDoesNotExist();
    error InsufficientFunds();
    error UseRequestDeposit();
    error UseRequestWithdrawal();
    error FeeRateTooHigh();
    error ExceedsMaxDailyIncrease();
    error ExceedsMaxDailyDecrease();
    error InvalidTimeframe();
    error InvalidBPS();
    error AssetsMigrationFailed();
    error AlreadyInitialized();

    struct DepositRequest {
        address to;
        uint256 assets;
        uint64 timestamp;
        bool executed;
    }

    struct WithdrawalRequest {
        address to;
        uint256 shares;
        uint64 timestamp;
        bool executed;
    }

    struct SharePriceSnapshot {
        uint64 timestamp;
        uint256 sharePrice;
    }

    bool public initialized;

    uint16 public constant MAX_SNAPSHOTS = 168; // 7 days of hourly snapshots max
    SharePriceSnapshot[MAX_SNAPSHOTS] public sharePriceHistory;
    uint16 public snapshotIndex;

    uint64 public snapshotMinTimeGap = 1 hours;

    uint64 public validationTimeframe = 24 hours;
    uint16 public maxDailyIncreaseBps = 30; // +0.3%
    uint16 public maxDailyDecreaseBps = 10; // -0.1%

    mapping(uint256 requestId => DepositRequest request) public depositRequests;
    uint256 public nextDepositId;
    uint256[] public pendingDepositIds;

    mapping(uint256 requestId => WithdrawalRequest request) public withdrawalRequests;
    uint256 public nextWithdrawalId;

    uint256 public totalValueLocked;
    uint256 public highWatermarkSharePrice;
    uint16 public performanceFeeBps;
    uint64 public lastUpdateTimestamp;
    bool public isPaused;

    address public performanceFeeRecipient;

    uint256 public immutable assetDecimals;

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant VALIDATOR_ROLE = keccak256("VALIDATOR_ROLE");
    uint16 public constant BPS_DIVISOR = 10_000;
    uint256 public constant SECONDS_PER_YEAR = 365 * 24 * 60 * 60;

    event TotalValueLockedModified(uint256 oldValue, uint256 newValue, uint64 timestamp);
    event SharePriceModified(uint256 oldSharePrice, uint256 newSharePrice, uint64 timestamp);
    event TotalSupplyModified(uint256 oldSupply, uint256 newSupply, uint64 timestamp);

    event FundsDepositInitiated(
        uint256 indexed requestId, address indexed initiator, address indexed to, uint256 assets, uint64 timestamp
    );
    event FundsDepositCompleted(
        uint256 indexed requestId, address indexed to, uint256 assets, uint256 shares, uint64 timestamp
    );
    event FundsWithdrawalInitiated(
        uint256 indexed requestId, address indexed initiator, address indexed to, uint256 shares, uint64 timestamp
    );
    event FundsWithdrawalCompleted(
        uint256 indexed requestId, address indexed to, uint256 shares, uint256 assets, uint64 timestamp
    );
    event PerformanceFeeCollected(uint256 amount, uint256 shares, uint64 timestamp);
    event PerformanceFeeModified(uint16 oldRate, uint16 newRate);
    event VaultPaused(address account);
    event VaultUnpaused(address account);
    event AssetsMigrated(address indexed token, address indexed to, uint256 amount);

    event RiskParametersModified(
        uint64 timeframe,
        uint16 maxIncreaseBps,
        uint16 maxDecreaseBps,
        uint64 timeGap,
        uint64 oldTimeframe,
        uint16 oldMaxIncreaseBps,
        uint16 oldMaxDecreaseBps,
        uint64 oldTimeGap
    );
    event PerformanceFeeRecipientModified(address indexed recipient, address indexed oldRecipient);
    event ExternalAssetsReceived(address indexed token, address indexed from, uint256 amount);

    constructor(
        IERC20 _asset,
        uint256 _decimals,
        string memory _name,
        string memory _symbol,
        uint16 _performanceFeeBps,
        address owner_,
        address _performanceFeeRecipient
    )
        ERC4626(_asset)
        ERC20(_name, _symbol)
        Ownable(msg.sender)
    {
        _transferOwnership(owner_);
        assetDecimals = _decimals;
        totalValueLocked = 0;
        performanceFeeBps = _performanceFeeBps;
        performanceFeeRecipient = _performanceFeeRecipient;
        highWatermarkSharePrice = 0;
        lastUpdateTimestamp = 0;
        isPaused = false;

        _grantRole(ADMIN_ROLE, msg.sender);

        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        _setRoleAdmin(VALIDATOR_ROLE, ADMIN_ROLE);
    }

    modifier whenNotPaused() {
        if (isPaused) revert ProtocolPaused();
        _;
    }

    function getSharePrice() public view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0 || totalValueLocked == 0) {
            return 0;
        }
        return (totalValueLocked * 10 ** assetDecimals) / supply;
    }

    function grantAdminRole(address account) external onlyRole(ADMIN_ROLE) {
        if (account == address(0)) revert InvalidAddress();
        grantRole(ADMIN_ROLE, account);
    }

    function revokeAdminRole(address account) external onlyRole(ADMIN_ROLE) {
        if (account == address(0)) revert InvalidAddress();
        if (!hasRole(ADMIN_ROLE, account)) revert AccountNotAdmin();

        if (getRoleMemberCount(ADMIN_ROLE) <= 1) {
            revert CannotRevokeLastAdmin();
        }

        revokeRole(ADMIN_ROLE, account);
    }

    function grantValidatorRole(address account) external onlyRole(ADMIN_ROLE) {
        if (account == address(0)) revert InvalidAddress();
        grantRole(VALIDATOR_ROLE, account);
    }

    function revokeValidatorRole(address account) external onlyRole(ADMIN_ROLE) {
        if (account == address(0)) revert InvalidAddress();
        if (!hasRole(VALIDATOR_ROLE, account)) revert AccountNotValidator();
        revokeRole(VALIDATOR_ROLE, account);
    }

    function setPerformanceFeeRecipient(address _recipient) external onlyRole(ADMIN_ROLE) {
        if (_recipient == address(0)) revert InvalidAddress();
        address oldPerformanceFeeRecipient = performanceFeeRecipient;
        performanceFeeRecipient = _recipient;
        emit PerformanceFeeRecipientModified(_recipient, oldPerformanceFeeRecipient);
    }

    function transferAssets(address token, address to, uint256 amount) external onlyRole(ADMIN_ROLE) nonReentrant {
        if (to == address(0)) revert InvalidRecipient();
        if (token == address(0)) revert InvalidAddress();
        if (IERC20(token).balanceOf(address(this)) < amount) revert InsufficientBalance();
        bool success = IERC20(token).transfer(to, amount);
        if (!success) revert AssetsMigrationFailed();
        emit AssetsMigrated(token, to, amount);
    }

    function updateTotalValueLockedByAdmin(
        uint256 _newValue,
        uint64 _timestamp,
        bool clearSharePriceHistory
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        if (_timestamp == 0) _timestamp = uint64(block.timestamp);
        if (clearSharePriceHistory) {
            clearAllSnapshots();
        }
        _updateTotalValueLocked(_newValue, _timestamp);
    }

    function updateTotalValueLockedByValidator(uint256 _newValue) external onlyRole(VALIDATOR_ROLE) whenNotPaused {
        uint256 supply = totalSupply();
        uint256 referenceSharePrice = _getReferenceSharePrice(uint64(block.timestamp), validationTimeframe);

        if (referenceSharePrice > 0 && supply > 0) {
            uint256 newSharePrice = (_newValue * 10 ** assetDecimals) / supply;
            if (newSharePrice > referenceSharePrice) {
                uint256 increasePct = ((newSharePrice - referenceSharePrice) * BPS_DIVISOR) / referenceSharePrice;
                if (increasePct > maxDailyIncreaseBps) revert ExceedsMaxDailyIncrease();
            } else {
                uint256 decreasePct = ((referenceSharePrice - newSharePrice) * BPS_DIVISOR) / referenceSharePrice;
                if (decreasePct > maxDailyDecreaseBps) revert ExceedsMaxDailyDecrease();
            }
        }
        _updateTotalValueLocked(_newValue, uint64(block.timestamp));
    }

    function _updateTotalValueLocked(uint256 _newValue, uint64 _timestamp) internal {
        if (_timestamp == 0) _timestamp = uint64(block.timestamp);
        uint256 oldValue = totalValueLocked;
        uint256 oldSharePrice = getSharePrice();
        totalValueLocked = _newValue;

        uint256 supply = totalSupply();
        uint256 newRawSharePrice = supply > 0 ? (_newValue * 10 ** assetDecimals) / supply : _newValue;
        if (highWatermarkSharePrice == 0) {
            highWatermarkSharePrice = oldSharePrice;
        }

        if (newRawSharePrice > highWatermarkSharePrice) {
            claimPerformanceFee(newRawSharePrice, _timestamp);
        }

        lastUpdateTimestamp = _timestamp;
        processPendingDeposits(_timestamp);

        uint256 finalSharePrice = getSharePrice();
        uint256 finalTotalValueLocked = totalValueLocked;
        uint256 finalSupply = totalSupply();

        _recordSharePriceSnapshot(finalSharePrice, _timestamp);

        emit TotalValueLockedModified(oldValue, finalTotalValueLocked, _timestamp);
        emit SharePriceModified(oldSharePrice, finalSharePrice, _timestamp);
        emit TotalSupplyModified(supply, finalSupply, _timestamp);
    }

    function _recordSharePriceSnapshot(uint256 sharePrice, uint64 timestamp) internal {
        if (totalSupply() == 0 || timestamp == 0) return;

        for (uint16 i = 0; i < MAX_SNAPSHOTS; i++) {
            if (sharePriceHistory[i].timestamp == 0) continue;
            if (
                timestamp > sharePriceHistory[i].timestamp
                    && timestamp - sharePriceHistory[i].timestamp < snapshotMinTimeGap
            ) {
                return;
            }
        }
        snapshotIndex = (snapshotIndex + 1) % MAX_SNAPSHOTS;
        sharePriceHistory[snapshotIndex] = SharePriceSnapshot({ timestamp: timestamp, sharePrice: sharePrice });
    }

    function clearAllSnapshots() public onlyRole(ADMIN_ROLE) {
        for (uint16 i = 0; i < MAX_SNAPSHOTS; i++) {
            delete sharePriceHistory[i];
        }
    }

    function clearSnapshotAt(uint16 index) external onlyRole(ADMIN_ROLE) {
        require(index < MAX_SNAPSHOTS, "Index out of bounds");
        delete sharePriceHistory[index];
    }

    function _getReferenceSharePrice(uint64 currentTime, uint64 timeframe) internal view returns (uint256) {
        if (timeframe == 0) return 0;
        uint64 target = currentTime > timeframe ? currentTime - timeframe : 0;
        uint256 closestDelta = type(uint64).max;
        uint256 ref = 0;
        for (uint16 i = 0; i < MAX_SNAPSHOTS; i++) {
            SharePriceSnapshot memory snap = sharePriceHistory[i];
            if (snap.timestamp == 0 || snap.sharePrice == 0) continue;
            uint64 delta = target > snap.timestamp ? target - snap.timestamp : snap.timestamp - target;
            if (delta < closestDelta) {
                closestDelta = delta;
                ref = snap.sharePrice;
            }
        }

        return ref;
    }

    function processPendingDeposits(uint64 _timestamp) internal {
        if (pendingDepositIds.length == 0) {
            return;
        }

        uint256 supply = totalSupply();
        uint256 totalNewAssets = 0;
        uint256 pendingLength = pendingDepositIds.length;

        for (uint256 i = 0; i < pendingLength; i++) {
            uint256 requestId = pendingDepositIds[i];
            DepositRequest storage request = depositRequests[requestId];

            if (request.to != address(0) && !request.executed) {
                uint256 shares = convertToShares(request.assets, supply);
                request.executed = true;
                _mint(request.to, shares);
                totalNewAssets += request.assets;
                emit FundsDepositCompleted(requestId, request.to, request.assets, shares, _timestamp);
                delete depositRequests[requestId];
            }
        }

        if (totalNewAssets > 0) {
            totalValueLocked += totalNewAssets;
        }

        delete pendingDepositIds;
    }

    function pendingDepositAmount() external view returns (uint256) {
        uint256 totalPending = 0;
        for (uint256 i = 0; i < pendingDepositIds.length; i++) {
            uint256 requestId = pendingDepositIds[i];
            DepositRequest storage request = depositRequests[requestId];
            if (!request.executed && request.to != address(0)) {
                totalPending += request.assets;
            }
        }
        return totalPending;
    }

    function requestDeposit(uint256 assets, address to) external whenNotPaused returns (uint256) {
        if (assets == 0) revert InvalidAssetsAmount();
        if (to == address(0)) revert InvalidRecipient();

        IERC20(asset()).transferFrom(msg.sender, address(this), assets);

        uint256 requestId = nextDepositId++;
        depositRequests[requestId] =
            DepositRequest({ to: to, assets: assets, timestamp: uint64(block.timestamp), executed: false });

        pendingDepositIds.push(requestId);
        emit FundsDepositInitiated(requestId, msg.sender, to, assets, uint64(block.timestamp));

        return requestId;
    }

    function requestWithdrawal(uint256 shares, address to) external whenNotPaused returns (uint256) {
        if (shares == 0) revert InvalidAssetsAmount();
        if (to == address(0)) revert InvalidRecipient();
        if (balanceOf(msg.sender) < shares) revert InsufficientShares();

        uint256 requestId = nextWithdrawalId++;

        withdrawalRequests[requestId] =
            WithdrawalRequest({ to: to, shares: shares, timestamp: uint64(block.timestamp), executed: false });

        _transfer(msg.sender, address(this), shares);

        emit FundsWithdrawalInitiated(requestId, msg.sender, to, shares, uint64(block.timestamp));

        return requestId;
    }

    function executeWithdrawal(
        uint256[] calldata requestIds,
        uint64 _timestamp
    )
        external
        onlyRole(ADMIN_ROLE)
        whenNotPaused
        nonReentrant
    {
        if (_timestamp == 0) _timestamp = uint64(block.timestamp);
        for (uint256 i = 0; i < requestIds.length; i++) {
            uint256 requestId = requestIds[i];
            WithdrawalRequest storage request = withdrawalRequests[requestId];
            if (request.executed) revert RequestAlreadyExecuted();
            if (request.to == address(0)) revert RequestDoesNotExist();
            uint256 assets = convertToAssets(request.shares);
            if (assets > totalValueLocked) revert InsufficientFunds();
            request.executed = true;
            totalValueLocked -= assets;
            _burn(address(this), request.shares);
            IERC20(asset()).transfer(request.to, assets);
            emit FundsWithdrawalCompleted(requestId, request.to, request.shares, assets, _timestamp);
            delete withdrawalRequests[requestId];
        }
    }

    function convertToShares(uint256 assets) public view override returns (uint256) {
        return convertToShares(assets, totalSupply());
    }

    function convertToShares(uint256 assets, uint256 supply) public view returns (uint256) {
        if (supply == 0 || totalValueLocked == 0) {
            return assets;
        }
        return assets.mulDiv(supply, totalValueLocked);
    }

    function convertToSharesUp(
        uint256 assets,
        uint256 supply,
        uint256 _totalValueLocked
    )
        public
        pure
        returns (uint256)
    {
        if (supply == 0 || _totalValueLocked == 0) {
            return assets;
        }
        return Math.mulDiv(assets, supply, _totalValueLocked, Math.Rounding.Ceil);
    }

    function convertToAssets(uint256 shares) public view override returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) {
            return shares;
        }
        return shares.mulDiv(totalValueLocked, supply);
    }

    function totalAssets() public view override returns (uint256) {
        return totalValueLocked;
    }

    function claimPerformanceFee(uint256 _currentSharePrice, uint64 _timestamp) internal {
        if (performanceFeeRecipient == address(0)) revert InvalidAddress();

        uint256 performanceFee;

        uint256 difference =
            _currentSharePrice > highWatermarkSharePrice ? _currentSharePrice - highWatermarkSharePrice : 0;
        if (difference == 0) {
            return;
        }
        uint256 feePctDifference = Math.mulDiv(difference, performanceFeeBps, BPS_DIVISOR, Math.Rounding.Ceil);
        if (feePctDifference > 0) {
            performanceFee = Math.mulDiv(totalValueLocked, feePctDifference, _currentSharePrice, Math.Rounding.Ceil);
            uint256 shares = convertToSharesUp(performanceFee, totalSupply(), totalValueLocked - performanceFee);
            _mint(performanceFeeRecipient, shares);
            emit PerformanceFeeCollected(performanceFee, shares, _timestamp);
            highWatermarkSharePrice = _currentSharePrice + 1;
        }
    }

    function updatePerformanceFeeBps(uint16 _newRate) external onlyRole(ADMIN_ROLE) {
        if (_newRate > 5000) revert FeeRateTooHigh();
        uint16 oldRate = performanceFeeBps;
        performanceFeeBps = _newRate;
        emit PerformanceFeeModified(oldRate, _newRate);
    }

    function deposit(uint256, address) public pure override returns (uint256) {
        revert UseRequestDeposit();
    }

    function mint(uint256, address) public pure override returns (uint256) {
        revert UseRequestDeposit();
    }

    function withdraw(uint256, address, address) public pure override returns (uint256) {
        revert UseRequestWithdrawal();
    }

    function redeem(uint256, address, address) public pure override returns (uint256) {
        revert UseRequestWithdrawal();
    }

    function setValidationParams(
        uint64 _timeframe,
        uint16 _maxIncreaseBps,
        uint16 _maxDecreaseBps,
        uint64 _timeGap
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        if (!(_timeframe >= 1 hours && _timeframe <= 7 days)) revert InvalidTimeframe();
        if (!(_maxIncreaseBps <= 10_000 && _maxDecreaseBps <= 10_000)) revert InvalidBPS();
        if (!(_timeGap >= 1 minutes && _timeGap <= 7 days)) revert InvalidTimeframe();

        uint64 oldTimeframe = validationTimeframe;
        uint16 oldMaxIncreaseBps = maxDailyIncreaseBps;
        uint16 oldMaxDecreaseBps = maxDailyDecreaseBps;
        uint64 oldTimeGap = snapshotMinTimeGap;

        validationTimeframe = _timeframe;
        maxDailyIncreaseBps = _maxIncreaseBps;
        maxDailyDecreaseBps = _maxDecreaseBps;
        snapshotMinTimeGap = _timeGap;

        emit RiskParametersModified(
            _timeframe,
            _maxIncreaseBps,
            _maxDecreaseBps,
            _timeGap,
            oldTimeframe,
            oldMaxIncreaseBps,
            oldMaxDecreaseBps,
            oldTimeGap
        );
    }

    function initialize(InitAction[] calldata actions) external onlyRole(ADMIN_ROLE) {
        if (initialized) revert AlreadyInitialized();
        initialized = true;

        for (uint256 i = 0; i < actions.length; i++) {
            if (actions[i].actionType == 0) {
                _initializeDeposit(actions[i].amountOrValue, actions[i].shareholder, actions[i].timestamp);
            } else if (actions[i].actionType == 1) {
                _updateTotalValueLocked(actions[i].amountOrValue, actions[i].timestamp);
            }
        }
    }

    function _initializeDeposit(uint256 assets, address to, uint64 timestamp) internal {
        uint256 requestId = nextDepositId++;
        depositRequests[requestId] = DepositRequest({ to: to, assets: assets, timestamp: timestamp, executed: false });
        pendingDepositIds.push(requestId);
        emit FundsDepositInitiated(requestId, msg.sender, to, assets, timestamp);
    }

    function pause() external onlyRole(ADMIN_ROLE) {
        if (isPaused) return;
        isPaused = true;
        emit VaultPaused(msg.sender);
    }

    function unpause() external onlyRole(ADMIN_ROLE) {
        if (!isPaused) return;
        isPaused = false;
        emit VaultUnpaused(msg.sender);
    }
}
