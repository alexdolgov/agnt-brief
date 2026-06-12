// SPDX-License-Identifier: BUSL-1.1
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

pragma solidity 0.8.12;

contract TestERC20 is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 10**50);
    }
}
