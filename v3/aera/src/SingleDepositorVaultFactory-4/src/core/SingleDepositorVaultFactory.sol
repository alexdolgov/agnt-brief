// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { FEE_RECIPIENT_OFFSET, PERFORMANCE_FEE_OFFSET } from "src/core/Constants.sol";
import { SingleDepositorVault } from "src/core/SingleDepositorVault.sol";
import { Sweepable } from "src/core/Sweepable.sol";
import { BaseVaultParameters, FeeVaultParameters } from "src/core/Types.sol";

import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";

import { ISingleDepositorVaultFactory } from "src/core/interfaces/ISingleDepositorVaultFactory.sol";
import { IVaultHook } from "src/core/interfaces/IVaultHook.sol";
import { IWhitelist } from "src/core/interfaces/IWhitelist.sol";

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { Create2 } from "@oz/utils/Create2.sol";
import { TransientSlot } from "@oz/utils/TransientSlot.sol";

/// @title SingleDepositorVaultFactory
/// @notice Used to create new vaults.
/// @dev Only one instance of the factory will be required per chain.
contract SingleDepositorVaultFactory is ISingleDepositorVaultFactory, Sweepable {
    using TransientSlot for *;

    /// @notice Transient slot for storing vault parameters during deployment.
    /// @dev Equal to bytes32(uint256(keccak256("aera.factory.baseVaultParameters")) - 1)
    bytes32 internal constant BASE_VAULT_PARAMETERS_SLOT =
        0x5365319b9c1c805bfafcd625f85b00888ecc2afe00524f5802b8347c7b0db33d;

    /// @notice Transient slot for storing vault parameters during deployment.
    /// @dev Equal to bytes32(uint256(keccak256("aera.factory.feeVaultParameters")) - 1)
    bytes32 internal constant SINGLE_DEPOSITOR_VAULT_PARAMETERS_SLOT =
        0x1e34c53e14d410fca936c6ec79a34e3f73da786a0862a0fcdaecbe68c3abdc66;

    /// @notice Initialize the factory contract.
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
        // Requirements: confirm that vault has a nonempty description.
        if (bytes(description).length == 0) {
            revert Aera__DescriptionIsEmpty();
        }

        // Effects: deploy the vault.
        deployedVault = _deployVault(salt, description, baseVaultParams, singleDepositorVaultParams);

        // Invariants: check that deployed address matches computed address.
        if (deployedVault != expectedVaultAddress) {
            revert Aera__VaultAddressMismatch(deployedVault, expectedVaultAddress);
        }
    }

    /// @notice Returns vault parameters for vault deployment.
    /// @return params The parameters for vault deployment, including owner, guardian, hooks, root, and oracle
    /// registry.
    function baseVaultParameters() external view returns (BaseVaultParameters memory params) {
        uint256 slot = uint256(BASE_VAULT_PARAMETERS_SLOT);

        unchecked {
            params.owner = bytes32(slot).asAddress().tload();
            params.guardian = bytes32(++slot).asAddress().tload();
            params.hook = IVaultHook(bytes32(++slot).asAddress().tload());
            params.root = bytes32(++slot).asBytes32().tload();
            params.whitelist = IWhitelist(bytes32(++slot).asAddress().tload());
        }
    }

    function feeVaultParameters() external view returns (FeeVaultParameters memory params) {
        uint256 slot = uint256(SINGLE_DEPOSITOR_VAULT_PARAMETERS_SLOT);

        unchecked {
            params.feeCalculator = IFeeCalculator(bytes32(slot).asAddress().tload());
            params.feeToken = IERC20(bytes32(++slot).asAddress().tload());
            (params.aumFee, params.performanceFee, params.feeRecipient) =
                _unpackFeeParameters(bytes32(++slot).asUint256().tload());
        }
    }

    /// @inheritdoc ISingleDepositorVaultFactory
    function computeVaultAddress(bytes32 salt) external view override returns (address) {
        return _computeVaultAddress(salt);
    }

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @notice Deploy V3 vault.
    /// @param salt The salt value to create vault.
    /// @param description Vault description.
    /// @param baseVaultParams Struct details for vault deployment.
    /// @param singleDepositorVaultParams Struct details for single depositor vault deployment.
    /// @return deployed The address of deployed vault.
    function _deployVault(
        bytes32 salt,
        string calldata description,
        BaseVaultParameters memory baseVaultParams,
        FeeVaultParameters memory singleDepositorVaultParams
    ) internal returns (address deployed) {
        // Effects: store parameters in transient storage.
        _storeBaseVaultParameters(baseVaultParams);
        _storeFeeVaultParameters(singleDepositorVaultParams);

        // Interactions: deploy vault with create2.
        deployed = address(new SingleDepositorVault{ salt: salt }());

        // Log vault creation.
        emit VaultCreated(
            deployed,
            baseVaultParams.owner,
            baseVaultParams.guardian,
            address(baseVaultParams.hook),
            baseVaultParams.root,
            singleDepositorVaultParams.feeToken,
            singleDepositorVaultParams.feeCalculator,
            singleDepositorVaultParams.aumFee,
            singleDepositorVaultParams.performanceFee,
            singleDepositorVaultParams.feeRecipient,
            description
        );
    }

    /// @notice Store parameters in transient storage.
    /// @param params The parameters to store.
    function _storeBaseVaultParameters(BaseVaultParameters memory params) internal {
        uint256 slot = uint256(BASE_VAULT_PARAMETERS_SLOT);

        unchecked {
            bytes32(slot).asAddress().tstore(params.owner);
            bytes32(++slot).asAddress().tstore(params.guardian);
            bytes32(++slot).asAddress().tstore(address(params.hook));
            bytes32(++slot).asBytes32().tstore(params.root);
            bytes32(++slot).asAddress().tstore(address(params.whitelist));
        }
    }

    function _storeFeeVaultParameters(FeeVaultParameters memory params) internal {
        uint256 slot = uint256(SINGLE_DEPOSITOR_VAULT_PARAMETERS_SLOT);

        unchecked {
            bytes32(slot).asAddress().tstore(address(params.feeCalculator));
            bytes32(++slot).asAddress().tstore(address(params.feeToken));
            bytes32(++slot).asUint256().tstore(
                _packFeeParameters(params.aumFee, params.performanceFee, params.feeRecipient)
            );
        }
    }

    /// @notice Calculate deployment address of V3 vault.
    /// @param salt The salt value to create vault.
    /// @return Calculated deployment address.
    function _computeVaultAddress(bytes32 salt) internal view virtual returns (address) {
        //slither-disable-next-line too-many-digits
        return Create2.computeAddress(salt, keccak256(type(SingleDepositorVault).creationCode), address(this));
    }

    /// @notice Pack performanceFee, aumFee and feeRecipient parameters into a single 256-bit value.
    /// @param aumFee The AUM fee.
    /// @param performanceFee The performance fee.
    /// @param feeRecipient The fee recipient.
    /// @return parameters packed in 256-bits
    function _packFeeParameters(uint16 aumFee, uint16 performanceFee, address feeRecipient)
        internal
        pure
        returns (uint256)
    {
        return uint256(aumFee) | (uint256(performanceFee) << PERFORMANCE_FEE_OFFSET)
            | (uint256(uint160(feeRecipient)) << FEE_RECIPIENT_OFFSET);
    }

    /// @notice Unpack fee parameters.
    /// @param packed The packed parameters.
    /// @return aumFee The AUM fee.
    /// @return performanceFee The performance fee.
    /// @return feeRecipient The fee recipient.
    function _unpackFeeParameters(uint256 packed)
        internal
        pure
        returns (uint16 aumFee, uint16 performanceFee, address feeRecipient)
    {
        aumFee = uint16(packed);
        performanceFee = uint16(packed >> PERFORMANCE_FEE_OFFSET);
        feeRecipient = address(uint160(packed >> FEE_RECIPIENT_OFFSET));
    }
}
