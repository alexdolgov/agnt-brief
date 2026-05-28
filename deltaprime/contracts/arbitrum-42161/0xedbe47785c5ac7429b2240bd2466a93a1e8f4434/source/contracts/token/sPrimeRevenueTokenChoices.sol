// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

contract sPrimeRevenueTokenChoices is Ownable {
    
    enum TokenChoice {
        PRIME,
        USDC,
        NATIVE
    }

    // Main mapping: user address to their token choice
    mapping(address => TokenChoice) public receiveTokenChoice;

    // Deadline after which no changes are allowed
    uint256 public deadline;

    // Events
    event TokenChoiceChanged(address indexed user, TokenChoice newChoice);
    event DeadlineUpdated(uint256 newDeadline);

   
    constructor(uint256 initialDeadline) {
        deadline = initialDeadline;
    }

    /**
     * @dev Allows users to change their token choice
     * @param choice The token choice (PRIME, USDC, or NATIVE)
     */
    function changeReceivedToken(TokenChoice choice) external {
        require(block.timestamp < deadline, "Deadline has passed");
        
        receiveTokenChoice[msg.sender] = choice;
        
        emit TokenChoiceChanged(msg.sender, choice);
    }

    /**
     * @dev Allows the owner to set the deadline
     * @param newDeadline The timestamp after which changes are no longer allowed
     */
    function setDeadline(uint256 newDeadline) external onlyOwner {
        deadline = newDeadline;
        
        emit DeadlineUpdated(newDeadline);
    }

    /**
     * @dev Returns the token choice for a specific user
     * @param user The address to query
     * @return The user's token choice
     */
    function getUserChoice(address user) external view returns (TokenChoice) {
        return receiveTokenChoice[user];
    }

    /**
     * @dev Checks if token choice changes are still allowed for users
     * @return True if changes are allowed, false otherwise
     */
    function changesAllowedForUser() external view returns (bool) {
        return block.timestamp < deadline;
    }

}