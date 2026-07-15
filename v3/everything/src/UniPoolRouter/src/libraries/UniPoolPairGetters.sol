// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";

import "../UniPoolTypes.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { MathUtils } from "./MathUtils.sol";
import { UniPoolPairLiquidate as Liquidate } from "./UniPoolPairLiquidate.sol";
import { UniPoolPairState as State } from "./UniPoolPairState.sol";
import { UniPoolPairUtils as Utils } from "./UniPoolPairUtils.sol";

/// @title Getter functions for the pair
library UniPoolPairGetters {
    using FixedPointMathLib for uint256;
    using MathUtils for uint128;

    /**
     * @notice Gets the parameters for the interest rate model.
     * @param token Pointer to the token storage.
     * @return totalBorrowed_ The total amount of borrowed tokens.
     * @return params_ The parameters of the interest rate model.
     */
    function getInterestParams(TokenStorage storage token)
        internal
        view
        returns (uint128 totalBorrowed_, InterestParams memory params_)
    {
        totalBorrowed_ = token.totalBorrowed;
        params_.protocolFeeBps = token.interestProtocolFeeBps;
        params_.optimalPointBps = token.optimalPointBps;
        params_.interestRateBaseBps = token.interestRateBaseBps;
        params_.interestRateOptimalBps = token.interestRateOptimalBps;
        params_.interestRateAddBps = token.interestRateAddBps;
    }

    /**
     * @notice Counts the number of active loans for a user.
     * @param user The address of the owner.
     * @return count_ The number of active loans.
     */
    function countActiveUserLoans(address user) external view returns (uint256 count_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        LoanId[] storage userLoans = s.userLoans[user];
        uint256 total = userLoans.length;
        for (uint256 i; i < total; i++) {
            LoanInfo storage loan = s.loan[userLoans[i]];
            uint232 currentTickVersion =
                loan.isToken0 ? s.token0.tickVersion[loan.tick] : s.token1.tickVersion[loan.tick];
            if (loan.tickVersion < currentTickVersion) {
                continue;
            }
            unchecked {
                // SAFETY: list of user loans cannot exceed uint256.max elements
                count_++;
            }
        }
    }

    /**
     * @notice Preview all virtual reserves (both input and output) after an elapsed time since the last update.
     * @param elapsed The elapsed number of seconds since the last update.
     * @return virtualReserves_ The virtual reserves.
     */
    function previewVirtualReservesElapsed(uint256 elapsed)
        internal
        view
        returns (VirtualReserves memory virtualReserves_)
    {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        if (elapsed == 0) {
            // no time elapsed, virtual reserves are the same as in storage
            return VirtualReserves({
                virtualReserve0In: s.token0.virtualReserveIn,
                virtualReserve0Out: s.token0.virtualReserveOut,
                virtualReserve1In: s.token1.virtualReserveIn,
                virtualReserve1Out: s.token1.virtualReserveOut
            });
        }
        uint256 decay = s.priceDecay;
        if (elapsed >= decay) {
            // decay period is over, the virtual reserves are equal to the reserves
            virtualReserves_.virtualReserve0In = s.token0.reserve;
            virtualReserves_.virtualReserve0Out = s.token0.reserve;
            virtualReserves_.virtualReserve1In = s.token1.reserve;
            virtualReserves_.virtualReserve1Out = s.token1.reserve;
        } else {
            uint256 diff = decay.rawSub(elapsed); // safe because elapsed < decay
            // newVR = (oldVr * (decay - elapsed) / decay) + (reserve * elapsed / decay)
            //       = (oldVr * (decay - elapsed) + reserve * elapsed) / decay
            // SAFETY: elapsed is < decay, so we can multiply with uint128 reserves without overflow
            uint256 reserve0Elapsed = elapsed.rawMul(s.token0.reserve);
            uint256 reserve1Elapsed = elapsed.rawMul(s.token1.reserve);
            // SAFETY: diff is at most 299 seconds, so we can multiply with uint128 virtual reserves without overflow
            // SAFETY: adding together the virtual and real reserves multiplied by at most 299 into an uint256 does not
            // overflow
            // SAFETY: decay cannot be zero, division is safe
            // SAFETY: casting to uint128 is safe because we interpolate between two uint128 values
            virtualReserves_.virtualReserve0In =
                uint128((diff.rawMul(s.token0.virtualReserveIn).rawAdd(reserve0Elapsed)).rawDiv(decay));
            virtualReserves_.virtualReserve0Out =
                uint128((diff.rawMul(s.token0.virtualReserveOut).rawAdd(reserve0Elapsed)).rawDiv(decay));
            virtualReserves_.virtualReserve1In =
                uint128((diff.rawMul(s.token1.virtualReserveIn).rawAdd(reserve1Elapsed)).rawDiv(decay));
            virtualReserves_.virtualReserve1Out =
                uint128((diff.rawMul(s.token1.virtualReserveOut).rawAdd(reserve1Elapsed)).rawDiv(decay));
        }
    }

    /**
     * @notice Previews the reserves and virtual reserves at a given timestamp, accounting for price interpolation and
     * pending liquidations.
     * @dev Liquidations are only simulated at the current block timestamp. For future timestamps, only virtual reserves
     * are updated through price interpolation, potential liquidations from those updated reserves are not simulated.
     * @param timestamp Future timestamp to preview reserves at. If timestamp predates the current block, it gets
     * clamped to the block's timestamp.
     * @return reserve0_ Previewed reserve for token0.
     * @return reserve1_ Previewed reserve for token1.
     * @return vr_ Previewed virtual reserves.
     */
    function previewReserves(uint256 timestamp)
        external
        view
        returns (uint128 reserve0_, uint128 reserve1_, VirtualReserves memory vr_)
    {
        (LiquidationResult memory result, State.UpdatedState memory state) = previewLiquidation(type(uint256).max);
        reserve0_ = result.reserve0;
        reserve1_ = result.reserve1;
        // clamp timestamp to future range
        timestamp = timestamp.max(block.timestamp);
        if (timestamp == block.timestamp) {
            vr_ = state.vr; // state update was computed already by `previewLiquidation`
        } else {
            // SAFETY: last update timestamp is necessarily in the past or at most the current block time
            vr_ = previewVirtualReservesElapsed(timestamp.rawSub(Utils._getMainStorage().lastUpdateTimestamp));
        }
    }

    /**
     * @notice Previews the interest multiplier for a token side at the given timestamp.
     * @param isToken0 Whether to consider the token0 loans.
     * @param timestamp The timestamp at which to evaluate the multiplier, must be greater than or equal to
     * `lastUpdateTimestamp`.
     * @return multiplier_ The expected value of the interest multiplier at `timestamp` if no action is performed.
     */
    function previewInterestMultiplier(bool isToken0, uint256 timestamp) external view returns (uint256 multiplier_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        uint256 lastUpdateTimestamp = s.lastUpdateTimestamp;
        require(timestamp >= lastUpdateTimestamp, IUniPoolPair.UniPoolPairTimestampTooOld());
        uint256 elapsed = timestamp.rawSub(lastUpdateTimestamp); // cannot underflow, checked above
        multiplier_ = previewInterestMultiplierElapsed(isToken0, elapsed);
    }

    /**
     * @notice Previews the interest multiplier for a token side after some time elapsed since the last state update.
     * @param isToken0 Whether to consider the token0 loans.
     * @param elapsed How many seconds elapsed since the last state update.
     * @return multiplier_ The expected value of the interest multiplier after `elapsed` seconds if no action is
     * performed.
     */
    function previewInterestMultiplierElapsed(bool isToken0, uint256 elapsed)
        internal
        view
        returns (uint256 multiplier_)
    {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        TokenStorage storage token = isToken0 ? s.token0 : s.token1;
        (uint128 totalBorrowed, InterestParams memory params) = getInterestParams(token);
        multiplier_ = State.calcInterestMultiplier(
            elapsed, s.borrowLimitBps, totalBorrowed, token.reserve, params, token.interestMultiplier
        );
    }

    /**
     * @notice Calculates the current variable interest rate for a token side.
     * @param isToken0 Whether to consider token0 loans.
     * @return rate_ Current interest rate with RAY_DECIMALS decimals.
     */
    function calcVariableInterestRate(bool isToken0) external view returns (uint256 rate_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        TokenStorage storage token = isToken0 ? s.token0 : s.token1;
        uint256 maxBorrowable = State.calcMaxBorrowable(token.reserve, s.borrowLimitBps);
        (uint128 totalBorrowed, InterestParams memory params) = getInterestParams(token);
        rate_ = State.calcInterestRate(totalBorrowed, maxBorrowable, params);
    }

    /**
     * @notice Finds the lowest tick that contains at least one loan.
     * @dev If there are no ticks with a loan, returns `int16.max`.
     * @param isToken0 Whether to consider token0 loans.
     * @return tick_ The lowest populated tick at or above the bound `lowestTick0`/`lowestTick1`.
     */
    function findLowestTick(bool isToken0) external view returns (int16 tick_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        TokenStorage storage token = isToken0 ? s.token0 : s.token1;
        tick_ = State.findLowestTick(token.tickBitmap, token.lowestTick);
    }

    /**
     * @notice Preview the result of liquidating all underwater positions (up to `maxIter` ticks on each side).
     * @param maxIter The maximum number of ticks to liquidate on each side.
     * @return result_ The result of liquidation (including reserves).
     * @return state_ The updated virtual reserves (multipliers don't change during liquidation).
     */
    function previewLiquidation(uint256 maxIter)
        internal
        view
        returns (LiquidationResult memory result_, State.UpdatedState memory state_)
    {
        state_ = State.previewUpdateState();
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        // init result struct
        result_.reserve0 = s.token0.reserve;
        result_.reserve1 = s.token1.reserve;

        Liquidate.computeLiquidation(true, maxIter, state_, result_);
        Liquidate.computeLiquidation(false, maxIter, state_, result_);
    }
}
