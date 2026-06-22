// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract MockToken is ERC20, Ownable {
    uint8 decimals1;

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _supply
    ) ERC20(_name, _symbol) {
        decimals1 = _decimals;
        _mint(msg.sender, _supply);
    }

    function decimals() public view override returns (uint8) {
        return decimals1;
    }

    function mint(uint256 _value) public returns (bool) {
        _mint(_msgSender(), _value);
        return true;
    }
}
