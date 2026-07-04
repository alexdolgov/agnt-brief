// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC20} from "./ERC20.sol";
import {Owned} from "./Owned.sol";

contract Hestia is ERC20, Owned {
    constructor(address deployer, uint256 supply) ERC20("Hestia", "HESTIA", 18) Owned(msg.sender) {
        _mint(deployer, supply);
    }

    function renounceOwnership() external onlyOwner {
        transferOwnership(address(0));
    }
}