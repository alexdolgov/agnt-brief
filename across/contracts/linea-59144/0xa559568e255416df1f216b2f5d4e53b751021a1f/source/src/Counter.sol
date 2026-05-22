// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IMessageHandler {
    /**
     * @notice handles an incoming message from a Receiver
     * @param sourceDomain the source domain of the message
     * @param sender the sender of the message
     * @param messageBody The message raw bytes
     * @return success bool, true if successful
     */
    function handleReceiveMessage(
        uint32 sourceDomain,
        bytes32 sender,
        bytes calldata messageBody
    ) external returns (bool);
}

contract Counter is IMessageHandler {
    event ReceivedMessage(
        uint32 sourceDomain,
        bytes32 sender,
        bytes messageBody
    );
    event Inc(uint256 newNum);

    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
        emit Inc(number);
    }

    function handleReceiveMessage(
        uint32 sourceDomain,
        bytes32 sender,
        bytes calldata messageBody
    ) external returns (bool) {
        increment();
        emit ReceivedMessage(sourceDomain, sender, messageBody);
        return true;
    }
}
