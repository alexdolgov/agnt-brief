// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface ICopump {
    function notifyExternalTransfer(address from, address to, uint256 amount) external;
}
