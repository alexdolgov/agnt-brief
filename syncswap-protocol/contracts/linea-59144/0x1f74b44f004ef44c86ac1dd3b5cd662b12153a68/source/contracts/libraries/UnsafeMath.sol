// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

/// @dev Unchecked math functions.
contract UnsafeMath {
    function unsafe_div(uint x, uint y) internal pure returns (uint z) {
        assembly {
            z := div(x, y)
        }
    }

    function unsafe_mul(uint a, uint b) internal pure returns (uint) {
        unchecked {
            return a * b;
        }
    }

    function unsafe_sub(uint a, uint b) internal pure returns (uint) {
        unchecked {
            return a - b;
        }
    }

    function unsafe_add(uint a, uint b) internal pure returns (uint) {
        unchecked {
            return a + b;
        }
    }
}