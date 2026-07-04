// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Rebase} from "../library/AuxRebase.sol";
import {IERC20Custom} from "./IERC20Custom.sol";
import {IOracle} from "./IOracle.sol";
import {IVault} from "./IVault.sol";

/**
 * @title ILender
 * @dev Interface for lending operations and management
 * @notice Defines the core lending protocol functionality including:
 * 1. Collateral management and borrowing operations
 * 2. Interest rate and fee management
 * 3. Liquidation handling
 * 4. Vault integration
 *
 * The interface is designed to support:
 * · Over-collateralized lending
 * · Dynamic interest rates
 * · Liquidation mechanisms
 * · Fee collection and distribution
 */
interface ILender {
    /*//////////////////////////////////////////////////////////////
                        ADMIN CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates the interest rate for borrowing
     * @param newInterestRate New interest rate (scaled by 1e18)
     */
    function changeInterestRate(uint256 newInterestRate) external;

    /**
     * @notice Sets global and per-address borrowing limits
     * @param newBorrowLimit Total borrowing limit for the protocol
     * @param perAddressPart Maximum borrow amount per address
     */
    function changeBorrowLimit(
        uint256 newBorrowLimit,
        uint256 perAddressPart
    ) external;

    /*//////////////////////////////////////////////////////////////
                        CORE LENDING OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates protocol state with accrued interest
     */
    function accrue() external;

    /**
     * @notice Updates the exchange rate from the oracle
     */
    function updateExchangeRate() external;

    /**
     * @notice Withdraws accumulated protocol fees
     * @param amountToProvide Amount of fees to withdraw
     */
    function withdrawFees(uint256 amountToProvide) external;

    /*//////////////////////////////////////////////////////////////
                        LIQUIDATION HANDLING
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Liquidates undercollateralized positions
     * @param liquidator Address performing the liquidation
     * @param users Array of user addresses to liquidate
     * @param maxBorrowParts Maximum borrow parts to liquidate per user
     * @param to Address to receive liquidated collateral
     */
    function liquidate(
        address liquidator,
        address[] memory users,
        uint256[] memory maxBorrowParts,
        address to
    ) external;

    /*//////////////////////////////////////////////////////////////
                        VAULT OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits collateral into the vault
     * @param amount Amount of collateral to deposit
     */
    function vaultDepositAddCollateral(uint256 amount) external;

    /**
     * @notice Withdraws borrowed assets from the vault
     * @param msgSender Address initiating the withdrawal
     * @param amount Amount to withdraw
     * @return part Borrow part assigned
     * @return share Share of the vault
     */
    function borrowVaultWithdraw(
        address msgSender,
        uint256 amount
    ) external returns (uint256 part, uint256 share);

    /*//////////////////////////////////////////////////////////////
                        COLLATERAL MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Adds collateral to a lending position
     * @param to Address to credit the collateral
     * @param skim True to skim tokens from the contract
     * @param share Amount of shares to add as collateral
     */
    function addCollateral(address to, bool skim, uint256 share) external;

    /**
     * @notice Removes collateral from a lending position
     * @param to Address to receive the removed collateral
     * @param share Amount of shares to remove
     */
    function removeCollateral(address to, uint256 share) external;

    /*//////////////////////////////////////////////////////////////
                        BORROWING OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Borrows assets against deposited collateral
     * @param msgSender Address initiating the borrow
     * @param amount Amount to borrow
     * @return part Borrow part assigned
     * @return share Share of the borrowed amount
     */
    function borrow(
        address msgSender,
        uint256 amount
    ) external returns (uint256 part, uint256 share);

    /**
     * @notice Repays borrowed assets
     * @param payer Address paying the debt
     * @param to Address whose debt to repay
     * @param skim True to skim tokens from the contract
     * @param part Amount of borrow part to repay
     * @return amount Actual amount repaid
     */
    function repay(
        address payer,
        address to,
        bool skim,
        uint256 part
    ) external returns (uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Gets the oracle contract address
     * @return IOracle Oracle interface
     */
    function oracle() external view returns (IOracle);

    /**
     * @notice Gets interest accrual information
     * @return Last accrual timestamp, accumulated interest, interest per second
     */
    function accrueInfo() external view returns (uint256, uint256, uint256);

    /**
     * @notice Gets the required collateral ratio
     * @return uint256 Collateral ratio (scaled by 1e5)
     */
    function collateralRatio() external view returns (uint256);

    /**
     * @notice Gets the liquidation bonus multiplier
     * @return uint256 Liquidation multiplier (scaled by 1e5)
     */
    function liquidationMultiplier() external view returns (uint256);

    /**
     * @notice Gets total collateral shares in the protocol
     * @return uint256 Total collateral share amount
     */
    function totalCollateralShare() external view returns (uint256);

    /**
     * @notice Gets the vault contract address
     * @return IVault Vault interface
     */
    function vault() external view returns (IVault);

    /**
     * @notice Gets the fee recipient address
     * @return address Fee recipient
     */
    function feeTo() external view returns (address);

    /**
     * @notice Gets the collateral token address
     * @return IERC20Custom Collateral token interface
     */
    function collateral() external view returns (IERC20Custom);

    /**
     * @notice Gets total borrow state
     * @return Rebase Total borrow information
     */
    function totalBorrow() external view returns (Rebase memory);

    /**
     * @notice Gets user's borrow part
     * @param account User address
     * @return uint256 User's borrow part
     */
    function userBorrowPart(address account) external view returns (uint256);

    /**
     * @notice Gets user's collateral share
     * @param account User address
     * @return uint256 User's collateral share
     */
    function userCollateralShare(
        address account
    ) external view returns (uint256);

    /**
     * @notice Gets protocol borrowing limits
     * @return total Total protocol borrow limit
     * @return borrowPartPerAddress Per-address borrow limit
     */
    function borrowLimit()
        external
        view
        returns (uint256 total, uint256 borrowPartPerAddress);

    /**
     * @notice Gets the DUSX token address
     * @return IERC20Custom DUSX token interface
     */
    function dusx() external view returns (IERC20Custom);

    /**
     * @notice Gets all accounts with active positions
     * @return address[] Array of account addresses
     */
    function accounts() external view returns (address[] memory);

    /**
     * @notice Gets the collateral precision factor
     * @return uint256 Collateral precision
     */
    function collateralPrecision() external view returns (uint256);
}
