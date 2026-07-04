// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IPausable } from "../dependencies/openzeppelin/interfaces/IPausable.sol";
import { LibPausable } from "../dependencies/openzeppelin/libraries/LibPausable.sol";

import { LibConstants } from "../libraries/LibConstants.sol";
import { Modifiers } from "../utils/Modifiers.sol";

/**
 * @title PausableFacet
 * @author Rain Team
 * @notice Provides pause and unpause functionality for the diamond.
 * @dev Implements emergency stop mechanisms using shared storage. When paused, dependent facets restrict certain
 * executions.
 */
contract PausableFacet is IPausable, Modifiers {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IPausable
     */
    function pause() external onlyRole(LibConstants.OWNER_ROLE) {
        LibPausable.pause();
    }

    /**
     * @inheritdoc IPausable
     */
    function unpause() external onlyRole(LibConstants.OWNER_ROLE) {
        LibPausable.unpause();
    }

    /**
     * @inheritdoc IPausable
     */
    function paused() external view returns (bool) {
        return LibPausable.paused();
    }
}
