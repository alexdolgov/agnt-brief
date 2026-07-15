// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.20;

import "./interfaces/IERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract IMF is ERC20, ERC20Permit, IERC20Burnable {
    constructor() ERC20("International Meme Fund", "IMF") ERC20Permit("IMF") {
        _mint(msg.sender, 69e6 * 1 ether);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}