// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title ERC-6551 Executable Interface
/// @notice Execution surface for token-bound account call forwarding.
interface IERC6551Executable {
    // -------- Write: Execution --------

    /// @notice Execute a call from the account.
    /// @dev Operation codes follow ERC-6551 conventions:
    ///      `0 = call`, `1 = delegatecall`, `2 = create`, `3 = create2`.
    /// @param to Target address.
    /// @param value ETH value to forward (ignored for delegatecall).
    /// @param data Call data payload.
    /// @param operation Operation selector.
    /// @return result Raw return data from the call.
    function execute(address to, uint256 value, bytes calldata data, uint8 operation)
        external
        payable
        returns (bytes memory result);
}
