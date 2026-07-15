// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { SafeERC20 } from "@openzeppelin-contracts-5/token/ERC20/utils/SafeERC20.sol";
import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";
import { LibBitmap } from "solady-0.1/utils/LibBitmap.sol";

import "../UniPoolTypes.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { TickMath } from "./TickMath.sol";
import { UniPoolFactoryConstants as FactoryConstants } from "./UniPoolFactoryConstants.sol";
import { UniPoolPairConstants as Constants } from "./UniPoolPairConstants.sol";
import { UniPoolPairGetters as Getters } from "./UniPoolPairGetters.sol";
import { UniPoolPairPayments as Payments } from "./UniPoolPairPayments.sol";
import { UniPoolPairUtils as Utils } from "./UniPoolPairUtils.sol";

/// @title State Management for `UniPoolPair`
library UniPoolPairState {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;
    using LibBitmap for LibBitmap.Bitmap;

    /// @dev Maximum interest rate with RAY decimals.
    uint256 internal constant MAX_INTEREST_RATE_RAY = FactoryConstants.MAX_INTEREST_RATE_BPS * Constants.BPS_TO_RAY;

    /**
     * @dev Resulting state after calling {updateState}.
     * @param vr The updated virtual reserves.
     * @param interestMultiplier0 The updated interest multiplier for token0 loans.
     * @param interestMultiplier1 The updated interest multiplier for token1 loans.
     * @param yieldAccumulator0 The updated yield accumulator from the vault for token0 loans (token1 yield).
     * @param yieldAccumulator1 The updated yield accumulator from the vault for token1 loans (token0 yield).
     */
    struct UpdatedState {
        VirtualReserves vr;
        uint256 interestMultiplier0;
        uint256 interestMultiplier1;
        uint256 yieldAccumulator0;
        uint256 yieldAccumulator1;
    }

    /**
     * @notice Collects extra tokens that do not belong to the contract's reserves.
     * @param to Address receiving the collected tokens.
     */
    function skim(address to) external {
        require(to != address(0), IUniPoolPair.UniPoolPairZeroAddress());
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        // account for pending fees
        uint256 adjustedBalance0 = uint256(s.token0.reserve) + s.token0.feePoolAccumulated;
        uint256 adjustedBalance1 = uint256(s.token1.reserve) + s.token1.feePoolAccumulated;

        IERC20 token0 = s.token0.tokenAddress;
        uint256 balance0 = token0.balanceOf(address(this));
        if (balance0 > adjustedBalance0) {
            // SAFETY: safe to use unchecked subtraction because balance0 > adjustedBalance0 is verified above
            token0.safeTransfer(to, balance0.rawSub(adjustedBalance0));
        }

        IERC20 token1 = s.token1.tokenAddress;
        uint256 balance1 = token1.balanceOf(address(this));
        if (balance1 > adjustedBalance1) {
            // SAFETY: safe to use unchecked subtraction because balance1 > adjustedBalance1 is verified above
            token1.safeTransfer(to, balance1.rawSub(adjustedBalance1));
        }
    }

    /// @dev Transfers accumulated protocol fees to the fee collector and resets their counters.
    function distributeProtocolFeesExternal() external {
        Payments.distributeProtocolFees();
    }

    /**
     * @notice Updates the virtual reserves and recalculates the interest multipliers.
     * @dev This is an external wrapper to be used in the main contract.
     * @return state_ The updated state (virtual reserves and interest multipliers).
     */
    function updateStateExternal() external returns (UpdatedState memory state_) {
        state_ = updateState();

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
     * @notice Updates the virtual reserves and recalculates the interest multipliers.
     * @dev This function is called internally before each user action.
     * @return state_ The updated state (virtual reserves and interest multipliers).
     */
    function updateState() internal returns (UpdatedState memory state_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        uint256 elapsed = block.timestamp - s.lastUpdateTimestamp;
        state_.vr = _updateVirtualReserves(elapsed);
        (state_.interestMultiplier0, state_.interestMultiplier1) = _updateInterestMultipliers(elapsed);
        (state_.yieldAccumulator0, state_.yieldAccumulator1) = _updateYieldAccumulators(elapsed);
        s.lastUpdateTimestamp = block.timestamp;
    }

    /**
     * @notice Preview the result of calling {updateState}.
     * @return state_ The previewed state resulting from calling {updateState}.
     */
    function previewUpdateState() internal view returns (UpdatedState memory state_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        uint256 elapsed = block.timestamp - s.lastUpdateTimestamp;
        state_.vr = Getters.previewVirtualReservesElapsed(elapsed);
        state_.interestMultiplier0 = Getters.previewInterestMultiplierElapsed(true, elapsed);
        state_.interestMultiplier1 = Getters.previewInterestMultiplierElapsed(false, elapsed);
        IUniPoolVault vault = s.vault;
        state_.yieldAccumulator0 = vault.getYieldAccumulator(s.token1.tokenAddress);
        state_.yieldAccumulator1 = vault.getYieldAccumulator(s.token0.tokenAddress);
    }

    /**
     * @notice Calculates the interest rate based on the reserve utilization.
     * @dev The value is capped at {MAX_INTEREST_RATE_RAY} which is the same value as
     * {FactoryConstants.MAX_INTEREST_RATE_BPS} but with the correct decimals.
     * @param totalBorrowed The total amount of assets that are borrowed.
     * @param maxBorrowable The total reserves that can be borrowed.
     * @param params The interest model parameters.
     * @return rate_ The interest rate with `RAY_DECIMALS`.
     */
    function calcInterestRate(uint128 totalBorrowed, uint256 maxBorrowable, InterestParams memory params)
        internal
        pure
        returns (uint256 rate_)
    {
        if (maxBorrowable == 0) {
            // the theoretical interest rate should be infinity, but we cap to a maximum
            return MAX_INTEREST_RATE_RAY;
        }
        rate_ = params.interestRateBaseBps * Constants.BPS_TO_RAY;
        uint256 usageRatioBps = uint256(totalBorrowed).mulDiv(Constants.BPS_DIVISOR, maxBorrowable);
        uint256 variableRateAtOptimum = params.interestRateOptimalBps * Constants.BPS_TO_RAY;
        if (usageRatioBps > params.optimalPointBps) {
            uint256 variableRateAdd = params.interestRateAddBps * Constants.BPS_TO_RAY;
            // above the optimal point, we add the variable rate at optimum plus a fractional part of the additional
            // rate at max utilization
            rate_ += variableRateAtOptimum;
            // add = variableRateAdd * (utilizationBps - optimalBps) / (BPS_DIVISOR - optimalBps);
            // utilizationBps = totalBorrowed * BPS_DIVISOR / maxBorrowable;
            // => add = variableRateAdd * (BPS_DIVISOR * totalBorrowed - maxBorrowable * optimalBps) /
            //          (maxBorrowable * (BPS_DIVISOR - optimalBps))
            rate_ += variableRateAdd.mulDiv(
                Constants.BPS_DIVISOR * totalBorrowed - maxBorrowable * params.optimalPointBps,
                maxBorrowable * (Constants.BPS_DIVISOR - params.optimalPointBps)
            );
        } else {
            // below the optimal point, we only add a fractional part of the variable rate at optimum
            // add = variableRateAtOptimum * (utilizationBps / optimalBps);
            // utilizationBps = totalBorrowed * BPS_DIVISOR / maxBorrowable;
            // => add = variableRateAtOptimum * totalBorrowed * BPS_DIVISOR / (optimalBps * maxBorrowable)
            rate_ += uint256(totalBorrowed)
                .mulDiv(variableRateAtOptimum * Constants.BPS_DIVISOR, params.optimalPointBps * maxBorrowable);
        }
        // cap value to a maximum to avoid crazy interests which could shift the tick scale too much or cause mass
        // liquidation
        rate_ = rate_.min(MAX_INTEREST_RATE_RAY);
    }

    /**
     * @notice Calculates the maximum amount that can be borrowed from reserves.
     * @param reserve The current token reserve.
     * @param borrowLimitBps The borrow limit in basis points.
     * @return max_ The maximum borrowable amount.
     */
    function calcMaxBorrowable(uint256 reserve, uint256 borrowLimitBps) internal pure returns (uint256 max_) {
        max_ = reserve.fullMulDiv(borrowLimitBps, Constants.BPS_DIVISOR);
    }

    /**
     * @notice Calculates the price from the reserves (or virtual price from virtual reserves).
     * @dev The price has PRICE_DECIMALS decimals.
     * For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * @param reserveBorrowed The (virtual) reserve of the token being borrowed.
     * @param reserveCollateral The (virtual) reserve of the token given as collateral.
     * @param roundUp Whether to round up the division.
     * @return price_ The (virtual) price.
     */
    function calcPrice(uint128 reserveBorrowed, uint128 reserveCollateral, bool roundUp)
        internal
        pure
        returns (uint256 price_)
    {
        if (roundUp) {
            price_ = uint256(reserveCollateral).mulDivUp(TickMath.PRICE_DIVISOR, reserveBorrowed);
        } else {
            price_ = uint256(reserveCollateral).mulDiv(TickMath.PRICE_DIVISOR, reserveBorrowed);
        }
    }

    /**
     * @notice Calculates the updated interest multiplier for a token side based on the elapsed time.
     * @dev If there is no active loan (total borrowed amount is 0) then the multiplier is reset to 1.
     * @param elapsed The number of elapsed seconds since the multiplier was `interestMultiplier`.
     * @param borrowLimitBps The maximum ratio of all liquidity that can be borrowed.
     * @param totalBorrowed The sum of all borrowed assets.
     * @param reserve The pair reserve for the token.
     * @param params The interest rate parameters.
     * @param interestMultiplier The old value of the interest multiplier.
     * @return multiplier_ The updated interest multiplier.
     */
    function calcInterestMultiplier(
        uint256 elapsed,
        uint256 borrowLimitBps,
        uint128 totalBorrowed,
        uint128 reserve,
        InterestParams memory params,
        uint256 interestMultiplier
    ) internal pure returns (uint256 multiplier_) {
        if (totalBorrowed == 0) {
            // reset interest multiplier if there is no active loan
            return Constants.INTEREST_MULTIPLIER_DIVISOR;
        } else if (elapsed == 0) {
            return interestMultiplier;
        }
        uint256 maxBorrowable = calcMaxBorrowable(reserve, borrowLimitBps);
        // interest rate for the elapsed period (scaled from the APR)
        uint256 scaledInterestRate = calcInterestRate(totalBorrowed, maxBorrowable, params).mulDiv(elapsed, 365 days);
        multiplier_ = interestMultiplier.fullMulDiv(Constants.RAY_DIVISOR + scaledInterestRate, Constants.RAY_DIVISOR);
    }

    /**
     * @notice Removes an element from the list of user loans.
     * @dev If the item is not the last one in the list, the last element is moved to the index of the removed item.
     * @param index The index of the element to remove.
     * @param user The address of the user.
     */
    function removeLoanFromUserList(uint256 index, address user) internal {
        LoanId[] storage list = Utils._getMainStorage().userLoans[user];
        uint256 lastIdx = list.length - 1;
        if (index != lastIdx) {
            list[index] = list[lastIdx];
        }
        list.pop(); // remove the last element
    }

    /**
     * @notice Finds the lowest tick that contains at least one loan.
     * @dev If there are no ticks with a loan, returns `int16.max`.
     * @param bitmap The bitmap to search.
     * @param searchStart A tick number to start searching from (upwards).
     * @return tick_ The lowest populated tick at or above `searchStart`.
     */
    function findLowestTick(LibBitmap.Bitmap storage bitmap, int16 searchStart) internal view returns (int16 tick_) {
        uint256 index = bitmap.findLastSet(Utils.calcBitmapIndex(searchStart));
        if (index == LibBitmap.NOT_FOUND) {
            tick_ = type(int16).max;
        } else {
            tick_ = Utils.calcTickFromIndex(index);
        }
    }

    /**
     * @notice Updates all virtual reserves based on the elapsed time since the last update.
     * @param elapsed The elapsed number of seconds since the last update.
     * @return vr_ The updated virtual reserves.
     */
    function _updateVirtualReserves(uint256 elapsed) private returns (VirtualReserves memory vr_) {
        vr_ = Getters.previewVirtualReservesElapsed(elapsed);

        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        // update storage
        s.token0.virtualReserveIn = vr_.virtualReserve0In;
        s.token0.virtualReserveOut = vr_.virtualReserve0Out;
        s.token1.virtualReserveIn = vr_.virtualReserve1In;
        s.token1.virtualReserveOut = vr_.virtualReserve1Out;
    }

    /**
     * @notice Updates the interest multipliers based on the elapsed time since the last update.
     * @param elapsed The elapsed number of seconds since the last update.
     * @return interestMultiplier0_ The updated interest multiplier for token0 loans.
     * @return interestMultiplier1_ The updated interest multiplier for token1 loans.
     */
    function _updateInterestMultipliers(uint256 elapsed)
        private
        returns (uint256 interestMultiplier0_, uint256 interestMultiplier1_)
    {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        interestMultiplier0_ = Getters.previewInterestMultiplierElapsed(true, elapsed);
        interestMultiplier1_ = Getters.previewInterestMultiplierElapsed(false, elapsed);
        s.token0.interestMultiplier = interestMultiplier0_;
        s.token1.interestMultiplier = interestMultiplier1_;
    }

    /**
     * @notice Updates the vault yield accumulators with the current values provided by the vault.
     * @param elapsed The time elapsed since the last state update, if 0 then we don't need to fetch the accumulators.
     * @return yieldAccumulator0_ The updated yield accumulator from the vault for token0 loans (token1 yield).
     * @return yieldAccumulator1_ The updated yield accumulator from the vault for token1 loans (token0 yield).
     */
    function _updateYieldAccumulators(uint256 elapsed)
        private
        returns (uint256 yieldAccumulator0_, uint256 yieldAccumulator1_)
    {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        IUniPoolVault vault = s.vault;
        if (elapsed != 0) {
            yieldAccumulator0_ = vault.getYieldAccumulator(s.token1.tokenAddress);
            yieldAccumulator1_ = vault.getYieldAccumulator(s.token0.tokenAddress);
            s.token0.lastCollatYieldAccumulator = yieldAccumulator0_;
            s.token1.lastCollatYieldAccumulator = yieldAccumulator1_;
        } else {
            yieldAccumulator0_ = s.token0.lastCollatYieldAccumulator;
            yieldAccumulator1_ = s.token1.lastCollatYieldAccumulator;
        }
    }
}
