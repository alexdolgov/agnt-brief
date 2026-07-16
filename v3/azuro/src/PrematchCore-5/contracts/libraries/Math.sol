// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

/// @title Common math tools
library Math {
    /**
     * @notice Get non-negative difference of `minuend` and `subtracted`.
     * @return `minuend - subtracted`if it is non-negative or 0
     */
    function diffOrZero(uint256 minuend, uint256 subtracted)
        internal
        pure
        returns (uint256)
    {
        return minuend > subtracted ? minuend - subtracted : 0;
    }

    /**
     * @notice Get the biggest item of `a`.
     */
    function max(uint128[] memory a) internal pure returns (uint128 max_) {
        max_ = a[0];
        uint256 length = a.length;
        for (uint256 i = 1; i < length; ++i) {
            uint128 value = a[i];
            if (value > max_) max_ = value;
        }
    }

    /**
     * @notice Get the sum of items of `a`.
     */
    function sum(uint128[] memory a) internal pure returns (uint128 sum_) {
        uint256 length = a.length;
        for (uint256 i = 0; i < length; ++i) {
            sum_ += a[i];
        }
    }
}
