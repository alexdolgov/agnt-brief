// SPDX-License-Identifier: MIT

pragma solidity 0.8.12;

contract Add {
    event Request(address newAddress);

    function add(address _new) external {
        emit Request(_new);
    }
}