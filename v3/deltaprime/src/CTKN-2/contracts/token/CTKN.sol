// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title CTKN
 * @dev An ERC20 claim token designed to be used together with DeltaPrime rTokens
 * Only the owner can mint and burn tokens
 */
contract CTKN {
    
    /**
     * @dev Constructor that gives the token a name and symbol
     * Sets the deployer as the initial owner
     */
    constructor() {
    }
    
    /**
     * @dev Owner-only mint function
     * @param to Address to mint tokens to
     * @param amount Amount of tokens to mint (in wei, accounting for decimals)
     */
    function mint(address to, uint256 amount) public  {
        
    }
}