// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { Auth } from "./Auth.sol";
import { TierConfig, UserTierInfo } from "../libraries/UserTierStructs.sol";

/// @title UserTierManager
/// @notice Manages user tiers with configurable fee discounts and rebate boosts
/// @dev Clean implementation focused on core functionality
abstract contract UserTierManager is Auth {

    /// @notice Counter for generating unique tier IDs
    uint256 public nextTierId;

    /// @notice Mapping from tier ID to tier configuration
    mapping(uint256 => TierConfig) public tierConfigs;

    /// @notice Mapping from user address to their tier information
    mapping(address => UserTierInfo) public userTierInfo;

    // ============ Events ============

    /// @notice Emitted when a new tier is created
    event TierCreated(
        uint256 indexed tierId,
        string name,
        uint256 feeDiscountBps,
        uint256 validUntil,
        address indexed createdBy
    );

    /// @notice Emitted when a tier configuration is updated
    event TierConfigUpdated(uint256 indexed tierId, address indexed updatedBy);

    /// @notice Emitted when a tier is activated/deactivated
    event TierStatusChanged(uint256 indexed tierId, bool isActive, address indexed updatedBy);

    /// @notice Emitted when a user's tier is updated
    event UserTierUpdated(
        address indexed user,
        uint256 oldTierId,
        uint256 newTierId,
        address indexed updatedBy
    );

    /// @notice Emitted when user trade volume is updated
    event UserVolumeUpdated(address indexed user, uint256 newTotalVolume, uint256 addedVolume);

    // ============ Errors ============

    error InvalidDiscountRate();
    error InvalidUser();
    error InvalidTier();
    error TierNotActive();
    error TierExpired();
    error ArrayLengthMismatch();

    // ============ Constants ============

    uint256 private constant BPS_DIVISOR = 10_000;

    constructor() {
        // Initialize default tier (ID 0) - no discounts or boosts
        nextTierId = 1;
        tierConfigs[0] = TierConfig({
            isActive: true,
            name: "Default",
            feeDiscountBps: 0,
            validUntil: 0, // permanent
            metadata: bytes32(0)
        });
    }

    // ============ Tier Management Functions ============

    /// @notice Creates a new tier with specified configuration
    /// @param name Human-readable tier name
    /// @param feeDiscountBps Fee discount in basis points (0-10000)
    /// @param validUntil Tier validity expiration (0 = permanent)
    /// @param metadata Additional tier-specific metadata
    /// @return tierId The ID of the created tier
    function createTier(
        string calldata name,
        uint256 feeDiscountBps,
        uint256 validUntil,
        bytes32 metadata
    ) external onlyAdmin returns (uint256 tierId) {
        if (feeDiscountBps > BPS_DIVISOR) revert InvalidDiscountRate();

        tierId = nextTierId++;
        
        tierConfigs[tierId] = TierConfig({
            isActive: true,
            name: name,
            feeDiscountBps: feeDiscountBps,
            validUntil: validUntil,
            metadata: metadata
        });

        emit TierCreated(
            tierId,
            name,
            feeDiscountBps,
            validUntil,
            msg.sender
        );
    }

    /// @notice Updates an existing tier configuration
    /// @param tierId The tier ID to update
    /// @param config The new tier configuration
    function updateTierConfig(uint256 tierId, TierConfig calldata config) external onlyAdmin {
        if (!tierConfigs[tierId].isActive) revert InvalidTier();
        if (config.feeDiscountBps > BPS_DIVISOR) revert InvalidDiscountRate();

        tierConfigs[tierId] = config;
        emit TierConfigUpdated(tierId, msg.sender);
    }

    /// @notice Activates or deactivates a tier
    /// @param tierId The tier ID
    /// @param isActive New status
    function setTierStatus(uint256 tierId, bool isActive) external onlyAdmin {
        tierConfigs[tierId].isActive = isActive;
        emit TierStatusChanged(tierId, isActive, msg.sender);
    }

    // ============ User Tier Assignment ============

    /// @notice Sets the tier for a user
    /// @param user The user address
    /// @param tierId The new tier ID for the user
    function setUserTier(address user, uint256 tierId) external onlyOperatorAdmin {
        if (user == address(0)) revert InvalidUser();
        if (!tierConfigs[tierId].isActive) revert TierNotActive();

        uint256 oldTierId = userTierInfo[user].tierId;
        
        userTierInfo[user] = UserTierInfo({
            tierId: tierId,
            assignedAt: block.timestamp,
            totalVolume: userTierInfo[user].totalVolume, // preserve volume
            isActive: true
        });

        emit UserTierUpdated(user, oldTierId, tierId, msg.sender);
    }

    /// @notice Sets the tier for multiple users in batch
    /// @param users Array of user addresses
    /// @param tierIds Array of corresponding tier IDs
    function setUserTiersBatch(address[] calldata users, uint256[] calldata tierIds) external onlyOperatorAdmin {
        if (users.length != tierIds.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < users.length; i++) {
            if (users[i] == address(0)) revert InvalidUser();
            if (!tierConfigs[tierIds[i]].isActive) revert TierNotActive();

            uint256 oldTierId = userTierInfo[users[i]].tierId;

            userTierInfo[users[i]] = UserTierInfo({
                tierId: tierIds[i],
                assignedAt: block.timestamp,
                totalVolume: userTierInfo[users[i]].totalVolume, // preserve volume
                isActive: true
            });

            emit UserTierUpdated(users[i], oldTierId, tierIds[i], msg.sender);
        }
    }

    /// @notice Removes a user from their current tier (completely deletes user data)
    /// @param user The user address to remove from tier
    /// @dev This completely deletes the user's tier data including volume history
    function removeUserFromTier(address user) external onlyOperatorAdmin {
        if (user == address(0)) revert InvalidUser();

        uint256 oldTierId = userTierInfo[user].tierId;

        // Completely delete user tier data
        delete userTierInfo[user];

        emit UserTierUpdated(user, oldTierId, 0, msg.sender);
    }

    /// @notice Removes multiple users from their tiers in batch
    /// @param users Array of user addresses to remove from tiers
    /// @dev This completely deletes all users' tier data including volume history
    function removeUsersFromTierBatch(address[] calldata users) external onlyOperatorAdmin {
        for (uint256 i = 0; i < users.length; i++) {
            if (users[i] == address(0)) revert InvalidUser();

            uint256 oldTierId = userTierInfo[users[i]].tierId;

            // Completely delete user tier data
            delete userTierInfo[users[i]];

            emit UserTierUpdated(users[i], oldTierId, 0, msg.sender);
        }
    }

    // ============ User Information Updates ============

    /// @notice Updates user's trading volume (called by trading contract)
    /// @param user The user address
    /// @param volumeToAdd Volume to add to user's total (in USDC)
    function updateUserVolume(address user, uint256 volumeToAdd) external onlyOperator {
        if (volumeToAdd == 0) return;

        UserTierInfo storage info = userTierInfo[user];
        info.totalVolume += volumeToAdd;

        emit UserVolumeUpdated(user, info.totalVolume, volumeToAdd);
    }

    // ============ View Functions ============

    /// @notice Gets the discount rate for a user based on their tier
    /// @param user The user address
    /// @return discountBps The discount rate in basis points
    function getUserDiscountBps(address user) external view returns (uint256 discountBps) {
        UserTierInfo storage info = userTierInfo[user];
        if (!info.isActive) return 0;

        TierConfig storage config = tierConfigs[info.tierId];
        if (!config.isActive) return 0;
        if (config.validUntil > 0 && block.timestamp > config.validUntil) return 0;

        return config.feeDiscountBps;
    }


    /// @notice Gets the tier information for a user
    /// @param user The user address
    /// @return info The user's tier information
    function getUserTierInfo(address user) external view returns (UserTierInfo memory info) {
        return userTierInfo[user];
    }

    /// @notice Gets the configuration for a tier
    /// @param tierId The tier ID
    /// @return config The tier configuration
    function getTierConfig(uint256 tierId) external view returns (TierConfig memory config) {
        return tierConfigs[tierId];
    }


    /// @notice Gets all available tiers
    /// @return tiers Array of tier configurations with their IDs
    function getAllTiers() external view returns (TierConfig[] memory tiers) {
        tiers = new TierConfig[](nextTierId);
        for (uint256 i = 0; i < nextTierId; i++) {
            tiers[i] = tierConfigs[i];
        }
    }

    // ============ Internal Functions ============

    /// @notice Applies user tier discount to a fee amount
    /// @param user The user address
    /// @param originalFee The original fee amount
    /// @return discountedFee The fee after applying user tier discount
    function applyUserDiscount(address user, uint256 originalFee) internal view returns (uint256 discountedFee) {
        uint256 discountBps = this.getUserDiscountBps(user);
        if (discountBps == 0) return originalFee;
        
        return originalFee * (BPS_DIVISOR - discountBps) / BPS_DIVISOR;
    }

    /// @notice Internal function for getting user tier discount (for compatibility)
    /// @param user The user address
    /// @return discountBps The discount rate in basis points
    function _getUserDiscountBps(address user) internal view virtual returns (uint256 discountBps) {
        return this.getUserDiscountBps(user);
    }
}