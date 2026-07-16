// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IWHYPE {
    function deposit() external payable;
    function transfer(address to, uint256 amount) external returns (bool);
}

/// @title HypeWrapHelper
/// @notice Helper contract that wraps HYPE into WHYPE and sends to a destination address
contract HypeWrapHelper {
    IWHYPE public constant WHYPE =
        IWHYPE(0x5555555555555555555555555555555555555555);

    error ZeroAmount();
    error TransferFailed();

    event Wrapped(
        address indexed sender,
        address indexed destination,
        uint256 amount
    );

    /// @notice Wrap HYPE and send WHYPE to destination
    /// @param destination The address to receive WHYPE
    function wrapAndSend(address destination) external payable {
        if (msg.value == 0) revert ZeroAmount();

        WHYPE.deposit{value: msg.value}();

        if (!WHYPE.transfer(destination, msg.value)) revert TransferFailed();

        emit Wrapped(msg.sender, destination, msg.value);
    }

    receive() external payable {}
}
