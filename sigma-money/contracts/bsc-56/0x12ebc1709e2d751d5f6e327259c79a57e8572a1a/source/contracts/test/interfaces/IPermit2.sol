// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title IPermit2
/// @notice Interface for Permit2 contract
interface IPermit2 {
    /// @notice Approve a spender to access a token
    /// @param token The token to approve
    /// @param spender The spender to approve
    /// @param amount The amount to approve
    /// @param expiration The expiration timestamp
    function approve(
        address token,
        address spender,
        uint160 amount,
        uint48 expiration
    ) external;

    /// @notice Get the allowance for a spender
    /// @param owner The owner of the tokens
    /// @param token The token address
    /// @param spender The spender address
    /// @return amount The allowed amount
    /// @return expiration The expiration timestamp
    /// @return nonce The current nonce
    function allowance(
        address owner,
        address token,
        address spender
    ) external view returns (uint160 amount, uint48 expiration, uint48 nonce);
}
