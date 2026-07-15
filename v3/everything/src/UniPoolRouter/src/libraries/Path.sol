// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import "./BytesLib.sol";

/**
 * @title Functions for manipulating path data for multihop swaps
 * @dev Modified from Uniswap V3 Path library to support dynamic fees by removing fee encoding from paths.
 * @custom:from UniswapV3
 * @custom:url https://github.com/Uniswap/v3-periphery/blob/main/contracts/libraries/Path.sol
 * @custom:editor SmarDex team
 */
library Path {
    using BytesLib for bytes;

    /// @dev The length of the bytes encoded address.
    uint256 private constant ADDR_SIZE = 20;

    /// @dev The offset of a single token address.
    uint256 private constant NEXT_OFFSET = ADDR_SIZE;

    /// @dev The offset of an encoded pool key.
    uint256 private constant POP_OFFSET = NEXT_OFFSET + ADDR_SIZE;

    /// @dev The minimum length of an encoding that contains 2 or more pools.
    uint256 private constant MULTIPLE_POOLS_MIN_LENGTH = POP_OFFSET + NEXT_OFFSET;

    /**
     * @notice Returns true if the path encodes two or more pools.
     * @param path The encoded swap path.
     * @return hasMultiplePools_ True if path contains two or more pools, otherwise false.
     */
    function hasMultiplePools(bytes memory path) internal pure returns (bool hasMultiplePools_) {
        hasMultiplePools_ = path.length >= MULTIPLE_POOLS_MIN_LENGTH;
    }

    /**
     * @notice Returns the number of pools encoded in the path.
     * @param path The encoded path.
     * @return poolNumbers_ The number of pools.
     */
    function numPools(bytes memory path) internal pure returns (uint256 poolNumbers_) {
        poolNumbers_ = ((path.length - ADDR_SIZE) / NEXT_OFFSET);
    }

    /**
     * @notice Decodes the first pool (token pair) from the path.
     * @param path The bytes encoded swap path.
     * @return tokenA_ The first token of the given pool.
     * @return tokenB_ The second token of the given pool.
     */
    function decodeFirstPool(bytes memory path) internal pure returns (address tokenA_, address tokenB_) {
        tokenA_ = path.toAddress(0);
        tokenB_ = path.toAddress(NEXT_OFFSET);
    }

    /**
     * @notice Gets the segment corresponding to the first pool in the path.
     * @param path The bytes encoded swap path.
     * @return data_ The segment containing all data necessary to target the first pool in the path.
     */
    function getFirstPool(bytes memory path) internal pure returns (bytes memory data_) {
        data_ = path.slice(0, POP_OFFSET);
    }

    /**
     * @notice Skips a token from the buffer and returns the remainder.
     * @param path The swap path.
     * @return remainingTokens_ The remaining token elements in the path.
     */
    function skipToken(bytes memory path) internal pure returns (bytes memory remainingTokens_) {
        remainingTokens_ = path.slice(NEXT_OFFSET, path.length - NEXT_OFFSET);
    }

    /**
     * @notice Returns the _path addresses concatenated as a packed bytes array.
     * @param path The swap path.
     * @return encoded_ The bytes array containing the packed addresses.
     */
    function encodeTightlyPacked(address[] memory path) internal pure returns (bytes memory encoded_) {
        uint256 len = path.length;
        for (uint256 i; i != len;) {
            encoded_ = bytes.concat(encoded_, abi.encodePacked(path[i]));
            unchecked {
                // SAFETY: input array can't exceed uint256.max items
                ++i;
            }
        }
    }

    /**
     * @notice Returns the _path addresses concatenated in a reversed order as a packed bytes array.
     * @param path The swap path.
     * @return encoded_ The bytes array containing the packed addresses.
     */
    function encodeTightlyPackedReversed(address[] memory path) internal pure returns (bytes memory encoded_) {
        uint256 len = path.length;
        for (uint256 i = len; i != 0;) {
            encoded_ = bytes.concat(encoded_, abi.encodePacked(path[i - 1]));
            unchecked {
                // SAFETY: loop will break at zero, can't underflow
                --i;
            }
        }
    }
}
