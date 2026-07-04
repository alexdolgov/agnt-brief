// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

interface IOracle {
    function refund(uint256 requestId) external;
    function isRequestPending(address requester, uint256 requestId) external returns (bool result);
    function requestBurnableTree(uint256 requestId, address treeOwner) payable external;
}
