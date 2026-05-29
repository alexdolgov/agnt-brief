// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import "../IAegisVaultFactory.sol";
import "../external/ichi/IICHIVault.sol";

/// @title Aegis Vault Constants Interface
/// @notice Defines the constant state variables and immutable functions for the Aegis vault
interface IAegisVaultConstants {
    /// @notice The factory contract that deployed this Aegis vault
    function aegisVaultFactory() external view returns (IAegisVaultFactory);

    /// @notice The Uniswap V3 Quoter contract used for price calculations
    function quoter() external view returns (IQuoter);

    /// @notice The index of this vault in the factory's list of deployed vaults
    function vaultIndex() external view returns (uint256);

    /// @notice The token accepted for deposits into this Aegis vault, and the deposit token of the depositVault
    function depositToken() external view returns (IERC20);

    /// @notice The target token that the Aegis vault aims to accumulate over time, and the deposit token of the targetVault
    function targetToken() external view returns (IERC20);

    /// @notice The ICHI vault used for managing deposit tokens
    function depositVault() external view returns (IICHIVault);

    /// @notice The ICHI vault used for managing target tokens
    function targetVault() external view returns (IICHIVault);

    /// @notice Indicates whether this Aegis vault uses ERC20 tokens for representing shares
    function isERC20() external view returns (bool);

    /// @notice The role identifier for addresses allowed to make deposits
    /// @dev If address(0) has this role, deposits are open to everyone
    function DEPOSITOR_ROLE() external view returns (bytes32);

    /// @notice The role identifier for addresses allowed to perform rebalancing
    /// @dev If address(0) has this role, rebalancing is open to everyone
    function REBALANCER_ROLE() external view returns (bytes32);
}
