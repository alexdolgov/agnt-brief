// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IERC20} from "@oz/token/ERC20/IERC20.sol";
import {Action} from "@src/interfaces/vault/IVault.sol";

contract BasicVaultStorageV1 {
    /// @custom:storage-location erc7201:mitosis.storage.BasicVault.v1
    struct StorageV1 {
        IERC20 asset;
        uint8 underlyingDecimals;
        mapping(Action => bool) isHalted;
        mapping(address => mapping(Action => bool)) isAllowed;
    }

    // keccak256(abi.encode(uint256(keccak256("mitosis.storage.BasicVault.v1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 public constant StorageV1Location = 0xdfd1d7385a5871446aad353015e13a89d148fc3945543ae58683c6905a730600;

    function _getStorageV1() internal pure returns (StorageV1 storage $) {
        // slither-disable-next-line assembly
        assembly {
            $.slot := StorageV1Location
        }
    }
}
