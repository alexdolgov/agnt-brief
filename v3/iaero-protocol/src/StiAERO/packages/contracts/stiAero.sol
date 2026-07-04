// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/// @title Staked iAERO Receipt Token (stiAERO)
/// @notice Transferable receipt token for staked iAERO. The staking distributor
///         mints on stake and burns on unstake/exit. Grant MINTER/BURNER to the distributor.
contract StiAERO is ERC20, ERC20Permit, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");
    
    error ZeroAddress();
    error InsufficientBalance();
    
    constructor(address admin)
        ERC20("Staked iAERO", "stiAERO")
        ERC20Permit("Staked iAERO")
    {
        if (admin == address(0)) revert ZeroAddress();
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        // Optionally grant initial roles to admin for easier setup
        _grantRole(MINTER_ROLE, admin);
        _grantRole(BURNER_ROLE, admin);
    }
    
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }
    
    function burn(address from, uint256 amount) external onlyRole(BURNER_ROLE) {
        if (balanceOf(from) < amount) revert InsufficientBalance();
        _burn(from, amount);
    }
}