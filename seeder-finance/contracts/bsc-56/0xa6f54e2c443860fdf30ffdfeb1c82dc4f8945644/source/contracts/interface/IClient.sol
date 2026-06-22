// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

interface IClient {
    function onRandomNumberReceived(uint256 requestId, uint256[] memory randomNumbers) external returns (bool isCompleted);
    function onRandomSeedmonReceived(uint256 requestId, bytes32 seedmon, uint256[] memory stats) external returns (bool isCompleted);
    function onRefund(uint256 requestId) payable external;
}
