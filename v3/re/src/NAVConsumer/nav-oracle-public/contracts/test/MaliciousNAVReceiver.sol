// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {INAVReceiver} from "../interfaces/INAVReceiver.sol";
import {INAVConsumer} from "../interfaces/INAVConsumer.sol";

/**
 * @title Malicious NAV Receiver
 * @notice This contract attempts to perform reentrancy attacks on the NAV Consumer
 * @dev Used only for testing reentrancy protections
 */
contract MaliciousNAVReceiver is INAVReceiver {
    // The NAV consumer contract that will be targeted
    address public navConsumer;
    
    // The target function for reentrancy
    string public reentrancyTarget;
    
    // Share price state
    uint256 public sharePrice;
    
    // Custom attack parameters
    uint256 public attackNav = 9999999; // Default attack NAV value
    address public attackReceiver; // Address to try to set as a new receiver
    address public nextReceiver; // Next receiver in a chain attack
    
    // Tracking variables
    bool public reentrancyAttempted;
    uint256 public callCounter;
    
    /**
     * @notice Constructor
     */
    constructor() {
        // Default initialization - navConsumer will be set later
    }
    
    /**
     * @notice Set the NAV consumer contract address
     * @param _navConsumer The address of the NAV consumer contract
     */
    function setNAVConsumer(address _navConsumer) external {
        navConsumer = _navConsumer;
    }
    
    /**
     * @notice Set the target function for reentrancy
     * @param _target The function to target ('forceNAVUpdate', 'requestNAV', or 'setNAVReceiver')
     */
    function setReentrancyTarget(string calldata _target) external {
        reentrancyTarget = _target;
    }
    
    /**
     * @notice Set the NAV value to use in attacks
     * @param _attackNav The NAV value to try to set during reentrancy
     */
    function setAttackNav(uint256 _attackNav) external {
        attackNav = _attackNav;
    }
    
    /**
     * @notice Set the receiver address to use in setNAVReceiver attacks
     * @param _attackReceiver The address to try to set as a new receiver
     */
    function setAttackReceiver(address _attackReceiver) external {
        attackReceiver = _attackReceiver;
    }
    
    /**
     * @notice Set the next receiver for chained attacks
     * @param _nextReceiver The address of the next malicious receiver
     */
    function setNextReceiver(address _nextReceiver) external {
        nextReceiver = _nextReceiver;
    }
    
    /**
     * @notice Implementation of setSharePrice that attempts reentrancy
     * @param _sharePrice The new share price
     */
    function setSharePrice(uint256 _sharePrice) external override {
        // Store the share price
        sharePrice = _sharePrice;
        
        // Increment call counter for test verification
        callCounter++;
        
        // Mark that we attempted reentrancy
        reentrancyAttempted = true;
        
        // Attempt the appropriate attack based on target string
        if (keccak256(abi.encodePacked(reentrancyTarget)) == keccak256(abi.encodePacked("forceNAVUpdate"))) {
            // Try to reenter forceNAVUpdate with the new signature
            try INAVConsumer(navConsumer).forceNAVUpdate(attackNav, "Malicious update") {
                // If successful, this would be unexpected in a secure contract
            } catch {
                // Expected to fail due to reentrancy guard
            }
        } else if (keccak256(abi.encodePacked(reentrancyTarget)) == keccak256(abi.encodePacked("requestNAV"))) {
            // Try to reenter requestNAV
            try INAVConsumer(navConsumer).requestNAV() {
                // If successful, this would be unexpected in a secure contract
            } catch {
                // Expected to fail due to reentrancy guard or role check
            }
        } else if (keccak256(abi.encodePacked(reentrancyTarget)) == keccak256(abi.encodePacked("setNAVReceiver"))) {
            // Try to reenter setNAVReceiver 
            try INAVConsumer(navConsumer).setNAVReceiver(attackReceiver) {
                // If successful, this would be unexpected in a secure contract
            } catch {
                // Expected to fail due to reentrancy guard or role check
            }
        }
        
        // If we have a next receiver, try to change to it (multi-step attack)
        if (nextReceiver != address(0)) {
            try INAVConsumer(navConsumer).setNAVReceiver(nextReceiver) {
                // If successful, this would be unexpected in a secure contract
            } catch {
                // Expected to fail due to reentrancy guard or role check
            }
        }
    }
    
    /**
     * @notice Get the current share price
     * @return The current share price
     */
    function getSharePrice() external view returns (uint256) {
        return sharePrice;
    }
} 