// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IPositionAdapter.sol";
import "../interfaces/IRewardAdapter.sol";
import "../StakingManager.sol";
import "./TickMath.sol";
import "./SnuggleLogic.sol";

/// @title SnuggleRebalanceLib
/// @notice Library for rebalance and fee distribution logic, deployed separately to reduce vault bytecode
/// @dev Public functions are called via delegatecall, preserving vault's storage context
library SnuggleRebalanceLib {
    using SafeERC20 for IERC20;

    uint256 internal constant BPS_DENOMINATOR = 10000;

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS (redefined for delegatecall context — emitted as vault events)
    // ═══════════════════════════════════════════════════════════════════════════

    event FeesHarvested(uint256 indexed tokenId, address indexed owner, uint256 fees0, uint256 fees1);
    event RebalanceSkipped(uint256 indexed tokenId, int24 tickLower, int24 tickUpper, string reason);
    event PerformanceFeeCollected(uint256 indexed tokenId, address indexed token, uint256 feeAmount, uint256 treasuryAmount, uint256 referralAmount);
    event ReferralPaymentFailed(address indexed referrer, address indexed token, uint256 amount);
    event StakingRewardsClaimed(uint256 indexed tokenId, address indexed owner, address indexed rewardToken, uint256 amount);

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error PositionInRange();
    error RebalanceWouldNotChangeRange();

    // ═══════════════════════════════════════════════════════════════════════════
    // STRUCTS
    // ═══════════════════════════════════════════════════════════════════════════

    struct RebalanceContext {
        // Position data
        address posOwner;
        bytes32 poolId;
        uint24 rangeWidthBps;
        int24 currentTickLower;
        int24 currentTickUpper;
        bool autoCompoundEnabled;
        uint32 totalRebalances;
        uint128 cumulativeFees0;
        uint128 cumulativeFees1;
        uint128 cumulativeRewards;
        // Pool config
        address pool;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
        IPositionAdapter adapter;
        IRewardAdapter rewardAdapter;
        // Vault config
        uint32 twapInterval;
        uint256 slippageBps;
        uint256 performanceFeeBps;
        uint256 referralFeeBps;
        address treasury;
        StakingManager stakingManager;
        bool isExempt;
        address referrerAddr;
        // Pre-computed unstake results (vault unstakes before calling)
        uint256 rewardsEarned;
        uint256 unstakeFees0;
        uint256 unstakeFees1;
    }

    struct RebalanceResult {
        uint256 newTokenId;
        int24 newTickLower;
        int24 newTickUpper;
        uint256 perfFee0;
        uint256 perfFee1;
        uint128 updatedCumulativeFees0;
        uint128 updatedCumulativeFees1;
        uint128 updatedCumulativeRewards;
        bool skipped;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // DEPOSIT MINT (moved from vault to eliminate duplicate TickMath inlining)
    // ═══════════════════════════════════════════════════════════════════════════

    error TWAPSpotDivergence();

    struct MintContext {
        address pool;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
        IPositionAdapter adapter;
        uint256 actualAmount0;
        uint256 actualAmount1;
        uint24 rangeWidthBps;
        bool singleSided;
        uint32 twapInterval;
        uint256 slippageBps;
    }

    struct MintResult {
        uint256 tokenId;
        int24 tickLower;
        int24 tickUpper;
        uint128 liquidity;
    }

    /// @notice Execute deposit mint — tick calculation + adapter mint + refund
    /// @dev Called via delegatecall from vault. Eliminates duplicate TickMath inlining.
    function executeMint(MintContext memory ctx, uint256 deadline) public returns (MintResult memory result) {
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Min;
        uint256 amount1Min;

        if (ctx.singleSided) {
            bool isToken0 = ctx.actualAmount0 > 0;
            int24 twapTick = ctx.adapter.getTWAPTick(ctx.pool, ctx.twapInterval);
            int24 spotTick = ctx.adapter.getCurrentTick(ctx.pool);
            int24 currentTick = SnuggleLogic.selectConservativeTick(twapTick, spotTick, isToken0);
            (tickLower, tickUpper) = TickMath.calculateSnuggleRange(
                currentTick, ctx.tickSpacing, ctx.rangeWidthBps, ctx.actualAmount0, ctx.actualAmount1
            );
            (amount0Min, amount1Min) = SnuggleLogic.calculateSlippageMinimums(
                ctx.actualAmount0, ctx.actualAmount1, ctx.slippageBps
            );
        } else {
            int24 currentTick = ctx.adapter.getTWAPTick(ctx.pool, ctx.twapInterval);
            int24 spotTick = ctx.adapter.getCurrentTick(ctx.pool);
            {
                int24 div = currentTick > spotTick ? currentTick - spotTick : spotTick - currentTick;
                if (div > ctx.tickSpacing * 10) revert TWAPSpotDivergence();
            }
            (tickLower, tickUpper) = TickMath.calculateCenteredRange(
                currentTick, ctx.tickSpacing, ctx.rangeWidthBps
            );
        }

        uint256 amount0Used;
        uint256 amount1Used;
        (result.tokenId, result.liquidity, amount0Used, amount1Used) = ctx.adapter.mint(
            ctx.token0, ctx.token1, ctx.fee,
            tickLower, tickUpper, ctx.actualAmount0, ctx.actualAmount1,
            amount0Min, amount1Min, address(this), deadline
        );
        result.tickLower = tickLower;
        result.tickUpper = tickUpper;

        // Refund unused tokens to depositor
        if (ctx.actualAmount0 > amount0Used) {
            IERC20(ctx.token0).safeTransfer(msg.sender, ctx.actualAmount0 - amount0Used);
        }
        if (ctx.actualAmount1 > amount1Used) {
            IERC20(ctx.token1).safeTransfer(msg.sender, ctx.actualAmount1 - amount1Used);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // REBALANCE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Execute the full snuggle rebalance logic
    /// @dev Called via delegatecall from the vault — external calls appear from vault
    /// @param ctx All context needed for the rebalance (position, pool, config data)
    /// @param tokenId The position token ID
    /// @param isManual Whether this is a manual rebalance
    /// @return result The rebalance results for the vault to apply to storage
    function executeRebalance(
        RebalanceContext memory ctx,
        uint256 tokenId,
        bool isManual
    ) public returns (RebalanceResult memory result) {
        // Initialize cumulative trackers from context
        result.updatedCumulativeFees0 = ctx.cumulativeFees0;
        result.updatedCumulativeFees1 = ctx.cumulativeFees1;
        result.updatedCumulativeRewards = ctx.cumulativeRewards;

        // H-2: Use TWAP for manipulation resistance
        int24 currentTick = ctx.adapter.getTWAPTick(ctx.pool, ctx.twapInterval);

        // CRITICAL FIX: Check spot tick to prevent TWAP/spot divergence issue
        int24 spotTick = ctx.adapter.getCurrentTick(ctx.pool);
        bool spotInRange = spotTick >= ctx.currentTickLower && spotTick < ctx.currentTickUpper;

        if (spotInRange) {
            if (isManual) revert PositionInRange();
            emit RebalanceSkipped(tokenId, ctx.currentTickLower, ctx.currentTickUpper, "Spot in range");
            _handleSkippedRebalance(ctx, tokenId);
            result.skipped = true;
            // V25-L-01: Update cumulative trackers even on skipped rebalances
            _updateSkippedTrackers(ctx, result);
            return result;
        }

        // Check if rebalancing would actually change the range
        bool wouldChange = TickMath.wouldSnuggleChangeRange(
            currentTick, ctx.tickSpacing, ctx.rangeWidthBps,
            ctx.currentTickLower, ctx.currentTickUpper
        );
        if (!wouldChange) {
            if (isManual) revert RebalanceWouldNotChangeRange();
            emit RebalanceSkipped(tokenId, ctx.currentTickLower, ctx.currentTickUpper, "Range unchanged");
            _handleSkippedRebalance(ctx, tokenId);
            result.skipped = true;
            // V25-L-01: Update cumulative trackers even on skipped rebalances
            _updateSkippedTrackers(ctx, result);
            return result;
        }

        // Steps 0-2: Collect earnings and take performance fees
        (uint256 compound0, uint256 compound1) = _collectEarningsAndFees(
            ctx, tokenId, currentTick, result
        );

        // Step 3: Remove all liquidity from old position
        // I-05: Zero slippage is safe — decreaseLiquidity removes exact liquidity with no swap.
        // Amount returned is deterministic for the current tick. Slippage protection is on the mint (Step 6).
        (,,,,, uint128 liquidity) = ctx.adapter.getPosition(tokenId);
        ctx.adapter.decreaseLiquidity(tokenId, liquidity, 0, 0, block.timestamp + 1 hours);
        (uint256 amount0, uint256 amount1) = ctx.adapter.collect(tokenId, address(this));

        // Step 4: Total amounts (principal + compounded fees)
        uint256 remainingAmount0 = amount0 + compound0;
        uint256 remainingAmount1 = amount1 + compound1;

        // Step 5: Calculate new tick range
        (result.newTickLower, result.newTickUpper) = TickMath.calculateSnuggleRange(
            currentTick, ctx.tickSpacing, ctx.rangeWidthBps,
            remainingAmount0, remainingAmount1
        );

        // Step 6: Mint new position with slippage protection
        uint256 amount0Min = result.newTickLower > currentTick
            ? (remainingAmount0 * (BPS_DENOMINATOR - ctx.slippageBps)) / BPS_DENOMINATOR : 0;
        uint256 amount1Min = result.newTickUpper <= currentTick
            ? (remainingAmount1 * (BPS_DENOMINATOR - ctx.slippageBps)) / BPS_DENOMINATOR : 0;

        uint256 amount0Used;
        uint256 amount1Used;
        (result.newTokenId, , amount0Used, amount1Used) = ctx.adapter.mint(
            ctx.token0, ctx.token1, ctx.fee,
            result.newTickLower, result.newTickUpper,
            remainingAmount0, remainingAmount1,
            amount0Min, amount1Min,
            address(this), block.timestamp + 1 hours
        );

        // Step 7: Handle dust (send back to user)
        uint256 dust0 = remainingAmount0 - amount0Used;
        uint256 dust1 = remainingAmount1 - amount1Used;
        if (dust0 > 0) IERC20(ctx.token0).safeTransfer(ctx.posOwner, dust0);
        if (dust1 > 0) IERC20(ctx.token1).safeTransfer(ctx.posOwner, dust1);

        // Step 8: Burn old NFT
        ctx.adapter.burn(tokenId);
    }

    /// @dev V22-M-01: Handle skipped rebalance — re-stake position and return stranded tokens
    /// V23-M-01: Route rewards/fees through performance fee pipeline (not direct transfer)
    /// V23-L-03: Emit events for off-chain tracking
    /// @param ctx Rebalance context with all needed data
    /// @param tokenId The position token ID (still the original, since no rebalance occurred)
    function _handleSkippedRebalance(RebalanceContext memory ctx, uint256 tokenId) internal {
        // Re-stake position in gauge (vault already unstaked it before calling library)
        if (address(ctx.stakingManager) != address(0) && address(ctx.rewardAdapter) != address(0)) {
            ctx.stakingManager.tryStake(tokenId, ctx.rewardAdapter, ctx.adapter, ctx.pool);
        }
        // V23-M-01: Process staking rewards through performance fee pipeline
        if (ctx.rewardsEarned > 0 && address(ctx.rewardAdapter) != address(0)) {
            address rewardToken = ctx.rewardAdapter.rewardToken();
            uint256 remaining = distributeRewardPerformanceFee(
                tokenId, rewardToken, ctx.rewardsEarned, ctx.posOwner,
                ctx.isExempt, ctx.performanceFeeBps, ctx.referralFeeBps,
                ctx.referrerAddr, ctx.treasury
            );
            if (remaining > 0) {
                IERC20(rewardToken).safeTransfer(ctx.posOwner, remaining);
            }
            emit StakingRewardsClaimed(tokenId, ctx.posOwner, rewardToken, ctx.rewardsEarned);
        }
        // V23-M-01: Process trading fees through performance fee pipeline
        if (ctx.unstakeFees0 > 0 || ctx.unstakeFees1 > 0) {
            uint256 remaining0 = ctx.unstakeFees0;
            uint256 remaining1 = ctx.unstakeFees1;
            if (address(ctx.stakingManager) != address(0)) {
                (remaining0, remaining1) = ctx.stakingManager.distributePerformanceFees(
                    tokenId, ctx.token0, ctx.token1,
                    ctx.unstakeFees0, ctx.unstakeFees1, ctx.posOwner
                );
            }
            if (remaining0 > 0) {
                IERC20(ctx.token0).safeTransfer(ctx.posOwner, remaining0);
            }
            if (remaining1 > 0) {
                IERC20(ctx.token1).safeTransfer(ctx.posOwner, remaining1);
            }
            emit FeesHarvested(tokenId, ctx.posOwner, ctx.unstakeFees0, ctx.unstakeFees1);
        }
    }

    /// @dev V25-L-01: Update cumulative trackers for skipped rebalances
    /// @param ctx Rebalance context with earnings data
    /// @param result Rebalance result to update tracker fields on
    function _updateSkippedTrackers(RebalanceContext memory ctx, RebalanceResult memory result) internal pure {
        if (ctx.unstakeFees0 > 0 || ctx.unstakeFees1 > 0) {
            result.updatedCumulativeFees0 = SnuggleLogic.saturatingAdd128(ctx.cumulativeFees0, ctx.unstakeFees0);
            result.updatedCumulativeFees1 = SnuggleLogic.saturatingAdd128(ctx.cumulativeFees1, ctx.unstakeFees1);
        }
        if (ctx.rewardsEarned > 0) {
            result.updatedCumulativeRewards = SnuggleLogic.saturatingAdd128(ctx.cumulativeRewards, ctx.rewardsEarned);
        }
    }

    /// @dev Collect earnings (rewards + fees), take performance fees, process compounding
    function _collectEarningsAndFees(
        RebalanceContext memory ctx,
        uint256 tokenId,
        int24 currentTick,
        RebalanceResult memory result
    ) internal returns (uint256 compound0, uint256 compound1) {
        // Step 0.5: Take performance fee on staking rewards (already unstaked by vault)
        if (ctx.rewardsEarned > 0) {
            result.updatedCumulativeRewards = SnuggleLogic.saturatingAdd128(
                result.updatedCumulativeRewards, ctx.rewardsEarned
            );
            address rewardTokenAddr = ctx.rewardAdapter.rewardToken();
            uint256 remainingRewards = distributeRewardPerformanceFee(
                tokenId, rewardTokenAddr, ctx.rewardsEarned, ctx.posOwner,
                ctx.isExempt, ctx.performanceFeeBps, ctx.referralFeeBps,
                ctx.referrerAddr, ctx.treasury
            );
            if (remainingRewards > 0) {
                IERC20(rewardTokenAddr).safeTransfer(ctx.posOwner, remainingRewards);
            }
        }

        // Step 1: Collect accrued trading fees to vault
        (uint256 collectFees0, uint256 collectFees1) = ctx.adapter.collect(tokenId, address(this));

        // Combine trading fees from unstake (PancakeSwap) and collect (Uniswap/Aerodrome)
        uint256 fees0 = ctx.unstakeFees0 + collectFees0;
        uint256 fees1 = ctx.unstakeFees1 + collectFees1;

        if (fees0 > 0 || fees1 > 0) {
            result.updatedCumulativeFees0 = SnuggleLogic.saturatingAdd128(
                result.updatedCumulativeFees0, fees0
            );
            result.updatedCumulativeFees1 = SnuggleLogic.saturatingAdd128(
                result.updatedCumulativeFees1, fees1
            );
            emit FeesHarvested(tokenId, ctx.posOwner, fees0, fees1);
        }

        // Step 1.5: Take performance fee on trading fees
        uint256 remainingFees0 = fees0;
        uint256 remainingFees1 = fees1;
        if (address(ctx.stakingManager) != address(0)) {
            (remainingFees0, remainingFees1) = ctx.stakingManager.distributePerformanceFees(
                tokenId, ctx.token0, ctx.token1, fees0, fees1, ctx.posOwner
            );
        }

        result.perfFee0 = fees0 - remainingFees0;
        result.perfFee1 = fees1 - remainingFees1;

        // Step 2: Process remaining fees for compounding
        if (address(ctx.stakingManager) != address(0)) {
            (compound0, compound1) = ctx.stakingManager.processFeesForCompounding(
                tokenId, ctx.token0, ctx.token1, remainingFees0, remainingFees1, currentTick
            );
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // EARNINGS PROCESSING (shared by withdraw, harvest, claimStakingRewards)
    // ═══════════════════════════════════════════════════════════════════════════

    struct EarningsContext {
        uint256 tokenId;
        address posOwner;
        address token0;
        address token1;
        uint256 rewardsEarned;
        uint256 fees0;
        uint256 fees1;
        IRewardAdapter rewardAdapter;
        StakingManager stakingManager;
        uint256 performanceFeeBps;
        uint256 referralFeeBps;
        address referrerAddr;
        address treasury;
        bool isExempt;
        uint128 cumulativeFees0;
        uint128 cumulativeFees1;
        uint128 cumulativeRewards;
    }

    /// @notice Process all earnings (staking rewards + trading fees) with performance fees
    /// @dev Called via delegatecall from vault for withdraw, harvest, claimStakingRewards
    /// @param ctx Earnings context with all needed data
    /// @return newCumFees0 Updated cumulative fees for token0
    /// @return newCumFees1 Updated cumulative fees for token1
    /// @return newCumRewards Updated cumulative rewards
    /// @return remFees0 Trading fees sent to user (for event tracking)
    /// @return remFees1 Trading fees sent to user (for event tracking)
    function processAllEarnings(
        EarningsContext memory ctx
    ) public returns (
        uint128 newCumFees0, uint128 newCumFees1, uint128 newCumRewards,
        uint256 remFees0, uint256 remFees1
    ) {
        newCumFees0 = ctx.cumulativeFees0;
        newCumFees1 = ctx.cumulativeFees1;
        newCumRewards = ctx.cumulativeRewards;
        remFees0 = ctx.fees0;
        remFees1 = ctx.fees1;

        // Process staking rewards (AERO/CAKE)
        if (ctx.rewardsEarned > 0 && address(ctx.rewardAdapter) != address(0)) {
            newCumRewards = SnuggleLogic.saturatingAdd128(newCumRewards, ctx.rewardsEarned);
            address rewardTokenAddr = ctx.rewardAdapter.rewardToken();
            uint256 remRewards = distributeRewardPerformanceFee(
                ctx.tokenId, rewardTokenAddr, ctx.rewardsEarned, ctx.posOwner,
                ctx.isExempt, ctx.performanceFeeBps, ctx.referralFeeBps,
                ctx.referrerAddr, ctx.treasury
            );
            if (remRewards > 0) IERC20(rewardTokenAddr).safeTransfer(ctx.posOwner, remRewards);
            emit StakingRewardsClaimed(ctx.tokenId, ctx.posOwner, rewardTokenAddr, ctx.rewardsEarned);
        }

        // Process trading fees
        if (ctx.fees0 > 0 || ctx.fees1 > 0) {
            newCumFees0 = SnuggleLogic.saturatingAdd128(newCumFees0, ctx.fees0);
            newCumFees1 = SnuggleLogic.saturatingAdd128(newCumFees1, ctx.fees1);
            emit FeesHarvested(ctx.tokenId, ctx.posOwner, ctx.fees0, ctx.fees1);

            if (address(ctx.stakingManager) != address(0)) {
                (remFees0, remFees1) = ctx.stakingManager.distributePerformanceFees(
                    ctx.tokenId, ctx.token0, ctx.token1, ctx.fees0, ctx.fees1, ctx.posOwner
                );
            }
            if (remFees0 > 0) IERC20(ctx.token0).safeTransfer(ctx.posOwner, remFees0);
            if (remFees1 > 0) IERC20(ctx.token1).safeTransfer(ctx.posOwner, remFees1);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // FEE DISTRIBUTION
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Distribute performance fee on a single reward token (AERO/CAKE)
    /// @dev Public so it can be called directly from vault for withdraw/claim, or internally during rebalance
    /// @param tokenId Position token ID for event
    /// @param rewardTokenAddr The reward token address
    /// @param amount Total reward amount in vault
    /// @param posOwner Position owner
    /// @param isExempt Whether user is fee-exempt
    /// @param performanceFeeBps_ Performance fee in bps
    /// @param referralFeeBps_ Referral fee in bps
    /// @param referrerAddr Referrer address (address(0) if none)
    /// @param treasury_ Treasury address
    /// @return remaining Amount after performance fee
    function distributeRewardPerformanceFee(
        uint256 tokenId,
        address rewardTokenAddr,
        uint256 amount,
        address posOwner,
        bool isExempt,
        uint256 performanceFeeBps_,
        uint256 referralFeeBps_,
        address referrerAddr,
        address treasury_
    ) public returns (uint256 remaining) {
        if (amount == 0 || isExempt) return amount;

        uint256 fee = (amount * performanceFeeBps_) / BPS_DENOMINATOR;
        if (fee == 0) return amount;

        uint256 treasuryAmount = fee;
        uint256 referralAmount;

        if (referrerAddr != address(0) && referralFeeBps_ > 0) {
            referralAmount = (amount * referralFeeBps_) / BPS_DENOMINATOR;
            if (referralAmount > fee) referralAmount = fee;
            treasuryAmount = fee - referralAmount;
            if (referralAmount > 0) {
                // V14-L-02: Try-catch with treasury fallback
                // V19-L-01: Uses .transfer() (not .safeTransfer()) because safeTransfer is a library
                // function and cannot be used with try-catch. Both failure modes are handled:
                // - Revert → caught by catch block → treasury fallback
                // - Returns false → caught by !success check → treasury fallback
                // - No return data → ABI decode fails → caught by catch block → treasury fallback
                try IERC20(rewardTokenAddr).transfer(referrerAddr, referralAmount) returns (bool success) {
                    if (!success) {
                        IERC20(rewardTokenAddr).safeTransfer(treasury_, referralAmount);
                        emit ReferralPaymentFailed(referrerAddr, rewardTokenAddr, referralAmount);
                    }
                } catch {
                    IERC20(rewardTokenAddr).safeTransfer(treasury_, referralAmount);
                    emit ReferralPaymentFailed(referrerAddr, rewardTokenAddr, referralAmount);
                }
            }
        }

        if (treasuryAmount > 0) {
            IERC20(rewardTokenAddr).safeTransfer(treasury_, treasuryAmount);
        }

        emit PerformanceFeeCollected(tokenId, rewardTokenAddr, fee, treasuryAmount, referralAmount);
        remaining = amount - fee;
    }
}
