// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./BaseNFT.sol";

contract PerryEgg is BaseNFT {

    function initialize(string memory baseURI) public initializer {
        __BaseNFT_init("Perry Egg", "PERRYEGG", baseURI);
    }

}
