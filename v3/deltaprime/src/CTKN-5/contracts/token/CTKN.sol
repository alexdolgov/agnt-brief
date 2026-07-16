// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title CTKN
 * @dev An ERC20 claim token designed to be used together with DeltaPrime rTokens
 * Only the owner can mint and burn tokens
 */
contract CTKN is ERC20, Ownable {
    
    /**
     * @dev Constructor that gives the token a name and symbol
     * Sets the deployer as the initial owner
     */
    constructor(address owner) ERC20("CTKN", "CTKN") {
        _transferOwnership(owner);
    }
    
    /**
     * @dev Owner-only mint function
     * @param to Address to mint tokens to
     * @param amount Amount of tokens to mint (in wei, accounting for decimals)
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
    /**
     * @dev Convenience function for owner to mint tokens to themselves
     * @param amount Amount of tokens to mint to owner
     */
    function mintToSelf(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }
    
    /**
     * @dev Owner-only burn function
     * @param from Address to burn tokens from
     * @param amount Amount of tokens to burn
     */
    function burn(address from, uint256 amount) public onlyOwner {
        _burn(from, amount);
    }
    
    /**
     * @dev Convenience function for owner to burn their own tokens
     * @param amount Amount of tokens to burn from owner's balance
     */
    function burnFromSelf(uint256 amount) public onlyOwner {
        _burn(msg.sender, amount);
    }
    
    /**
     * @dev Returns the number of decimals used for token amounts
     * @return Number of decimals (18 by default from OpenZeppelin ERC20)
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}