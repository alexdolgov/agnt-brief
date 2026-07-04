// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ITestingDummyMC {

    function updateMassUsers(address[] memory _users, uint256[] memory _amounts) external;
}