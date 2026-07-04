// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title ISOUCore
 * @notice Interface for the core SOU NFT contract
 * @dev This interface defines the minimal API for the SOU contract that other contracts depend on
 */
interface ISOUCore {
    // ============================================
    // STRUCTS
    // ============================================

    struct SOUClaim {
        uint256 originalPrincipalUSD;      // Total USD lost initially
        uint256 currentPrincipalUSD;       // Remaining USD to be compensated
        uint256 totalPaidOutUSD;           // USD value paid out (principal reductions)
        uint256 donationsReceivedUSD;      // USD value from donations
        uint256 rewardsReceivedUSD;        // USD value from rewards (non-principal)
        bool isActive;
        address originalOwner;
        uint256 createdAt;
    }

    struct TokenLoss {
        address tokenAddress;              // Token user lost (e.g., WETH, SHIB)
        uint256 tokenAmount;               // Remaining claimable amount of token
        uint256 referencePriceUSD;         // USD price reference
        uint256 usdValueAtLoss;            // tokenAmount * referencePriceUSD (calculated)
    }

    struct TokenLossInput {
        address tokenAddress;
        uint256 tokenAmount;
    }

    // ============================================
    // EVENTS
    // ============================================

    event SOUMinted(uint256 indexed tokenId, address indexed owner, uint256 principalUSD);
    event TokenLossAdded(uint256 indexed tokenId, address indexed token, uint256 amount, uint256 usdValue);
    event PrincipalReduced(uint256 indexed tokenId, uint256 amountUSD, uint256 newPrincipal);
    event PrincipalReducedWithToken(uint256 indexed tokenId, address indexed token, uint256 tokenAmount, uint256 usdReduction);
    event PaidOutIncreased(uint256 indexed tokenId, uint256 amountUSD, uint256 newTotal);
    event RewardsIncreased(uint256 indexed tokenId, uint256 amountUSD, uint256 newTotal);
    event DonationsIncreased(uint256 indexed tokenId, uint256 amountUSD, uint256 newTotal);
    event SOUSplit(uint256 indexed originalTokenId, uint256 indexed newTokenId, uint256 percentage);
    event SOUMerged(uint256[] tokenIds, uint256 indexed newTokenId);

    // ============================================
    // PRINCIPAL MANAGEMENT
    // ============================================

    /**
     * @notice Reduce principal after USD-based payout
     * @param tokenId SOU token ID
     * @param amountUSD USD amount to reduce
     */
    function reducePrincipal(uint256 tokenId, uint256 amountUSD) external;

    /**
     * @notice Reduce principal and track specific token claimed
     * @param tokenId SOU token ID
     * @param tokenAddress Token being claimed
     * @param tokenAmount Amount of token claimed
     * @param usdValueReduction USD value to reduce from principal
     */
    function reducePrincipalWithToken(
        uint256 tokenId,
        address tokenAddress,
        uint256 tokenAmount,
        uint256 usdValueReduction
    ) external;

    /**
     * @notice Increase paid out amount
     * @param tokenId SOU token ID
     * @param amountUSD USD amount paid out
     */
    function increasePaidOut(uint256 tokenId, uint256 amountUSD) external;

    /**
     * @notice Track reward received (does NOT reduce principal)
     * @param tokenId SOU token ID
     * @param amountUSD USD value of reward
     */
    function increaseRewardsReceived(uint256 tokenId, uint256 amountUSD) external;

    /**
     * @notice Track donation received (does NOT reduce principal)
     * @param tokenId SOU token ID
     * @param amountUSD USD value of donation
     */
    function increaseDonationsReceived(uint256 tokenId, uint256 amountUSD) external;

    // ============================================
    // ACTIVITY TRACKING
    // ============================================

    /**
     * @notice Record activity in ActivityTracker (called by DistributionManager)
     * @param user User address
     * @param tokenId SOU token ID
     * @param activityType Type of activity
     * @param data Encoded activity data
     */
    function recordActivity(
        address user,
        uint256 tokenId,
        uint8 activityType,
        bytes calldata data
    ) external;

    // ============================================
    // QUERY FUNCTIONS
    // ============================================

    /**
     * @notice Get full claim data
     * @param tokenId SOU token ID
     * @return claim The SOUClaim struct
     */
    function getClaim(uint256 tokenId) external view returns (SOUClaim memory claim);

    /**
     * @notice Check if user lost specific token
     * @param tokenId SOU token ID
     * @param token Token address
     * @return hasToken True if user lost this token
     */
    function hasLostToken(uint256 tokenId, address token) external view returns (bool hasToken);

    /**
     * @notice Get amount of specific token user lost (remaining claimable)
     * @param tokenId SOU token ID
     * @param token Token address
     * @return amount Amount of token lost
     */
    function getTokenLost(uint256 tokenId, address token) external view returns (uint256 amount);

    /**
     * @notice Get all tokens user lost
     * @param tokenId SOU token ID
     * @return losses Array of TokenLoss structs
     */
    function getTokenLosses(uint256 tokenId) external view returns (TokenLoss[] memory losses);

    /**
     * @notice Get all token IDs that lost specific token
     * @param token Token address
     * @return tokenIds Array of token IDs
     */
    function getTokenIdsWithLoss(address token) external view returns (uint256[] memory tokenIds);

    // ============================================
    // OPERATIONS
    // ============================================

    /**
     * @notice Handle bridge compensation when tokens are burned on Shibarium
     * @dev If user has no SOU: mints new one. If user has SOU: adds to their first SOU
     * @param user The user who lost tokens
     * @param token The token address that was lost
     * @param amount The amount of token lost
     * @return tokenId The SOU token ID (new or existing)
     */
    function handleBridgeCompensation(
        address user,
        address token,
        uint256 amount
    ) external returns (uint256 tokenId);

    /**
     * @notice Split SOU into two based on percentage
     * @param tokenId SOU token ID to split
     * @param percentage Percentage to split (0-100)
     * @return newTokenId The ID of the newly created SOU
     */
    function splitSOU(uint256 tokenId, uint256 percentage) external returns (uint256 newTokenId);

    /**
     * @notice Split SOU by specific token allocation
     * @param tokenId The SOU token ID to split
     * @param tokensForFirstSOU Array of token addresses to allocate to the first SOU
     * @return newTokenId1 The ID of the first newly created token
     * @return newTokenId2 The ID of the second newly created token
     */
    function splitSOUByTokens(
        uint256 tokenId,
        address[] calldata tokensForFirstSOU
    ) external returns (uint256 newTokenId1, uint256 newTokenId2);

    /**
     * @notice Merge multiple SOUs into one
     * @param tokenIds Array of token IDs to merge
     * @return newTokenId The ID of the merged SOU
     */
    function mergeSOU(uint256[] calldata tokenIds) external returns (uint256 newTokenId);

    // ============================================
    // GLOBAL STATE
    // ============================================

    /**
     * @notice Get total outstanding principal across all SOUs
     * @return total Total outstanding principal in USD
     */
    function totalOutstandingPrincipalUSD() external view returns (uint256 total);

    /**
     * @notice Get total paid out across all SOUs
     * @return total Total paid out in USD
     */
    function totalPaidOutUSD() external view returns (uint256 total);

    /**
     * @notice Check if token exists
     * @param tokenId Token ID to check
     * @return exists True if token exists
     */
    function exists(uint256 tokenId) external view returns (bool exists);
}
