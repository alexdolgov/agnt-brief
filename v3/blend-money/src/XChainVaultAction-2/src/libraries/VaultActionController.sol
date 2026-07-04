// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IVaultActionController} from "../interfaces/controllers/IVaultActionController.sol";
import {DelegateController} from "./DelegateController.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title VaultActionController
 * @notice Base controller to execute strategy-specific actions against an ERC-4626 vault via delegatecall
 * @dev Extends `DelegateController` to enforce delegatecall-only execution. Concrete implementations must
 *      implement `_execute`. Trust assumptions: callers use delegatecall context from a Roles-enabled dispatcher.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
abstract contract VaultActionController is IVaultActionController, DelegateController {
    /*//////////////////////////////////////////////////////////////
                                EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Performs a targeted action on behalf of a user.
     * @dev Enforced to be called only via delegatecall by `_onlyDelegateCall`. Concrete implementations must
     *      implement `_execute` and document their specific revert conditions and events. Follows CEI.
     * @param vault The vault to be acted upon.
     * @param strategyData The encoded data for the strategy to be executed (dictated by the `RolesReceiver`).
     * @param extraData The encoded data for the action to be performed.
     * @custom:reverts OnlyDelegateCall when called directly (not via delegatecall)
     */
    function executeAction(IERC4626 vault, bytes calldata strategyData, bytes calldata extraData)
        external
        override
        _onlyDelegateCall
    {
        _execute(vault, strategyData, extraData);
    }

    /*//////////////////////////////////////////////////////////////
                                INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Perform the controller-specific action against `vault`.
     *      Must be invoked through delegatecall via `executeAction`. Implementations should follow CEI,
     *      validate all inputs, and document revert conditions.
     * @param vault The ERC-4626 vault to act upon
     * @param strategyData Encoded strategy-specific data (dictated by the `RolesReceiver`/dispatcher)
     * @param extraData Encoded parameters for the concrete action to perform
     */
    function _execute(IERC4626 vault, bytes calldata strategyData, bytes calldata extraData) internal virtual;
}
