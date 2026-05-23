// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

abstract contract EthReceiver {
    error EthDepositRejected();

    receive() external payable {
        _receive();
    }

    function _receive() internal virtual {
        if (msg.sender == tx.origin) revert EthDepositRejected();
    }
}
