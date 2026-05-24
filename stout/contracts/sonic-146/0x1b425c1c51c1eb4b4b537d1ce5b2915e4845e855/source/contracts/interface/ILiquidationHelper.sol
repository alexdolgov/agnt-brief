// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Custom} from "./IERC20Custom.sol";
import {ILender} from "../interface/ILender.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";

/**
 * @title ILiquidationHelper
 * @dev Interface for liquidation assistance operations
 * @notice Defines comprehensive liquidation functionality including:
 * 1. Direct liquidation execution
 * 2. Liquidation amount calculations
 * 3. Position health checks
 * 4. Preview and simulation functions
 *
 * The helper provides:
 * · Maximum and partial liquidation support
 * · Customizable recipient addresses
 * · Pre-execution liquidation simulations
 * · Automated DUSX amount calculations
 */
interface ILiquidationHelper {
    /*//////////////////////////////////////////////////////////////
                            CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /*//////////////////////////////////////////////////////////////
                        LIQUIDATION EXECUTION
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Liquidates maximum possible amount for an account
     * @param lender Address of the lending contract
     * @param account Address to be liquidated
     * @return collateralAmount Amount of collateral received
     * @return adjustedBorrowPart Adjusted borrow amount after liquidation
     * @return requiredDUSXAmount DUSX tokens needed to execute liquidation
     * @dev Automatically calculates maximum liquidatable amount
     */
    function liquidateMax(
        ILender lender,
        address account
    )
        external
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSXAmount
        );

    /**
     * @notice Liquidates specific amount for an account
     * @param lender Address of the lending contract
     * @param account Address to be liquidated
     * @param borrowPart Amount of borrow position to liquidate
     * @return collateralAmount Amount of collateral received
     * @return adjustedBorrowPart Adjusted borrow amount after liquidation
     * @return requiredDUSXAmount DUSX tokens needed to execute liquidation
     * @dev Validates borrowPart against maximum liquidatable amount
     */
    function liquidate(
        ILender lender,
        address account,
        uint256 borrowPart
    )
        external
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSXAmount
        );

    /*//////////////////////////////////////////////////////////////
                    LIQUIDATION WITH CUSTOM RECIPIENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Liquidates maximum amount and sends to specified recipient
     * @param lender Address of the lending contract
     * @param account Address to be liquidated
     * @param recipient Address to receive liquidated assets
     * @dev Combines max liquidation with custom recipient
     */
    function liquidateMaxTo(
        ILender lender,
        address account,
        address recipient
    ) external;

    /**
     * @notice Liquidates specific amount and sends to specified recipient
     * @param lender Address of the lending contract
     * @param account Address to be liquidated
     * @param recipient Address to receive liquidated assets
     * @param borrowPart Amount of borrow position to liquidate
     * @dev Combines partial liquidation with custom recipient
     */
    function liquidateTo(
        ILender lender,
        address account,
        address recipient,
        uint256 borrowPart
    ) external;

    /*//////////////////////////////////////////////////////////////
                        LIQUIDATION PREVIEWS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Previews maximum possible liquidation amounts
     * @param lender Address of the lending contract
     * @param account Address to check
     * @return liquidatable Whether the account can be liquidated
     * @return requiredDUSXAmount DUSX tokens needed for liquidation
     * @return adjustedBorrowPart Final borrow amount after liquidation
     * @return returnedCollateralAmount Collateral amount to be received
     * @dev Simulates liquidation without executing
     */
    function previewMaxLiquidation(
        ILender lender,
        address account
    )
        external
        view
        returns (
            bool liquidatable,
            uint256 requiredDUSXAmount,
            uint256 adjustedBorrowPart,
            uint256 returnedCollateralAmount
        );

    /**
     * @notice Previews specific liquidation amounts
     * @param lender Address of the lending contract
     * @param account Address to check
     * @param borrowPart Amount of borrow position to liquidate
     * @return liquidatable Whether the account can be liquidated
     * @return requiredDUSXAmount DUSX tokens needed for liquidation
     * @return adjustedBorrowPart Final borrow amount after liquidation
     * @return returnedCollateralAmount Collateral amount to be received
     * @dev Simulates partial liquidation without executing
     */
    function previewLiquidation(
        ILender lender,
        address account,
        uint256 borrowPart
    )
        external
        view
        returns (
            bool liquidatable,
            uint256 requiredDUSXAmount,
            uint256 adjustedBorrowPart,
            uint256 returnedCollateralAmount
        );

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Checks if an account is eligible for liquidation
     * @param lender Address of the lending contract
     * @param account Address to check
     * @return bool True if account can be liquidated
     * @dev Considers collateral ratio and position health
     */
    function isLiquidatable(
        ILender lender,
        address account
    ) external view returns (bool);

    /**
     * @notice Returns the DUSX token contract used for liquidations
     * @return IERC20Custom DUSX token interface
     * @dev DUSX is required to execute liquidations
     */
    function dusx() external view returns (IERC20Custom);

    /**
     * @notice Returns the helper utility contract
     * @return IMiscHelper Helper interface for additional functions
     * @dev Helper provides supporting calculations and checks
     */
    function helper() external view returns (IMiscHelper);
}
