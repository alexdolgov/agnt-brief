// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {
    ERC20BurnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {
    ERC20PermitUpgradeable
} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";

/// @title BurnToFunToken
/// @notice Minimal ERC20 with burn + permit (EIP-2612), intended for deployment via Clones (CREATE2).
/// @dev
/// - Uses OZ *Upgradeable* modules to get initializer functions for clone deployments.
/// - The implementation is constructor-locked with `_disableInitializers()` so it cannot be initialized directly.
/// - Each clone calls `initialize(...)` exactly once to set (name, symbol) and mint the fixed supply.
contract BurnToFunToken is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, ERC20PermitUpgradeable {
    // ---- Errors ----
    error InvalidRecipient();
    error ZeroSupply();

    /// @dev Lock the implementation so it cannot be initialized directly.
    constructor() {
        _disableInitializers();
    }

    /// @notice One-shot initializer called on the freshly deployed clone.
    /// @param name_   Token name (e.g., "WOOF")
    /// @param symbol_ Token symbol (e.g., "WOOF")
    /// @param to      Recipient of the total initial supply (typically the campaign)
    /// @param supply  Total supply to mint (in wei)
    function initialize(
        string calldata name_,
        string calldata symbol_,
        address to,
        uint256 supply
    ) external initializer {
        if (to == address(0)) revert InvalidRecipient();
        if (supply == 0) revert ZeroSupply();

        __ERC20_init(name_, symbol_);
        __ERC20Burnable_init();
        __ERC20Permit_init(name_);

        _mint(to, supply);
    }
}
