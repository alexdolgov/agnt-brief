// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/**
 * @title UserPowers
 * @dev Contract for managing user powers with 18 decimal precision
 * Uses two-step ownership transfer for enhanced security
 */
contract UserPowers is Ownable2Step {
    using SafeMath for uint256;

    // Custom errors
    error ZeroAddress();
    error ArrayLengthMismatch();
    error EmptyArrays();

    // Mapping from user address to their power value (with 18 decimals precision)
    mapping(address => uint256) public userPowers;

    // Total power across all users
    uint256 public totalPower;

    // Events
    event PowersSetBatch(address[] users, uint256[] powers);

    /**
     * @dev Sets powers for multiple users in a single transaction
     * Updates totalPower by subtracting old values and adding new ones
     * @param users Array of user addresses
     * @param powers Array of power values with 18 decimals
     */
    function setPowersBatch(address[] calldata users, uint256[] calldata powers) external onlyOwner
    {
        if (users.length != powers.length) revert ArrayLengthMismatch();
        if (users.length == 0) revert EmptyArrays();

        for (uint256 i = 0; i < users.length; i++) {
            if (users[i] == address(0)) revert ZeroAddress();

            // Subtract old power from total
            totalPower = totalPower - userPowers[users[i]];

            // Set new power
            userPowers[users[i]] = powers[i];

            // Add new power to total
            totalPower = totalPower + powers[i];
        }

        emit PowersSetBatch(users, powers);
    }

    /**
     * @dev Gets the power for a specific user
     * @param user Address of the user
     * @return Power value with 18 decimals
     */
    function getPower(address user) external view returns (uint256) {
        return userPowers[user];
    }
}