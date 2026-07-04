// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {INAVReceiver} from "../interfaces/INAVReceiver.sol";

/**
 * @title Chained NAV Receiver
 * @notice A contract that implements INAVReceiver and forwards updates to another receiver
 * @dev Used for testing multi-receiver scenarios
 */
contract ChainedNAVReceiver is INAVReceiver {
    // The current share price
    uint256 public sharePrice;
    
    // The next receiver in the chain
    INAVReceiver public nextReceiver;
    
    // Track update propagation
    uint256 public updateCount;
    uint256 public lastUpdatedValue;
    bool public propagateUpdates = true;
    bool public shouldFail = false;
    
    // Event for tracking updates
    event SharePriceUpdated(uint256 oldPrice, uint256 newPrice);
    event UpdatePropagated(address nextReceiver, uint256 value);
    
    /**
     * @notice Constructor to initialize with an optional next receiver
     * @param _nextReceiver The next receiver in the chain
     */
    constructor(address _nextReceiver) {
        if (_nextReceiver != address(0)) {
            nextReceiver = INAVReceiver(_nextReceiver);
        }
    }
    
    /**
     * @notice Set the next receiver in the chain
     * @param _nextReceiver The address of the next receiver
     */
    function setNextReceiver(address _nextReceiver) external {
        nextReceiver = INAVReceiver(_nextReceiver);
    }
    
    /**
     * @notice Control whether to propagate updates to the next receiver
     * @param _propagate Whether to propagate updates
     */
    function setPropagateUpdates(bool _propagate) external {
        propagateUpdates = _propagate;
    }
    
    /**
     * @notice Toggle failure mode (for testing error handling)
     * @param _shouldFail Whether this receiver should fail when updated
     */
    function setShouldFail(bool _shouldFail) external {
        shouldFail = _shouldFail;
    }
    
    /**
     * @notice Implementation of setSharePrice from INAVReceiver
     * @param nav The new NAV value
     */
    function setSharePrice(uint256 nav) external override {
        if (shouldFail) {
            revert("ChainedNAVReceiver: Intentional failure");
        }
        
        // Store the old price for the event
        uint256 oldPrice = sharePrice;
        
        // Update the share price
        sharePrice = nav;
        lastUpdatedValue = nav;
        updateCount++;
        
        // Emit event
        emit SharePriceUpdated(oldPrice, nav);
        
        // Propagate to the next receiver if configured
        if (address(nextReceiver) != address(0) && propagateUpdates) {
            try nextReceiver.setSharePrice(nav) {
                emit UpdatePropagated(address(nextReceiver), nav);
            } catch {
                // Silently catch errors from next receiver
                // This ensures errors don't bubble up to the NAVConsumer
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
    
    /**
     * @notice Reset the update counter (for testing)
     */
    function resetUpdateCount() external {
        updateCount = 0;
    }
}