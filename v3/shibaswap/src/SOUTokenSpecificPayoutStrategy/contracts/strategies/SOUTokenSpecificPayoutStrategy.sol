// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "../interfaces/ISOUPayoutStrategy.sol";
import "../interfaces/ISOUCore.sol";
import "../interfaces/ISOUActivityTracker.sol";
import "../PriceOracle.sol";

/**
 * @title SOUTokenSpecificPayoutStrategy
 * @notice Payout strategy that targets holders of a specific lost token
 * @dev Only SOU holders who lost the targetToken can claim.
 *      Claimable amount is based on how much of the targetToken the SOU holds.
 *      Uses reducePrincipalWithToken to reduce both token amount and USD principal.
 */
contract SOUTokenSpecificPayoutStrategy is
    Initializable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    ISOUPayoutStrategy
{
    using SafeERC20 for IERC20;

    // ============================================
    // ROLES
    // ============================================

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant PAYOUT_CREATOR_ROLE = keccak256("PAYOUT_CREATOR_ROLE");

    // ============================================
    // STATE VARIABLES
    // ============================================

    ISOUCore public souContract;
    PriceOracle public priceOracle;
    ISOUActivityTracker public activityTracker;

    uint256 private _nextPayoutId;
    mapping(uint256 => TokenSpecificPayout) private _payouts;
    mapping(uint256 => mapping(uint256 => bool)) private _claimed; // payoutId => tokenId => claimed

    struct TokenSpecificPayout {
        address paymentToken;       // ERC20 token used to pay (e.g., USDC, WETH)
        address targetToken;        // The lost token this payout targets (e.g., SHIB)
        uint256 totalAmount;        // Total payment tokens deposited
        uint256 totalClaimed;       // Total payment tokens claimed so far
        bytes32 priceSnapshotId;    // Price snapshot for USD conversions
        uint16 claimPercentageBps;  // Percentage of token loss claimable (10000 = 100%, 1000 = 10%)
        uint256 createdAt;
        bool active;
    }

    // ============================================
    // ERRORS
    // ============================================

    error TokenSpecific__ZeroAddress();
    error TokenSpecific__PayoutNotFound();
    error TokenSpecific__AlreadyClaimed();
    error TokenSpecific__NotEligible();
    error TokenSpecific__PayoutInactive();
    error TokenSpecific__InsufficientBalance();
    error TokenSpecific__NotTokenOwner();
    error TokenSpecific__InvalidTargetToken();
    error TokenSpecific__InvalidPercentage();

    // ============================================
    // INITIALIZATION
    // ============================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _souContract,
        address _priceOracle,
        address _activityTracker,
        address admin
    ) public initializer {
        if (_souContract == address(0) || _priceOracle == address(0) || admin == address(0)) {
            revert TokenSpecific__ZeroAddress();
        }

        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        souContract = ISOUCore(_souContract);
        priceOracle = PriceOracle(_priceOracle);
        activityTracker = ISOUActivityTracker(_activityTracker);
        _nextPayoutId = 1;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
        _grantRole(PAYOUT_CREATOR_ROLE, admin);
    }

    // ============================================
    // CORE FUNCTIONS
    // ============================================

    /**
     * @notice Create a new token-specific payout
     * @dev config.targetToken must be set to the lost token address (e.g., SHIB)
     *      config.paymentToken is the ERC20 used to pay (e.g., USDC)
     */
    function createPayout(PayoutConfig calldata config) external override onlyRole(PAYOUT_CREATOR_ROLE) returns (uint256 payoutId) {
        if (config.targetToken == address(0)) revert TokenSpecific__InvalidTargetToken();

        // Decode claimPercentageBps from extraData, default to 10000 (100%) if empty
        uint16 claimPct = 10000;
        if (config.extraData.length > 0) {
            claimPct = abi.decode(config.extraData, (uint16));
        }
        if (claimPct == 0 || claimPct > 10000) revert TokenSpecific__InvalidPercentage();

        payoutId = _nextPayoutId++;

        // Transfer payment tokens from creator to strategy contract
        IERC20(config.paymentToken).safeTransferFrom(msg.sender, address(this), config.amount);

        _payouts[payoutId] = TokenSpecificPayout({
            paymentToken: config.paymentToken,
            targetToken: config.targetToken,
            totalAmount: config.amount,
            totalClaimed: 0,
            priceSnapshotId: config.priceSnapshotId,
            claimPercentageBps: claimPct,
            createdAt: block.timestamp,
            active: true
        });

        emit PayoutCreated(payoutId, config.payoutType, config.paymentToken, config.amount);
        // Record activity in ActivityTracker
        if (address(activityTracker) != address(0)) {
            try activityTracker.recordActivity(
                msg.sender,
                0, // Not specific to any token
                ISOUActivityTracker.ActivityType.PAYOUT_CREATED,
                abi.encode(payoutId, config.paymentToken, config.amount)
            ) {} catch {
                // Activity tracking failed - continue
            }
        }

        return payoutId;
    }

    /**
     * @notice Calculate claimable amount for a token
     * @dev Claimable = USD value of user's targetToken loss, capped by pool and principal
     * @return usdValue Claimable amount in USD value
     */
    function calculateClaimable(uint256 tokenId, uint256 payoutId) external view override returns (uint256) {
        TokenSpecificPayout storage payout = _payouts[payoutId];
        if (!payout.active) return 0;
        if (_claimed[payoutId][tokenId]) return 0;

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive) return 0;

        // Check user has this specific token loss
        uint256 userTokenLost = souContract.getTokenLost(tokenId, payout.targetToken);
        if (userTokenLost == 0) return 0;

        // Apply claim percentage cap
        uint256 claimableTokens = (userTokenLost * payout.claimPercentageBps) / 10000;

        // Calculate USD value of claimable token amount
        uint256 usdValue = _convertTokensToUSD(claimableTokens, payout.targetToken, payout.priceSnapshotId);

        // Cap at user's remaining principal
        if (usdValue > claim.currentPrincipalUSD) {
            usdValue = claim.currentPrincipalUSD;
        }

        // Convert to payment tokens to check against pool
        uint256 paymentAmount = _convertUSDToTokens(usdValue, payout.paymentToken, payout.priceSnapshotId);

        // Cap at remaining pool
        uint256 remainingPool = payout.totalAmount - payout.totalClaimed;
        if (paymentAmount > remainingPool) {
            paymentAmount = remainingPool;
            usdValue = _convertTokensToUSD(paymentAmount, payout.paymentToken, payout.priceSnapshotId);
        }

        return usdValue;
    }

    /**
     * @notice Check if token is eligible for payout
     */
    function isEligible(uint256 tokenId, uint256 payoutId) external view override returns (bool) {
        TokenSpecificPayout storage payout = _payouts[payoutId];
        if (!payout.active) return false;
        if (_claimed[payoutId][tokenId]) return false;

        if (!souContract.exists(tokenId)) return false;

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive) return false;

        // Must have lost the target token
        uint256 userTokenLost = souContract.getTokenLost(tokenId, payout.targetToken);
        if (userTokenLost == 0) return false;

        // Prevent tokens from claiming payouts created before they existed
        if (claim.createdAt >= payout.createdAt) return false;

        return true;
    }

    /**
     * @notice Execute claim for a token
     * @dev Calculates user's claimable based on their targetToken loss,
     *      transfers payment tokens, and calls reducePrincipalWithToken
     */
    function executeClaim(uint256 tokenId, uint256 payoutId) external override nonReentrant returns (uint256) {
        TokenSpecificPayout storage payout = _payouts[payoutId];

        // Verify ownership
        if (IERC721(address(souContract)).ownerOf(tokenId) != msg.sender) {
            revert TokenSpecific__NotTokenOwner();
        }

        if (!payout.active) revert TokenSpecific__PayoutInactive();
        if (_claimed[payoutId][tokenId]) revert TokenSpecific__AlreadyClaimed();

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive) revert TokenSpecific__NotEligible();

        // Prevent tokens from claiming payouts created before they existed
        if (claim.createdAt >= payout.createdAt) revert TokenSpecific__NotEligible();

        // Get user's loss of the target token
        uint256 userTokenLost = souContract.getTokenLost(tokenId, payout.targetToken);
        if (userTokenLost == 0) revert TokenSpecific__NotEligible();

        // Apply claim percentage cap
        uint256 claimableTokens = (userTokenLost * payout.claimPercentageBps) / 10000;

        // Calculate USD value of claimable token amount
        uint256 usdValue = _convertTokensToUSD(claimableTokens, payout.targetToken, payout.priceSnapshotId);

        // The target token amount to reduce from the SOU
        uint256 targetTokenReduction = claimableTokens;

        // Cap at user's remaining principal
        if (usdValue > claim.currentPrincipalUSD) {
            usdValue = claim.currentPrincipalUSD;
            // Recalculate how much target token that corresponds to
            targetTokenReduction = _convertUSDToTokens(usdValue, payout.targetToken, payout.priceSnapshotId);
        }

        // Convert USD value to payment token amount
        uint256 paymentAmount = _convertUSDToTokens(usdValue, payout.paymentToken, payout.priceSnapshotId);

        // Cap at remaining pool
        uint256 remainingPool = payout.totalAmount - payout.totalClaimed;
        if (paymentAmount > remainingPool) {
            paymentAmount = remainingPool;
            usdValue = _convertTokensToUSD(paymentAmount, payout.paymentToken, payout.priceSnapshotId);
            targetTokenReduction = _convertUSDToTokens(usdValue, payout.targetToken, payout.priceSnapshotId);
        }

        // Mark as claimed and update tracking
        _claimed[payoutId][tokenId] = true;
        payout.totalClaimed += paymentAmount;

        // Reduce target token amount and USD principal on SOUCore
        souContract.reducePrincipalWithToken(tokenId, payout.targetToken, targetTokenReduction, usdValue);
        souContract.increasePaidOut(tokenId, usdValue);

        // Transfer payment tokens to SOU owner
        address recipient = IERC721(address(souContract)).ownerOf(tokenId);
        IERC20(payout.paymentToken).safeTransfer(recipient, paymentAmount);

        emit PayoutClaimed(payoutId, tokenId, recipient, paymentAmount, usdValue);

        return usdValue;
    }

    /**
     * @notice Check if token has claimed from payout
     */
    function hasClaimed(uint256 tokenId, uint256 payoutId) external view override returns (bool) {
        return _claimed[payoutId][tokenId];
    }

    /**
     * @notice Get distribution information (required by ISOUStrategy)
     */
    function getDistributionInfo(uint256 distributionId) external view override returns (DistributionInfo memory) {
        TokenSpecificPayout storage payout = _payouts[distributionId];

        return DistributionInfo({
            distributionType: DistributionType.TOKEN_SPECIFIC,
            eligibilityRule: EligibilityRule.LOST_SPECIFIC_TOKEN,
            paymentToken: payout.paymentToken,
            targetToken: payout.targetToken,
            totalAmount: payout.totalAmount,
            totalClaimed: payout.totalClaimed,
            snapshotTotalPrincipal: 0,
            snapshotTotalTokenLost: 0,
            priceSnapshotId: payout.priceSnapshotId,
            createdAt: payout.createdAt,
            active: payout.active
        });
    }

    /**
     * @notice Get payout information
     */
    function getPayoutInfo(uint256 payoutId) external view override returns (PayoutInfo memory) {
        TokenSpecificPayout storage payout = _payouts[payoutId];

        return PayoutInfo({
            payoutType: PayoutType.TOKEN_SPECIFIC,
            eligibilityRule: EligibilityRule.LOST_SPECIFIC_TOKEN,
            paymentToken: payout.paymentToken,
            targetToken: payout.targetToken,
            totalAmount: payout.totalAmount,
            totalClaimed: payout.totalClaimed,
            snapshotTotalPrincipal: 0,
            snapshotTotalTokenLost: 0,
            priceSnapshotId: payout.priceSnapshotId,
            createdAt: payout.createdAt,
            active: payout.active
        });
    }

    /**
     * @notice Cancel a payout
     */
    function cancelPayout(uint256 payoutId) external override onlyRole(ADMIN_ROLE) {
        TokenSpecificPayout storage payout = _payouts[payoutId];
        if (!payout.active) revert TokenSpecific__PayoutInactive();

        payout.active = false;

        emit PayoutCancelled(payoutId);
    }

    /**
     * @notice Get total distribution count (required by ISOUStrategy)
     */
    function getDistributionCount() external view override returns (uint256) {
        return _nextPayoutId - 1;
    }

    /**
     * @notice Get total payout count
     */
    function getPayoutCount() external view override returns (uint256) {
        return _nextPayoutId - 1;
    }

    // ============================================
    // INTERNAL FUNCTIONS
    // ============================================

    /**
     * @notice Convert USD value to token amount using price oracle
     */
    function _convertUSDToTokens(
        uint256 usdAmount,
        address token,
        bytes32 snapshotId
    ) internal view returns (uint256) {
        (uint256 priceUSD,,) = priceOracle.getTokenPrice(token, snapshotId);
        uint8 decimals = priceOracle.tokenDecimals(token);
        return (usdAmount * (10 ** decimals)) / priceUSD;
    }

    /**
     * @notice Convert token amount to USD value using price oracle
     */
    function _convertTokensToUSD(
        uint256 tokenAmount,
        address token,
        bytes32 snapshotId
    ) internal view returns (uint256) {
        (uint256 priceUSD,,) = priceOracle.getTokenPrice(token, snapshotId);
        uint8 decimals = priceOracle.tokenDecimals(token);
        return (tokenAmount * priceUSD) / (10 ** decimals);
    }

    /**
     * @notice Function to to set new price oracle (admin only)
     */
    function setPriceOracle(address newOracle) external onlyRole(ADMIN_ROLE) {
        if (newOracle == address(0)) revert TokenSpecific__ZeroAddress();
        priceOracle = PriceOracle(newOracle);
    }

    // ============================================
    // ADMIN FUNCTIONS
    // ============================================

    /**
     * @notice Emergency withdraw tokens
     */
    function emergencyWithdraw(
        address token,
        uint256 amount,
        address recipient
    ) external onlyRole(ADMIN_ROLE) {
        if (recipient == address(0)) revert TokenSpecific__ZeroAddress();
        IERC20(token).safeTransfer(recipient, amount);
    }

    // ============================================
    // UUPS UPGRADE
    // ============================================

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}
