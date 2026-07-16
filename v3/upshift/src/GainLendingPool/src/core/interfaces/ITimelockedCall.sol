// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

interface ITimelockedCall {
    function initScheduler(address addr, uint256 newTimeLockDuration) external;
    function enableScheduler(address addr) external;
    function disableScheduler(address addr) external;

    function schedule(bytes32 h, address consumerAddr) external;
    function consume(bytes32 h) external;
    function consumeOwnership(bytes32 h, address prevOwnerAddr, address newOwnerAddr) external;
}
