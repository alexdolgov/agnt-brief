// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

/// @notice Initialization parameters for TaxProcessor
struct TaxProcessorInitParams {
    address quoteToken;
    address router;
    address feeReceiver;
    address marketAddress;
    address dividendAddress;
    address taxToken;
    uint16 feeRate;
    uint16 marketBps;
    uint16 deflationBps;
    uint16 lpBps;
    uint16 dividendBps;
}

/// @notice Interface for an external tax processor that can receive tax token parts
/// and be informed about token balance changes for tracking/dividend purposes
interface ITaxProcessor {
    /// @notice Initialize the tax processor with configuration parameters
    /// @param params The initialization parameters
    function initialize(TaxProcessorInitParams memory params) external;

    /// @notice Process tax tokens by computing fees, splitting remainder, and handling distribution
    /// @param taxAmount The total amount of tax tokens to process
    /// @dev The processor reads configuration from msg.sender (the calling token contract)
    function processTaxTokens(uint256 taxAmount) external;

    /// @notice Process bonding curve tax by accepting quote tokens and distributing them
    /// @param quoteAmount The amount of quote tokens to process
    /// @dev Transfers quote tokens from sender, calculates distribution with dust handling, and updates balances
    function processBondingCurveTax(uint256 quoteAmount) external;

    /// @notice Dispatch accumulated quote tokens to receivers and dividend contract
    function dispatch() external;

    /// @notice Get the quote token address
    /// @return The quote token address (WETH if isWeth is true, otherwise stored quoteToken)
    function getQuoteToken() external view returns (address);
}
