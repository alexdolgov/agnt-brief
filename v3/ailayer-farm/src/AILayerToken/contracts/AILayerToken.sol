// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AILayerToken is ERC20 {
    constructor(uint256 initialSupply, address receiver) ERC20("AILayer Token", "AIL") {
        _mint(receiver, initialSupply);
    }
}