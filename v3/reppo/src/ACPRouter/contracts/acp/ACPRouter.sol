// SPDX-License-Identifier: MIT
// Modular Agent Commerce Protocol - Breaking down accounts into jobs and jobs into memos
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IJobManager.sol";
import "./interfaces/IMemoManager.sol";
import "./interfaces/IPaymentManager.sol";
import "./interfaces/IAccountManager.sol";
import "./libraries/ACPTypes.sol";
import "hardhat/console.sol";

/**
 * @title ACPRouter
 * @dev Modular Agent Commerce Protocol contract with upgradeable patterns
 * @notice Manages accounts broken down into jobs, which are further broken down into memos
 */
contract ACPRouter is
    Initializable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;

    // Role definitions
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant MODULE_MANAGER_ROLE = keccak256("MODULE_MANAGER_ROLE");

    // Module addresses
    IAccountManager public accountManager;
    IJobManager public jobManager;
    IMemoManager public memoManager;
    IPaymentManager public paymentManager;

    // Global configuration
    IERC20 public defaultPaymentToken;
    uint256 public platformFeeBP; // 10000 = 100%
    address public platformTreasury;
    uint256 public evaluatorFeeBP;


    // Events
    event AccountCreated(
        uint256 indexed accountId,
        address indexed client,
        address indexed provider
    );
    
    event ModuleUpdated(
        string indexed moduleType,
        address indexed oldModule,
        address indexed newModule
    );

    event AccountStatusUpdated(
        uint256 indexed accountId,
        bool isActive
    );

    // Modifiers
    modifier accountExists(uint256 accountId) {
        require(address(accountManager) != address(0), "Account manager not set");
        require(accountManager.accountExists(accountId), "Account does not exist");
        _;
    }

    modifier onlyAccountParticipant(uint256 accountId) {
        require(address(accountManager) != address(0), "Account manager not set");
        require(
            accountManager.isAccountParticipant(accountId, _msgSender()),
            "Not authorized for this account"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initialize the contract
     * @param defaultPaymentToken_ Default ERC20 token for payments
     * @param platformFeeBP_ Platform fee in basis points
     * @param platformTreasury_ Address to receive platform fees
     * @param evaluatorFeeBP_ Evaluator fee in basis points
     */
    function initialize(
        address defaultPaymentToken_,
        uint256 platformFeeBP_,
        address platformTreasury_,
        uint256 evaluatorFeeBP_
    ) public initializer {
        require(defaultPaymentToken_ != address(0), "Zero address payment token");
        require(platformTreasury_ != address(0), "Zero address treasury");
        require(platformFeeBP_ <= 10000, "Platform fee too high");
        require(evaluatorFeeBP_ <= 10000, "Evaluator fee too high");

        __AccessControl_init();
        __ReentrancyGuard_init();
        __Pausable_init();

        // Setup roles
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _grantRole(ADMIN_ROLE, _msgSender());
        _grantRole(MODULE_MANAGER_ROLE, _msgSender());

        // Initialize configuration
        defaultPaymentToken = IERC20(defaultPaymentToken_);
        platformFeeBP = platformFeeBP_;
        platformTreasury = platformTreasury_;
        evaluatorFeeBP = evaluatorFeeBP_;
    }

    /**
     * @dev Create a new account
     * @param provider Address of the service provider
     * @param metadata IPFS hash or other metadata reference
     * @return accountId The ID of the created account
     */
    function createAccount(
        address provider,
        string calldata metadata
    ) public whenNotPaused returns (uint256) {
        require(address(accountManager) != address(0), "Account manager not set");
        return accountManager.createAccount(_msgSender(), provider, metadata);
    }

    /**
     * @dev Update account metadata
     * @param accountId The account ID
     * @param metadata New metadata
     */
    function updateAccountMetadata(
        uint256 accountId,
        string calldata metadata
    ) external accountExists(accountId) {
        require(address(accountManager) != address(0), "Account manager not set");
        accountManager.updateAccountMetadata(accountId, _msgSender(), metadata);
    }


    function createJob(
        address provider,
        address evaluator,
        uint256 expiredAt,
        address paymentToken,
        uint256 budget,
        string calldata metadata
    ) external returns (uint256) {
        require(provider != address(0), "Zero address provider");
        require(address(jobManager) != address(0), "Job manager not set");
        require(address(accountManager) != address(0), "Account manager not set");
        require(expiredAt > block.timestamp + 3 minutes, "Expiry too short");

        if (paymentToken == address(0)) {
            paymentToken = address(defaultPaymentToken);
        }
        require(_isERC20(paymentToken), "Invalid payment token");

        uint256 accountId = createAccount(provider, metadata);
        ACPTypes.Account memory account = accountManager.getAccount(accountId);
        require(account.isActive, "Account is not active");

        uint256 jobId = jobManager.createJob(
            accountId,
            account.client,
            account.provider,
            evaluator,
            _msgSender(),
            budget,
            IERC20(paymentToken),
            expiredAt
        );

        accountManager.incrementJobCount(accountId);

        return jobId;
    }

    /**
     * @dev Create a job for an account
     * @param accountId The account ID
     * @param evaluator Address of the evaluator (can be zero for client evaluation)
     * @param budget The job budget
     * @param paymentToken The payment token (zero address for default)
     * @param expiredAt Expiration timestamp for the job
     * @return jobId The ID of the created job
     */
    function createJobWithAccount(
        uint256 accountId,
        address evaluator,
        uint256 budget,
        address paymentToken,
        uint256 expiredAt
    ) external accountExists(accountId) onlyAccountParticipant(accountId) returns (uint256) {
        require(address(jobManager) != address(0), "Job manager not set");
        require(address(accountManager) != address(0), "Account manager not set");
        require(expiredAt > block.timestamp + 3 minutes, "Expiry too short");
        
        ACPTypes.Account memory account = accountManager.getAccount(accountId);
        require(account.isActive, "Account is not active");

        if (paymentToken == address(0)) {
            paymentToken = address(defaultPaymentToken);
        }
        require(_isERC20(paymentToken), "Invalid payment token");

        uint256 jobId = jobManager.createJob(
            accountId,
            account.client,
            account.provider,
            evaluator,
            _msgSender(),
            budget,
            IERC20(paymentToken),
            expiredAt
        );

        accountManager.incrementJobCount(accountId);
        return jobId;
    }

    /**
     * @dev Create a memo for a job
     * @param jobId The job ID
     * @param content Memo content
     * @param memoType Type of memo
     * @param isSecured Whether the memo is secured
     * @param nextPhase The next phase to transition to
     * @return memoId The ID of the created memo
     */
    function createMemo(
        uint256 jobId,
        string calldata content,
        ACPTypes.MemoType memoType,
        bool isSecured,
        ACPTypes.JobPhase nextPhase
    ) external returns (uint256) {
        require(address(memoManager) != address(0), "Memo manager not set");
        return memoManager.createMemo(jobId, _msgSender(), content, memoType, isSecured, nextPhase);
    }

    /**
     * @dev Get account details
     * @param accountId The account ID
     * @return account The account struct
     */
    function getAccount(uint256 accountId) external view accountExists(accountId) returns (ACPTypes.Account memory) {
        require(address(accountManager) != address(0), "Account manager not set");
        return accountManager.getAccount(accountId);
    }

    /**
     * @dev Update module addresses
     * @param moduleType Type of module ("account", "job", "memo", "payment")
     * @param moduleAddress New module address
     */
    function updateModule(
        string calldata moduleType,
        address moduleAddress
    ) external onlyRole(MODULE_MANAGER_ROLE) {
        require(moduleAddress != address(0), "Zero address module");

        address oldModule;
        
        if (keccak256(bytes(moduleType)) == keccak256(bytes("account"))) {
            oldModule = address(accountManager);
            accountManager = IAccountManager(moduleAddress);
        } else if (keccak256(bytes(moduleType)) == keccak256(bytes("job"))) {
            oldModule = address(jobManager);
            jobManager = IJobManager(moduleAddress);
        } else if (keccak256(bytes(moduleType)) == keccak256(bytes("memo"))) {
            oldModule = address(memoManager);
            memoManager = IMemoManager(moduleAddress);
        } else if (keccak256(bytes(moduleType)) == keccak256(bytes("payment"))) {
            oldModule = address(paymentManager);
            paymentManager = IPaymentManager(moduleAddress);
        } else {
            revert("Invalid module type");
        }

        emit ModuleUpdated(moduleType, oldModule, moduleAddress);
    }

    /**
     * @dev Update platform configuration
     * @param platformFeeBP_ New platform fee in basis points
     * @param platformTreasury_ New platform treasury address
     * @param evaluatorFeeBP_ New evaluator fee in basis points
     */
    function updatePlatformConfig(
        uint256 platformFeeBP_,
        address platformTreasury_,
        uint256 evaluatorFeeBP_
    ) external onlyRole(ADMIN_ROLE) {
        require(platformTreasury_ != address(0), "Zero address treasury");
        require(platformFeeBP_ <= 10000, "Platform fee too high");
        require(evaluatorFeeBP_ <= 10000, "Evaluator fee too high");

        platformFeeBP = platformFeeBP_;
        platformTreasury = platformTreasury_;
        evaluatorFeeBP = evaluatorFeeBP_;
    }

    /**
     * @dev Pause the contract
     */
    function pause() external onlyRole(ADMIN_ROLE) {
        _pause();
    }

    /**
     * @dev Unpause the contract
     */
    function unpause() external onlyRole(ADMIN_ROLE) {
        _unpause();
    }
    // Internal functions

    function _isERC20(address token) internal view returns (bool) {
        try IERC20(token).totalSupply() returns (uint256) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @dev Get phase names (compatibility with ACPSimple)
     * @return Array of phase names
     */
    function getPhases() public pure returns (string[7] memory) {
        return [
            "REQUEST",
            "NEGOTIATION", 
            "TRANSACTION",
            "EVALUATION",
            "COMPLETED",
            "REJECTED",
            "EXPIRED"
        ];
    }

    /**
     * @dev Set job budget with payment token
     * @param jobId The job ID
     * @param amount Budget amount
     * @param paymentToken Payment token address (zero for default)
     */
    function setBudgetWithPaymentToken(
        uint256 jobId,
        uint256 amount,
        address paymentToken
    ) external nonReentrant {
        require(address(jobManager) != address(0), "Job manager not set");
        
        if (paymentToken == address(0)) {
            paymentToken = address(defaultPaymentToken);
        }
        require(_isERC20(paymentToken), "Invalid payment token");

        jobManager.setJobBudget(jobId, amount, IERC20(paymentToken));
        
    }

    /**
     * @dev Set job budget (uses default payment token)
     * @param jobId The job ID
     * @param amount Budget amount
     */
    function setBudget(uint256 jobId, uint256 amount) external {
        require(address(jobManager) != address(0), "Job manager not set");
        
        address paymentToken = address(defaultPaymentToken);
        require(_isERC20(paymentToken), "Invalid payment token");

        jobManager.setJobBudget(jobId, amount, IERC20(paymentToken));
        
    }

    /**
     * @dev Update job phase with budget handling
     * @param jobId The job ID
     * @param newPhase New phase to transition to
     */
    function _updateJobPhase(uint256 jobId, ACPTypes.JobPhase newPhase, bool isApproved) internal nonReentrant {
        require(address(jobManager) != address(0), "Job manager not set");
        
        // Get current job details
        ACPTypes.Job memory job = jobManager.getJob(jobId);
        require(
            _msgSender() == job.client || 
            _msgSender() == job.provider ||
            _msgSender() == job.evaluator ||
            hasRole(ADMIN_ROLE, _msgSender()),
            "Not authorized to update phase"
        );

        // no update if job is already completed
        if(newPhase == ACPTypes.JobPhase.COMPLETED && job.phase == ACPTypes.JobPhase.COMPLETED) {
            return;
        }

        ACPTypes.JobPhase oldPhase = job.phase;
        // Handle phase transition logic
        if (oldPhase == ACPTypes.JobPhase.NEGOTIATION && newPhase == ACPTypes.JobPhase.TRANSACTION) {
            // Transfer budget to escrow when moving to transaction phase
            if (job.budget > 0) {
                job.jobPaymentToken.safeTransferFrom(job.client, address(paymentManager), job.budget);
                
                // Set escrow details in payment manager
                if (address(paymentManager) != address(0)) {
                    paymentManager.setEscrowDetails(job.id, job.budget, address(job.jobPaymentToken));
                }
            }
        } 

        if (job.phase == ACPTypes.JobPhase.EVALUATION && newPhase == ACPTypes.JobPhase.COMPLETED) {
            if (isApproved) {
                IJobManager(jobManager).updateJobPhase(jobId, ACPTypes.JobPhase.COMPLETED);
            } else {
                 IJobManager(jobManager).updateJobPhase(jobId, ACPTypes.JobPhase.REJECTED);
            }
        } else if (job.phase ==  ACPTypes.JobPhase.REQUEST && !isApproved) {

             IJobManager(jobManager).updateJobPhase(jobId,  ACPTypes.JobPhase.REJECTED);
        } else if (uint8(newPhase) > uint8(job.phase) ) {

            if (isApproved) {
                 IJobManager(jobManager).updateJobPhase(jobId, ACPTypes.JobPhase(newPhase));
            }
        }

        if (
            (oldPhase >= ACPTypes.JobPhase.TRANSACTION && oldPhase <= ACPTypes.JobPhase.EVALUATION) &&
            (newPhase == ACPTypes.JobPhase.COMPLETED || newPhase == ACPTypes.JobPhase.REJECTED)
        ) {
            _claimBudget(jobId);
        }

    }

    /**
     * @dev Claim budget with fee distribution
     * @param jobId The job ID
     */
    function claimBudget(uint256 jobId) external nonReentrant {
        require(address(jobManager) != address(0), "Job manager not set");
        
        ACPTypes.Job memory job = jobManager.getJob(jobId);
        
        // Check if job is expired
        if (job.phase < ACPTypes.JobPhase.TRANSACTION && block.timestamp > job.expiredAt) {
            jobManager.updateJobPhase(jobId, ACPTypes.JobPhase.EXPIRED);
        } else {
            _claimBudget(jobId);
        }
    }

    /**
     * @dev Internal function to handle budget claiming with fee distribution
     * @param jobId The job ID
     */
    function _claimBudget(uint256 jobId) internal {
        require(address(jobManager) != address(0), "Job manager not set");
        require(address(paymentManager) != address(0), "Payment manager not set");
        
        ACPTypes.Job memory job = jobManager.getJob(jobId);
        
        if (job.budget == 0) {
            return;
        }

        if (job.phase == ACPTypes.JobPhase.COMPLETED) {
            // Release payment to provider with fees
            paymentManager.releasePayment(
                job.id,
                job.provider,
                job.budget,
                job.evaluator,
                "Job completion payment"
            );
        } else {
            // Refund to client
            require(
                (job.phase < ACPTypes.JobPhase.EVALUATION && block.timestamp > job.expiredAt) ||
                job.phase == ACPTypes.JobPhase.REJECTED,
                "Unable to refund budget"
            );
            
            paymentManager.refundBudget(
                job.id,
                job.budget,
                job.client,
                "Job refund"
            );
        }
    }

    /**
     * @dev Create payable memo with payment details
     * @param jobId The job ID
     * @param content Memo content
     * @param token Payment token address
     * @param amount Payment amount
     * @param recipient Payment recipient
     * @param feeAmount Fee amount
     * @param feeType Fee type
     * @param memoType Memo type
     * @param expiredAt Expiration timestamp
     * @return memoId The created memo ID
     */
    function createPayableMemo(
        uint256 jobId,
        string calldata content,
        address token,
        uint256 amount,
        address recipient,
        uint256 feeAmount,
        ACPTypes.FeeType feeType,
        ACPTypes.MemoType memoType,
        uint256 expiredAt,
        bool isSecured,
        ACPTypes.JobPhase nextPhase
    ) external nonReentrant returns (uint256) {
        require(address(memoManager) != address(0), "Memo manager not set");
        require(address(paymentManager) != address(0), "Payment manager not set");
        require(
            amount > 0 || feeAmount > 0,
            "Either amount or fee amount must be greater than 0"
        );
        require(
            ACPTypes.isPayableMemoType(memoType),
            "Invalid payable memo type"
        );
        require(expiredAt == 0 || expiredAt > block.timestamp + 1 minutes, "Expired at must be in the future");

        if (amount > 0) {
            require(recipient != address(0), "Invalid recipient");
            require(token != address(0), "Token address required");
            require(_isERC20(token), "Token must be ERC20");
        }

        // Handle token transfers for PAYABLE_TRANSFER_ESCROW upfront
        // This way users only need to approve ACPRouter, not PaymentManager
        if (memoType == ACPTypes.MemoType.PAYABLE_TRANSFER_ESCROW || memoType == ACPTypes.MemoType.PAYABLE_TRANSFER || memoType == ACPTypes.MemoType.PAYABLE_NOTIFICATION) {
            // Transfer tokens from user to PaymentManager for escrow
            address feeToken = token != address(0) ? token : address(defaultPaymentToken);

            if (amount > 0) {
                IERC20(token).safeTransferFrom(_msgSender(), address(this), amount);
                IERC20(token).forceApprove(address(paymentManager), amount);

            }
            if (feeAmount > 0) {
                // Get the job's payment token for fee if token is not specified
                IERC20(feeToken).safeTransferFrom(_msgSender(), address(this), feeAmount);
                IERC20(feeToken).forceApprove(address(paymentManager), feeAmount);
            }
            if(feeToken == token) {
                IERC20(feeToken).forceApprove(address(paymentManager), feeAmount + amount);
            }
            else {
                IERC20(feeToken).forceApprove(address(paymentManager), feeAmount);
                IERC20(token).forceApprove(address(paymentManager), amount);

            }
        }

        ACPTypes.PayableDetails memory payableDetails = ACPTypes.PayableDetails({
            token: token,
            amount: amount,
            recipient: recipient,
            feeAmount: feeAmount,
            feeType: feeType,
            isExecuted: false,
            expiredAt: expiredAt
        });


        return memoManager.createPayableMemo(jobId, _msgSender(), content, memoType, isSecured, nextPhase, payableDetails, expiredAt);
    }

    /**
     * @dev Sign memo with approval logic
     * @param memoId The memo ID
     * @param isApproved Whether to approve or reject
     * @param reason Reason for the decision
     */
    function signMemo(
        uint256 memoId,
        bool isApproved,
        string calldata reason
    ) external {
        require(address(memoManager) != address(0), "Memo manager not set");
        require(address(paymentManager) != address(0), "Payment manager not set");
        
        // Get memo details to check if it's a payable memo
        (ACPTypes.Memo memory memo, ACPTypes.PayableDetails memory payableDetails) = IMemoManager(address(memoManager)).getMemoWithPayableDetails(memoId);
        
        // If this is a non-escrow payable memo and it's approved, handle token transfers
        if (isApproved && ACPTypes.isPayableMemoType(memo.memoType)) {
            // Determine who pays (for PAYABLE_REQUEST, signer pays; for PAYABLE_TRANSFER, sender pays)
            address payer = _msgSender();

            if (memo.memoType == ACPTypes.MemoType.PAYABLE_TRANSFER_ESCROW) {
                payer = address(this);
            }
            else if (memo.memoType == ACPTypes.MemoType.PAYABLE_TRANSFER || memo.memoType == ACPTypes.MemoType.PAYABLE_NOTIFICATION) {
                payer = memo.sender;
            }

            if (memo.memoType == ACPTypes.MemoType.PAYABLE_REQUEST) {
                
                // Pull tokens from payer to this contract
                if (payableDetails.amount > 0) {
                    IERC20(payableDetails.token).safeTransferFrom(payer, address(this), payableDetails.amount);
                    // Approve PaymentManager to spend tokens from this contract
                    IERC20(payableDetails.token).forceApprove(address(paymentManager), payableDetails.amount);

                }
                if (payableDetails.feeAmount > 0) {
                    address feeToken = payableDetails.token != address(0) ? payableDetails.token : address(defaultPaymentToken);
                    
                    IERC20(feeToken).safeTransferFrom(payer, address(this), payableDetails.feeAmount);
                    if (payableDetails.token == feeToken) {
                        IERC20(feeToken).forceApprove(address(paymentManager), payableDetails.feeAmount + payableDetails.amount);
                    }
                    else {
                        IERC20(feeToken).forceApprove(address(paymentManager), payableDetails.feeAmount);
                    }
                }

            }
        }
        // Sign the memo
        uint256 jobId = memoManager.signMemo(memoId, _msgSender(), isApproved, reason);

        _updateJobPhase(jobId, ACPTypes.JobPhase(memo.nextPhase), isApproved);
    }

    /**
     * @dev Get all memos for a job
     * @param jobId The job ID
     * @param offset Pagination offset
     * @param limit Pagination limit
     * @return memos Array of memos
     * @return total Total memo count
     */
    function getAllMemos(
        uint256 jobId,
        uint256 offset,
        uint256 limit
    ) external view returns (ACPTypes.Memo[] memory memos, uint256 total) {
        require(address(memoManager) != address(0), "Memo manager not set");
        return memoManager.getJobMemos(jobId, offset, limit);
    }

    /**
     * @dev Get memos for a specific phase
     * @param jobId The job ID
     * @param memoType The memo type to filter by
     * @param offset Pagination offset
     * @param limit Pagination limit
     * @return memos Array of memos
     * @return total Total memo count
     */
    function getMemosForPhase(
        uint256 jobId,
        ACPTypes.MemoType memoType,
        uint256 offset,
        uint256 limit
    ) external view returns (ACPTypes.Memo[] memory memos, uint256 total) {
        require(address(memoManager) != address(0), "Memo manager not set");
        return memoManager.getJobMemosByType(jobId, memoType, offset, limit);
    }

    /**
     * @dev Update evaluator fee
     * @param evaluatorFeeBP_ New evaluator fee in basis points
     */
    function updateEvaluatorFee(uint256 evaluatorFeeBP_) external onlyRole(ADMIN_ROLE) {
        require(evaluatorFeeBP_ <= 10000, "Evaluator fee too high");
        evaluatorFeeBP = evaluatorFeeBP_;
        
        // Update in payment manager if available
        if (address(paymentManager) != address(0)) {
            paymentManager.setPaymentConfig(platformFeeBP, evaluatorFeeBP_, platformTreasury);
        }
    }

    /**
     * @dev Check if user can sign memo (compatibility function)
     * @param account User address
     * @param jobId Job ID (for compatibility, we'll get job details)
     * @return Whether user can sign
     */
    function canSign(address account, uint256 jobId) public view returns (bool) {
        if (address(jobManager) == address(0)) return false;
        
        try jobManager.getJob(jobId) returns (ACPTypes.Job memory job) {
            return (
                job.client == account || 
                job.provider == account ||
                (job.evaluator == account && job.phase == ACPTypes.JobPhase.EVALUATION) ||
                (job.evaluator == address(0) && job.client == account && job.phase == ACPTypes.JobPhase.EVALUATION)
            );
        } catch {
            return false;
        }
    }

    /**
     * @dev Check if user is job evaluator
     * @param jobId The job ID
     * @param account User address
     * @return Whether user is evaluator
     */
    function isJobEvaluator(uint256 jobId, address account) public view returns (bool) {
        if (address(jobManager) == address(0)) return false;
        
        try jobManager.getJob(jobId) returns (ACPTypes.Job memory job) {
            bool canClientSign = job.evaluator == address(0) && account == job.client;
            return (account == job.evaluator || canClientSign);
        } catch {
            return false;
        }
    }

    event ClaimedEvaluatorFee(uint256 jobId, address indexed evaluator, uint256 evaluatorFee);
    event ClaimedProviderFee(uint256 jobId, address indexed provider, uint256 providerFee);
    event RefundedBudget(uint256 jobId, address indexed client, uint256 amount);

    /**
     * @dev Emergency withdrawal function
     * @param token Token to withdraw
     * @param amount Amount to withdraw
     */
    function emergencyWithdraw(
        address token,
        uint256 amount
    ) external onlyRole(ADMIN_ROLE) whenPaused {
        if (token == address(0)) {
            payable(_msgSender()).transfer(amount);
        } else {
            IERC20(token).safeTransfer(_msgSender(), amount);
        }
    }

    /**
     * @dev Authorize upgrade function for UUPS
     * @param newImplementation Address of the new implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}