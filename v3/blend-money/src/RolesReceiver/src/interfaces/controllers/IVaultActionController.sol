// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title IVaultActionController
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice This interface allows an authorized address to perform targeted actions against user accounts.
 */
interface IVaultActionController {
    /**
     * @notice Performs a targeted action on behalf of a user.
     * @param vault The vault to be acted upon.
     * @param strategyData The encoded data for the strategy to be executed (dictated by the `RolesReceiver`)
     * @param extraData The encoded data for the action to be performed.
     */
    function executeAction(IERC4626 vault, bytes calldata strategyData, bytes calldata extraData) external;
}
