// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.6.10;

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IController } from "../../../interfaces/IController.sol";
import { ISetToken } from "../../../interfaces/ISetToken.sol";
import { ExtendModuleBase } from "../../lib/ExtendModuleBase.sol";
import { Position } from "../../lib/Position.sol";
import { PreciseUnitMath } from "../../../lib/PreciseUnitMath.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { SignedSafeMath } from "@openzeppelin/contracts/math/SignedSafeMath.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/SafeCast.sol";

/**
 * @title PositionComponentCorrectionModule
 * @dev This module is designed to correct data inconsistencies in the default positions of SetTokens.
 * Administrators and operators can update position components based on the actual state of components.
 */
contract PositionComponentCorrectionModule is ExtendModuleBase, ReentrancyGuard {
    using SafeCast for int256;
    using SafeCast for uint256;
    using SignedSafeMath for int256;
    using SafeMath for uint256;

    using Position for ISetToken;
    using PreciseUnitMath for uint256;

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
     * @dev Corrects component data inconsistencies in the SetToken's default positions.
     * This function performs the following corrections:
     * 1. If a component has a default position and total supply > 0:
     *    - Calculates the actual unit based on current balance
     *    - If current unit is greater than calculated unit, adjusts to the calculated unit
     *    - If calculated unit becomes 0 or negative, marks position as non-existent
     * 2. Synchronizes component list:
     *    - Adds component to list if it has position but not in component list
     *    - Removes component from list if it has no position but exists in component list
     *
     * @param _setToken    Instance of the SetToken to correct
     * @param _components  Array of component addresses to check and correct
     *
     * @notice Only callable by manager or authorized operator
     * @notice Components array must not be empty
     * @notice Zero addresses are not allowed in components array
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
        require(componentCount > 0, "No components provided");

        uint256 totalSupply = _setToken.totalSupply();
        address component;
        bool hasPosition;
        bool isComponent;
        int256 currentUnit;
        uint256 balance;
        int256 calculatedUnit;
        for (uint256 i = 0; i < _components.length; i++) {
            component = _components[i];
            require(component != address(0), "Invalid component");

            hasPosition = _setToken.hasDefaultPosition(component);
            isComponent = _setToken.isComponent(component);

            if (hasPosition && totalSupply > 0) {
                // If the current unit is greater than the unit calculated from the actual balance, adjust it to the unit calculated from the actual balance
                currentUnit = _setToken.getDefaultPositionRealUnit(component);
                balance = IERC20(component).balanceOf(address(_setToken));
                calculatedUnit = balance.preciseDiv(totalSupply).toInt256();

                if (currentUnit > calculatedUnit) {
                    _setToken.editDefaultPositionUnit(component, calculatedUnit);

                    if (calculatedUnit <= 0) {
                        hasPosition = false;
                    }
                }
            }

            if (hasPosition && !isComponent) {
                _setToken.addComponent(component);
            } else if (!hasPosition && isComponent) {
                _setToken.removeComponent(component);
            }
        }
    }


    /**
     * @dev Removes components from the SetToken.
     *
     * @param _setToken    Instance of the SetToken to remove components from
     * @param _components  Array of component addresses to remove
     *
     * @notice Only callable by manager or authorized operator
     * @notice Components array must not be empty
     * @notice Zero addresses are not allowed in components array
     * @notice Cannot remove components that don't exist in the SetToken
     */
    function removeDefaultPositionComponents(ISetToken _setToken, address[] calldata _components) external nonReentrant onlyManagerOrOperatorAndValidSet(_setToken) {
        uint256 componentCount = _components.length;
        require(componentCount > 0, "No components provided");

        address component;
        bool hasPosition;
        bool isComponent;
        for (uint256 i = 0; i < _components.length; i++) {
            component = _components[i];
            require(component != address(0), "Invalid component");

            // Assumes setToken's component and defaultPositionUnit are synchronized. If they are out of sync,
            // correctDefaultPositionComponents must be executed beforehand
            hasPosition = _setToken.hasDefaultPosition(component);
            require(hasPosition, "Component not present");

            _setToken.editDefaultPosition(component, 0);
        }
    }

    /**
     * @dev Removes this module from the SetToken, via call by the SetToken. Left with empty logic
     * here because there are no check needed to verify removal.
     */
    function removeModule() external override {}
}
