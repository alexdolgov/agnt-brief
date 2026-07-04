// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title MoorToken
 * @notice MOOR is the native token of the MOOR Protocol
 * @dev Simple ERC20 implementation with fixed supply minted to deployer
 * 
 * Total supply: 100 million MOOR tokens
 * All tokens are minted to the deployer at construction
 * Tokens can then be manually transferred to Ignition for distribution
 */
contract MoorToken is ERC20 {
    /// @notice Total supply of MOOR tokens: 100 million
    uint256 public constant TOTAL_SUPPLY = 100_000_000 * 10**18;
    
    /**
     * @notice Constructor mints total supply to deployer
     * @dev All 100M MOOR tokens are minted to msg.sender
     */
    constructor() ERC20("MOOR TOKEN", "MOOR") {
        _mint(msg.sender, TOTAL_SUPPLY);
    }
}
