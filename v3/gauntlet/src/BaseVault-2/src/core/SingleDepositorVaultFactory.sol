// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { Create2 } from "@oz/utils/Create2.sol";
import { TransientSlot } from "@oz/utils/TransientSlot.sol";
import { SingleDepositorVault } from "src/core/SingleDepositorVault.sol";

import { Sweepable } from "src/core/Sweepable.sol";
import { BaseVaultParameters, FeeVaultParameters } from "src/core/Types.sol";
import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";
import { IFeeVaultDeployer } from "src/core/interfaces/IFeeVaultDeployer.sol";
import { ISingleDepositorVaultFactory } from "src/core/interfaces/ISingleDepositorVaultFactory.sol";

import { BaseVaultDeployer } from "src/core/BaseVaultDeployer.sol";

/// @title SingleDepositorVaultFactory
/// @notice Used to create new vaults
/// @dev Only one instance of the factory will be required per chain
contract SingleDepositorVaultFactory is ISingleDepositorVaultFactory, BaseVaultDeployer, Sweepable {
    using TransientSlot for *;

    ////////////////////////////////////////////////////////////
    //                       Constants                        //
    ////////////////////////////////////////////////////////////

    /// @notice Transient slot for storing vault parameters during deployment
    /// @dev Equal to bytes32(uint256(keccak256("aera.factory.feeVaultParameters")) - 1)
    bytes32 internal constant SINGLE_DEPOSITOR_VAULT_PARAMETERS_SLOT =
        0x1e34c53e14d410fca936c6ec79a34e3f73da786a0862a0fcdaecbe68c3abdc66;

    constructor(address newOwner_) Sweepable(newOwner_) { }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc ISingleDepositorVaultFactory
    function create(
        bytes32 salt,
        string calldata description,
        BaseVaultParameters calldata baseVaultParams,
        FeeVaultParameters calldata singleDepositorVaultParams,
        address expectedVaultAddress
    ) external override onlyOwner returns (address deployedVault) {
        // Requirements: confirm that vault has a nonempty description
        if (bytes(description).length == 0) {
            revert Aera__DescriptionIsEmpty();
        }

        // Effects: deploy the vault
        deployedVault = _deployVault(salt, description, baseVaultParams, singleDepositorVaultParams);

        // Invariants: check that deployed address matches computed address
        if (deployedVault != expectedVaultAddress) {
            revert Aera__VaultAddressMismatch(deployedVault, expectedVaultAddress);
        }
    }

    /// @inheritdoc IFeeVaultDeployer
    function feeVaultParameters() external view returns (FeeVaultParameters memory params) {
        uint256 slot = uint256(SINGLE_DEPOSITOR_VAULT_PARAMETERS_SLOT);

        unchecked {
            params.feeCalculator = IFeeCalculator(bytes32(slot).asAddress().tload());
            params.feeToken = IERC20(bytes32(++slot).asAddress().tload());
            params.feeRecipient = bytes32(++slot).asAddress().tload();
        }
    }

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @notice Deploy vault
    /// @param salt The salt value to create vault
    /// @param description Vault description
    /// @param baseVaultParams Parameters for vault deployment used in BaseVault
    /// @param singleDepositorVaultParams Parameters for vault deployment specific to SingleDepositorVault
    /// @return deployed Deployed vault address
    function _deployVault(
        bytes32 salt,
        string calldata description,
        BaseVaultParameters memory baseVaultParams,
        FeeVaultParameters memory singleDepositorVaultParams
    ) internal returns (address deployed) {
        // Effects: store parameters in transient storage
        _storeBaseVaultParameters(baseVaultParams);
        _storeFeeVaultParameters(singleDepositorVaultParams);

        // Interactions: deploy vault with create2
        deployed = address(new SingleDepositorVault{ salt: salt }());

        // Log vault creation
        emit VaultCreated(
            deployed,
            baseVaultParams.owner,
            baseVaultParams.guardian,
            address(baseVaultParams.hooks),
            baseVaultParams.root,
            singleDepositorVaultParams.feeToken,
            singleDepositorVaultParams.feeCalculator,
            singleDepositorVaultParams.feeRecipient,
            description
        );
    }

    function _storeFeeVaultParameters(FeeVaultParameters memory params) internal {
        uint256 slot = uint256(SINGLE_DEPOSITOR_VAULT_PARAMETERS_SLOT);

        // Effects: store fee vault parameters in transient storage
        unchecked {
            bytes32(slot).asAddress().tstore(address(params.feeCalculator));
            bytes32(++slot).asAddress().tstore(address(params.feeToken));
            bytes32(++slot).asAddress().tstore(params.feeRecipient);
        }
    }

    /// @inheritdoc BaseVaultDeployer
    function _computeVaultAddress(bytes32 salt) internal view override returns (address) {
        return Create2.computeAddress(salt, keccak256(type(SingleDepositorVault).creationCode), address(this));
    }
}
