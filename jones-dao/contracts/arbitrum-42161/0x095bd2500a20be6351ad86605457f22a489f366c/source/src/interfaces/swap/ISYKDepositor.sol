// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.7.6;
pragma abicoder v2;

interface ISYKDepositor {
    function deposit(uint256 _amount) external;
    function depositAll() external;
    function handleDepositFor(address _user, uint256 _amount) external;
}
