// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { BaseGaugeFactory } from "./BaseGaugeFactory.sol";

interface IMerklGauge {
    function initialize(
        uint256,
        address,
        address
    ) external;
}

contract MerklGaugeFactory is BaseGaugeFactory {
    constructor(address gauge) BaseGaugeFactory(address(gauge)) {
        // solhint-disable-previous-line no-empty-blocks
    }

    /**
     * @notice Deploys a new merkl gauge.
     * @param relativeWeightCap The relative weight cap for the created gauge.
     * @param merklDistributionCreator The merkl distribution creator.
     * @param pool The uniV3Pool.
     * @return The address of the deployed gauge
     */
    function create(
        uint256 relativeWeightCap,
        address merklDistributionCreator,
        address pool
    ) external returns (address) {
        address gauge = _create();
        IMerklGauge(gauge).initialize(relativeWeightCap, merklDistributionCreator, pool);
        return gauge;
    }
}
