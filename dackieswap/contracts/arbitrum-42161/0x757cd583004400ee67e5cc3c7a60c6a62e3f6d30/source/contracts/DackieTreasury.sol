// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DackieTreasury is Ownable {

    function withdrawToken(IERC20 token, address to, uint256 amount) external onlyOwner {
        require(token.balanceOf(address(this)) >= amount, "DackieTreasury: not enough tokens");
        token.transfer(to, amount);
    }
}
