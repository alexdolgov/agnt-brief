// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.28;

/**
 * @title RewardsManager
 * @notice Rewards manager that tracks and distributes emission-based rewards
 */
contract RewardsManager {
    /**
     * @notice The emission rate (rewards per second)
     */
    uint256 public emissionRate;

    /**
     * @notice The last time the global distribution index was updated
     */
    uint256 public lastUpdatedAt;

    /**
     * @notice The global distribution index
     */
    uint256 public distributionIndex;

    /**
     * @notice Tracks each user's distribution index to calculate accrued rewards
     */
    mapping(address user => uint256 lastUserIndex ) public userIndexes;

    /**
     * @notice The timestamp after which no more rewards can be distributed
     */
    uint256 public distributionEnd;

    /**
     * @notice The address controlling emission updates
     */
    address public emissionsManager;

    /**
     * @notice Precision factor used to scale distribution indices
     */
    uint8 public constant PRECISION = 18;

    /**
     * @notice Emitted when the emission rate changes
     * @param newEmissionRate The updated emission rate
     */
    event EmissionRateUpdated(uint256 newEmissionRate);

    /**
     * @notice Emitted when the global distribution index updates
     * @param newIndex The new global distribution index
     */
    event GlobalIndexUpdated(uint256 newIndex);

    /**
     * @notice Emitted when a user's distribution index updates
     * @param user The user whose index has updated
     * @param newIndex The new distribution index for that user
     */
    event UserIndexUpdated(address indexed user, uint256 newIndex);

    /**
     * @notice Sets up the distributor with an emission manager and duration
     * @param _emissionManager Address allowed to update the emission rate
     * @param _distributionDuration Number of seconds until distribution ends
     */
    constructor(address _emissionManager, uint256 _distributionDuration) {
        emissionsManager = _emissionManager;
        distributionEnd = block.timestamp + _distributionDuration;
    }

    /**
     * @notice Updates the emission rate and updates the global distribution index
     * @param _newEmissionRate The new emission rate (rewards/second)
     * @param totalStaked Total tokens currently staked
     */
    function _updateEmissionRate(uint256 _newEmissionRate, uint totalStaked) internal {
        _updateGlobalIndex(totalStaked);
        emissionRate = _newEmissionRate;
        emit EmissionRateUpdated(_newEmissionRate);
    }

    /**
     * @notice Returns the pending rewards for a user without state changes
     * @param user Address of the user
     * @param userStaked Amount currently staked by the user
     * @param totalShares Total shares minted
     * @return pendingRewards The amount of unclaimed rewards
     */
    function getPendingRewards(
        address user,
        uint256 userStaked,
        uint256 totalShares
    ) external view returns (uint256) {
        uint256 hypotheticalIndex = _calculateNewIndex(
            distributionIndex,
            emissionRate,
            lastUpdatedAt,
            totalShares
        );
        return _calculateRewards(userStaked, hypotheticalIndex, userIndexes[user]);
    }

    /**
     * @notice Returns the user’s stored distribution index
     * @param user Address of the user
     * @return The index stored for that user
     */
    function getUserIndex(address user) external view returns (uint256) {
        return userIndexes[user];
    }

    /**
     * @notice Updates the global distribution index
     * @param totalStaked Total tokens staked
     * @return newIndex The updated global index
     */
    function _updateGlobalIndex(uint256 totalStaked) internal returns (uint256) {
        uint256 oldIndex = distributionIndex;
        uint256 lastTime = lastUpdatedAt;

        if (block.timestamp == lastTime) {
            return oldIndex;
        }

        uint256 newIndex = _calculateNewIndex(
            oldIndex,
            emissionRate,
            lastTime,
            totalStaked
        );

        if (newIndex != oldIndex) {
            distributionIndex = newIndex;
            emit GlobalIndexUpdated(newIndex);
        }
        lastUpdatedAt = block.timestamp;
        return newIndex;
    }

    /**
     * @notice Updates a user's distribution index and returns newly accrued rewards
     * @param user Address of the user
     * @param userStaked Amount of tokens staked by the user
     * @param totalStaked Total tokens staked
     * @return accruedRewards Newly accrued rewards for the user
     */
    function _updateUserIndex(
        address user,
        uint256 userStaked,
        uint256 totalStaked
    ) internal returns (uint256) {
        uint256 newIndex = _updateGlobalIndex(totalStaked);
        uint256 userIndex = userIndexes[user];

        if (userIndex == newIndex) {
            return 0;
        }

        uint256 accruedRewards = 0;
        if (userStaked != 0) {
            accruedRewards = _calculateRewards(userStaked, newIndex, userIndex);
        }

        userIndexes[user] = newIndex;
        emit UserIndexUpdated(user, newIndex);
        return accruedRewards;
    }

    /**
     * @notice Calculates a new distribution index given emission parameters
     * @param currentIndex The current global index
     * @param _emissionRate Emission rate (rewards/second)
     * @param lastTime The last timestamp the index was updated
     * @param totalShares Total Shares minted
     * @return The new distribution index
     */
    function _calculateNewIndex(
        uint256 currentIndex,
        uint256 _emissionRate,
        uint256 lastTime,
        uint256 totalShares
    ) internal view returns (uint256) {
        if (
            _emissionRate == 0 ||
            totalShares == 0 ||
            lastTime == block.timestamp ||
            lastTime >= distributionEnd
        ) {
            return currentIndex;
        }
        uint256 currentTimestamp = block.timestamp > distributionEnd
            ? distributionEnd
            : block.timestamp;
        uint256 timeDelta = currentTimestamp - lastTime;
        return currentIndex + (
            (_emissionRate * timeDelta * (10**uint256(PRECISION))) / totalShares
        );
    }

    /**
     * @notice Calculates rewards from user’s balance and index difference
     * @param userBalance Amount of tokens staked by the user
     * @param currentIndex The current distribution index
     * @param userIndex The user’s previously stored index
     * @return The newly accrued rewards
     */
    function _calculateRewards(
        uint256 userBalance,
        uint256 currentIndex,
        uint256 userIndex
    ) internal pure returns (uint256) {
        return (userBalance * (currentIndex - userIndex)) / (10**uint256(PRECISION));
    }
}
