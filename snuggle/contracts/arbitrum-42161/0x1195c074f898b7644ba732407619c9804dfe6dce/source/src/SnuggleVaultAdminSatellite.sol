// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "./interfaces/IPositionAdapter.sol";
import "./interfaces/IRewardAdapter.sol";

/// @title ISnuggleVaultPoolManagement
/// @notice Interface for vault functions called by satellite
interface ISnuggleVaultPoolManagement {
    function owner() external view returns (address);
    function addPoolDirect(
        bytes32 poolId, address pool, address token0, address token1,
        uint24 fee, int24 tickSpacing, address positionAdapter,
        address rewardAdapter, address nftManager
    ) external;
    function updatePoolRewardAdapter(bytes32 poolId, address newRewardAdapter) external;
    function removePool(bytes32 poolId) external;
    function setPerformanceFee(uint256 newFeeBps) external;
    function setConfig(uint24 rangeMin, uint24 rangeMax, uint256 newReferralFeeBps, uint32 newTwapInterval, uint256 newSlippageBps) external;
    function setKeeper(address keeper, bool authorized) external;
    function setFeeExempt(address user, bool exempt) external;
    function clearReferrer(address user) external;
    function emergencyRevokeApproval(address token, address spender) external;
    function emergencyRevokeNFTApproval(address nftManager, address operator) external;
    function rescueERC721(address nftContract, uint256 tokenId, address to) external;
    function setTreasury(address newTreasury) external;
    function setStakingManager(address newManager) external;
    function performanceFeeBps() external view returns (uint256);
    function referralFeeBps() external view returns (uint256);
    function treasury() external view returns (address);
    function stakingManager() external view returns (address);
    function positions(uint256 tokenId) external view returns (uint256,bytes32,address,uint24,int24,int24,bool,bool,uint64,uint64,uint32,uint32,uint64,uint128,uint128,uint128,uint128);
    function allPositionIds(uint256 index) external view returns (uint256);
    function totalActivePositions() external view returns (uint256);
}

/// @title SnuggleVaultAdminSatellite
/// @notice Handles complex admin operations for SnuggleVaultUpgradeable
/// @dev Extracted to reduce main vault contract size below EVM bytecode limit
contract SnuggleVaultAdminSatellite {
    ISnuggleVaultPoolManagement public immutable vault;

    // ═══════════════════════════════════════════════════════════════════════════
    // TIMELOCK STATE
    // ═══════════════════════════════════════════════════════════════════════════

    uint256 public constant TIMELOCK_DELAY = 24 hours;

    address public pendingTreasury;
    uint256 public pendingTreasuryTimestamp;
    address public pendingStakingManager;
    uint256 public pendingStakingManagerTimestamp;

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ═══════════════════════════════════════════════════════════════════════════

    event PoolAdded(
        bytes32 indexed poolId, address pool, address token0, address token1,
        uint24 fee, address positionAdapter, address rewardAdapter
    );
    event TreasuryChangeProposed(address indexed newTreasury, uint256 timelockExpiry);
    event TreasuryChangeCancelled(address indexed cancelledTreasury);
    event StakingManagerChangeProposed(address indexed newManager, uint256 timelockExpiry);
    event StakingManagerChangeCancelled(address indexed cancelledManager);

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error NotVaultOwner();
    error InvalidAddress();
    error PoolDoesNotExist();
    error FeeTooHigh();
    error FeeChangeTooLarge();
    error ReferralFeeTooHigh();
    error InvalidRangeWidth();
    error InvalidTWAPInterval();
    error PositionIsActive();
    error NoPendingChange();
    error TimelockNotReady();
    error TreasuryNotSet();
    error InvalidSlippage();
    error StakingManagerAlreadySet();
    error FeeChangeCooldown();
    error PoolHasActivePositions();
    error RewardAdapterValidationFailed();

    // ═══════════════════════════════════════════════════════════════════════════
    // MODIFIERS
    // ═══════════════════════════════════════════════════════════════════════════

    modifier onlyVaultOwner() {
        if (msg.sender != vault.owner()) revert NotVaultOwner();
        _;
    }

    constructor(address _vault) {
        vault = ISnuggleVaultPoolManagement(_vault);
        // V25-L-03: Initialize cooldown so first fee change also respects cooldown period
        lastFeeChangeTime = block.timestamp;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // POOL MANAGEMENT
    // ═══════════════════════════════════════════════════════════════════════════

    function addPool(
        address token0, address token1, uint24 fee,
        address positionAdapter, address rewardAdapter
    ) external onlyVaultOwner {
        if (positionAdapter == address(0)) revert InvalidAddress();
        IPositionAdapter adapter = IPositionAdapter(positionAdapter);
        if (token0 > token1) (token0, token1) = (token1, token0);
        address pool = adapter.getPool(token0, token1, fee);
        if (pool == address(0)) revert PoolDoesNotExist();

        // V28: Validate reward adapter can actually stake in this pool (gauge exists, MasterChef registered, etc.)
        // Catches configuration errors at registration time instead of silently failing at staking time
        if (rewardAdapter != address(0)) {
            try IRewardAdapter(rewardAdapter).validatePool(pool) {}
            catch { revert RewardAdapterValidationFailed(); }
        }

        bytes32 poolId = keccak256(abi.encodePacked(token0, token1, fee, positionAdapter));
        int24 tickSpacing = adapter.getTickSpacing(pool);
        address nftManager = adapter.positionManager();
        vault.addPoolDirect(poolId, pool, token0, token1, fee, tickSpacing, positionAdapter, rewardAdapter, nftManager);
        emit PoolAdded(poolId, pool, token0, token1, fee, positionAdapter, rewardAdapter);
    }

    function updatePoolRewardAdapter(bytes32 poolId, address newRewardAdapter) external onlyVaultOwner {
        vault.updatePoolRewardAdapter(poolId, newRewardAdapter);
    }

    /// @notice Remove a pool from the approved list
    /// @dev V20-L-01: Verifies no active positions exist for this pool before removal.
    ///      Use emergencyRevokeApproval/emergencyRevokeNFTApproval after removal if needed.
    /// @dev V24-M-01: WARNING — This function iterates ALL active positions O(n) to verify none
    ///      belong to the target pool. Gas cost scales linearly with totalActivePositions.
    ///      For pools with many positions, prefer deactivating via updatePoolRewardAdapter(poolId, address(0))
    ///      and letting positions withdraw naturally, rather than calling removePool().
    ///      A per-pool position counter would fix this but exceeds the vault's EIP-170 bytecode limit.
    function removePool(bytes32 poolId) external onlyVaultOwner {
        // V20-L-01: Check that no active positions belong to this pool
        uint256 count = vault.totalActivePositions();
        for (uint256 i = 0; i < count; i++) {
            uint256 tokenId = vault.allPositionIds(i);
            (,bytes32 posPoolId,,,,,,,,,,,,,,,) = vault.positions(tokenId);
            if (posPoolId == poolId) revert PoolHasActivePositions();
        }
        vault.removePool(poolId);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // TIMELOCK OPERATIONS
    // ═══════════════════════════════════════════════════════════════════════════

    function proposeTreasury(address newTreasury) external onlyVaultOwner {
        if (newTreasury == address(0)) revert InvalidAddress();
        pendingTreasury = newTreasury;
        pendingTreasuryTimestamp = block.timestamp + TIMELOCK_DELAY;
        emit TreasuryChangeProposed(newTreasury, pendingTreasuryTimestamp);
    }

    function executeTreasury() external onlyVaultOwner {
        if (pendingTreasury == address(0)) revert NoPendingChange();
        if (block.timestamp < pendingTreasuryTimestamp) revert TimelockNotReady();
        vault.setTreasury(pendingTreasury);
        pendingTreasury = address(0);
        pendingTreasuryTimestamp = 0;
    }

    function cancelTreasury() external onlyVaultOwner {
        if (pendingTreasury == address(0)) revert NoPendingChange();
        emit TreasuryChangeCancelled(pendingTreasury);
        pendingTreasury = address(0);
        pendingTreasuryTimestamp = 0;
    }

    /// @notice Set staking manager — initial setup only (no timelock, reverts if already set)
    function setInitialStakingManager(address newManager) external onlyVaultOwner {
        if (newManager == address(0)) revert InvalidAddress();
        if (vault.treasury() == address(0)) revert TreasuryNotSet();
        if (vault.stakingManager() != address(0)) revert StakingManagerAlreadySet();
        vault.setStakingManager(newManager);
    }

    function proposeStakingManager(address newManager) external onlyVaultOwner {
        if (vault.treasury() == address(0)) revert TreasuryNotSet();
        if (newManager == address(0)) revert InvalidAddress();
        pendingStakingManager = newManager;
        pendingStakingManagerTimestamp = block.timestamp + TIMELOCK_DELAY;
        emit StakingManagerChangeProposed(newManager, pendingStakingManagerTimestamp);
    }

    function executeStakingManager() external onlyVaultOwner {
        if (pendingStakingManager == address(0) && pendingStakingManagerTimestamp == 0) revert NoPendingChange();
        if (block.timestamp < pendingStakingManagerTimestamp) revert TimelockNotReady();
        vault.setStakingManager(pendingStakingManager);
        pendingStakingManager = address(0);
        pendingStakingManagerTimestamp = 0;
    }

    function cancelStakingManager() external onlyVaultOwner {
        if (pendingStakingManager == address(0) && pendingStakingManagerTimestamp == 0) revert NoPendingChange();
        emit StakingManagerChangeCancelled(pendingStakingManager);
        pendingStakingManager = address(0);
        pendingStakingManagerTimestamp = 0;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ADMIN CONFIG (with validation — vault functions are thin setters)
    // ═══════════════════════════════════════════════════════════════════════════

    uint256 public constant MAX_PROTOCOL_FEE_BPS = 5000;
    uint256 public constant MAX_FEE_CHANGE_BPS = 500;
    uint256 public constant MAX_REFERRAL_FEE_BPS = 1000;
    uint256 public constant MAX_SLIPPAGE_BPS = 1000;
    uint32 public constant MIN_TWAP_INTERVAL = 5 minutes;
    uint256 public constant FEE_CHANGE_COOLDOWN = 6 hours;

    /// @notice V17-M-03: Last time performance fee was changed (cooldown enforcement)
    uint256 public lastFeeChangeTime;

    function setPerformanceFee(uint256 newFeeBps) external onlyVaultOwner {
        if (newFeeBps > MAX_PROTOCOL_FEE_BPS) revert FeeTooHigh();
        if (lastFeeChangeTime > 0 && block.timestamp < lastFeeChangeTime + FEE_CHANGE_COOLDOWN) revert FeeChangeCooldown();
        uint256 current = vault.performanceFeeBps();
        uint256 delta = newFeeBps > current ? newFeeBps - current : current - newFeeBps;
        if (delta > MAX_FEE_CHANGE_BPS) revert FeeChangeTooLarge();
        lastFeeChangeTime = block.timestamp;
        vault.setPerformanceFee(newFeeBps);
        // V22-M-01: Cap referral fee if it would exceed new performance fee
        if (vault.referralFeeBps() > newFeeBps) {
            vault.setConfig(0, 0, newFeeBps, 0, type(uint256).max);
        }
    }

    function setConfig(
        uint24 rangeMin, uint24 rangeMax, uint256 newReferralFeeBps,
        uint32 newTwapInterval, uint256 newSlippageBps
    ) external onlyVaultOwner {
        if (rangeMin > 0 && rangeMax > 0 && rangeMin > rangeMax) revert InvalidRangeWidth();
        if (newReferralFeeBps != type(uint256).max) {
            if (newReferralFeeBps > MAX_REFERRAL_FEE_BPS || newReferralFeeBps > vault.performanceFeeBps()) revert ReferralFeeTooHigh();
        }
        if (newTwapInterval > 0 && (newTwapInterval < MIN_TWAP_INTERVAL || newTwapInterval > 1 hours)) revert InvalidTWAPInterval();
        // V19-I-03: Revert on invalid slippage instead of silently skipping
        if (newSlippageBps != type(uint256).max && newSlippageBps > 0 && newSlippageBps > MAX_SLIPPAGE_BPS) {
            revert InvalidSlippage();
        }
        vault.setConfig(rangeMin, rangeMax, newReferralFeeBps, newTwapInterval, newSlippageBps);
    }

    function setKeeper(address keeper, bool authorized) external onlyVaultOwner {
        vault.setKeeper(keeper, authorized);
    }

    function setFeeExempt(address user, bool exempt) external onlyVaultOwner {
        vault.setFeeExempt(user, exempt);
    }

    function clearReferrer(address user) external onlyVaultOwner {
        vault.clearReferrer(user);
    }

    function emergencyRevokeApproval(address token, address spender) external onlyVaultOwner {
        vault.emergencyRevokeApproval(token, spender);
    }

    function emergencyRevokeNFTApproval(address nftManager, address operator) external onlyVaultOwner {
        vault.emergencyRevokeNFTApproval(nftManager, operator);
    }

    function rescueERC721(address nftContract, uint256 tokenId, address to) external onlyVaultOwner {
        if (to == address(0)) revert InvalidAddress();
        (,,address posOwner,,,,,,,,,,,,,,) = vault.positions(tokenId);
        if (posOwner != address(0)) revert PositionIsActive();
        vault.rescueERC721(nftContract, tokenId, to);
    }
}
