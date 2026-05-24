// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IRevaLpStakingPool {
    function depositFor(address _to, uint _pid, uint _amount) external;
}
