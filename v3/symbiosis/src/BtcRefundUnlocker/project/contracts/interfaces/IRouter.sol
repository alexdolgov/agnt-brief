// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "./IWETH.sol";

/// @title IRouter
/// @notice Interface for the Router contract that executes token operations during unlock
/// @dev The Router temporarily holds tokens and executes arbitrary calls with amount patching
interface IRouter {
    /// @notice Thrown when attempting to call an address with no code
    /// @param target The address that was expected to be a contract
    error CallToNonContract(address target);

    /// @notice Execute an external call with token approval and amount patching
    /// @dev Approves `_token` to `_receiveSide`, patches `_amount` into `_calldata` at `_offset`, then calls
    /// @param _token The token to approve for the call
    /// @param _amount The amount to approve and patch into calldata
    /// @param _receiveSide The contract to call
    /// @param _calldata The calldata for the call (amount will be patched in at offset)
    /// @param _offset Byte offset in calldata where amount should be written (0 = no patching)
    function externalCall(
        address _token,
        uint256 _amount,
        address _receiveSide,
        bytes calldata _calldata,
        uint256 _offset
    ) external;

    /// @notice Unwrap WETH and transfer native ETH to recipient
    /// @param token The WETH contract
    /// @param to The recipient of native ETH
    /// @param amount The amount to unwrap and transfer
    function transferNative(IWETH token, address to, uint256 amount) external;
}