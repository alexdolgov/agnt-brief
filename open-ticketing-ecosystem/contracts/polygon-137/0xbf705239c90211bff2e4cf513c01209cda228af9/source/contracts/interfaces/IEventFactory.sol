// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IEventFactory {
    event EventCreated(
        address indexed relayerAddress,
        uint256 indexed eventIndex,
        address indexed eventImplementationProxy
    );
}
