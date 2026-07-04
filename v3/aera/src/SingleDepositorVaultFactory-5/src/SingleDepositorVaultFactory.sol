// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { SingleDepositorVault } from "./SingleDepositorVault.sol";
import { Sweepable } from "./Sweepable.sol";
import { VaultParameters } from "./Types.sol";

import { ISingleDepositorVaultFactory } from "./interfaces/ISingleDepositorVaultFactory.sol";
import { IVaultHook } from "./interfaces/IVaultHook.sol";

import { Create2 } from "@oz/utils/Create2.sol";
import { TransientSlot } from "@oz/utils/TransientSlot.sol";

/// @title SingleDepositorVaultFactory
/// @notice Used to create new vaults.
/// @dev Only one instance of the factory will be required per chain.
contract SingleDepositorVaultFactory is ISingleDepositorVaultFactory, Sweepable {
    using TransientSlot for *;

    /// @notice Transient slot for storing vault parameters during deployment.
    /// @dev Equal to bytes32(uint256(keccak256("aera.factory.vaultParameters")) - 1)
    bytes32 internal constant VAULT_PARAMETERS_SLOT = 0xc73b5b8176e09a81eb65000347f5faca83a5d9f9036bcccdc073056b7d1faae3;

    /// @notice Initialize the factory contract.
    constructor(address newOwner_) Sweepable(newOwner_) { }

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc ISingleDepositorVaultFactory
    function create(
        bytes32 salt,
        string calldata description,
        VaultParameters calldata params,
        address expectedVaultAddress
    ) external override onlyOwner returns (address deployedVault) {
        // Requirements: confirm that vault has a nonempty description.
        if (bytes(description).length == 0) {
            revert Aera__DescriptionIsEmpty();
        }

        // Effects: deploy the vault.
        deployedVault = _deployVault(salt, description, params);

        // Invariants: check that deployed address matches computed address.
        if (deployedVault != expectedVaultAddress) {
            revert Aera__VaultAddressMismatch(deployedVault, expectedVaultAddress);
        }
    }

    /// @inheritdoc ISingleDepositorVaultFactory
    function parameters() external view returns (VaultParameters memory params) {
        uint256 slot = uint256(VAULT_PARAMETERS_SLOT);

        unchecked {
            params.owner = bytes32(slot).asAddress().tload();
            params.guardian = bytes32(++slot).asAddress().tload();
            params.hook = IVaultHook(bytes32(++slot).asAddress().tload());
            params.root = bytes32(++slot).asBytes32().tload();
        }
    }

    /// @inheritdoc ISingleDepositorVaultFactory
    function computeVaultAddress(bytes32 salt) external view override returns (address) {
        return _computeVaultAddress(salt);
    }

    ////////////////////////////////////////////////////////////
    //                   Internal Functions                   //
    ////////////////////////////////////////////////////////////

    /// @notice Deploy V3 vault.
    /// @param salt The salt value to create vault.
    /// @param description Vault description.
    /// @param params Struct details for vault deployment.
    /// @return deployed The address of deployed vault.
    function _deployVault(bytes32 salt, string calldata description, VaultParameters memory params)
        internal
        returns (address deployed)
    {
        // Effects: store parameters in transient storage.
        _storeParameters(params);

        // Interactions: deploy vault with create2.
        deployed = address(new SingleDepositorVault{ salt: salt }());

        // Log vault creation.
        emit VaultCreated(deployed, params.owner, params.guardian, address(params.hook), params.root, description);
    }

    /// @notice Store parameters in transient storage.
    /// @param params The parameters to store.
    function _storeParameters(VaultParameters memory params) internal {
        uint256 slot = uint256(VAULT_PARAMETERS_SLOT);

        unchecked {
            bytes32(slot).asAddress().tstore(params.owner);
            bytes32(++slot).asAddress().tstore(params.guardian);
            bytes32(++slot).asAddress().tstore(address(params.hook));
            bytes32(++slot).asBytes32().tstore(params.root);
        }
    }

    /// @notice Calculate deployment address of V3 vault.
    /// @param salt The salt value to create vault.
    /// @return Calculated deployment address.
    function _computeVaultAddress(bytes32 salt) internal view virtual returns (address) {
        //slither-disable-next-line too-many-digits
        return Create2.computeAddress(salt, keccak256(type(SingleDepositorVault).creationCode), address(this));
    }
}
