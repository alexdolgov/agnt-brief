// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

/// @dev Thrown when slice length calculation would overflow.
error BytesLibSliceOverflow();

/// @dev Thrown when slice operation would exceed array bounds.
error BytesLibOutOfBounds();

/// @dev Thrown when address conversion start index calculation would overflow.
error BytesLibToAddressOverflow();

/// @dev Thrown when address conversion would read beyond array bounds.
error BytesLibToAddressOutOfBounds();

/**
 * @title Solidity Bytes Arrays Utils
 * @author Gonçalo Sá <goncalo.sa@consensys.net>
 * @custom:url https://github.com/GNSPS/solidity-bytes-utils/blob/master/contracts/BytesLib.sol
 *
 * @dev Bytes tightly packed arrays utility library for ethereum contracts written in Solidity.
 * The library lets you concatenate, slice and type cast bytes arrays both in memory and storage.
 * Updated for Solidity 0.8.x compatibility. Removed unused `toUint24` function from original Uniswap version.
 */
library BytesLib {
    /**
     * @notice Returns a sub-slice of a given bytes array.
     * @dev Uses inline assembly to optimize memory operations.
     * @param inputBytes The original bytes array to slice from.
     * @param start The index to start slicing.
     * @param length The number of bytes to extract from `start`.
     * @return tempBytes_ A new bytes array containing the sliced portion.
     */
    function slice(bytes memory inputBytes, uint256 start, uint256 length)
        internal
        pure
        returns (bytes memory tempBytes_)
    {
        require(length + 31 >= length, BytesLibSliceOverflow());
        require(start + length >= start, BytesLibSliceOverflow());
        require(inputBytes.length >= start + length, BytesLibOutOfBounds());

        assembly ("memory-safe") {
            switch iszero(length)
            case 0 {
                // get a location of some free memory and store it in tempBytes as
                // solidity does for memory variables
                tempBytes_ := mload(0x40)

                // the first word of the slice result is potentially a partial
                // word read from the original array. To read it, we calculate
                // the length of that partial word and start copying that many
                // bytes into the array. The first word we copy will start with
                // data we don't care about, but the last `lengthmod` bytes will
                // land at the beginning of the contents of the new array. When
                // we're done copying, we overwrite the full first word with
                // the actual length of the slice
                let lengthmod := and(length, 31)

                // the multiplication in the next line is necessary
                // because when slicing multiples of 32 bytes (lengthmod == 0)
                // the following copy loop was copying the origin's length
                // and then ending prematurely not copying everything it should
                let mc := add(add(tempBytes_, lengthmod), mul(0x20, iszero(lengthmod)))
                let end := add(mc, length)

                for {
                    // the multiplication in the next line has the same exact purpose
                    // as the one above
                    let cc := add(add(add(inputBytes, lengthmod), mul(0x20, iszero(lengthmod))), start)
                } lt(mc, end) {
                    mc := add(mc, 0x20)
                    cc := add(cc, 0x20)
                } { mstore(mc, mload(cc)) }

                mstore(tempBytes_, length)

                // update free-memory pointer
                // allocating the array padded to 32 bytes like the compiler does now
                mstore(0x40, and(add(mc, 31), not(31)))
            }
            // if we want a zero-length slice let's just return a zero-length array
            default {
                tempBytes_ := mload(0x40)
                // zero out the 32 bytes slice we are about to return
                // we need to do it because Solidity does not garbage collect
                mstore(tempBytes_, 0)

                mstore(0x40, add(tempBytes_, 0x20))
            }
        }
    }

    /**
     * @notice Converts 20 bytes starting at `start` into an address.
     * @param inputBytes The bytes array containing the address.
     * @param start The index where the address starts in the array.
     * @return tempAddress_ The extracted address.
     */
    function toAddress(bytes memory inputBytes, uint256 start) internal pure returns (address tempAddress_) {
        require(start + 20 >= start, BytesLibToAddressOverflow());
        require(inputBytes.length >= start + 20, BytesLibToAddressOutOfBounds());
        assembly ("memory-safe") {
            tempAddress_ := div(mload(add(add(inputBytes, 0x20), start)), 0x1000000000000000000000000)
        }
    }
}
