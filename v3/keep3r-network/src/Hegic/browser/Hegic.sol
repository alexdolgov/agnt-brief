// SPDX-License-Identifier: MIT

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/token/ERC20/ERC20.sol";

pragma solidity ^0.6.10;

contract Hegic is ERC20("Hegic", "HEGIC") {
    constructor() public {
        uint INITIAL_SUPPLY = 3012009888e18;
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}