// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    uint8 decimal;

    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimal_
    ) ERC20(name_, symbol_) {
        _mint(msg.sender, 210000000000000000000000000);

        decimal = decimal_;
    }

    function decimals() public view override returns (uint8) {
        return decimal;
    }
}
