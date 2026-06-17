// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";

/**
 * @title StashFactory
 * @author GONDI
 * @notice Based on Cryptopunks-721 StashFactory
 * @notice Factory contract for deploying Stash contracts.
 */
contract StashFactory {
    // --------------------- CUSTOM ERRORS ---------------------

    /// @dev The given address has already deployed a stash.
    error AlreadyDeployed();

    /// @dev The deployed Stash address does not match the predicted address.
    error StashAddressMismatch();

    /// @dev The Stash had an error during deployment.
    error DeploymentFailed();

    // -------------------- CONSTRUCTOR --------------------

    // --------------------- EXTERNAL ---------------------

    /**
     * @notice Deploys a new Stash contract using the current implementation, and returns the address.
     * @param _owner The owner of the new Stash contract.
     * @return deployedAddress The address of the newly deployed Stash contract.
     * @dev Deploys a new Stash contract using the current implementation. Any caller can deploy a stash for any owner.
     * for example, a mint contract can deploy a stash for a user as a part of the mint transaction.
     */
    function deployStash(
        address _owner
    ) external returns (address deployedAddress) {
        uint256 codeSize;
        address predictedAddress = _predictAddress(_owner);

        assembly {
            codeSize := extcodesize(predictedAddress)
        }

        if (codeSize > 0) revert AlreadyDeployed();

        bytes memory data = abi.encodeWithSignature(
            "initialize(address)",
            _owner
        );

        deployedAddress = _deploy(_owner);

        if (deployedAddress != predictedAddress) revert StashAddressMismatch();

        (bool success, ) = deployedAddress.call(data);
        if (!success) revert DeploymentFailed();
    }

    // --------------------- VIEW ---------------------

    /**
     * @notice Returns the address of the Stash contract for a given owner, regardless of whether or not it
     * has been deployed yet.
     * @param stashOwner The owner of the Stash contract
     * @return stash The address of the Stash contract
     */
    function stashAddressFor(
        address stashOwner
    ) external view returns (address) {
        return _predictAddress(stashOwner);
    }

    /**
     * @notice Returns whether or not a stash has been deployed for a given owner.
     * @param owner An address to check.
     * @dev This function is meant for convenience. It uses extcodesize to check if a contract has been deployed to the
     * predicted address. It is not a perfect check, and will return false if called from within a constructor of a Stash.
     */
    function ownerHasDeployed(address owner) external view returns (bool) {
        uint256 codeSize;
        address predictedAddress = _predictAddress(owner);

        assembly {
            codeSize := extcodesize(predictedAddress)
        }

        return codeSize > 0;
    }

    function _salt(address stashOwner) internal pure returns (bytes32 salt) {
        bytes32 phrase = keccak256(
            abi.encodePacked("FEFEFEFEFEFEFEFEFEFEFEFE")
        );
        bytes12 extraData = bytes12(phrase);

        salt = bytes32(
            (uint256(uint160(stashOwner)) << 96) | uint96(extraData)
        );
    }

    function _deploy(address stashOwner) internal returns (address) {
        return Clones.cloneDeterministic(_implementation(), _salt(stashOwner));
    }

    function _predictAddress(address owner) internal view returns (address) {
        return
            Clones.predictDeterministicAddress(_implementation(), _salt(owner));
    }

    function _implementation() internal view returns (address) {
        return address(this);
    }
}
