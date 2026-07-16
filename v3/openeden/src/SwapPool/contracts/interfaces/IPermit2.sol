// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

/// @notice Minimal interface for Uniswap Permit2 used to transfer from an EOA with pre-approved allowance or permit
interface IPermit2 {
    /// @notice Transfer tokens using Permit2 allowance from `from` to `to`
    /// @dev Uses uint160 amount per Permit2 spec
    function transferFrom(address from, address to, uint160 amount, address token) external;
}
