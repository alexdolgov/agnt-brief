// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {EnumerableSet} from "../dependencies/openzeppelin/utils/structs/EnumerableSet.sol";
import {IMasterOracle} from "../interfaces/external/IMasterOracle.sol";
import {ISwapper} from "../interfaces/external/ISwapper.sol";
import {IPoolRegistry} from "../interfaces/IPoolRegistry.sol";
import {IQuoter} from "../interfaces/IQuoter.sol";
import {ICrossChainDispatcher} from "../interfaces/ICrossChainDispatcher.sol";
import {IOperator} from "../interfaces/IOperator.sol";

abstract contract PoolRegistryStorageV1 is IPoolRegistry {
    /**
     * @notice Pools collection
     */
    EnumerableSet.AddressSet internal pools;

    /**
     * @notice Prices' oracle
     */
    IMasterOracle public override masterOracle;

    /**
     * @notice Fee collector address
     */
    address public override feeCollector;

    /**
     * @notice Native token gateway address
     */
    address public override nativeTokenGateway;

    /**
     * @notice Map of the ids of the pools
     */
    mapping(address => uint256) public override idOfPool;

    /**
     * @notice Counter of ids of the pools
     */
    uint256 public override nextPoolId;

    /**
     * @notice Swapper contract
     */
    ISwapper public swapper;
}

abstract contract PoolRegistryStorageV2 is PoolRegistryStorageV1 {
    /**
     * @notice The Quoter contract
     */
    IQuoter public quoter;

    /**
     * @notice The Cross-chain dispatcher contract
     */
    ICrossChainDispatcher public crossChainDispatcher;
}

abstract contract PoolRegistryStorageV3 is PoolRegistryStorageV2 {
    /**
     * @notice Flag that pause/unpause all cross-chain flash repay operations
     */
    bool public isCrossChainFlashRepayActive;
}

abstract contract PoolRegistryStorageV4 is PoolRegistryStorageV3 {
    /**
     * @notice Pools collection
     */
    EnumerableSet.AddressSet internal guardians;

    /**
     * @notice Flag that pause/unpause all cross-chain flash repay operations
     */
    IOperator public operator;
}
