// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../libraries/ACPTypes.sol";

/**
 * @title IMemoManager
 * @dev Interface for the Memo Manager module
 */
interface IMemoManager {
    
    // Events
    event NewMemo(
        uint256 indexed memoId,
        uint256 indexed jobId,
        address indexed sender,
        ACPTypes.MemoType memoType,
        ACPTypes.JobPhase nextPhase,
        string content
    );
    
    event MemoSigned(
        uint256 indexed memoId,
        address indexed approver,
        bool approved,
        string reason
    );
    
    event PayableMemoExecuted(
        uint256 indexed memoId,
        uint256 indexed jobId,
        address indexed executor,
        uint256 amount
    );

    /**
     * @dev Create a new memo
     * @param jobId The job ID this memo belongs to
     * @param sender Address creating the memo
     * @param content Memo content
     * @param memoType Type of memo
     * @param isSecured Whether the memo is secured
     * @param nextPhase The next phase to transition to
     * @return memoId The ID of the created memo
     */
    function createMemo(
        uint256 jobId,
        address sender,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase
    ) external returns (uint256 memoId);

    /**
     * @dev Create a payable memo with payment details
     * @param jobId The task ID
     * @param sender Address creating the memo
     * @param content Memo content
     * @param memoType Type of memo
     * @param payableDetails Payment details
     * @return memoId The ID of the created memo
     */
    function createPayableMemo(
        uint256 jobId,
        address sender,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase,
        ACPTypes.PayableDetails calldata payableDetails,
        uint256 expiredAt
    ) external returns (uint256 memoId);

    /**
     * @dev Approve or reject a memo
     * @param memoId The memo ID
     * @param approved Whether the memo is approved
     * @param reason Reason for approval/rejection
     */
    function approveMemo(
        uint256 memoId,
        address sender,
        bool approved,
        string calldata reason
    ) external;

     function signMemo(
        uint256 memoId,
        address sender,
        bool isApproved,
        string calldata reason
    ) external returns (uint256 jobId);

    /**
     * @dev Execute a payable memo (transfer funds)
     * @param memoId The memo ID
     */
    function executePayableMemo(uint256 memoId) external;

    /**
     * @dev Get memo details
     * @param memoId The memo ID
     * @return memo The memo struct
     */
    function getMemo(uint256 memoId) external view returns (ACPTypes.Memo memory memo);

    /**
     * @dev Get all memos for a task
     * @param jobId The task ID
     * @param offset Pagination offset
     * @param limit Pagination limit
     * @return memos Array of memos
     * @return total Total number of memos
     */
    function getJobMemos(
        uint256 jobId,
        uint256 offset,
        uint256 limit
    ) external view returns (ACPTypes.Memo[] memory memos, uint256 total);

    /**
     * @dev Get memos by type for a task
     * @param jobId The task ID
     * @param memoType The memo type to filter by
     * @param offset Pagination offset
     * @param limit Pagination limit
     * @return memos Array of memos
     * @return total Total number of memos
     */
    function getJobMemosByType(
        uint256 jobId,
        ACPTypes.MemoType memoType,
        uint256 offset,
        uint256 limit
    ) external view returns (ACPTypes.Memo[] memory memos, uint256 total);

    /**
     * @dev Get payable details for a memo
     * @param memoId The memo ID
     * @return details The payable details
     */
    function getPayableDetails(uint256 memoId) external view returns (ACPTypes.PayableDetails memory details);

    /**
     * @dev Get memo with its payable details
     * @param memoId The memo ID
     * @return memo The memo struct
     * @return payableDetails The payable details
     */
    function getMemoWithPayableDetails(uint256 memoId) external view returns (
        ACPTypes.Memo memory memo,
        ACPTypes.PayableDetails memory payableDetails
    );

    /**
     * @dev Check if memo requires approval
     * @param memoId The memo ID
     * @return requiresApproval True if memo requires approval
     */
    function requiresApproval(uint256 memoId) external view returns (bool requiresApproval);

    /**
     * @dev Check if user can approve memo
     * @param memoId The memo ID
     * @param user The user address
     * @return canApprove True if user can approve the memo
     */
    function canApproveMemo(uint256 memoId, address user) external view returns (bool canApprove);

    /**
     * @dev Check if user can sign memo
     * @param memoId The memo ID
     * @param user The user address
     * @return canSign True if user can sign the memo
     */
    function isMemoSigner(uint256 memoId, address user) external view returns (bool canSign);

    /**
     * @dev Check if memo is payable
     * @param memoId The memo ID
     * @return isPayable True if memo is payable
     */
    function isPayable(uint256 memoId) external view returns (bool isPayable);

    /**
     * @dev Get memo approval status
     * @param memoId The memo ID
     * @return isApproved True if memo is approved
     * @return approvedBy Address that approved the memo
     * @return approvedAt Timestamp when memo was approved
     */
    function getMemoApprovalStatus(uint256 memoId) external view returns (
        bool isApproved,
        address approvedBy,
        uint256 approvedAt
    );

    /**
     * @dev Bulk approve memos
     * @param memoIds Array of memo IDs
     * @param approved Whether memos are approved
     * @param reason Reason for approval/rejection
     */
    function bulkApproveMemos(
        uint256[] calldata memoIds,
        bool approved,
        string calldata reason
    ) external;

    /**
     * @dev Update memo content (if allowed)
     * @param memoId The memo ID
     * @param newContent New content for the memo
     */
    function updateMemoContent(uint256 memoId, string calldata newContent) external;
}