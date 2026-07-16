// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

// the mock contract has a fallback function that reentrant to the MultiSender contract.

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "../MultiSender.sol";

contract TestReentrancy {
    address public multiSenderAddress;
    address payable public fundRecipient;

    constructor(address _multiSenderAddress, address payable _fundRecipient) {
        multiSenderAddress = _multiSenderAddress;
        fundRecipient = _fundRecipient;
    }

    fallback() external payable {
        if (msg.sender == multiSenderAddress) {
            uint256 beforeReentrance = fundRecipient.balance;
            MultiSender.SendRequest memory request = MultiSender.SendRequest(
                fundRecipient,
                1
            );
            MultiSender.SendRequest[]
                memory requests = new MultiSender.SendRequest[](1);
            requests[0] = request;
            try MultiSender(msg.sender).sendBaseToken(requests) {
                revert("MultiSender didn't revert");
            } catch Error(string memory reason) {
                string memory expected = "ReentrancyGuard: reentrant call";
                require(
                    Strings.equal(reason, expected),
                    "MultiSender didn't revert with ReentrancyGuard"
                );
                require(
                    beforeReentrance == fundRecipient.balance,
                    "Reentrancy Contract send ether to fundRecipient"
                );
            }
        }
    }
}
