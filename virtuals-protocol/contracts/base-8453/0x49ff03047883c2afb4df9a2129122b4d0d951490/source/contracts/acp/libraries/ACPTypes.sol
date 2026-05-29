// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title ACPTypes
 * @dev Library containing data structures for the modular ACP system
 */
library ACPTypes {

    enum JobPhase {
        REQUEST,        // 0 - Initial job request
        NEGOTIATION,    // 1 - Terms negotiation
        TRANSACTION,    // 2 - Work in progress/transaction phase
        EVALUATION,     // 3 - Work evaluation
        COMPLETED,      // 4 - Successfully completed
        REJECTED,       // 5 - Rejected or failed
        EXPIRED         // 6 - Expired without completion
    }

    enum MemoType {
        MESSAGE,                    // 0 - Text message
        CONTEXT_URL,               // 1 - URL for context
        IMAGE_URL,                 // 2 - Image URL
        VOICE_URL,                 // 3 - Voice/audio URL
        OBJECT_URL,                // 4 - Object/file URL
        TXHASH,                    // 5 - Transaction hash reference
        PAYABLE_REQUEST,           // 6 - Payment request
        PAYABLE_TRANSFER,          // 7 - Direct payment transfer
        PAYABLE_TRANSFER_ESCROW,   // 8 - Escrowed payment transfer
        NOTIFICATION,        // 9 - Notification
        PAYABLE_NOTIFICATION     // 10 - Payable notification
    }

    enum FeeType {
        NO_FEE,         // 0 - No fee
        IMMEDIATE_FEE,  // 1 - Fee paid immediately
        DEFERRED_FEE    // 2 - Fee deferred to account completion
    }

    struct Account {
        uint256 id;
        address client;
        address provider;
        uint256 createdAt;
        string metadata;
        uint256 jobCount;
        uint256 completedJobCount;
        bool isActive;
    }

    struct Job {
        uint256 id;
        uint256 accountId;
        address client;
        address provider;
        address evaluator;
        address creator;
        uint256 budget;
        IERC20 jobPaymentToken;
        JobPhase phase;
        uint256 expiredAt;
        uint256 createdAt;
        uint256 memoCount;
        string metadata;
        uint256 amountClaimed;
    }

    struct Memo {
        uint256 id;
        uint256 jobId;
        address sender;
        string content;
        MemoType memoType;
        uint256 createdAt;
        bool isApproved;
        address approvedBy;
        uint256 approvedAt;
        bool requiresApproval;
        string metadata;
        bool isSecured;
        JobPhase nextPhase;
        uint256 expiredAt;
    }

    struct PayableDetails {
        address token;
        uint256 amount;
        address recipient;
        uint256 feeAmount;
        FeeType feeType;
        bool isExecuted;
        uint256 expiredAt;
    }

    // Utility functions for type validation
    function isValidJobPhase(JobPhase phase) internal pure returns (bool) {
        return uint8(phase) <= uint8(JobPhase.EXPIRED);
    }

    function isValidMemoType(MemoType memoType) internal pure returns (bool) {
        return uint8(memoType) <= uint8(MemoType.PAYABLE_NOTIFICATION);
    }

    function isPayableMemoType(MemoType memoType) internal pure returns (bool) {
        return memoType == MemoType.PAYABLE_REQUEST ||
               memoType == MemoType.PAYABLE_TRANSFER ||
               memoType == MemoType.PAYABLE_TRANSFER_ESCROW ||
               memoType == MemoType.PAYABLE_NOTIFICATION;
    }

    function isNotificationMemoType(MemoType memoType) internal pure returns (bool) {
        return memoType == MemoType.NOTIFICATION || memoType == MemoType.PAYABLE_NOTIFICATION;
    }

    // Helper function to calculate phase progression
    function canProgressToPhase(JobPhase current, JobPhase target) internal pure returns (bool) {
        if (target == JobPhase.REJECTED || target == JobPhase.EXPIRED) {
            return true; // Can always reject or expire
        }
        
        if (current == JobPhase.REQUEST) {
            return target == JobPhase.NEGOTIATION || target == JobPhase.TRANSACTION;
        } else if (current == JobPhase.NEGOTIATION) {
            return target == JobPhase.TRANSACTION;
        } else if (current == JobPhase.TRANSACTION) {
            return target == JobPhase.EVALUATION;
        } else if (current == JobPhase.EVALUATION) {
            return target == JobPhase.COMPLETED;
        }
        
        return false;
    }
}