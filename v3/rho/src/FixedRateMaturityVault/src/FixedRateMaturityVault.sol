// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

/**
 * @title FixedRateMaturityVault
 * @notice Fixed-rate maturity vault with queue-based withdrawal system
 *         - Users deposit underlying tokens and receive fTOKEN based on fixYield
 *         - Contract calculates fyAmount based on fixYield and time remaining
 *         - Withdrawals are queued and processed by authorized processors
 *         - 1 fTOKEN = 1 underlying token on/after maturityxa
 *         - EIP-712 signed quotes with fixYield parameter
 *         - Two-role access control: ISSUER and WITHDRAWAL_QUEUE_PROCESSOR
 */
contract FixedRateMaturityVault is ERC20, EIP712, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // -------- Roles --------
    bytes32 public constant ISSUER_ROLE = keccak256("ISSUER_ROLE");
    bytes32 public constant WITHDRAWAL_QUEUE_PROCESSOR_ROLE = keccak256("WITHDRAWAL_QUEUE_PROCESSOR_ROLE");
    bytes32 public constant ASSET_MANAGER_ROLE = keccak256("ASSET_MANAGER_ROLE");
    
    mapping(bytes32 => mapping(address => bool)) public roles;

    // -------- Immutable config --------
    uint256 public immutable maturityTimestamp;
    IERC20 public immutable underlyingToken;
    uint8 private immutable _underlyingDecimals;

    // -------- Parameters (issuer-tunable) --------
    address public quoteSigner;      // backend signer for quotes
    uint256 public faceCap;          // optional max total face (totalSupply) allowed; 0 means unbounded
    bool    public depositsPaused;   // emergency stop for new deposits

    // -------- Quote validation parameters --------
    uint256 public maxQuoteAge;      // maximum age of quote in seconds
    uint256 public minDepositAmount; // minimum deposit amount per transaction
    uint256 public maxDepositAmount; // maximum deposit amount per transaction
    uint256 public maxDepositPerDay; // maximum deposit per user per day

    // -------- Rho routing / liquidity policy --------
    address public rhoTarget;                 // allowlisted Rho endpoint (EOA or contract)
    uint256 public minLiquidityBufferBps = 1000; // keep >=10% idle as buffer

    // -------- Replay protection for quotes --------
    mapping(address => mapping(uint256 => bool)) public usedNonce;

    // -------- Daily deposit tracking --------
    mapping(address => uint256) public dailyDeposits;
    mapping(address => uint256) public lastDepositDay;

    // -------- Withdrawal Queue System --------
    struct WithdrawalRequest {
        address user;
        uint256 fyAmount;
        uint256 underlyingAmount;
        uint256 timestamp;
        bool processed;
    }
    
    mapping(uint256 => WithdrawalRequest) public withdrawalQueue;
    uint256 public queueFront;        // Next request to be processed
    uint256 public queueBack;         // Next available slot
    uint256 public pendingWithdrawals; // Total pending withdrawal amount
    
    // -------- User withdrawal tracking --------
    mapping(address => uint256) public userPendingWithdrawals;

    // -------- Constants --------
    uint256 public constant BPS_DENOMINATOR = 10_000;
    uint256 public constant SECONDS_PER_YEAR = 365 days;
    uint256 public constant DEPOSIT_BLOCK_PERIOD = 24 hours; // Block deposits 24 hours before maturity

    // -------- EIP-712 Quote (updated structure) --------
    bytes32 public constant QUOTE_TYPEHASH = keccak256(
        "Quote(address userAddress,uint256 depositAmount,uint256 fixYield,uint256 maturityTimestamp,uint256 quoteTimestamp,uint256 nonce)"
    );
    
    // TODO: Future enhancement - range quotes for execution flexibility
    // bytes32 public constant QUOTE_TYPEHASH = keccak256(
    //   "Quote(address userAddress,uint256 minAmount,uint256 maxAmount,uint256 fixYield,uint256 maturityTimestamp,uint256 quoteTimestamp,uint256 nonce)"
    // );
    // In deposit():
    // require(depositAmount >= minAmount && depositAmount <= maxAmount, "amount out of range");

    // -------- Events --------
    event Deposit(address indexed user, uint256 tokenIn, uint256 fyMinted, uint256 nonce, uint256 fixYieldBps, uint256 quoteTimestamp);
    event WithdrawalRequested(address indexed user, uint256 requestId, uint256 fyAmount, uint256 underlyingAmount);
    event WithdrawalProcessed(address indexed user, uint256 requestId, uint256 underlyingAmount, address processor);
    event DepositsPausedSet(bool paused);
    event QuoteSignerSet(address oldSigner, address newSigner);
    event FaceCapSet(uint256 oldCap, uint256 newCap);
    event RoleGranted(bytes32 indexed role, address indexed account);
    event RoleRevoked(bytes32 indexed role, address indexed account);
    event MaxQuoteAgeSet(uint256 oldAge, uint256 newAge);
    event MinDepositAmountSet(uint256 oldAmount, uint256 newAmount);
    event MaxDepositAmountSet(uint256 oldAmount, uint256 newAmount);
    event MaxDepositPerDaySet(uint256 oldAmount, uint256 newAmount);
    event RhoTargetSet(address indexed oldTarget, address indexed newTarget);
    event MinLiquidityBufferBpsSet(uint256 oldBps, uint256 newBps);
    event MovedToRho(uint256 amount);
    event PulledFromRho(uint256 amount);

    // -------- Modifiers --------
    modifier onlyRole(bytes32 role) {
        require(roles[role][msg.sender], "AccessControl: caller does not have required role");
        _;
    }

    // -------- Constructor --------
    constructor(
        address _underlyingToken,
        uint256 _maturityTimestamp,
        address _quoteSigner,
        string memory nameSuffix, // e.g., "2025-06-30"
        address _issuer
    )
        ERC20(
            string(abi.encodePacked(IERC20Metadata(_underlyingToken).symbol(), " Fixed ", nameSuffix)),
            string(abi.encodePacked("f", IERC20Metadata(_underlyingToken).symbol(), "-", nameSuffix))
        )
        EIP712("FixedRateMaturityVault", "1")
    {
        require(_underlyingToken != address(0), "bad underlying token");
        require(_maturityTimestamp > block.timestamp, "maturity in past");
        require(_quoteSigner != address(0), "bad signer");
        require(_issuer != address(0), "bad issuer");

        underlyingToken = IERC20(_underlyingToken);
        maturityTimestamp = _maturityTimestamp;
        quoteSigner = _quoteSigner;

        _underlyingDecimals = IERC20Metadata(_underlyingToken).decimals();

        faceCap = 0;
        depositsPaused = false;

        maxQuoteAge = 5 minutes;
        // Scale defaults to underlying units (yUSD=6)
        minDepositAmount = 100 * (10 ** _underlyingDecimals);
        maxDepositAmount = 1_000 * (10 ** _underlyingDecimals);
        maxDepositPerDay = 10_000 * (10 ** _underlyingDecimals);

        _grantRole(ISSUER_ROLE, _issuer);
    }

    // -------- Role Management --------
    function _grantRole(bytes32 role, address account) internal {
        roles[role][account] = true;
        emit RoleGranted(role, account);
    }

    function grantRole(bytes32 role, address account) external onlyRole(ISSUER_ROLE) {
        require(account != address(0), "bad account");
        _grantRole(role, account);
    }

    function revokeRole(bytes32 role, address account) external onlyRole(ISSUER_ROLE) {
        require(account != address(0), "bad account");
        roles[role][account] = false;
        emit RoleRevoked(role, account);
    }

    function hasRole(bytes32 role, address account) external view returns (bool) {
        return roles[role][account];
    }

    // -------- Views --------

    /// @notice Current underlying token this contract holds.
    function underlyingHeld() public view returns (uint256) {
        return underlyingToken.balanceOf(address(this));
    }

    /// @notice Total liability owed by the vault right now.
    /// @dev Includes outstanding fTOKEN supply + queued redemptions (burned from supply but tracked in pendingWithdrawals).
    function totalLiability() external view returns (uint256) {
        return totalSupply() + pendingWithdrawals;
    }

    /// @notice Available assets minus pending withdrawals.
    function freeAssets() public view returns (uint256) {
        uint256 totalAssets = underlyingHeld();
        uint256 pending = pendingWithdrawals;
        return totalAssets > pending ? totalAssets - pending : 0;
    }

    /// @notice Get queue statistics.
    function getQueueStats() external view returns (uint256 front, uint256 back, uint256 pending) {
        return (queueFront, queueBack, pendingWithdrawals);
    }

    /// @notice Get withdrawal request details.
    function getWithdrawalRequest(uint256 requestId) external view returns (
        address user,
        uint256 fyAmount,
        uint256 underlyingAmount,
        uint256 timestamp,
        bool processed
    ) {
        WithdrawalRequest memory request = withdrawalQueue[requestId];
        return (request.user, request.fyAmount, request.underlyingAmount, request.timestamp, request.processed);
    }

    /// @notice True if the given nonce has been consumed for `user`.
    function quoteUsed(address user, uint256 nonce) external view returns (bool) {
        return usedNonce[user][nonce];
    }

    /// @notice Calculate fyAmount based on fixYield and time remaining to maturity
    /// @dev This is the core function that calculates the exact amount to mint
    function calculateFyAmount(
        uint256 depositAmount,
        uint256 fixYieldBps,
        uint256 quoteTimestamp
    ) public view returns (uint256) {
        require(quoteTimestamp <= maturityTimestamp, "quote after maturity");

        uint256 timeRemaining = maturityTimestamp - quoteTimestamp;
        uint256 annualYieldBps = (fixYieldBps * timeRemaining) / SECONDS_PER_YEAR;

        uint256 yieldAmount = (depositAmount * annualYieldBps) / BPS_DENOMINATOR;
        return depositAmount + yieldAmount;
    }

    /// @notice Recoverable EIP-712 digest for a quote
    function hashQuote(
        address userAddress,
        uint256 depositAmount,
        uint256 fixYield,
        uint256 qMaturityTimestamp,
        uint256 quoteTimestamp,
        uint256 nonce
    ) external view returns (bytes32) {
        bytes32 structHash = keccak256(
            abi.encode(
                QUOTE_TYPEHASH,
                userAddress,
                depositAmount,
                fixYield,
                qMaturityTimestamp,
                quoteTimestamp,
                nonce
            )
        );
        return _hashTypedDataV4(structHash);
    }

    /// @notice Check if user can deposit the given amount today.
    function canDepositToday(address user, uint256 amount) external view returns (bool) {
        uint256 currentDay = block.timestamp / 1 days;
        
        // If it's a new day, reset the counter
        if (lastDepositDay[user] != currentDay) {
            return amount <= maxDepositPerDay;
        }
        
        // Check if adding this amount would exceed daily limit
        return dailyDeposits[user] + amount <= maxDepositPerDay;
    }

    /// @notice Get user's remaining daily deposit allowance.
    function getRemainingDailyDeposit(address user) external view returns (uint256) {
        uint256 currentDay = block.timestamp / 1 days;
        
        // If it's a new day, reset the counter
        if (lastDepositDay[user] != currentDay) {
            return maxDepositPerDay;
        }
        
        // Return remaining allowance
        if (dailyDeposits[user] >= maxDepositPerDay) {
            return 0;
        }
        return maxDepositPerDay - dailyDeposits[user];
    }

    /// @notice Check if deposits are blocked due to 24-hour pre-maturity restriction.
    function isDepositBlocked() public view returns (bool) {
        return block.timestamp >= maturityTimestamp - DEPOSIT_BLOCK_PERIOD;
    }

    /// @notice Return decimals to match underlying token
    function decimals() public view override returns (uint8) {
        return _underlyingDecimals;
    }

    // -------- Admin (issuer) controls --------

    /// @notice Pause or unpause new deposits (withdrawals remain available after maturity).
    function setDepositsPaused(bool paused) external onlyRole(ISSUER_ROLE) {
        depositsPaused = paused;
        emit DepositsPausedSet(paused);
    }

    /// @notice Update the trusted quote signer.
    function setQuoteSigner(address newSigner) external onlyRole(ISSUER_ROLE) {
        require(newSigner != address(0), "bad signer");
        address old = quoteSigner;
        quoteSigner = newSigner;
        emit QuoteSignerSet(old, newSigner);
    }

    /// @notice Optional cap on total face (totalSupply). 0 disables the cap.
    function setFaceCap(uint256 newCap) external onlyRole(ISSUER_ROLE) {
        require(newCap == 0 || newCap >= totalSupply(), "cap < supply");
        uint256 old = faceCap;
        faceCap = newCap;
        emit FaceCapSet(old, newCap);
    }

    /// @notice Set maximum age of quotes in seconds.
    function setMaxQuoteAge(uint256 newAge) external onlyRole(ISSUER_ROLE) {
        require(newAge > 0, "age must be > 0");
        uint256 old = maxQuoteAge;
        maxQuoteAge = newAge;
        emit MaxQuoteAgeSet(old, newAge);
    }

    /// @notice Set minimum deposit amount per transaction.
    function setMinDepositAmount(uint256 newAmount) external onlyRole(ISSUER_ROLE) {
        require(newAmount > 0, "min = 0");
        require(newAmount <= maxDepositAmount, "min > max per tx");
        uint256 old = minDepositAmount;
        minDepositAmount = newAmount;
        emit MinDepositAmountSet(old, newAmount);
    }

    /// @notice Set maximum deposit amount per transaction.
    function setMaxDepositAmount(uint256 newAmount) external onlyRole(ISSUER_ROLE) {
        require(newAmount > minDepositAmount, "max must be > min");
        require(newAmount <= maxDepositPerDay, "max per tx > max per day");
        uint256 old = maxDepositAmount;
        maxDepositAmount = newAmount;
        emit MaxDepositAmountSet(old, newAmount);
    }

    /// @notice Set maximum deposit amount per user per day.
    function setMaxDepositPerDay(uint256 newAmount) external onlyRole(ISSUER_ROLE) {
        require(newAmount >= maxDepositAmount, "day cap < tx cap");
        uint256 old = maxDepositPerDay;
        maxDepositPerDay = newAmount;
        emit MaxDepositPerDaySet(old, newAmount);
    }

    // -------- Core flows --------

    /**
     * @notice Deposit underlying token per a signed quote and mint fTOKEN based on fixYield.
     * @dev Contract calculates fyAmount based on fixYield and time remaining to maturity.
     */
    function deposit(
        uint256 depositAmount,
        uint256 fixYield,
        uint256 qMaturityTimestamp,
        uint256 quoteTimestamp,
        uint256 nonce,
        bytes memory signature
    ) external nonReentrant {
        require(!depositsPaused, "deposits paused");
        require(block.timestamp < maturityTimestamp, "matured");
        require(!isDepositBlocked(), "deposits blocked 24h before maturity");
        require(!usedNonce[msg.sender][nonce], "nonce used");
        require(depositAmount > 0, "zero");

        // Enhanced quote validation
        require(depositAmount >= minDepositAmount, "deposit too small");
        require(depositAmount <= maxDepositAmount, "deposit too large");
        
        // Quote age validation
        require(quoteTimestamp <= block.timestamp, "quote from future");
        require(block.timestamp - quoteTimestamp <= maxQuoteAge, "quote too old");
        
        // Maturity validation
        require(qMaturityTimestamp == maturityTimestamp, "maturity mismatch");
        
        // Daily deposit limit validation
        uint256 currentDay = block.timestamp / 1 days;
        if (lastDepositDay[msg.sender] != currentDay) {
            // New day, reset counter
            dailyDeposits[msg.sender] = 0;
            lastDepositDay[msg.sender] = currentDay;
        }
        require(dailyDeposits[msg.sender] + depositAmount <= maxDepositPerDay, "daily limit exceeded");

        // Verify EIP-712 signature
        bytes32 structHash = keccak256(
            abi.encode(
                QUOTE_TYPEHASH,
                msg.sender,
                depositAmount,    // NEW
                fixYield,
                qMaturityTimestamp,
                quoteTimestamp,
                nonce
            )
        );
        bytes32 digest = _hashTypedDataV4(structHash);
        address recovered = ECDSA.recover(digest, signature);
        require(recovered == quoteSigner, "bad signer");

        // CONTRACT CALCULATES fyAmount based on fixYield and current time
        uint256 fyAmount = calculateFyAmount(depositAmount, fixYield, quoteTimestamp);

        // Optional face cap
        if (faceCap != 0) {
            require(totalSupply() + fyAmount <= faceCap, "face cap");
        }

        // Effects
        usedNonce[msg.sender][nonce] = true;
        dailyDeposits[msg.sender] += depositAmount;

        // Pull underlying token in full
        underlyingToken.safeTransferFrom(msg.sender, address(this), depositAmount);

        // Mint fTOKEN (calculated amount) to user
        _mint(msg.sender, fyAmount);

        emit Deposit(msg.sender, depositAmount, fyAmount, nonce, fixYield, quoteTimestamp);
    }

    /**
     * @notice Request withdrawal of all fTOKEN for underlying token at/after maturity.
     * @dev This queues the withdrawal request instead of immediate execution.
     * @dev Only allows full balance withdrawal - partial withdrawals not supported after maturity.
     */
    function requestWithdrawal() external nonReentrant {
        require(block.timestamp >= maturityTimestamp, "not matured");
        
        uint256 fyAmount = balanceOf(msg.sender);
        require(fyAmount > 0, "no balance to withdraw");

        // Burn fTOKEN immediately
        _burn(msg.sender, fyAmount);

        // Calculate underlying amount (1:1 at maturity)
        uint256 underlyingAmount = fyAmount;

        // Create withdrawal request
        uint256 requestId = queueBack;
        withdrawalQueue[requestId] = WithdrawalRequest({
            user: msg.sender,
            fyAmount: fyAmount,
            underlyingAmount: underlyingAmount,
            timestamp: block.timestamp,
            processed: false
        });

        // Update queue state
        queueBack++;
        pendingWithdrawals += underlyingAmount;
        userPendingWithdrawals[msg.sender] += underlyingAmount;

        emit WithdrawalRequested(msg.sender, requestId, fyAmount, underlyingAmount);
    }

    /**
     * @notice Process withdrawal request by authorized processor.
     * @dev This function can be called by WITHDRAWAL_QUEUE_PROCESSOR_ROLE.
     */
    function processWithdrawal(uint256 requestId) external nonReentrant onlyRole(WITHDRAWAL_QUEUE_PROCESSOR_ROLE) {
        require(requestId == queueFront, "not next in queue");
        require(requestId < queueBack, "invalid request id");

        WithdrawalRequest storage request = withdrawalQueue[requestId];
        require(!request.processed && request.user != address(0), "bad request");

        request.processed = true;
        pendingWithdrawals -= request.underlyingAmount;
        userPendingWithdrawals[request.user] -= request.underlyingAmount;
        underlyingToken.safeTransfer(request.user, request.underlyingAmount);

        unchecked { queueFront++; }
        emit WithdrawalProcessed(request.user, requestId, request.underlyingAmount, msg.sender);
    }

    /**
     * @notice Process multiple withdrawal requests in batch.
     * @dev Gas efficient way to process multiple requests.
     */
    function processWithdrawalsBatch(uint256[] calldata requestIds) external nonReentrant onlyRole(WITHDRAWAL_QUEUE_PROCESSOR_ROLE) {
        uint256 expected = queueFront;
        for (uint256 i = 0; i < requestIds.length; ) {
            uint256 requestId = requestIds[i];
            require(requestId == expected, "non-contiguous batch");
            require(requestId < queueBack, "invalid request id");

            WithdrawalRequest storage request = withdrawalQueue[requestId];
            require(!request.processed && request.user != address(0), "bad request");

            request.processed = true;
            pendingWithdrawals -= request.underlyingAmount;
            userPendingWithdrawals[request.user] -= request.underlyingAmount;
            underlyingToken.safeTransfer(request.user, request.underlyingAmount);

            unchecked { ++expected; ++i; }
            emit WithdrawalProcessed(request.user, requestId, request.underlyingAmount, msg.sender);
        }
        queueFront = expected;
    }

    // -------- Rho Management (Issuer + Asset Manager) --------

    /// @notice Set the allowlisted Rho recipient (strategy)
    function setRhoTarget(address target) external onlyRole(ISSUER_ROLE) {
        require(target != address(0), "rho target=0");
        address old = rhoTarget;
        rhoTarget = target;
        emit RhoTargetSet(old, target);
    }

    /// @notice Set the minimum idle liquidity buffer, in bps of liability
    function setMinLiquidityBufferBps(uint256 bps) external onlyRole(ISSUER_ROLE) {
        require(bps <= BPS_DENOMINATOR, "bps>100%");
        uint256 old = minLiquidityBufferBps;
        minLiquidityBufferBps = bps;
        emit MinLiquidityBufferBpsSet(old, bps);
    }

    /// @notice Move free assets to the allowlisted Rho target (by Asset Manager)
    /// @dev Keeps a buffer so processors/ops can service withdrawals/liquidity needs.
    function moveToRho(uint256 amount) external onlyRole(ASSET_MANAGER_ROLE) nonReentrant {
        require(rhoTarget != address(0), "rho not set");
        require(amount > 0, "zero amount");

        // Buffer against current liability
        uint256 liability = totalSupply() + pendingWithdrawals;
        uint256 bufferMin = (liability * minLiquidityBufferBps) / BPS_DENOMINATOR;

        uint256 free = freeAssets();
        require(free > bufferMin, "no free above buffer");
        require(amount <= free - bufferMin, "exceeds buffer");

        underlyingToken.safeTransfer(rhoTarget, amount);
        emit MovedToRho(amount);
    }

    /// @notice Allow Rho to push underlying back into the vault
    /// @dev Rho must approve(this) first; callable only by rhoTarget
    function depositUnderlyingFromRho(uint256 amount) external nonReentrant {
        require(msg.sender == rhoTarget, "not rho");
        require(amount > 0, "zero amount");
        underlyingToken.safeTransferFrom(msg.sender, address(this), amount);
        emit PulledFromRho(amount);
    }

    // -------- Asset Management (Issuer only) --------

    /**
     * @notice Withdraw underlying tokens from the contract (for Rho operations).
     * @dev Only ISSUER_ROLE can call this function.
     * @dev Cannot withdraw more than freeAssets() to ensure vault solvency.
     */
    function withdrawUnderlying(uint256 amount, address to) external onlyRole(ISSUER_ROLE) nonReentrant {
        require(to != address(0), "bad recipient");
        require(amount > 0, "zero amount");
        require(amount <= freeAssets(), "insufficient free assets");
        
        underlyingToken.safeTransfer(to, amount);
    }

    /**
     * @notice Deposit underlying tokens back to the contract.
     * @dev Only ISSUER_ROLE can call this function.
     * @dev This is used to provide additional underlying tokens to cover yield payments.
     */
    function depositUnderlying(uint256 amount) external onlyRole(ISSUER_ROLE) nonReentrant {
        require(amount > 0, "zero amount");
        
        underlyingToken.safeTransferFrom(msg.sender, address(this), amount);
    }

    /**
     * @notice Get the vault's solvency status.
     * @dev Returns true if the vault has enough underlying tokens to pay all fTOKEN at maturity.
     */
    function isSolvent() external view returns (bool) {
        return underlyingHeld() >= totalSupply() + pendingWithdrawals;
    }

    /**
     * @notice Get the amount of additional underlying tokens needed for solvency.
     * @dev Returns 0 if the vault is already solvent.
     */
    function additionalTokensNeeded() external view returns (uint256) {
        uint256 liability = totalSupply() + pendingWithdrawals;
        uint256 held = underlyingHeld();
        return liability > held ? liability - held : 0;
    }

    // -------- Internal Functions --------

    /**
     * @dev Override _update to prevent transfers after maturity
     * This ensures fTOKEN tokens cannot be transferred after maturity for security
     */
    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override {
        // Allow minting and burning operations
        if (from == address(0) || to == address(0)) {
            super._update(from, to, value);
            return;
        }

        // Prevent transfers after maturity for security
        if (block.timestamp >= maturityTimestamp) {
            revert("Bond matured - transfers not allowed");
        }

        super._update(from, to, value);
    }
}
