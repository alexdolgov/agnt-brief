// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {GT3Gauge} from "src/GT3Gauge.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IGT3GaugeFactory} from "src/interfaces/IGT3GaugeFactory.sol";
import {BeaconProxyFactoryCreate} from "src/proxy/BeaconProxyFactoryCreate.sol";

/// @title GT3GaugeFactory
/// @notice Implementation of IGT3GaugeFactory for creating gauge instances
/// @dev Implements UUPS proxy pattern with two-step ownership transfer
contract GT3GaugeFactory is IGT3GaugeFactory, BeaconProxyFactoryCreate, UUPSOwnable2Step {
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3GaugeFactory
    function initialize(address owner_, address gaugeImplementation_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        __BeaconProxyFactory_init(owner_, gaugeImplementation_);
    }

    /// @inheritdoc IGT3GaugeFactory
    function createGauge(address pair_, address bribe_) external returns (address) {
        return _createGauge(pair_, msg.sender, bribe_);
    }

    /// @dev Internal function to create a gauge proxy
    /// @param pair_ The address of the pair for this gauge
    /// @param voter_ The address of the voter for this gauge
    /// @param bribe_ The address of the bribe contract for this gauge
    /// @return gauge_ The address of the created gauge proxy
    function _createGauge(address pair_, address voter_, address bribe_) private returns (address gauge_) {
        bytes memory initializeCalldata_ = abi.encodeWithSelector(GT3Gauge.initialize.selector, pair_, voter_, bribe_);
        gauge_ = _createBeaconProxy(initializeCalldata_);
    }
}
