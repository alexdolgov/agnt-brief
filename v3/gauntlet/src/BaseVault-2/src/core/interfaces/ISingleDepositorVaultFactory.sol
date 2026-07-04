// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "@oz/interfaces/IERC20.sol";

import { BaseVaultParameters, FeeVaultParameters } from "src/core/Types.sol";

import { IBaseVaultDeployer } from "src/core/interfaces/IBaseVaultDeployer.sol";
import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";
import { IFeeVaultDeployer } from "src/core/interfaces/IFeeVaultDeployer.sol";

/// @title ISingleDepositorVaultFactory
/// @notice Interface for the single-depositor vault factory
interface ISingleDepositorVaultFactory is IBaseVaultDeployer, IFeeVaultDeployer {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when the vault is created
    /// @param vault Vault address
    /// @param owner Initial owner address
    /// @param guardian Initial guardian address
    /// @param hooks Vault hooks address
    /// @param root Initial guardian's merkle root or provider
    /// @param feeToken Fee token address
    /// @param feeCalculator Fee calculator address
    /// @param feeRecipient Fee recipient address
    /// @param description Vault description
    event VaultCreated(
        address indexed vault,
        address indexed owner,
        address indexed guardian,
        address hooks,
        bytes32 root,
        IERC20 feeToken,
        IFeeCalculator feeCalculator,
        address feeRecipient,
        string description
    );

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Create single-depositor vault
    /// @param salt The salt used to generate the vault address
    /// @param description Vault description
    /// @param baseVaultParams Base vault parameters for deployment
    /// @param singleDepositorVaultParams Parameters for deployment related to single depositor functionality
    /// @param expectedVaultAddress Expected vault address to check against deployed vault address
    /// @return deployedVault Deployed vault address
    function create(
        bytes32 salt,
        string calldata description,
        BaseVaultParameters calldata baseVaultParams,
        FeeVaultParameters calldata singleDepositorVaultParams,
        address expectedVaultAddress
    ) external returns (address deployedVault);
}
