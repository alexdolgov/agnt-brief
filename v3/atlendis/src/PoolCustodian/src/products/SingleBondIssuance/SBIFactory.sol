// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/IProductFactory.sol';
import './SingleBondIssuance.sol';

/**
 * @title SBIFactory
 * @author Atlendis Labs
 * @notice Implementation of the IProductFactory for the Single Bond Issuance product
 */
contract SBIFactory is IProductFactory {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    address public immutable FACTORY_REGISTRY;
    bytes32 public constant PRUDUCT_ID = keccak256('SBI');

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address factoryRegistry) {
        FACTORY_REGISTRY = factoryRegistry;
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function deploy(
        address governance,
        bytes memory feeConfigs,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) external returns (address instance) {
        if (msg.sender != FACTORY_REGISTRY) revert UNAUTHORIZED();

        if (feeConfigs.length != 128) revert INVALID_PRODUCT_PARAMS();
        if (parametersConfig.length != 288) revert INVALID_PRODUCT_PARAMS();

        instance = address(new SingleBondIssuance(governance, feeConfigs, parametersConfig, name, symbol));
    }
}
