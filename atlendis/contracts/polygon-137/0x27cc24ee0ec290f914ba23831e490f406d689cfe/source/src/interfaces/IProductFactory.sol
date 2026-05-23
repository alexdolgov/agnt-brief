// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title IProductFactory
 * @author Atlendis Labs
 * @notice Interface of the factory contract in charge of deploying instance of one dedicated product
 *         One Product Factory is deployed per product
 *         Used by the Factory Router contract in order to deploy instances of any products
 */
interface IProductFactory {
    /**
     * @notice Thrown when constructor data is invalid
     */
    error INVALID_PRODUCT_PARAMS();

    /**
     * @notice Thrown when sender is not authorized
     */
    error UNAUTHORIZED();

    /**
     * @notice Deploy an instance of the product
     * @param governance Address of the governance of the product instance
     * @param feeConfigs Configurations specific to fees, encoded as bytes
     * @param parametersConfig Configurations specific to all other params, encoded as bytes
     * @param name Name of the ERC721 token associated to the product instance
     * @param symbol Symbol of the ERC721 token associated to the product instance
     * @return instance The address of the deployed product instance
     *
     * Emits a {InstanceDeployed} event
     */
    function deploy(
        address governance,
        bytes memory feeConfigs,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) external returns (address instance);
}
