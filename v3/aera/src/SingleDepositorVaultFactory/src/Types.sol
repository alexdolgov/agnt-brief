// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IVaultHook } from "./interfaces/IVaultHook.sol";
import { IERC20 } from "@oz/interfaces/IERC20.sol";

/// @notice Operation struct for vault operations
struct Operation {
    /// @notice Target contract address to call
    address target;
    /// @notice Calldata for the target contract
    bytes data;
    /// @notice Array of clipboard operations for copying return data
    Clipboard[] clipboards;
    /// @notice Whether to perform a static call
    bool isStaticCall;
    /// @notice Callback data for post-operation processing
    CallbackData callbackData;
    /// @notice Address of the calldata extractor contract
    address hook;
    /// @notice Array of offsets for extracting calldata
    uint16[] configurableHookOffsets;
    /// @notice Merkle proof for operation verification
    bytes32[] proof;
    /// @notice ETH value to send with the call
    uint256 value;
}

/// @notice Struct for payable operations
struct OperationPayable {
    /// @notice Target contract address
    address target;
    /// @notice Calldata for the target contract
    bytes data;
    /// @notice ETH value to send with the call
    uint256 value;
}

/// @notice Struct for token approvals
struct Approval {
    /// @notice Token address to approve
    address token;
    /// @notice Address to approve spending for
    address spender;
}

/// @notice Struct for asset amounts
struct AssetAmount {
    /// @notice ERC20 token address
    IERC20 asset;
    /// @notice Amount of tokens
    uint256 amount;
}

/// @notice Struct for clipboard operations
struct Clipboard {
    /// @notice Index of the result to copy from
    uint8 resultIndex;
    /// @notice Which word to copy from the result
    uint8 copyWord;
    /// @notice Offset to paste the copied data
    uint16 pasteOffset;
}

/// @notice Struct for callback data
struct CallbackData {
    /// @notice Address allowed to execute the callback
    address caller;
    /// @notice Function selector for the callback
    bytes4 selector;
    /// @notice Offset in calldata for the callback
    uint16 calldataOffset;
}

/// @notice Vault parameters for vault deployment.
/// @param owner Initial owner address.
/// @param guardian Guardian address.
/// @param hook Vault level hook address.
/// @param root Merkle root with whitelisted operations.
struct VaultParameters {
    address owner;
    address guardian;
    IVaultHook hook;
    bytes32 root;
}
