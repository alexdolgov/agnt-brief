// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title ISafe
/// @notice Minimal subset of the Gnosis Safe interface that `SafeExecutor` depends on.
interface ISafe {
    enum Operation {
        Call,
        DelegateCall
    }

    function execTransaction(
        address to,
        uint256 value,
        bytes calldata data,
        Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures
    ) external payable returns (bool success);

    function isOwner(address owner) external view returns (bool);

    function getThreshold() external view returns (uint256);

    function nonce() external view returns (uint256);
}
