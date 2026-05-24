// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {VaultType} from "@src/interfaces/vault/IVault.sol";

contract VaultHubStorageV1 {
    /// @custom:storage-location erc7201:mitosis.storage.VaultHub.v1
    struct StorageV1 {
        mapping(VaultType => address) factories;
    }

    // keccak256(abi.encode(uint256(keccak256("mitosis.storage.VaultHub.v1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 public constant StorageV1Location = 0x6ed6bddab7b7046b4c0676ddc40afab18b045e22861b230c9152c5e406df0300;

    function _getStorageV1() internal pure returns (StorageV1 storage $) {
        // slither-disable-next-line assembly
        assembly {
            $.slot := StorageV1Location
        }
    }
}
