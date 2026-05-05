// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/external/IERC20Minimal.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Minimal ERC20 interface for Uniswap
/// @notice Contains a subset of the full ERC20 interface that is used in Uniswap V3
interface IERC20Minimal {
    /// @notice Returns an account's balance in the token
    /// @param account The account for which to look up the number of tokens it has, i.e. its balance
    /// @return The number of tokens held by the account
    function balanceOf(address account) external view returns (uint256);

    /// @notice Transfers the amount of token from the `msg.sender` to the recipient
    /// @param recipient The account that will receive the amount transferred
    /// @param amount The number of tokens to send from the sender to the recipient
    /// @return Returns true for a successful transfer, false for an unsuccessful transfer
    function transfer(address recipient, uint256 amount) external returns (bool);

    /// @notice Returns the current allowance given to a spender by an owner
    /// @param owner The account of the token owner
    /// @param spender The account of the token spender
    /// @return The current allowance granted by `owner` to `spender`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets the allowance of a spender from the `msg.sender` to the value `amount`
    /// @param spender The account which will be allowed to spend a given amount of the owners tokens
    /// @param amount The amount of tokens allowed to be used by `spender`
    /// @return Returns true for a successful approval, false for unsuccessful
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Transfers `amount` tokens from `sender` to `recipient` up to the allowance given to the `msg.sender`
    /// @param sender The account from which the transfer will be initiated
    /// @param recipient The recipient of the transfer
    /// @param amount The amount of the transfer
    /// @return Returns true for a successful transfer, false for unsuccessful
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /// @notice Event emitted when tokens are transferred from one address to another, either via `#transfer` or `#transferFrom`.
    /// @param from The account from which the tokens were sent, i.e. the balance decreased
    /// @param to The account to which the tokens were sent, i.e. the balance increased
    /// @param value The amount of tokens that were transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Event emitted when the approval amount for the spender of a given owner's tokens changes.
    /// @param owner The account that approved spending of its tokens
    /// @param spender The account for which the spending allowance was modified
    /// @param value The new allowance from the owner to the spender
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/interfaces/IHooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {ModifyLiquidityParams, SwapParams} from "../types/PoolOperation.sol";
import {BeforeSwapDelta} from "../types/BeforeSwapDelta.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
/// See the Hooks library for the full spec.
/// @dev Should only be callable by the v4 PoolManager.
interface IHooks {
    /// @notice The hook called before the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @return bytes4 The function selector for the hook
    function beforeInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96) external returns (bytes4);

    /// @notice The hook called after the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @param tick The current tick after the state of a pool is initialized
    /// @return bytes4 The function selector for the hook
    function afterInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        returns (bytes4);

    /// @notice The hook called before liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param delta The caller's balance delta after adding liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterAddLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param delta The caller's balance delta after removing liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BeforeSwapDelta The hook's delta in specified and unspecified currencies. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    /// @return uint24 Optionally override the lp fee, only used if three conditions are met: 1. the Pool has a dynamic fee, 2. the value's 2nd highest bit is set (23rd bit, 0x400000), and 3. the value is less than or equal to the maximum fee (1 million)
    function beforeSwap(address sender, PoolKey calldata key, SwapParams calldata params, bytes calldata hookData)
        external
        returns (bytes4, BeforeSwapDelta, uint24);

    /// @notice The hook called after a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param delta The amount owed to the caller (positive) or owed to the pool (negative)
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return int128 The hook's delta in unspecified currency. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterSwap(
        address sender,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, int128);

    /// @notice The hook called before donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function afterDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
    /// @dev ERC-7751 error for wrapping bubbled up reverts
    error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

    /// @dev Reverts with the selector of a custom error in the scratch space
    function revertWith(bytes4 selector) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            revert(0, 0x04)
        }
    }

    /// @dev Reverts with a custom error with an address argument in the scratch space
    function revertWith(bytes4 selector, address addr) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with an int24 argument in the scratch space
    function revertWith(bytes4 selector, int24 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, signextend(2, value))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with a uint160 argument in the scratch space
    function revertWith(bytes4 selector, uint160 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with two int24 arguments
    function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), signextend(2, value1))
            mstore(add(fmp, 0x24), signextend(2, value2))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two uint160 arguments
    function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two address arguments
    function revertWith(bytes4 selector, address value1, address value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
    /// @dev this method can be vulnerable to revert data bombs
    function bubbleUpAndRevertWith(
        address revertingContract,
        bytes4 revertingFunctionSelector,
        bytes4 additionalContext
    ) internal pure {
        bytes4 wrappedErrorSelector = WrappedError.selector;
        assembly ("memory-safe") {
            // Ensure the size of the revert data is a multiple of 32 bytes
            let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

            let fmp := mload(0x40)

            // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
            mstore(fmp, wrappedErrorSelector)
            mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(
                add(fmp, 0x24),
                and(revertingFunctionSelector, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            // offset revert reason
            mstore(add(fmp, 0x44), 0x80)
            // offset additional context
            mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
            // size revert reason
            mstore(add(fmp, 0x84), returndatasize())
            // revert reason
            returndatacopy(add(fmp, 0xa4), 0, returndatasize())
            // size additional context
            mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
            // additional context
            mstore(
                add(fmp, add(0xc4, encodedDataSize)),
                and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            revert(fmp, add(0xe4, encodedDataSize))
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/libraries/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @title Safe casting methods
/// @notice Contains methods for safely casting between types
library SafeCast {
    using CustomRevert for bytes4;

    error SafeCastOverflow();

    /// @notice Cast a uint256 to a uint160, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint160
    function toUint160(uint256 x) internal pure returns (uint160 y) {
        y = uint160(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint128
    function toUint128(uint256 x) internal pure returns (uint128 y) {
        y = uint128(x);
        if (x != y) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a int128 to a uint128, revert on overflow or underflow
    /// @param x The int128 to be casted
    /// @return y The casted integer, now type uint128
    function toUint128(int128 x) internal pure returns (uint128 y) {
        if (x < 0) SafeCastOverflow.selector.revertWith();
        y = uint128(x);
    }

    /// @notice Cast a int256 to a int128, revert on overflow or underflow
    /// @param x The int256 to be downcasted
    /// @return y The downcasted integer, now type int128
    function toInt128(int256 x) internal pure returns (int128 y) {
        y = int128(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int256, revert on overflow
    /// @param x The uint256 to be casted
    /// @return y The casted integer, now type int256
    function toInt256(uint256 x) internal pure returns (int256 y) {
        y = int256(x);
        if (y < 0) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return The downcasted integer, now type int128
    function toInt128(uint256 x) internal pure returns (int128) {
        if (x >= 1 << 127) SafeCastOverflow.selector.revertWith();
        return int128(int256(x));
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/BalanceDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SafeCast} from "../libraries/SafeCast.sol";

/// @dev Two `int128` values packed into a single `int256` where the upper 128 bits represent the amount0
/// and the lower 128 bits represent the amount1.
type BalanceDelta is int256;

using {add as +, sub as -, eq as ==, neq as !=} for BalanceDelta global;
using BalanceDeltaLibrary for BalanceDelta global;
using SafeCast for int256;

function toBalanceDelta(int128 _amount0, int128 _amount1) pure returns (BalanceDelta balanceDelta) {
    assembly ("memory-safe") {
        balanceDelta := or(shl(128, _amount0), and(sub(shl(128, 1), 1), _amount1))
    }
}

function add(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := add(a0, b0)
        res1 := add(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function sub(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := sub(a0, b0)
        res1 := sub(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function eq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) == BalanceDelta.unwrap(b);
}

function neq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) != BalanceDelta.unwrap(b);
}

/// @notice Library for getting the amount0 and amount1 deltas from the BalanceDelta type
library BalanceDeltaLibrary {
    /// @notice A BalanceDelta of 0
    BalanceDelta public constant ZERO_DELTA = BalanceDelta.wrap(0);

    function amount0(BalanceDelta balanceDelta) internal pure returns (int128 _amount0) {
        assembly ("memory-safe") {
            _amount0 := sar(128, balanceDelta)
        }
    }

    function amount1(BalanceDelta balanceDelta) internal pure returns (int128 _amount1) {
        assembly ("memory-safe") {
            _amount1 := signextend(15, balanceDelta)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/BeforeSwapDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Return type of the beforeSwap hook.
// Upper 128 bits is the delta in specified tokens. Lower 128 bits is delta in unspecified tokens (to match the afterSwap hook)
type BeforeSwapDelta is int256;

// Creates a BeforeSwapDelta from specified and unspecified
function toBeforeSwapDelta(int128 deltaSpecified, int128 deltaUnspecified)
    pure
    returns (BeforeSwapDelta beforeSwapDelta)
{
    assembly ("memory-safe") {
        beforeSwapDelta := or(shl(128, deltaSpecified), and(sub(shl(128, 1), 1), deltaUnspecified))
    }
}

/// @notice Library for getting the specified and unspecified deltas from the BeforeSwapDelta type
library BeforeSwapDeltaLibrary {
    /// @notice A BeforeSwapDelta of 0
    BeforeSwapDelta public constant ZERO_DELTA = BeforeSwapDelta.wrap(0);

    /// extracts int128 from the upper 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap
    function getSpecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaSpecified) {
        assembly ("memory-safe") {
            deltaSpecified := sar(128, delta)
        }
    }

    /// extracts int128 from the lower 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap and afterSwap
    function getUnspecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaUnspecified) {
        assembly ("memory-safe") {
            deltaUnspecified := signextend(15, delta)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/Currency.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Minimal} from "../interfaces/external/IERC20Minimal.sol";
import {CustomRevert} from "../libraries/CustomRevert.sol";

type Currency is address;

using {greaterThan as >, lessThan as <, greaterThanOrEqualTo as >=, equals as ==} for Currency global;
using CurrencyLibrary for Currency global;

function equals(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) == Currency.unwrap(other);
}

function greaterThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) > Currency.unwrap(other);
}

function lessThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) < Currency.unwrap(other);
}

function greaterThanOrEqualTo(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) >= Currency.unwrap(other);
}

/// @title CurrencyLibrary
/// @dev This library allows for transferring and holding native tokens and ERC20 tokens
library CurrencyLibrary {
    /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
    error NativeTransferFailed();

    /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
    error ERC20TransferFailed();

    /// @notice A constant to represent the native currency
    Currency public constant ADDRESS_ZERO = Currency.wrap(address(0));

    function transfer(Currency currency, address to, uint256 amount) internal {
        // altered from https://github.com/transmissions11/solmate/blob/44a9963d4c78111f77caa0e65d677b8b46d6f2e6/src/utils/SafeTransferLib.sol
        // modified custom error selectors

        bool success;
        if (currency.isAddressZero()) {
            assembly ("memory-safe") {
                // Transfer the ETH and revert if it fails.
                success := call(gas(), to, amount, 0, 0, 0, 0)
            }
            // revert with NativeTransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
            }
        } else {
            assembly ("memory-safe") {
                // Get a pointer to some free memory.
                let fmp := mload(0x40)

                // Write the abi-encoded calldata into memory, beginning with the function selector.
                mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
                mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

                success :=
                    and(
                        // Set success to whether the call reverted, if not we check it either
                        // returned exactly 1 (can't just be non-zero data), or had no return data.
                        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                        // Counterintuitively, this call must be positioned second to the or() call in the
                        // surrounding and() call or else returndatasize() will be zero during the computation.
                        call(gas(), currency, 0, fmp, 68, 0, 32)
                    )

                // Now clean the memory we used
                mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
                mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
                mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
            }
            // revert with ERC20TransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(
                    Currency.unwrap(currency), IERC20Minimal.transfer.selector, ERC20TransferFailed.selector
                );
            }
        }
    }

    function balanceOfSelf(Currency currency) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return address(this).balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(address(this));
        }
    }

    function balanceOf(Currency currency, address owner) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return owner.balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(owner);
        }
    }

    function isAddressZero(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(ADDRESS_ZERO);
    }

    function toId(Currency currency) internal pure returns (uint256) {
        return uint160(Currency.unwrap(currency));
    }

    // If the upper 12 bytes are non-zero, they will be zero-ed out
    // Therefore, fromId() and toId() are not inverses of each other
    function fromId(uint256 id) internal pure returns (Currency) {
        return Currency.wrap(address(uint160(id)));
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/PoolId.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "./PoolKey.sol";

type PoolId is bytes32;

/// @notice Library for computing the ID of a pool
library PoolIdLibrary {
    /// @notice Returns value equal to keccak256(abi.encode(poolKey))
    function toId(PoolKey memory poolKey) internal pure returns (PoolId poolId) {
        assembly ("memory-safe") {
            // 0xa0 represents the total size of the poolKey struct (5 slots of 32 bytes)
            poolId := keccak256(poolKey, 0xa0)
        }
    }
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/PoolKey.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "./Currency.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {PoolIdLibrary} from "./PoolId.sol";

using PoolIdLibrary for PoolKey global;

/// @notice Returns the key for identifying a pool
struct PoolKey {
    /// @notice The lower currency of the pool, sorted numerically
    Currency currency0;
    /// @notice The higher currency of the pool, sorted numerically
    Currency currency1;
    /// @notice The pool LP fee, capped at 1_000_000. If the highest bit is 1, the pool has a dynamic fee and must be exactly equal to 0x800000
    uint24 fee;
    /// @notice Ticks that involve positions must be a multiple of tick spacing
    int24 tickSpacing;
    /// @notice The hooks of the pool
    IHooks hooks;
}

// ============================================================
// FILE: node_modules/@uniswap/v4-core/src/types/PoolOperation.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";

/// @notice Parameter struct for `ModifyLiquidity` pool operations
struct ModifyLiquidityParams {
    // the lower and upper tick of the position
    int24 tickLower;
    int24 tickUpper;
    // how to modify the liquidity
    int256 liquidityDelta;
    // a value to set if you want unique liquidity positions at the same range
    bytes32 salt;
}

/// @notice Parameter struct for `Swap` pool operations
struct SwapParams {
    /// Whether to swap token0 for token1 or vice versa
    bool zeroForOne;
    /// The desired input amount if negative (exactIn), or the desired output amount if positive (exactOut)
    int256 amountSpecified;
    /// The sqrt price at which, if reached, the swap will stop executing
    uint160 sqrtPriceLimitX96;
}

// ============================================================
// FILE: node_modules/solmate/src/auth/Owned.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Simple single owner authorization mixin.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/Owned.sol)
abstract contract Owned {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnershipTransferred(address indexed user, address indexed newOwner);

    /*//////////////////////////////////////////////////////////////
                            OWNERSHIP STORAGE
    //////////////////////////////////////////////////////////////*/

    address public owner;

    modifier onlyOwner() virtual {
        require(msg.sender == owner, "UNAUTHORIZED");

        _;
    }

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        owner = _owner;

        emit OwnershipTransferred(address(0), _owner);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNERSHIP LOGIC
    //////////////////////////////////////////////////////////////*/

    function transferOwnership(address newOwner) public virtual onlyOwner {
        owner = newOwner;

        emit OwnershipTransferred(msg.sender, newOwner);
    }
}

// ============================================================
// FILE: src/errors/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";

// TODO: cleanup unused errors

/**
 * @title Errors
 * @notice Collection of all custom errors used in the protocol
 */
library Errors {
    // --- Access Control ---
    error AccessDenied();
    error AccessOnlyGovernance(address caller);
    error AccessOnlyPoolManager(address caller);
    error AccessNotAuthorized(address caller);
    error AccessOnlyEmergencyAdmin(address caller);
    error Unauthorized();
    error CallerNotPoolManager(address caller);
    error CallerNotMarginContract();
    error AccessOnlyOwner(address caller);
    error UnauthorizedCaller(address caller);
    error GovernanceNotInitialized();
    error HookAddressAlreadySet();
    error InvalidHookAddress();
    error ZeroDestination();
    error NotPoolManager();

    // --- Validation & Input ---
    error InvalidHookAuthorization(address expected, address actual);
    error PoolPositionManagerMismatch();
    error ValidationDeadlinePassed(uint32 deadline, uint32 blockTime);
    error ValidationZeroAddress(string target);
    error ValidationInvalidInput(string reason);
    error ValidationZeroAmount(string parameter);
    error ValidationInvalidLength(string parameter);
    error ValidationInvalidAddress(address target);
    error ValidationInvalidRange(string parameter);
    error ValidationInvalidFee(uint24 fee);
    error ValidationInvalidTickSpacing(int24 tickSpacing);
    error ValidationInvalidTick(int24 tick);
    error ValidationInvalidSlippage(uint256 slippage);
    error ParameterOutOfRange(uint256 value, uint256 min, uint256 max);
    error DeadlinePassed(uint32 deadline, uint32 blockTime);
    error ArrayLengthMismatch();
    error InvalidCallbackSalt();
    error InvalidPolicyImplementationsLength(uint256 length);
    error NotInitialized();
    error AlreadyInitialized(string component);
    error ReinvestmentDisabled();
    error RateLimited();
    error InvalidPoolKey();
    error InvalidPoolId();
    error InvalidTwapPeriod();
    error InvalidTickTolerance();
    error ZeroAddress();
    error ZeroAmount();
    error ZeroLiquidity();
    error ZeroShares();
    error ZeroPolicyManagerAddress();
    error ZeroPoolManagerAddress();
    error ZeroFullRangeAddress();
    error InvalidCallbackType(uint8 callbackType);
    error InvalidTickRange();
    error InvalidParameter(string parameterName, uint256 value);
    error ExpiryTooSoon(uint256 expiry, uint256 requiredTime);
    error ExpiryTooFar(uint256 expiry, uint256 requiredTime);

    // --- Math & Calculation ---
    error DivisionByZero();
    error Overflow();
    error Underflow();
    error InvalidCalculation();
    error InvalidConversion();
    error InvalidRatio();
    error InvalidAmount();
    error InvalidShare();
    error InvalidPercentage();
    error InvalidFee();
    error InvalidPrice(uint160 sqrtPriceX96);
    error InvalidLiquidity();
    error InvalidInput();
    error StaleOracle();
    error FeeTooHigh();
    error AmountTooLarge(uint256 amount, uint256 maximum);
    error SlippageExceeded(uint256 required, uint256 actual);
    error CalculationError(string reason);
    error MathOverflow();
    error MathUnderflow();
    error InsufficientInitialLiquidity();

    // --- System & State ---
    error HookDispatchFailed(bytes4 selector);
    error DelegateCallFailed();
    error NotImplemented();
    error ContractPaused();
    error InternalError(string message);
    error InconsistentState(string reason);

    // --- Pool State & Operations ---
    error PoolNotInitialized(bytes32 poolId);
    error PoolAlreadyInitialized(bytes32 poolId);
    error PoolNotFound(PoolId poolId);
    error PoolPaused(bytes32 poolId);
    error PoolLocked(bytes32 poolId);
    error PoolInvalidState(bytes32 poolId);
    error PoolInvalidOperation(bytes32 poolId);
    error PoolInvalidParameter(bytes32 poolId);
    error PoolUnsupportedFee(uint24 fee);
    error PoolUnsupportedTickSpacing(int24 tickSpacing);
    error PoolInvalidFeeOrTickSpacing(uint24 fee, int24 tickSpacing);
    error PoolTickOutOfRange(int24 tick, int24 minTick, int24 maxTick);
    error PoolInEmergencyState(bytes32 poolId);
    error PoolInvalidStateTransition(bytes32 poolId, string currentState, string targetState);
    error OnlyDynamicFeePoolAllowed();
    error FailedToReadPoolData(PoolId poolId);
    error PoolKeyAlreadyStored(bytes32 poolId);

    // --- Liquidity & Shares ---
    error PositionNotFound(PoolId poolId);
    error InsufficientAmount(uint256 requested, uint256 available);
    error InsufficientLiquidity(uint256 requested, uint256 available);
    error InsufficientShares(uint256 requested, uint256 available);
    error InsufficientBalance(uint256 requested, uint256 available);
    error InsufficientAllowance(uint256 requested, uint256 available);
    error LiquidityOverflow();
    error LiquidityUnderflow();
    error LiquidityLocked();
    error LiquidityRangeTooWide();
    error LiquidityRangeTooNarrow();
    error LiquidityAlreadyExists();
    error LiquidityDoesNotExist();
    error LiquidityNotAvailable();
    error DepositTooSmall();
    error InitialDepositTooSmall(uint256 minAmount, uint256 actualAmount);
    error WithdrawAmountTooSmall();

    // --- Policy ---
    error PolicyNotFound();
    error PolicyAlreadyExists();
    error PolicyInvalidState();
    error PolicyInvalidParameter();
    error PolicyInvalidOperation();
    error PolicyUnauthorized();
    error PolicyLocked();
    error PolicyExpired();
    error PolicyNotActive();
    error PolicyNotImplemented();
    error AllocationSumError(uint256 polShare, uint256 expected);

    // --- Hooks ---
    error HookNotFound();
    error HookAlreadyExists();
    error HookInvalidState();
    error HookInvalidParameter();
    error HookInvalidOperation();
    error HookUnauthorized();
    error HookLocked();
    error HookExpired();
    error HookNotActive();
    error HookNotImplemented();
    error HookInvalidAddress(address hook);
    error HookOnlyInitialization();
    error HookOnlyModifyLiquidity();
    error HookOnlySwap();
    error HookOnlyDonate();
    error HookNotSet();

    // --- Token & ETH Transfers ---
    error TokenNotFound();
    error TokenAlreadyExists();
    error TokenInvalidState();
    error TokenInvalidParameter();
    error TokenInvalidOperation();
    error TokenUnauthorized();
    error TokenLocked();
    error TokenExpired();
    error TokenNotActive();
    error TokenNotImplemented();
    error TokenTransferFailed();
    error TokenApprovalFailed();
    error TokenEthNotAccepted();
    error TokenInsufficientEth(uint256 required, uint256 provided);
    error TokenEthTransferFailed(address to, uint256 amount);
    error NonzeroNativeValue();
    error InsufficientETH(uint256 required, uint256 provided);
    error InsufficientContractBalance(uint256 required, uint256 available);
    error ETHTransferFailed();
    error TransferFailed();
    error TransferFromFailed();
    error InsufficientReserves();
    error TooLittleAmount0(uint256 min, uint256 actual);
    error TooLittleAmount1(uint256 min, uint256 actual);

    // --- Oracle ---
    error OracleOperationFailed(string operation, string reason);
    error OracleNotInitialized(PoolId poolId);
    error OracleAlreadyInitialized(PoolId poolId);
    error OracleUpdateFailed(PoolId poolId, string reason);
    error OraclePriceInvalid(uint160 sqrtPriceX96);
    error OracleTickInvalid(int24 tick);
    error OracleCapExceeded(PoolId poolId, int24 tick, int24 maxMove);

    // --- Fee Reinvestment ---
    error FeeExtractionFailed(string reason);
    error InvalidPolPercentage(uint256 provided, uint256 min, uint256 max);
    error PoolSpecificPolPercentageNotAllowed();
    error InvalidFeeDistribution(uint256 polShare, uint256 lpShare, uint256 expected);
    error PoolReinvestmentBlocked(PoolId poolId);
    error CollectionIntervalTooShort(uint256 provided, uint256 minimum);
    error CollectionIntervalTooLong(uint256 provided, uint256 maximum);
    error HookCallbackFailed(string reason);
    error FeesNotAvailable();
    error ExtractionAmountExceedsFees();
    error CacheStale(uint32 lastUpdate, uint32 currentTime, uint32 maxAge);
    error FeeReinvestNotAuthorized(address caller);
    error CannotWithdrawProtocolFees();
    error ReinvestmentAmountTooSmall(uint256 amount0, uint256 amount1);
    error ReinvestmentCooldownNotMet(uint64 lastReinvest, uint64 cooldown);
    error ReinvestmentThresholdNotMet(uint256 balance0, uint256 balance1, uint256 min0, uint256 min1);

    // --- Margin & Vault ---
    error WithdrawalWouldMakeVaultInsolvent();
    error NoDebtToRepay();
    error DepositFailed();
    error InsufficientCollateral(uint256 debt, uint256 collateral, uint256 threshold);
    error PoolUtilizationTooHigh();
    error InsufficientPhysicalShares(uint256 requested, uint256 available);
    error InterestModelNotSet();
    error MarginContractNotSet();
    error RepayAmountExceedsDebt(uint256 sharesToRepay, uint256 currentDebtShares);
    error DepositForRepayFailed();
    error InvalidAsset();
    error MaxPoolUtilizationExceeded(uint256 currentUtilization, uint256 maxUtilization);

    // --- Liquidation ---
    error NotLiquidatable(uint256 currentRatio, uint256 threshold);
    error LiquidationTooSmall(uint256 requestedAmount, uint256 minimumAmount);
    error InvalidLiquidationParams();

    // --- Invariants ---

    error InvalidSwapDelta();
    error ETHRefundFailed();
    error InvariantETHTransferFailed();
}

// ============================================================
// FILE: src/errors/PolicyManagerErrors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";

/**
 * @title Errors
 * @notice Custom errors used throughout the Spot system
 */
library PolicyManagerErrors {
    // === General errors ===
    error ZeroAddress();
    error UnauthorizedCaller(address caller);
    error ETHRefundFailed();
    error ParameterOutOfRange(uint256 value, uint256 min, uint256 max);
    error AllocationSumError(uint256 pol, uint256 fullRange, uint256 lp, uint256 expected);
    error InvalidFeeRange(uint24 value, uint24 min, uint24 max);
    error ZeroValue();

    // === Pool-specific errors ===
    error PoolNotFound(PoolId poolId);
    error PositionNotFound(PoolId poolId);
    error PoolPositionManagerMismatch();
    error InvalidHookAuthorization(address expected, address actual);

    // === Liquidity operations errors ===
    error TooLittleAmount0(uint256 minimum, uint256 actual);
    error TooLittleAmount1(uint256 minimum, uint256 actual);
    error InsufficientETH(uint256 required, uint256 provided);
    error InvalidPrice(uint160 price);
    error InvalidSwapDelta();

    // === Manual fee errors ===
    error ManualFeeNotSet(PoolId poolId);
    error ManualFeeAlreadySet(PoolId poolId);
}

// ============================================================
// FILE: src/interfaces/IPoolPolicyManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {PoolId} from "v4-core/src/types/PoolId.sol";

/// @title IPoolPolicyManager
/// @notice Consolidated interface for all policy types in the Spot system
/// @dev Combines fee, tick scaling, v-tier, and various other policies into a single interface
interface IPoolPolicyManager {
    /// === Events ===

    /// @notice Emitted when a pool's POL share is changed
    /// @param poolId The ID of the pool
    /// @param polSharePpm The new POL share in PPM
    event PoolPOLShareChanged(PoolId indexed poolId, uint256 polSharePpm);

    /// @notice Emitted when the daily budget is set
    /// @param newBudget The new daily budget
    event DailyBudgetSet(uint32 newBudget);

    /// @notice Emitted when a pool-specific daily budget is set
    /// @param poolId The pool ID
    /// @param newBudget The new daily budget
    event PoolDailyBudgetSet(PoolId indexed poolId, uint32 newBudget);

    /// @notice Emitted when base fee parameters are set
    /// @param poolId The ID of the pool
    /// @param stepPpm The step size in PPM
    /// @param updateIntervalSecs The update interval in seconds
    event BaseFeeParamsSet(PoolId indexed poolId, uint32 stepPpm, uint32 updateIntervalSecs);

    /// @notice Emitted when a manual fee is set for a pool
    /// @param poolId The ID of the pool
    /// @param manualFee The manual fee in PPM
    event ManualFeeSet(PoolId indexed poolId, uint24 manualFee);

    /// @notice Emitted when the minimum base fee is set for a pool
    /// @param poolId The ID of the pool
    /// @param minBaseFeePpm The new minimum base fee in PPM
    event MinBaseFeeSet(PoolId indexed poolId, uint24 minBaseFeePpm);

    /// @notice Emitted when the maximum base fee is set for a pool
    /// @param poolId The ID of the pool
    /// @param maxBaseFeePpm The new maximum base fee in PPM
    event MaxBaseFeeSet(PoolId indexed poolId, uint24 maxBaseFeePpm);

    /// @notice Emitted when the cap budget decay window is set for a pool
    /// @param poolId The ID of the pool
    /// @param decayWindow The new decay window in seconds
    event CapBudgetDecayWindowSet(PoolId indexed poolId, uint32 decayWindow);

    /// @notice Emitted when the surge decay period is set for a pool
    /// @param poolId The ID of the pool
    /// @param decayPeriod The new decay period in seconds
    event SurgeDecayPeriodSet(PoolId indexed poolId, uint32 decayPeriod);

    /// @notice Emitted when the surge fee multiplier is set for a pool
    /// @param poolId The ID of the pool
    /// @param multiplier The new multiplier in PPM
    event SurgeFeeMultiplierSet(PoolId indexed poolId, uint24 multiplier);

    /// @notice Emitted when the global decay window is set
    /// @param decayWindow The new decay window in seconds
    event GlobalDecayWindowSet(uint32 decayWindow);

    /// @notice Emitted when the base fee factor is set for a pool
    /// @param poolId The pool ID
    /// @param factor The new base fee factor
    event BaseFeeFactorSet(PoolId indexed poolId, uint32 factor);

    /// @notice Emitted when the minimum cap is set for a pool
    event MinCapSet(PoolId indexed poolId, uint24 minCap);

    /// @notice Emitted when the maximum cap is set for a pool
    event MaxCapSet(PoolId indexed poolId, uint24 maxCap);

    /// @notice Emitted when a pool's default max ticks per block is set
    event DefaultMaxTicksPerBlockSet(PoolId indexed poolId, uint24 defaultMaxTicks);

    /// @notice Emitted when the global default base fee factor is set
    event DefaultBaseFeeFactorSet(uint32 defaultFactor);

    /// @notice Emitted when the perSwap vs perBlock setting is changed for a pool
    event PerSwapModeSet(PoolId indexed poolId, bool perSwap);

    /// @notice Emitted when the global default perSwap vs perBlock mode is set
    event DefaultPerSwapModeSet(bool perSwap);

    /// === Fee Configuration Functions ===

    /// @notice Sets the POL share percentage for a specific pool
    /// @param poolId The pool ID
    /// @param polSharePpm The POL share in PPM (parts per million)
    function setPoolPOLShare(PoolId poolId, uint256 polSharePpm) external;

    /// @notice Gets the POL share percentage for a specific pool
    /// @param poolId The pool ID to get the POL share for
    /// @return The POL share in PPM (parts per million)
    function getPoolPOLShare(PoolId poolId) external view returns (uint256);

    /// === Manual Fee Functions ===

    /// @notice Gets the manual fee for a pool, if set
    /// @param poolId The pool ID to get the manual fee for
    /// @return manualFee The manual fee in PPM, 0 if not set
    /// @return isSet Whether a manual fee is set for this pool
    function getManualFee(PoolId poolId) external view returns (uint24 manualFee, bool isSet);

    /// @notice Sets a manual fee for a pool, overriding the dynamic fee calculation
    /// @param poolId The pool ID
    /// @param manualFee The manual fee in PPM
    function setManualFee(PoolId poolId, uint24 manualFee) external;

    /// @notice Clears a manual fee for a pool, reverting to dynamic fee calculation
    /// @param poolId The pool ID
    function clearManualFee(PoolId poolId) external;

    /// === Dynamic Fee Configuration Functions ===

    /// @notice Returns the surge decay period in seconds for the given pool
    /// @param poolId The pool ID
    /// @return Surge decay period in seconds
    function getSurgeDecayPeriodSeconds(PoolId poolId) external view returns (uint32);

    /// @notice Gets the default/global/fallback daily budget for CAP events
    /// @return The default daily budget in PPM
    function getDefaultDailyBudgetPpm() external view returns (uint32);

    /// @notice Returns the daily budget for CAP events in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Daily budget in PPM
    function getDailyBudgetPpm(PoolId poolId) external view returns (uint32);

    /// @notice Returns the budget decay window in seconds for the given pool
    /// @param poolId The pool ID
    /// @return Budget decay window in seconds
    function getCapBudgetDecayWindow(PoolId poolId) external view returns (uint32);

    /// @notice Returns the minimum base fee in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Minimum base fee in PPM
    function getMinBaseFee(PoolId poolId) external view returns (uint24);

    /// @notice Returns the maximum base fee in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Maximum base fee in PPM
    function getMaxBaseFee(PoolId poolId) external view returns (uint24);

    /// @notice Returns the surge fee multiplier in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Surge fee multiplier in PPM
    function getSurgeFeeMultiplierPpm(PoolId poolId) external view returns (uint24);

    /// @notice Returns the default maximum ticks per block for a pool
    /// @param poolId The pool ID
    /// @return Default maximum ticks per block
    function getDefaultMaxTicksPerBlock(PoolId poolId) external view returns (uint24);

    /// @notice Returns the base fee step size in PPM for the given pool
    /// @param poolId The pool ID
    /// @return Base fee step size in PPM
    function getBaseFeeStepPpm(PoolId poolId) external view returns (uint32);

    /// @notice Returns the base fee update interval in seconds for the given pool
    /// @param poolId The pool ID
    /// @return Base fee update interval in seconds
    function getBaseFeeUpdateIntervalSeconds(PoolId poolId) external view returns (uint32);

    /// @notice Gets the base fee factor for converting oracle ticks to fee PPM
    /// @param poolId The pool ID
    function getBaseFeeFactor(PoolId poolId) external view returns (uint32);

    /// @notice Gets the minimum cap (in ticks) for the given pool
    /// @param poolId The pool ID
    /// @return Minimum cap in ticks
    function getMinCap(PoolId poolId) external view returns (uint24);

    /// @notice Gets the maximum cap (in ticks) for the given pool
    /// @param poolId The pool ID
    /// @return Maximum cap in ticks
    function getMaxCap(PoolId poolId) external view returns (uint24);

    /// === Dynamic Fee Setter Functions ===

    /// @notice Sets the cap budget decay window for a pool
    /// @param poolId The pool ID
    /// @param decayWindow The decay window in seconds
    function setCapBudgetDecayWindow(PoolId poolId, uint32 decayWindow) external;

    /// @notice Sets the minimum base fee for a pool
    /// @param poolId The pool ID
    /// @param minBaseFee The minimum base fee in PPM
    function setMinBaseFee(PoolId poolId, uint24 minBaseFee) external;

    /// @notice Sets the maximum base fee for a pool
    /// @param poolId The pool ID
    /// @param maxBaseFee The maximum base fee in PPM
    function setMaxBaseFee(PoolId poolId, uint24 maxBaseFee) external;

    /// @notice Sets the surge decay period in seconds for a pool
    /// @param poolId The pool ID
    /// @param surgeDecaySeconds The surge decay period in seconds
    function setSurgeDecayPeriodSeconds(PoolId poolId, uint32 surgeDecaySeconds) external;

    /// @notice Sets the surge fee multiplier for a pool
    /// @param poolId The pool ID
    /// @param multiplier The surge fee multiplier in PPM
    function setSurgeFeeMultiplierPpm(PoolId poolId, uint24 multiplier) external;

    /// @notice Sets base fee parameters for a pool
    /// @param poolId The pool ID
    /// @param stepPpm The step size in PPM
    /// @param updateIntervalSecs The update interval in seconds
    function setBaseFeeParams(PoolId poolId, uint32 stepPpm, uint32 updateIntervalSecs) external;

    /// @notice Sets the daily budget in PPM
    /// @param ppm The daily budget in PPM
    function setDailyBudgetPpm(uint32 ppm) external;

    /// @notice Sets the daily budget for CAP events for a specific pool
    /// @param poolId The pool ID
    /// @param newBudget The new daily budget in PPM (0 means use default)
    function setPoolDailyBudgetPpm(PoolId poolId, uint32 newBudget) external;

    /// @notice Sets the decay window in seconds
    /// @param secs The decay window in seconds
    function setDecayWindow(uint32 secs) external;

    /// @notice Sets the base fee factor for a specific pool
    /// @param poolId The pool ID
    /// @param factor The new base fee factor (1 tick = X PPM)
    function setBaseFeeFactor(PoolId poolId, uint32 factor) external;

    /// @notice Gets whether a pool uses perSwap (true) or perBlock (false) mode for tick movement comparison
    /// @param poolId The pool ID
    /// @return True if perSwap mode is enabled, false if perBlock mode is enabled
    function getPerSwapMode(PoolId poolId) external view returns (bool);

    /// @notice Sets whether a pool uses perSwap (true) or perBlock (false) mode for tick movement comparison
    /// @param poolId The pool ID
    /// @param perSwap True for perSwap mode, false for perBlock mode
    function setPerSwapMode(PoolId poolId, bool perSwap) external;
}

// ============================================================
// FILE: src/libraries/PrecisionConstants.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title PrecisionConstants
/// @notice Centralized library for precision-related constants used throughout the protocol
/// @dev This ensures consistency in scaling factors across all contracts
library PrecisionConstants {
    /// @notice Standard high-precision scaling factor (10^18)
    /// @dev Used for interest rates, LTV ratios, and other high-precision calculations
    uint256 internal constant PRECISION = 1e18;

    /// @notice Parts-per-million scaling factor (10^6)
    /// @dev Used for fee percentages, allocation shares, and other percentage-based calculations
    uint256 internal constant PPM_SCALE = 1e6;
}

// ============================================================
// FILE: src/PoolPolicyManager.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

// - - - Solmate Deps - - -

import {Owned} from "solmate/src/auth/Owned.sol";

// - - - V4 Deps - - -

import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";

// - - - Project Deps - - -

import {PrecisionConstants} from "./libraries/PrecisionConstants.sol";
import {Errors} from "./errors/Errors.sol";
import {PolicyManagerErrors} from "./errors/PolicyManagerErrors.sol";
import {IPoolPolicyManager} from "./interfaces/IPoolPolicyManager.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title PoolPolicyManager
/// @notice Consolidated policy manager implementing the IPoolPolicyManager interface
/// @dev Handles all policy functionality for pool configuration and fee management
contract PoolPolicyManager is IPoolPolicyManager, Owned {
    // === Constants ===

    uint24 private constant MIN_TRADING_FEE = 10; // 0.001%
    uint24 private constant MAX_TRADING_FEE = 100_000; // 10%

    uint32 private constant DEFAULT_CAP_BUDGET_DECAY_WINDOW = 15_552_000; // 180 days
    uint32 private constant DEFAULT_SURGE_DECAY_PERIOD_SECONDS = 21600; // 6 hours
    uint24 private constant DEFAULT_SURGE_FEE_MULTIPLIER_PPM = 3_000_000; // 300%
    uint24 private constant MAX_SURGE_FEE_MULTIPLIER_PPM = 10_000_000;



    /// @notice Maximum step for base fee updates (10% per step)
    uint32 private constant MAX_STEP_PPM = 100_000;

    /// @notice Default base fee step size (2% per step)
    uint32 private constant DEFAULT_BASE_FEE_STEP_PPM = 20_000;

    /// @notice Default base fee update interval (1 day)
    uint32 private constant DEFAULT_BASE_FEE_UPDATE_INTERVAL_SECS = 1 days;

    /// @notice Default base fee factor (1 tick = 28 PPM)
    uint32 private constant DEFAULT_BASE_FEE_FACTOR_PPM = 28;

    /// @notice Default minimum cap (in ticks) for oracle bounds
    uint24 private constant DEFAULT_MIN_CAP = 1;

    /// @notice Default maximum cap (in ticks) for oracle bounds
    uint24 private constant DEFAULT_MAX_CAP = 400;

    /// @notice Default pool POL share (10%)
    uint256 private constant DEFAULT_POOL_POL_SHARE_PPM = 100_000; // 10% = 100,000 PPM

    /// @notice Maximum base fee factor to prevent overflow (1 tick = 1000 PPM max)
    uint32 private constant MAX_BASE_FEE_FACTOR_PPM = 1000;

    // === Dynamic Fee Configuration Struct ===

    struct DynamicFeeConfig {
        uint32 capBudgetDecayWindow;
        uint24 minBaseFeePpm;
        uint24 maxBaseFeePpm;
        uint32 surgeDecayPeriodSeconds;
        uint24 surgeFeeMultiplierPpm;
    }

    struct BaseFeeParams {
        uint32 stepPpm;
        uint32 updateIntervalSecs;
    }

    // === State Variables ===

    /// @notice Manual fee override per pool (if non-zero)
    mapping(PoolId => uint24) private _poolManualFee;

    /// @notice Flag to indicate if a manual fee is set for a pool
    mapping(PoolId => bool) private _hasPoolManualFee;

    /// @notice Pool-specific POL share percentages
    mapping(PoolId => uint256) private _poolPolSharePpm;

    /// @notice Pool-specific dynamic fee configurations
    mapping(PoolId => DynamicFeeConfig) private _poolDynamicFeeConfig;

    /// @notice Base fee parameters per pool
    mapping(PoolId => BaseFeeParams) private _poolBaseFeeParams;

    /// @notice Default daily budget for CAP events (ppm/day) 1e6 is 1 per day, 1e7 is 10 per day
    uint32 private _defaultCapBudgetDailyPpm;

    /// @notice Pool-specific daily budget for CAP events (0 means use default)
    mapping(PoolId => uint32) private _poolCapBudgetDailyPpm;

    /// @notice Linear decay half-life for the budget counter (seconds)
    uint32 private _capBudgetDecayWindow;

    /// @notice Pool-specific base fee factor for converting oracle ticks to PPM
    mapping(PoolId => uint32) private _poolBaseFeeFactor;

    /// @notice Pool-specific minimum cap (in ticks) for oracle bounds
    mapping(PoolId => uint24) private _poolMinCap;

    /// @notice Pool-specific maximum cap (in ticks) for oracle bounds  
    mapping(PoolId => uint24) private _poolMaxCap;

    /// @notice Pool-specific default max ticks per block
    mapping(PoolId => uint24) private _poolDefaultMaxTicksPerBlock;

    /// @notice Pool-specific perSwap vs perBlock mode setting (true = perSwap, false = perBlock)
    mapping(PoolId => bool) private _poolPerSwapMode;

    /// @notice Global default for perSwap vs perBlock mode (true = perSwap, false = perBlock)
    bool private _defaultPerSwapMode;

    /// @notice Global default base fee factor (can be updated by owner)
    uint32 private _defaultBaseFeeFactor;

    /// @notice Address of an authorized hook allowed to perform certain one-time initializations
    address public authorizedHook;

    /// @notice Tracks whether base fee bounds have been initialized for each pool
    mapping(PoolId => bool) private _baseFeeBoundsInitialized;

    /// @notice Constructor initializes the policy manager with default values
    /// @param _governance The owner of the contract
    /// @param _dailyBudget Initial daily budget
    constructor(address _governance, uint256 _dailyBudget) Owned(_governance) {
        if (_governance == address(0)) revert Errors.ZeroAddress();
        // Initialize global parameters
        _defaultCapBudgetDailyPpm = _dailyBudget == 0 ? 1_000_000 : uint32(_dailyBudget);
        _capBudgetDecayWindow = DEFAULT_CAP_BUDGET_DECAY_WINDOW; // 180 days
        _defaultBaseFeeFactor = DEFAULT_BASE_FEE_FACTOR_PPM; // Initialize with constant
        _defaultPerSwapMode = true; // Default to perSwap mode
    }

    // === Fee Allocation Functions ===

    /// @inheritdoc IPoolPolicyManager
    function setPoolPOLShare(PoolId poolId, uint256 newPolSharePpm) external override onlyOwner {
        // Validate POL share is within valid range (0-100%)
        if (newPolSharePpm > PrecisionConstants.PPM_SCALE) {
            revert Errors.ParameterOutOfRange(newPolSharePpm, 0, PrecisionConstants.PPM_SCALE);
        }

        uint256 oldShare = _poolPolSharePpm[poolId];
        if (oldShare != newPolSharePpm) {
            _poolPolSharePpm[poolId] = newPolSharePpm;
            emit PoolPOLShareChanged(poolId, newPolSharePpm);
        }
    }

    /// @notice Sets the authorized hook address. Only callable by the owner.
    /// @param hook The address of the authorized hook
    function setAuthorizedHook(address hook) external onlyOwner {
        if (hook == address(0)) revert Errors.ZeroAddress();
        authorizedHook = hook;
    }

    /// @inheritdoc IPoolPolicyManager
    function getPoolPOLShare(PoolId poolId) external view override returns (uint256 poolSpecificPolShare) {
        poolSpecificPolShare = _poolPolSharePpm[poolId];
    }

    // === Manual Fee Override Functions ===

    /// @inheritdoc IPoolPolicyManager
    function getManualFee(PoolId poolId) external view override returns (uint24 manualFee, bool isSet) {
        return (_poolManualFee[poolId], _hasPoolManualFee[poolId]);
    }

    /// @inheritdoc IPoolPolicyManager
    function setManualFee(PoolId poolId, uint24 manualFee) external override onlyOwner {
        if (manualFee < MIN_TRADING_FEE || manualFee > MAX_TRADING_FEE) {
            revert Errors.ParameterOutOfRange(manualFee, MIN_TRADING_FEE, MAX_TRADING_FEE);
        }

        _poolManualFee[poolId] = manualFee;
        _hasPoolManualFee[poolId] = true;

        emit ManualFeeSet(poolId, manualFee);
    }

    /// @inheritdoc IPoolPolicyManager
    function clearManualFee(PoolId poolId) external override onlyOwner {
        if (_hasPoolManualFee[poolId]) {
            _poolManualFee[poolId] = 0;
            _hasPoolManualFee[poolId] = false;

            emit ManualFeeSet(poolId, 0);
        }
    }

    // === Dynamic Fee Configuration Getters ===

    /// @inheritdoc IPoolPolicyManager
    function getMinBaseFee(PoolId poolId) external view override returns (uint24) {
        if (_poolDynamicFeeConfig[poolId].minBaseFeePpm != 0) {
            return _poolDynamicFeeConfig[poolId].minBaseFeePpm;
        }
        return MIN_TRADING_FEE;
    }

    /// @inheritdoc IPoolPolicyManager
    function getMaxBaseFee(PoolId poolId) external view override returns (uint24) {
        if (_poolDynamicFeeConfig[poolId].maxBaseFeePpm != 0) {
            return _poolDynamicFeeConfig[poolId].maxBaseFeePpm;
        }
        return MAX_TRADING_FEE;
    }

    /// @inheritdoc IPoolPolicyManager
    function getSurgeDecayPeriodSeconds(PoolId poolId) external view override returns (uint32) {
        if (_poolDynamicFeeConfig[poolId].surgeDecayPeriodSeconds != 0) {
            return _poolDynamicFeeConfig[poolId].surgeDecayPeriodSeconds;
        }
        return DEFAULT_SURGE_DECAY_PERIOD_SECONDS;
    }

    /// @inheritdoc IPoolPolicyManager
    function getSurgeFeeMultiplierPpm(PoolId poolId) external view override returns (uint24) {
        if (_poolDynamicFeeConfig[poolId].surgeFeeMultiplierPpm != 0) {
            return _poolDynamicFeeConfig[poolId].surgeFeeMultiplierPpm;
        }
        return DEFAULT_SURGE_FEE_MULTIPLIER_PPM;
    }

    /// @inheritdoc IPoolPolicyManager
    function getDefaultDailyBudgetPpm() external view override returns (uint32) {
        return _defaultCapBudgetDailyPpm;
    }

    /// @inheritdoc IPoolPolicyManager
    function getDailyBudgetPpm(PoolId poolId) external view override returns (uint32) {
        uint32 poolBudget = _poolCapBudgetDailyPpm[poolId];
        return poolBudget == 0 ? _defaultCapBudgetDailyPpm : poolBudget;
    }

    /// @inheritdoc IPoolPolicyManager
    function getCapBudgetDecayWindow(PoolId poolId) external view override returns (uint32) {
        if (_poolDynamicFeeConfig[poolId].capBudgetDecayWindow != 0) {
            return _poolDynamicFeeConfig[poolId].capBudgetDecayWindow;
        }
        return _capBudgetDecayWindow;
    }

    /// @inheritdoc IPoolPolicyManager
    function getDefaultMaxTicksPerBlock(PoolId poolId) external view override returns (uint24) {
        uint24 poolDefault = _poolDefaultMaxTicksPerBlock[poolId];
        // poolDefault is guaranteed to be non-zero after initialization
        // If somehow called before initialization, this would revert with zero value
        if (poolDefault == 0) revert PolicyManagerErrors.ZeroValue();
        return poolDefault;
    }

    /// @inheritdoc IPoolPolicyManager
    function getBaseFeeStepPpm(PoolId poolId) public view override returns (uint32) {
        uint32 val = _poolBaseFeeParams[poolId].stepPpm;
        return val == 0 ? DEFAULT_BASE_FEE_STEP_PPM : val;
    }

    /// @inheritdoc IPoolPolicyManager
    function getBaseFeeUpdateIntervalSeconds(PoolId poolId) public view override returns (uint32) {
        uint32 val = _poolBaseFeeParams[poolId].updateIntervalSecs;
        return val == 0 ? DEFAULT_BASE_FEE_UPDATE_INTERVAL_SECS : val;
    }

    /// @inheritdoc IPoolPolicyManager
    function getBaseFeeFactor(PoolId poolId) external view override returns (uint32) {
        uint32 factor = _poolBaseFeeFactor[poolId];
        return factor == 0 ? _defaultBaseFeeFactor : factor;
    }

    /// @inheritdoc IPoolPolicyManager
    function getMinCap(PoolId poolId) external view override returns (uint24) {
        uint24 minCap = _poolMinCap[poolId];
        return minCap == 0 ? DEFAULT_MIN_CAP : minCap; // Default to 1 ticks if not set
    }

    /// @inheritdoc IPoolPolicyManager
    function getMaxCap(PoolId poolId) external view override returns (uint24) {
        uint24 maxCap = _poolMaxCap[poolId];
        return maxCap == 0 ? DEFAULT_MAX_CAP : maxCap; // Default to 400 ticks if not set
    }

    // === Dynamic Fee Configuration Setters ===

    /// @inheritdoc IPoolPolicyManager
    function setMinBaseFee(PoolId poolId, uint24 newMinFee) external override onlyOwner {
        uint24 maxFee = this.getMaxBaseFee(poolId);
        if (newMinFee < MIN_TRADING_FEE || newMinFee > maxFee) {
            revert PolicyManagerErrors.InvalidFeeRange(newMinFee, MIN_TRADING_FEE, maxFee);
        }
        _poolDynamicFeeConfig[poolId].minBaseFeePpm = newMinFee;
        emit MinBaseFeeSet(poolId, newMinFee);
    }

    /// @inheritdoc IPoolPolicyManager
    function setMaxBaseFee(PoolId poolId, uint24 newMaxFee) external override onlyOwner {
        uint24 minFee = this.getMinBaseFee(poolId);
        if (newMaxFee < minFee || newMaxFee > MAX_TRADING_FEE) {
            revert PolicyManagerErrors.InvalidFeeRange(newMaxFee, minFee, MAX_TRADING_FEE);
        }
        _poolDynamicFeeConfig[poolId].maxBaseFeePpm = newMaxFee;
        emit MaxBaseFeeSet(poolId, newMaxFee);
    }

    /// @notice One-time initialization by owner or authorized hook to set base fee bounds from tick spacing
    /// @param poolKey The pool key containing tick spacing
    function initialize(PoolKey calldata poolKey) external {
        if (msg.sender != owner && msg.sender != authorizedHook) revert Errors.UnauthorizedCaller(msg.sender);

        PoolId poolId = poolKey.toId();

        // If already initialized, return without changing state (truly one-time)
        if (_baseFeeBoundsInitialized[poolId]) {
            return;
        }

        // Calculate normal fee from tick spacing: feePpm = clamp(tickSpacing * 50, 100, 10_000)
        uint24 normalFeePpm;
        if (poolKey.tickSpacing <= 0) {
            normalFeePpm = 100;
        } else {
            uint256 calculatedFeePpm = uint256(uint24(poolKey.tickSpacing)) * 50;
            if (calculatedFeePpm < 100) calculatedFeePpm = 100;
            if (calculatedFeePpm > 10_000) calculatedFeePpm = 10_000;
            normalFeePpm = uint24(calculatedFeePpm);
        }

        uint24 startingMaxTicksPerBlock = uint24(normalFeePpm / this.getBaseFeeFactor(poolId));
        if (startingMaxTicksPerBlock == 0) startingMaxTicksPerBlock = 1;
        _poolDefaultMaxTicksPerBlock[poolId] = startingMaxTicksPerBlock;

        uint24 minBaseFee = 10; // .001%
        uint24 maxBaseFee = 30_000; // 3%
        
        _poolDynamicFeeConfig[poolId].minBaseFeePpm = minBaseFee;
        emit MinBaseFeeSet(poolId, minBaseFee);

        _poolDynamicFeeConfig[poolId].maxBaseFeePpm = maxBaseFee;
        emit MaxBaseFeeSet(poolId, maxBaseFee);

        // Initialize perSwap mode with current global default
        _poolPerSwapMode[poolId] = _defaultPerSwapMode;

        // Initialize default POL share (10%)
        _poolPolSharePpm[poolId] = DEFAULT_POOL_POL_SHARE_PPM;
        emit PoolPOLShareChanged(poolId, DEFAULT_POOL_POL_SHARE_PPM);

        _baseFeeBoundsInitialized[poolId] = true;

    }

    /// @inheritdoc IPoolPolicyManager
    function setCapBudgetDecayWindow(PoolId poolId, uint32 newCapBudgetDecayWindow) external override onlyOwner {
        if (newCapBudgetDecayWindow == 0 || newCapBudgetDecayWindow > type(uint32).max) {
            revert Errors.ParameterOutOfRange(newCapBudgetDecayWindow, 1, type(uint32).max);
        }

        _poolDynamicFeeConfig[poolId].capBudgetDecayWindow = newCapBudgetDecayWindow;
        emit CapBudgetDecayWindowSet(poolId, newCapBudgetDecayWindow);
    }

    /// @inheritdoc IPoolPolicyManager
    function setSurgeDecayPeriodSeconds(PoolId poolId, uint32 newSurgeDecayPeriodSeconds) external override onlyOwner {
        if (newSurgeDecayPeriodSeconds < 60 || newSurgeDecayPeriodSeconds > 1 days) {
            revert Errors.ParameterOutOfRange(newSurgeDecayPeriodSeconds, 60, 1 days);
        }

        _poolDynamicFeeConfig[poolId].surgeDecayPeriodSeconds = newSurgeDecayPeriodSeconds;
        emit SurgeDecayPeriodSet(poolId, newSurgeDecayPeriodSeconds);
    }

    /// @inheritdoc IPoolPolicyManager
    function setSurgeFeeMultiplierPpm(PoolId poolId, uint24 multiplier) external override onlyOwner {
        if (multiplier == 0 || multiplier > MAX_SURGE_FEE_MULTIPLIER_PPM) revert Errors.ParameterOutOfRange(multiplier, 1, MAX_SURGE_FEE_MULTIPLIER_PPM);

    _poolDynamicFeeConfig[poolId].surgeFeeMultiplierPpm = multiplier;
        emit SurgeFeeMultiplierSet(poolId, multiplier);
    }

    /// @inheritdoc IPoolPolicyManager
    function setBaseFeeParams(PoolId poolId, uint32 stepPpm, uint32 updateIntervalSecs) external override onlyOwner {
        if (stepPpm > MAX_STEP_PPM) revert Errors.ParameterOutOfRange(stepPpm, 0, MAX_STEP_PPM);
        if (updateIntervalSecs == 0) {
            revert Errors.ParameterOutOfRange(updateIntervalSecs, 1, type(uint32).max);
        }

        _poolBaseFeeParams[poolId] = BaseFeeParams({stepPpm: stepPpm, updateIntervalSecs: updateIntervalSecs});

        emit BaseFeeParamsSet(poolId, stepPpm, updateIntervalSecs);
    }

    /// @inheritdoc IPoolPolicyManager
    function setDailyBudgetPpm(uint32 newCapBudgetDailyPpm) external override onlyOwner {
        if (newCapBudgetDailyPpm == 0 || newCapBudgetDailyPpm > 10 * PrecisionConstants.PPM_SCALE) {
            revert Errors.ParameterOutOfRange(newCapBudgetDailyPpm, 1, 10 * PrecisionConstants.PPM_SCALE);
        }
        _defaultCapBudgetDailyPpm = newCapBudgetDailyPpm;
        emit DailyBudgetSet(newCapBudgetDailyPpm);
    }

    /// @inheritdoc IPoolPolicyManager
    function setPoolDailyBudgetPpm(PoolId poolId, uint32 newBudget) external override onlyOwner {
        // Validate: 0 means "use default", or 1 to 10*PPM_SCALE
        if (newBudget > 10 * PrecisionConstants.PPM_SCALE) {
            revert Errors.ParameterOutOfRange(newBudget, 1, 10 * PrecisionConstants.PPM_SCALE);
        }

        _poolCapBudgetDailyPpm[poolId] = newBudget;
        emit PoolDailyBudgetSet(poolId, newBudget);
    }

    /// @inheritdoc IPoolPolicyManager
    function setDecayWindow(uint32 newCapBudgetDecayWindow) external override onlyOwner {
        if (newCapBudgetDecayWindow == 0) revert PolicyManagerErrors.ZeroValue();
        _capBudgetDecayWindow = newCapBudgetDecayWindow;
        emit GlobalDecayWindowSet(newCapBudgetDecayWindow);
    }

    /// @inheritdoc IPoolPolicyManager
    function setBaseFeeFactor(PoolId poolId, uint32 factor) external override onlyOwner {
        // Validate factor is reasonable (0 means use default)
        if (factor != 0 && factor > MAX_BASE_FEE_FACTOR_PPM) {
            revert Errors.ParameterOutOfRange(factor, 1, MAX_BASE_FEE_FACTOR_PPM);
        }

        _poolBaseFeeFactor[poolId] = factor;
        emit BaseFeeFactorSet(poolId, factor);
    }

    /// @notice Sets the minimum cap (in ticks) for oracle bounds
    /// @param poolId The pool ID
    /// @param minCap The minimum cap in ticks
    function setMinCap(PoolId poolId, uint24 minCap) external onlyOwner {
        if (minCap == 0) revert PolicyManagerErrors.ZeroValue();
        
        uint24 maxCap = this.getMaxCap(poolId);
        if (minCap > maxCap) {
            revert Errors.ParameterOutOfRange(minCap, 1, maxCap);
        }

        _poolMinCap[poolId] = minCap;
        emit MinCapSet(poolId, minCap);
    }

    /// @notice Sets the maximum cap (in ticks) for oracle bounds
    /// @param poolId The pool ID  
    /// @param maxCap The maximum cap in ticks
    function setMaxCap(PoolId poolId, uint24 maxCap) external onlyOwner {
        if (maxCap == 0) revert PolicyManagerErrors.ZeroValue();
        
        uint24 minCap = this.getMinCap(poolId);
        if (maxCap < minCap) {
            revert Errors.ParameterOutOfRange(maxCap, minCap, type(uint24).max);
        }

        _poolMaxCap[poolId] = maxCap;
        emit MaxCapSet(poolId, maxCap);
    }

    /// @notice Sets the default max ticks per block for a specific pool
    /// @param poolId The pool ID
    /// @param defaultMaxTicks The default max ticks per block
    function setDefaultMaxTicksPerBlock(PoolId poolId, uint24 defaultMaxTicks) external onlyOwner {
        if (defaultMaxTicks == 0) revert PolicyManagerErrors.ZeroValue();
        
        _poolDefaultMaxTicksPerBlock[poolId] = defaultMaxTicks;
        emit DefaultMaxTicksPerBlockSet(poolId, defaultMaxTicks);
    }

    /// @notice Gets the global default base fee factor
    /// @return The global default base fee factor
    function getDefaultBaseFeeFactor() external view returns (uint32) {
        return _defaultBaseFeeFactor;
    }

    /// @notice Sets the global default base fee factor
    /// @param factor The new default base fee factor
    function setDefaultBaseFeeFactor(uint32 factor) external onlyOwner {
        if (factor == 0 || factor > MAX_BASE_FEE_FACTOR_PPM) {
            revert Errors.ParameterOutOfRange(factor, 1, MAX_BASE_FEE_FACTOR_PPM);
        }
        
        _defaultBaseFeeFactor = factor;
        emit DefaultBaseFeeFactorSet(factor);
    }

    /// @inheritdoc IPoolPolicyManager
    function getPerSwapMode(PoolId poolId) external view override returns (bool) {
        // Return the stored value (which was set during initialization or explicitly changed)
        return _poolPerSwapMode[poolId];
    }

    /// @inheritdoc IPoolPolicyManager
    function setPerSwapMode(PoolId poolId, bool perSwap) external override onlyOwner {
        // Store the setting
        _poolPerSwapMode[poolId] = perSwap;
        emit PerSwapModeSet(poolId, perSwap);
    }

    /// @notice Gets the global default for perSwap vs perBlock mode
    /// @return True if the global default is perSwap mode, false if perBlock mode
    function getDefaultPerSwapMode() external view returns (bool) {
        return _defaultPerSwapMode;
    }

    /// @notice Sets the global default for perSwap vs perBlock mode
    /// @param perSwap True for perSwap mode as default, false for perBlock mode as default
    function setDefaultPerSwapMode(bool perSwap) external onlyOwner {
        _defaultPerSwapMode = perSwap;
        emit DefaultPerSwapModeSet(perSwap);
    }
}
