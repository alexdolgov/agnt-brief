// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.6.10;

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IController } from "../../../interfaces/IController.sol";
import { ISetToken } from "../../../interfaces/ISetToken.sol";
import { ExtendModuleBase } from "../../lib/ExtendModuleBase.sol";
import { Position } from "../../lib/Position.sol";

/**
 * @title PositionComponentCorrectionModule
 * @dev This module is designed to correct data inconsistencies in the default positions of SetTokens.
 * Administrators and operators can update position components based on the actual state of components.
 */
contract PositionComponentCorrectionModule is ExtendModuleBase, ReentrancyGuard {
    using Position for ISetToken;

    /* ============ Constructor ============ */

    /**
     * @dev Constructor for PositionComponentCorrectionModule
     *
     * @param _controller Controller address
     * @param _operator Operator address
     */
    constructor(IController _controller, address _operator) public ExtendModuleBase(_controller) {
        super.addOperator(_operator);
    }

    /* ============ External Functions ============ */

    /**
     * @dev Initializes this module for the SetToken. Only callable by the SetToken's manager.
     *
     * @param _setToken Instance of the SetToken to initialize
     */
    function initialize(
        ISetToken _setToken
    )
        external
        onlyValidAndPendingSet(_setToken)
        onlySetManager(_setToken, msg.sender)
    {
        _setToken.initializeModule();
    }

     /**
     * @dev Corrects component data inconsistencies.
     *
     * @param _setToken     Instance of the SetToken
     * @param _components  Array of components
     */
    function correctDefaultPositionComponents(
        ISetToken _setToken,
        address[] calldata _components
    )
        external
        nonReentrant
        onlyManagerOrOperatorAndValidSet(_setToken)
    {

        uint256 componentCount = _components.length;
        address component;
        bool hasPosition;
        bool isComponent;
        require(componentCount > 0, "No components provided");
        for (uint256 i = 0; i < _components.length; i++) {
            component = _components[i];
            require(component != address(0), "Invalid component");

            hasPosition = _setToken.hasDefaultPosition(component);
            isComponent = _setToken.isComponent(component);

            if (hasPosition && !isComponent) {
                _setToken.addComponent(component);
            } else if (!hasPosition && isComponent) {
                _setToken.removeComponent(component);
            }
        }
    }

    /**
     * @dev Removes this module from the SetToken, via call by the SetToken. Left with empty logic
     * here because there are no check needed to verify removal.
     */
    function removeModule() external override {}
}
