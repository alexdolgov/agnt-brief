// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import {MagicGlpRewardHandler} from "./MagicGlp.sol";

/// @dev Token that reverts on transfers - used to disable withdrawals
contract RevertingToken {
    error TransferReverted();

    // Required for deal() function
    mapping(address => uint256) public balanceOf;
    uint256 public totalSupply;

    function transfer(address, uint256) external pure returns (bool) {
        revert TransferReverted();
    }

    function transferFrom(address, address, uint256) external pure returns (bool) {
        revert TransferReverted();
    }
}