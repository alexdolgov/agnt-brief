// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@cryptoalgebra/plugins/interfaces/IBasePluginV2Factory.sol";
import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";

/**
 * @title IAlgebraFeePluginFactory
 * @author Cypher Industries
 * @notice Interface for the Algebra fee plugin factory with custom pool creation.
 */
interface IAlgebraFeePluginFactory is IBasePluginV2Factory {
    /**
     * @notice Creates a custom pool with fee plugin configuration.
     * @param creator The address of the pool creator.
     * @param tokenA The first token of the pair.
     * @param tokenB The second token of the pair.
     * @param data Additional deployment data.
     * @param communityFeeRatio The community fee ratio for the pool.
     * @param stakingConfig The staking vault configuration.
     * @return The address of the created pool.
     */
    function createCustomPool(
        address creator,
        address tokenA,
        address tokenB,
        bytes calldata data,
        uint8 communityFeeRatio,
        IBCTokenFactory.StakingConfig calldata stakingConfig
    ) external returns (address);

    /**
     * @notice Returns the protocol fee ratio.
     * @return The protocol fee ratio.
     */
    function protocolFeeRatio() external view returns (uint8);

    /**
     * @notice Returns the factory owner address.
     * @return The address of the factory owner.
     */
    function factoryOwner() external view returns (address);
}
