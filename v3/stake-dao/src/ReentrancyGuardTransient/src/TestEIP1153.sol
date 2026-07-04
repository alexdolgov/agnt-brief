// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

/**
 * @title PancakeAIPrediction
 */
contract TestEIP1153 is ReentrancyGuardTransient {
    uint256 public num;

    function set(uint256 _num) external nonReentrant {
        num = _num;
    }
}