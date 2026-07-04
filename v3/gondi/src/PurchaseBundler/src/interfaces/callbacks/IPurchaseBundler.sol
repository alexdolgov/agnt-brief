// SPDX-License-Identifier: AGPL-3.0

pragma solidity ^0.8.20;

import "../loans/IMultiSourceLoan.sol";
import "../../interfaces/external/IReservoir.sol";

import "@solmate/tokens/ERC20.sol";
import "@solmate/tokens/ERC721.sol";
import {IPool} from "@aave/interfaces/IPool.sol";

interface IPurchaseBundler {
    struct ExecutionInfo {
        IReservoir.ExecutionInfo reservoirExecutionInfo;
        bool contractMustBeOwner;
    }

    struct Taxes {
        uint128 buyTax;
        uint128 sellTax;
    }

    struct AaveBorrowArgs {
        IPool pool;
        address[] assets;
        uint256[] amounts;
    }

    struct ExecuteSellArgs {
        ERC20[] currencies;
        uint256[] currencyAmounts;
        ERC721[] collections;
        uint256[] tokenIds;
        address marketPlace;
        bytes[] executionData;
    }

    struct ExecuteSellWithLoanArgs {
        AaveBorrowArgs borrowArgs;
        ExecuteSellArgs executeSellArgs;
        bytes[] loanExecutionData;
    }

    /// @notice Buy a number of NFTs using loans to cover part of the price (i.e. BNPL).
    /// @dev Buy calls emit loan -> Before trying to transfer the NFT but after transfering the principal
    /// @dev Encoded: emitLoan(IMultiSourceLoan.LoanExecutionData)[]
    /// @param executionData The data needed to execute the loan + buy the NFT.
    function buy(bytes[] calldata executionData) external payable returns (uint256[] memory);

    /// @notice Sell the collateral behind a number of loans (potentially 1) and use proceeds to pay back the loans.
    /// @dev Encoded: repayLoan(IMultiSourceLoan.LoanRepaymentData)[]
    /// @param executionData The data needed to execute the loan repayment + sell the NFT.
    function sell(bytes[] calldata executionData) external;

    /// @notice Execute a sell signed by the borrower.
    /// @dev Encoded: repayLoan(IMultiSourceLoan.LoanRepaymentData)[]
    /// @param currencies The currencies to send.
    /// @param currencyAmounts The amounts of each currency to send.
    /// @param collections The collections of the NFTs to receive.
    /// @param tokenIds The token IDs of the NFTs to receive.
    /// @param executionData The data needed to execute the loan repayment + sell the NFT.
    function executeSell(
        ERC20[] calldata currencies,
        uint256[] calldata currencyAmounts,
        ERC721[] calldata collections,
        uint256[] calldata tokenIds,
        address marketPlace,
        bytes[] calldata executionData
    ) external;

    /// @notice Execute a sell signed by the borrower using ETH.
    /// @dev Encoded: repayLoan(IMultiSourceLoan.LoanRepaymentData)[]
    /// @param wethPrincipalSwapData The data needed to swap the WETH for the loan principal.
    /// @param executionData The data needed to execute the loan repayment + sell the NFT.
    function executeSellWithETH(
        bytes calldata wethPrincipalSwapData,
        ERC20 principal,
        ERC721 collection,
        uint256 tokenId,
        bytes calldata executionData
    ) external payable;

    function executeSellWithLoan(ExecuteSellWithLoanArgs calldata args) external;

    /// @notice First step to update the MultiSourceLoan address.
    /// @param newAddress The new address of the MultiSourceLoan.
    function updateMultiSourceLoanAddressFirst(address newAddress) external;

    /// @notice Second step to update the MultiSourceLoan address.
    /// @param newAddress The new address of the MultiSourceLoan. Must match address from first update.
    function finalUpdateMultiSourceLoanAddress(address newAddress) external;

    /// @notice Returns the address of the MultiSourceLoan.
    function getMultiSourceLoanAddress() external view returns (address);

    /// @return _taxes The current taxes.
    function getTaxes() external returns (Taxes memory);

    /// @return _pendingTaxes The pending taxes.
    function getPendingTaxes() external returns (Taxes memory);

    /// @return _pendingTaxesSetTime The time when the pending taxes were set.
    function getPendingTaxesSetTime() external returns (uint256);

    /// @notice Kicks off the process to update the taxes.
    /// @param newTaxes New taxes.
    function updateTaxes(Taxes calldata newTaxes) external;

    /// @notice Set the taxes if enough notice has been given.
    function setTaxes() external;
}
