// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Claimer} from "./Claimer.sol";

contract HyperClaimer is Claimer {
    constructor(address keeper, address initialOwner) Claimer("Hyper Claimer", keeper, initialOwner) {}
}
