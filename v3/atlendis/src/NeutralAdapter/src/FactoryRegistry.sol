// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/access/Ownable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol';
import './interfaces/IProductFactory.sol';
import './interfaces/IFactoryRegistry.sol';

/**
 * @title FactoryRegistry
 * @author Atlendis Labs
 * @notice Implementation of the IFactoryRegistry
 *         The product factory management and the right to deploy product instances are restricted to an owner
 */
contract FactoryRegistry is IFactoryRegistry, Initializable, OwnableUpgradeable, UUPSUpgradeable {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public version;
    mapping(bytes32 => IProductFactory) public productFactories;
    mapping(string => address) public productInstances;

    /*//////////////////////////////////////////////////////////////
                             INITIALIZER
    //////////////////////////////////////////////////////////////*/

    function initialize(address governance) public initializer {
        __Ownable_init();
        transferOwnership(governance);
        version++;
    }

    /*//////////////////////////////////////////////////////////////
                            UPGRADABILITY
    //////////////////////////////////////////////////////////////*/

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function registerProductFactory(bytes32 productId, IProductFactory factory) external onlyOwner {
        if (address(productFactories[productId]) != address(0)) revert PRODUCT_FACTORY_ALREADY_EXISTING();

        productFactories[productId] = factory;

        emit ProductFactoryRegistered(productId, address(factory));
    }

    function unregisterProductFactory(bytes32 productId) external onlyOwner {
        if (address(productFactories[productId]) == address(0)) revert PRODUCT_FACTORY_NOT_FOUND();

        productFactories[productId] = IProductFactory(address(0));

        emit ProductFactoryUnregistered(productId);
    }

    function deployProductInstance(
        bytes32 productId,
        string memory instanceId,
        bytes memory feeConfigs,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) external onlyOwner {
        if (productInstances[instanceId] != address(0)) revert PRODUCT_INSTANCE_ALREADY_EXISTING();

        IProductFactory factory = productFactories[productId];
        if (address(factory) == address(0)) revert PRODUCT_FACTORY_NOT_FOUND();

        address instance = factory.deploy(msg.sender, feeConfigs, parametersConfig, name, symbol);
        productInstances[instanceId] = instance;

        emit ProductInstanceDeployed(
            productId,
            msg.sender,
            instanceId,
            instance,
            feeConfigs,
            parametersConfig,
            name,
            symbol
        );
    }
}
