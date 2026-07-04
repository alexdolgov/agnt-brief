// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { TransientSlot } from "@oz/utils/TransientSlot.sol";
import { BaseVaultParameters } from "src/core/Types.sol";
import { IBaseVaultDeployer } from "src/core/interfaces/IBaseVaultDeployer.sol";
import { IVaultHooks } from "src/core/interfaces/IVaultHooks.sol";
import { IWhitelist } from "src/core/interfaces/IWhitelist.sol";

/// @title BaseVaultDeployer
/// @notice Base contract for deploying BaseVault and its variants
/// @dev Contains common deployment logic and parameter handling
abstract contract BaseVaultDeployer is IBaseVaultDeployer {
    using TransientSlot for *;

    ////////////////////////////////////////////////////////////
    //                       Constants                        //
    ////////////////////////////////////////////////////////////

    /// @notice Transient slot for storing vault parameters during deployment
    /// @dev Equal to bytes32(uint256(keccak256("aera.factory.baseVaultParameters")) - 1)
    bytes32 internal constant BASE_VAULT_PARAMETERS_SLOT =
        0x5365319b9c1c805bfafcd625f85b00888ecc2afe00524f5802b8347c7b0db33d;

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc IBaseVaultDeployer
    function baseVaultParameters() external view returns (BaseVaultParameters memory params) {
        uint256 slot = uint256(BASE_VAULT_PARAMETERS_SLOT);

        unchecked {
            params.owner = bytes32(slot).asAddress().tload();
            params.guardian = bytes32(++slot).asAddress().tload();
            params.hooks = IVaultHooks(bytes32(++slot).asAddress().tload());
            params.root = bytes32(++slot).asBytes32().tload();
            params.whitelist = IWhitelist(bytes32(++slot).asAddress().tload());
        }
    }

    /// @inheritdoc IBaseVaultDeployer
    function computeVaultAddress(bytes32 salt) external view returns (address) {
        return _computeVaultAddress(salt);
    }

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @notice Store parameters in transient storage
    /// @param params The parameters to store
    function _storeBaseVaultParameters(BaseVaultParameters memory params) internal {
        uint256 slot = uint256(BASE_VAULT_PARAMETERS_SLOT);

        unchecked {
            bytes32(slot).asAddress().tstore(params.owner);
            bytes32(++slot).asAddress().tstore(params.guardian);
            bytes32(++slot).asAddress().tstore(address(params.hooks));
            bytes32(++slot).asBytes32().tstore(params.root);
            bytes32(++slot).asAddress().tstore(address(params.whitelist));
        }
    }

    /// @notice Computes the deterministic address where a vault will be deployed
    /// @dev Uses CREATE2 opcode to compute the address based on salt and contract code
    /// @param salt Unique identifier for the vault deployment
    /// @return The deterministic address where the vault will be deployed
    function _computeVaultAddress(bytes32 salt) internal view virtual returns (address);
}
