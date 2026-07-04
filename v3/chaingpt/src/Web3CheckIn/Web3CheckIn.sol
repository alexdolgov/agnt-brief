// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Web3CheckIn {
    // Event emitted when a user checks in
    event UserCheckedIn(address indexed user, uint256 timestamp);

    // Mapping to track all check-in timestamps for each user
    mapping(address => uint256[]) private userCheckIns;

    /**
     * @dev Check-in function for users. Emits a UserCheckedIn event.
     */
    function checkIn() external {
        uint256 timestamp = block.timestamp; // Get the current timestamp
        userCheckIns[msg.sender].push(timestamp); // Append the timestamp
        emit UserCheckedIn(msg.sender, timestamp); // Emit the event
    }

    /**
     * @dev Get the count of check-ins for a user.
     * @param user Address of the user.
     * @return The number of check-ins for the user.
     */
    function getCheckInCount(address user) external view returns (uint256) {
        return userCheckIns[user].length;
    }

    /**
     * @dev Get a specific check-in timestamp for a user by index.
     * @param user Address of the user.
     * @param index Index of the check-in (0-based).
     * @return The timestamp of the check-in at the given index.
     */
    function getCheckInAt(address user, uint256 index) external view returns (uint256) {
        require(index < userCheckIns[user].length, "Invalid index");
        return userCheckIns[user][index];
    }
}