// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IATM} from "@src/interfaces/IATM.sol";

contract CapStorageV1 {
    /// @custom:storage-location erc7201:mitosis.storage.Cap.v1
    struct StorageV1 {
        IATM atm;
        uint256 load;
        bool ready;
        mapping(uint256 => uint256) cap;
        mapping(uint32 => uint256) epoch;
        mapping(address => bool) managers; // vaults
    }

    // keccak256(abi.encode(uint256(keccak256("mitosis.storage.Cap.v1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 public constant StorageV1Location = 0x616aa2fa01843346053a736db957bd8cdad1b6fc1a37ecc72c7de9711f0f4500;

    function _getStorageV1() internal pure returns (StorageV1 storage $) {
        // slither-disable-next-line assembly
        assembly {
            $.slot := StorageV1Location
        }
    }
}
