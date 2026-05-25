// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { ERC20Upgradeable } from "@openzeppelin-contracts-upgradeable-5/token/ERC20/ERC20Upgradeable.sol";

import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";

/// @title Utils for the UniPool Pair
library UniPoolPairUtils {
    /**
     * @notice Constant representing the storage slot for the pair's main storage.
     * @dev Calculated as:
     *  `keccak256(abi.encode(uint256(keccak256("UniPoolPair.storage.main")) - 1)) & ~bytes32(uint256(0xff))`.
     */
    // forgefmt: disable-next-line
    bytes32 private constant STORAGE_MAIN = 0x437b3950e7479785ca551c4cb45c62a7_0cbd1a37f13845eeab0b7f480290cd00;

    /**
     * @notice Constant representing the storage slot for the ERC20 LP tokens storage.
     * @dev Calculates as:
     *  `keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20")) - 1)) & ~bytes32(uint256(0xff))`.
     */
    // forgefmt: disable-next-line
    bytes32 internal constant STORAGE_ERC20 = 0x52c63247e1f47db19d5ce0460030c497_f067ca4cebf71ba98eeadabe20bace00;

    /**
     * @notice Gets the main storage pointer.
     * @return s_ The pointer to the main storage structure.
     */
    function _getMainStorage() internal pure returns (IUniPoolPair.Storage storage s_) {
        assembly ("memory-safe") {
            s_.slot := STORAGE_MAIN
        }
    }

    /**
     * @notice Converts a tick number into a corresponding index suitable for `LibBitmap`.
     * @dev This function shifts the range into positive and inverts it so that lower ticks correspond to higher
     * indices. This is because the bitmap implementation only allows to search from a high bound towards zero, but
     * we need to search from a low bound towards higher tick number values.
     * For example, tick -32768 maps to 65535. Tick 32767 maps to 0. Tick 0 maps to 32767.
     * @param tick The tick number.
     * @return index_ The corresponding bitmap index.
     */
    function calcBitmapIndex(int16 tick) internal pure returns (uint256 index_) {
        assembly ("memory-safe") {
            index_ := sub(0x7fff, tick) // equivalent to and(0xffff, not(add(tick, 0x8000))
        }
    }

    /**
     * @notice Converts a bitmap index to the corresponding tick number.
     * @dev This function is the inverse operation to {computeBitmapIndex}: it inverts the range and shifts back into
     * the original signed range.
     * Note that this function will return nonsense if the value of `bitmapIndex` exceeds `type(uint16).max`.
     * @param bitmapIndex The bitmap index to convert.
     * @return tick_ The corresponding tick numbers.
     */
    function calcTickFromIndex(uint256 bitmapIndex) internal pure returns (int16 tick_) {
        assembly ("memory-safe") {
            tick_ := sub(0x7fff, bitmapIndex) // equivalent to sub(not(bitmapIndex), 0x8000)
        }
    }

    /**
     * @notice Gets the storage pointer to the ERC20 LP tokens data.
     * @return s_ The storage pointer to the ERC20 LP tokens storage struct.
     */
    function _getERC20Storage() internal pure returns (ERC20Upgradeable.ERC20Storage storage s_) {
        assembly {
            s_.slot := STORAGE_ERC20
        }
    }
}
