// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/**
 * @title LibUtilsRevert
 * @author Rain Team
 * @notice Centralized revert helpers.
 * @dev Provides reusable custom error handling for efficiency purposes.
 */
library LibUtilsRevert {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev For more efficient reverts.
     */
    function revertWithSelector(bytes4 errorSelector) internal pure {
        assembly {
            mstore(0x00, errorSelector)
            revert(0x00, 0x04)
        }
    }

    /**
     * @dev For reducing duplicated revert assembly and bytecode size.
     */
    function revertWithData(bytes memory data) internal pure {
        assembly {
            revert(add(data, 0x20), mload(data))
        }
    }
}
