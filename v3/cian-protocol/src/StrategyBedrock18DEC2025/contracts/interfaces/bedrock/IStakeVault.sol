// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IStakeVault {
    function mint(address _token, uint256 _amount) external;
}
