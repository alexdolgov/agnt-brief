// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {INAVReceiver} from "../interfaces/INAVReceiver.sol";

contract MockNAVReceiver is INAVReceiver {
    uint256 public sharePrice;
    bool public shouldRevert;
    
    event SharePriceUpdated(uint256 value);
    
    function setSharePrice(uint256 nav) external override {
        require(!shouldRevert, "MockNAVReceiver: reverting as configured");
        sharePrice = nav;
        emit SharePriceUpdated(nav);
    }
    
    function setShouldRevert(bool _shouldRevert) external {
        shouldRevert = _shouldRevert;
    }
} 