// SPDX-License-Identifier: GPLv3-or-later

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BridgeToken is ERC20, Ownable {

    constructor(string memory name,string memory symbol,uint _initSupply) ERC20(name, symbol) {
        _mint(msg.sender, _initSupply);
    }

    function mint(address to_, uint256 amount_) onlyOwner public {
        _mint(to_, amount_);
    }

    function burn(uint256 amount_) onlyOwner public{
        _burn(msg.sender, amount_);
    }
}
