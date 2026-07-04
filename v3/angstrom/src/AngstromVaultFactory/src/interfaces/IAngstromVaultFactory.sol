// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { IVault } from "./IVault.sol";

interface IAngstromVaultFactory {
    /// @notice Returns whether or not the `curator` is allowed to call `createVault()`.
    function isWhitelisted(
        address curator
    ) external view returns (bool);

    /// @notice Called by the owner of this contract to set whether or not `curator` is allowed to call `createVault()`.
    function setWhitelist(
        address curator,
        bool status
    ) external;

    /// @notice Called by the owner of this contract to transfer `amount` of `token` to `destination`.
    function withdrawRevenue(
        ERC20 token,
        address destination,
        uint256 amount
    ) external;

    /// @notice Value of `performanceFeeProtocolFractionE6` set on newly-deployed vaults.
    function defaultPerformanceFeeProtocolFractionE6() external view returns (uint24);

    /// @notice Value of `managementFeeProtocolFractionE6` set on newly-deployed vaults.
    function defaultManagementFeeProtocolFractionE6() external view returns (uint24);

    /// @notice Called by the contract owner to set `defaultPerformanceFeeProtocolFractionE6`
    function setDefaultPerformanceFeeProtocolFractionE6(
        uint24 newDefaultPerformanceFeeProtocolFractionE6
    ) external;

    /// @notice Called by the contract owner to set `defaultManagementFeeProtocolFractionE6`
    function setDefaultManagementFeeProtocolFractionE6(
        uint24 newDefaultManagementFeeProtocolFractionE6
    ) external;

    /// @notice Called by the contract owner to override the default performance fee for a single vault
    function setVaultPerformanceFeeProtocolFractionE6(
        IVault vault,
        uint24 newPerformanceFeeProtocolFractionE6
    ) external;

    /// @notice Called by the contract owner to override the default management fee for a single vault
    function setVaultManagementFeeProtocolFractionE6(
        IVault vault,
        uint24 newManagementFeeProtocolFractionE6
    ) external;

    /// @notice Called by a whitelisted curator in order to deploy and initialize a new vault contract.
    /// @param poolKey UniV4 PoolKey of the Angstrom pool to used for liquidity provisioning by the vault.
    /// @param asset The underlying asset or "numeraire" of the vault.
    /// @param initialEpochLength The epoch length to set for calculating performance fees. See PerformanceFees.sol for
    /// more detailed documentation on this.
    /// @param initialPerformanceFeeE6 Total performance fee rate at vault initialization.
    /// @param initialManagementFeeAccrualBaseE18 Total management fee rate at vault initialization.
    /// @param initialPerformanceFeeRecipient Address to which newly-minted performance fee shares will be sent.
    /// @param initialMangementFeeRecipient Address to which newly-minted management fee shares will be sent.
    /// @return vault The address of the newly-deployed vault.
    /// @dev A curator can create multiple vaults with the same pool and base asset.
    function createVault(
        PoolKey calldata poolKey,
        ERC20 asset,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) external returns (IVault vault);

    /// @notice Like `createVault`, but deploys to a deterministic address via CREATE3.
    /// @param salt Deployment salt. Combined with msg.sender to form the effective salt, preventing front-running.
    /// Use `predictVaultAddress()` to pre-compute the resulting address. The address depends only on (factory, salt,
    /// deployer) — independent of constructor args.
    function createVaultDeterministic(
        bytes32 salt,
        PoolKey calldata poolKey,
        ERC20 asset,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) external returns (IVault vault);

    /// @notice Returns the deterministic address at which a vault would be deployed for the given salt and deployer.
    function predictVaultAddress(
        bytes32 salt,
        address deployer
    ) external view returns (address);

    /// @notice List of all vaults deployed by this contract.
    function allVaults() external view returns (IVault[] memory);
}
