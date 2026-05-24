// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IDynamicInterestRate} from "./IDynamicInterestRate.sol";
import {IFeesDistributor} from "./IFees.sol";
import {IFeesWithdrawer} from "./IFees.sol";
import {IFloor} from "./IFloor.sol";
import {ILender} from "./ILender.sol";
import {ILenderOwner} from "./ILenderOwner.sol";
import {ILiquidationHelper} from "./ILiquidationHelper.sol";
import {IMarketLens} from "./IMarketLens.sol";
import {IPSM} from "./IPSM.sol";
import {IRepayHelper} from "./IRepayHelper.sol";
import {IStakedDUSX} from "./IStakedDUSX.sol";
import {ISupplyHangingCalculator} from "./ISupplyHangingCalculator.sol";

/**
 * @title IMiscHelper
 * @dev Interface for miscellaneous helper functions across the protocol
 * @notice Provides comprehensive helper methods for:
 * 1. Protocol configuration and parameter management
 * 2. Floor token operations
 * 3. Staked DUSX token management
 * 4. PSM (Peg Stability Module) operations
 * 5. Lending operations including borrowing and repayment
 * 6. System-wide view functions
 *
 * This interface acts as a central utility hub for coordinating
 * various protocol components and simplifying complex operations
 */
interface IMiscHelper {
    /*//////////////////////////////////////////////////////////////
                        CONFIGURATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Sets the supply hanging calculator contract
     * @param supplyHangingCalculator_ New calculator contract address
     * @dev Used for calculating supply adjustments
     */
    function setSupplyHangingCalculator(
        ISupplyHangingCalculator supplyHangingCalculator_
    ) external;

    /**
     * @notice Sets core protocol parameters and contract addresses
     * @param repayHelper_ Repayment helper contract
     * @param liquidationHelper_ Liquidation helper contract
     * @param dynamicInterestRate_ Interest rate calculator
     * @param feesDistributor_ Fee distribution contract
     * @param feesWithdrawer_ Fee withdrawal contract
     * @param lenderOwner_ Lender owner contract
     * @param marketLens_ Market data viewer contract
     * @dev Updates all main protocol component addresses
     */
    function setParameters(
        IRepayHelper repayHelper_,
        ILiquidationHelper liquidationHelper_,
        IDynamicInterestRate dynamicInterestRate_,
        IFeesDistributor feesDistributor_,
        IFeesWithdrawer feesWithdrawer_,
        ILenderOwner lenderOwner_,
        IMarketLens marketLens_
    ) external;

    /**
     * @notice Sets the list of active lender contracts
     * @param lenders_ Array of lender addresses
     * @dev Updates the protocol's lending markets
     */
    function setLenders(ILender[] memory lenders_) external;

    /**
     * @notice Sets the list of PSM contracts
     * @param pegStabilityModules_ Array of PSM addresses
     * @dev Updates available stablecoin PSM modules
     */
    function setPegStabilityModules(
        IPSM[] memory pegStabilityModules_
    ) external;

    /*//////////////////////////////////////////////////////////////
                        FLOOR TOKEN OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits Floor tokens into the protocol
     * @param amount Amount of Floor tokens to deposit
     */
    function depositFloor(uint256 amount) external;

    /**
     * @notice Refunds Floor tokens from the protocol
     * @param amount Amount of Floor tokens to refund
     */
    function refundFloor(uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                        STAKED DUSX OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits DUSX tokens for staking
     * @param amount Amount of DUSX to stake
     */
    function depositStakedDUSX(uint256 amount) external;

    /**
     * @notice Withdraws staked DUSX tokens
     * @param amount Amount of staked DUSX to withdraw
     */
    function withdrawStakedDUSX(uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                            PSM OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Swaps DUSX for stablecoin through PSM
     * @param psm PSM contract to use for swap
     * @param receiver Address to receive stablecoins
     * @param amountDUSX Amount of DUSX to swap
     */
    function psmSwapDUSXForStable(
        IPSM psm,
        address receiver,
        uint256 amountDUSX
    ) external;

    /**
     * @notice Swaps stablecoin for DUSX through PSM
     * @param psm PSM contract to use for swap
     * @param receiver Address to receive DUSX
     * @param amountStable Amount of stablecoin to swap
     */
    function psmSwapStableForDUSX(
        IPSM psm,
        address receiver,
        uint256 amountStable
    ) external;

    /*//////////////////////////////////////////////////////////////
                        LENDING OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Withdraws borrowed tokens from vault
     * @param lender Lender contract to withdraw from
     * @param amount Amount to withdraw
     */
    function lenderBorrowVaultWithdraw(ILender lender, uint256 amount) external;

    /**
     * @notice Executes a borrow operation
     * @param lender Lender contract to borrow from
     * @param amount Amount to borrow
     */
    function lenderBorrow(ILender lender, uint256 amount) external;

    /**
     * @notice Repays borrowed tokens
     * @param lender Lender contract to repay to
     * @param payer Address paying the debt
     * @param to Address receiving any excess
     * @param skim Whether to skim tokens from contract
     * @param part Amount of borrow part to repay
     */
    function lenderRepay(
        ILender lender,
        address payer,
        address to,
        bool skim,
        uint256 part
    ) external;

    /**
     * @notice Executes liquidation for multiple users
     * @param lender Lender contract to liquidate from
     * @param liquidator Address performing liquidation
     * @param users Array of addresses to liquidate
     * @param maxBorrowParts Maximum borrow parts to liquidate per user
     * @param to Address to receive liquidated assets
     */
    function lenderLiquidate(
        ILender lender,
        address liquidator,
        address[] memory users,
        uint256[] memory maxBorrowParts,
        address to
    ) external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Returns current APR for staked DUSX
     * @return uint256 Annual percentage rate
     */
    function aprStakedDUSX() external view returns (uint256);

    /**
     * @notice Returns repayment helper contract
     */
    function repayHelper() external view returns (IRepayHelper);

    /**
     * @notice Returns liquidation helper contract
     */
    function liquidationHelper() external view returns (ILiquidationHelper);

    /**
     * @notice Returns dynamic interest rate calculator
     */
    function dynamicInterestRate() external view returns (IDynamicInterestRate);

    /**
     * @notice Returns floor token contract
     */
    function floor() external view returns (IFloor);

    /**
     * @notice Returns fees distributor contract
     */
    function feesDistributor() external view returns (IFeesDistributor);

    /**
     * @notice Returns fees withdrawer contract
     */
    function feesWithdrawer() external view returns (IFeesWithdrawer);

    /**
     * @notice Returns lender contract at specified index
     * @param index Position in lenders array
     */
    function lenders(uint256 index) external view returns (ILender);

    /**
     * @notice Returns total number of lender contracts
     */
    function lendersLength() external view returns (uint256);

    /**
     * @notice Returns lender owner contract
     */
    function lenderOwner() external view returns (ILenderOwner);

    /**
     * @notice Returns market lens contract
     */
    function marketLens() external view returns (IMarketLens);

    /**
     * @notice Returns PSM contract at specified index
     * @param index Position in PSM array
     */
    function pegStabilityModules(uint256 index) external view returns (IPSM);

    /**
     * @notice Returns total number of PSM contracts
     */
    function pegStabilityModulesLength() external view returns (uint256);

    /**
     * @notice Returns staked DUSX token contract
     */
    function stDUSX() external view returns (IStakedDUSX);

    /**
     * @notice Returns supply hanging calculator contract
     */
    function supplyHangingCalculator()
        external
        view
        returns (ISupplyHangingCalculator);
}
