// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {INAVReceiver} from "../interfaces/INAVReceiver.sol";

/**
 * @title Failing NAV Receiver Mock
 * @notice This mock receiver always reverts when setSharePrice is called
 * @dev Used for testing error handling in the NAV Consumer
 */
contract FailingMockNAVReceiver is INAVReceiver {
    // Custom error for explaining failures
    error AlwaysFailingReceiver();
    
    // This will never be updated since all calls revert
    uint256 public sharePrice;
    
    /**
     * @notice Implementation of setSharePrice that always reverts
     * @dev Unused parameter intentionally unnamed to avoid compiler warnings
     */
    function setSharePrice(uint256) external pure override {
        revert AlwaysFailingReceiver();
    }
}