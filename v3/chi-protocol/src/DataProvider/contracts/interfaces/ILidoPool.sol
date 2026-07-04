// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ILidoPool {
    function submit(address _referral) external payable returns (uint256);
}
