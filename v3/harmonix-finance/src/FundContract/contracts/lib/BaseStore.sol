// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "../vaults/hyperliquid/fundStorage.sol";

/**
 * @title DepositStoreUtils
 * @dev Library for deposit storage functions
 */
library BaseStore {
    function appendUint256Prop(
        FundStorage dataStore,
        bytes32 key,
        bytes32 prop,
        uint256 value
    ) internal {
        uint256 currentValue = dataStore.getUint256(
            keccak256(abi.encode(key, prop))
        );

        dataStore.setUint256(
            keccak256(abi.encode(key, prop)),
            currentValue + value
        );
    }

    function deductUint256Prop(
        FundStorage dataStore,
        bytes32 key,
        bytes32 prop,
        uint256 value
    ) internal {
        uint256 currentValue = dataStore.getUint256(
            keccak256(abi.encode(key, prop))
        );

        uint256 newValue = currentValue > value ? currentValue - value : 0;
        dataStore.setUint256(
            keccak256(abi.encode(key, prop)),
            newValue
        );
    }
}
