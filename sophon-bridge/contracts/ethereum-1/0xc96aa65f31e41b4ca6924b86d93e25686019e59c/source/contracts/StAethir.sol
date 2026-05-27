// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title StAethir
 * @dev ERC20 token representing staked Aethir. Only the owner can mint and burn tokens.
 */
contract StAethir is ERC20, Ownable {

    /**
     * @dev Constructor that initializes the ERC20 token with a name and symbol.
     */
    constructor() ERC20("Staked Aethir", "stAethir") Ownable(msg.sender) {}

    /**
     * @notice Mints `value` tokens to the `account`.
     * @dev Requirements: only the owner can call this function.
     * @param account The address to mint tokens to.
     * @param value The amount of tokens to mint.
     */
    function mint(address account, uint256 value) external onlyOwner {
        _mint(account, value);
    }

    /**
     * @notice Burns `value` tokens from the `account`.
     * @dev Requirements: only the owner can call this function.
     * @param account The address to burn tokens from.
     * @param value The amount of tokens to burn.
     */
    function burn(address account, uint256 value) external onlyOwner {
        _burn(account, value);
    }
}
