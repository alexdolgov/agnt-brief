// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.20;

/// @title Slipstream packed-path decoding
/// @notice Decodes a Slipstream CL swap path packed as `token | int24 tickSpacing | token | ...`.
/// @dev Mirrors Uniswap v3 periphery `Path`, but the 3-byte hop field is a signed `int24`
///      tick spacing (always a small positive value on Topaz) instead of a `uint24` fee.
library Path {
    /// @dev The length of the bytes encoded address
    uint256 internal constant ADDR_SIZE = 20;
    /// @dev The length of the bytes encoded tick spacing
    uint256 internal constant TICKSPACING_SIZE = 3;
    /// @dev The offset of a single token address + tick spacing
    uint256 internal constant NEXT_OFFSET = ADDR_SIZE + TICKSPACING_SIZE; // 23
    /// @dev The offset of an encoded pool (two tokens + tick spacing)
    uint256 internal constant POP_OFFSET = NEXT_OFFSET + ADDR_SIZE; // 43
    /// @dev The minimum length of a path that contains 2 or more pools
    uint256 internal constant MULTIPLE_POOLS_MIN_LENGTH = POP_OFFSET + NEXT_OFFSET; // 66

    /// @notice Returns true if the path is well-formed (>= 1 pool, exact hop alignment)
    function isValid(bytes memory path) internal pure returns (bool) {
        return path.length >= POP_OFFSET && (path.length - ADDR_SIZE) % NEXT_OFFSET == 0;
    }

    /// @notice Returns the number of pools in the path
    function numPools(bytes memory path) internal pure returns (uint256) {
        return (path.length - ADDR_SIZE) / NEXT_OFFSET;
    }

    /// @notice Reads the 20-byte address at `start`
    function toAddress(bytes memory path, uint256 start) internal pure returns (address addr) {
        require(start + ADDR_SIZE <= path.length, "Path: address oob");
        assembly {
            addr := shr(96, mload(add(add(path, 0x20), start)))
        }
    }

    /// @notice Reads the 3-byte tick spacing at `start`
    function toTickSpacing(bytes memory path, uint256 start) internal pure returns (int24 tickSpacing) {
        require(start + TICKSPACING_SIZE <= path.length, "Path: tickSpacing oob");
        uint24 raw;
        assembly {
            raw := shr(232, mload(add(add(path, 0x20), start)))
        }
        tickSpacing = int24(raw);
    }

    /// @notice The first (input) token of the path
    function firstToken(bytes memory path) internal pure returns (address) {
        return toAddress(path, 0);
    }

    /// @notice The last (output) token of the path
    function lastToken(bytes memory path) internal pure returns (address) {
        return toAddress(path, path.length - ADDR_SIZE);
    }

    /// @notice Decodes the i-th pool in the path
    /// @return tokenA Input token of the i-th hop
    /// @return tickSpacing Tick spacing of the i-th hop's pool
    /// @return tokenB Output token of the i-th hop
    function decodePool(
        bytes memory path,
        uint256 i
    ) internal pure returns (address tokenA, int24 tickSpacing, address tokenB) {
        uint256 offset = i * NEXT_OFFSET;
        tokenA = toAddress(path, offset);
        tickSpacing = toTickSpacing(path, offset + ADDR_SIZE);
        tokenB = toAddress(path, offset + NEXT_OFFSET);
    }
}
