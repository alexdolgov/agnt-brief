// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/* ========================== FREE FUNCTIONS ========================== */

/**
 * @dev For more efficient reverts.
 */
function _revert(bytes4 errorSelector) pure {
    assembly {
        mstore(0x00, errorSelector)
        revert(0x00, 0x04)
    }
}

/**
 * @dev For reducing duplicated revert assembly and bytecode size.
 */
function _revertWithData(bytes memory data) pure {
    assembly {
        revert(add(data, 0x20), mload(data))
    }
}
