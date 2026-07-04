// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";

import { IVaultHooks } from "src/core/interfaces/IVaultHooks.sol";
import { IWhitelist } from "src/core/interfaces/IWhitelist.sol";

/// @notice Operation struct for vault operations.
/// @dev This struct is not used directly in core logic, but included for reference and clarity.
///      It illustrates the full structure of an operation without storage packing.
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
    /// @notice Address of the hooks contract
    address hooks;
    /// @notice Array of offsets for extracting calldata
    uint16[] configurableHooksOffsets;
    /// @notice Merkle proof for operation verification
    bytes32[] proof;
    /// @notice ETH value to send with the call
    uint256 value;
}

/// @notice Operation execution context data
/// @dev Used to avoid stack too deep in BaseVault._executeSubmit function
struct OperationContext {
    /// @notice Address of the target contract to call
    address target;
    /// @notice Function selector extracted from calldata
    bytes4 selector;
    /// @notice Whether this operation has a callback
    bool hasCallback;
    /// @notice ETH value to send with the call
    uint256 value;
    /// @notice Address of the operation-specific hooks contract
    address operationHooks;
    /// @notice Offset of the calldata extraction offsets packed in uint256
    uint256 configurableOperationHooks;
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

/// @notice Struct for token amounts
struct TokenAmount {
    /// @notice ERC20 token address
    IERC20 token;
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

/// @notice Vault parameters for vault deployment
struct BaseVaultParameters {
    /// @notice Initial owner address
    address owner;
    /// @notice Guardian address
    address guardian;
    /// @notice Vault level hooks address
    IVaultHooks hooks;
    /// @notice Merkle root with whitelisted operations
    bytes32 root;
    /// @notice Whitelist contract address
    IWhitelist whitelist;
}

/// @notice Parameters for fee vault deployment
struct FeeVaultParameters {
    /// @notice The fee calculator address
    IFeeCalculator feeCalculator;
    /// @notice The fee token address
    IERC20 feeToken;
    /// @notice The fee recipient address
    address feeRecipient;
}

/// @notice Fee structure for AUM and performance fees
/// @dev All fees are in basis points (1/10000)
struct Fee {
    /// @notice AUM fee in basis points
    uint16 aum;
    /// @notice Performance fee in basis points
    uint16 performance;
}

/// @notice FeeSnapshot of vault state for fee calculations
/// @dev Values are stored with high precision using uint224
struct FeeSnapshot {
    /// @notice Timestamp when snapshot was taken
    uint32 timestamp;
    /// @notice Average value of vault assets during snapshot period
    uint224 averageValue;
    /// @notice Timestamp when snapshot is finalized after dispute period
    uint32 finalizedAt;
    /// @notice Highest profit achieved during snapshot period
    uint224 highestProfit;
}

/// @notice Complete state of a vault's fee configuration and accruals
struct VaultFeeState {
    /// @notice Latest pending snapshot for fee calculation
    FeeSnapshot pendingSnapshot;
    /// @notice Current fee rates for the vault
    Fee fees;
    /// @notice Highest profit achieved in previous periods
    uint224 lastHighestProfit;
    /// @notice Timestamp of last fee accrual
    uint32 lastFeeAccrual;
    /// @notice Accrued fees for the vault fee recipient
    uint112 accruedFees;
    /// @notice Total protocol fees accrued but not claimed
    uint112 accruedProtocolFees;
}
