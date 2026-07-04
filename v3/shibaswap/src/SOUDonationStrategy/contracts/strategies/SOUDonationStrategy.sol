// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "../interfaces/ISOUDonationStrategy.sol";
import "../interfaces/ISOUCore.sol";
import "../interfaces/ISOUActivityTracker.sol";
import "../PriceOracle.sol";

/**
 * @title SOUDonationStrategy
 * @notice Permissionless donation strategy for SOU holders
 * @dev Anyone can donate tokens to be distributed pro-rata among all SOU holders
 */
contract SOUDonationStrategy is
    Initializable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    ISOUDonationStrategy
{
    using SafeERC20 for IERC20;

    // ============================================
    // ROLES
    // ============================================

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    // ============================================
    // STATE VARIABLES
    // ============================================

    ISOUCore public souContract;
    PriceOracle public priceOracle;
    ISOUActivityTracker public activityTracker;

    uint256 private _nextDonationId;
    mapping(uint256 => Donation) private _donations;
    mapping(uint256 => mapping(uint256 => bool)) private _claimed; // donationId => tokenId => claimed

    struct Donation {
        address donor;
        address paymentToken;
        uint256 totalAmount;
        uint256 totalClaimed;
        uint256 claimedPrincipal;       // Total principal of users who have claimed
        uint256 snapshotTotalPrincipal; // Total principal at donation creation
        bytes32 priceSnapshotId;
        uint256 createdAt;
        bool active;
    }

    // ============================================
    // EVENTS
    // ============================================

    event DonationClaimed(
        uint256 indexed donationId,
        uint256 indexed tokenId,
        address indexed recipient,
        uint256 tokenAmount,
        uint256 usdValue
    );

    // ============================================
    // ERRORS
    // ============================================

    error DonationStrategy__ZeroAddress();
    error DonationStrategy__ZeroAmount();
    error DonationStrategy__DonationNotFound();
    error DonationStrategy__AlreadyClaimed();
    error DonationStrategy__NotEligible();
    error DonationStrategy__DonationInactive();
    error DonationStrategy__InsufficientBalance();
    error DonationStrategy__TokenNotSupported();
    error DonationStrategy__NotTokenOwner();

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
            revert DonationStrategy__ZeroAddress();
        }

        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        souContract = ISOUCore(_souContract);
        priceOracle = PriceOracle(_priceOracle);
        activityTracker = ISOUActivityTracker(_activityTracker);
        _nextDonationId = 1;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
    }

    // ============================================
    // CORE FUNCTIONS
    // ============================================

    /**
     * @notice Create a new donation (permissionless - anyone can donate)
     * @param paymentToken Token to donate (must be registered in PriceOracle)
     * @param amount Amount to donate
     * @return donationId ID of the created donation
     */
    function createDonation(
        address paymentToken,
        uint256 amount
    ) external nonReentrant returns (uint256 donationId) {
        if (paymentToken == address(0)) revert DonationStrategy__ZeroAddress();
        if (amount == 0) revert DonationStrategy__ZeroAmount();

        bytes32 priceSnapshotId = keccak256("CURRENT");

        // Verify token is supported in price oracle
        try priceOracle.getTokenPrice(paymentToken, priceSnapshotId) returns (uint256, uint256, uint256) {
            // Token is supported
        } catch {
            revert DonationStrategy__TokenNotSupported();
        }

        donationId = _nextDonationId++;

        // Transfer tokens from donor to strategy contract
        IERC20(paymentToken).safeTransferFrom(msg.sender, address(this), amount);

        // Snapshot total principal at donation creation to prevent dilution from future mints
        uint256 snapshotPrincipal = _getTotalOriginalPrincipal();

        _donations[donationId] = Donation({
            donor: msg.sender,
            paymentToken: paymentToken,
            totalAmount: amount,
            totalClaimed: 0,
            claimedPrincipal: 0,
            snapshotTotalPrincipal: snapshotPrincipal,
            priceSnapshotId: priceSnapshotId,
            createdAt: block.timestamp,
            active: true
        });

        emit DonationCreated(donationId, msg.sender, paymentToken, amount);

        // Record activity in ActivityTracker
        if (address(activityTracker) != address(0)) {
            try activityTracker.recordActivity(
                msg.sender,
                0, // Not specific to any token
                ISOUActivityTracker.ActivityType.DONATION_CREATED,
                abi.encode(donationId, paymentToken, amount)
            ) {} catch {
                // Activity tracking failed - continue
            }
        }

        return donationId;
    }


    /**
     * @notice Calculate claimable amount for a token
     * @return Amount of payment tokens claimable in usd value
     */
    function calculateClaimable(uint256 tokenId, uint256 payoutId) external view override returns (uint256) {
        Donation storage donation = _donations[payoutId];
        if (!donation.active) return 0;
        if (_claimed[payoutId][tokenId]) return 0;

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive || claim.originalPrincipalUSD == 0) return 0;

        // Use snapshotted total principal from donation creation
        uint256 totalPrincipal = donation.snapshotTotalPrincipal;

        // Calculate unclaimed principal (excludes users who already claimed)
        uint256 unclaimedPrincipal = totalPrincipal - donation.claimedPrincipal;

        if (unclaimedPrincipal == 0) return 0;

        // Calculate share of REMAINING payout based on unclaimed principal
        uint256 remainingAmount = donation.totalAmount - donation.totalClaimed;
        uint256 tokenAmount = (remainingAmount * claim.originalPrincipalUSD) / unclaimedPrincipal;

        // Safety cap at remaining amount
        if (tokenAmount > remainingAmount) {
            tokenAmount = remainingAmount;
        }

        // Convert to USD to check against user's remaining principal
        uint256 usdValue = _convertTokensToUSD(tokenAmount, donation.paymentToken, donation.priceSnapshotId);

        // Cap at remaining principal to avoid overpayment
        if (usdValue > claim.currentPrincipalUSD) {
            tokenAmount = _convertUSDToTokens(claim.currentPrincipalUSD, donation.paymentToken, donation.priceSnapshotId);
            usdValue = claim.currentPrincipalUSD;
        }

        return usdValue;
    }

    /**
     * @notice Check if token is eligible for donation claim
     */
    function isEligible(uint256 tokenId, uint256 payoutId) external view override returns (bool) {
        Donation storage donation = _donations[payoutId];
        if (!donation.active) return false;
        if (_claimed[payoutId][tokenId]) return false;

        if (!souContract.exists(tokenId)) return false;

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive || claim.originalPrincipalUSD == 0) return false;

        // Prevent tokens from claiming donations created before they existed
        if (claim.createdAt >= donation.createdAt) return false;

        return true;
    }

    /**
     * @notice Execute claim for a token
     */
    function executeClaim(uint256 tokenId, uint256 payoutId) external override nonReentrant returns (uint256) {
        Donation storage donation = _donations[payoutId];

        // Verify ownership
        if (IERC721(address(souContract)).ownerOf(tokenId) != msg.sender) {
            revert DonationStrategy__NotTokenOwner();
        }

        if (!donation.active) revert DonationStrategy__DonationInactive();
        if (_claimed[payoutId][tokenId]) revert DonationStrategy__AlreadyClaimed();

        ISOUCore.SOUClaim memory claim = souContract.getClaim(tokenId);
        if (!claim.isActive || claim.originalPrincipalUSD == 0) {
            revert DonationStrategy__NotEligible();
        }

        // Prevent tokens from claiming donations created before they existed
        if (claim.createdAt >= donation.createdAt) {
            revert DonationStrategy__NotEligible();
        }

        // Use snapshotted total principal from donation creation
        uint256 totalPrincipal = donation.snapshotTotalPrincipal;

        // Calculate unclaimed principal (excludes users who already claimed)
        uint256 unclaimedPrincipal = totalPrincipal - donation.claimedPrincipal;

        if (unclaimedPrincipal == 0) revert DonationStrategy__NotEligible();

        // Calculate share of REMAINING payout based on unclaimed principal
        uint256 remainingAmount = donation.totalAmount - donation.totalClaimed;
        uint256 tokenAmount = (remainingAmount * claim.originalPrincipalUSD) / unclaimedPrincipal;

        // Safety cap at remaining amount
        if (tokenAmount > remainingAmount) {
            tokenAmount = remainingAmount;
        }

        // Convert token amount to USD value for principal reduction
        uint256 usdValue = _convertTokensToUSD(tokenAmount, donation.paymentToken, donation.priceSnapshotId);

        // Cap at remaining principal - user can't claim more than they're owed
        if (usdValue > claim.currentPrincipalUSD) {
            usdValue = claim.currentPrincipalUSD;
            tokenAmount = _convertUSDToTokens(usdValue, donation.paymentToken, donation.priceSnapshotId);
        }

        // Mark as claimed and update tracking
        _claimed[payoutId][tokenId] = true;
        donation.totalClaimed += tokenAmount;
        donation.claimedPrincipal += claim.originalPrincipalUSD;  // Track claimed principal

        // Update SOU contract - reduce principal and track payout in USD
        // This will automatically set isActive=false if principal reaches 0
        souContract.reducePrincipal(tokenId, usdValue);
        souContract.increasePaidOut(tokenId, usdValue);

        // Transfer tokens to SOU owner
        address recipient = IERC721(address(souContract)).ownerOf(tokenId);
        IERC20(donation.paymentToken).safeTransfer(recipient, tokenAmount);

        emit DistributionClaimed(payoutId, tokenId, recipient, tokenAmount, usdValue);
        emit DonationClaimed(payoutId, tokenId, recipient, tokenAmount, usdValue);

        return usdValue;
    }

    /**
     * @notice Check if token has claimed from donation
     */
    function hasClaimed(uint256 tokenId, uint256 payoutId) external view override returns (bool) {
        return _claimed[payoutId][tokenId];
    }

    /**
     * @notice Get distribution information (required by ISOUStrategy)
     */
    function getDistributionInfo(uint256 distributionId) external view override returns (DistributionInfo memory) {
        Donation storage donation = _donations[distributionId];

        return DistributionInfo({
            distributionType: DistributionType.DONATION,
            eligibilityRule: EligibilityRule.ALL_USERS,
            paymentToken: donation.paymentToken,
            targetToken: address(0),
            totalAmount: donation.totalAmount,
            totalClaimed: donation.totalClaimed,
            snapshotTotalPrincipal: donation.snapshotTotalPrincipal,
            snapshotTotalTokenLost: 0,
            priceSnapshotId: donation.priceSnapshotId,
            createdAt: donation.createdAt,
            active: donation.active
        });
    }

    /**
     * @notice Get donation information (custom function)
     */
    function getDonationInfo(uint256 donationId) external view returns (
        address donor,
        address paymentToken,
        uint256 totalAmount,
        uint256 totalClaimed,
        bytes32 priceSnapshotId,
        uint256 createdAt,
        bool active
    ) {
        Donation storage donation = _donations[donationId];
        return (
            donation.donor,
            donation.paymentToken,
            donation.totalAmount,
            donation.totalClaimed,
            donation.priceSnapshotId,
            donation.createdAt,
            donation.active
        );
    }

    /**
     * @notice Cancel a donation (admin only - for emergencies)
     */
    function cancelDonation(uint256 donationId) external override onlyRole(ADMIN_ROLE) {
        Donation storage donation = _donations[donationId];
        if (!donation.active) revert DonationStrategy__DonationInactive();

        donation.active = false;

        emit DonationCancelled(donationId);
    }

    /**
     * @notice Get total distribution count (required by ISOUStrategy)
     */
    function getDistributionCount() external view override returns (uint256) {
        return _nextDonationId - 1;
    }

    /**
     * @notice Get total donation count (alias for getDistributionCount)
     */
    function getDonationCount() external view override returns (uint256) {
        return _nextDonationId - 1;
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
    function setPriceOracle(address newPriceOracle) external onlyRole(ADMIN_ROLE) {
        if (newPriceOracle == address(0)) revert DonationStrategy__ZeroAddress();
        priceOracle = PriceOracle(newPriceOracle);
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
        if (recipient == address(0)) revert DonationStrategy__ZeroAddress();
        IERC20(token).safeTransfer(recipient, amount);
    }

    // ============================================
    // UUPS UPGRADE
    // ============================================

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}
