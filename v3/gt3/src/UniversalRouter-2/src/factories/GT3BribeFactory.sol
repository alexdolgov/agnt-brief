// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {GT3Bribe} from "src/GT3Bribe.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IGT3BribeFactory} from "src/interfaces/IGT3BribeFactory.sol";
import {BeaconProxyFactoryCreate} from "src/proxy/BeaconProxyFactoryCreate.sol";

/// @title GT3BribeFactory
/// @notice Implementation of IGT3BribeFactory for creating bribe instances
/// @dev Implements UUPS proxy pattern with two-step ownership transfer
/// @custom:security-contact security@yourproject.com
contract GT3BribeFactory is IGT3BribeFactory, BeaconProxyFactoryCreate, UUPSOwnable2Step {
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3BribeFactory
    function initialize(address owner_, address bribeImplementation_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        __BeaconProxyFactory_init(owner_, bribeImplementation_);
    }

    /// @inheritdoc IGT3BribeFactory
    function createBribe(address xGt3_) external returns (address) {
        return _createBribe(msg.sender, xGt3_);
    }

    /// @dev Internal function to create a bribe proxy
    /// @param voter_ The address of the voter for this bribe
    /// @param xGt3_ The address of the xGT3 token
    /// @return bribe_ The address of the created bribe proxy
    function _createBribe(address voter_, address xGt3_) private returns (address bribe_) {
        bytes memory initializeCalldata_ = abi.encodeWithSelector(GT3Bribe.initialize.selector, voter_, xGt3_);
        bribe_ = _createBeaconProxy(initializeCalldata_);
    }
}
