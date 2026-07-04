// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./interfaces/ISOUDistributionManager.sol";
import "./interfaces/ISOUCore.sol";
import "./interfaces/ISOUStrategy.sol";
import "./interfaces/ISOUPayoutStrategy.sol";

/**
 * @title SOUDistributionManager
 * @notice Minimal coordinator between SOU holders and strategy contracts
 * @dev Does NOT create distributions - only facilitates claiming from approved strategies
 *
 * Design Philosophy:
 * - Users/admins create distributions directly on strategy contracts
 * - DistributionManager only handles claims and strategy approval
 * - Acts as a bridge: gives strategies permission to modify SOUCore
 * - Compatible with any strategy implementing ISOUPayoutStrategy
 *
 * Usage Flow:
 * 1. Admin approves strategy contracts via setStrategyApproval()
 * 2. Admin grants DISTRIBUTION_MANAGER_ROLE to approved strategies on SOUCore
 * 3. Users create payouts/donations/rewards directly on strategy contracts
 * 4. Users claim via DistributionManager.executeClaim() or batchExecuteClaims()
 * 5. DistributionManager verifies ownership and delegates to strategy
 * 6. Strategy executes claim and updates SOUCore
 */
contract SOUDistributionManager is
    Initializable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    ISOUDistributionManager
{
    // ============================================
    // ROLES
    // ============================================

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    // ============================================
    // STATE VARIABLES
    // ============================================

    ISOUCore public souContract;

    // Strategy approval system
    mapping(address => bool) public approvedStrategies;

    // Storage gap for future upgrades
    uint256[48] private __gap;

    // ============================================
    // ERRORS
    // ============================================

    error DistributionManager__ZeroAddress();
    error DistributionManager__StrategyNotApproved();
    error DistributionManager__NotTokenOwner();
    error DistributionManager__AlreadyClaimed();
    error DistributionManager__NotEligible();
    error DistributionManager__ArrayLengthMismatch();

    // ============================================
    // INITIALIZATION
    // ============================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _souContract,
        address admin
    ) public initializer {
        if (_souContract == address(0) || admin == address(0)) {
            revert DistributionManager__ZeroAddress();
        }

        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        souContract = ISOUCore(_souContract);

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
    }

    // ============================================
    // STRATEGY MANAGEMENT
    // ============================================

    /**
     * @notice Approve or remove a strategy
     * @dev When approved, strategy should be granted DISTRIBUTION_MANAGER_ROLE on SOUCore
     * @param strategy Strategy contract address
     * @param approved True to approve, false to remove
     */
    function setStrategyApproval(
        address strategy,
        bool approved
    ) external override onlyRole(ADMIN_ROLE) {
        if (strategy == address(0)) revert DistributionManager__ZeroAddress();

        approvedStrategies[strategy] = approved;

        emit StrategyApproved(strategy, approved);
    }

    /**
     * @notice Batch approve multiple strategies
     * @param strategies Array of strategy addresses
     * @param approvals Array of approval statuses
     */
    function batchSetStrategyApproval(
        address[] calldata strategies,
        bool[] calldata approvals
    ) external override onlyRole(ADMIN_ROLE) {
        if (strategies.length != approvals.length) {
            revert DistributionManager__ArrayLengthMismatch();
        }

        for (uint256 i = 0; i < strategies.length; i++) {
            if (strategies[i] == address(0)) continue;
            approvedStrategies[strategies[i]] = approvals[i];
            emit StrategyApproved(strategies[i], approvals[i]);
        }
    }

    /**
     * @notice Check if strategy is approved
     * @param strategy Strategy address
     * @return approved True if approved
     */
    function isStrategyApproved(
        address strategy
    ) external view override returns (bool) {
        return approvedStrategies[strategy];
    }

    // ============================================
    // CLAIM EXECUTION
    // ============================================

    /**
     * @notice Execute single claim from a strategy
     * @param strategy Strategy contract address
     * @param payoutId Payout ID within that strategy
     * @param tokenId SOU token ID to claim with
     * @param activityType Activity type to record (from SOUActivityTracker.ActivityType enum)
     * @return amount Amount claimed
     */
    function executeClaim(
        address strategy,
        uint256 payoutId,
        uint256 tokenId,
        uint8 activityType
    ) external override nonReentrant returns (uint256 amount) {
        // Verify strategy is approved
        if (!approvedStrategies[strategy]) {
            revert DistributionManager__StrategyNotApproved();
        }

        // Verify ownership
        if (IERC721(address(souContract)).ownerOf(tokenId) != msg.sender) {
            revert DistributionManager__NotTokenOwner();
        }

        ISOUStrategy strategyContract = ISOUStrategy(strategy);

        // Check if already claimed
        if (strategyContract.hasClaimed(tokenId, payoutId)) {
            revert DistributionManager__AlreadyClaimed();
        }

        // Check eligibility
        if (!strategyContract.isEligible(tokenId, payoutId)) {
            revert DistributionManager__NotEligible();
        }

        // Execute claim through strategy
        amount = strategyContract.executeClaim(tokenId, payoutId);

        // Record activity in ActivityTracker via SOUCore
        souContract.recordActivity(
            msg.sender,
            tokenId,
            activityType,
            abi.encode(strategy, payoutId, amount)
        );

        emit ClaimExecuted(strategy, payoutId, tokenId, msg.sender, amount);

        return amount;
    }

    /**
     * @notice Execute batch claims from multiple strategies
     * @dev Silently skips already claimed or ineligible claims for better UX
     * @param claims Array of claim parameters
     * @param activityType Activity type to record (from SOUActivityTracker.ActivityType enum)
     * @return totalAmount Total amount claimed across all claims
     */
    function batchExecuteClaims(
        ClaimParams[] calldata claims,
        uint8 activityType
    ) external override nonReentrant returns (uint256 totalAmount) {
        uint256 successCount = 0;

        for (uint256 i = 0; i < claims.length; i++) {
            ClaimParams memory claim = claims[i];

            // Skip if strategy not approved
            if (!approvedStrategies[claim.strategy]) continue;

            // Skip if not exists
            if (!souContract.exists(claim.tokenId)) continue;
            if (
                IERC721(address(souContract)).ownerOf(claim.tokenId) !=
                msg.sender
            ) {
                continue;
            }

            ISOUStrategy strategy = ISOUStrategy(claim.strategy);

            // Skip if already claimed
            if (strategy.hasClaimed(claim.tokenId, claim.payoutId)) continue;

            // Skip if not eligible
            if (!strategy.isEligible(claim.tokenId, claim.payoutId)) continue;

            // Execute claim with try-catch for safety
            try strategy.executeClaim(claim.tokenId, claim.payoutId) returns (
                uint256 amount
            ) {
                totalAmount += amount;
                successCount++;

                // Record activity for this specific claim
                try
                    souContract.recordActivity(
                        msg.sender,
                        claim.tokenId,
                        activityType,
                        abi.encode(claim.strategy, claim.payoutId, amount)
                    )
                {} catch {
                    // Activity tracking failed - continue
                }

                emit ClaimExecuted(
                    claim.strategy,
                    claim.payoutId,
                    claim.tokenId,
                    msg.sender,
                    amount
                );
            } catch {
                // Skip on failure, continue with next claim
                continue;
            }
        }

        emit BatchClaimExecuted(msg.sender, successCount, totalAmount);

        return totalAmount;
    }

    // ============================================
    // QUERY FUNCTIONS
    // ============================================

    /**
     * @notice Calculate claimable amount for a specific claim
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @param tokenId SOU token ID
     * @return amount Claimable amount
     */
    function calculateClaimable(
        address strategy,
        uint256 payoutId,
        uint256 tokenId
    ) external view override returns (uint256) {
        if (!approvedStrategies[strategy]) return 0;
        return ISOUStrategy(strategy).calculateClaimable(tokenId, payoutId);
    }

    /**
     * @notice Check if claim is eligible
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @param tokenId SOU token ID
     * @return eligible True if eligible
     */
    function isEligible(
        address strategy,
        uint256 payoutId,
        uint256 tokenId
    ) external view override returns (bool) {
        if (!approvedStrategies[strategy]) return false;
        return ISOUStrategy(strategy).isEligible(tokenId, payoutId);
    }

    /**
     * @notice Check if already claimed
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @param tokenId SOU token ID
     * @return claimed True if already claimed
     */
    function hasClaimed(
        address strategy,
        uint256 payoutId,
        uint256 tokenId
    ) external view override returns (bool) {
        if (!approvedStrategies[strategy]) return true; // Treat as claimed if not approved
        return ISOUStrategy(strategy).hasClaimed(tokenId, payoutId);
    }

    /**
     * @notice Get payout info from strategy
     * @param strategy Strategy address
     * @param payoutId Payout ID
     * @return info Payout info struct
     */
    function getPayoutInfo(
        address strategy,
        uint256 payoutId
    ) external view override returns (ISOUPayoutStrategy.PayoutInfo memory) {
        if (!approvedStrategies[strategy]) {
            revert DistributionManager__StrategyNotApproved();
        }
        return ISOUPayoutStrategy(strategy).getPayoutInfo(payoutId);
    }

    /**
     * @notice Get total payouts in a strategy
     * @param strategy Strategy address
     * @return count Total payout count
     */
    function getStrategyPayoutCount(
        address strategy
    ) external view override returns (uint256) {
        if (!approvedStrategies[strategy]) return 0;
        return ISOUPayoutStrategy(strategy).getPayoutCount();
    }

    // ============================================
    // REQUIRED OVERRIDES
    // ============================================

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(ADMIN_ROLE) {}
}
