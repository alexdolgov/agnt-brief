// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface IOracle {
    function refund(uint256 requestId) external;
    function isRequestPending(address requester, uint256 requestId) external returns (bool result);

    function requestRandomNumber(uint256 requestId, uint256 minNumber, uint256 maxNumber, uint256 requiredNumber) payable external;
    function requestRandomSeedmon(uint256 requestId, uint256 packId, uint256 minBonusStat, uint256 maxBonusStat) payable external;
}
