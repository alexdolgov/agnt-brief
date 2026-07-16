// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../PoolFlex.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../interfaces/IPoolRegistry.sol";
import "./interfaces/IPoolFactoryFlex.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "../upgrades/BeaconProxyFactory.sol";

/**
 * @title A factory that emits Pool contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */

contract PoolFactoryFlex is IPoolFactoryFlex, BeaconProxyFactory {
    /**
     * @dev Reference to the WithdrawControllerFactory contract
     */
    address internal _withdrawDepositControllerFactoryFlex;

    address private _poolAccessControlFactory;

    /**
     * @dev Reference to the PoolControllerFactory contract
     */
    address internal _poolControllerFactoryFlex;
    address internal _businessDayRegitryFactory;

    /**
     * @dev Reference to the VaultFactory contract
     */
    address internal _vaultFactory;

    modifier onlyVerifiedPoolAdmin() {
        require(
            IServiceConfigurationV3(address(_serviceConfiguration)).isPoolAdmin(
                msg.sender
            ),
            "CALLER_NOT_ADMIN"
        );
        _;
    }

    /**
     * @dev Constructor
     * @param serviceConfiguration Reference to the global service configuration.
     * @param withdrawDepositControllerFactoryFlex Reference to the withdraw controller factory.
     * @param poolControllerFactoryFlex Reference to the pool controller factory.
     * @param vaultFactory Reference to the Vault factory.
     */
    constructor(
        address serviceConfiguration,
        address withdrawDepositControllerFactoryFlex,
        address poolControllerFactoryFlex,
        address vaultFactory,
        address poolAccessControlFactory,
        address businessDayRegitryFactory
    ) {
        _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
        _withdrawDepositControllerFactoryFlex = withdrawDepositControllerFactoryFlex;
        _poolControllerFactoryFlex = poolControllerFactoryFlex;
        _vaultFactory = vaultFactory;
        _poolAccessControlFactory = poolAccessControlFactory;
        _businessDayRegitryFactory = businessDayRegitryFactory;
    }

    function getWithdrawDepositControllerFactoryFlex()
        external
        view
        returns (address)
    {
        return _withdrawDepositControllerFactoryFlex;
    }

    function getPoolControllerFactoryFlex() external view returns (address) {
        return _poolControllerFactoryFlex;
    }

    function getVaultFactory() external view returns (address) {
        return _vaultFactory;
    }

    function getPoolAccessControlFactory() external view returns (address) {
        return _poolAccessControlFactory;
    }

    function getBusinessDayRegitryFactory() external view returns (address) {
        return _businessDayRegitryFactory;
    }

    function version() public pure returns (uint16) {
        return 256 * 2 + 0;
    }

    /**
     * @inheritdoc IPoolFactoryFlex
     */
    function createPool(
        address liquidityAsset,
        IPoolConfigurableSettingsFlex calldata settings,
        string calldata tokenName,
        string calldata tokenSymbol
    ) public onlyVerifiedPoolAdmin returns (address poolAddress) {
        require(
            implementation != address(0),
            "PoolFactory: no implementation set"
        );
        require(
            _serviceConfiguration.paused() == false,
            "PoolFactory: Protocol paused"
        );

        require(
            _serviceConfiguration.isLiquidityAsset(liquidityAsset),
            "PoolFactory: invalid asset"
        );

        require(
            _serviceConfiguration.getPoolFactoryFlex() == address(this),
            "PoolFactory: not correct"
        );
        // Create the pool
        address addr = initializePool(
            liquidityAsset,
            settings,
            tokenName,
            tokenSymbol
        );
        IPoolRegistry(_serviceConfiguration.getPoolRegistry()).addPool(addr);
        emit PoolCreated(addr);
        return addr;
    }

    /**
     * @dev Creates the new Pool contract.
     */
    function initializePool(
        address liquidityAsset,
        IPoolConfigurableSettingsFlex calldata settings,
        string calldata tokenName,
        string calldata tokenSymbol
    ) internal virtual returns (address) {
        PoolAddressListFlex memory poolAddressList = PoolAddressListFlex(
            liquidityAsset,
            msg.sender,
            address(_serviceConfiguration),
            _withdrawDepositControllerFactoryFlex,
            _poolControllerFactoryFlex,
            _vaultFactory,
            _poolAccessControlFactory,
            _businessDayRegitryFactory
        );

        // Create beacon proxy
        BeaconProxy proxy = new BeaconProxy(
            address(this),
            abi.encodeWithSelector(
                PoolFlex.initialize.selector,
                poolAddressList,
                settings,
                tokenName,
                tokenSymbol
            )
        );
        return address(proxy);
    }
}
