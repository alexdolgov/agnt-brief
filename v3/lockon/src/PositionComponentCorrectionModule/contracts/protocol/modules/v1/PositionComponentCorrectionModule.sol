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
     * @dev Removes this module from the SetToken, via call by the SetToken. Left with empty logic
     * here because there are no check needed to verify removal.
     */
    function removeModule() external override {}
}
