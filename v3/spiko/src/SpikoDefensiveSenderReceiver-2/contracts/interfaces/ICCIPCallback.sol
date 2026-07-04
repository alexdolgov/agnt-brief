// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";

interface ICCIPCallback {
    function TRUSTED_CALLER_ROLE() external view returns (bytes32);

    function onCCIPReceive(Client.Any2EVMMessage calldata message) external;
}
