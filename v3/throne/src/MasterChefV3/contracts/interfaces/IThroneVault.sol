// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IThroneVault {
    function safeTransferThrone(address _account, uint256 _amount) external;
}
