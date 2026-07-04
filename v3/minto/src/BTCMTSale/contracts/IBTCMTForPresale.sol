// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IBTCMTForPresale {

    function mintLocked (address to, uint256 amount, uint256 timeInWeeks) external;
}