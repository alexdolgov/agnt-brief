// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {UpgradeableBeacon} from "@oz/proxy/beacon/UpgradeableBeacon.sol";

contract BasicVaultFactoryStorageV1 {
    /// @custom:storage-location erc7201:mitosis.storage.BasicVaultFactory.v1
    struct StorageV1 {
        UpgradeableBeacon beacon;
        address hub;
        address[] vaults;
        mapping(address => uint256) vaultIds;
        mapping(address => uint256[]) vaultIdsByAsset;
    }

    // keccak256(abi.encode(uint256(keccak256("mitosis.storage.BasicVaultFactory.v1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 public constant StorageV1Location = 0x4f18f246bf4857c990b8db68cc8bb392a75101886059ef93145fffc8f280a900;

    function _getStorageV1() internal pure returns (StorageV1 storage $) {
        // slither-disable-next-line assembly
        assembly {
            $.slot := StorageV1Location
        }
    }
}
