// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20} from "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import {ERC20Pausable} from "openzeppelin-solidity/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import {Ownable2Step} from "openzeppelin-solidity/contracts/access/Ownable2Step.sol";

contract MagpieProtocolSale is ERC20, ERC20Pausable, Ownable2Step {
    constructor(uint256 initialSupply) ERC20("Magpie Protocol Sale", "sFLY") {
        _mint(msg.sender, initialSupply);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override(ERC20, ERC20Pausable) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
