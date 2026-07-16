// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IConduit } from "../../interfaces/IConduit.sol";
import { IReservoir } from "../../interfaces/IReservoir.sol";

import { IHelper } from "../interfaces/IHelper.sol";
import { Types } from "../shared/Types.sol";

import { LibAppStorage } from "./LibAppStorage.sol";

/**
 * @title LibUtilsFee
 * @author Rain Team
 * @notice Utility library for fee calculation and distribution.
 */
library LibUtilsFee {
    using SafeERC20 for IERC20;

    /* ========================== STATE VARIABLES ========================== */

    /// @dev Basis points, i.e. 1e4.
    uint256 internal constant BASIS_POINTS = 10_000;

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Process fees for a single transaction.
     * @param marketType Type of market.
     * @param asset Asset being used.
     * @param payer Address paying the fees.
     * @param amountBeforeFees Amount before fees.
     * @return amount Amount after fees.
     */
    function processFees(
        Types.MarketType marketType,
        IERC20 asset,
        address payer,
        uint256 amountBeforeFees
    ) internal returns (uint256) {
        IHelper.FeeBreakdown memory breakdown = _calculateFees(marketType, amountBeforeFees, 1);
        _transferFees(asset, payer, breakdown);

        return breakdown.amount;
    }

    /**
     * @dev Process fees for multiple iterations.
     * @param marketType Type of market.
     * @param asset Asset being used.
     * @param payer Address paying the fees.
     * @param amountBeforeFees Amount per iteration before fees.
     * @param iterations Number of iterations to process.
     * @return amount Amount after fees.
     * @return totalAmount Total amount after fees across all iterations.
     */
    function processFees(
        Types.MarketType marketType,
        IERC20 asset,
        address payer,
        uint256 amountBeforeFees,
        uint256 iterations
    ) internal returns (uint256, uint256) {
        IHelper.FeeBreakdown memory breakdown = _calculateFees(marketType, amountBeforeFees, iterations);
        _transferFees(asset, payer, breakdown);

        return (breakdown.amount, breakdown.totalAmount);
    }

    /**
     * @dev See {IHelper-calculateFees}.
     */
    function calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees
    ) internal view returns (IHelper.FeeBreakdown memory) {
        return _calculateFees(marketType, amountBeforeFees, 1);
    }

    /**
     * @dev See {IHelper-calculateFees}.
     */
    function calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees,
        uint256 iterations
    ) internal view returns (IHelper.FeeBreakdown memory) {
        return _calculateFees(marketType, amountBeforeFees, iterations);
    }

    /**
     * @dev Internal function to execute all fee transfers.
     * @param asset Asset being used.
     * @param payer Address paying the fees.
     * @param breakdown Fee breakdown to process.
     */
    function _transferFees(IERC20 asset, address payer, IHelper.FeeBreakdown memory breakdown) private {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        IConduit conduit = s._conduit;
        IReservoir reservoir = s._reservoir;

        if (breakdown.conduitFee > 0) {
            asset.safeTransferFrom(payer, address(conduit), breakdown.conduitFee);
            conduit.accept(asset, breakdown.conduitFee);
        }

        if (breakdown.reservoirFee > 0) {
            asset.safeTransferFrom(payer, address(reservoir), breakdown.reservoirFee);
            reservoir.absorb(asset, breakdown.reservoirFee, IReservoir.AbsorptionCause.FEE);
        }

        uint256 totalAmount = breakdown.totalAmount;

        if (breakdown.payoffFee > 0) {
            unchecked {
                totalAmount += breakdown.payoffFee;
                s._payoff += breakdown.payoffFee;
            }
        }

        asset.safeTransferFrom(payer, address(this), totalAmount);
    }

    /**
     * @dev Internal function to calculate fees for any number of iterations.
     * @param marketType Type of market.
     * @param amountBeforeFees Amount before fees.
     * @param iterations Number of iterations.
     * @return breakdown Calculated fee breakdown.
     */
    function _calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees,
        uint256 iterations
    ) private view returns (IHelper.FeeBreakdown memory) {
        Types.FeeBps memory feeBps = LibAppStorage.feeBps(marketType);

        IHelper.FeeBreakdown memory breakdown;

        uint256 conduitFeeBase;
        uint256 reservoirFeeBase;
        uint256 payoffFeeBase;
        uint256 amount;

        unchecked {
            conduitFeeBase = (amountBeforeFees * feeBps.conduitFeeBps) / BASIS_POINTS;
            reservoirFeeBase = (amountBeforeFees * feeBps.reservoirFeeBps) / BASIS_POINTS;
            payoffFeeBase = (amountBeforeFees * feeBps.payoffFeeBps) / BASIS_POINTS;
            amount = amountBeforeFees - (conduitFeeBase + reservoirFeeBase + payoffFeeBase);
        }

        breakdown.amount = amount;

        if (iterations > 1) {
            unchecked {
                breakdown.conduitFee = conduitFeeBase * iterations;
                breakdown.reservoirFee = reservoirFeeBase * iterations;
                breakdown.payoffFee = payoffFeeBase * iterations;
                breakdown.totalAmount = amount * iterations;
            }
        } else {
            breakdown.conduitFee = conduitFeeBase;
            breakdown.reservoirFee = reservoirFeeBase;
            breakdown.payoffFee = payoffFeeBase;
            breakdown.totalAmount = amount;
        }

        return breakdown;
    }
}
