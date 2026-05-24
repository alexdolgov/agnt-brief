pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

/// @title Planet PToken Interface
interface IPToken {
    /// @notice Mints pTokens and assigns them to a specified account
    /// @param accountAddress The address of the account where the minted tokens will be added
    /// @param amount The amount of pTokens to mint
    function mint(address accountAddress, uint256 amount) external;

    /// @notice Burns pTokens from a specified account
    /// @param accountAddress The address of the account from which the tokens will be burned
    /// @param amount The amount of pTokens to burn
    function burn(address accountAddress, uint256 amount) external;
}
