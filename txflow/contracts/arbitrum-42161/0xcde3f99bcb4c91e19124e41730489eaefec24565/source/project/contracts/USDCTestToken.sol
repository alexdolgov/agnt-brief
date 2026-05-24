// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/**
 * @title USDCTestToken
 * @dev A test ERC20 token that mimics USDC functionality with permit and transferFrom support
 * This contract implements the ERC20 standard with EIP-2612 permit functionality
 */
contract USDCTestToken is ERC20, ERC20Permit {
    uint8 private constant DECIMALS = 6; // USDC has 6 decimals
    uint256 private constant INITIAL_SUPPLY = 1000000 * 1000000**DECIMALS; 

    // Custom errors for gas efficiency
    error InsufficientBalance(uint256 available, uint256 required);
    error InsufficientAllowance(uint256 available, uint256 required);
    error TransferToZeroAddress();
    error ApproveToZeroAddress();
    error PermitExpired(uint256 deadline);
    error InvalidSignature();

    // Nonce mapping for bridge operations (similar to USDC on Arbitrum)
    mapping(address => uint256) private _bridgeNonces;

    // Events (inherited from ERC20)
    // Transfer(address indexed from, address indexed to, uint256 value)
    // Approval(address indexed owner, address indexed spender, uint256 value)

    constructor() ERC20("USD Coin", "USDC") ERC20Permit("USD Coin") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @dev Returns the number of decimals used to get its user representation
     * @return The number of decimals
     */
    function decimals() public pure override returns (uint8) {
        return DECIMALS;
    }

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`
     * @param to The address to transfer tokens to
     * @param amount The amount of tokens to transfer
     * @return success True if the transfer was successful
     */
    function transfer(address to, uint256 amount) public override returns (bool success) {
        if (to == address(0)) revert TransferToZeroAddress();
        
        uint256 senderBalance = balanceOf(msg.sender);
        if (senderBalance < amount) revert InsufficientBalance(senderBalance, amount);
        
        _transfer(msg.sender, to, amount);
        return true;
    }

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the allowance mechanism
     * @param from The address to transfer tokens from
     * @param to The address to transfer tokens to
     * @param amount The amount of tokens to transfer
     * @return success True if the transfer was successful
     */
    function transferFrom(address from, address to, uint256 amount) public override returns (bool success) {
        if (to == address(0)) revert TransferToZeroAddress();
        
        uint256 fromBalance = balanceOf(from);
        if (fromBalance < amount) revert InsufficientBalance(fromBalance, amount);
        
        uint256 currentAllowance = allowance(from, msg.sender);
        if (currentAllowance < amount) revert InsufficientAllowance(currentAllowance, amount);
        
        // Decrease allowance (unchecked arithmetic is safe due to the check above)
        unchecked {
            _approve(from, msg.sender, currentAllowance - amount);
        }
        
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens
     * @param spender The address to approve
     * @param amount The amount of tokens to approve
     * @return success True if the approval was successful
     */
    function approve(address spender, uint256 amount) public override returns (bool success) {
        if (spender == address(0)) revert ApproveToZeroAddress();
        
        _approve(msg.sender, spender, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller
     * @param spender The address to increase allowance for
     * @param addedValue The amount to add to the allowance
     * @return success True if the increase was successful
     */
    function increaseAllowance(address spender, uint256 addedValue) public returns (bool success) {
        if (spender == address(0)) revert ApproveToZeroAddress();
        
        uint256 currentAllowance = allowance(msg.sender, spender);
        _approve(msg.sender, spender, currentAllowance + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller
     * @param spender The address to decrease allowance for
     * @param subtractedValue The amount to subtract from the allowance
     * @return success True if the decrease was successful
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool success) {
        if (spender == address(0)) revert ApproveToZeroAddress();
        
        uint256 currentAllowance = allowance(msg.sender, spender);
        if (currentAllowance < subtractedValue) revert InsufficientAllowance(currentAllowance, subtractedValue);
        
        unchecked {
            _approve(msg.sender, spender, currentAllowance - subtractedValue);
        }
        return true;
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner`'s tokens using EIP-2612 permit
     * @param owner The address that owns the tokens
     * @param spender The address to approve
     * @param value The amount of tokens to approve
     * @param deadline The timestamp after which the permit expires
     * @param v The recovery byte of the signature
     * @param r Half of the ECDSA signature pair
     * @param s Half of the ECDSA signature pair
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public override {
        if (block.timestamp > deadline) revert PermitExpired(deadline);
        if (spender == address(0)) revert ApproveToZeroAddress();
        
        // Use OpenZeppelin's permit implementation
        super.permit(owner, spender, value, deadline, v, r, s);
    }

    /**
     * @dev Mints `amount` tokens to `to` address
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) external {
        if (to == address(0)) revert TransferToZeroAddress();
        _mint(to, amount);
    }

    /**
     * @dev Burns `amount` tokens from the caller's account
     * @param amount The amount of tokens to burn
     */
    function burn(uint256 amount) external {
        uint256 senderBalance = balanceOf(msg.sender);
        if (senderBalance < amount) revert InsufficientBalance(senderBalance, amount);
        
        _burn(msg.sender, amount);
    }

    /**
     * @dev Burns `amount` tokens from `from` account using allowance
     * @param from The address to burn tokens from
     * @param amount The amount of tokens to burn
     */
    function burnFrom(address from, uint256 amount) external {
        uint256 fromBalance = balanceOf(from);
        if (fromBalance < amount) revert InsufficientBalance(fromBalance, amount);
        
        uint256 currentAllowance = allowance(from, msg.sender);
        if (currentAllowance < amount) revert InsufficientAllowance(currentAllowance, amount);
        
        // Decrease allowance (unchecked arithmetic is safe due to the check above)
        unchecked {
            _approve(from, msg.sender, currentAllowance - amount);
        }
        
        _burn(from, amount);
    }

    /**
     * @dev Returns the total supply of tokens
     * @return The total supply
     */
    function totalSupply() public view override returns (uint256) {
        return super.totalSupply();
    }

    /**
     * @dev Returns the balance of tokens for `account`
     * @param account The address to check balance for
     * @return The balance of tokens
     */
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    /**
     * @dev Returns the allowance of `spender` for `owner`
     * @param owner The address that owns the tokens
     * @param spender The address that is allowed to spend
     * @return The allowance amount
     */
    function allowance(address owner, address spender) public view override returns (uint256) {
        return super.allowance(owner, spender);
    }

    /**
     * @dev Returns the name of the token
     * @return The token name
     */
    function name() public view override returns (string memory) {
        return super.name();
    }

    /**
     * @dev Returns the symbol of the token
     * @return The token symbol
     */
    function symbol() public view override returns (string memory) {
        return super.symbol();
    }

    /**
     * @dev Returns the nonce for EIP-2612 permit functionality
     * @param owner The address to get nonce for
     * @return The nonce value
     */
    function nonces(address owner) public view override(ERC20Permit) returns (uint256) {
        return super.nonces(owner);
    }

}
