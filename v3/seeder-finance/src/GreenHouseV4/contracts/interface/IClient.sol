// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

interface IClient {
    function onBurnableTreeReceived(uint256 requestId, uint256 availbleTree) external returns (bool isCompleted);
    function onRefund(uint256 requestId) payable external;
}
