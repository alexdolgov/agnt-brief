// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { BaseGaugeFactory } from "./BaseGaugeFactory.sol";

interface IGauge {
    function initialize(address, uint256) external;
}

contract LiquidityGaugeFactory is BaseGaugeFactory {
    constructor(address gauge) BaseGaugeFactory(address(gauge)) {
        // solhint-disable-previous-line no-empty-blocks
    }

    /**
     * @notice Deploys a new gauge for a Balancer pool.
     * @dev As anyone can register arbitrary Balancer pools with the Vault,
     * it's impossible to prove onchain that `pool` is a "valid" deployment.
     *
     * Care must be taken to ensure that gauges deployed from this factory are
     * suitable before they are added to the GaugeController.
     *
     * It is possible to deploy multiple gauges for a single pool.
     * @param pool The address of the pool for which to deploy a gauge
     * @param relativeWeightCap The relative weight cap for the created gauge
     * @return The address of the deployed gauge
     */
    function create(address pool, uint256 relativeWeightCap) external returns (address) {
        address gauge = _create();
        IGauge(gauge).initialize(pool, relativeWeightCap);
        return gauge;
    }
}
