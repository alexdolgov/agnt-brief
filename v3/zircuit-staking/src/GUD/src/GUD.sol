// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @title a token contract that locks the transfer function for a period of time
contract GUD is ERC20Permit {
   
    /**
     * @notice constructor for GUD
     * @param totalSupply Total supply of the token
     */
    constructor(uint256 totalSupply)
        ERC20("GUD", "GUD")
        ERC20Permit("GUD")
    {
        _mint(msg.sender, totalSupply);
    }

}