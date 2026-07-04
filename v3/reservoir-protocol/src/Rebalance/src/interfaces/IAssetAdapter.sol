// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

/// @title Asset Adapter Interface
/// @notice Interface for interacting with asset adapters that manage yield-generating positions
interface IAssetAdapter {
    /// @notice Allocates underlying tokens to the adapter
    /// @param amount The amount of underlying tokens to allocate
    function allocate(uint256 amount) external;

    /// @notice Withdraws underlying tokens from the adapter
    /// @param amount The amount of underlying tokens to withdraw
    function withdraw(uint256 amount) external;

    /// @notice Deposits underlying tokens into the yield-generating position
    /// @param amount The amount of underlying tokens to deposit
    function deposit(uint256 amount) external;

    /// @notice Redeems shares from the yield-generating position
    /// @param shares The number of shares to redeem
    function redeem(uint256 shares) external;

    /// @notice Returns the total value of the fund in underlying token terms
    /// @return The total value of the fund
    function fundTotalValue() external view returns (uint256);

    /// @notice Returns the balance of shares held by the adapter
    /// @return The balance of shares
    function fundBalance() external view returns (uint256);

    /// @notice Returns the underlying token address
    /// @return The underlying ERC20 token
    function underlying() external view returns (IERC20);

    /// @notice Grants a role to an address
    /// @param role The role to grant
    /// @param account The address to grant the role to
    function grantRole(bytes32 role, address account) external;

    /// @notice Returns the controller role identifier
    /// @return The controller role bytes32 identifier
    function CONTROLLER() external view returns (bytes32);
}
