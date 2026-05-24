// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Error} from "@src/lib/Error.sol";
import {VaultType} from "@src/interfaces/vault/IVault.sol";

library LibVaultType {
    function toString(VaultType vaultType) internal pure returns (string memory) {
        if (vaultType == VaultType.Basic) return "basic";
        if (vaultType == VaultType.Rebased) return "rebased";
        revert Error.InvalidVaultType(uint8(vaultType));
    }

    function toString(VaultType vaultType, string memory post) internal pure returns (string memory) {
        return string.concat(LibVaultType.toString(vaultType), " ", post);
    }

    function list() internal pure returns (VaultType[] memory) {
        VaultType[] memory types = new VaultType[](2);
        types[0] = VaultType.Basic;
        types[1] = VaultType.Rebased;
        return types;
    }

    function includes(VaultType check) internal pure returns (bool) {
        VaultType[] memory types = list();
        for (uint256 i; i < types.length; i++) {
            if (types[i] == check) return true;
        }
        return false;
    }
}
