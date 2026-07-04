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
 * @title SOUUSDPayoutStrategy
 * @notice Traditional USD-based payout strategy
 * @dev All users claim pro-rata based on USD principal
 */
contract SOUUSDPayoutStrategy is
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
    mapping(uint256 => USDPayout) private _payouts;
    mapping(uint256 => mapping(uint256 => bool)) private _claimed; // payoutId => tokenId => claimed

    struct USDPayout {
        address paymentToken;
        uint256 totalAmount;
        uint256 totalClaimed;
        uint256 claimedPrincipal;       // Total principal of users who have claimed
        uint256 snapshotTotalPrincipal; // Total principal at payout creation
        bytes32 priceSnapshotId;
        uint256 createdAt;
        bool active;
    }

    // ============================================
    // ERRORS
    // ============================================

    error USDStrategy__ZeroAddress();
    error USDStrategy__PayoutNotFound();
    error USDStrategy__AlreadyClaimed();
    error USDStrategy__NotEligible();
    error USDStrategy__PayoutInactive();
    error USDStrategy__InsufficientBalance();
    error USDStrategy__NotTokenOwner();

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
            revert USDStrategy__ZeroAddress();
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
     * @notice Create a new USD-based payout
     */
    function createPayout(PayoutConfig calldata config) external override onlyRole(PAYOUT_CREATOR_ROLE) returns (uint256 payoutId) {
        payoutId = _nextPayoutId++;

        // Transfer tokens from creator to strategy contract
        IERC20(config.paymentToken).safeTransferFrom(msg.sender, address(this), config.amount);

        // Snapshot total principal at payout creation to prevent dilution from future mints
        uint256 snapshotPrincipal = _getTotalOriginalPrincipal();

        _payouts[payoutId] = USDPayout({
            paymentToken: config.paymentToken,
            totalAmount: config.amount,
            totalClaimed: 0,
            claimedPrincipal: 0,
            snapshotTotalPrincipal: snapshotPrincipal,
            priceSnapshotId: config.priceSnapshotId,
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
     * @return Amount of payment tokens claimable in usd value
     */
    function calculateClaimable(uint256 tokenId, uint256 payoutId) external view override returns (uint256) {
        USDPayout storage payout = _payouts[payoutId];
        if (!payout.active) return 0;
        if (_claimed[payoutId][tokenId]) return 0;

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive || claim.originalPrincipalUSD == 0) return 0;

        // Use snapshotted total principal from payout creation
        uint256 totalPrincipal = payout.snapshotTotalPrincipal;

        // Safety check: prevent underflow if claimedPrincipal >= totalPrincipal
        if (payout.claimedPrincipal >= totalPrincipal) return 0;

        // Calculate unclaimed principal (excludes users who already claimed)
        uint256 unclaimedPrincipal = totalPrincipal - payout.claimedPrincipal;

        if (unclaimedPrincipal == 0) return 0;

        // Safety check: prevent underflow if totalClaimed >= totalAmount
        if (payout.totalClaimed >= payout.totalAmount) return 0;

        // Calculate share of REMAINING payout based on unclaimed principal
        uint256 remainingAmount = payout.totalAmount - payout.totalClaimed;
        uint256 tokenAmount = (remainingAmount * claim.originalPrincipalUSD) / unclaimedPrincipal;

        // Safety cap at remaining amount
        if (tokenAmount > remainingAmount) {
            tokenAmount = remainingAmount;
        }

        // Convert to USD to check against user's remaining principal
        uint256 usdValue = _convertTokensToUSD(tokenAmount, payout.paymentToken, payout.priceSnapshotId);

        // Cap at remaining principal to avoid overpayment
        if (usdValue > claim.currentPrincipalUSD) {
            tokenAmount = _convertUSDToTokens(claim.currentPrincipalUSD, payout.paymentToken, payout.priceSnapshotId);
            usdValue = claim.currentPrincipalUSD;
        }
        return usdValue;
    }

    /**
     * @notice Check if token is eligible for payout
     */
    function isEligible(uint256 tokenId, uint256 payoutId) external view override returns (bool) {
        USDPayout storage payout = _payouts[payoutId];
        if (!payout.active) return false;
        if (_claimed[payoutId][tokenId]) return false;

        if (!souContract.exists(tokenId)) return false;

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive || claim.originalPrincipalUSD == 0) return false;

        // Prevent tokens from claiming payouts created before they existed
        if (claim.createdAt >= payout.createdAt) return false;

        return true;
    }

    /**
     * @notice Execute claim for a token
     */
    function executeClaim(uint256 tokenId, uint256 payoutId) external override nonReentrant returns (uint256) {
        USDPayout storage payout = _payouts[payoutId];

        // Verify ownership
        if (IERC721(address(souContract)).ownerOf(tokenId) != msg.sender) {
            revert USDStrategy__NotTokenOwner();
        }

        if (!payout.active) revert USDStrategy__PayoutInactive();
        if (_claimed[payoutId][tokenId]) revert USDStrategy__AlreadyClaimed();

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive || claim.originalPrincipalUSD == 0) {
            revert USDStrategy__NotEligible();
        }

        // Prevent tokens from claiming payouts created before they existed
        if (claim.createdAt >= payout.createdAt) {
            revert USDStrategy__NotEligible();
        }

        // Use snapshotted total principal from payout creation
        uint256 totalPrincipal = payout.snapshotTotalPrincipal;

        // Safety check: prevent underflow if claimedPrincipal >= totalPrincipal
        if (payout.claimedPrincipal >= totalPrincipal) {
            revert USDStrategy__NotEligible();
        }

        // Calculate unclaimed principal (excludes users who already claimed)
        uint256 unclaimedPrincipal = totalPrincipal - payout.claimedPrincipal;

        if (unclaimedPrincipal == 0) revert USDStrategy__NotEligible();

        // Safety check: prevent underflow if totalClaimed >= totalAmount
        if (payout.totalClaimed >= payout.totalAmount) {
            revert USDStrategy__NotEligible();
        }

        // Calculate share of REMAINING payout based on unclaimed principal
        uint256 remainingAmount = payout.totalAmount - payout.totalClaimed;
        uint256 tokenAmount = (remainingAmount * claim.originalPrincipalUSD) / unclaimedPrincipal;

        // Safety cap at remaining amount
        if (tokenAmount > remainingAmount) {
            tokenAmount = remainingAmount;
        }

        // Convert token amount to USD value for principal reduction
        uint256 usdValue = _convertTokensToUSD(tokenAmount, payout.paymentToken, payout.priceSnapshotId);

        // Cap at remaining principal - user can't claim more than they're owed
        if (usdValue > claim.currentPrincipalUSD) {
            usdValue = claim.currentPrincipalUSD;
            tokenAmount = _convertUSDToTokens(usdValue, payout.paymentToken, payout.priceSnapshotId);
        }

        // Mark as claimed and update tracking
        _claimed[payoutId][tokenId] = true;
        payout.totalClaimed += tokenAmount;
        payout.claimedPrincipal += claim.originalPrincipalUSD;  // Track claimed principal

        // Update SOU contract - reduce principal and track payout in USD
        // This will automatically set isActive=false if principal reaches 0
        souContract.reducePrincipal(tokenId, usdValue);
        souContract.increasePaidOut(tokenId, usdValue);

        // Transfer tokens to SOU owner
        address recipient = IERC721(address(souContract)).ownerOf(tokenId);
        IERC20(payout.paymentToken).safeTransfer(recipient, tokenAmount);

        emit PayoutClaimed(payoutId, tokenId, recipient, tokenAmount, usdValue);

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
        USDPayout storage payout = _payouts[distributionId];

        return DistributionInfo({
            distributionType: DistributionType.USD_BASED,
            eligibilityRule: EligibilityRule.ALL_USERS,
            paymentToken: payout.paymentToken,
            targetToken: address(0),
            totalAmount: payout.totalAmount,
            totalClaimed: payout.totalClaimed,
            snapshotTotalPrincipal: payout.snapshotTotalPrincipal,
            snapshotTotalTokenLost: 0,
            priceSnapshotId: payout.priceSnapshotId,
            createdAt: payout.createdAt,
            active: payout.active
        });
    }

    /**
     * @notice Get payout information (legacy wrapper for getDistributionInfo)
     */
    function getPayoutInfo(uint256 payoutId) external view override returns (PayoutInfo memory) {
        USDPayout storage payout = _payouts[payoutId];

        return PayoutInfo({
            payoutType: PayoutType.USD_BASED,
            eligibilityRule: EligibilityRule.ALL_USERS,
            paymentToken: payout.paymentToken,
            targetToken: address(0),
            totalAmount: payout.totalAmount,
            totalClaimed: payout.totalClaimed,
            snapshotTotalPrincipal: payout.snapshotTotalPrincipal,
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
        USDPayout storage payout = _payouts[payoutId];
        if (!payout.active) revert USDStrategy__PayoutInactive();

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
     * @notice Get total payout count (legacy wrapper for getDistributionCount)
     */
    function getPayoutCount() external view override returns (uint256) {
        return _nextPayoutId - 1;
    }

    // ============================================
    // INTERNAL FUNCTIONS
    // ============================================

    /**
     * @notice Get total original principal of all tokens
     * @dev Total original = current outstanding + already paid out
     */
    function _getTotalOriginalPrincipal() internal view returns (uint256) {
        uint256 outstanding = souContract.totalOutstandingPrincipalUSD();
        uint256 paidOut = souContract.totalPaidOutUSD();
        return outstanding + paidOut;
    }

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
        // usdAmount is in USD with 8 decimals, priceUSD is in 8 decimals
        // Result is in token decimals
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
        // tokenAmount is in token decimals, priceUSD is in 8 decimals
        // Result is in USD with 8 decimals
        return (tokenAmount * priceUSD) / (10 ** decimals);
    }

    /**
     * @notice Function to set new price oracle (admin only)
     */
    function setPriceOracle(address newOracle) external onlyRole(ADMIN_ROLE) {
        if (newOracle == address(0)) revert USDStrategy__ZeroAddress();
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
        if (recipient == address(0)) revert USDStrategy__ZeroAddress();
        IERC20(token).safeTransfer(recipient, amount);
    }

    // ============================================
    // UUPS UPGRADE
    // ============================================

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}
