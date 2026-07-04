// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface IClient {
    function onRandomNumberReceived(uint256 requestId, uint256[] memory randomNumbers) external returns (bool isCompleted);
    function onRandomSeedmonReceived(uint256 requestId, bytes32 seedmonName,  uint256[] memory bonusStats) external returns (bool isCompleted);
    function onRefund(uint256 requestId) payable external;
}
