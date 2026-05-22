// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {INttToken} from "@wormhole-foundation/native_token_transfer/interfaces/INttToken.sol";

/**
 * @title Clovis Token
 * @dev ERC20 token with burn functionality, ownership control, and permit support
 */
contract Clovis is INttToken, ERC20, ERC20Burnable, Ownable, ERC20Permit {
    uint8 private _decimals;
    address private _minter;

    /**
     * @dev Constructor that sets the token name, symbol, decimals, and initial supply
     * @param name The name of the token
     * @param symbol The symbol of the token
     * @param decimals_ The number of decimals for the token
     * @param initialSupply The initial supply of tokens (in smallest unit)
     * @param owner The address that will own the contract
     */
    constructor(string memory name, string memory symbol, uint8 decimals_, uint256 initialSupply, address owner)
        ERC20(name, symbol)
        Ownable(owner)
        ERC20Permit(name)
    {
        _decimals = decimals_;
        _minter = owner; // Initially set owner as minter
        _mint(owner, initialSupply);
    }

    /**
     * @dev Returns the number of decimals used to get its user representation
     */
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    /**
     * @dev Mint new tokens (only minter can call this - required by INttToken)
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) public override {
        if (msg.sender != _minter) {
            revert CallerNotMinter(msg.sender);
        }
        _mint(to, amount);
    }

    /**
     * @dev Set the minter address (only owner can call this - required by INttToken)
     * @param newMinter The new minter address
     */
    function setMinter(address newMinter) public override onlyOwner {
        if (newMinter == address(0)) {
            revert InvalidMinterZeroAddress();
        }
        address previousMinter = _minter;
        _minter = newMinter;
        emit NewMinter(previousMinter, newMinter);
    }

    /**
     * @dev Get the current minter address
     * @return The current minter address
     */
    function getMinter() public view returns (address) {
        return _minter;
    }

    /**
     * @dev Override burn function to add balance check (required by INttToken)
     * @param amount The amount of tokens to burn
     */
    function burn(uint256 amount) public override(ERC20Burnable, INttToken) {
        uint256 balance = balanceOf(msg.sender);
        if (balance < amount) {
            revert InsufficientBalance(balance, amount);
        }
        _burn(msg.sender, amount);
    }
}
