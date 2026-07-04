// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * Modified Bytes.sol from OpenZeppelin library
 * Original version cannot be used due to its reliance on `mcopy` instruction.
 * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.2.0/contracts/utils/Bytes.sol
 */
library ByteUtils {
    /**
     * @dev Backward search for `s` in `buffer` starting at position `pos`
     * * If `s` is present in the buffer (at or before `pos`), returns the index of the previous instance
     * * If `s` is not present in the buffer (at or before `pos`), returns type(uint256).max
     *
     * NOTE: replicates the behavior of
     * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf[Javascript's `Array.lastIndexOf`]
     */
    function lastIndexOf(
        bytes memory buffer,
        bytes1 s,
        uint256 pos
    ) internal pure returns (uint256) {
        unchecked {
            uint256 length = buffer.length;
            // NOTE here we cannot do `i = Math.min(pos + 1, length)` because `pos + 1` could overflow
            for (uint256 i = Math.min(pos, length - 1) + 1; i > 0; --i) {
                if (bytes1(_unsafeReadBytesOffset(buffer, i - 1)) == s) {
                    return i - 1;
                }
            }
            return type(uint256).max;
        }
    }

    /**
     * @dev Reads a bytes32 from a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeReadBytesOffset(
        bytes memory buffer,
        uint256 offset
    ) private pure returns (bytes32 value) {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        /* solhint-disable-next-line no-inline-assembly */
        assembly ("memory-safe") {
            value := mload(add(buffer, add(0x20, offset)))
        }
    }

    /**
     * @dev Taken from https://github.com/GNSPS/solidity-bytes-utils/blob/master/contracts/BytesLib.sol#L228
     */
    function slice(
        bytes memory buffer,
        uint256 start,
        uint256 length
    ) internal pure returns (bytes memory) {
        /* solhint-disable-next-line custom-errors,gas-custom-errors */
        require(length + 31 >= length, "slice_overflow");
        /* solhint-disable-next-line custom-errors,gas-custom-errors */
        require(buffer.length >= start + length, "slice_outOfBounds");

        bytes memory tempBytes;

        /* solhint-disable-next-line no-inline-assembly */
        assembly {
            switch iszero(length)
            case 0 {
                // Get a location of some free memory and store it in tempBytes as
                // Solidity does for memory variables.
                tempBytes := mload(0x40)

                // The first word of the slice result is potentially a partial
                // word read from the original array. To read it, we calculate
                // the length of that partial word and start copying that many
                // bytes into the array. The first word we copy will start with
                // data we don't care about, but the last `lengthmod` bytes will
                // land at the beginning of the contents of the new array. When
                // we're done copying, we overwrite the full first word with
                // the actual length of the slice.
                let lengthmod := and(length, 31)

                // The multiplication in the next line is necessary
                // because when slicing multiples of 32 bytes (lengthmod == 0)
                // the following copy loop was copying the origin's length
                // and then ending prematurely not copying everything it should.
                let mc := add(add(tempBytes, lengthmod), mul(0x20, iszero(lengthmod)))
                let end := add(mc, length)

                for {
                    // The multiplication in the next line has the same exact purpose
                    // as the one above.
                    let cc := add(add(add(buffer, lengthmod), mul(0x20, iszero(lengthmod))), start)
                } lt(mc, end) {
                    mc := add(mc, 0x20)
                    cc := add(cc, 0x20)
                } {
                    mstore(mc, mload(cc))
                }

                mstore(tempBytes, length)

                //update free-memory pointer
                //allocating the array padded to 32 bytes like the compiler does now
                mstore(0x40, and(add(mc, 31), not(31)))
            }
            //if we want a zero-length slice let's just return a zero-length array
            default {
                tempBytes := mload(0x40)
                //zero out the 32 bytes slice we are about to return
                //we need to do it because Solidity does not garbage collect
                mstore(tempBytes, 0)

                mstore(0x40, add(tempBytes, 0x20))
            }
        }

        return tempBytes;
    }
}
