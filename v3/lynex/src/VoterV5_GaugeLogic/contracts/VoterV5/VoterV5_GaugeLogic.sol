// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {IERC20} from "../interfaces/IERC20.sol";
import {IAlgebraFactory} from "@cryptoalgebra/v1-core/contracts/interfaces/IAlgebraFactory.sol";
import {IBribeFactory} from "../interfaces/IBribeFactory.sol";
import {IGaugeFactory} from "../interfaces/IGaugeFactory.sol";
import {IPermissionsRegistry} from "../interfaces/IPermissionsRegistry.sol";

import {IHypervisor} from "../interfaces/IHypervisor.sol";
import {IPairFactory} from "../interfaces/IPairFactory.sol";
import {IPairInfo} from "../interfaces/IPairInfo.sol";
import {VoterV5_Storage} from "./VoterV5_Storage.sol";

interface IVoterV5_GaugeLogic {
    function createGauge(
        address _pool,
        uint256 _gaugeType
    ) external returns (address _gauge, address _internal_bribe, address _external_bribe);
}

/// @title VoterV5_GaugeLogic
/// @notice This contract contains the logic for creating gauges in the VoterV4 system. It is used to save contract
///  size in VoterV4 by separating out expensive logic.
/// @dev This contract MUST be called from VoterV4 through delegatecall().
contract VoterV5_GaugeLogic is IVoterV5_GaugeLogic, VoterV5_Storage {
    /// @notice create a gauge
    /// @param  _pool       LP address
    /// @param  _gaugeType  the type of the gauge you want to create
    /// @dev  gaugeType = (Make sure to use the correct gaugeType or it will fail)
    ///     - 0: (Options) Stable/Volatile pair
    ///     - 1: (Options) Concentrated liquidity
    function createGauge(
        address _pool,
        uint256 _gaugeType
    ) external override returns (address _gauge, address _internal_bribe, address _external_bribe) {
        require(_gaugeType < _factories.length, "gaugetype");
        require(gauges[_pool] == address(0x0), "!exists");
        require(_pool.code.length > 0, "!contract");
        bool isPair = false;
        address _factory = _factories[_gaugeType];
        address _gaugeFactory = _gaugeFactories[_gaugeType];
        require(_factory != address(0), "addr0");
        require(_gaugeFactory != address(0), "addr0");

        address tokenA = address(0);
        address tokenB = address(0);
        (tokenA) = IPairInfo(_pool).token0();
        (tokenB) = IPairInfo(_pool).token1();
        if (_gaugeType == 0) {
            isPair = IPairFactory(_factory).isPair(_pool);
        }
        if (_gaugeType == 1) {
            require(isWhitelistedPool[_pool], "Only whitelisted strategies");
            address _pool_factory = IAlgebraFactory(_factory).poolByPair(tokenA, tokenB);
            address _pool_hyper = IHypervisor(_pool).pool();
            require(_pool_hyper == _pool_factory, "wrong tokens");
            isPair = true;
        } else {
            //update
            //isPair = false;
        }

        // gov can create for any pool, even non-lynex pairs
        if (!IPermissionsRegistry(permissionRegistry).hasRole("GOVERNANCE", msg.sender)) {
            require(isPair, "!_pool");
            require(isWhitelisted[tokenA] && isWhitelisted[tokenB], "!whitelisted");
            require(tokenA != address(0) && tokenB != address(0), "!pair.tokens");
        }

        // create internal and external bribe
        address _owner = IPermissionsRegistry(permissionRegistry).lynexTeamMultisig();
        string memory _type = string.concat("Lynex LP Fees: ", IERC20(_pool).symbol());
        _internal_bribe = IBribeFactory(bribefactory).createBribe(_owner, tokenA, tokenB, _type);

        _type = string.concat("Lynex Bribes: ", IERC20(_pool).symbol());
        _external_bribe = IBribeFactory(bribefactory).createBribe(_owner, tokenA, tokenB, _type);
        // creating bribe from at least four possible gauge types
        _gauge = IGaugeFactory(_gaugeFactory).createGaugeV2(
            oLynx != address(0) ? oLynx : base,
            _ve,
            _pool,
            address(this),
            _internal_bribe,
            _external_bribe,
            isPair
        );
        // approve spending for $lynx, this is set back to zero if gauge is killed
        if (oLynx != address(0)) IERC20(oLynx).approve(_gauge, type(uint256).max);
        else IERC20(base).approve(_gauge, type(uint256).max);

        // save data
        internal_bribes[_gauge] = _internal_bribe;
        external_bribes[_gauge] = _external_bribe;
        gauges[_pool] = _gauge;
        poolForGauge[_gauge] = _pool;
        isGauge[_gauge] = true;
        isAlive[_gauge] = true;
        pools.push(_pool);

        // update index
        supplyIndex[_gauge] = index; // new gauges are set to the default global state

        return (_gauge, _internal_bribe, _external_bribe);
    }
}
