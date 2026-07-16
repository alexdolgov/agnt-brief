// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {UnilaunchMultiPositionManager} from "../UnilaunchMultiPositionManager.sol";
import {UnilaunchMultiPositionFactory} from "../UnilaunchMultiPositionFactory.sol";
import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {UnilaunchLensRatioUtils} from "../libraries/SimpleLens/UnilaunchLensRatioUtils.sol";
import {UnilaunchLensInMin} from "../libraries/SimpleLens/UnilaunchLensInMin.sol";

/**
 * @title UnilaunchSimpleLens
 * @notice Read-only lens contract for previewing positions, rebalances, and deposits
 *         for UnilaunchMultiPositionManager
 * @dev Adapted from SimpleLens - removes withdrawal/compound related functions since
 *      those are disabled in UnilaunchMultiPositionManager
 *
 * Key constraints:
 * - Withdrawals disabled - no previewWithdrawCustom, getOutMinForShares
 * - Compounding disabled - no getAmountsForDepositAndCompound
 * - Rebalance restrictions - only proportional (0,0) or 50/50 weights; useCarpet must be true
 * - Time-locked rebalanceSwap - locked for lockDuration after deployment
 */
contract UnilaunchSimpleLens {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for PoolKey;

    uint256 constant DEPOSIT_PRECISION = 1e36;

    // Custom errors
    error InvalidWeights();
    error CarpetRequired();
    error RebalanceSwapLocked(uint256 unlockTimestamp);
    error InvalidTickParams();

    // ============================================
    // Position Stats
    // ============================================

    /**
     * @notice Get current position statistics for a manager
     * @param manager The UnilaunchMultiPositionManager to query
     * @return stats Array of PositionStats for each position (base + limit)
     */
    function getPositionStats(UnilaunchMultiPositionManager manager)
        external
        view
        returns (UnilaunchLensRatioUtils.PositionStats[] memory stats)
    {
        return UnilaunchLensRatioUtils.getPositionStats(manager);
    }

    /**
     * @notice Get total amounts in the manager
     * @param manager The UnilaunchMultiPositionManager to query
     * @return total0 Total token0 amount
     * @return total1 Total token1 amount
     * @return totalFee0 Unclaimed fee0
     * @return totalFee1 Unclaimed fee1
     */
    function getTotalAmounts(UnilaunchMultiPositionManager manager)
        external
        view
        returns (uint256 total0, uint256 total1, uint256 totalFee0, uint256 totalFee1)
    {
        return manager.getTotalAmounts();
    }

    // ============================================
    // Rebalance Preview Functions
    // ============================================

    /**
     * @notice Preview rebalance without swap (calculate outMin/inMin and expected positions)
     * @param manager The UnilaunchMultiPositionManager
     * @param rebalanceParams Parameters for the rebalance
     * @param maxSlippageOutMin Maximum slippage for burning positions (basis points)
     * @param maxSlippageInMin Maximum slippage for minting positions (basis points)
     * @return outMin Array of minimum output amounts for burning current positions
     * @return inMin Array of minimum input amounts for minting new positions
     * @return expectedPositions Array of expected position stats after rebalance
     */
    function previewRebalance(
        UnilaunchMultiPositionManager manager,
        IMultiPositionManager.RebalanceParams calldata rebalanceParams,
        uint256 maxSlippageOutMin,
        uint256 maxSlippageInMin
    )
        external
        view
        returns (
            uint256[2][] memory outMin,
            uint256[2][] memory inMin,
            UnilaunchLensRatioUtils.PositionStats[] memory expectedPositions
        )
    {
        // Validate params (without reverting on swap lock for regular rebalance)
        _validateRebalanceParams(manager, rebalanceParams, false);

        // Calculate outMin and inMin
        UnilaunchLensInMin.RebalanceMinParams memory params = UnilaunchLensInMin.RebalanceMinParams({
            manager: manager,
            strategyAddress: rebalanceParams.strategy,
            centerTick: rebalanceParams.center,
            ticksLeft: rebalanceParams.tLeft,
            ticksRight: rebalanceParams.tRight,
            limitWidth: rebalanceParams.limitWidth,
            weight0: rebalanceParams.weight0,
            weight1: rebalanceParams.weight1,
            useCarpet: rebalanceParams.useCarpet,
            swap: false,
            maxSlippageOutMin: maxSlippageOutMin,
            maxSlippageInMin: maxSlippageInMin,
            deductFees: false
        });

        (outMin, inMin) = UnilaunchLensInMin.getOutMinAndInMinForRebalance(params);

        // Get current total amounts to simulate rebalance
        (uint256 total0, uint256 total1,,) = manager.getTotalAmounts();

        // Simulate the rebalance to get expected positions
        UnilaunchLensInMin.RebalancePreview memory preview =
            UnilaunchLensInMin.simulateRebalance(manager, total0, total1, rebalanceParams);
        expectedPositions = preview.expectedPositions;
    }

    /**
     * @notice Preview rebalance with swap (includes swap params calculation)
     * @param manager The UnilaunchMultiPositionManager
     * @param rebalanceParams Parameters for the rebalance
     * @param maxSlippageOutMin Maximum slippage for burning positions (basis points)
     * @param maxSlippageInMin Maximum slippage for minting positions (basis points)
     * @return outMin Array of minimum output amounts for burning current positions
     * @return inMin Array of minimum input amounts for minting new positions
     * @return swapParams Calculated swap parameters
     * @return expectedPositions Array of expected position stats after rebalance
     */
    function previewRebalanceSwap(
        UnilaunchMultiPositionManager manager,
        IMultiPositionManager.RebalanceParams calldata rebalanceParams,
        uint256 maxSlippageOutMin,
        uint256 maxSlippageInMin
    )
        external
        view
        returns (
            uint256[2][] memory outMin,
            uint256[2][] memory inMin,
            UnilaunchLensRatioUtils.SwapParams memory swapParams,
            UnilaunchLensRatioUtils.PositionStats[] memory expectedPositions
        )
    {
        // Validate params and check swap lock
        _validateRebalanceParams(manager, rebalanceParams, true);

        // Calculate outMin and inMin with swap
        UnilaunchLensInMin.RebalanceMinParams memory params = UnilaunchLensInMin.RebalanceMinParams({
            manager: manager,
            strategyAddress: rebalanceParams.strategy,
            centerTick: rebalanceParams.center,
            ticksLeft: rebalanceParams.tLeft,
            ticksRight: rebalanceParams.tRight,
            limitWidth: rebalanceParams.limitWidth,
            weight0: rebalanceParams.weight0,
            weight1: rebalanceParams.weight1,
            useCarpet: rebalanceParams.useCarpet,
            swap: true,
            maxSlippageOutMin: maxSlippageOutMin,
            maxSlippageInMin: maxSlippageInMin,
            deductFees: false
        });

        (outMin, inMin) = UnilaunchLensInMin.getOutMinAndInMinForRebalance(params);

        // Get current total amounts
        (uint256 total0, uint256 total1,,) = manager.getTotalAmounts();

        // Calculate optimal swap parameters
        swapParams = _calculateSwapParamsForRebalance(manager, rebalanceParams, total0, total1);

        expectedPositions =
            _simulateRebalanceWithSwap(manager, rebalanceParams, total0, total1, swapParams);
    }

    function _calculateSwapParamsForRebalance(
        UnilaunchMultiPositionManager manager,
        IMultiPositionManager.RebalanceParams calldata rebalanceParams,
        uint256 total0,
        uint256 total1
    ) private view returns (UnilaunchLensRatioUtils.SwapParams memory swapParams) {
        swapParams = UnilaunchLensRatioUtils.calculateOptimalSwapForRebalance(
            manager,
            rebalanceParams.strategy,
            rebalanceParams.center,
            rebalanceParams.tLeft,
            rebalanceParams.tRight,
            rebalanceParams.weight0,
            rebalanceParams.weight1,
            rebalanceParams.useCarpet,
            manager.poolManager(),
            total0,
            total1
        );
    }

    function _simulateRebalanceWithSwap(
        UnilaunchMultiPositionManager manager,
        IMultiPositionManager.RebalanceParams calldata rebalanceParams,
        uint256 total0,
        uint256 total1,
        UnilaunchLensRatioUtils.SwapParams memory swapParams
    ) private view returns (UnilaunchLensRatioUtils.PositionStats[] memory expectedPositions) {
        IPoolManager poolManager = manager.poolManager();
        PoolKey memory poolKey = manager.poolKey();
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

        (uint256 finalAmount0, uint256 finalAmount1) = UnilaunchLensRatioUtils.applySwap(
            total0, total1, swapParams.swapToken0, swapParams.swapAmount, sqrtPriceX96
        );

        IMultiPositionManager.RebalanceParams memory swapRebalanceParams = rebalanceParams;
        UnilaunchLensInMin.RebalancePreview memory preview =
            UnilaunchLensInMin.simulateRebalance(manager, finalAmount0, finalAmount1, swapRebalanceParams);
        expectedPositions = preview.expectedPositions;
    }

    // ============================================
    // Deposit Calculation Functions
    // ============================================

    /**
     * @notice Calculate complementary token amount for ratio-maintaining deposit
     * @param manager The UnilaunchMultiPositionManager
     * @param isToken0 True if user is providing token0, false for token1
     * @param amount Amount of token being provided
     * @return otherAmount Amount of the other token needed to maintain current ratio
     */
    function getAmountsForExactRatioDeposit(UnilaunchMultiPositionManager manager, bool isToken0, uint256 amount)
        external
        view
        returns (uint256 otherAmount)
    {
        return UnilaunchLensRatioUtils.getAmountsForDeposit(manager, isToken0, amount);
    }

    /**
     * @notice Preview idle-balance deposit (no positions minted)
     * @param manager The UnilaunchMultiPositionManager
     * @param amount0Desired Desired amount of token0 to deposit
     * @param amount1Desired Desired amount of token1 to deposit
     * @param maxSlippageBps Maximum slippage in basis points
     * @return amount0 Actual amount of token0 that will be deposited
     * @return amount1 Actual amount of token1 that will be deposited
     * @return shares Expected shares to be minted
     * @return inMin Empty/zeroed array (deposit does not mint positions)
     */
    function previewDeposit(
        UnilaunchMultiPositionManager manager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 maxSlippageBps
    ) external view returns (uint256 amount0, uint256 amount1, uint256 shares, uint256[2][] memory inMin) {
        uint256 totalSupply = manager.totalSupply();

        // Deposit uses desired amounts as-is (idle balance only)
        amount0 = amount0Desired;
        amount1 = amount1Desired;

        // Match DepositLogic share calculation
        if (totalSupply == 0) {
            shares = amount0 > amount1 ? amount0 : amount1;
        } else {
            (uint256 total0, uint256 total1,,) = manager.getTotalAmounts();
            IPoolManager poolManager = manager.poolManager();
            PoolKey memory poolKey = manager.poolKey();
            (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolKey.toId());

            uint256 price = FullMath.mulDiv(
                FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96),
                DEPOSIT_PRECISION,
                1 << 96
            );

            uint256 depositValueInToken1 =
                amount1 + FullMath.mulDiv(amount0, price, DEPOSIT_PRECISION);
            uint256 totalValueInToken1 =
                total1 + FullMath.mulDiv(total0, price, DEPOSIT_PRECISION);

            shares = totalValueInToken1 == 0
                ? depositValueInToken1
                : FullMath.mulDiv(depositValueInToken1, totalSupply, totalValueInToken1);
        }

        // Deposit does not add to positions; return zeroed inMin array for compatibility
        (IMultiPositionManager.Range[] memory ranges,) = manager.getPositions();
        inMin = new uint256[2][](ranges.length);
        maxSlippageBps; // silence unused parameter warning
    }

    // ============================================
    // Validation Functions
    // ============================================

    /**
     * @notice Check if rebalance params are valid given current lock state
     * @param manager The UnilaunchMultiPositionManager
     * @param rebalanceParams Parameters to validate
     * @param isSwap Whether this is a rebalanceSwap operation
     * @return isValid True if params are valid
     * @return reason Human-readable reason if invalid
     */
    function validateRebalanceParams(
        UnilaunchMultiPositionManager manager,
        IMultiPositionManager.RebalanceParams calldata rebalanceParams,
        bool isSwap
    ) external view returns (bool isValid, string memory reason) {
        // Check weight constraints
        bool isProportional = (rebalanceParams.weight0 == 0 && rebalanceParams.weight1 == 0);
        bool isFiftyFifty = (rebalanceParams.weight0 == 0.5e18 && rebalanceParams.weight1 == 0.5e18);

        if (!isProportional && !isFiftyFifty) {
            return (false, "Weights must be proportional (0,0) or 50/50 (0.5e18, 0.5e18)");
        }

        // Check carpet requirement
        if (!rebalanceParams.useCarpet) {
            return (false, "useCarpet must be true");
        }

        // Get factory and lock status
        UnilaunchMultiPositionFactory factory = UnilaunchMultiPositionFactory(manager.unilaunchFactory());
        uint256 unlockAt = manager.deployedAt() + factory.lockDuration();
        bool isLocked = block.timestamp < unlockAt;

        // Check swap lock
        if (isSwap && isLocked) {
            return (false, "RebalanceSwap is still locked");
        }

        if (isLocked) {
            if (rebalanceParams.tLeft < factory.minTicksLeftInitial()) {
                return (false, "tLeft too small during lock period");
            }
            if (rebalanceParams.tRight < factory.minTicksRightInitial()) {
                return (false, "tRight too small during lock period");
            }
            if (isFiftyFifty && rebalanceParams.limitWidth < factory.minLimitWidthInitial()) {
                return (false, "limitWidth too small during lock period");
            }
        } else {
            if (rebalanceParams.tLeft < factory.minTicksLeftAfter()) {
                return (false, "tLeft too small");
            }
            if (rebalanceParams.tRight < factory.minTicksRightAfter()) {
                return (false, "tRight too small");
            }
            if (isFiftyFifty && rebalanceParams.limitWidth < factory.minLimitWidthAfter()) {
                return (false, "limitWidth too small");
            }
        }

        return (true, "");
    }

    /**
     * @notice Get the unlock timestamp for rebalanceSwap
     * @param manager The UnilaunchMultiPositionManager
     * @return unlockAt Timestamp when rebalanceSwap becomes available
     * @return isLocked Whether swap is currently locked
     */
    function getSwapLockStatus(UnilaunchMultiPositionManager manager)
        external
        view
        returns (uint256 unlockAt, bool isLocked)
    {
        UnilaunchMultiPositionFactory factory = UnilaunchMultiPositionFactory(manager.unilaunchFactory());
        unlockAt = manager.deployedAt() + factory.lockDuration();
        isLocked = block.timestamp < unlockAt;
    }

    // ============================================
    // Internal Functions
    // ============================================

    function _validateRebalanceParams(
        UnilaunchMultiPositionManager manager,
        IMultiPositionManager.RebalanceParams calldata params,
        bool checkSwap
    )
        private
        view
    {
        bool isProportional = (params.weight0 == 0 && params.weight1 == 0);
        bool isFiftyFifty = (params.weight0 == 0.5e18 && params.weight1 == 0.5e18);

        if (!isProportional && !isFiftyFifty) {
            revert InvalidWeights();
        }

        if (!params.useCarpet) {
            revert CarpetRequired();
        }

        UnilaunchMultiPositionFactory factory = UnilaunchMultiPositionFactory(manager.unilaunchFactory());
        uint256 unlockAt = manager.deployedAt() + factory.lockDuration();
        bool isLocked = block.timestamp < unlockAt;

        if (checkSwap && isLocked) {
            revert RebalanceSwapLocked(unlockAt);
        }

        if (isLocked) {
            if (params.tLeft < factory.minTicksLeftInitial()) revert InvalidTickParams();
            if (params.tRight < factory.minTicksRightInitial()) revert InvalidTickParams();
            if (isFiftyFifty && params.limitWidth < factory.minLimitWidthInitial()) revert InvalidTickParams();
        } else {
            if (params.tLeft < factory.minTicksLeftAfter()) revert InvalidTickParams();
            if (params.tRight < factory.minTicksRightAfter()) revert InvalidTickParams();
            if (isFiftyFifty && params.limitWidth < factory.minLimitWidthAfter()) revert InvalidTickParams();
        }

    }
}
