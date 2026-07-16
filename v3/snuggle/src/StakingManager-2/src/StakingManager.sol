// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/IRewardAdapter.sol";
import "./interfaces/IPositionAdapter.sol";
import "./FeeTransferHelper.sol";
import "./ReferralTracker.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @notice Minimal vault interface for StakingManager
interface ISnuggleVaultMinimal {
    function positions(uint256 tokenId) external view returns (
        uint256 tokenId_,
        bytes32 poolId,
        address owner,
        uint24 rangeWidthBps,
        int24 currentTickLower,
        int24 currentTickUpper,
        bool autoSnuggleEnabled,
        bool autoCompoundEnabled,
        uint64 rebalanceDelay,
        uint64 outOfRangeSince,
        uint32 totalRebalances,
        uint32 lastRebalanceTime,
        uint64 depositTimestamp,
        uint128 cumulativeFees0,
        uint128 cumulativeFees1,
        uint128 cumulativeRewards,
        uint128 __reserved
    );
    function approvedPools(bytes32 poolId) external view returns (
        address pool,
        address token0,
        address token1,
        uint24 fee,
        int24 tickSpacing,
        bool active,
        IPositionAdapter positionAdapter,
        IRewardAdapter rewardAdapter
    );
    function owner() external view returns (address);
    function treasury() external view returns (address);
    function performanceFeeBps() external view returns (uint256);
    function referralFeeBps() external view returns (uint256);
    function referrer(address user) external view returns (address);
    function feeExempt(address user) external view returns (bool);
}

/// @title StakingManager
/// @notice Manages gauge staking operations and fee compounding for SnuggleVault
/// @dev Deployed separately to reduce SnuggleVault bytecode size
contract StakingManager {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ═══════════════════════════════════════════════════════════════════════════

    event PositionStaked(uint256 indexed tokenId, address indexed stakingContract);
    event PositionUnstaked(uint256 indexed tokenId, address indexed stakingContract);
    event StakingRewardsClaimed(uint256 indexed tokenId, address indexed owner, address indexed rewardToken, uint256 amount);
    event StakeFailed(uint256 indexed tokenId, bytes reason);
    event UnstakeFailed(uint256 indexed tokenId, bytes reason);

    // Fee compounding events
    event FeesCompounded(uint256 indexed tokenId, address indexed owner, uint256 amount0, uint256 amount1);
    event FeesHarvestedDirect(uint256 indexed tokenId, address indexed owner, uint256 amount0, uint256 amount1);
    event ProtocolFeesDistributed(uint256 indexed tokenId, uint256 treasury0, uint256 treasury1, uint256 referral0, uint256 referral1);

    // Referral tracker events
    event ReferralTrackerUpdated(address indexed oldTracker, address indexed newTracker);

    // Custom referral rate events
    event CustomReferralBpsSet(address indexed referrer, uint256 bps);

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error OnlyVault();
    error NotVaultOwner();
    error InvalidAddress();
    error PositionDoesNotExist();
    error NoRewardAdapter();
    error TreasuryNotSet();
    error NotPositionOwner();
    error PoolNotActive();
    error InvalidParameter();

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTANTS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Basis points denominator
    uint256 private constant BPS_DENOMINATOR = 10000;

    // ═══════════════════════════════════════════════════════════════════════════
    // STATE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The vault that owns this manager
    address public immutable vault;

    /// @notice Helper contract that has vault approval for fee transfers
    FeeTransferHelper public feeTransferHelper;

    /// @notice Referral tracker for recording referral earnings
    ReferralTracker public referralTracker;

    /// @notice Custom referral rate overrides per referrer (0 = use global default)
    mapping(address => uint256) public customReferralBps;

    // ═══════════════════════════════════════════════════════════════════════════
    // MODIFIERS
    // ═══════════════════════════════════════════════════════════════════════════

    modifier onlyVault() {
        if (msg.sender != vault) revert OnlyVault();
        _;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════

    constructor(address _vault) {
        if (_vault == address(0)) revert InvalidAddress();
        // L-6 fix: Verify vault is a contract
        if (_vault.code.length == 0) revert InvalidAddress();
        vault = _vault;
    }

    /// @notice Set the fee transfer helper (has vault approval for transfers)
    /// @param _helper The FeeTransferHelper contract address
    function setFeeTransferHelper(address _helper) external {
        if (msg.sender != ISnuggleVaultMinimal(vault).owner()) revert NotVaultOwner();
        if (_helper == address(0)) revert InvalidAddress();
        feeTransferHelper = FeeTransferHelper(_helper);
    }

    /// @notice Set the referral tracker for recording referral earnings
    /// @param _tracker The ReferralTracker contract address (can be address(0) to disable)
    function setReferralTracker(address _tracker) external {
        if (msg.sender != ISnuggleVaultMinimal(vault).owner()) revert NotVaultOwner();
        emit ReferralTrackerUpdated(address(referralTracker), _tracker);
        referralTracker = ReferralTracker(_tracker);
    }

    /// @notice Set a custom referral rate for a specific referrer
    /// @dev 0 = use global default from vault. Capped at current performance fee.
    ///      Also defended at runtime by clamp (referral > fee ? fee : referral).
    /// @param referrer The referrer address
    /// @param bps Custom referral rate in basis points (0 to reset to global)
    function setCustomReferralBps(address referrer, uint256 bps) external {
        if (msg.sender != ISnuggleVaultMinimal(vault).owner()) revert NotVaultOwner();
        if (referrer == address(0)) revert InvalidAddress();
        if (bps > ISnuggleVaultMinimal(vault).performanceFeeBps()) revert InvalidParameter();
        customReferralBps[referrer] = bps;
        emit CustomReferralBpsSet(referrer, bps);
    }

    /// @notice Get effective referral rate for a referrer (custom or global)
    /// @param referrer The referrer address
    /// @return bps The effective referral rate in basis points
    function getEffectiveReferralBps(address referrer) external view returns (uint256 bps) {
        bps = customReferralBps[referrer];
        if (bps == 0) bps = ISnuggleVaultMinimal(vault).referralFeeBps();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // STAKING FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Attempt to stake a position in reward adapter (gauge)
    /// @param tokenId Position NFT token ID
    /// @param rewardAdapter The reward adapter to stake in
    /// @param pool The pool address
    function tryStake(
        uint256 tokenId,
        IRewardAdapter rewardAdapter,
        IPositionAdapter, // unused - kept for interface compatibility
        address pool
    ) external onlyVault {
        // Skip if no reward adapter configured
        if (address(rewardAdapter) == address(0)) return;

        // Note: Vault has already called setApprovalForAll(rewardAdapter, true) on the
        // NFT manager during addPool(). The reward adapter can then call approve(gauge, tokenId)
        // because it's an approved operator. We don't need to call approve() here - and we
        // can't anyway since StakingManager is not the NFT owner or an approved operator.

        // Forward explicit gas to handle Aerodrome's complex gauge deposit operations
        try rewardAdapter.stake{gas: 1000000}(tokenId) {
            address stakingContract = rewardAdapter.getStakingContract(pool);
            emit PositionStaked(tokenId, stakingContract);
        } catch (bytes memory reason) {
            emit StakeFailed(tokenId, reason);
        }
    }

    /// @notice Attempt to unstake a position from reward adapter (gauge)
    /// @param tokenId Position NFT token ID
    /// @param rewardAdapter The reward adapter
    /// @param pool The pool address
    /// @param recipient Address to receive rewards (vault for fee extraction, or user for direct)
    /// @return rewardsEarned Amount of reward tokens claimed (AERO/CAKE)
    /// @return fees0 Amount of token0 trading fees collected during unstake (PancakeSwap only)
    /// @return fees1 Amount of token1 trading fees collected during unstake (PancakeSwap only)
    function tryUnstake(
        uint256 tokenId,
        IRewardAdapter rewardAdapter,
        address pool,
        address recipient
    ) external onlyVault returns (uint256 rewardsEarned, uint256 fees0, uint256 fees1) {
        // Skip if no reward adapter or not staked
        if (address(rewardAdapter) == address(0)) return (0, 0, 0);
        if (!rewardAdapter.isStaked(tokenId)) return (0, 0, 0);

        // Try to claim rewards first
        // Forward explicit gas to handle Aerodrome's complex gauge operations
        try rewardAdapter.claimRewards{gas: 1000000}(tokenId, recipient) returns (uint256 earned, uint256 f0, uint256 f1) {
            rewardsEarned = earned;
            fees0 = f0;
            fees1 = f1;
            if (earned > 0) {
                emit StakingRewardsClaimed(tokenId, recipient, rewardAdapter.rewardToken(), earned);
            }
        } catch {
            // Claim failed - continue with unstake
        }

        // V16-L-01 fix: Track reward token balance before/after unstake to capture
        // auto-claimed rewards (PancakeSwap MasterChef auto-harvests CAKE during withdraw).
        // If claimRewards failed, these auto-claimed rewards would otherwise bypass the
        // performance fee pipeline.
        address rewardTokenAddr = rewardAdapter.rewardToken();
        uint256 rewardBalanceBefore = IERC20(rewardTokenAddr).balanceOf(recipient);

        // Unstake the position
        // Forward explicit gas to handle Aerodrome's complex gauge withdraw operations
        try rewardAdapter.unstake{gas: 1000000}(tokenId) {
            address stakingContract = rewardAdapter.getStakingContract(pool);
            emit PositionUnstaked(tokenId, stakingContract);
        } catch (bytes memory reason) {
            emit UnstakeFailed(tokenId, reason);
        }

        // V16-L-01 fix: Capture any auto-claimed rewards that arrived at recipient during unstake
        uint256 rewardBalanceAfter = IERC20(rewardTokenAddr).balanceOf(recipient);
        if (rewardBalanceAfter > rewardBalanceBefore) {
            rewardsEarned += rewardBalanceAfter - rewardBalanceBefore;
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // PUBLIC STAKING FUNCTION (moved from SnuggleVault to reduce bytecode)
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Stake a position in the reward adapter (gauge)
    /// @dev V17-L-01: Restricted to position owner to prevent unwanted re-staking
    /// @param tokenId The position to stake
    function stakePosition(uint256 tokenId) external {
        // Get position data from vault
        (
            ,              // tokenId
            bytes32 poolId,
            address owner,
            ,              // rangeWidthBps
            ,              // currentTickLower
            ,              // currentTickUpper
            ,              // autoSnuggleEnabled
            ,              // autoCompoundEnabled
            ,              // rebalanceDelay
            ,              // outOfRangeSince
            ,              // totalRebalances
            ,              // lastRebalanceTime
            ,              // depositTimestamp
            ,              // cumulativeFees0
            ,              // cumulativeFees1
            ,              // cumulativeRewards
                           // __reserved
        ) = ISnuggleVaultMinimal(vault).positions(tokenId);

        if (owner == address(0)) revert PositionDoesNotExist();
        if (msg.sender != owner) revert NotPositionOwner();

        // Get reward adapter from pool config
        (
            address pool,
            ,              // token0
            ,              // token1
            ,              // fee
            ,              // tickSpacing
            bool active,
            ,              // positionAdapter
            IRewardAdapter rewardAdapter
        ) = ISnuggleVaultMinimal(vault).approvedPools(poolId);

        // V19-I-04: Verify pool is still active before allowing re-staking
        if (!active) revert PoolNotActive();
        if (address(rewardAdapter) == address(0)) revert NoRewardAdapter();

        // Stake via adapter with try-catch for robustness (M-1 fix)
        // Forward explicit gas to handle Aerodrome's complex gauge deposit operations
        try rewardAdapter.stake{gas: 1000000}(tokenId) {
            emit PositionStaked(tokenId, rewardAdapter.getStakingContract(pool));
        } catch (bytes memory reason) {
            emit StakeFailed(tokenId, reason);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // FEE COMPOUNDING FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Process collected trading fees - compound matching token, harvest other
    /// @dev Called by vault during snuggle rebalance. Reads position data from vault.
    /// @param tokenId Position token ID
    /// @param token0 First token address
    /// @param token1 Second token address
    /// @param fees0 Amount of token0 fees collected
    /// @param fees1 Amount of token1 fees collected
    /// @param currentTick Current pool tick
    /// @return compound0 Amount of token0 to compound back into liquidity
    /// @return compound1 Amount of token1 to compound back into liquidity
    function processFeesForCompounding(
        uint256 tokenId,
        address token0,
        address token1,
        uint256 fees0,
        uint256 fees1,
        int24 currentTick
    ) external onlyVault returns (uint256 compound0, uint256 compound1) {
        if (fees0 == 0 && fees1 == 0) return (0, 0);

        // Read position data from vault
        (,, address positionOwner,, int24 tickLower, int24 tickUpper,, bool autoCompoundEnabled,,,,,,,,,) =
            ISnuggleVaultMinimal(vault).positions(tokenId);

        if (!autoCompoundEnabled) {
            _harvestAllFees(tokenId, token0, token1, fees0, fees1, positionOwner);
            return (0, 0);
        }

        // Determine position side
        bool isToken0Position = currentTick < tickLower;
        bool isToken1Position = currentTick >= tickUpper;

        if (!isToken0Position && !isToken1Position) {
            _harvestAllFees(tokenId, token0, token1, fees0, fees1, positionOwner);
            return (0, 0);
        }

        if (isToken0Position) {
            // Compound all token0 fees, harvest all token1 fees
            compound0 = fees0;
            // V20-GAS-01: Combined duplicate if-check
            if (fees1 > 0) {
                feeTransferHelper.transferFromVault(token1, positionOwner, fees1);
                emit FeesHarvestedDirect(tokenId, positionOwner, 0, fees1);
            }
        } else {
            // Compound all token1 fees, harvest all token0 fees
            compound1 = fees1;
            // V20-GAS-01: Combined duplicate if-check
            if (fees0 > 0) {
                feeTransferHelper.transferFromVault(token0, positionOwner, fees0);
                emit FeesHarvestedDirect(tokenId, positionOwner, fees0, 0);
            }
        }

        if (compound0 > 0 || compound1 > 0) emit FeesCompounded(tokenId, positionOwner, compound0, compound1);
    }

    /// @notice Distribute performance fees on trading fee earnings (token0/token1 pair)
    /// @dev Reads fee config from vault. Takes performanceFeeBps% of earnings, splits between treasury and referrer.
    /// @param tokenId Position token ID
    /// @param token0 First token address
    /// @param token1 Second token address
    /// @param earned0 Token0 earnings to take performance fee from
    /// @param earned1 Token1 earnings to take performance fee from
    /// @param positionOwner Position owner
    /// @return remaining0 Token0 remaining after performance fee
    /// @return remaining1 Token1 remaining after performance fee
    function distributePerformanceFees(
        uint256 tokenId,
        address token0,
        address token1,
        uint256 earned0,
        uint256 earned1,
        address positionOwner
    ) external onlyVault returns (uint256 remaining0, uint256 remaining1) {
        if (earned0 == 0 && earned1 == 0) return (0, 0);

        // Read config from vault to save calldata in vault bytecode
        ISnuggleVaultMinimal v = ISnuggleVaultMinimal(vault);
        address treasuryAddr = v.treasury();
        if (treasuryAddr == address(0)) revert TreasuryNotSet();

        if (v.feeExempt(positionOwner)) {
            return (earned0, earned1);
        }

        uint256 feeBps = v.performanceFeeBps();
        uint256 fee0 = (earned0 * feeBps) / BPS_DENOMINATOR;
        uint256 fee1 = (earned1 * feeBps) / BPS_DENOMINATOR;

        uint256 treasury0 = fee0;
        uint256 treasury1 = fee1;

        address positionReferrer = v.referrer(positionOwner);
        if (positionReferrer != address(0)) {
            // Custom rate per referrer, fallback to global
            uint256 referralFeeBps = customReferralBps[positionReferrer];
            if (referralFeeBps == 0) referralFeeBps = v.referralFeeBps();
            if (referralFeeBps > 0) {
                uint256 referral0 = (earned0 * referralFeeBps) / BPS_DENOMINATOR;
                uint256 referral1 = (earned1 * referralFeeBps) / BPS_DENOMINATOR;
                // L-01 fix: Defensive check to prevent underflow
                if (referral0 > fee0) referral0 = fee0;
                if (referral1 > fee1) referral1 = fee1;
                treasury0 = fee0 - referral0;
                treasury1 = fee1 - referral1;

                if (referral0 > 0) {
                    _safeTransferReferral(token0, positionReferrer, positionOwner, referral0, treasuryAddr);
                }
                if (referral1 > 0) {
                    _safeTransferReferral(token1, positionReferrer, positionOwner, referral1, treasuryAddr);
                }
            }
        }

        if (treasury0 > 0) {
            feeTransferHelper.transferFromVault(token0, treasuryAddr, treasury0);
        }
        if (treasury1 > 0) {
            feeTransferHelper.transferFromVault(token1, treasuryAddr, treasury1);
        }

        remaining0 = earned0 - fee0;
        remaining1 = earned1 - fee1;

        emit ProtocolFeesDistributed(tokenId, treasury0, treasury1, fee0 - treasury0, fee1 - treasury1);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // INTERNAL FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev Harvest all fees to user (no compounding)
    function _harvestAllFees(
        uint256 tokenId,
        address token0,
        address token1,
        uint256 fees0,
        uint256 fees1,
        address positionOwner
    ) internal {
        if (fees0 > 0) {
            feeTransferHelper.transferFromVault(token0, positionOwner, fees0);
        }
        if (fees1 > 0) {
            feeTransferHelper.transferFromVault(token1, positionOwner, fees1);
        }
        emit FeesHarvestedDirect(tokenId, positionOwner, fees0, fees1);
    }

    /// @dev Safe transfer to referrer with fallback to treasury
    /// @dev Also records referral relationship and earnings to ReferralTracker if configured
    function _safeTransferReferral(
        address token,
        address referrerAddr,
        address userAddr,
        uint256 amount,
        address treasuryAddr
    ) internal {
        bool transferSuccess = true;
        try feeTransferHelper.transferFromVault(token, referrerAddr, amount) {}
        catch {
            feeTransferHelper.transferFromVault(token, treasuryAddr, amount);
            transferSuccess = false;
        }

        // Record to tracker (only if transfer to referrer succeeded)
        if (transferSuccess && address(referralTracker) != address(0)) {
            // Record the referral relationship (idempotent - will skip if already recorded)
            try referralTracker.recordReferral(userAddr) {}
            catch {
                // Already recorded or other non-critical error
            }
            // Record the earnings
            try referralTracker.recordEarnings(referrerAddr, token, amount) {}
            catch {
                // Recording failed - not critical, continue
            }
        }
    }
}
