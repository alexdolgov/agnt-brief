// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Minimal AMB interface again (for messageSender)
interface IAMB {
    function messageSender() external view returns (address);
}

/// @notice Deployed on Ethereum mainnet. Only accepts AMB calls from your sender.
contract AmbGreeterReceiver {
    address public immutable amb;         // Ethereum AMB
    address public immutable sender;      // Sender on Gnosis
    string public lastGreeting;

    event GreetingReceived(address indexed from, string greeting);

    constructor(address _amb, address _sender) {
        amb = _amb;
        sender = _sender;
    }

    /// @dev This is called by the AMB on Ethereum. Do not call it directly unless you enjoy wasting gas.
    function receiveGreeting(string calldata greeting) external {
        require(msg.sender == amb, "not-amb");
        require(IAMB(amb).messageSender() == sender, "bad-sender");
        lastGreeting = greeting;
        emit GreetingReceived(sender, greeting);
    }
}