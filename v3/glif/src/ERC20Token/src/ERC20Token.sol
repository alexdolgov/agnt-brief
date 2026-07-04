// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title ERC20Token
 * @dev A simple ERC20 token that allows anyone to mint tokens
 * @notice This contract follows OpenZeppelin best practices and ERC20 standard
 */
contract ERC20Token is ERC20 {
    /**
     * @dev Constructor that sets the token name, symbol, and initial supply
     * @param name_ The name of the token
     * @param symbol_ The symbol of the token
     */
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {}

    /**
     * @dev Allows anyone to mint tokens to any address
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) public {
        require(to != address(0), "ERC20Token: cannot mint to zero address");
        require(amount > 0, "ERC20Token: cannot mint zero tokens");

        _mint(to, amount);
    }

    /**
     * @dev Allows anyone to mint tokens to multiple addresses
     * @param recipients Array of addresses to mint tokens to
     * @param amounts Array of amounts to mint to each address
     */
    function mintBatch(address[] memory recipients, uint256[] memory amounts) public {
        require(recipients.length == amounts.length, "ERC20Token: recipients and amounts arrays must have same length");
        require(recipients.length > 0, "ERC20Token: cannot mint to empty array");

        for (uint256 i = 0; i < recipients.length; i++) {
            require(recipients[i] != address(0), "ERC20Token: cannot mint to zero address");
            require(amounts[i] > 0, "ERC20Token: cannot mint zero tokens");

            _mint(recipients[i], amounts[i]);
        }
    }
}
