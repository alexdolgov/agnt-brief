// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title Types
/// @author Bundie Team
/// @notice Core data structures used across Bundie contracts
/// @dev Library containing all shared type definitions for the Bundie protocol.
///      These types are used by Account, Deposit, Withdraw, and bridge modules.
///
///      ## Type Categories
///      - Position: User's holdings in a yield strategy
///      - RecoveryType: Native ETH vs ERC20 recovery
///      - PendingDeposit/Withdrawal: Cross-chain operation tracking
library Types {
    // ========================== Position Types ==========================

    /// @notice Represents a user's position in a yield strategy
    /// @dev Tracks share tokens received from cross-chain deposits.
    ///      Each position corresponds to a unique strategy allocation.
    ///
    ///      Storage layout (5 slots - optimized):
    ///      - slot 0: shareToken (20 bytes) + sourceChain (4 bytes) = 24 bytes, 8 bytes padding
    ///      - slot 1: strategyId (32 bytes)
    ///      - slot 2: amount (32 bytes)
    ///      - slot 3: timestamp (32 bytes)
    ///      - slot 4: id (32 bytes)
    ///
    /// @param shareToken Address of receipt token representing vault shares
    /// @param sourceChain Chain ID (EVM format) where the vault is deployed
    /// @param strategyId Unique identifier for the strategy
    /// @param amount Number of share tokens held in this position
    /// @param timestamp Block timestamp when the position was created
    /// @param id Unique position identifier (monotonically increasing, never reused)
    /// @param principal Cost basis in asset units (for performance fee calculation)
    /// @param lastFeeAccrual Last timestamp fees were settled (for management fee accrual)
    struct Position {
        address shareToken;
        uint32 sourceChain;
        bytes32 strategyId;
        uint256 amount;
        uint256 timestamp;
        uint256 id;
        uint256 principal;
        uint48 lastFeeAccrual;
    }

    /// @notice Recovery asset type
    /// @dev Used by recovery functions to specify whether to recover native ETH or ERC20 tokens.
    /// @param NATIVE Native token (ETH)
    /// @param ERC20 ERC20 token
    enum RecoveryType {
        NATIVE,
        ERC20
    }

    // ========================== Pending Operation Types ==========================

    /// @notice Pending deposit operation data
    /// @dev Tracks cross-chain deposits awaiting validator confirmation.
    ///      Created by depositStrategy(), consumed by confirmDeposit().
    ///
    ///      Storage layout (5 slots):
    ///      - slot 0: strategyId (32 bytes)
    ///      - slot 1: msgGuid (32 bytes)
    ///      - slot 2: user (20 bytes) + timestamp (6 bytes) + padding
    ///      - slot 3: amount (32 bytes)
    ///      - slot 4: minSharesExpected (32 bytes)
    ///
    /// @param strategyId Strategy being deposited to
    /// @param msgGuid Bridge message GUID for tracking
    /// @param user Address of user who initiated deposit
    /// @param timestamp When deposit was initiated (block.timestamp)
    /// @param amount Actual invested amount after bridge fee deduction (principal tracking)
    /// @param minSharesExpected Minimum shares expected (slippage protection)
    struct PendingDeposit {
        bytes32 strategyId;
        bytes32 msgGuid;
        address user;
        uint48 timestamp;
        uint256 amount;
        uint256 minSharesExpected;
    }

    /// @notice Pending withdrawal operation data
    /// @dev Tracks cross-chain withdrawals awaiting validator confirmation.
    ///      Created by withdrawStrategy(), consumed by confirmWithdrawal().
    ///
    ///      Storage layout (7 slots):
    ///      - slot 0: strategyId (32 bytes)
    ///      - slot 1: msgGuid (32 bytes)
    ///      - slot 2: user (20 bytes) + timestamp (6 bytes) + padding
    ///      - slot 3: positionId (32 bytes)
    ///      - slot 4: amount (32 bytes)
    ///      - slot 5: minAssetExpected (32 bytes)
    ///      - slot 6: assetBalanceBefore (32 bytes)
    ///
    /// @param strategyId Strategy being withdrawn from
    /// @param msgGuid Bridge message GUID for tracking
    /// @param user Address of user who initiated withdrawal
    /// @param timestamp When withdrawal was initiated (block.timestamp)
    /// @param positionId Unique position identifier (stable across array modifications)
    /// @param amount Number of share tokens being withdrawn
    /// @param minAssetExpected Minimum asset tokens expected (slippage protection)
    /// @param assetBalanceBefore Vault asset token balance before withdrawal message was sent.
    ///        Used to compute the actual assets received when confirming the withdrawal.
    struct PendingWithdrawal {
        bytes32 strategyId;
        bytes32 msgGuid;
        address user;
        uint48 timestamp;
        uint256 positionId;
        uint256 amount;
        uint256 minAssetExpected;
        uint256 assetBalanceBefore;
    }
}
