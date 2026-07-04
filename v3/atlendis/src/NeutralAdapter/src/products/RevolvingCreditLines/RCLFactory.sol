// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';
import 'lib/openzeppelin-contracts/contracts/utils/introspection/ERC165.sol';

import '../../interfaces/IProductFactory.sol';
import './RevolvingCreditLine.sol';

/**
 * @title Factory
 * @author Atlendis Labs
 * @notice Implementation of the IProductFactory for the Revolving Credit Line product
 */
contract RCLFactory is IProductFactory, ERC165 {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    address public immutable FACTORY_REGISTRY;
    bytes32 public constant PRUDUCT_ID = keccak256('RCL');

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
        bytes memory feeConfig,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) external returns (address instance) {
        if (msg.sender != FACTORY_REGISTRY) revert UNAUTHORIZED();
        if (feeConfig.length != 96) revert INVALID_PRODUCT_PARAMS();
        if (parametersConfig.length != 256) revert INVALID_PRODUCT_PARAMS();

        instance = address(new RevolvingCreditLine(governance, feeConfig, parametersConfig, name, symbol));
    }
}
