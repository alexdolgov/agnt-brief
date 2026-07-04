// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IAccessControl} from "@openzeppelin/access/IAccessControl.sol";

/// @notice A Burner Contract interface
/// @dev This contract does nothing but burns token
///     - Token transfers into this contract can only the be transferred to the dead address later
///     - Only the DAO owner / the default amdin can call the burn function
///     - The burner contract is not upgradeable
///
interface IBurner is IAccessControl {
    /// @notice Burn the token
    /// @param token The token to burn
    /// @dev only the default admin role or the DAO owner can call this function
    function burn(address token) external;

    /// @notice is the address the dao of the token
    /// @param token The token to check
    /// @param addr The address to check
    /// @return True if the address is the DAO of the token
    function isDAO(address token, address addr) external view returns (bool);

    /// @notice emit when the token is burned
    /// @param token The token to burn
    /// @param amount The amount of token to burn
    /// @param operator The operator who burns the token
    event Burn(address token, uint256 amount, address operator);
}
