// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

library Helpers {
    function setAddresses(
        mapping (address => bool) storage addresses,
        address[] calldata data,
        bool allow
    ) internal {
        require(data.length > 0, "!length");
        for (uint8 i = 0; i < data.length; i++) {
            require(data[i] != address(0), "!address");
            addresses[data[i]] = allow;
        }
    }
}