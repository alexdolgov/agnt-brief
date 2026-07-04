// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "../interfaces/IMemoManager.sol";
import "../interfaces/IJobManager.sol";
import "../interfaces/IPaymentManager.sol";
import "../libraries/ACPTypes.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "hardhat/console.sol";

/**
 * @title MemoManager
 * @dev Module for managing memos within jobs
 */
contract MemoManager is 
    Initializable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    IMemoManager
{
    using SafeERC20 for IERC20;
    
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant ACP_CONTRACT_ROLE = keccak256("ACP_CONTRACT_ROLE");

    // Storage
    mapping(uint256 => ACPTypes.Memo) public memos;
    mapping(uint256 => uint256[]) public jobMemos; // jobId => memoIds
    mapping(uint256 => ACPTypes.PayableDetails) public payableDetails;
    mapping(uint256 => mapping(ACPTypes.MemoType => uint256[])) public jobMemosByType;
    
    uint256 public memoCounter;
    address public acpContract;
    address public jobManager;
    address public paymentManager;

    // Approval tracking
    mapping(uint256 => mapping(address => bool)) public memoApprovals;
    mapping(uint256 => uint256) public requiredApprovals;

    // Modifiers
    modifier onlyACP() {
        require(hasRole(ACP_CONTRACT_ROLE, _msgSender()), "Only ACP contract");
        _;
    }

    modifier memoExists(uint256 memoId) {
        require(memoId > 0 && memoId <= memoCounter, "Memo does not exist");
        _;
    }

    modifier canApproveMemoModifier(uint256 memoId, address sender) {
        require(canApproveMemo(memoId, sender), "Cannot approve memo");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initialize the MemoManager
     */
    function initialize(
        address acpContract_,
        address jobManager_,
        address paymentManager_
    ) public initializer {
        require(acpContract_ != address(0), "Zero address ACP contract");
        require(jobManager_ != address(0), "Zero address job manager");
        
        __AccessControl_init();
        __ReentrancyGuard_init();

        acpContract = acpContract_;
        jobManager = jobManager_;
        paymentManager = paymentManager_;
        memoCounter = 1000000000;

        // Setup roles
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _grantRole(ADMIN_ROLE, _msgSender());
        _grantRole(ACP_CONTRACT_ROLE, acpContract_);
    }

    /**
     * @dev Create a new memo
     */
    function createMemo(
        uint256 jobId,
        address sender,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase
    ) external override onlyACP nonReentrant returns (uint256 memoId) {
        return _createMemo(jobId, sender, content, memoType, isSecured, nextPhase);
    }

    function _createMemo(
        uint256 jobId,
        address sender,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase
    ) internal returns (uint256 memoId) {
        return _createMemoInternal(jobId, sender, content, memoType, isSecured, nextPhase, 0);
    }

    /**
     * @dev Internal function to create a memo
     */
    function _createMemoInternal(
        uint256 jobId,
        address sender,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase,
        uint256 expiredAt
    ) internal returns (uint256 memoId) {
        require(bytes(content).length > 0, "Empty content");
        require(ACPTypes.isValidMemoType(memoType), "Invalid memo type");
        require(_jobExists(jobId), "Job does not exist");

        // Get job details to validate authorization and phase
        ACPTypes.Job memory job = IJobManager(jobManager).getJob(jobId);
        
        // Authorization check: Only client or provider can create memo
        require(
            sender == job.client || sender == job.provider,
            "Only client or provider can create memo"
        );
        
        // Phase validation: Job should not be completed
        require(job.phase < ACPTypes.JobPhase.COMPLETED || ACPTypes.isNotificationMemoType(memoType), "Job is already completed");

        memoId = ++memoCounter;

        bool needsApproval = _requiresApproval(memoType, jobId);

        memos[memoId] = ACPTypes.Memo({
            id: memoId,
            jobId: jobId,
            sender: sender,
            content: content,
            memoType: memoType,
            createdAt: block.timestamp,
            isApproved: false,
            approvedBy: sender,
            approvedAt: 0,
            requiresApproval: needsApproval,
            metadata: "",
            isSecured: isSecured,
            nextPhase: nextPhase,
            expiredAt: expiredAt
        });

        // Add to job memos
        jobMemos[jobId].push(memoId);
        jobMemosByType[jobId][memoType].push(memoId);

        // Increment job memo count
        IJobManager(jobManager).incrementMemoCount(jobId);

        emit NewMemo(memoId, jobId, sender, memoType, nextPhase, content);

        if (
            nextPhase == ACPTypes.JobPhase.COMPLETED &&
            job.phase == ACPTypes.JobPhase.TRANSACTION &&
            sender == job.provider
        ) {
            IJobManager(jobManager).updateJobPhase(jobId, ACPTypes.JobPhase.EVALUATION);
        }

        
        return memoId;
    }

    /**
     * @dev Create a payable memo with payment details
     */
    function createPayableMemo(
        uint256 jobId,
        address sender,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase,
        ACPTypes.PayableDetails calldata payableDetails_,
        uint256 expiredAt
    ) external override onlyACP nonReentrant returns (uint256 memoId) {
        require(ACPTypes.isPayableMemoType(memoType), "Not a payable memo type");
        require(payableDetails_.amount > 0 || payableDetails_.feeAmount > 0, "No payment amount");
        require(payableDetails_.recipient != address(0), "Zero address recipient");
        require(payableDetails_.token != address(0), "Zero address token");

        memoId = _createMemoInternal(jobId, sender, content, memoType, isSecured, nextPhase, expiredAt);

        // Store payable details
        payableDetails[memoId] = payableDetails_;

        // Handle escrow for PAYABLE_TRANSFER_ESCROW
        if (memoType == ACPTypes.MemoType.PAYABLE_TRANSFER_ESCROW && paymentManager != address(0)) {
            IPaymentManager(paymentManager).processPayableTransferEscrowMemo(memoId, sender, payableDetails_);
        }

        // Handle transfer for PAYABLE_TRANSFER
        if ((memoType == ACPTypes.MemoType.PAYABLE_TRANSFER || memoType == ACPTypes.MemoType.PAYABLE_NOTIFICATION) && paymentManager != address(0)) {
            address provider = IJobManager(jobManager).getJob(memos[memoId].jobId).provider;
            IPaymentManager(paymentManager).executePayableTransfer(memoId, sender, payableDetails_, provider);
            ACPTypes.PayableDetails storage details = payableDetails[memoId];
            details.isExecuted = true;
        }

    }

    /**
     * @dev Approve or reject a memo
     */
    function approveMemo(
        uint256 memoId,
        address sender,
        bool approved,
        string calldata reason
    ) external override memoExists(memoId) canApproveMemoModifier(memoId, sender) nonReentrant {
        ACPTypes.Memo storage memo = memos[memoId];
        require(memo.requiresApproval, "Memo does not require approval");
        require(!memo.isApproved, "Memo already approved");
        require(!memoApprovals[memoId][sender], "Already voted");

        memoApprovals[memoId][sender] = true;

        if (approved) {
            memo.isApproved = true;
            memo.approvedBy = sender;
            memo.approvedAt = block.timestamp;

            // Execute payable memo if approved
            if (ACPTypes.isPayableMemoType(memo.memoType)) {
                _executePayableMemo(memoId, memo.sender);
            }
        }

        emit MemoSigned(memoId, _msgSender(), approved, reason);
    }

    function signMemo(
        uint256 memoId,
        address sender,
        bool isApproved,
        string calldata reason
    ) external override memoExists(memoId) nonReentrant returns (uint256 jobId) {
        ACPTypes.Memo storage memo = memos[memoId];
        ACPTypes.Job memory job = IJobManager(jobManager).getJob(memo.jobId);

        require(job.phase < ACPTypes.JobPhase.COMPLETED || ACPTypes.isNotificationMemoType(memo.memoType), "Job is already completed");
        require(isMemoSigner(memoId, sender), "Memo cannot be signed");

        if (memo.expiredAt > 0 && memo.expiredAt < block.timestamp) {
            revert("Memo expired");
        }

        if (memo.isApproved) {
            revert("Already signed");
        }

        // if this is evaluation phase, only evaluators can sign
        if (job.phase == ACPTypes.JobPhase.EVALUATION) {
            require(
                isJobEvaluator(memo.jobId, sender),
                "Only evaluators can sign"
            );
        } else if (
            !(job.phase == ACPTypes.JobPhase.TRANSACTION &&
                memo.nextPhase == ACPTypes.JobPhase.EVALUATION)
        ) {
            // For other phases, only counter party can sign
            require(sender != memo.sender, "Only counter party can sign");
        }

        memo.isApproved = isApproved;

        if (isApproved && ACPTypes.isPayableMemoType(memo.memoType)) {
            _executePayableMemo(memoId, sender);
        } else if(!isApproved && memo.memoType == ACPTypes.MemoType.PAYABLE_TRANSFER_ESCROW) {
            _refundEscrowedFunds(memoId, memo);
        }

        emit MemoSigned(memoId, sender, isApproved, reason);
        return memo.jobId;
    }

    /**
     * @dev Execute a payable memo (transfer funds)
     */
    function executePayableMemo(uint256 memoId) external override memoExists(memoId) nonReentrant {
        ACPTypes.Memo storage memo = memos[memoId];
        require(ACPTypes.isPayableMemoType(memo.memoType), "Not a payable memo");
        require(!memo.requiresApproval || memo.isApproved, "Memo not approved");
        
        _executePayableMemo(memoId, memo.sender);
    }

    /**
     * @dev Get memo details
     */
    function getMemo(uint256 memoId) external view override memoExists(memoId) returns (ACPTypes.Memo memory) {
        return memos[memoId];
    }

    /**
     * @dev Get all memos for a job
     */
    function getJobMemos(
        uint256 jobId,
        uint256 offset,
        uint256 limit
    ) external view override returns (ACPTypes.Memo[] memory memoArray, uint256 total) {
        uint256[] memory memoIds = jobMemos[jobId];
        total = memoIds.length;
        
        if (offset >= total) {
            return (new ACPTypes.Memo[](0), total);
        }

        uint256 end = offset + limit;
        if (end > total) {
            end = total;
        }

        uint256 length = end - offset;
        memoArray = new ACPTypes.Memo[](length);

        for (uint256 i = 0; i < length; i++) {
            memoArray[i] = memos[memoIds[offset + i]];
        }
    }

    /**
     * @dev Get memos by type for a job
     */
    function getJobMemosByType(
        uint256 jobId,
        ACPTypes.MemoType memoType,
        uint256 offset,
        uint256 limit
    ) external view override returns (ACPTypes.Memo[] memory memoArray, uint256 total) {
        uint256[] memory memoIds = jobMemosByType[jobId][memoType];
        total = memoIds.length;
        
        if (offset >= total) {
            return (new ACPTypes.Memo[](0), total);
        }

        uint256 end = offset + limit;
        if (end > total) {
            end = total;
        }

        uint256 length = end - offset;
        memoArray = new ACPTypes.Memo[](length);

        for (uint256 i = 0; i < length; i++) {
            memoArray[i] = memos[memoIds[offset + i]];
        }
    }

    /**
     * @dev Get payable details for a memo
     */
    function getPayableDetails(uint256 memoId) external view override memoExists(memoId) returns (ACPTypes.PayableDetails memory) {
        return payableDetails[memoId];
    }

    /**
     * @dev Check if memo requires approval
     */
    function requiresApproval(uint256 memoId) external view override memoExists(memoId) returns (bool) {
        return memos[memoId].requiresApproval;
    }

    /**
     * @dev Check if user can approve memo
     */
    function canApproveMemo(uint256 memoId, address user) public view override memoExists(memoId) returns (bool) {
        ACPTypes.Memo memory memo = memos[memoId];
        
        if (!memo.requiresApproval || memo.isApproved) {
            return false;
        }

        if (memoApprovals[memoId][user]) {
            return false; // Already voted
        }

        return isMemoSigner(memoId, user);
    }

    function isMemoSigner(uint256 memoId, address user) public view override memoExists(memoId) returns (bool) {
                // Get job and account info from job manager
        ACPTypes.Memo memory memo = memos[memoId];

        if (jobManager != address(0)) {
            try IJobManager(jobManager).getJob(memo.jobId) returns (ACPTypes.Job memory job) {
                // Job creator or provider, or account participants can approve
                return (
                    user == job.creator ||
                    user == job.provider ||
                    user == job.evaluator ||
                    hasRole(ADMIN_ROLE, user)
                );
            } catch {
                return hasRole(ADMIN_ROLE, user);
            }
        }

        return hasRole(ADMIN_ROLE, user);

    }

    function isJobEvaluator(uint256 jobId, address user) public view returns (bool) {
        ACPTypes.Job memory job = IJobManager(jobManager).getJob(jobId);
        return job.evaluator == user;
    }

    /**
     * @dev Check if memo is payable
     */
    function isPayable(uint256 memoId) external view override memoExists(memoId) returns (bool) {
        return ACPTypes.isPayableMemoType(memos[memoId].memoType);
    }

    /**
     * @dev Get memo approval status
     */
    function getMemoApprovalStatus(uint256 memoId) external view override memoExists(memoId) returns (
        bool isApproved,
        address approvedBy,
        uint256 approvedAt
    ) {
        ACPTypes.Memo memory memo = memos[memoId];
        return (memo.isApproved, memo.approvedBy, memo.approvedAt);
    }

    /**
     * @dev Bulk approve memos
     */
    function bulkApproveMemos(
        uint256[] calldata memoIds,
        bool approved,
        string calldata reason
    ) external override {
        for (uint256 i = 0; i < memoIds.length; i++) {
            uint256 memoId = memoIds[i];
            if (
                memoId > 0 && 
                memoId <= memoCounter && 
                canApproveMemo(memoId, _msgSender()) &&
                memos[memoId].requiresApproval &&
                !memos[memoId].isApproved &&
                !memoApprovals[memoId][_msgSender()]
            ) {
                memoApprovals[memoId][_msgSender()] = true;
                
                if (approved) {
                    ACPTypes.Memo storage memo = memos[memoId];
                    memo.isApproved = true;
                    memo.approvedBy = _msgSender();
                    memo.approvedAt = block.timestamp;

                    // Execute payable memo if approved
                    if (ACPTypes.isPayableMemoType(memo.memoType)) {
                        _executePayableMemo(memoId, memo.sender);
                    }
                }

                emit MemoSigned(memoId, _msgSender(), approved, reason);
            }
        }
    }

    /**
     * @dev Update memo content (if allowed)
     */
    function updateMemoContent(uint256 memoId, string calldata newContent) external override memoExists(memoId) {
        ACPTypes.Memo storage memo = memos[memoId];
        require(memo.sender == _msgSender() || hasRole(ADMIN_ROLE, _msgSender()), "Cannot update memo");
        require(!memo.isApproved, "Cannot update approved memo");
        require(bytes(newContent).length > 0, "Empty content");

        memo.content = newContent;
    }

    /**
     * @dev Update contract addresses
     */
    function updateContracts(
        address acpContract_,
        address jobManager_,
        address paymentManager_
    ) external onlyRole(ADMIN_ROLE) {
        if (acpContract_ != address(0)) {
            _revokeRole(ACP_CONTRACT_ROLE, acpContract);
            _grantRole(ACP_CONTRACT_ROLE, acpContract_);
            acpContract = acpContract_;
        }
        
        if (jobManager_ != address(0)) {
            jobManager = jobManager_;
        }
        
        if (paymentManager_ != address(0)) {
            paymentManager = paymentManager_;
        }
    }

    // Internal functions
    function _executePayableMemo(uint256 memoId, address sender) internal {
        ACPTypes.PayableDetails storage details = payableDetails[memoId];
        require(details.amount > 0 || details.feeAmount > 0, "No amount to transfer");

        if (!details.isExecuted) {
            address provider = IJobManager(jobManager).getJob(memos[memoId].jobId).provider;
            details.isExecuted = true;

            if (paymentManager != address(0)) {
                IPaymentManager(paymentManager).executePayableTransfer(memoId, sender, details, provider);
            }
            ACPTypes.Memo storage memo = memos[memoId];
            emit PayableMemoExecuted(memoId, memo.jobId, _msgSender(), details.amount);
        }
        else {
            return;
        }

    }

    function _requiresApproval(ACPTypes.MemoType memoType, uint256 /* jobId */) internal pure returns (bool) {
        // Payable memos always require approval
        if (ACPTypes.isPayableMemoType(memoType)) {
            return true;
        }

        return false;
    }

    function _jobExists(uint256 jobId) internal view returns (bool) {
        if (jobManager == address(0)) {
            return true; // Skip validation if no job manager
        }
        
        try IJobManager(jobManager).getJob(jobId) returns (ACPTypes.Job memory) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @dev Set approval requirements for memo types
     */
    function setApprovalRequirements(
        ACPTypes.MemoType memoType,
        uint256 requiredApprovals_
    ) external onlyRole(ADMIN_ROLE) {
        require(ACPTypes.isValidMemoType(memoType), "Invalid memo type");
        requiredApprovals[uint256(memoType)] = requiredApprovals_;
    }

    /**
     * @dev Emergency memo approval override
     */
    function emergencyApproveMemo(uint256 memoId) external onlyRole(ADMIN_ROLE) memoExists(memoId) {
        ACPTypes.Memo storage memo = memos[memoId];
        memo.isApproved = true;
        memo.approvedBy = _msgSender();
        memo.approvedAt = block.timestamp;

        emit MemoSigned(memoId, _msgSender(), true, "Emergency approval");

        if (ACPTypes.isPayableMemoType(memo.memoType)) {
            _executePayableMemo(memoId, memo.sender);
        }
    }

    /**
     * @dev Withdraw escrowed funds (compatibility with ACPSimple)
     * @param memoId The memo ID
     */
    function withdrawEscrowedFunds(uint256 memoId) external memoExists(memoId) nonReentrant {
        ACPTypes.Memo storage memo = memos[memoId];
        ACPTypes.PayableDetails storage details = payableDetails[memoId];
        
        require(memo.memoType == ACPTypes.MemoType.PAYABLE_TRANSFER_ESCROW, "Not an escrow memo");
        require(memo.sender == _msgSender(), "Only memo sender can withdraw");
        require(!details.isExecuted, "Already executed");
        
        bool canWithdraw = false;
        
        // Allow withdrawal if memo is expired
        if (details.expiredAt > 0 && details.expiredAt < block.timestamp) {
            canWithdraw = true;
        }
        
        // Allow withdrawal if job is rejected or expired (check via job manager)
        if (jobManager != address(0)) {
            try IJobManager(jobManager).getJob(memo.jobId) returns (ACPTypes.Job memory job) {
                if (job.phase == ACPTypes.JobPhase.REJECTED || job.phase == ACPTypes.JobPhase.EXPIRED) {
                    canWithdraw = true;
                }
            } catch {
                // If job doesn't exist, allow withdrawal
                canWithdraw = true;
            }
        }
        
        require(canWithdraw, "Cannot withdraw funds yet");
        
        _refundEscrowedFunds(memoId, memo);
    }

    /**
     * @dev Internal function to refund escrowed funds
     * @param memoId The memo ID
     * @param memo The memo struct
     */
    function _refundEscrowedFunds(
        uint256 memoId, 
        ACPTypes.Memo storage memo 
    ) internal {
        require(memo.memoType == ACPTypes.MemoType.PAYABLE_TRANSFER_ESCROW, "Not a payable transfer memo");
        ACPTypes.PayableDetails storage details = payableDetails[memoId];
        require(!details.isExecuted, "Memo already executed");

        // Use payment manager to handle refund if available
        if (paymentManager != address(0)) {
            IPaymentManager(paymentManager).refundEscrowedMemoFunds(
                memoId,
                memo.sender,
                details.token,
                details.amount,
                details.feeAmount
            );
        }
        
        // Mark as executed to prevent double withdrawal
        details.isExecuted = true;
        
        emit PayableFundsRefunded(memo.jobId, memoId, memo.sender, details.token, details.amount);
        
        if (details.feeAmount > 0) {
            emit PayableFeeRefunded(memo.jobId, memoId, memo.sender, details.token, details.feeAmount);
        }
    }

    event PayableFundsRefunded(
        uint256 indexed jobId,
        uint256 indexed memoId,
        address indexed sender,
        address token,
        uint256 amount
    );

    event PayableFeeRefunded(
        uint256 indexed jobId,
        uint256 indexed memoId,
        address indexed sender,
        address token,
        uint256 amount
    );

    /**
     * @dev Get memo with payable details
     * @param memoId The memo ID
     * @return memo The memo struct
     * @return details The payable details
     */
    function getMemoWithPayableDetails(uint256 memoId) external view override returns (
        ACPTypes.Memo memory memo,
        ACPTypes.PayableDetails memory details
    ) {
        memo = memos[memoId];
        details = payableDetails[memoId];
    }

    /**
     * @dev Authorize upgrade function for UUPS
     * @param newImplementation Address of the new implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}