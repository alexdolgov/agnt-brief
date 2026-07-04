// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "@openzeppelin/Create2.sol";
import "./AeraVaultV2ERC721Receiver.sol";
import "./AeraV2Factory.sol";
import "./Sweepable.sol";
import "./interfaces/IAeraV2Factory.sol";
import "./interfaces/IAeraVaultAssetRegistryFactory.sol";
import "./interfaces/IAeraVaultHooksFactory.sol";
import {Parameters} from "./Types.sol";

/// @title AeraV2Factory
/// @notice Used to create new vaults and deploy modules.
/// @dev Only one instance of the factory will be required per chain.
contract AeraV2ERC721ReceiverFactory is AeraV2Factory {
    /// FUNCTIONS ///

    /// @notice Initialize the factory contract.
    /// @param wrappedNativeToken_ The address of wrapped native token.
    constructor(address wrappedNativeToken_) AeraV2Factory(wrappedNativeToken_) {}

    /// INTERNAL FUNCTIONS ///

    /// @notice Deploy V2 vault.
    /// @param salt The salt value to create vault.
    /// @param assetRegistry Asset registry address.
    /// @param hooks Hooks address.
    /// @param vaultParameters Struct details for vault deployment.
    /// @param description Vault description.
    /// @return deployed The address of deployed vault.
    function _deployVault(
        bytes32 salt,
        address assetRegistry,
        address hooks,
        string calldata description,
        VaultParameters memory vaultParameters
    ) internal override returns (address deployed) {
        parameters = Parameters(
            vaultParameters.owner,
            assetRegistry,
            hooks,
            vaultParameters.guardian,
            vaultParameters.feeRecipient,
            vaultParameters.fee
        );

        // Requirements, Effects and Interactions: deploy vault with create2.
        deployed = address(new AeraVaultV2ERC721Receiver{salt: salt}());

        delete parameters;

        // Log vault creation.
        emit VaultCreated(
            deployed,
            assetRegistry,
            hooks,
            vaultParameters.owner,
            vaultParameters.guardian,
            vaultParameters.feeRecipient,
            vaultParameters.fee,
            description,
            wrappedNativeToken
        );
    }

    /// @notice Calculate deployment address of V2 vault.
    /// @param salt The salt value to create vault.
    /// @return Calculated deployment address.
    function _computeVaultAddress(bytes32 salt)
        internal
        view
        override
        returns (address)
    {
        return Create2.computeAddress(
            salt, keccak256(type(AeraVaultV2ERC721Receiver).creationCode)
        );
    }
}
