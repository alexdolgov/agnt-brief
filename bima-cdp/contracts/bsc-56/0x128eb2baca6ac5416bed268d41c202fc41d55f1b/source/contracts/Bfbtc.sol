// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract Bfbtc is Initializable, UUPSUpgradeable, OwnableUpgradeable, ERC20Upgradeable, PausableUpgradeable {
    using SafeERC20 for IERC20;

    uint256 public constant RATIO_PRECISION = 1e8; // = decimals
    uint256 public constant PRICE_PRECISION = 1e6;

    uint8 public constant WITHDRAWAL_STATUS_PENDING = 1;
    uint8 public constant WITHDRAWAL_STATUS_CLAIMABLE = 2;
    uint8 public constant WITHDRAWAL_STATUS_SENT_ON_NATIVE = 3;
    uint8 public constant WITHDRAWAL_STATUS_CLAIMED = 4;

    uint256 public currentEpoch;
    uint256 public withdrawIdCounter;
    uint256 public cooldownEpoches;
    uint256 public underlyingDecimals;
    uint256 public stalePriceDelay;
    address public multisig;

    IERC20 public underlyingAsset;
    AggregatorV3Interface public oracle;
    address public underlyingWallet;

    mapping(uint256 => uint256) public ratio; // RATIO = bfBTC Total Supply (share) / BTC Total Custody (asset)
    mapping(uint256 => uint256) public underlyingPrice;
    mapping(uint256 => Withdrawal) public withdrawals;
    mapping(bytes32 => bool) public usedNativeTx;

    uint256 public minDepositTokenAmount;
    uint256 public minWithdrawBfbtcAmount;

    struct Withdrawal {
        address user;
        uint256 amount;
        bytes32 btcAddress;
        uint256 epoch;
        uint256 settleEpoch;
        bytes32 nativeTx;
        uint8 btcAddressType;
        uint8 status;
    }

    event Deposit(address indexed user, uint256 epoch, uint256 underlyingAmount, uint256 bfBtcAmount);
    event DepositNative(address indexed user, uint256 epoch, uint256 underlyingAmount, uint256 bfBtcAmount, bytes32 nativeTx);
    event WithdrawRequest(address indexed user, uint256 epoch, uint256 withdrawId, uint256 bfBtcAmount);
    event WithdrawRequestNative(
        address indexed user,
        uint256 epoch,
        uint256 withdrawId,
        uint256 bfBtcAmount,
        uint8 btcAddressType,
        bytes32 btcAddress
    );
    event WithdrawalApproved(uint256 indexed withdrawId, uint256 settleEpoch);
    event WithdrawNative(uint256 indexed withdrawId, uint256 settleEpoch, bytes32 nativeTx);
    event Claimed(uint256 indexed withdrawId, uint256 btcAmount);
    event EpochUpdated(uint256 epochNumber, uint256 newRatio, uint256 newUnderlyingPrice);

    error InvalidWithdrawalStatus();
    error ZeroMintAmount();
    error NativeTxAlreadyUsed();
    error InvalidBTCAddressType();
    error ZeroRatio();
    error InvalidOraclePrice();
    error StalePriceData();
    error InvalidEpoch();
    error CooldownPeriodNotPassed();
    error InvalidData();
    error NotWithdrawalOwner();
    error WithdrawalNotClaimable();
    error MinimumAmountNotMet();
    error NotMultiSig();
    error ZeroAddress();
    error LessThanMinAmount();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _underlyingWallet,
        IERC20Metadata _underlyingAsset,
        AggregatorV3Interface _oracle,
        uint256 _stalePriceDelay,
        address _multisig
    ) external initializer {
        __ERC20_init("BitFi Bitcoin", "bfBTC");
        __Ownable_init(_msgSender());
        __Pausable_init();
        __UUPSUpgradeable_init();

        underlyingWallet = _underlyingWallet;
        underlyingAsset = _underlyingAsset;
        oracle = _oracle;
        uint8 _underlyingDecimals = _underlyingAsset.decimals();
        underlyingDecimals = _underlyingDecimals;
        stalePriceDelay = _stalePriceDelay;
        cooldownEpoches = 1;
        currentEpoch = 1;
        ratio[0] = RATIO_PRECISION;
        multisig = _multisig;
        minDepositTokenAmount = 10 ** (_underlyingDecimals - 3);
        minWithdrawBfbtcAmount = 1e5;
    }

    function setMinDepositTokenAmount(uint256 _amount) external onlyOwner {
        minDepositTokenAmount = _amount;
    }

    function setMinWithdrawTokenAmount(uint256 _amount) external onlyOwner {
        minWithdrawBfbtcAmount = _amount;
    }

    function setMultisig(address _multisig) external onlyOwner {
        if (_multisig == address(0)) revert ZeroAddress();
        multisig = _multisig;
    }

    function setUnderlyingWallet(address _wallet) external onlyOwner {
        if (_wallet == address(0)) revert ZeroAddress();
        underlyingWallet = _wallet;
    }

    function _checkMultisig() internal view {
        if (msg.sender != multisig) revert NotMultiSig();
    }

    modifier onlyMultisig() {
        _checkMultisig();
        _;
    }

    function decimals() public pure override returns (uint8) {
        return 8;
    }

    function setPause(bool _paused) external onlyOwner {
        bool current = paused();
        if (_paused && !current) {
            _pause();
        } else if (!_paused && current) {
            _unpause();
        }
    }

    function getLatestPrice(bool min) public view returns (uint256 price) {
        if (address(oracle) == address(0)) {
            return PRICE_PRECISION;
        }
        (, int256 oraclePrice, , uint256 updatedAt, ) = oracle.latestRoundData();
        if (oraclePrice <= 0) revert InvalidOraclePrice();
        if (block.timestamp > updatedAt + stalePriceDelay) revert StalePriceData();
        uint8 pDecimals = oracle.decimals();
        price = (uint256(oraclePrice) * PRICE_PRECISION) / (10 ** pDecimals);
        price = min ? Math.min(PRICE_PRECISION, price) : Math.max(PRICE_PRECISION, price);
    }

    function currentRatio() public view returns (uint256) {
        return ratio[currentEpoch - 1];
    }

    function previewDeposit(uint256 amount) public view returns (uint256) {
        return (amount * getLatestPrice(true) * currentRatio()) / PRICE_PRECISION / (10 ** underlyingDecimals);
    }

    function deposit(uint256 amount, uint256 minAmount) external whenNotPaused {
        if (amount < minDepositTokenAmount) revert LessThanMinAmount();
        underlyingAsset.safeTransferFrom(msg.sender, underlyingWallet, amount);

        uint256 mintAmount = previewDeposit(amount);
        if (mintAmount < minAmount) revert MinimumAmountNotMet();

        _mint(msg.sender, mintAmount);

        emit Deposit(msg.sender, currentEpoch, amount, mintAmount);
    }

    function depositNative(
        address[] calldata users,
        uint256[] calldata amounts,
        bytes32[] calldata nativeTxs
    ) external whenNotPaused onlyMultisig {
        if (users.length != amounts.length || users.length != nativeTxs.length) revert InvalidData();
        uint256 cachedRatio = currentRatio();
        for (uint256 i; i < users.length; ++i) {
            if (users[i] == address(0)) revert ZeroAddress();
            if (amounts[i] == 0) revert ZeroMintAmount();
            if (usedNativeTx[nativeTxs[i]]) revert NativeTxAlreadyUsed();

            usedNativeTx[nativeTxs[i]] = true;
            uint256 mintAmount = (amounts[i] * cachedRatio) / (10 ** 8);
            _mint(users[i], mintAmount);

            emit DepositNative(users[i], currentEpoch, amounts[i], mintAmount, nativeTxs[i]);
        }
    }

    function requestWithdraw(uint256 amount) external whenNotPaused {
        if (amount < minWithdrawBfbtcAmount) revert LessThanMinAmount();
        _transfer(msg.sender, address(this), amount);

        uint256 withdrawId = withdrawIdCounter++;
        withdrawals[withdrawId] = Withdrawal({
            user: msg.sender,
            amount: amount,
            btcAddress: bytes32(0),
            btcAddressType: 0,
            status: WITHDRAWAL_STATUS_PENDING,
            epoch: currentEpoch,
            settleEpoch: 0,
            nativeTx: bytes32(0)
        });

        emit WithdrawRequest(msg.sender, currentEpoch, withdrawId, amount);
    }

    function requestWithdrawNative(uint256 amount, uint8 btcAddressType, bytes32 btcAddress) external whenNotPaused {
        if (amount < minWithdrawBfbtcAmount) revert LessThanMinAmount();
        if (btcAddressType < 1 || btcAddressType > 4) revert InvalidBTCAddressType();

        _transfer(msg.sender, address(this), amount);

        uint256 epoch = currentEpoch;
        uint256 withdrawId = withdrawIdCounter++;
        withdrawals[withdrawId] = Withdrawal({
            user: msg.sender,
            amount: amount,
            btcAddress: btcAddress,
            btcAddressType: btcAddressType,
            status: WITHDRAWAL_STATUS_PENDING,
            epoch: epoch,
            settleEpoch: 0,
            nativeTx: bytes32(0)
        });

        emit WithdrawRequestNative(msg.sender, epoch, withdrawId, amount, btcAddressType, btcAddress);
    }

    function previewWithdraw(uint256 share) public view returns (uint256) {
        return (share * PRICE_PRECISION * (10 ** underlyingDecimals)) / getLatestPrice(false) / currentRatio();
    }

    function approveWithdraw(uint256 epoch, uint256[] calldata withdrawIds) external whenNotPaused onlyMultisig {
        if (epoch >= currentEpoch) revert InvalidEpoch();
        uint256 totalShares;
        for (uint256 i; i < withdrawIds.length; ++i) {
            Withdrawal storage withdrawal = withdrawals[withdrawIds[i]];
            if (withdrawal.status != WITHDRAWAL_STATUS_PENDING) revert InvalidWithdrawalStatus();
            if (epoch < withdrawal.epoch + cooldownEpoches) revert CooldownPeriodNotPassed();

            if (withdrawal.btcAddressType == 0) {
                withdrawal.status = WITHDRAWAL_STATUS_CLAIMABLE;
                withdrawal.settleEpoch = epoch;
                totalShares += withdrawal.amount;
            } else {
                revert InvalidBTCAddressType();
            }

            emit WithdrawalApproved(withdrawIds[i], epoch);
        }
        _burn(address(this), totalShares);
    }

    function nativeWithdraw(
        uint256 epoch,
        uint256[] calldata withdrawIds,
        bytes32[] calldata nativeTxs
    ) external whenNotPaused onlyMultisig {
        if (epoch >= currentEpoch) revert InvalidEpoch();
        if (withdrawIds.length != nativeTxs.length) revert InvalidData();
        uint256 totalShares;
        for (uint256 i; i < withdrawIds.length; ++i) {
            Withdrawal storage withdrawal = withdrawals[withdrawIds[i]];
            if (withdrawal.status != WITHDRAWAL_STATUS_PENDING) revert InvalidWithdrawalStatus();
            if (epoch < withdrawal.epoch + cooldownEpoches) revert CooldownPeriodNotPassed();

            if (withdrawal.btcAddressType == 0) {
                revert InvalidBTCAddressType();
            } else {
                withdrawal.status = WITHDRAWAL_STATUS_SENT_ON_NATIVE;
                withdrawal.settleEpoch = epoch;
                withdrawal.nativeTx = nativeTxs[i];
                totalShares += withdrawal.amount;
            }

            emit WithdrawNative(withdrawIds[i], epoch, nativeTxs[i]);
        }
        _burn(address(this), totalShares);
    }

    function updateEpoch(uint256 newRatio) external whenNotPaused onlyMultisig {
        if (newRatio == 0) revert ZeroRatio();
        uint256 newPrice = getLatestPrice(false);
        ratio[currentEpoch] = newRatio;
        underlyingPrice[currentEpoch] = newPrice;
        emit EpochUpdated(currentEpoch, newRatio, newPrice);
        ++currentEpoch;
    }

    function _claimable(uint256 share, uint256 epoch) internal view returns (uint256) {
        return (share * PRICE_PRECISION * (10 ** underlyingDecimals)) / underlyingPrice[epoch] / ratio[epoch];
    }

    function claimable(uint256 id) external view returns (uint256) {
        Withdrawal storage withdrawal = withdrawals[id];
        if (withdrawal.status != WITHDRAWAL_STATUS_CLAIMABLE) return 0;
        return _claimable(withdrawal.amount, withdrawal.settleEpoch);
    }

    function claim(uint256[] calldata withdrawIds) external whenNotPaused {
        for (uint256 i; i < withdrawIds.length; ++i) {
            Withdrawal storage withdrawal = withdrawals[withdrawIds[i]];
            if (msg.sender != withdrawal.user) revert NotWithdrawalOwner();
            if (withdrawal.status != WITHDRAWAL_STATUS_CLAIMABLE) revert WithdrawalNotClaimable();

            withdrawal.status = WITHDRAWAL_STATUS_CLAIMED;
            uint256 claimAmount = _claimable(withdrawal.amount, withdrawal.settleEpoch);
            underlyingAsset.safeTransfer(withdrawal.user, claimAmount);

            emit Claimed(withdrawIds[i], claimAmount);
        }
    }

    function setCooldownEpoches(uint256 _cooldownEpoches) external onlyOwner {
        cooldownEpoches = _cooldownEpoches;
    }

    function setStalePriceDelay(uint256 _stalePriceDelay) external onlyOwner {
        stalePriceDelay = _stalePriceDelay;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
