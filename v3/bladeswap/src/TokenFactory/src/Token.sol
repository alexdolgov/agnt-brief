// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20Upgradeable} from "openzeppelin-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Token is ERC20Upgradeable {
    function initialize(string memory name, string memory symbol, uint256 totalSupply, address deployer)
        external
        initializer
    {
        __ERC20_init(name, symbol);
        _mint(deployer, totalSupply);
    }
}
