// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IERC20MetadataUpgradeable} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

import {IERC20PermitUpgradeable} from
    "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol";

interface IFlapTaxToken is IERC20MetadataUpgradeable, IERC20PermitUpgradeable {
    /// @notice Initialization parameters for setting up the token
    struct InitParams {
        /// @param name The name of the token
        string name;
        /// @param symbol The symbol of the token
        string symbol;
        /// @param meta The metadata of the token
        string meta;
        /// @param tax The tax rate for the token in basis points (1/100 of a percent)
        uint16 tax;
        /// @param taxSplitter The address of the tax splitter contract
        address taxSplitter;
        /// @param quoteToken The address of the quote token for pools (WETH or any ERC20)
        address quoteToken;
        /// @param liqExpectedOutputAmount The expected output amount in each liquidation
        uint256 liqExpectedOutputAmount;
        /// @param taxDuration The duration of the tax in seconds
        uint256 taxDuration;
    }

    /// @notice Initializes the token with the given parameters
    function initialize(InitParams memory params) external;

    /// @notice Returns the IPFS CID of the metadata JSON
    /// @return The metadata URI
    function metaURI() external view returns (string memory);

    /// migration related functions

    /// @notice Starts the migration process used by the Portal Contract
    function startMigration() external;

    /// @notice Finalizes the migration process used by the Portal Contract
    function finalizeMigration() external;

    /// @notice Custom transfer event for easier indexing
    /// @param from The address sending the tokens
    /// @param to The address receiving the tokens
    /// @param value The amount of tokens transferred
    event TransferFlapToken(address from, address to, uint256 value);

    /// @notice Emitted when tax liquidation fails
    event TaxLiquidationError(bytes reason);
}
