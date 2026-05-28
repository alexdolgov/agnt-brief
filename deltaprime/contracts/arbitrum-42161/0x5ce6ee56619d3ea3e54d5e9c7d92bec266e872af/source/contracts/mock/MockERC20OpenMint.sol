// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20OpenMint is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    /**
     * @notice Allows anyone to mint tokens
     * @param amount Amount of tokens to mint
     */
    function mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }
}