// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ILido {
    function submit(address _referral) external payable returns (uint256);

    function getCurrentStakeLimit() external view returns (uint256);
}
