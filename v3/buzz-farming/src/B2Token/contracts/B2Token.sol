// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20, ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20Capped} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import {ERC20Pausable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/// @title BSquared Token Contract
/// @notice Implements an ERC20 token with a cap, burnability, pausability, and ownership features
contract B2Token is
    ERC20Burnable,
    ERC20Permit,
    ERC20Capped,
    ERC20Pausable,
    AccessControl
{
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice Initializes the contract with a name, symbol, cap, and admin
    /// @param admin The address to be set as the admin of the token
    constructor(
        address admin
    )
        ERC20("BSquared Token", "B2")
        ERC20Permit("BSquared Token")
        ERC20Capped(21 * 10**7 * 10**18)
    {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    /// @notice Allows the default admin address to pause all token transfers
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /// @notice Allows the default admin address to unpause the token transfers
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /// @notice Allows the minter to mint new tokens, up to the cap
    /// @param to The address that will receive the minted tokens
    /// @param amount The amount of tokens to mint
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    /// @dev Internal function to update state during transfers, respecting the cap and pausability
    /// @param from The address sending the tokens
    /// @param to The address receiving the tokens
    /// @param value The amount of tokens being transferred
    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20, ERC20Capped, ERC20Pausable) {
        super._update(from, to, value);
    }
}