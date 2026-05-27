// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

/// @title Peg Stability Module Interface
/// @notice Interface for interacting with Peg Stability Modules that manage stablecoin pegs
interface IPegStabilityModule {
    /// @notice Allocates underlying tokens to the PSM
    /// @param amount The amount of underlying tokens to allocate
    function allocate(uint256 amount) external;

    /// @notice Withdraws underlying tokens from the PSM
    /// @param amount The amount of underlying tokens to withdraw
    function withdraw(uint256 amount) external;

    /// @notice Returns the underlying token address
    /// @return The underlying ERC20 token
    function underlying() external view returns (IERC20);

    /// @notice Returns the current balance of underlying tokens in the PSM
    /// @return The balance of underlying tokens
    function underlyingBalance() external view returns (uint256);

    /// @notice Grants a role to an address
    /// @param role The role to grant
    /// @param account The address to grant the role to
    function grantRole(bytes32 role, address account) external;

    /// @notice Returns the controller role identifier
    /// @return The controller role bytes32 identifier
    function CONTROLLER() external view returns (bytes32);
}
