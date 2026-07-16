// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

library PositionKey {
    /// @dev Returns the key of the position in the core library
    function compute(address owner, uint256 index, int24 tickLower, int24 tickUpper)
        internal
        pure
        returns (bytes32 positionKey)
    {
        // Gas optimization: use assembly to pack and hash data more efficiently
        // Equivalent to: keccak256(abi.encodePacked(owner, index, tickLower, tickUpper))
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(add(fmp, 0x26), tickUpper) // [0x43, 0x46)
            mstore(add(fmp, 0x23), tickLower) // [0x40, 0x43)
            mstore(add(fmp, 0x20), index) // [0x20, 0x40)
            mstore(fmp, owner) // [0x0c, 0x20)
            positionKey := keccak256(add(fmp, 0x0c), 0x3a) // len is 58 bytes

            // Clean the memory we used
            mstore(add(fmp, 0x40), 0) // fmp+0x40 held tickLower, tickUpper
            mstore(add(fmp, 0x20), 0) // fmp+0x20 held index
            mstore(fmp, 0) // fmp held owner
        }
    }
}
