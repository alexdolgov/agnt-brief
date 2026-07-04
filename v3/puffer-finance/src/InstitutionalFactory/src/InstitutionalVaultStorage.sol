// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

/**
 * @title VaultStorage
 * @author Puffer Finance
 * @custom:security-contact security@puffer.fi
 */
abstract contract VaultStorage {
    /**
     * @custom:storage-location erc7201:vaultStorage.storage
     * @dev +-----------------------------------------------------------+
     *      |                                                           |
     *      | DO NOT CHANGE, REORDER, REMOVE EXISTING STORAGE VARIABLES |
     *      |                                                           |
     *      +-----------------------------------------------------------+
     */
    struct Storage {
        address eigenPod;
        uint128 restakedValidatorsETH;
        uint128 nonRestakedValidatorsETH;
    }

    // keccak256(abi.encode(uint256(keccak256("vaultStorage.storage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _VAULT_STORAGE_LOCATION =
        0xb529568951eb52d8d5859ca4e4dcbfc3265b8babf3bd7f734c26170cb2a6dc00;

    function _getVaultStorage() internal pure returns (Storage storage $) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := _VAULT_STORAGE_LOCATION
        }
    }
}
