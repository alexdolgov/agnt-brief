// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import { IICHIVault } from "./external/ichi/IICHIVault.sol";

import "./vault/IAegisVaultActions.sol";
import "./vault/IAegisVaultConstants.sol";
import "./vault/IAegisVaultDerivedState.sol";
import "./vault/IAegisVaultEvents.sol";
import "./vault/IAegisVaultOwnerActions.sol";
import "./vault/IAegisVaultState.sol";
import "./vault/IAegisVaultStructs.sol";

import "./external/chainlink/AutomationCompatibleInterface.sol";

/// @title Aegis Vault Interface
/// @notice Combines all Aegis vault interfaces and defines the initialization function
/// @dev This interface inherits from multiple sub-interfaces to provide a complete interface for the Aegis vault
interface IAegisVault is
    IAegisVaultActions,
    IAegisVaultConstants,
    IAegisVaultDerivedState,
    IAegisVaultEvents,
    IAegisVaultOwnerActions,
    IAegisVaultState,
    IAegisVaultStructs,
    AutomationCompatibleInterface
{
    /// @notice Initializes an instance of AegisVault
    /// @dev This function should be called immediately after deployment to set up the vault
    /// @param _quoter The Uniswap V3 Quoter contract used for price calculations
    /// @param _depositToken The token accepted for deposits, also the deposit token of the depositVault
    /// @param _targetToken The token the vault aims to accumulate, also the deposit token of the targetVault
    /// @param _depositVault The ICHI vault used for managing deposit tokens
    /// @param _targetVault The ICHI vault used for managing target tokens
    /// @param __owner The address to be granted the DEFAULT_ADMIN_ROLE for the Aegis vault
    /// @param _vaultIndex The index of this vault in the factory's list of deployed vaults
    function initialize(
        IQuoter _quoter,
        IERC20 _depositToken,
        IERC20 _targetToken,
        IICHIVault _depositVault,
        IICHIVault _targetVault,
        address __owner,
        uint256 _vaultIndex
    )
        external;
}
