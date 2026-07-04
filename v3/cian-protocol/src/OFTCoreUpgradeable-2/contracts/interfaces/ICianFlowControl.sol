// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface ICianFlowControl {
    function consume(address _caller, uint256 _amount, uint256 _targetEid) external;
}