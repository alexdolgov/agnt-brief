// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title ISnuggleVaultReferral
/// @notice Minimal interface for reading referral data from SnuggleVault
interface ISnuggleVaultReferral {
    function referrer(address user) external view returns (address);
    function owner() external view returns (address);
}

/// @title ReferralTracker
/// @notice Tracks referral relationships and earnings for the Snuggle protocol
/// @dev Reads referrer data from vault's public mapping, tracks earnings via StakingManager calls
/// @author Snuggle (snuggle.fi)
contract ReferralTracker {
    // ═══════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The SnuggleVault contract
    ISnuggleVaultReferral public immutable vault;

    // ═══════════════════════════════════════════════════════════════════════════
    // STATE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Authorized address that can record earnings (StakingManager)
    address public earningsRecorder;

    /// @notice Referrer => list of users they referred
    mapping(address => address[]) public referrals;

    /// @notice User => index in referrer's array (1-indexed, 0 means not recorded)
    mapping(address => uint256) public userReferralIndex;

    /// @notice Referrer => token => total earnings
    mapping(address => mapping(address => uint256)) public referralEarnings;

    /// @notice Referrer => list of tokens they've earned
    mapping(address => address[]) public earnedTokens;

    /// @notice Referrer => token => whether token is in earnedTokens array
    mapping(address => mapping(address => bool)) public hasEarnedToken;

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error NoReferrer();
    error AlreadyRecorded();
    error NotAuthorized();
    error InvalidAddress();

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ═══════════════════════════════════════════════════════════════════════════

    event ReferralRecorded(address indexed referrer, address indexed user);
    event EarningsRecorded(address indexed referrer, address indexed token, uint256 amount, uint256 totalEarnings);
    event EarningsRecorderUpdated(address indexed oldRecorder, address indexed newRecorder);

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Initialize the tracker
    /// @param _vault The SnuggleVault address
    constructor(address _vault) {
        if (_vault == address(0)) revert InvalidAddress();
        vault = ISnuggleVaultReferral(_vault);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ADMIN FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Set the address authorized to record earnings (typically StakingManager)
    /// @param _recorder The new earnings recorder address
    function setEarningsRecorder(address _recorder) external {
        if (msg.sender != vault.owner()) revert NotAuthorized();
        emit EarningsRecorderUpdated(earningsRecorder, _recorder);
        earningsRecorder = _recorder;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // RECORDING FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Record a referral relationship
    /// @dev Anyone can call this - it reads the referrer from the vault
    /// @param user The user who was referred
    function recordReferral(address user) external {
        // Check if already recorded
        if (userReferralIndex[user] != 0) revert AlreadyRecorded();

        // Get referrer from vault
        address ref = vault.referrer(user);
        if (ref == address(0)) revert NoReferrer();

        // Record the relationship
        referrals[ref].push(user);
        userReferralIndex[user] = referrals[ref].length; // 1-indexed

        emit ReferralRecorded(ref, user);
    }

    /// @notice Record referral earnings
    /// @dev Only callable by the authorized earnings recorder (StakingManager)
    /// @param referrer The referrer who earned
    /// @param token The token earned
    /// @param amount The amount earned
    function recordEarnings(address referrer, address token, uint256 amount) external {
        if (msg.sender != earningsRecorder) revert NotAuthorized();
        if (amount == 0) return;

        // Track token if not already tracked for this referrer
        if (!hasEarnedToken[referrer][token]) {
            earnedTokens[referrer].push(token);
            hasEarnedToken[referrer][token] = true;
        }

        // Accumulate earnings
        referralEarnings[referrer][token] += amount;

        emit EarningsRecorded(referrer, token, amount, referralEarnings[referrer][token]);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // VIEW FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Get the number of users referred by a referrer
    /// @param referrer The referrer address
    /// @return count Number of referred users
    function getReferralCount(address referrer) external view returns (uint256 count) {
        return referrals[referrer].length;
    }

    /// @notice Get all users referred by a referrer
    /// @param referrer The referrer address
    /// @return users Array of referred user addresses
    function getReferrals(address referrer) external view returns (address[] memory users) {
        return referrals[referrer];
    }

    /// @notice Get referred users with pagination
    /// @param referrer The referrer address
    /// @param offset Starting index
    /// @param limit Maximum number to return
    /// @return users Array of referred user addresses
    /// @return hasMore Whether there are more users beyond this batch
    function getReferralsPaginated(
        address referrer,
        uint256 offset,
        uint256 limit
    ) external view returns (address[] memory users, bool hasMore) {
        address[] storage allReferrals = referrals[referrer];
        uint256 total = allReferrals.length;

        if (offset >= total) {
            return (new address[](0), false);
        }

        uint256 remaining = total - offset;
        uint256 count = remaining < limit ? remaining : limit;
        hasMore = remaining > limit;

        users = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            users[i] = allReferrals[offset + i];
        }
    }

    /// @notice Get total earnings for a referrer across all tokens
    /// @param referrer The referrer address
    /// @return tokens Array of token addresses
    /// @return amounts Array of earnings amounts (matching indices with tokens)
    function getAllEarnings(address referrer) external view returns (
        address[] memory tokens,
        uint256[] memory amounts
    ) {
        tokens = earnedTokens[referrer];
        amounts = new uint256[](tokens.length);

        for (uint256 i = 0; i < tokens.length; i++) {
            amounts[i] = referralEarnings[referrer][tokens[i]];
        }
    }

    /// @notice Get earnings for a specific token
    /// @param referrer The referrer address
    /// @param token The token address
    /// @return amount Total earnings in that token
    function getEarnings(address referrer, address token) external view returns (uint256 amount) {
        return referralEarnings[referrer][token];
    }

    /// @notice Check if a user's referral has been recorded
    /// @param user The user address
    /// @return recorded Whether the referral has been recorded
    /// @return referrer The referrer address (if recorded)
    function isReferralRecorded(address user) external view returns (bool recorded, address referrer) {
        recorded = userReferralIndex[user] != 0;
        if (recorded) {
            referrer = vault.referrer(user);
        }
    }

    /// @notice Get summary stats for a referrer
    /// @param referrer The referrer address
    /// @return totalReferrals Number of users referred
    /// @return totalTokensEarned Number of different tokens earned
    function getReferrerStats(address referrer) external view returns (
        uint256 totalReferrals,
        uint256 totalTokensEarned
    ) {
        totalReferrals = referrals[referrer].length;
        totalTokensEarned = earnedTokens[referrer].length;
    }
}
