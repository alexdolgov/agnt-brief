// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";
import { LibBitmap } from "solady-0.1/utils/LibBitmap.sol";
import { SafeCastLib } from "solady-0.1/utils/SafeCastLib.sol";

import "../UniPoolTypes.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { IUniPoolVault } from "../interfaces/IUniPoolVault.sol";
import { MathUtils } from "./MathUtils.sol";
import { UniPoolPairState as State } from "./UniPoolPairState.sol";
import { UniPoolPairTicks as Ticks } from "./UniPoolPairTicks.sol";
import { UniPoolPairUtils as Utils } from "./UniPoolPairUtils.sol";

/// @title Functions for liquidating positions
library UniPoolPairLiquidate {
    using SafeCastLib for uint256;
    using FixedPointMathLib for uint256;
    using MathUtils for uint128;
    using LibBitmap for LibBitmap.Bitmap;

    /**
     * @notice Struct to accumulate the effects of liquidating multiple ticks.
     * @param totalLoans The total number of liquidated loans.
     * @param decreaseBorrowedReserve The amount to subtract from the reserve of the borrowed token.
     * @param increaseCollateralReserve The amount to add to the reserve of the collateral token.
     */
    struct LiquidationEffects {
        uint256 totalLoans;
        uint128 decreaseBorrowedReserve;
        uint128 increaseCollateralReserve;
    }

    /**
     * @notice Struct to hold temporary data during liquidations.
     * @param currentTick The tick corresponding to `virtualPrice`.
     * @param borrowedTokenAddress The address of the borrowed token.
     * @param collateralTokenAddress The address of the collateral token.
     */
    struct LiquidateTicksData {
        int16 currentTick;
        IERC20 borrowedTokenAddress;
        IERC20 collateralTokenAddress;
    }

    /**
     * @notice Liquidate underwater ticks.
     * @dev This is an external wrapper to be used in the main contract.
     * @param maxIter Maximum number of ticks to liquidate on each side at once.
     * @return result_ The result of the liquidation process.
     */
    function liquidateExternal(uint256 maxIter) external returns (LiquidationResult memory result_) {
        State.UpdatedState memory state = State.updateState();
        result_ = liquidate(maxIter, state);
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        emit IUniPoolPair.ReservesUpdated(
            s.token0.reserve,
            s.token1.reserve,
            s.token0.virtualReserveIn,
            s.token0.virtualReserveOut,
            s.token1.virtualReserveIn,
            s.token1.virtualReserveOut,
            Utils._getERC20Storage()._totalSupply
        );
    }

    /**
     * @notice Liquidate underwater ticks.
     * @dev This function mutates the `state` struct in memory (updates virtual reserves).
     * @param maxIter Maximum number of ticks to liquidate on each side at once.
     * @param state The updated state.
     * @return result_ The result of the liquidation process.
     */
    function liquidate(uint256 maxIter, State.UpdatedState memory state)
        internal
        returns (LiquidationResult memory result_)
    {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        // init result struct
        result_.reserve0 = s.token0.reserve;
        result_.reserve1 = s.token1.reserve;

        int16 lastLiqTick0 = processLiquidation(true, maxIter, state, result_);
        int16 lastLiqTick1 = processLiquidation(false, maxIter, state, result_);
        if (lastLiqTick0 != type(int16).max) {
            updateLiquidationStorage(true, s.token0, s.token1, lastLiqTick0, state, result_);
        }
        if (lastLiqTick1 != type(int16).max) {
            updateLiquidationStorage(false, s.token1, s.token0, lastLiqTick1, state, result_);
        }
    }

    /**
     * @notice Update the storage for a pair side after liquidations have been accumulated in memory.
     * @param isToken0 Whether to update the token0 side.
     * @param token Storage pointer to the borrowed token data.
     * @param collateralToken Storage pointer to the collateral token data.
     * @param lastLiquidatedTick The last (highest) liquidated tick, serves as the search start to find the new lowest
     * tick. If no liquidations happened, this should be `int16.max`.
     * @param state The latest state values (virtual reserves) resulting from liquidation.
     * @param result The accumulated liquidation results.
     */
    function updateLiquidationStorage(
        bool isToken0,
        TokenStorage storage token,
        TokenStorage storage collateralToken,
        int16 lastLiquidatedTick,
        State.UpdatedState memory state,
        LiquidationResult memory result
    ) internal {
        if (isToken0) {
            token.virtualReserveOut = state.vr.virtualReserve0Out;
            collateralToken.virtualReserveIn = state.vr.virtualReserve1In;
            token.totalLoans -= result.totalPositions0;
            token.reserve = result.reserve0;
            token.totalBorrowed -= result.totalAmount0;
            collateralToken.reserve = result.reserve1;
        } else {
            token.virtualReserveOut = state.vr.virtualReserve1Out;
            collateralToken.virtualReserveIn = state.vr.virtualReserve0In;
            token.totalLoans -= result.totalPositions1;
            token.reserve = result.reserve1;
            token.totalBorrowed -= result.totalAmount1;
            collateralToken.reserve = result.reserve0;
        }
        token.lowestTick = State.findLowestTick(token.tickBitmap, lastLiquidatedTick);
    }

    /**
     * @notice Process the liquidation of all ticks for one side of the pair and accumulate them.
     * @dev This function mutates the `state` and `result` structs in memory and updates the tick version + bitmap in
     * storage. The function emits an event for each liquidated tick.
     * NOTE: the `result` struct MUST be initialized with the storage reserves before the first call to this function.
     * @param isToken0 Whether to operate on the token0 or token1 loans.
     * @param maxIter The maximum number of ticks to liquidate.
     * @param state The accumulated state (virtual reserves) while liquidating positions.
     * @param result The accumulated result of liquidating positions.
     * @return lastLiquidatedTick_ If at least a tick was liquidated, this is the last (highest) liquidated tick number.
     * Else, this is `int16.max`.
     */
    function processLiquidation(
        bool isToken0,
        uint256 maxIter,
        State.UpdatedState memory state,
        LiquidationResult memory result
    ) internal returns (int16 lastLiquidatedTick_) {
        lastLiquidatedTick_ = type(int16).max;
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        TokenStorage storage token;
        IERC20 borrowedToken;
        IERC20 collateralToken;
        if (isToken0) {
            token = s.token0;
            (borrowedToken, collateralToken) = (token.tokenAddress, s.token1.tokenAddress);
        } else {
            token = s.token1;
            (collateralToken, borrowedToken) = (s.token0.tokenAddress, token.tokenAddress);
        }
        if (token.totalLoans == 0) {
            // nothing to liquidate
            return lastLiquidatedTick_;
        }
        int16 currentTick = _calcCurrentTick(isToken0, state, result);
        int16 iTick = token.lowestTick;
        if (iTick > currentTick) {
            // no tick to process
            return lastLiquidatedTick_;
        }
        // ticks equal or below the current tick can be liquidated
        IUniPoolVault vault = s.vault;
        LiquidationEffects memory effects;
        uint256 i;
        do {
            uint256 index = token.tickBitmap.findLastSet(Utils.calcBitmapIndex(iTick));
            if (index == LibBitmap.NOT_FOUND) {
                // no populated tick left
                break;
            }
            iTick = Utils.calcTickFromIndex(index);
            if (iTick > currentTick) {
                // all ticks that are underwater have been processed
                break;
            }
            // found non-empty tick that must be processed
            _processTickLiquidation(vault, token, borrowedToken, collateralToken, iTick, index, effects);
            lastLiquidatedTick_ = iTick;
            i = i.rawAdd(1);
        } while (i < maxIter);
        _updateStateAndResult(isToken0, i, effects, state, result);
    }

    /**
     * @notice Compute the effects of liquidating all ticks for one side of the pair and accumulate them in memory.
     * @dev This function mutates the `state` and `result` structs in memory but doesn't affect storage.
     * NOTE: the `result` struct MUST be initialized with the storage reserves before the first call to this function.
     * @param isToken0 Whether to operate on the token0 or token1 loans.
     * @param maxIter The maximum number of ticks to liquidate.
     * @param state The accumulated state (virtual reserves) while liquidating positions.
     * @param result The accumulated result of liquidating positions.
     */
    function computeLiquidation(
        bool isToken0,
        uint256 maxIter,
        State.UpdatedState memory state,
        LiquidationResult memory result
    ) internal view {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        (TokenStorage storage token, IERC20 collateralToken) =
            isToken0 ? (s.token0, s.token1.tokenAddress) : (s.token1, s.token0.tokenAddress);
        if (token.totalLoans == 0) {
            // nothing to liquidate
            return;
        }
        int16 currentTick = _calcCurrentTick(isToken0, state, result);
        int16 iTick = token.lowestTick;
        if (iTick > currentTick) {
            // no tick to process
            return;
        }
        // ticks equal or below the current tick can be liquidated
        IUniPoolVault vault = s.vault;
        LiquidationEffects memory effects;
        uint256 i;
        do {
            uint256 index = token.tickBitmap.findLastSet(Utils.calcBitmapIndex(iTick));
            if (index == LibBitmap.NOT_FOUND) {
                // no populated tick left
                break;
            }
            iTick = Utils.calcTickFromIndex(index);
            if (iTick > currentTick) {
                // all ticks that are underwater have been processed
                break;
            }
            // found non-empty tick that must be processed
            _computeTickLiquidation(vault, token, collateralToken, iTick, effects);
            unchecked {
                // SAFETY: there can't be more than uint256.max ticks
                i++;
                // SAFETY: ticks are bound by `TickMath.MAX_TICK` which is smaller than int16.max
                iTick++; // since we don't modify the bitmap, we need to increment to continue searching
            }
        } while (i < maxIter);
        _updateStateAndResult(isToken0, i, effects, state, result);
    }

    /**
     * @notice Calculate the tick corresponding to the current price used for liquidation.
     * @param isToken0 Whether we're considering the token0 side.
     * @param state The updated state.
     * @param result The current reserves according to the liquidation result.
     * @return currentTick_ The tick number corresponding to the current price used for liquidation.
     */
    function _calcCurrentTick(bool isToken0, State.UpdatedState memory state, LiquidationResult memory result)
        private
        pure
        returns (int16 currentTick_)
    {
        uint256 virtualPrice;
        uint256 multiplier;
        uint256 yieldAccumulator;
        if (isToken0) {
            // maximize token reserve, minimize collateral reserve to minimize the virtual price (favors borrowers)
            // we choose the virtual reserves which do not move when a swap increases the price of the borrowed asset
            // to avoid liquidations due to large malicious swaps
            uint128 tokenEffectiveReserve = state.vr.virtualReserve0In.max(result.reserve0);
            uint128 collateralEffectiveReserve = state.vr.virtualReserve1Out.min(result.reserve1);
            // round up price, in order to favor the protocol in case of imprecision
            virtualPrice = State.calcPrice(tokenEffectiveReserve, collateralEffectiveReserve, true);
            multiplier = state.interestMultiplier0;
            yieldAccumulator = state.yieldAccumulator0;
        } else {
            // maximize token reserve, minimize collateral reserve to minimize the virtual price (favors borrowers)
            // we choose the virtual reserves which do not move when a swap increases the price of the borrowed asset
            // to avoid liquidations due to large malicious swaps
            uint128 tokenEffectiveReserve = state.vr.virtualReserve1In.max(result.reserve1);
            uint128 collateralEffectiveReserve = state.vr.virtualReserve0Out.min(result.reserve0);
            // round up price, in order to favor the protocol in case of imprecision
            virtualPrice = State.calcPrice(tokenEffectiveReserve, collateralEffectiveReserve, true);
            multiplier = state.interestMultiplier1;
            yieldAccumulator = state.yieldAccumulator1;
        }
        // if the current price is e.g. 995 (rounded up), we don't want to liquidate positions with a
        // liquidation price of 1000, so we round down when converting the current price to a tick
        currentTick_ = Ticks.calcTickAtPrice(virtualPrice, multiplier, yieldAccumulator, false);
    }

    /**
     * @notice Applies the result of liquidating a side's ticks to the state and result accumulators.
     * @dev This function mutates the `state` and `result` structs in memory.
     * @param isToken0 Whether the liquidation is being performed for token0 loans.
     * @param liquidatedTicks The total number of ticks liquidated for that side.
     * @param effects The liquidation effects.
     * @param state The accumulated state (virtual reserves) while liquidating positions.
     * @param result The accumulated result of liquidating positions.
     */
    function _updateStateAndResult(
        bool isToken0,
        uint256 liquidatedTicks,
        LiquidationEffects memory effects,
        State.UpdatedState memory state,
        LiquidationResult memory result
    ) private pure {
        if (isToken0) {
            result.totalAmount0 += effects.decreaseBorrowedReserve;
            result.totalCollateral1 += effects.increaseCollateralReserve;
            // update virtual reserves if they contribute to the swap price in the direction the price is moving
            if (state.vr.virtualReserve0Out != result.reserve0) {
                state.vr.virtualReserve0Out -= effects.decreaseBorrowedReserve;
            }
            if (state.vr.virtualReserve1In != result.reserve1) {
                state.vr.virtualReserve1In += effects.increaseCollateralReserve;
            }
            result.reserve0 -= effects.decreaseBorrowedReserve;
            result.reserve1 += effects.increaseCollateralReserve;
            result.liquidatedTicks0 += liquidatedTicks;
            result.totalPositions0 += effects.totalLoans;
        } else {
            result.totalAmount1 += effects.decreaseBorrowedReserve;
            result.totalCollateral0 += effects.increaseCollateralReserve;
            // update virtual reserves if they contribute to the swap price in the direction the price is moving
            if (state.vr.virtualReserve1Out != result.reserve1) {
                state.vr.virtualReserve1Out -= effects.decreaseBorrowedReserve;
            }
            if (state.vr.virtualReserve0In != result.reserve0) {
                state.vr.virtualReserve0In += effects.increaseCollateralReserve;
            }
            result.reserve1 -= effects.decreaseBorrowedReserve;
            result.reserve0 += effects.increaseCollateralReserve;
            result.liquidatedTicks1 += liquidatedTicks;
            result.totalPositions1 += effects.totalLoans;
        }
    }

    /**
     * @notice Accumulate the effects of liquidating a tick into the `effects` parameter.
     * @dev This function mutates the `effects` struct in memory.
     * @param vault The address of the vault.
     * @param token Storage pointer to the borrowed token data.
     * @param collateralToken Address of the collateral token.
     * @param tick The tick number.
     * @param effects The struct used to accumulate multiple tick liquidation effects.
     */
    function _computeTickLiquidation(
        IUniPoolVault vault,
        TokenStorage storage token,
        IERC20 collateralToken,
        int16 tick,
        LiquidationEffects memory effects
    ) private view {
        uint232 tickVersion = token.tickVersion[tick];
        TickId tickId = Ticks.calcTickId(tick, tickVersion);
        TickData memory tickData = token.tick[tickId];
        uint128 amount = tickData.amount;
        uint128 collateral =
            vault.previewWithdrawTick(tick, tickVersion, IUniPoolPair(address(this)), collateralToken).toUint128();
        effects.totalLoans += tickData.loans;
        effects.decreaseBorrowedReserve += amount;
        effects.increaseCollateralReserve += collateral;
    }

    /**
     * @notice Processes a tick liquidation by accumulating the effects into the `effects` parameter updating tick
     * version and tick bitmap.
     * @dev This function withdraws the collateral from the vault and mutates the `effects` struct in memory. It also
     * emits the event related to this tick's liquidation.
     * @param vault The address of the vault.
     * @param token Storage pointer to the borrowed token data.
     * @param borrowedToken Address of the borrowed token.
     * @param collateralToken Address of the collateral token.
     * @param tick The tick number.
     * @param index The index of the tick in the bitmap.
     * @param effects The struct used to accumulate multiple tick liquidation effects.
     */
    function _processTickLiquidation(
        IUniPoolVault vault,
        TokenStorage storage token,
        IERC20 borrowedToken,
        IERC20 collateralToken,
        int16 tick,
        uint256 index,
        LiquidationEffects memory effects
    ) private {
        uint232 tickVersion = token.tickVersion[tick];
        token.tickVersion[tick] = tickVersion + 1;
        token.tickBitmap.unset(index);
        uint128 collateralFromVault;
        uint128 amount;
        {
            uint256 balanceBefore = collateralToken.balanceOf(address(this));
            vault.withdrawTick(tick, tickVersion, collateralToken);
            collateralFromVault = (collateralToken.balanceOf(address(this)) - balanceBefore).toUint128();
            TickId tickId = Ticks.calcTickId(tick, tickVersion);
            TickData storage tickData = token.tick[tickId];
            amount = tickData.amount;
            effects.totalLoans += tickData.loans;
            effects.decreaseBorrowedReserve += amount;
        }
        effects.increaseCollateralReserve += collateralFromVault;
        emit IUniPoolPair.LiquidatedTick(
            tick,
            tickVersion,
            address(borrowedToken),
            amount,
            collateralFromVault,
            token.lastCollatYieldAccumulator,
            token.interestMultiplier
        );
    }
}
