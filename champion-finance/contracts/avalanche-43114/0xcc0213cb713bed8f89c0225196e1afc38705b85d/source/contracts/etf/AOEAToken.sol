// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "../owner/Operator.sol";

contract AOEAToken is ERC20Burnable, Operator {
	uint256 private constant INITIAL_SUPPLY = 100000 ether;
    constructor() ERC20("Age Of Empires Pre-sale Token", "AOEA") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}