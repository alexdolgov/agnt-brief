// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";

import { IVaultHook } from "src/core/interfaces/IVaultHook.sol";
import { IWhitelist } from "src/core/interfaces/IWhitelist.sol";

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

/// @notice Operation execution context data
/// @dev Used to avoid stack too deep in BaseVault._executeSubmit function
/// @param target Address of the target contract to call
/// @param selector Function selector extracted from calldata
/// @param isCallback Whether this operation has a callback
/// @param value ETH value to send with the call
/// @param operationHook Address of the operation-specific hook contract
struct OperationContext {
    address target;
    bytes4 selector;
    bool isCallback;
    uint256 value;
    address operationHook;
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
struct BaseVaultParameters {
    address owner;
    address guardian;
    IVaultHook hook;
    bytes32 root;
    IWhitelist whitelist;
}

/// @notice Parameters for fee vault deployment.
/// @param feeCalculator The fee calculator address.
/// @param feeToken The fee token address.
/// @param aumFee The AUM fee in basis points.
/// @param performanceFee The performance fee in basis points.
/// @param feeRecipient The fee recipient address.
struct FeeVaultParameters {
    IFeeCalculator feeCalculator;
    IERC20 feeToken;
    uint16 aumFee;
    uint16 performanceFee;
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

/// @notice Record of fee recipient and their tenure period
struct FeeRecipientRecord {
    /// @notice Timestamp when recipient stops receiving fees
    uint32 endTimestamp;
    /// @notice Address of fee recipient
    address feeRecipient;
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
    /// @notice Total protocol fees accrued but not claimed
    uint256 accruedProtocolFee;
    /// @notice Historical record of fee recipients
    FeeRecipientRecord[] feeRecipients;
    /// @notice Mapping of fee recipient to their accrued fees
    mapping(address feeRecipient => uint256 accruedFees) accruedFees;
}
