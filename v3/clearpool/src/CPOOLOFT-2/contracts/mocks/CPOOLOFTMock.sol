// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "../OFT.sol";

// @dev WARNING: This is for testing purposes only
contract CPOOLOFTMock is OFT {
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFT(_lzEndpoint, _delegate) Ownable(_delegate) {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}
