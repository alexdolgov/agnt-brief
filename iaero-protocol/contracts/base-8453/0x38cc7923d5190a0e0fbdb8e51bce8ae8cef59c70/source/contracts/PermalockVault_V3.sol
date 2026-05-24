// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/* -----------------------------
   External interfaces (TOP-LEVEL)
------------------------------ */

interface IVotingEscrow {
    struct LockedBalance {
        int128 amount;
        uint256 end;
        bool isPermanent;
    }
    function createLock(uint256 _value, uint256 _lockDuration) external returns (uint256);
    function increaseAmount(uint256 tokenId, uint256 value) external;
    function increaseUnlockTime(uint256 tokenId, uint256 _lockDuration) external;
    function merge(uint256 from, uint256 to) external;
    function locked(uint256 tokenId) external view returns (LockedBalance memory);
    function ownerOf(uint256 tokenId) external view returns (address);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function balanceOfNFT(uint256 tokenId) external view returns (uint256);
}

interface IiAEROToken {
    function mint(address to, uint256 amount) external;
}

interface ILIQToken {
    function mint(address to, uint256 amount) external;
    function totalSupply() external view returns (uint256);
    function MAX_SUPPLY() external view returns (uint256);
}

interface IStakingDistributor {
    function stakeFor(address user, uint256 amount) external;
}

/* -----------------------------
            Contract
------------------------------ */

contract PermalockVault is ReentrancyGuard, Ownable, Pausable, IERC721Receiver {
    using SafeERC20 for IERC20;
    using Address for address;

    // Immutable addresses
    address public immutable AERO;
    address public immutable veAERO;
    address public immutable iAERO;
    address public immutable LIQ;
    address public immutable treasury;

    // Constants
    uint256 public constant PROTOCOL_FEE_BPS = 500;          // 5%
    uint256 public constant BPS_BASE = 10_000;
    uint256 public constant MAX_LOCK_DURATION = 4 * 365 days;
    uint256 public constant WEEK = 7 days;
    uint256 public constant MIN_DEPOSIT = 1e18;
    uint256 public constant MAX_SINGLE_LOCK = 10_000_000 * 1e18;
    uint256 public constant TREASURY_LIQ_BPS = 2_000; // 20% of user LIQ mints go to treasury

    // LIQ emissions
    uint256 public baseEmissionRate = 1e18; // 1 LIQ per 1 iAERO initially
    uint256[] public halvingThresholds;
    uint256 public totalLIQMinted;

    // Accounting
    uint256 public totalAEROLocked;
    uint256 public totalIAEROMinted;

    // NFT management
    uint256 public primaryNFT;
    uint256[] public additionalNFTs;
    mapping(uint256 => bool) public isManaged;
    mapping(uint256 => uint256) public nftLockedAmount;
    uint256 public lastRebaseTime;

    // Auth
    mapping(address => bool) public authorized;
    mapping(address => bool) public authorizedTargets;
    address public votingManager;
    address public rewardsCollector;
    address public stakingDistributor;
    address public keeper;

    // Options
    bool public autoStakeTreasuryFees;
    bool public emergencyPause;

    // Events
    event DepositedAERO(address indexed user, uint256 aeroAmount, uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqMinted);
    event DepositedVeNFT(address indexed user, uint256 indexed tokenId, uint256 aeroAmount, uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqMinted);
    event NFTCreated(uint256 indexed tokenId, uint256 amount);
    event NFTIncreased(uint256 indexed tokenId, uint256 amount);
    event NFTsMerged(uint256 indexed fromId, uint256 indexed toId);
    event NFTRebased(uint256 indexed tokenId, uint256 newUnlockTime);
    event HalvingReached(uint256 halvingIndex, uint256 totalMinted);
    event EmissionRateUpdated(uint256 newRate);
    event AutoStakeUpdated(bool enabled);
    event MaintenancePerformed(bool merged, bool rebased);
    event EmergencyPauseSet(bool paused);
    event AuthorizedSet(address indexed account, bool authorized);
    event AuthorizedTargetSet(address indexed target, bool authorized);
    event KeeperSet(address indexed keeper);
    event VotingManagerSet(address indexed manager);
    event RewardsCollectorSet(address indexed collector);
    event StakingDistributorSet(address indexed distributor);
    event LIQMinted(address indexed user, uint256 toUser, uint256 toTreasury);


    modifier onlyAuthorized() {
        require(authorized[msg.sender] || msg.sender == owner(), "Not authorized");
        _;
    }

    modifier onlyKeeperOrOwner() {
        require(msg.sender == keeper || msg.sender == owner(), "Not keeper or owner");
        _;
    }

    modifier notEmergencyPaused() {
        require(!emergencyPause, "Emergency pause active");
        _;
    }

    constructor(
        address _iAERO,
        address _LIQ,
        address _AERO,
        address _veAERO,
        address _treasury
    ) Ownable(msg.sender) {
        require(_iAERO != address(0), "Invalid iAERO");
        require(_LIQ != address(0), "Invalid LIQ");
        require(_AERO != address(0), "Invalid AERO");
        require(_veAERO != address(0), "Invalid veAERO");
        require(_treasury != address(0), "Invalid treasury");

        iAERO = _iAERO;
        LIQ = _LIQ;
        AERO = _AERO;
        veAERO = _veAERO;
        treasury = _treasury;

        authorizedTargets[_veAERO] = true;

        halvingThresholds.push(25_000_000 * 1e18);
        halvingThresholds.push(50_000_000 * 1e18);
        halvingThresholds.push(75_000_000 * 1e18);
    }

    /* ------------ Preview helpers ------------ */

    function previewDeposit(uint256 aeroAmount)
        external
        view
        returns (uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqToUser)
    {
        require(aeroAmount >= MIN_DEPOSIT && aeroAmount <= MAX_SINGLE_LOCK, "Invalid amount");
        iAeroToTreasury = (aeroAmount * PROTOCOL_FEE_BPS) / BPS_BASE;
        iAeroToUser = aeroAmount - iAeroToTreasury;
        liqToUser = calculateLIQAmount(iAeroToUser);
    }

    function previewDepositVeNFT(uint256 tokenId)
        external
        view
        returns (uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqToUser, uint256 lockedAmount)
    {
        IVotingEscrow.LockedBalance memory lb = IVotingEscrow(veAERO).locked(tokenId);
        require(lb.amount > 0, "No locked balance");

        lockedAmount     = uint256(uint128(lb.amount));
        iAeroToTreasury  = (lockedAmount * PROTOCOL_FEE_BPS) / BPS_BASE;
        iAeroToUser      = lockedAmount - iAeroToTreasury;
        liqToUser        = calculateLIQAmount(iAeroToUser);

        // NOTE: This is a preview only — do NOT mint or update totals in a view.
    }

    function MAXTIME() external pure returns (uint256) { return MAX_LOCK_DURATION; }

    /* ------------ Deposits ------------ */

    function deposit(uint256 amount) external nonReentrant whenNotPaused notEmergencyPaused {
        require(amount >= MIN_DEPOSIT, "Below minimum");
        require(amount <= MAX_SINGLE_LOCK, "Exceeds maximum");

        IERC20(AERO).safeTransferFrom(msg.sender, address(this), amount);

        if (primaryNFT == 0) {
            _createNewLock(amount);
        } else {
            if (!_isNFTValid(primaryNFT)) {
                _handleInvalidPrimary();
                _createNewLock(amount);
            } else {
                _addToExistingLock(amount);
                
                // Auto-maintenance for Base's cheap gas
                if (additionalNFTs.length > 0) {
                    _mergeAllNFTs();
                }
                if (_needsRebase()) {
                    _rebasePrimaryNFT();
                }
            }
        }

        uint256 iAeroToTreasury = (amount * PROTOCOL_FEE_BPS) / BPS_BASE;
        uint256 iAeroToUser = amount - iAeroToTreasury;

        IiAEROToken(iAERO).mint(msg.sender, iAeroToUser);
        IiAEROToken(iAERO).mint(treasury, iAeroToTreasury);

        if (autoStakeTreasuryFees && stakingDistributor != address(0)) {
            _stakeTreasuryFees(iAeroToTreasury);
        }

        // Calculate and mint LIQ rewards (based on user's amount only)
        uint256 liqToUser = calculateLIQAmount(iAeroToUser);
        if (liqToUser > 0) {
            // clamp so user+treasury never exceed LIQ max supply
            uint256 remaining = ILIQToken(LIQ).MAX_SUPPLY() - ILIQToken(LIQ).totalSupply();
            if (remaining > 0) {
                // user mints plus treasury top-up = liqToUser * (BPS_BASE + TREASURY_LIQ_BPS) / BPS_BASE
                uint256 denom = BPS_BASE + TREASURY_LIQ_BPS;
                uint256 maxUserMint = (remaining * BPS_BASE) / denom;
                if (liqToUser > maxUserMint) { liqToUser = maxUserMint; }
            } else {
                liqToUser = 0;
            }

            if (liqToUser > 0) {
                ILIQToken(LIQ).mint(msg.sender, liqToUser);

                uint256 liqToTreasury = (liqToUser * TREASURY_LIQ_BPS) / BPS_BASE;
                if (liqToTreasury > 0) {
                    ILIQToken(LIQ).mint(treasury, liqToTreasury);
                }
                _updateLIQSupply(liqToUser + liqToTreasury);
                emit LIQMinted(msg.sender, liqToUser, liqToTreasury);
            }
        }

        totalAEROLocked += amount;
        totalIAEROMinted += amount;

        emit DepositedAERO(msg.sender, amount, iAeroToUser, iAeroToTreasury, liqToUser);

    }

    function depositVeNFT(uint256 tokenId) external nonReentrant whenNotPaused notEmergencyPaused {
        require(!isManaged[tokenId], "NFT already managed");
        require(IVotingEscrow(veAERO).ownerOf(tokenId) == msg.sender, "Not NFT owner");

        IVotingEscrow.LockedBalance memory lb = IVotingEscrow(veAERO).locked(tokenId);
        require(lb.amount > 0, "No locked balance");
        uint256 lockedAmount = uint256(uint128(lb.amount));
        require(lockedAmount >= MIN_DEPOSIT, "Below minimum");
        require(lb.isPermanent || lb.end > block.timestamp, "NFT expired");

        IVotingEscrow(veAERO).safeTransferFrom(msg.sender, address(this), tokenId);

        uint256 iAeroToTreasury = (lockedAmount * PROTOCOL_FEE_BPS) / BPS_BASE;
        uint256 iAeroToUser = lockedAmount - iAeroToTreasury;

        IiAEROToken(iAERO).mint(msg.sender, iAeroToUser);
        IiAEROToken(iAERO).mint(treasury, iAeroToTreasury);

        if (autoStakeTreasuryFees && stakingDistributor != address(0)) {
            _stakeTreasuryFees(iAeroToTreasury);
        }

        uint256 liqToUser = calculateLIQAmount(iAeroToUser);
        if (liqToUser > 0) {
            // clamp so user+treasury never exceed LIQ max supply
            uint256 remaining = ILIQToken(LIQ).MAX_SUPPLY() - ILIQToken(LIQ).totalSupply();
            if (remaining > 0) {
                // user mints plus treasury top-up = liqToUser * (BPS_BASE + TREASURY_LIQ_BPS) / BPS_BASE
                uint256 denom = BPS_BASE + TREASURY_LIQ_BPS;
                uint256 maxUserMint = (remaining * BPS_BASE) / denom;
                if (liqToUser > maxUserMint) { liqToUser = maxUserMint; }
            } else {
                liqToUser = 0;
            }

            if (liqToUser > 0) {
                ILIQToken(LIQ).mint(msg.sender, liqToUser);

                uint256 liqToTreasury = (liqToUser * TREASURY_LIQ_BPS) / BPS_BASE;
                if (liqToTreasury > 0) {
                    ILIQToken(LIQ).mint(treasury, liqToTreasury);
                }
                _updateLIQSupply(liqToUser + liqToTreasury);
                emit LIQMinted(msg.sender, liqToUser, liqToTreasury);
            }
        }


        isManaged[tokenId] = true;
        nftLockedAmount[tokenId] = lockedAmount;

        if (!lb.isPermanent) _extendToMax(tokenId);

        if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) {
            primaryNFT = tokenId;
            lastRebaseTime = block.timestamp;
        } else {
            additionalNFTs.push(tokenId);
        }

        totalAEROLocked += lockedAmount;
        totalIAEROMinted += lockedAmount;

        if (additionalNFTs.length > 0) _mergeAllNFTs();

        emit DepositedVeNFT(msg.sender, tokenId, lockedAmount, iAeroToUser, iAeroToTreasury, liqToUser);

    }

    /* ------------ Maintenance ------------ */

    function performMaintenance() external onlyKeeperOrOwner nonReentrant {
        bool merged = false;
        bool rebased = false;

        if (additionalNFTs.length > 0) { _mergeAllNFTs(); merged = true; }
        if (primaryNFT != 0 && _needsRebase()) { _rebasePrimaryNFT(); rebased = true; }

        emit MaintenancePerformed(merged, rebased);
    }

    /* ------------ NFT actions for managers ------------ */

    function executeNFTAction(
        uint256 tokenId,
        address target,
        bytes calldata data
    ) external onlyAuthorized nonReentrant returns (bytes memory) {
        require(isManaged[tokenId], "NFT not managed");
        require(authorizedTargets[target], "Target not authorized");
        require(target != address(0) && target.code.length > 0, "Invalid target");
        return target.functionCall(data);
    }

    /* ------------ Sweep for Harvester ------------ */

    function sweepERC20(address[] calldata tokens, address to)
        external
        onlyAuthorized
        nonReentrant
        returns (uint256[] memory amounts)
    {
        require(to != address(0), "Invalid recipient");
        amounts = new uint256[](tokens.length);

        for (uint256 i = 0; i < tokens.length; i++) {
            address t = tokens[i];
            if (t == address(0)) continue;
            if (t == iAERO) continue; // never sweep iAERO
            uint256 bal = IERC20(t).balanceOf(address(this));
            if (bal > 0) {
                IERC20(t).safeTransfer(to, bal);
                amounts[i] = bal;
            }
        }
    }

    function sweepETH(address to) external onlyAuthorized nonReentrant returns (uint256 amount) {
        require(to != address(0), "Invalid recipient");
        amount = address(this).balance;
        if (amount > 0) {
            (bool ok, ) = to.call{value: amount}("");
            require(ok, "ETH transfer failed");
        }
    }

    /* ------------ LIQ emissions ------------ */

    function calculateLIQAmount(uint256 iAeroAmount) public view returns (uint256) {
        uint256 currentRate = baseEmissionRate;
        uint256 halvings = 0;
        for (uint256 i = 0; i < halvingThresholds.length; i++) {
            if (totalLIQMinted >= halvingThresholds[i]) { halvings++; } else { break; }
        }
        currentRate = currentRate >> halvings;
        return (iAeroAmount * currentRate) / 1e18;
    }

    function getCurrentEmissionRate() external view returns (uint256) {
        uint256 currentRate = baseEmissionRate;
        uint256 halvings = 0;
        for (uint256 i = 0; i < halvingThresholds.length; i++) {
            if (totalLIQMinted >= halvingThresholds[i]) { halvings++; } else { break; }
        }
        return currentRate >> halvings;
    }

    /* ------------ Admin ------------ */

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "Invalid keeper");
        keeper = _keeper; emit KeeperSet(_keeper);
    }

    function setVotingManager(address _votingManager) external onlyOwner {
        require(_votingManager != address(0), "Invalid voting manager");
        votingManager = _votingManager; authorized[_votingManager] = true; emit VotingManagerSet(_votingManager);
    }

    function setRewardsCollector(address _rewardsCollector) external onlyOwner {
        require(_rewardsCollector != address(0), "Invalid rewards collector");
        rewardsCollector = _rewardsCollector; authorized[_rewardsCollector] = true; emit RewardsCollectorSet(_rewardsCollector);
    }

    function setStakingDistributor(address _stakingDistributor) external onlyOwner {
        require(_stakingDistributor != address(0), "Invalid staking distributor");
        stakingDistributor = _stakingDistributor; emit StakingDistributorSet(_stakingDistributor);
    }

    function setAutoStakeTreasuryFees(bool _enabled) external onlyOwner {
        autoStakeTreasuryFees = _enabled; emit AutoStakeUpdated(_enabled);
    }

    function setAuthorized(address _account, bool _authorized) external onlyOwner {
        require(_account != address(0), "Invalid account");
        authorized[_account] = _authorized; emit AuthorizedSet(_account, _authorized);
    }

    function setAuthorizedTarget(address _target, bool _authorized) external onlyOwner {
        require(_target != address(0), "Invalid target");
        require(_target.code.length > 0 || !_authorized, "Target must be contract");
        authorizedTargets[_target] = _authorized; emit AuthorizedTargetSet(_target, _authorized);
    }

    function setHalvingThresholds(uint256[] calldata _thresholds) external onlyOwner {
        require(totalLIQMinted == 0, "LIQ already minted");
        require(_thresholds.length > 0 && _thresholds.length <= 10, "Invalid length");
        for (uint256 i = 0; i < _thresholds.length; i++) {
            require(_thresholds[i] <= 100_000_000 * 1e18, "Threshold too high");
            if (i > 0) require(_thresholds[i] > _thresholds[i-1], "Must be ascending");
        }
        halvingThresholds = _thresholds;
    }

    function setBaseEmissionRate(uint256 _rate) external onlyOwner {
        require(totalLIQMinted == 0, "LIQ already minted");
        require(_rate > 0 && _rate <= 100 * 1e18, "Invalid rate");
        baseEmissionRate = _rate; emit EmissionRateUpdated(_rate);
    }

    function setEmergencyPause(bool _paused) external onlyOwner {
        emergencyPause = _paused; emit EmergencyPauseSet(_paused);
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    /* ------------ Views ------------ */

    function vaultStatus() 
        external 
        view 
        returns (
            uint256 totalUserDeposits,       // totalAEROLocked
            uint256 totalProtocolOwned,      // treasury iAERO share
            uint256 actualFeesCollected,     // same as treasury share (no virtual fees in V3)
            uint256 virtualFeesOwed,         // always 0 in V3
            uint256 primaryNFTId,
            uint256 primaryNFTBalance,
            uint256 primaryNFTVotingPower,
            uint256 primaryNFTUnlockTime,
            uint256 additionalNFTCount,
            bool needsRebase_,
            bool needsMerge_
        ) 
    {
        totalUserDeposits  = totalAEROLocked;
        totalProtocolOwned = (totalIAEROMinted * PROTOCOL_FEE_BPS) / BPS_BASE;
        actualFeesCollected = totalProtocolOwned;
        virtualFeesOwed    = 0;

        primaryNFTId       = primaryNFT;
        additionalNFTCount = additionalNFTs.length;
        needsMerge_        = additionalNFTCount > 0;
        needsRebase_       = _needsRebase();

        if (primaryNFTId != 0 && _isNFTValid(primaryNFTId)) {
            primaryNFTBalance = nftLockedAmount[primaryNFTId];
            // unlock time
            try IVotingEscrow(veAERO).locked(primaryNFTId) returns (IVotingEscrow.LockedBalance memory lb) {
                primaryNFTUnlockTime = lb.end;
            } catch {}
            // voting power
            try IVotingEscrow(veAERO).balanceOfNFT(primaryNFTId) returns (uint256 power) {
                primaryNFTVotingPower = power;
            } catch {}
        }
    }


    function getManagedNFTs() external view returns (uint256[] memory) {
        uint256 validCount = 0;
        if (primaryNFT != 0 && _isNFTValid(primaryNFT)) validCount++;
        for (uint256 i = 0; i < additionalNFTs.length; i++) {
            if (additionalNFTs[i] != 0 && isManaged[additionalNFTs[i]]) validCount++;
        }

        uint256[] memory result = new uint256[](validCount);
        uint256 idx = 0;
        if (primaryNFT != 0 && _isNFTValid(primaryNFT)) result[idx++] = primaryNFT;
        for (uint256 i = 0; i < additionalNFTs.length; i++) {
            if (additionalNFTs[i] != 0 && isManaged[additionalNFTs[i]]) result[idx++] = additionalNFTs[i];
        }
        return result;
    }

    function getNFTInfo(uint256 tokenId) external view returns (
        bool managed,
        uint256 lockedAmount,
        uint256 votingPower,
        uint256 unlockTime,
        bool isPrimary,
        bool isPermanent
    ) {
        managed = isManaged[tokenId];
        lockedAmount = nftLockedAmount[tokenId];
        isPrimary = (tokenId == primaryNFT);

        if (managed && lockedAmount > 0) {
            try IVotingEscrow(veAERO).locked(tokenId) returns (IVotingEscrow.LockedBalance memory lb) {
                unlockTime = lb.end;
                isPermanent = lb.isPermanent;
            } catch {}
            try IVotingEscrow(veAERO).balanceOfNFT(tokenId) returns (uint256 power) {
                votingPower = power;
            } catch {}
        }
    }

    function getTotalValueLocked() external view returns (uint256) { return totalAEROLocked; }
    function getProtocolShareBPS() external pure returns (uint256) { return PROTOCOL_FEE_BPS; }
    function getProtocolEffectiveShare() external pure returns (uint256) { return PROTOCOL_FEE_BPS; }

    /* ------------ Internal helpers ------------ */

    function _createNewLock(uint256 amount) private {
        IERC20(AERO).forceApprove(veAERO, amount);
        uint256 tokenId = IVotingEscrow(veAERO).createLock(amount, MAX_LOCK_DURATION);
        require(tokenId != 0, "NFT creation failed");
        IERC20(AERO).forceApprove(veAERO, 0);

        primaryNFT = tokenId;
        isManaged[tokenId] = true;
        nftLockedAmount[tokenId] = amount;
        lastRebaseTime = block.timestamp;

        emit NFTCreated(tokenId, amount);
    }

    function _addToExistingLock(uint256 amount) private {
        require(primaryNFT != 0, "No primary NFT");
        IERC20(AERO).forceApprove(veAERO, amount);
        IVotingEscrow(veAERO).increaseAmount(primaryNFT, amount);
        IERC20(AERO).forceApprove(veAERO, 0);
        nftLockedAmount[primaryNFT] += amount;
        emit NFTIncreased(primaryNFT, amount);
    }

    function _handleInvalidPrimary() private {
        if (primaryNFT != 0) {
            if (_isNFTValid(primaryNFT)) {
                additionalNFTs.push(primaryNFT);
            } else {
                isManaged[primaryNFT] = false;
                nftLockedAmount[primaryNFT] = 0;
            }
            primaryNFT = 0;
        }
    }

    function _stakeTreasuryFees(uint256 amount) private {
        if (stakingDistributor == address(0) || amount == 0) return;
        IERC20(iAERO).forceApprove(stakingDistributor, amount);
        try IStakingDistributor(stakingDistributor).stakeFor(treasury, amount) { } catch { }
        IERC20(iAERO).forceApprove(stakingDistributor, 0);
    }

    function _updateLIQSupply(uint256 amount) private {
        uint256 prev = totalLIQMinted;
        totalLIQMinted += amount;
        for (uint256 i = 0; i < halvingThresholds.length; i++) {
            if (prev < halvingThresholds[i] && totalLIQMinted >= halvingThresholds[i]) {
                emit HalvingReached(i, totalLIQMinted);
                break;
            }
        }
    }

    function _mergeAllNFTs() private {
        if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) {
            if (additionalNFTs.length > 0) {
                primaryNFT = additionalNFTs[0];
                lastRebaseTime = block.timestamp;
                additionalNFTs[0] = additionalNFTs[additionalNFTs.length - 1];
                additionalNFTs.pop();
                _extendToMax(primaryNFT);
            }
            return;
        }

        uint256 i = 0;
        while (i < additionalNFTs.length) {
            uint256 fromId = additionalNFTs[i];
            if (!isManaged[fromId] || nftLockedAmount[fromId] == 0) {
                additionalNFTs[i] = additionalNFTs[additionalNFTs.length - 1];
                additionalNFTs.pop();
                continue;
            }
            try IVotingEscrow(veAERO).merge(fromId, primaryNFT) {
                uint256 amt = nftLockedAmount[fromId];
                nftLockedAmount[primaryNFT] += amt;
                nftLockedAmount[fromId] = 0;
                isManaged[fromId] = false;
                emit NFTsMerged(fromId, primaryNFT);
                additionalNFTs[i] = additionalNFTs[additionalNFTs.length - 1];
                additionalNFTs.pop();
            } catch { i++; }
        }
    }

    function _needsRebase() private view returns (bool) {
        if (primaryNFT == 0) return false;
        try IVotingEscrow(veAERO).locked(primaryNFT) returns (IVotingEscrow.LockedBalance memory lb) {
            if (lb.isPermanent) return false;
            uint256 timeLeft = lb.end > block.timestamp ? lb.end - block.timestamp : 0;
            return timeLeft < MAX_LOCK_DURATION - (12 weeks);
        } catch { return false; }
    }

    function _extendToMax(uint256 tokenId) private returns (bool) {
        try IVotingEscrow(veAERO).locked(tokenId) returns (IVotingEscrow.LockedBalance memory lb) {
            if (lb.isPermanent) return false;
            uint256 targetEnd = ((block.timestamp + MAX_LOCK_DURATION) / WEEK) * WEEK;
            if (lb.end < targetEnd) {
                uint256 extension = targetEnd - lb.end;
                IVotingEscrow(veAERO).increaseUnlockTime(tokenId, extension);
                emit NFTRebased(tokenId, targetEnd);
                return true;
            }
        } catch {}
        return false;
    }

    function _rebasePrimaryNFT() private {
        if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) return;
        if (_extendToMax(primaryNFT)) lastRebaseTime = block.timestamp;
    }

    function _isNFTValid(uint256 tokenId) private view returns (bool) {
        if (tokenId == 0) return false;
        try IVotingEscrow(veAERO).ownerOf(tokenId) returns (address owner_) {
            if (owner_ != address(this)) return false;
            try IVotingEscrow(veAERO).locked(tokenId) returns (IVotingEscrow.LockedBalance memory lb) {
                if (!lb.isPermanent && lb.end <= block.timestamp) return false;
                return uint256(uint128(lb.amount)) > 0;
            } catch { return false; }
        } catch { return false; }
    }

    /* ------------ Receive / ERC721 ------------ */

    receive() external payable { }

    function onERC721Received(address, address, uint256, bytes calldata)
        external pure override returns (bytes4)
    {
        return IERC721Receiver.onERC721Received.selector;
    }
}
