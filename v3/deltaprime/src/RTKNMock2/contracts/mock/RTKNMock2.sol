// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title RTKNMock2
 * @dev A simple ERC20 token with open minting functionality
 * Anyone can mint tokens to any address
 */
contract RTKNMock2 is ERC20 {
    
    /**
     * @dev Constructor that gives the token a name and symbol
     */
    constructor() ERC20("RTKNMock2", "SIMPLE") {
        // Optional: Mint initial supply to deployer
        // _mint(msg.sender, 1000000 * 10**decimals());
    }
    
    /**
     * @dev Public mint function - anyone can call this to mint tokens
     * @param to Address to mint tokens to
     * @param amount Amount of tokens to mint (in wei, accounting for decimals)
     */
    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
    
    /**
     * @dev Convenience function to mint tokens to the caller
     * @param amount Amount of tokens to mint to msg.sender
     */
    function mintToSelf(uint256 amount) public {
        _mint(msg.sender, amount);
    }
    
    /**
     * @dev Returns the number of decimals used for token amounts
     * @return Number of decimals (18 by default from OpenZeppelin ERC20)
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}