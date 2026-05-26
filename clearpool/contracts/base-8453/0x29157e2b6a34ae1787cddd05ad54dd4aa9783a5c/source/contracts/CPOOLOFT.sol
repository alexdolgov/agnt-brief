// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import {  OFT  } from "./OFT.sol";

contract CPOOLOFT is OFT {
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFT(_lzEndpoint, _delegate) Ownable(_delegate) {}
}
