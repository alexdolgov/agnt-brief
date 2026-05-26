// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./interfaces/IBusinessDayRegistryFactory.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../BusinessDayRegistry.sol";
import "../upgrades/BeaconProxyFactory.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title BusinessDayRegistryFactory
 * @dev Allows permissioning of pool participants through trusted verifications of

 */
contract BusinessDayRegistryFactory is
    IBusinessDayRegistryFactory, // Add this line
    BeaconProxyFactory
{
    /**
     * @dev Constructor
     * @param serviceConfiguration Reference to the permissioned version
     * of the service configuration.
     */
    constructor(address serviceConfiguration) {
        _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
    }

    /**
     * @inheritdoc IBusinessDayRegistryFactory
     */
    function create(address pool) external virtual override returns (address) {
        require(implementation != address(0), "BusinessDayRegistry no impl");
        BeaconProxy proxy = new BeaconProxy(
            address(this),
            abi.encodeWithSelector(
                BusinessDayRegistry.initialize.selector,
                pool
            )
        );
        return address(proxy);
    }
}
