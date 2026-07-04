// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @title IERC20
/// @notice Minimal ERC20 surface used by Seer Router.
interface IERC20 {
    /// @notice Transfer `amount` tokens from `from` to `to`, requiring prior approval.
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Transfer `amount` tokens from caller to `to`.
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Approve `spender` to transfer up to `amount` tokens on behalf of caller.
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Token balance of `owner`.
    function balanceOf(address owner) external view returns (uint256);

    /// @notice Total token supply.
    function totalSupply() external view returns (uint256);
}
