// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IShareToken is IERC20 {
    // --- Mint / Burn (only callable by registered vaults via VaultManager) ---
    function mint(address to, uint256 amount) external;
    function burn(address from, uint256 amount) external;

    // --- Mint (only callable by VaultManager directly) ---
    /// @notice Mints `amount` shares to `to`. Only callable by the VaultManager contract.
    function mintFromVaultManager(address to, uint256 amount) external;
}
