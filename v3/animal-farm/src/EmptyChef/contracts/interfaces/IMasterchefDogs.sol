// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IMasterchefDogs {

    function depositMigrator(address _userAddress, uint256 _pid, uint256 _amount, address _referrer) external;
}