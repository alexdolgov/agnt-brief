// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";

/**
 * @title Utils Library
 * @dev A library for utility functions related to CCIP messages.
 * It provides functions to convert bytes32 to address, encode and decode CCIP message data,
 * and parse gas limits from extra arguments.
 */
library Utils {
    error InvalidLength(uint256 length, uint256 expected);
    error InvalidBytes32Address(bytes32 b32);
    error InvalidExtraArgs(bytes extraArgs);
    error InvalidPtr();

    /**
     * @dev Converts a bytes32 value to an address.
     *
     * Requirements:
     *
     * - The bytes32 value must not have any bits set above the 160th bit.
     */
    function bytes32ToAddress(bytes32 b) internal pure returns (address) {
        if (b >> 160 != 0) revert InvalidBytes32Address(b);
        return address(uint160(uint256(b)));
    }

    /**
     * @dev Converts a bytes value to an address.
     *
     * Requirements:
     *
     * - The length of the bytes value must be 32.
     * - The bytes value must not have any bits set above the 160th bit.
     */
    function bytesToAddress(bytes calldata b) internal pure returns (address) {
        if (b.length != 32) revert InvalidLength(b.length, 32);
        return bytes32ToAddress(bytes32(b));
    }

    /**
     * @dev Encodes the sender, receiver, and extra data into a bytes array.
     *
     * The encoding format is as follows:
     * - [sender][receiver][ptr][length][extraData]
     */
    function encodeData(address sender, address receiver, bytes memory extraData)
        internal
        pure
        returns (bytes memory data)
    {
        // [sender][receiver][ptr][length][extraData]
        return abi.encode(sender, receiver, extraData);
    }

    /**
     * @dev Decodes the sender, receiver, and extra data from a bytes array.
     *
     * Requirements:
     *
     * - The data must be in the format [sender][receiver][ptr][length][extraData].
     */
    function decodeData(bytes calldata data)
        internal
        pure
        returns (address sender, address receiver, bytes calldata extraData)
    {
        // [sender][receiver][ptr][length][extraData]
        if (data.length < 128) revert InvalidLength(data.length, 128);
        if (uint256(bytes32(data[64:96])) != 0x60) revert InvalidPtr();

        uint256 length = uint256(bytes32(data[96:128]));
        return (bytes32ToAddress(bytes32(data[0:32])), bytes32ToAddress(bytes32(data[32:64])), data[128:128 + length]);
    }

    /**
     * @dev Parses the gas limit from the extra arguments of a CCIP message.
     *
     * Requirements:
     *
     * - The extra arguments must be in the format defined by the CCIP protocol.
     */
    function parseGasLimit(bytes calldata extraArgs) internal pure returns (uint256 gasLimit) {
        bytes4 selector = bytes4(extraArgs);
        if (selector == Client.EVM_EXTRA_ARGS_V1_TAG) {
            if (extraArgs.length != 36) revert InvalidLength(extraArgs.length, 36);
            gasLimit = uint256(bytes32(extraArgs[4:36]));
        } else if (selector == Client.GENERIC_EXTRA_ARGS_V2_TAG) {
            if (extraArgs.length != 68) revert InvalidLength(extraArgs.length, 68);
            gasLimit = uint256(bytes32(extraArgs[4:36]));
        } else {
            revert InvalidExtraArgs(extraArgs);
        }
    }
}
