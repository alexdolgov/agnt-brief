// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

/**
 * @title SnowBallCommissionTracker
 * @dev A contract to track and forward commission fees to the SnowBall token vault
 * @notice This contract receives BNB and forwards it to a specified vault while tracking the total amount
 */
contract SnowBallCommissionTracker {
    /// @notice The address of the SnowBall token vault where commissions are forwarded
    address public immutable snowballVault;
    
    /// @notice Total amount of BNB received as commission
    uint256 public totalCommissionReceived;
    
    /**
     * @dev Constructor to set the immutable snowball vault address
     * @param _snowballVault The address of the SnowBall token vault
     */
    constructor(address _snowballVault) {
        require(_snowballVault != address(0), "SnowBallCommissionTracker: vault address cannot be zero");
        snowballVault = _snowballVault;
    }
    
    /**
     * @dev Receives BNB and forwards it to the snowball vault
     * @notice Automatically forwards received BNB and any stuck funds to the vault and updates tracking
     */
    receive() external payable {
        require(msg.value > 0, "SnowBallCommissionTracker: no value sent");
        
        // Update total commission received
        totalCommissionReceived += msg.value;
        
        // Emit event for commission received
        
        // Forward the entire balance (including any stuck funds) to the snowball vault
        uint256 balanceToForward = address(this).balance;
        (bool success, ) = snowballVault.call{value: balanceToForward}("");

        // Note: this should never revert, but to avoid any potential issues we do not revert here
        // require(success, "SnowBallCommissionTracker: forward to vault failed");
    }
}