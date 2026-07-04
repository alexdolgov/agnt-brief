// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title MockUSD
 * @notice A freely mintable and burnable ERC20 token for testing
 */
contract MockUSD is ERC20 {
    constructor() ERC20("Offsite rUSD", "t-rUSD") {}
    
    /**
     * @notice Mint tokens to any address
     * @param to The address to mint to
     * @param amount The amount to mint
     */
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
    
    /**
     * @notice Burn tokens from any address
     * @param from The address to burn from
     * @param amount The amount to burn
     */
    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }
    
    /**
     * @notice Burn tokens from an address (compatible with ERC20Burnable)
     * @dev This is the standard burnFrom function expected by the RollingBond contract
     * @param account The address to burn from
     * @param amount The amount to burn
     */
    function burnFrom(address account, uint256 amount) external {
        _burn(account, amount);
    }
}
