// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IPairFeesFactory} from "src/interfaces/IPairFeesFactory.sol";
import {BeaconProxyFactoryCreate} from "src/proxy/BeaconProxyFactoryCreate.sol";
import {PairFees} from "src/PairFees.sol";

/// @title PairFeesFactory
/// @notice Implementation of IPairFeesFactory for creating and managing PairFees instances
/// @dev Implements UUPS proxy pattern with two-step ownership transfer
/// @custom:security-contact security@yourproject.com
contract PairFeesFactory is IPairFeesFactory, BeaconProxyFactoryCreate, UUPSOwnable2Step {
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IPairFeesFactory
    function initialize(address owner_, address implementation_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        __BeaconProxyFactory_init(owner_, implementation_);
    }

    /// @inheritdoc IPairFeesFactory
    function createPairFees(address tokenA_, address tokenB_) external returns (address pairFees_) {
        (address token0_, address token1_) = tokenA_ < tokenB_ ? (tokenA_, tokenB_) : (tokenB_, tokenA_);
        pairFees_ = _createPairFees(token0_, token1_);

        emit PairFeesFactoryPairFeesCreated(token0_, token1_, msg.sender, pairFees_);
    }

    /// @dev Internal function to create a PairFees proxy
    /// @param token0_ First token address (lower address)
    /// @param token1_ Second token address (higher address)
    /// @return pairFees_ The address of the created PairFees proxy
    function _createPairFees(address token0_, address token1_) private returns (address pairFees_) {
        address pair_ = msg.sender;
        bytes memory initializeCalldata_ = abi.encodeWithSelector(PairFees.initialize.selector, pair_, token0_, token1_);
        pairFees_ = _createBeaconProxy(initializeCalldata_);
    }
}
