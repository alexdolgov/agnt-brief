// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract SOUActivityTracker is Initializable, AccessControlUpgradeable, PausableUpgradeable, UUPSUpgradeable {
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant TRACKER_ROLE = keccak256("TRACKER_ROLE");

    enum ActivityType {
        MINT,
        UPDATE,
        SPLIT,
        MERGE,
        PAYOUT_CLAIMED,
        BATCH_PAYOUT_CLAIMED,
        GLOBAL_DONATION_CLAIMED,
        REWARD_CLAIMED,
        TRANSFER,
        PAYOUT_CREATED,
        DONATION_CREATED,
        REWARD_CREATED
    }

    struct UserActivity {
        uint256 tokenId;
        ActivityType activityType;
        uint256 timestamp;
        bytes data; // Encoded activity-specific data
    }

    // User address => array of ALL activities
    mapping(address => UserActivity[]) private userActivities;

    // Global activities (payouts/donations created, visible to all users)
    UserActivity[] private globalActivities;

    // Global activity counter
    uint256 public totalActivities;

    event ActivityRecorded(
        address indexed user,
        uint256 indexed tokenId,
        ActivityType activityType,
        uint256 timestamp
    );

    event GlobalActivityRecorded(
        ActivityType activityType,
        uint256 timestamp
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address admin) public initializer {
        require(admin != address(0), "SOUActivityTracker: Invalid admin");

        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
    }

    // ============ Activity Tracking ============

    function recordActivity(
        address user,
        uint256 tokenId,
        ActivityType activityType,
        bytes calldata data
    ) external onlyRole(TRACKER_ROLE) whenNotPaused {
        require(user != address(0), "SOUActivityTracker: Invalid user");

        UserActivity memory activity = UserActivity({
            tokenId: tokenId,
            activityType: activityType,
            timestamp: block.timestamp,
            data: data
        });

        userActivities[user].push(activity);
        totalActivities++;

        emit ActivityRecorded(user, tokenId, activityType, block.timestamp);

        // Auto-record as global activity for payout/donation/reward creation
        if (
            activityType == ActivityType.PAYOUT_CREATED ||
            activityType == ActivityType.DONATION_CREATED ||
            activityType == ActivityType.REWARD_CREATED
        ) {
            _recordGlobalActivity(tokenId, activityType, data);
        }
    }

    function _recordGlobalActivity(
        uint256 tokenId,
        ActivityType activityType,
        bytes calldata data
    ) internal {
        UserActivity memory activity = UserActivity({
            tokenId: tokenId,
            activityType: activityType,
            timestamp: block.timestamp,
            data: data
        });

        globalActivities.push(activity);

        emit GlobalActivityRecorded(activityType, block.timestamp);
    }

    // ============ View Functions ============

    function getUserActivities(address user) external view returns (UserActivity[] memory) {
        return userActivities[user];
    }

    function getUserActivityCount(address user) external view returns (uint256) {
        return userActivities[user].length;
    }

    // Get paginated activities
    function getUserActivitiesPaginated(
        address user,
        uint256 offset,
        uint256 limit
    ) external view returns (UserActivity[] memory) {
        uint256 total = userActivities[user].length;
        if (offset >= total) {
            return new UserActivity[](0);
        }

        uint256 end = offset + limit;
        if (end > total) {
            end = total;
        }

        UserActivity[] memory result = new UserActivity[](end - offset);
        for (uint256 i = offset; i < end; i++) {
            result[i - offset] = userActivities[user][i];
        }

        return result;
    }

    // Get latest N activities
    function getUserLatestActivities(
        address user,
        uint256 count
    ) external view returns (UserActivity[] memory) {
        uint256 total = userActivities[user].length;
        if (total == 0 || count == 0) {
            return new UserActivity[](0);
        }

        uint256 actualCount = count > total ? total : count;
        UserActivity[] memory result = new UserActivity[](actualCount);

        for (uint256 i = 0; i < actualCount; i++) {
            result[i] = userActivities[user][total - actualCount + i];
        }

        return result;
    }

    // Filter activities by type
    function getUserActivitiesByType(
        address user,
        ActivityType activityType
    ) external view returns (UserActivity[] memory) {
        uint256 total = userActivities[user].length;
        uint256 count = 0;

        // Count matching activities
        for (uint256 i = 0; i < total; i++) {
            if (userActivities[user][i].activityType == activityType) {
                count++;
            }
        }

        UserActivity[] memory result = new UserActivity[](count);
        uint256 index = 0;

        // Populate result array
        for (uint256 i = 0; i < total; i++) {
            if (userActivities[user][i].activityType == activityType) {
                result[index] = userActivities[user][i];
                index++;
            }
        }

        return result;
    }

    // Filter activities by token ID
    function getUserActivitiesByToken(
        address user,
        uint256 tokenId
    ) external view returns (UserActivity[] memory) {
        uint256 total = userActivities[user].length;
        uint256 count = 0;

        // Count matching activities
        for (uint256 i = 0; i < total; i++) {
            if (userActivities[user][i].tokenId == tokenId) {
                count++;
            }
        }

        UserActivity[] memory result = new UserActivity[](count);
        uint256 index = 0;

        // Populate result array
        for (uint256 i = 0; i < total; i++) {
            if (userActivities[user][i].tokenId == tokenId) {
                result[index] = userActivities[user][i];
                index++;
            }
        }

        return result;
    }

    // ============ Global Activities View Functions ============

    function getGlobalActivities() external view returns (UserActivity[] memory) {
        return globalActivities;
    }

    function getGlobalActivityCount() external view returns (uint256) {
        return globalActivities.length;
    }

    function getGlobalActivitiesPaginated(
        uint256 offset,
        uint256 limit
    ) external view returns (UserActivity[] memory) {
        uint256 total = globalActivities.length;
        if (offset >= total) {
            return new UserActivity[](0);
        }

        uint256 end = offset + limit;
        if (end > total) {
            end = total;
        }

        UserActivity[] memory result = new UserActivity[](end - offset);
        for (uint256 i = offset; i < end; i++) {
            result[i - offset] = globalActivities[i];
        }

        return result;
    }

    function getLatestGlobalActivities(
        uint256 count
    ) external view returns (UserActivity[] memory) {
        uint256 total = globalActivities.length;
        if (total == 0 || count == 0) {
            return new UserActivity[](0);
        }

        uint256 actualCount = count > total ? total : count;
        UserActivity[] memory result = new UserActivity[](actualCount);

        for (uint256 i = 0; i < actualCount; i++) {
            result[i] = globalActivities[total - actualCount + i];
        }

        return result;
    }

    // ============ Admin Functions ============

    function grantTrackerRole(address account) external onlyRole(ADMIN_ROLE) {
        grantRole(TRACKER_ROLE, account);
    }

    function revokeTrackerRole(address account) external onlyRole(ADMIN_ROLE) {
        revokeRole(TRACKER_ROLE, account);
    }

    function pause() external onlyRole(ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(ADMIN_ROLE) {
        _unpause();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}
