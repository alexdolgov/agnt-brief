// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './IProductFactory.sol';

/**
 * @title IFactoryRegistry
 * @author Atlendis Labs
 * @notice Interface of the Factory Registry, its responsibilities are twofold
 *           - manage the product factories,
 *           - use the product factories in order to deploy product instance and register them
 */
interface IFactoryRegistry {
    /**
     * @notice Thrown when the product factory already exists
     */
    error PRODUCT_FACTORY_ALREADY_EXISTING();

    /**
     * @notice Thrown when the candidate product factory does not implement the required interface
     */
    error INVALID_PRODUCT_FACTORY_CANDIDATE();

    /**
     * @notice Thrown when the product factory has not been found
     */
    error PRODUCT_FACTORY_NOT_FOUND();

    /**
     * @notice Thrown when the product instance already exists
     */
    error PRODUCT_INSTANCE_ALREADY_EXISTING();

    /**
     * @notice Emitted when a new product factory has been registered
     * @param productId The ID of the new product
     * @param factory The address of the factory of the new product
     */
    event ProductFactoryRegistered(bytes32 indexed productId, address factory);

    /**
     * @notice Emitted when a product factory has been unregistered
     * @param productId The ID of the new product
     */
    event ProductFactoryUnregistered(bytes32 indexed productId);

    /**
     * @notice Emitted when a new instance of a product has been deployed
     * @param productId The ID of the registered product
     * @param governance Address of the governance of the product instance
     * @param instanceId The string ID of the deployed instance of the product
     * @param instance Address of the deployed instance
     * @param feeConfigs Configurations specific to fees, encoded as bytes
     * @param parametersConfig Configurations specific to all other params, encoded as bytes
     * @param name Name of the ERC721 token associated to the product instance
     * @param symbol Symbol of the ERC721 token associated to the product instance
     */
    event ProductInstanceDeployed(
        bytes32 indexed productId,
        address indexed governance,
        string instanceId,
        address instance,
        bytes feeConfigs,
        bytes parametersConfig,
        string name,
        string symbol
    );

    /**
     * @notice Register a new product factory
     * @param productId The ID of the new product
     * @param factory The address of the factory of the new product
     *
     * Emits a {ProductFactoryRegistered} event
     */
    function registerProductFactory(bytes32 productId, IProductFactory factory) external;

    /**
     * @notice Unregister an existing product factory
     * @param productId The ID of the product
     *
     * Emits a {ProductFactoryUnregistered} event
     */
    function unregisterProductFactory(bytes32 productId) external;

    /**
     * @notice Deploy a new instance of a product and register the address using an ID
     * @param productId The  ID of the registered product
     * @param instanceId The string ID of the deployed instance of the product
     * @param feeConfigs Configurations specific to fees, encoded as bytes
     * @param parametersConfig Configurations specific to all other params, encoded as bytes
     * @param name Name of the ERC721 token associated to the product instance
     * @param symbol Symbol of the ERC721 token associated to the product instance
     *
     * Emits a {ProductInstanceDeployed} event
     */
    function deployProductInstance(
        bytes32 productId,
        string memory instanceId,
        bytes memory feeConfigs,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) external;
}
