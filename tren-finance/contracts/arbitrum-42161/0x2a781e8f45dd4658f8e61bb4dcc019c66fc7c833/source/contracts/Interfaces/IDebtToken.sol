// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

/// @title IDebtToken interface
/// @notice Defines the basic interface for interaction with DebtToken contract
interface IDebtToken {
    /**
     * @notice Function to mint tokens by whitelisted contract
     * @param _amount The amount of tokens to mint
     */
    function mintFromWhitelistedContract(uint256 _amount) external;

    /**
     * @notice Function to burn tokens by whitelisted contract
     * @param _amount The amount of tokens to burn
     */
    function burnFromWhitelistedContract(uint256 _amount) external;
}
