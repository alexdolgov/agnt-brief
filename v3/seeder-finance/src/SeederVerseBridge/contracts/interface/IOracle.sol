// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

interface IOracle {
    function refund(uint256 requestId) external;
    function isRequestPending(address requester, uint256 requestId) external returns (bool result);
    function requestRandomNumber(uint256 requestId, uint256 minNumber, uint256 maxNumber, uint256 requiredNumber) payable external;
    function requestRandomSeedmon(uint256 requestId, uint256 packID, uint256 minBonus, uint256 maxBonus) payable external;
    function requestWithdrawSeedmons(uint256 requestId, uint256[] memory tokenIds, address withdrawer) external payable;
    function requestWithdrawSeed(uint256 requestId, uint256 requestAmount, address downloader) external payable;
    function cancelWithdrawSeed(uint256 requestId) external;
    function cancelWithdrawSeedmon(uint256 requestId) external;
}
