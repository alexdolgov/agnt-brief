// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IShadowV3Pool} from "contracts/CL/core/interfaces/IShadowV3Pool.sol";

library PoolUpdaterStorage {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @dev keccak256(abi.encode(uint256(keccak256("poolUpdater.storage")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 public constant POOL_UPDATER_STORAGE_LOCATION =
        0x8350060c97380d4a9b441acc4769b870f3b1aad9bcd71ebf7300a85af9f9f900;

    /// @custom꞉storage‑location erc7201꞉poolUpdater.storage
    struct PoolUpdaterState {
        EnumerableSet.AddressSet gauges;
        EnumerableSet.AddressSet clPools;
        mapping(address clPool => uint256 tokenId) poolToNfp;
        bool isRunning;
        address _tempToken0;
        address _tempToken1;
    }

    /// @dev Return state storage struct for reading and writing
    function getStorage() internal pure returns (PoolUpdaterState storage $) {
        assembly {
            $.slot := POOL_UPDATER_STORAGE_LOCATION
        }
    }
}
