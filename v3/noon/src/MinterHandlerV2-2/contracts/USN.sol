// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title USN
 * @notice USN token with minter role for MinterHandler
 * @dev MinterHandler contract should be granted MINTER_ROLE to mint tokens
 */
contract USN is ERC20, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    
    uint8 private _decimals;
    
    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);
    
    /**
     * @param name Token name
     * @param symbol Token symbol
     * @param tokenDecimals Token decimals
     * @param admin Admin address (will receive DEFAULT_ADMIN_ROLE)
     */
    constructor(
        string memory name,
        string memory symbol,
        uint8 tokenDecimals,
        address admin
    ) ERC20(name, symbol) {
        _decimals = tokenDecimals;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }
    
    /**
     * @notice Returns the number of decimals
     */
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
    
    /**
     * @notice Mint tokens (only MINTER_ROLE)
     * @param to Address to mint tokens to
     * @param amount Amount of tokens to mint
     */
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(to, amount);
        emit Mint(to, amount);
    }
    
    /**
     * @notice Burn tokens
     * @param amount Amount of tokens to burn
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }
    
    /**
     * @notice Burn tokens from a specific address (only MINTER_ROLE)
     * @param from Address to burn tokens from
     * @param amount Amount of tokens to burn
     */
    function burnFrom(address from, uint256 amount) external onlyRole(MINTER_ROLE) {
        _spendAllowance(from, msg.sender, amount);
        _burn(from, amount);
        emit Burn(from, amount);
    }
}

