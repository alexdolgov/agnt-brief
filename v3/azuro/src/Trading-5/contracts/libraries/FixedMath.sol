// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.28;

library FixedMath {
    error MustBeAtLeastOne(uint256 value);
    error MustBeLessThanOne(uint256 value);

    uint256 public constant ONE = 1e18;

    function mul(uint256 value, uint256 other) internal pure returns (uint256) {
        return (value * other) / ONE;
    }

    function div(uint256 value, uint256 other) internal pure returns (uint256) {
        return (value * ONE) / other;
    }

    function mul(uint256 value, int256 other) internal pure returns (int256) {
        return (int256(value) * other) / int256(ONE);
    }

    function requireAtLeastOne(uint256 value) internal pure {
        if (value < ONE) revert MustBeAtLeastOne(value);
    }

    function requireLessThanOne(uint256 value) internal pure {
        if (value >= ONE) revert MustBeLessThanOne(value);
    }
}
