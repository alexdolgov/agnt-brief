// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "../interfaces/IERC20Extended.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "../interfaces/ITOKENPOOL.sol";  
/// @title TokenSalePool
/// @notice Manages token sale with weighted allocation, refunds, and tier-based fees
/// @dev Supports multiple currencies, staking-based multipliers, and chunked allocation processing
contract TokenSalepool is Ownable, ReentrancyGuard, ITokenPool {
    using SafeERC20 for IERC20Extended;

    /// @notice User tier levels based on staking points
    enum Stage { NoTier, Bronze, Silver, Gold, Diamond }

    /// @notice Claim and refund percentages per tier (in basis points, max 1000)
    struct PercentageData {
        uint256 claimPercentage;
        uint256 refundPercentage;
    }

    /// @notice Full refund information for a user
    struct UserRefundToken {
        uint256 currencyAmount;
        address currency;
        bool isClaimed;
    }

    /// @notice Excess refund information (over-allocation refund)
    struct UserExcessRefund {
        uint256 currencyExcessAmount;
        address currency;
        bool isClaimed;
    }

    /// @notice Supported currency configuration
    struct OfferedCurrency {
        uint256 decimals;
        uint256 rate;
    }

    /// @notice Withdraw raised currency information
    struct WithdrawRaisedCurrency {
        uint256 totalRaisedTokens;
        uint256 claimedRaisedTokens;
    }

    /// @notice Factory contract that deployed this pool
    address public immutable factory;
    /// @notice Sale token being distributed
    IERC20Extended public token;
    /// @notice Authorized signer for purchase/claim/refund signatures
    address public signer;
    /// @notice Treasury address for fee collection
    address public companyTreasuryAddress;
    /// @notice Primary offered currency address
    address public offeredCurrAdd;

    /// @notice Sale start timestamp
    uint256 public openTime;
    /// @notice Sale end timestamp
    uint256 public closeTime;
    /// @notice Full refund window start
    uint256 public refundOpenTime;
    /// @notice Full refund window end
    uint256 public refundCloseTime;
    /// @notice Excess refund window start
    uint256 public excessRefundOpenTime;
    /// @notice Excess refund window end
    uint256 public excessRefundCloseTime;

    /// @notice Total tokens available for distribution
    uint256 public totalTokensForDistribution;
    /// @notice Total tokens sold (allocated)
    uint256 public tokenSold;
    /// @notice Total unclaimed tokens
    uint256 public totalUnclaimed;
    /// @notice Total tokens refunded via full refund
    uint256 public totalRefunded;
    /// @notice Total excess currency refunded
    uint256 public totalExcessRefunded;
    /// @notice Total treasury fees collected across all currencies
    uint256 public totalTreasuryFees;
    /// @notice Multiplier salt for weighted deposit calculation
    uint256 public multiplierSalt;

    /// @notice Array of all registered user addresses
    address[] public users;
    /// @notice Mapping to check if user is registered
    mapping(address => bool) public isUserRegistered;
    /// @notice User's staking points for tier and multiplier calculation
    mapping(address => uint256) public userStakingPoints;
    /// @notice Calculated multiplier for user's weighted deposit
    mapping(address => uint256) public userMultiplier;
    /// @notice User's weighted deposit amount per currency (in sale token decimals)
    mapping(address => mapping(address => uint256)) public userWeighted;
    /// @notice Amount invested by user per currency
    mapping(address => mapping(address => uint256)) public investedAmountOf;
    /// @notice Total tokens purchased by user (sum across all currencies)
    mapping(address => uint256) public userPurchased;
    /// @notice Tokens purchased by user per currency
    mapping(address => mapping(address => uint256)) public userPurchasedByCurrency;
    /// @notice Total tokens claimed by user
    mapping(address => uint256) public userClaimed;
    /// @notice Total excess refund claimed by user
    mapping(address => uint256) public userClaimedExcessRefund;
    /// @notice Claim fee in tokens (deducted from userPurchased); set on first claim
    mapping(address => uint256) public userClaimFeeInTokens;

    /// @notice Supported currencies and their decimal configurations
    mapping(address => OfferedCurrency) public offeredCurrencies;
    /// @notice Total currency raised per currency type
    mapping(address => uint256) public currencyRaised;
    /// @notice Total weighted deposits per currency (for allocation calculation)
    mapping(address => uint256) public totalWeightedDeposits;
    /// @notice Total currency refunded via full refunds
    mapping(address => uint256) public totalRefundCurrency;
    /// @notice Current refundable currency balance per currency
    mapping(address => uint256) public refundCurrency;
    /// @notice Treasury fees collected per currency
    mapping(address => uint256) public treasuryFeesByCurrency;

    /// @notice Full refund information per user per currency
    mapping(address => mapping(address => UserRefundToken)) public userRefundToken;
    /// @notice Excess refund information per user per currency
    mapping(address => mapping(address => UserExcessRefund)) public userExcessRefundBycurrency;

    /// @notice Withdraw raised currency information per currency   
    mapping(address => WithdrawRaisedCurrency) public withdrawRaisedCurrency;

    /// @notice Current processing index for chunked allocation calculation per currency
    mapping(address => uint256) public currentProcessingIndex;
    /// @notice Flag indicating if allocation calculation is complete
    bool public isComplete;
    /// @notice Flag to track if treasury fees have been calculated for claim per user per currency
    mapping(address => mapping(address => bool)) public feesCalculatedForClaim;
    /// @notice Claim and refund percentages per tier stage
    mapping(Stage => PercentageData) public stagePercentages;
    /// @notice Flag to track if Allocation has been claimed per currency
    mapping(address => bool) public isAllocationClaimed;
    /// @notice Nonce tracking per user to prevent signature replay attacks
    mapping(address => uint256) public userNonces;


    error Unauthorized();
    error AllocationAlreadyClaimed();
    error InvalidAddress();
    error InvalidToken();
    error UserRefunded();
    error UserExcessRefunded();
    error PoolEnded();
    error InvalidSignature();
    error InvalidPurchase();
    error MinAmountUnreached();
    error PurchaseAmountExceeded();
    error NotFinalized();
    error NotAllowedToClaim();
    error AmountMustGreaterThanClaimed();
    error RefundTimeNotSet();
    error RefundNotOpen();
    error RefundClosed();
    error NotAllowedToRefund();
    error InvalidClaimSignature();
    error NotAllowCurrencyToRefund();
    error NotEnoughCurrencyForRefund();
    error ExcessRefundTimeNotSet();
    error ExcessRefundNotOpen();
    error ExcessRefundClosed();
    error NoExcessRefund();
    error ExcessRefundAlreadyClaimed();
    error NotEnoughCurrencyForExcessRefund();
    error InvalidPercentage();
    error SignerInvalid();
    error InvalidTime();
    error InvalidUserAddress();
    error UserNotRegistered();
    error InvalidChunkSize();
    error NoUsers();
    error InvalidWallet();
    error NotFinalizedOrInvalidCurrency();
    error EmptyBalance();
    error TreasuryAddressNotSet();
    error NoTreasuryAmount();
    error NotEnoughTreasuryAmount();
    error NotEnoughEthBalance();
    error TransferFailed();
    error NotEnoughTokens();
    error InsufficientToWithdraw();
    error WrongCandidate();
    error TotalWeightedDepositsZero();
    error ArrayLengthMismatch();
    error EmptyArray();
    error NoTokensToClaim();
    error NonceAlreadyUsed();
    error SignatureExpired();
    error NotCompleted();
    error SaleStillActive();
    error AllocationCalculationStarted();

    event TokenSalePoolInitialized(
        address indexed token, uint256 openTime, uint256 closeTime,
        address indexed offeredCurrency, uint256 offeredCurrencyDecimals,
        uint256 offeredCurrencyRate,
        ITokenPool.RefundTime refundTime, ITokenPool.ExcessRefundTime excessRefundTime,
        address indexed ownerWallet, address signer, address companyTreasuryAddress,
        uint256 totalTokensForDistribution, uint256[5] claimPercentages, uint256[5] refundPercentages, uint256 timestamp
    );
    event TokenPurchaseByToken(address indexed buyer, address indexed currency, uint256 currencyAmount, uint256 stakingPoints, uint256 timestamp);
    event TokenPurchaseByEther(address indexed buyer, uint256 amount, uint256 stakingPoints, uint256 timestamp);
    event UserAdded(address indexed user, uint256 totalUsers, uint256 timestamp);
    event TokenClaimed(address indexed user, uint256 amount, address indexed currency, uint256 totalClaimed, uint256 timestamp);
    event FullRefund(address indexed user, address indexed currency, uint256 currencyAmount, uint256 tokenAmount, uint256 treasuryAmount, uint256 timestamp);
    event ExcessRefundClaimed(address indexed user, address indexed currency, uint256 amount, uint256 timestamp);
    event StakingPointsUpdated(address indexed user, uint256 newStakingPoints, uint256 previousStakingPoints, uint256 weightedDeposit, uint256 timestamp);
    event MultipleStakingPointsUpdated(uint256 userCount, address indexed updatedBy, uint256 timestamp);
    event ClaimPercentagesSet(uint256[5] percentages, address indexed sender, uint256 indexed timestamp);
    event RefundPercentagesSet(uint256[5] percentages, address indexed sender, uint256 indexed timestamp);
    event StagePercentagesSet(Stage indexed stage, uint256 claimPercentage, uint256 refundPercentage, address indexed sender, uint256 indexed timestamp);
    event PoolStatsChanged(address indexed changedBy, uint256 timestamp);
    event TokenChanged(address indexed oldToken, address indexed newToken, address indexed changedBy, uint256 timestamp);
    event RefundTimeChanged(ITokenPool.RefundTime refundTime, address indexed changedBy, uint256 timestamp);
    event ExcessRefundTimeChanged(ITokenPool.ExcessRefundTime excessRefundTime, address indexed changedBy, uint256 timestamp);
    event SignerChanged(address indexed oldSigner, address indexed newSigner, address indexed changedBy, uint256 timestamp);
    event CompanyTreasuryAddressChanged(address indexed oldTreasuryAddress, address indexed newTreasuryAddress, address indexed changedBy, uint256 timestamp);
    event ChunkProcessingProgress(address indexed currency, uint256 totalUsers, uint256 startIndex, uint256 endIndex, bool isComplete);
    event ProcessingIndexReset(address indexed currency, address indexed changedBy, uint256 timestamp);
    event RefundedIDOToken(address indexed recipient, uint256 amount, uint256 timestamp);
    event RefundedIDOCurrency(address indexed recipient, address indexed currency, uint256 amount, uint256 timestamp);
    event TreasuryAmountWithdrawn(address indexed currency, uint256 amount, address indexed treasuryAddress, uint256 timestamp);
    event TokensWithdrawn(address indexed wallet, uint256 amount, address indexed currency, string currencyType, uint256 timestamp, address indexed withdrawnBy);
    event UnsoldTokensWithdrawn(uint256 amount, address indexed recipient, uint256 timestamp);
    event RaisedCurrencyWithdrawn(address indexed currency, uint256 amount, address indexed receiver, uint256 timestamp);

    constructor() {
        factory = msg.sender;
    }

    /// @notice Initializes the token sale pool
    /// @param _token Sale token address
    /// @param _duration Sale duration in seconds
    /// @param _openTime Sale start timestamp
    /// @param _offeredCurrency Purchase currency address
    /// @param _offeredCurrencyDecimals Purchase currency decimals
    /// @param _refundTime Full refund time window
    /// @param _excessRefundTime Excess refund time window
    /// @param _ownerWallet Pool owner address
    /// @param _signer Authorized signer address
    /// @param _companyTreasuryAddress Treasury address for fees
    /// @param _totalTokensForDistribution Total tokens to distribute
    /// @param _multiplierSalt Multiplier calculation salt
    /// @param _offeredCurrencyRate Rate of the offered currency
    function initialize(
        address _token, uint256 _duration, uint256 _openTime,
        address _offeredCurrency, uint256 _offeredCurrencyDecimals,
        ITokenPool.RefundTime memory _refundTime, ITokenPool.ExcessRefundTime memory _excessRefundTime,
        address _ownerWallet, address _signer, address _companyTreasuryAddress,
        uint256 _totalTokensForDistribution, uint256 _multiplierSalt, uint256 _offeredCurrencyRate
    ) external {
        if (msg.sender != factory) revert Unauthorized();
        if (_duration == 0) revert InvalidTime();

        token = IERC20Extended(_token);
        openTime = _openTime;
        closeTime = _openTime + _duration;
        refundOpenTime = _refundTime.openTime;
        refundCloseTime = _refundTime.closeTime;
        excessRefundOpenTime = _excessRefundTime.openTime;
        excessRefundCloseTime = _excessRefundTime.closeTime;
        totalTokensForDistribution = _totalTokensForDistribution;
        multiplierSalt = _multiplierSalt;
        if (refundOpenTime != 0) {
            if (refundOpenTime <= closeTime || refundCloseTime < refundOpenTime) revert InvalidTime();
        }
        if (excessRefundOpenTime <= closeTime || excessRefundCloseTime < excessRefundOpenTime) revert InvalidTime();

        if (_ownerWallet == address(0) || _signer == address(0) || _companyTreasuryAddress == address(0)) revert InvalidAddress();

        signer = _signer;
        companyTreasuryAddress = _companyTreasuryAddress;
        transferOwnership(_ownerWallet);

        offeredCurrencies[_offeredCurrency] = OfferedCurrency({decimals: _offeredCurrencyDecimals, rate: _offeredCurrencyRate});
        offeredCurrAdd = _offeredCurrency;
        offeredCurrencies[address(0)] = OfferedCurrency({decimals: 18, rate: _offeredCurrencyRate});


        uint256[5] memory claimPercs = [uint256(30), uint256(20), uint256(10), uint256(0), uint256(0)];
        uint256[5] memory refundPercs = [uint256(10), uint256(0), uint256(0), uint256(0), uint256(0)];
        Stage[5] memory stages = [Stage.NoTier, Stage.Bronze, Stage.Silver, Stage.Gold, Stage.Diamond];
        
        for (uint256 i = 0; i < 5; i++) {
            stagePercentages[stages[i]].claimPercentage = claimPercs[i];
            stagePercentages[stages[i]].refundPercentage = refundPercs[i];
        }

        emit TokenSalePoolInitialized(_token, _openTime, closeTime, _offeredCurrency, offeredCurrencies[_offeredCurrency].decimals, _offeredCurrencyRate, _refundTime, _excessRefundTime, _ownerWallet, _signer, _companyTreasuryAddress, _totalTokensForDistribution, claimPercs, refundPercs, block.timestamp);
    }

    /// @notice Purchase tokens using ERC20 currency with signature verification
    /// @param currency Purchase currency address
    /// @param amount Amount to invest
    /// @param candidate Purchaser address (must match msg.sender)
    /// @param maxAmount Maximum allowed purchase amount
    /// @param minAmount Minimum required purchase amount
    /// @param stakingPoints User's staking points for multiplier calculation
    /// @param nonce One-time use nonce to prevent replay attacks
    /// @param deadline Unix timestamp after which this purchase signature is invalid
    /// @param signature Signed message from authorized signer
    function buyTokenByTokenWithPermission(
        address currency, uint256 amount, address candidate,
        uint256 maxAmount, uint256 minAmount, uint256 stakingPoints, uint256 nonce, uint256 deadline, bytes memory signature
    ) public nonReentrant {
        if (offeredCurrAdd != currency) revert InvalidToken();
        if (userRefundToken[candidate][currency].currencyAmount != 0) revert UserRefunded();
        if (userExcessRefundBycurrency[candidate][currency].currencyExcessAmount != 0) revert UserExcessRefunded();
        if (!_validPurchase()) revert PoolEnded();
        if (!_verifyBuySig(candidate, currency, maxAmount, minAmount, stakingPoints, nonce, deadline, signature)) revert InvalidSignature();
        if (candidate == address(0) || amount == 0) revert InvalidPurchase();
        if (amount < minAmount) revert MinAmountUnreached();
        if (amount > maxAmount) revert PurchaseAmountExceeded();

        userStakingPoints[candidate] = stakingPoints;
        investedAmountOf[currency][candidate] += amount;
        currencyRaised[currency] += amount;
        calculateWeightedDeposit(currency, candidate);
        _addUserToArray(candidate);
        userNonces[candidate] = nonce; // Mark nonce as used
        
        _forwardTokenFunds(currency, amount);
        
        emit TokenPurchaseByToken(candidate, currency, amount, stakingPoints, block.timestamp);
    }

    /// @notice Purchase tokens using native ETH with signature verification
    /// @param candidate Purchaser address (must match msg.sender)
    /// @param maxAmount Maximum allowed purchase amount
    /// @param minAmount Minimum required purchase amount
    /// @param stakingPoints User's staking points for multiplier calculation
    /// @param nonce One-time use nonce to prevent replay attacks
    /// @param deadline Unix timestamp after which this purchase signature is invalid
    /// @param signature Signed message from authorized signer
    function buyTokenByEtherWithPermission(
        address candidate, uint256 maxAmount, uint256 minAmount, uint256 stakingPoints, uint256 nonce, uint256 deadline, bytes memory signature
    ) public payable nonReentrant {
        if(offeredCurrAdd != address(0)) revert InvalidToken();
        if (userRefundToken[candidate][address(0)].currencyAmount != 0) revert UserRefunded();
        if (userExcessRefundBycurrency[candidate][address(0)].currencyExcessAmount != 0) revert UserExcessRefunded();

        uint256 weiAmount = msg.value;
        if (!_validPurchase()) revert PoolEnded();
        if (!_verifyBuySig(candidate, address(0), maxAmount, minAmount, stakingPoints, nonce, deadline, signature)) revert InvalidSignature();
        if (candidate == address(0) || weiAmount == 0) revert InvalidPurchase();
        if (weiAmount < minAmount) revert MinAmountUnreached();
        if (weiAmount > maxAmount) revert PurchaseAmountExceeded();

        userStakingPoints[candidate] = stakingPoints;
        investedAmountOf[address(0)][candidate] += weiAmount;
        currencyRaised[address(0)] += weiAmount;
        calculateWeightedDeposit(address(0), candidate);
        _addUserToArray(candidate);
        userNonces[candidate] = nonce; // Mark nonce as used
        emit TokenPurchaseByEther(candidate, weiAmount, stakingPoints, block.timestamp);
    }

    /// @notice Claim purchased tokens after pool finalization
    /// @dev Fee is deducted from OFFERED CURRENCY (treasury gets currency). User's claimable tokens = userPurchased - (token equivalent of that fee). Excess refund unchanged (no fee).
    /// @param candidate Claimant address (must match msg.sender)
    /// @param amount Amount to claim (must be >= previously claimed)
    /// @param _offeredCurrency Currency used for purchase
    /// @param signature Signed message from authorized signer
    function claimTokens(address candidate, uint256 amount, address _offeredCurrency, bytes memory signature) public nonReentrant {
        if (!_verifyClaimSig(candidate, amount, _offeredCurrency, signature)) revert NotAllowedToClaim();
        if (_offeredCurrency != offeredCurrAdd) revert InvalidToken();
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (!isComplete) revert NotCompleted();
        if (amount == 0) revert NoTokensToClaim();
        if (amount < userClaimed[candidate]) revert AmountMustGreaterThanClaimed();
        if (investedAmountOf[offeredCurrAdd][candidate] == 0) revert NotAllowedToClaim();

        // On first claim: fee from OFFERED CURRENCY (treasury gets currency). Then remaining claim tokens = userPurchased - (token equivalent of fee).
        if (!feesCalculatedForClaim[candidate][offeredCurrAdd]) {
            uint256 treasuryAmount = _calculateAndStoreTreasuryAmountforClaim(candidate, offeredCurrAdd);
            uint256 feeInTokens = _currencyToClaimTokenEquivalent(offeredCurrAdd, treasuryAmount);
            userClaimFeeInTokens[candidate] = feeInTokens;
            totalUnclaimed -= feeInTokens;
            feesCalculatedForClaim[candidate][offeredCurrAdd] = true;
            uint256 userInvestedAmount = investedAmountOf[offeredCurrAdd][candidate];
            uint256 userExcessRefundAmount = userExcessRefundBycurrency[candidate][offeredCurrAdd].currencyExcessAmount;
            uint256 withdrawRaisedCurrencyAmount = userInvestedAmount - userExcessRefundAmount - treasuryAmount;
            withdrawRaisedCurrency[offeredCurrAdd].totalRaisedTokens += withdrawRaisedCurrencyAmount;
        }

        // Remaining claimable = userPurchased - fee (token equivalent of currency fee); excess refund unchanged
        uint256 maxClaimAmount = userPurchased[candidate] - userClaimed[candidate] - userClaimFeeInTokens[candidate];
        uint256 claimAmount = amount - userClaimed[candidate];
        if (claimAmount > maxClaimAmount) claimAmount = maxClaimAmount;
        if (claimAmount == 0) revert NoTokensToClaim();

        // Effects: Update state before external interactions
        userClaimed[candidate] += claimAmount;
        isAllocationClaimed[offeredCurrAdd] = true;
        totalUnclaimed -= claimAmount;

        // Interactions: External call after state updates
        _deliverTokens(candidate, claimAmount);

        emit TokenClaimed(candidate, claimAmount, offeredCurrAdd, userClaimed[candidate], block.timestamp);
    }

    /// @notice Full refund: forfeit token allocation and get currency back (minus treasury fee)
    /// @param _candidate Refund requester (must match msg.sender)
    /// @param _currency Currency to refund
    /// @param _refundSignature Signed message from authorized signer
    /// @dev Can only be called during refund window, before claiming tokens
    function fullRefund(address _candidate, address _currency, bytes memory _refundSignature) external nonReentrant {
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (!isComplete) revert NotCompleted();
        if (refundOpenTime == 0 || refundCloseTime == 0) revert RefundTimeNotSet();
        if (block.timestamp < refundOpenTime) revert RefundNotOpen();
        if (block.timestamp > refundCloseTime) revert RefundClosed();
        if (userRefundToken[_candidate][_currency].isClaimed) revert UserRefunded();
        if (userClaimed[_candidate] != 0 || userPurchasedByCurrency[_candidate][_currency] == 0) revert NotAllowedToRefund();
        if (userExcessRefundBycurrency[_candidate][_currency].isClaimed) revert UserExcessRefunded();
        

        uint256 currencyAmount = investedAmountOf[_currency][_candidate];
        if (currencyAmount == 0) revert NotAllowCurrencyToRefund();
        if (!_verifyFullRefundSig(_candidate, _currency, currencyAmount, _refundSignature)) revert InvalidClaimSignature();

        // Checks: Calculate refund amounts and verify balance before state updates
        (uint256 treasuryAmount, uint256 userRefundAmount) = _calculateAndStoreTreasuryAmountforRefund(_candidate, _currency);
        if (_currency == address(0)) {
            if (address(this).balance < userRefundAmount) revert NotEnoughCurrencyForRefund();
        } else {
            if (IERC20Extended(_currency).balanceOf(address(this)) < userRefundAmount) revert NotEnoughCurrencyForRefund();
        }

        // Effects: Update state before external interactions
        uint256 refundTokenAmount = userPurchasedByCurrency[_candidate][_currency];
        UserExcessRefund storage excessRefund = userExcessRefundBycurrency[_candidate][_currency];
        excessRefund.currencyExcessAmount = 0;
        excessRefund.isClaimed = true;
        isAllocationClaimed[_currency] = true;
        totalRefundCurrency[_currency] += currencyAmount;
        refundCurrency[_currency] += currencyAmount;
        totalUnclaimed -= refundTokenAmount;
        tokenSold -= refundTokenAmount;
        totalRefunded += refundTokenAmount;
        userPurchased[_candidate] -= refundTokenAmount;
        userPurchasedByCurrency[_candidate][_currency] = 0;
        currencyRaised[_currency] -= currencyAmount;
        investedAmountOf[_currency][_candidate] = 0;
        userRefundToken[_candidate][_currency] = UserRefundToken({currencyAmount: userRefundAmount, currency: _currency, isClaimed: true});

        // Interactions: External call after state updates
        _deliverCurrency(_currency, _candidate, userRefundAmount);
        emit FullRefund(_candidate, _currency, userRefundAmount, refundTokenAmount, treasuryAmount, block.timestamp);
    }

    /// @notice Claim excess refund (over-allocation) while keeping token allocation
    /// @param candidate Claimant address (must match msg.sender)
    /// @param currency Currency to refund
    /// @param signature Signed message from authorized signer
    /// @dev Can only be called during excess refund window, after allocation calculation
    function claimExcessRefund(address candidate, address currency, bytes memory signature) public nonReentrant {
        if (!_verifyExcessRefundClaimSig(candidate, currency, signature)) revert NotAllowedToClaim();
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (!isComplete) revert NotCompleted();
        if (excessRefundOpenTime == 0 || excessRefundCloseTime == 0) revert ExcessRefundTimeNotSet();
        if (block.timestamp < excessRefundOpenTime) revert ExcessRefundNotOpen();
        if (block.timestamp > excessRefundCloseTime) revert ExcessRefundClosed();

        UserExcessRefund storage excessRefund = userExcessRefundBycurrency[candidate][currency];
        if (excessRefund.currencyExcessAmount == 0) revert NoExcessRefund();
        if (excessRefund.isClaimed) revert ExcessRefundAlreadyClaimed();

        uint256 refundAmount = excessRefund.currencyExcessAmount;
        excessRefund.isClaimed = true;
        userClaimedExcessRefund[candidate] += refundAmount;
        totalExcessRefunded += refundAmount;
        isAllocationClaimed[currency] = true;

        if (currency == address(0)) {
            if (address(this).balance < refundAmount) revert NotEnoughCurrencyForExcessRefund();
        } else {
            if (IERC20Extended(currency).balanceOf(address(this)) < refundAmount) revert NotEnoughCurrencyForExcessRefund();
        }

        _deliverCurrency(currency, candidate, refundAmount);
        emit ExcessRefundClaimed(candidate, currency, refundAmount, block.timestamp);
    }

    /// @notice Set claim percentages for all tiers (in basis points, max 1000)
    /// @param _percentages Array of 5 percentages [NoTier, Bronze, Silver, Gold, Diamond]
    function setClaimPercentages(uint256[5] memory _percentages) external onlyOwner {
        for (uint256 i = 0; i < 5; i++) {
            if (_percentages[i] > 1000) revert InvalidPercentage();
        }
        Stage[5] memory stages = [Stage.NoTier, Stage.Bronze, Stage.Silver, Stage.Gold, Stage.Diamond];
        for (uint256 i = 0; i < 5; i++) {
            stagePercentages[stages[i]].claimPercentage = _percentages[i];
        }
        emit ClaimPercentagesSet(_percentages, msg.sender, block.timestamp);
    }

    /// @notice Set refund percentages for all tiers (in basis points, max 1000)
    /// @param _percentages Array of 5 percentages [NoTier, Bronze, Silver, Gold, Diamond]
    function setRefundPercentages(uint256[5] memory _percentages) external onlyOwner {
        for (uint256 i = 0; i < 5; i++) {
            if (_percentages[i] > 1000) revert InvalidPercentage();
        }
        Stage[5] memory stages = [Stage.NoTier, Stage.Bronze, Stage.Silver, Stage.Gold, Stage.Diamond];
        for (uint256 i = 0; i < 5; i++) {
            stagePercentages[stages[i]].refundPercentage = _percentages[i];
        }
        emit RefundPercentagesSet(_percentages, msg.sender, block.timestamp);
    }

    /// @notice Set claim and refund percentages for a specific tier
    /// @param _stage Tier stage
    /// @param _claimPercentage Claim percentage in basis points (max 1000)
    /// @param _refundPercentage Refund percentage in basis points (max 1000)
    function setStagePercentages(Stage _stage, uint256 _claimPercentage, uint256 _refundPercentage) external onlyOwner {
        if (_claimPercentage > 1000 || _refundPercentage > 1000) revert InvalidPercentage();
        stagePercentages[_stage].claimPercentage = _claimPercentage;
        stagePercentages[_stage].refundPercentage = _refundPercentage;
        emit StagePercentagesSet(_stage, _claimPercentage, _refundPercentage, msg.sender, block.timestamp);
    }

    /// @notice Update the authorized signer address
    /// @param _newSigner New signer address (must be different from current and non-zero)
    function setNewSigner(address _newSigner) external onlyOwner {
        if (signer == _newSigner || _newSigner == address(0)) revert SignerInvalid();
        address oldSigner = signer;
        signer = _newSigner;
        emit SignerChanged(oldSigner, _newSigner, msg.sender, block.timestamp);
    }

    /// @notice Update the company treasury address
    /// @param _newTreasuryAddress New treasury address (must be different from current and non-zero)
    function setCompanyTreasuryAddress(address _newTreasuryAddress) external onlyOwner {
        if (companyTreasuryAddress == _newTreasuryAddress || _newTreasuryAddress == address(0)) revert InvalidAddress();
        address oldTreasuryAddress = companyTreasuryAddress;
        companyTreasuryAddress = _newTreasuryAddress;
        emit CompanyTreasuryAddressChanged(oldTreasuryAddress, _newTreasuryAddress, msg.sender, block.timestamp);
    }

    /// @notice Update the sale end time
    /// @param _closeTime New close time (must be in future and after openTime, and before refund windows)
    function setCloseTime(uint256 _closeTime) external onlyOwner {
        if (_closeTime < block.timestamp || _closeTime <= openTime) revert InvalidTime();
        // Ensure new closeTime is strictly before refund windows start
        if (refundOpenTime != 0 && _closeTime >= refundOpenTime) revert InvalidTime();
        if (excessRefundOpenTime != 0 && _closeTime >= excessRefundOpenTime) revert InvalidTime();
        closeTime = _closeTime;
        emit PoolStatsChanged(msg.sender, block.timestamp);
    }

    /// @notice Update the sale start time
    /// @param _openTime New open time (must be before closeTime)
    function setOpenTime(uint256 _openTime) external onlyOwner {
        if (_openTime >= closeTime) revert InvalidTime();
        openTime = _openTime;
        emit PoolStatsChanged(msg.sender, block.timestamp);
    }

    /// @notice Change the sale token address
    /// @param _token New sale token address (must be non-zero)
    /// @dev Use with caution - affects all future token operations
    function changeSaleToken(address _token) external onlyOwner {
        if (_token == address(0)) revert InvalidToken();
        address oldToken = address(token);
        token = IERC20Extended(_token);
        emit TokenChanged(oldToken, _token, msg.sender, block.timestamp);
    }

    /// @notice Update the full refund time window
    /// @param _refundTime New refund time window (openTime must be < closeTime, and start after sale closeTime)
    function changeRefundTime(ITokenPool.RefundTime memory _refundTime) external onlyOwner {
        if (_refundTime.openTime >= _refundTime.closeTime) revert InvalidTime();
        // Ensure refund window starts after sale closes
        if (_refundTime.openTime <= closeTime || _refundTime.closeTime <= closeTime) revert InvalidTime();
        refundOpenTime = _refundTime.openTime;
        refundCloseTime = _refundTime.closeTime;
        emit RefundTimeChanged(_refundTime, msg.sender, block.timestamp);
    }

    /// @notice Update the excess refund time window
    /// @param _excessRefundTime New excess refund time window (openTime must be < closeTime, and start after sale closeTime)
    function changeExcessRefundTime(ITokenPool.ExcessRefundTime memory _excessRefundTime) external onlyOwner {
        if (_excessRefundTime.openTime >= _excessRefundTime.closeTime) revert InvalidTime();
        // Ensure excess refund window starts after sale closes
        if (_excessRefundTime.openTime <= closeTime || _excessRefundTime.closeTime <= closeTime) revert InvalidTime();
        excessRefundOpenTime = _excessRefundTime.openTime;
        excessRefundCloseTime = _excessRefundTime.closeTime;
        emit ExcessRefundTimeChanged(_excessRefundTime, msg.sender, block.timestamp);
    }

    /// @notice Update staking points for a single user
    /// @param _user User address to update
    /// @param _stakingPoints New staking points value
    /// @dev Recalculates weighted deposit and updates user tier
    function updateSingleStakingPoints(address _user, uint256 _stakingPoints) external onlyOwner nonReentrant {
        _updateUserStakingPoints(_user, _stakingPoints);
    }

    /// @notice Batch update staking points for multiple users
    /// @param _users Array of user addresses
    /// @param _stakingPoints Array of new staking points (must match users length)
    /// @dev Recalculates weighted deposits for all users
    function updateMultipleStakingPoints(address[] calldata _users, uint256[] calldata _stakingPoints) external onlyOwner nonReentrant {
        if (_users.length != _stakingPoints.length) revert ArrayLengthMismatch();
        if (_users.length == 0) revert EmptyArray();
        for (uint256 i = 0; i < _users.length; i++) {
            _updateUserStakingPoints(_users[i], _stakingPoints[i]);
        }
        emit MultipleStakingPointsUpdated(_users.length, msg.sender, block.timestamp);
    }

    /// @notice Set decimal places for a supported currency
    /// @param _currency Currency address
    /// @param _decimals Decimal places (typically 6, 18, etc.)
    function setOfferedCurrencyDecimals(address _currency, uint256 _decimals) external onlyOwner {
        offeredCurrencies[_currency].decimals = _decimals;
        offeredCurrAdd = _currency;
        emit PoolStatsChanged(msg.sender, block.timestamp);
    }

    /// @notice Set rate of the offered currency
    /// @param _currency Currency address
    /// @param _rate Rate of the offered currency
    function setOfferedCurrencyRate(address _currency, uint256 _rate) external onlyOwner {
        offeredCurrencies[_currency].rate = _rate;
        emit PoolStatsChanged(msg.sender, block.timestamp);
    }

    /// @notice Update total tokens for distribution
    /// @param _totalTokensForDistribution New total tokens for distribution amount
    /// @dev Can only be called before allocation calculation starts (between deposit and calculateAllocationRefund)
    ///      This value is only used in calculateAllocationAndRefund to determine token allocations
    function setTotalTokensForDistribution(uint256 _totalTokensForDistribution) external onlyOwner {
        if (isAllocationClaimed[offeredCurrAdd]) revert AllocationAlreadyClaimed();
        if (currentProcessingIndex[offeredCurrAdd] != 0) revert AllocationCalculationStarted();
        totalTokensForDistribution = _totalTokensForDistribution;
        emit PoolStatsChanged(msg.sender, block.timestamp);
    }

    /// @notice Calculate token allocations and excess refunds for users in chunks
    /// @param _currency Currency to process allocations for
    /// @param _chunkSize Number of users to process per call
    /// @return isCompleted True if all users have been processed
    /// @dev Processes users starting from currentProcessingIndex, updates state incrementally
    function calculateAllocationRefund(address _currency, uint256 _chunkSize) public onlyOwner nonReentrant returns (bool isCompleted) {
        if (offeredCurrAdd != _currency) revert InvalidToken();
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (_chunkSize == 0) revert InvalidChunkSize();
        if (users.length == 0) revert NoUsers();
        if(isAllocationClaimed[_currency]) revert AllocationAlreadyClaimed();

        uint256 startIndex = currentProcessingIndex[_currency];
        uint256 endIndex = startIndex + _chunkSize;
        if (endIndex > users.length){
             endIndex = users.length;
        }

        if (isComplete) {
            isComplete = false;
            totalUnclaimed = 0;
            tokenSold = 0;
        }

        for (uint256 i = startIndex; i < endIndex; i++) {
            calculateAllocationAndRefund(_currency, users[i]);
        }

        currentProcessingIndex[_currency] = endIndex;
        isComplete = (endIndex >= users.length);
        emit ChunkProcessingProgress(_currency, users.length, startIndex, endIndex, isComplete);

        if (isComplete){
             currentProcessingIndex[_currency] = 0;
             }
        return isComplete;
    }

    /// @notice Withdraw collected treasury fees for a currency
    /// @param currency Currency address to withdraw fees for
    /// @dev Sends fees to companyTreasuryAddress, can only be called after finalization
    function withdrawTreasuryAmount(address currency) external onlyOwner {
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (companyTreasuryAddress == address(0)) revert TreasuryAddressNotSet();

        uint256 treasuryAmount = treasuryFeesByCurrency[currency];
        if (treasuryAmount == 0) revert NoTreasuryAmount();

        treasuryFeesByCurrency[currency] = 0;
        if (totalTreasuryFees < treasuryAmount) revert NotEnoughTreasuryAmount();
        totalTreasuryFees -= treasuryAmount;
        _deliverCurrency(currency, companyTreasuryAddress, treasuryAmount);
        emit TreasuryAmountWithdrawn(currency, treasuryAmount, companyTreasuryAddress, block.timestamp);
    }

    /// @notice Withdraw raised currency tokens for a specific currency
    /// @param currency Currency address to withdraw raised tokens for
    /// @param receiver Address to receive the withdrawn currency
    /// @dev Can only be called after finalization, withdraws totalRaisedTokens minus already claimed amount
    function withdrawRaisedCurrencyTokens(address currency, address receiver) external onlyOwner {
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (receiver == address(0)) revert InvalidWallet();

        WithdrawRaisedCurrency storage raisedCurrency = withdrawRaisedCurrency[currency];
        uint256 withdrawableAmount = raisedCurrency.totalRaisedTokens - raisedCurrency.claimedRaisedTokens;
        
        if (withdrawableAmount == 0) revert EmptyBalance();

        if (currency == address(0)) {
            if (address(this).balance < withdrawableAmount) revert NotEnoughEthBalance();
        } else {
            if (IERC20Extended(currency).balanceOf(address(this)) < withdrawableAmount) revert NotEnoughTokens();
        }

        raisedCurrency.claimedRaisedTokens += withdrawableAmount;
        _deliverCurrency(currency, receiver, withdrawableAmount);
        emit RaisedCurrencyWithdrawn(currency, withdrawableAmount, receiver, block.timestamp);
    }

    /// @notice Emergency withdrawal and raised funds from contract (eth and token)
    /// @param _walletAddress Recipient address
    /// @param _amount Amount to withdraw
    /// @param _currency Currency address (address(0) for ETH)
    /// @dev Owner-only emergency function, use with caution
    function withdrawTokens(address _walletAddress, uint256 _amount, address _currency) external onlyOwner {
        if (_walletAddress == address(0)) revert InvalidWallet();

        if (_currency == address(0)) {
            if (address(this).balance < _amount) revert NotEnoughEthBalance();
            (bool success, ) = payable(_walletAddress).call{value: _amount}("");
            if (!success) revert TransferFailed();
        } else {
            if (IERC20Extended(_currency).balanceOf(address(this)) < _amount) revert NotEnoughTokens();
            IERC20Extended(_currency).safeTransfer(_walletAddress, _amount);
        }
        emit TokensWithdrawn(_walletAddress, _amount, _currency, _currency == address(0) ? "ETH" : "TOKEN", block.timestamp, msg.sender);
    }

    /// @notice Withdraw unsold tokens (tokens not allocated to users)
    /// @param _companyAdminAddress Recipient address for unsold tokens
    /// @dev Can only withdraw tokens that exceed totalUnclaimed, called after finalization
    function withdrawUnsoldTokens(address _companyAdminAddress) external onlyOwner {
        if (!isFinalized()) revert NotFinalized();
        if (block.timestamp <= closeTime) revert SaleStillActive();
        if (_companyAdminAddress == address(0)) revert InvalidWallet();

        uint256 totalToken = token.balanceOf(address(this));
        if (totalToken <= totalUnclaimed) revert InsufficientToWithdraw();

        uint256 tokenUnclaimedBalance = totalToken - totalUnclaimed;
        token.safeTransfer(_companyAdminAddress, tokenUnclaimedBalance);
        emit UnsoldTokensWithdrawn(tokenUnclaimedBalance, _companyAdminAddress, block.timestamp);
    }

    /// @notice Get available unsold tokens
    /// @return Available token balance minus unclaimed tokens
    function getAvailableTokensForSale() public view returns (uint256) {
        return token.balanceOf(address(this)) - totalUnclaimed;
    }

    /// @notice Check if sale has ended
    /// @return True if current time >= closeTime
    function isFinalized() public view returns (bool) {
        return block.timestamp >= closeTime;
    }

    /// @notice Get staking points for multiple users in a single call
    /// @param _users Array of user addresses
    /// @return stakingPoints Array of staking points corresponding to input users
    function getMultipleUserStakingPoints(address[] calldata _users) external view returns (uint256[] memory stakingPoints) {
        stakingPoints = new uint256[](_users.length);
        for (uint256 i = 0; i < _users.length; i++) {
            stakingPoints[i] = userStakingPoints[_users[i]];
        }
    }

    /// @notice Get the total number of registered users
    /// @return Total length of the users array
    function getTotalUsersLength() external view returns (uint256) {
        return users.length;
    }

    /// @notice Check if purchase is valid based on current time
    /// @return True if current time is within sale window
    function _validPurchase() internal view returns (bool) {
        return block.timestamp >= openTime && block.timestamp <= closeTime;
    }

    /// @notice Transfer ERC20 tokens from sender to contract
    /// @param _token Token address
    /// @param _amount Amount to transfer
    function _forwardTokenFunds(address _token, uint256 _amount) internal {
        IERC20Extended(_token).safeTransferFrom(msg.sender, address(this), _amount);
    }

    /// @notice Deliver currency (ETH or ERC20) to recipient
    /// @param _currency Currency address (address(0) for ETH)
    /// @param _candidate Recipient address
    /// @param _currencyAmount Amount to deliver
    function _deliverCurrency(address _currency, address _candidate, uint256 _currencyAmount) internal {
        if (_currency == address(0)) {
            if (address(this).balance < _currencyAmount) revert NotEnoughEthBalance();
            (bool success, ) = payable(_candidate).call{value: _currencyAmount}("");
            if (!success) revert TransferFailed();
        } else {
            IERC20Extended(_currency).safeTransfer(_candidate, _currencyAmount);
        }
    }

    /// @notice Deliver sale tokens to recipient
    /// @param _candidate Recipient address
    /// @param _tokenAmount Amount of tokens to deliver
    function _deliverTokens(address _candidate, uint256 _tokenAmount) internal {
        token.safeTransfer(_candidate, _tokenAmount);
    }

    /// @notice Add user to users array if not already registered
    /// @param _user User address to add
    function _addUserToArray(address _user) internal {
        if (!isUserRegistered[_user]) {
            users.push(_user);
            isUserRegistered[_user] = true;
            emit UserAdded(_user, users.length, block.timestamp);
        }
    }

    /// @notice Update user staking points and recalculate weighted deposit
    /// @param _user User address
    /// @param _stakingPoints New staking points value
    /// @dev Emits StakingPointsUpdated event
    function _updateUserStakingPoints(address _user, uint256 _stakingPoints) internal {
        if (_user == address(0)) revert InvalidUserAddress();
        if (!isUserRegistered[_user]) revert UserNotRegistered();

        uint256 previousStakingPoints = userStakingPoints[_user];
        userStakingPoints[_user] = _stakingPoints;
        uint256 weightedDepositUpdated = calculateWeightedDeposit(offeredCurrAdd, _user);
        emit StakingPointsUpdated(_user, _stakingPoints, previousStakingPoints, weightedDepositUpdated, block.timestamp);
    }

    /// @notice Calculate staking-based multiplier for weighted deposit
    /// @param _currency Currency address (address(0) for ETH)
    /// @param _candidate User address
    /// @return multiplier Calculated multiplier (stored in userMultiplier mapping)
    /// @dev Formula: multiplier = 10^decimals + (multiplierSalt * stakingPoints * 10^decimals) / 1e18
    ///      Higher staking points result in higher multiplier, increasing allocation weight
    function calculateMultiplier(address _currency, address _candidate) internal returns (uint256 multiplier) {
        uint256 stakingPoints = userStakingPoints[_candidate];
        uint8 currencyDecimals = _currency == address(0) ? 18 : uint8(offeredCurrencies[_currency].decimals);
        uint256 decimalsFactor = 10 ** uint256(currencyDecimals);
        multiplier = decimalsFactor + ((multiplierSalt * stakingPoints * decimalsFactor) / 1e18);
        userMultiplier[_candidate] = multiplier;
    }

    /// @notice Calculate weighted deposit amount using multiplier
    /// @param _currency Currency address
    /// @param _candidate User address
    /// @return weightedDeposit Weighted deposit in sale token decimals
    /// @dev Updates totalWeightedDeposits and userWeighted mappings
    function calculateWeightedDeposit(address _currency, address _candidate) internal returns (uint256 weightedDeposit) {
        uint256 multiplier = calculateMultiplier(_currency, _candidate);
        uint256 depositAmount = investedAmountOf[_currency][_candidate];
        uint8 currencyDecimals = _currency == address(0) ? 18 : uint8(offeredCurrencies[_currency].decimals);

        uint256 decimalsFactor = 10 ** uint256(currencyDecimals);
        weightedDeposit = multiplier == decimalsFactor ? depositAmount : (depositAmount * multiplier) / decimalsFactor;
        weightedDeposit = _convertDecimals(weightedDeposit, currencyDecimals, uint8(token.decimals()));

        uint256 previousWeightedDeposit = userWeighted[_candidate][_currency];
        if (previousWeightedDeposit > 0){
             totalWeightedDeposits[_currency] -= previousWeightedDeposit;
        }
        userWeighted[_candidate][_currency] = weightedDeposit;
        totalWeightedDeposits[_currency] += weightedDeposit;
    }

    /// @notice Calculate user's token allocation and excess refund amount
    /// @param _currency Currency address
    /// @param _candidate User address
    /// @return allocation Token allocation amount (min of calculated allocation and invested amount)
    /// @return refund Excess refund amount (if invested > allocation)
    /// @dev Allocation formula: allocation = min(Bi, (R * userWeighted) / totalWeighted)
    ///      where R = totalTokensForDistribution, Bi = invested amount in token decimals,
    ///      userWeighted = weighted deposit, totalWeighted = sum of all weighted deposits
    function calculateAllocationAndRefund(address _currency, address _candidate) internal returns (uint256 allocation, uint256 refund) {
        uint256 totalWeightedDepositsValue = totalWeightedDeposits[_currency];
        if (totalWeightedDepositsValue == 0) revert TotalWeightedDepositsZero();

        uint256 R = totalTokensForDistribution;
        uint256 Bi = investedAmountOf[_currency][_candidate];

        uint8 currencyDecimals = _currency == address(0) ? 18 : uint8(offeredCurrencies[_currency].decimals);
        Bi = _convertDecimals(Bi, currencyDecimals, uint8(token.decimals()));
        R = _convertDecimals(R,currencyDecimals, uint8(token.decimals()));

        uint256 userWeightedValue = userWeighted[_candidate][_currency];
        uint256 calculatedAllocation = (R * userWeightedValue) / totalWeightedDepositsValue;
        allocation = Bi < calculatedAllocation ? Bi : calculatedAllocation;
        uint256 allocationAfterRate = (allocation*offeredCurrencies[_currency].rate)/1e18;

        // Accumulate userPurchased across all currencies: subtract previous allocation for this currency, then add new one
        uint256 previousAllocation = userPurchasedByCurrency[_candidate][_currency];
        if (previousAllocation > 0) {
            userPurchased[_candidate] -= previousAllocation;
        }
        userPurchased[_candidate] += allocationAfterRate;
        userPurchasedByCurrency[_candidate][_currency] = allocationAfterRate;
        totalUnclaimed += allocationAfterRate;
        tokenSold += allocationAfterRate;
        uint256 refundAmount = Bi > (allocation) ? Bi - (allocation) : 0;
        refundAmount = _convertDecimals(refundAmount, uint8(token.decimals()), currencyDecimals);
        
        userExcessRefundBycurrency[_candidate][_currency] = UserExcessRefund({
            currencyExcessAmount: refundAmount,
            currency: _currency,
            isClaimed: false
        });

        return (allocationAfterRate, refundAmount);
    }

    /// @notice Convert currency amount to claim-token equivalent (same formula as allocation: decimals conversion then rate)
    /// @param currency Currency address
    /// @param amountInCurrency Amount in currency (currency decimals)
    /// @return Token amount in sale token decimals (claim-token equivalent)
    function _currencyToClaimTokenEquivalent(address currency, uint256 amountInCurrency) internal view returns (uint256) {
        if (amountInCurrency == 0) return 0;
        uint8 currencyDecimals = currency == address(0) ? 18 : uint8(offeredCurrencies[currency].decimals);
        uint256 inTokenDecimals = _convertDecimals(amountInCurrency, currencyDecimals, uint8(token.decimals()));
        return (inTokenDecimals * offeredCurrencies[currency].rate) / 1e18;
    }

    /// @notice Convert amount between different decimal precisions
    /// @param amount Amount to convert
    /// @param fromDecimals Source decimals
    /// @param toDecimals Target decimals
    /// @return Converted amount
    function _convertDecimals(uint256 amount, uint8 fromDecimals, uint8 toDecimals) internal pure returns (uint256) {
        if (fromDecimals == toDecimals){
             return amount;
        }
        if (toDecimals > fromDecimals) {
            return amount * (10 ** uint256(toDecimals - fromDecimals));
        } else {
            return amount / (10 ** uint256(fromDecimals - toDecimals));
        }
    }

    /// @notice Determine user tier from staking points
    /// @param stakingPoints User's staking points
    /// @return tier User's tier level
    /// @dev Thresholds: Diamond(200k+), Gold(50k+), Silver(20k+), Bronze(2k+), NoTier(<2k)
    function _getTierFromStakingPoints(uint256 stakingPoints) internal pure returns (Stage tier) {
        if (stakingPoints >= 200000) return Stage.Diamond;
        if (stakingPoints >= 50000) return Stage.Gold;
        if (stakingPoints >= 20000) return Stage.Silver;
        if (stakingPoints >= 2000) return Stage.Bronze;
        return Stage.NoTier;
    }

    /// @notice Calculate treasury fee and user refund amount for full refund
    /// @param user User address
    /// @param currency Currency address
    /// @return treasuryAmount Fee amount sent to treasury
    /// @return userRefundAmount Refund amount sent to user
    /// @dev Fee base matches claim path: invested amount minus oversubscription excess (excess is refundable capital, not allocation-backed).
    function _calculateAndStoreTreasuryAmountforRefund(address user, address currency) internal returns (uint256 treasuryAmount, uint256 userRefundAmount) {
        uint256 investedAmount = investedAmountOf[currency][user];
        if (investedAmount == 0) return (0, 0);

        uint256 excessRefundAmount = userExcessRefundBycurrency[user][currency].currencyExcessAmount;
        uint256 baseAmount = investedAmount - excessRefundAmount;

        uint256 stakingPoints = userStakingPoints[user];
        Stage tier = _getTierFromStakingPoints(stakingPoints);
        uint256 refundPercentage = stagePercentages[tier].refundPercentage;
        treasuryAmount = (baseAmount * refundPercentage) / 1000;
        userRefundAmount = investedAmount - treasuryAmount;
        treasuryFeesByCurrency[currency] += treasuryAmount;
        totalTreasuryFees += treasuryAmount;
    }

    /// @notice Calculate and store treasury fee for token claim
    /// @param user User address
    /// @param currency Currency address
    /// @dev Fee calculated on base amount (invested - excess refund), based on user tier
    function _calculateAndStoreTreasuryAmountforClaim(address user, address currency) internal returns (uint256 treasuryAmountRaised) {
        uint256 investedAmount = investedAmountOf[currency][user];
        if (investedAmount == 0) return 0;

        uint256 excessRefundAmount = userExcessRefundBycurrency[user][currency].currencyExcessAmount;
        uint256 stakingPoints = userStakingPoints[user];
        Stage tier = _getTierFromStakingPoints(stakingPoints);
        uint256 claimPercentage = stagePercentages[tier].claimPercentage;
        uint256 baseAmount = investedAmount - excessRefundAmount;
        uint256 treasuryAmount = (baseAmount * claimPercentage) / 1000;
        treasuryFeesByCurrency[currency] += treasuryAmount;
        totalTreasuryFees += treasuryAmount;
        return treasuryAmount;
    }

    /// @notice Verify signature for token purchase
    /// @param _candidate Purchaser address
    /// @param _currency Currency address for purchase
    /// @param _maxAmount Maximum purchase amount
    /// @param _minAmount Minimum purchase amount
    /// @param _stakingPoints User staking points
    /// @param _nonce One-time use nonce to prevent replay attacks
    /// @param _deadline Signature expiry (unix seconds); transaction must satisfy block.timestamp <= _deadline
    /// @param _signature Signature to verify
    /// @return True if signature is valid
    /// @dev Message hash includes: candidate, currency, maxAmount, minAmount, stakingPoints, nonce, deadline, contract address, chainId
    function _verifyBuySig(
        address _candidate,
        address _currency,
        uint256 _maxAmount,
        uint256 _minAmount,
        uint256 _stakingPoints,
        uint256 _nonce,
        uint256 _deadline,
        bytes memory _signature
    ) private view returns (bool) {
        if (msg.sender != _candidate) revert WrongCandidate();

        if (_nonce <= userNonces[_candidate]) revert NonceAlreadyUsed();
        if (block.timestamp > _deadline) revert SignatureExpired();

        bytes32 messageHash = keccak256(
            abi.encodePacked(
                _candidate,
                _currency,
                _maxAmount,
                _minAmount,
                _stakingPoints,
                _nonce,
                _deadline,
                address(this),
                block.chainid
            )
        );
        return ECDSA.recover(ECDSA.toEthSignedMessageHash(messageHash), _signature) == signer;
    }

    /// @notice Verify signature for token claim
    /// @param _candidate Claimant address
    /// @param _amount Claim amount
    /// @param _offeredCurrency Currency used for purchase
    /// @param _signature Signature to verify
    /// @return True if signature is valid
    /// @dev Message hash includes: candidate, amount, offeredCurrency, contract address, chainId
    function _verifyClaimSig(address _candidate, uint256 _amount, address _offeredCurrency, bytes memory _signature) private view returns (bool) {
        if (msg.sender != _candidate) revert WrongCandidate();
        bytes32 messageHash = keccak256(abi.encodePacked(_candidate, _amount, _offeredCurrency, address(this), block.chainid));
        return ECDSA.recover(ECDSA.toEthSignedMessageHash(messageHash), _signature) == signer;
    }

    /// @notice Verify signature for full refund
    /// @param _candidate Refund requester address
    /// @param _currency Currency to refund
    /// @param currencyAmount Currency amount to refund
    /// @param _signature Signature to verify
    /// @return True if signature is valid
    /// @dev Message hash includes: function identifier, candidate, currency, currencyAmount, contract address, chainId
    function _verifyFullRefundSig(address _candidate, address _currency, uint256 currencyAmount,  bytes memory _signature) private view returns (bool) {
        if (msg.sender != _candidate) revert WrongCandidate();
        bytes32 messageHash = keccak256(abi.encodePacked("FULL_REFUND", _candidate, _currency, currencyAmount, address(this), block.chainid));
        return ECDSA.recover(ECDSA.toEthSignedMessageHash(messageHash), _signature) == signer;
    }

    /// @notice Verify signature for excess refund claim
    /// @param _candidate Claimant address
    /// @param _currency Currency to refund
    /// @param _signature Signature to verify
    /// @return True if signature is valid
    /// @dev Message hash includes: function identifier, candidate, currency, contract address, chainId
    function _verifyExcessRefundClaimSig(address _candidate, address _currency, bytes memory _signature) private view returns (bool) {
        if (msg.sender != _candidate) revert WrongCandidate();
        bytes32 messageHash = keccak256(abi.encodePacked("EXCESS_REFUND_CLAIM", _candidate, _currency, address(this), block.chainid));
        return ECDSA.recover(ECDSA.toEthSignedMessageHash(messageHash), _signature) == signer;
    }
}
