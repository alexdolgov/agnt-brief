// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../controllers/WithdrawDepositControllerFlex.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "./interfaces/IWithdrawDepositControllerFactoryFlex.sol";
import "../upgrades/BeaconProxyFactory.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title Factory that emits WithdrawControllers.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract WithdrawDepositControllerFactoryFlex is
    IWithdrawDepositControllerFactoryFlex,
    BeaconProxyFactory
{
    /**
     * @dev Constructor
     * @param serviceConfiguration Reference to the global service configuration.
     */
    constructor(address serviceConfiguration) {
        _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
    }

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    /**
     * @inheritdoc IWithdrawDepositControllerFactoryFlex
     */
    function createController(
        address pool,
        address vaultFactory,
        address borrowerWalletAddress
    ) public virtual returns (address addr) {
        require(
            _serviceConfiguration.paused() == false,
            "WithdrawDepositControllerFactory: Protocol paused"
        );
        require(
            implementation != address(0),
            "WithdrawDepositControllerFactory: no impl"
        );

        BeaconProxy proxy = new BeaconProxy(
            address(this),
            abi.encodeWithSelector(
                WithdrawDepositControllerFlex.initialize.selector,
                pool,
                vaultFactory,
                borrowerWalletAddress
            )
        );

        addr = address(proxy);
        emit WithdrawDepositControllerCreated(addr);
    }
}
