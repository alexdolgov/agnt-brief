// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract ERC20Premined is ERC20Burnable {
    uint8 immutable decimal;

    constructor(string memory name, uint8 _decimal) ERC20(name, name) {
        decimal = _decimal;
        _mint(msg.sender, 2 ** 255);
    }

    function decimals() public view virtual override returns (uint8) {
        return decimal;
    }
}
