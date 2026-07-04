// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

library ExternalCall {
    /**
     * @dev Executes a call to the `target` address with the given `data`, gas limit `maxGas`.
     * @param target The address of the contract or external function to call.
     * @param data The calldata to include in the call.
     * @return success A boolean indicating whether the call was successful.
     */
    function _externalCall(address target, bytes calldata data) internal returns (bool success) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            calldatacopy(ptr, data.offset, data.length)
            success := call(
                gas(),
                target,
                0, //value
                ptr, //Inputs are stored at location ptr
                data.length,
                0,
                0
            )

            if and(not(success), and(gt(returndatasize(), 0), lt(returndatasize(), 256))) {
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }

            mstore(0x40, add(ptr, data.length)) // Set storage pointer to empty space
        }
    }
}
