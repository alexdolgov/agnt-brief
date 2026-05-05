// ============================================================
// FILE: lib/royco/lib/clones-with-immutable-args/src/Clone.sol
// ============================================================

// SPDX-License-Identifier: BSD
pragma solidity ^0.8.4;

/// @title Clone
/// @author zefram.eth
/// @notice Provides helper functions for reading immutable args from calldata
contract Clone {
    /// @notice Reads an immutable arg with type address
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgAddress(uint256 argOffset)
        internal
        pure
        returns (address arg)
    {
        uint256 offset = _getImmutableArgsOffset();
        assembly {
            arg := shr(0x60, calldataload(add(offset, argOffset)))
        }
    }

    /// @notice Reads an immutable arg with type uint256
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgUint256(uint256 argOffset)
        internal
        pure
        returns (uint256 arg)
    {
        uint256 offset = _getImmutableArgsOffset();
        // solhint-disable-next-line no-inline-assembly
        assembly {
            arg := calldataload(add(offset, argOffset))
        }
    }

    /// @notice Reads an immutable arg with type uint64
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgUint64(uint256 argOffset)
        internal
        pure
        returns (uint64 arg)
    {
        uint256 offset = _getImmutableArgsOffset();
        // solhint-disable-next-line no-inline-assembly
        assembly {
            arg := shr(0xc0, calldataload(add(offset, argOffset)))
        }
    }

    /// @notice Reads an immutable arg with type uint8
    /// @param argOffset The offset of the arg in the packed data
    /// @return arg The arg value
    function _getArgUint8(uint256 argOffset) internal pure returns (uint8 arg) {
        uint256 offset = _getImmutableArgsOffset();
        // solhint-disable-next-line no-inline-assembly
        assembly {
            arg := shr(0xf8, calldataload(add(offset, argOffset)))
        }
    }

    /// @return offset The offset of the packed immutable args in calldata
    function _getImmutableArgsOffset() internal pure returns (uint256 offset) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            offset := sub(
                calldatasize(),
                add(shr(240, calldataload(sub(calldatasize(), 2))), 2)
            )
        }
    }
}

// ============================================================
// FILE: lib/royco/lib/enso-weiroll/contracts/CommandBuilder.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.16;

library CommandBuilder {
    uint256 constant IDX_VARIABLE_LENGTH = 0x80;
    uint256 constant IDX_VALUE_MASK = 0x7f;
    uint256 constant IDX_END_OF_ARGS = 0xff;
    uint256 constant IDX_USE_STATE = 0xfe;
    uint256 constant IDX_ARRAY_START = 0xfd;
    uint256 constant IDX_TUPLE_START = 0xfc;
    uint256 constant IDX_DYNAMIC_END = 0xfb;

    function buildInputs(
        bytes[] memory state,
        bytes4 selector,
        bytes32 indices,
        uint256 indicesLength
    ) internal view returns (bytes memory ret) {
        uint256 idx; // The current command index
        uint256 offsetIdx; // The index of the current free offset

        uint256 count; // Number of bytes in whole ABI encoded message
        uint256 free; // Pointer to first free byte in tail part of message
        uint256[] memory dynamicLengths = new uint256[](10); // Optionally store the length of all dynamic types (a command cannot fit more than 10 dynamic types)

        bytes memory stateData; // Optionally encode the current state if the call requires it

        // Determine the length of the encoded data
        for (uint256 i; i < indicesLength; ) {
            idx = uint8(indices[i]);
            if (idx == IDX_END_OF_ARGS) {
                indicesLength = i;
                break;
            }
            if (idx & IDX_VARIABLE_LENGTH != 0) {
                if (idx == IDX_USE_STATE) {
                    if (stateData.length == 0) {
                        stateData = abi.encode(state);
                    }
                    unchecked {
                        count += stateData.length;
                    }
                } else {
                    (dynamicLengths, offsetIdx, count, i) = setupDynamicType(
                        state,
                        indices,
                        dynamicLengths,
                        idx,
                        offsetIdx,
                        count,
                        i
                    );
                }
            } else {
                count = setupStaticVariable(state, count, idx);
            }
            unchecked {
                free += 32;
                ++i;
            }
        }

        // Encode it
        ret = new bytes(count + 4);
        assembly {
            mstore(add(ret, 32), selector)
        }
        offsetIdx = 0;
        // Use count to track current memory slot
        assembly {
            count := add(ret, 36)
        }
        for (uint256 i; i < indicesLength; ) {
            idx = uint8(indices[i]);
            if (idx & IDX_VARIABLE_LENGTH != 0) {
                if (idx == IDX_USE_STATE) {
                    assembly {
                        mstore(count, free)
                    }
                    memcpy(stateData, 32, ret, free + 4, stateData.length - 32);
                    unchecked {
                        free += stateData.length - 32;
                    }
                } else if (idx == IDX_ARRAY_START) {
                    // Start of dynamic type, put pointer in current slot
                    assembly {
                        mstore(count, free)
                    }
                    (offsetIdx, free, i, ) = encodeDynamicArray(
                        ret,
                        state,
                        indices,
                        dynamicLengths,
                        offsetIdx,
                        free,
                        i
                    );
                } else if (idx == IDX_TUPLE_START) {
                    // Start of dynamic type, put pointer in current slot
                    assembly {
                        mstore(count, free)
                    }
                    (offsetIdx, free, i, ) = encodeDynamicTuple(
                        ret,
                        state,
                        indices,
                        dynamicLengths,
                        offsetIdx,
                        free,
                        i
                    );
                } else {
                    // Variable length data
                    uint256 argLen = state[idx & IDX_VALUE_MASK].length;
                    // Put a pointer in the current slot and write the data to first free slot
                    assembly {
                        mstore(count, free)
                    }
                    memcpy(
                        state[idx & IDX_VALUE_MASK],
                        0,
                        ret,
                        free + 4,
                        argLen
                    );
                    unchecked {
                        free += argLen;
                    }
                }
            } else {
                // Fixed length data (length previously checked to be 32 bytes)
                bytes memory stateVar = state[idx & IDX_VALUE_MASK];
                // Write the data to current slot
                assembly {
                    mstore(count, mload(add(stateVar, 32)))
                }
            }
            unchecked {
                count += 32;
                ++i;
            }
        }
    }

    function setupStaticVariable(
        bytes[] memory state,
        uint256 count,
        uint256 idx
    ) internal pure returns (uint256 newCount) {
        require(
            state[idx & IDX_VALUE_MASK].length == 32,
            "Static state variables must be 32 bytes"
        );
        unchecked {
            newCount = count + 32;
        }
    }

    function setupDynamicVariable(
        bytes[] memory state,
        uint256 count,
        uint256 idx
    ) internal pure returns (uint256 newCount) {
        bytes memory arg = state[idx & IDX_VALUE_MASK];
        // Validate the length of the data in state is a multiple of 32
        uint256 argLen = arg.length;
        require(
            argLen != 0 && argLen % 32 == 0,
            "Dynamic state variables must be a multiple of 32 bytes"
        );
        // Add the length of the value, rounded up to the next word boundary, plus space for pointer
        unchecked {
            newCount = count + argLen + 32;
        }
    }

    function setupDynamicType(
        bytes[] memory state,
        bytes32 indices,
        uint256[] memory dynamicLengths,
        uint256 idx,
        uint256 offsetIdx,
        uint256 count,
        uint256 index
    ) internal view returns (
        uint256[] memory newDynamicLengths,
        uint256 newOffsetIdx,
        uint256 newCount,
        uint256 newIndex
    ) {
        if (idx == IDX_ARRAY_START) {
            (newDynamicLengths, newOffsetIdx, newCount, newIndex) = setupDynamicArray(
                state,
                indices,
                dynamicLengths,
                offsetIdx,
                count,
                index
            );
        } else if (idx == IDX_TUPLE_START) {
            (newDynamicLengths, newOffsetIdx, newCount, newIndex) = setupDynamicTuple(
                state,
                indices,
                dynamicLengths,
                offsetIdx,
                count,
                index
            );
        } else {
            newDynamicLengths = dynamicLengths;
            newOffsetIdx = offsetIdx;
            newIndex = index;
            newCount = setupDynamicVariable(state, count, idx);
        }
    }

    function setupDynamicArray(
        bytes[] memory state,
        bytes32 indices,
        uint256[] memory dynamicLengths,
        uint256 offsetIdx,
        uint256 count,
        uint256 index
    ) internal view returns (
        uint256[] memory newDynamicLengths,
        uint256 newOffsetIdx,
        uint256 newCount,
        uint256 newIndex
    ) {
        // Current idx is IDX_ARRAY_START, next idx will contain the array length
        unchecked {
            newIndex = index + 1;
            newCount = count + 32;
        }
        uint256 idx = uint8(indices[newIndex]);
        require(
            state[idx & IDX_VALUE_MASK].length == 32,
            "Array length must be 32 bytes"
        );
        (newDynamicLengths, newOffsetIdx, newCount, newIndex) = setupDynamicTuple(
            state,
            indices,
            dynamicLengths,
            offsetIdx,
            newCount,
            newIndex
        );
    }

    function setupDynamicTuple(
        bytes[] memory state,
        bytes32 indices,
        uint256[] memory dynamicLengths,
        uint256 offsetIdx,
        uint256 count,
        uint256 index
    ) internal view returns (
        uint256[] memory newDynamicLengths,
        uint256 newOffsetIdx,
        uint256 newCount,
        uint256 newIndex
    ) {
        uint256 idx;
        uint256 offset;
        newDynamicLengths = dynamicLengths;
        // Progress to first index of the data and progress the next offset idx
        unchecked {
            newIndex = index + 1;
            newOffsetIdx = offsetIdx + 1;
            newCount = count + 32;
        }
        while (newIndex < 32) {
            idx = uint8(indices[newIndex]);
            if (idx & IDX_VARIABLE_LENGTH != 0) {
                if (idx == IDX_DYNAMIC_END) {
                    newDynamicLengths[offsetIdx] = offset;
                    // explicit return saves gas ¯\_(ツ)_/¯
                    return (newDynamicLengths, newOffsetIdx, newCount, newIndex);
                } else {
                    require(idx != IDX_USE_STATE, "Cannot use state from inside dynamic type");
                    (newDynamicLengths, newOffsetIdx, newCount, newIndex) = setupDynamicType(
                        state,
                        indices,
                        newDynamicLengths,
                        idx,
                        newOffsetIdx,
                        newCount,
                        newIndex
                    );
                }
            } else {
                newCount = setupStaticVariable(state, newCount, idx);
            }
            unchecked {
                offset += 32;
                ++newIndex;
            }
        }
        revert("Dynamic type was not properly closed");
    }

    function encodeDynamicArray(
        bytes memory ret,
        bytes[] memory state,
        bytes32 indices,
        uint256[] memory dynamicLengths,
        uint256 offsetIdx,
        uint256 currentSlot,
        uint256 index
    ) internal view returns (
        uint256 newOffsetIdx,
        uint256 newSlot,
        uint256 newIndex,
        uint256 length
    ) {
        // Progress to array length metadata
        unchecked {
            newIndex = index + 1;
            newSlot = currentSlot + 32;
        }
        // Encode array length
        uint256 idx = uint8(indices[newIndex]);
        // Array length value previously checked to be 32 bytes
        bytes memory stateVar = state[idx & IDX_VALUE_MASK];
        assembly {
            mstore(add(add(ret, 36), currentSlot), mload(add(stateVar, 32)))
        }
        (newOffsetIdx, newSlot, newIndex, length) = encodeDynamicTuple(
            ret,
            state,
            indices,
            dynamicLengths,
            offsetIdx,
            newSlot,
            newIndex
        );
        unchecked {
            length += 32; // Increase length to account for array length metadata
        }
    }

    function encodeDynamicTuple(
        bytes memory ret,
        bytes[] memory state,
        bytes32 indices,
        uint256[] memory dynamicLengths,
        uint256 offsetIdx,
        uint256 currentSlot,
        uint256 index
    ) internal view returns (
        uint256 newOffsetIdx,
        uint256 newSlot,
        uint256 newIndex,
        uint256 length
    ) {
        uint256 idx;
        uint256 argLen;
        uint256 freePointer = dynamicLengths[offsetIdx]; // The pointer to the next free slot
        unchecked {
            newSlot = currentSlot + freePointer; // Update the next slot
            newOffsetIdx = offsetIdx + 1; // Progress to next offsetIdx
            newIndex = index + 1; // Progress to first index of the data
        }
        // Shift currentSlot to correct location in memory
        assembly {
            currentSlot := add(add(ret, 36), currentSlot)
        }
        while (newIndex < 32) {
            idx = uint8(indices[newIndex]);
            if (idx & IDX_VARIABLE_LENGTH != 0) {
                if (idx == IDX_DYNAMIC_END) {
                    break;
                } else if (idx == IDX_ARRAY_START) {
                    // Start of dynamic type, put pointer in current slot
                    assembly {
                        mstore(currentSlot, freePointer)
                    }
                    (newOffsetIdx, newSlot, newIndex, argLen) = encodeDynamicArray(
                        ret,
                        state,
                        indices,
                        dynamicLengths,
                        newOffsetIdx,
                        newSlot,
                        newIndex
                    );
                    unchecked {
                        freePointer += argLen;
                        length += (argLen + 32); // data + pointer
                    }
                } else if (idx == IDX_TUPLE_START) {
                    // Start of dynamic type, put pointer in current slot
                    assembly {
                        mstore(currentSlot, freePointer)
                    }
                    (newOffsetIdx, newSlot, newIndex, argLen) = encodeDynamicTuple(
                        ret,
                        state,
                        indices,
                        dynamicLengths,
                        newOffsetIdx,
                        newSlot,
                        newIndex
                    );
                    unchecked {
                        freePointer += argLen;
                        length += (argLen + 32); // data + pointer
                    }
                } else  {
                    // Variable length data
                    argLen = state[idx & IDX_VALUE_MASK].length;
                    // Start of dynamic type, put pointer in current slot
                    assembly {
                        mstore(currentSlot, freePointer)
                    }
                    memcpy(
                        state[idx & IDX_VALUE_MASK],
                        0,
                        ret,
                        newSlot + 4,
                        argLen
                    );
                    unchecked {
                        newSlot += argLen;
                        freePointer += argLen;
                        length += (argLen + 32); // data + pointer
                    }
                }
            } else {
                // Fixed length data (length previously checked to be 32 bytes)
                bytes memory stateVar = state[idx & IDX_VALUE_MASK];
                // Write to first free slot
                assembly {
                    mstore(currentSlot, mload(add(stateVar, 32)))
                }
                unchecked {
                    length += 32;
                }
            }
            unchecked {
                currentSlot += 32;
                ++newIndex;
            }
        }
    }

    function writeOutputs(
        bytes[] memory state,
        bytes1 index,
        bytes memory output
    ) internal pure returns (bytes[] memory) {
        uint256 idx = uint8(index);
        if (idx == IDX_END_OF_ARGS) return state;

        if (idx & IDX_VARIABLE_LENGTH != 0) {
            if (idx == IDX_USE_STATE) {
                state = abi.decode(output, (bytes[]));
            } else {
                require(idx & IDX_VALUE_MASK < state.length, "Index out-of-bounds");
                // Check the first field is 0x20 (because we have only a single return value)
                uint256 argPtr;
                assembly {
                    argPtr := mload(add(output, 32))
                }
                require(
                    argPtr == 32,
                    "Only one return value permitted (variable)"
                );

                assembly {
                    // Overwrite the first word of the return data with the length - 32
                    mstore(add(output, 32), sub(mload(output), 32))
                    // Insert a pointer to the return data, starting at the second word, into state
                    mstore(
                        add(add(state, 32), mul(and(idx, IDX_VALUE_MASK), 32)),
                        add(output, 32)
                    )
                }
            }
        } else {
            require(idx & IDX_VALUE_MASK < state.length, "Index out-of-bounds");
            // Single word
            require(
                output.length == 32,
                "Only one return value permitted (static)"
            );

            state[idx & IDX_VALUE_MASK] = output;
        }

        return state;
    }

    function writeTuple(
        bytes[] memory state,
        bytes1 index,
        bytes memory output
    ) internal view {
        uint256 idx = uint8(index);
        if (idx == IDX_END_OF_ARGS) return;

        bytes memory entry = state[idx & IDX_VALUE_MASK] = new bytes(output.length + 32);
        memcpy(output, 0, entry, 32, output.length);
        assembly {
            let l := mload(output)
            mstore(add(entry, 32), l)
        }
    }

    function memcpy(
        bytes memory src,
        uint256 srcIdx,
        bytes memory dest,
        uint256 destIdx,
        uint256 len
    ) internal view {
        assembly {
            pop(
                staticcall(
                    gas(),
                    4,
                    add(add(src, 32), srcIdx),
                    len,
                    add(add(dest, 32), destIdx),
                    len
                )
            )
        }
    }
}

// ============================================================
// FILE: lib/royco/lib/enso-weiroll/contracts/VM.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.16;

import "./CommandBuilder.sol";

abstract contract VM {
    using CommandBuilder for bytes[];

    uint256 constant FLAG_CT_DELEGATECALL = 0x00; // Delegate call not currently supported
    uint256 constant FLAG_CT_CALL = 0x01;
    uint256 constant FLAG_CT_STATICCALL = 0x02;
    uint256 constant FLAG_CT_VALUECALL = 0x03;
    uint256 constant FLAG_CT_MASK = 0x03;
    uint256 constant FLAG_DATA = 0x20;
    uint256 constant FLAG_EXTENDED_COMMAND = 0x40;
    uint256 constant FLAG_TUPLE_RETURN = 0x80;

    uint256 constant SHORT_COMMAND_FILL =
        0x000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

    error ExecutionFailed(
        uint256 command_index,
        address target,
        string message
    );

    function _execute(bytes32[] calldata commands, bytes[] memory state)
        internal
        returns (bytes[] memory)
    {
        bytes32 command;
        uint256 flags;
        bytes32 indices;

        bool success;
        bytes memory outData;

        uint256 commandsLength = commands.length;
        uint256 indicesLength;
        for (uint256 i; i < commandsLength; i = _uncheckedIncrement(i)) {
            command = commands[i];
            flags = uint256(uint8(bytes1(command << 32)));

            if (flags & FLAG_EXTENDED_COMMAND != 0) {
                i = _uncheckedIncrement(i);
                indices = commands[i];
                indicesLength = 32;
            } else {
                indices = bytes32(uint256(command << 40) | SHORT_COMMAND_FILL);
                indicesLength = 6;
            }

            if (flags & FLAG_CT_MASK == FLAG_CT_CALL) {
                (success, outData) = address(uint160(uint256(command))).call( // target
                    // inputs
                    flags & FLAG_DATA == 0
                        ? state.buildInputs(
                            bytes4(command), // selector
                            indices,
                            indicesLength
                        )
                        : state[
                            uint8(bytes1(indices)) &
                            CommandBuilder.IDX_VALUE_MASK
                        ]
                );
            } else if (flags & FLAG_CT_MASK == FLAG_CT_STATICCALL) {
                (success, outData) = address(uint160(uint256(command))) // target
                    .staticcall(
                        // inputs
                        flags & FLAG_DATA == 0
                            ? state.buildInputs(
                                bytes4(command), // selector
                                indices,
                                indicesLength
                            )
                            : state[
                                uint8(bytes1(indices)) &
                                CommandBuilder.IDX_VALUE_MASK
                            ]
                    );
            } else if (flags & FLAG_CT_MASK == FLAG_CT_VALUECALL) {
                bytes memory v = state[
                    uint8(bytes1(indices)) &
                    CommandBuilder.IDX_VALUE_MASK
                ];
                require(v.length == 32, "Value must be 32 bytes");
                uint256 callEth = uint256(bytes32(v));
                (success, outData) = address(uint160(uint256(command))).call{ // target
                    value: callEth
                }(
                    // inputs
                    flags & FLAG_DATA == 0
                        ? state.buildInputs(
                            bytes4(command), // selector
                            indices << 8, // skip value input
                            indicesLength - 1 // max indices length reduced by value input
                        )
                        : state[
                            uint8(bytes1(indices << 8)) & // first byte after value input
                            CommandBuilder.IDX_VALUE_MASK
                        ]
                );
            } else {
                revert("Invalid calltype");
            }

            if (!success) {
                string memory message = "Unknown";
                if (outData.length > 68) {
                    // This might be an error message, parse the outData
                    // Estimate the bytes length of the possible error message
                    uint256 estimatedLength = _estimateBytesLength(outData, 68);
                    // Remove selector. First 32 bytes should be a pointer that indicates the start of data in memory
                    assembly {
                        outData := add(outData, 4)
                    }
                    uint256 pointer = uint256(bytes32(outData));
                    if (pointer == 32) {
                        // Remove pointer. If it is a string, the next 32 bytes will hold the size
                        assembly {
                            outData := add(outData, 32)
                        }
                        uint256 size = uint256(bytes32(outData));
                        // If the size variable is the same as the estimated bytes length, we can be fairly certain
                        // this is a dynamic string, so convert the bytes to a string and emit the message. While an
                        // error function with 3 static parameters is capable of producing a similar output, there is
                        // low risk of a contract unintentionally emitting a message.
                        if (size == estimatedLength) {
                            // Remove size. The remaining data should be the string content
                            assembly {
                                outData := add(outData, 32)
                            }
                            message = string(outData);
                        }
                    }
                }
                revert ExecutionFailed({
                    command_index: flags & FLAG_EXTENDED_COMMAND == 0
                        ? i
                        : i - 1,
                    target: address(uint160(uint256(command))),
                    message: message
                });
            }

            if (flags & FLAG_TUPLE_RETURN != 0) {
                state.writeTuple(bytes1(command << 88), outData);
            } else {
                state = state.writeOutputs(bytes1(command << 88), outData);
            }
        }
        return state;
    }

    function _estimateBytesLength(bytes memory data, uint256 pos) internal pure returns (uint256 estimate) {
        uint256 length = data.length;
        estimate = length - pos; // Assume length equals alloted space
        for (uint256 i = pos; i < length; ) {
            if (data[i] == 0) {
                // Zero bytes found, adjust estimated length
                estimate = i - pos;
                break;
            }
            unchecked {
                ++i;
            }
        }
    }

    function _uncheckedIncrement(uint256 i) private pure returns (uint256) {
        unchecked {
            ++i;
        }
        return i;
    }
}

// ============================================================
// FILE: lib/royco/lib/solady/src/utils/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Gas optimized ECDSA wrapper.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/ECDSA.sol)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/ECDSA.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/cryptography/ECDSA.sol)
///
/// @dev Note:
/// - The recovery functions use the ecrecover precompile (0x1).
/// - As of Solady version 0.0.68, the `recover` variants will revert upon recovery failure.
///   This is for more safety by default.
///   Use the `tryRecover` variants if you need to get the zero address back
///   upon recovery failure instead.
/// - As of Solady version 0.0.134, all `bytes signature` variants accept both
///   regular 65-byte `(r, s, v)` and EIP-2098 `(r, vs)` short form signatures.
///   See: https://eips.ethereum.org/EIPS/eip-2098
///   This is for calldata efficiency on smart accounts prevalent on L2s.
///
/// WARNING! Do NOT use signatures as unique identifiers:
/// - Use a nonce in the digest to prevent replay attacks on the same contract.
/// - Use EIP-712 for the digest to prevent replay attacks across different chains and contracts.
///   EIP-712 also enables readable signing of typed data for better user safety.
/// This implementation does NOT check if a signature is non-malleable.
library ECDSA {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CUSTOM ERRORS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev The signature is invalid.
    error InvalidSignature();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    RECOVERY OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Recovers the signer's address from a message digest `hash`, and the `signature`.
    function recover(bytes32 hash, bytes memory signature) internal view returns (address result) {
        /// @solidity memory-safe-assembly
        assembly {
            result := 1
            let m := mload(0x40) // Cache the free memory pointer.
            for {} 1 {} {
                mstore(0x00, hash)
                mstore(0x40, mload(add(signature, 0x20))) // `r`.
                if eq(mload(signature), 64) {
                    let vs := mload(add(signature, 0x40))
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    break
                }
                if eq(mload(signature), 65) {
                    mstore(0x20, byte(0, mload(add(signature, 0x60)))) // `v`.
                    mstore(0x60, mload(add(signature, 0x40))) // `s`.
                    break
                }
                result := 0
                break
            }
            result :=
                mload(
                    staticcall(
                        gas(), // Amount of gas left for the transaction.
                        result, // Address of `ecrecover`.
                        0x00, // Start of input.
                        0x80, // Size of input.
                        0x01, // Start of output.
                        0x20 // Size of output.
                    )
                )
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            if iszero(returndatasize()) {
                mstore(0x00, 0x8baa579f) // `InvalidSignature()`.
                revert(0x1c, 0x04)
            }
            mstore(0x60, 0) // Restore the zero slot.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Recovers the signer's address from a message digest `hash`, and the `signature`.
    function recoverCalldata(bytes32 hash, bytes calldata signature)
        internal
        view
        returns (address result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            result := 1
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x00, hash)
            for {} 1 {} {
                if eq(signature.length, 64) {
                    let vs := calldataload(add(signature.offset, 0x20))
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x40, calldataload(signature.offset)) // `r`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    break
                }
                if eq(signature.length, 65) {
                    mstore(0x20, byte(0, calldataload(add(signature.offset, 0x40)))) // `v`.
                    calldatacopy(0x40, signature.offset, 0x40) // Copy `r` and `s`.
                    break
                }
                result := 0
                break
            }
            result :=
                mload(
                    staticcall(
                        gas(), // Amount of gas left for the transaction.
                        result, // Address of `ecrecover`.
                        0x00, // Start of input.
                        0x80, // Size of input.
                        0x01, // Start of output.
                        0x20 // Size of output.
                    )
                )
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            if iszero(returndatasize()) {
                mstore(0x00, 0x8baa579f) // `InvalidSignature()`.
                revert(0x1c, 0x04)
            }
            mstore(0x60, 0) // Restore the zero slot.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Recovers the signer's address from a message digest `hash`,
    /// and the EIP-2098 short form signature defined by `r` and `vs`.
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal view returns (address result) {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x00, hash)
            mstore(0x20, add(shr(255, vs), 27)) // `v`.
            mstore(0x40, r)
            mstore(0x60, shr(1, shl(1, vs))) // `s`.
            result :=
                mload(
                    staticcall(
                        gas(), // Amount of gas left for the transaction.
                        1, // Address of `ecrecover`.
                        0x00, // Start of input.
                        0x80, // Size of input.
                        0x01, // Start of output.
                        0x20 // Size of output.
                    )
                )
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            if iszero(returndatasize()) {
                mstore(0x00, 0x8baa579f) // `InvalidSignature()`.
                revert(0x1c, 0x04)
            }
            mstore(0x60, 0) // Restore the zero slot.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Recovers the signer's address from a message digest `hash`,
    /// and the signature defined by `v`, `r`, `s`.
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s)
        internal
        view
        returns (address result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x00, hash)
            mstore(0x20, and(v, 0xff))
            mstore(0x40, r)
            mstore(0x60, s)
            result :=
                mload(
                    staticcall(
                        gas(), // Amount of gas left for the transaction.
                        1, // Address of `ecrecover`.
                        0x00, // Start of input.
                        0x80, // Size of input.
                        0x01, // Start of output.
                        0x20 // Size of output.
                    )
                )
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            if iszero(returndatasize()) {
                mstore(0x00, 0x8baa579f) // `InvalidSignature()`.
                revert(0x1c, 0x04)
            }
            mstore(0x60, 0) // Restore the zero slot.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   TRY-RECOVER OPERATIONS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // WARNING!
    // These functions will NOT revert upon recovery failure.
    // Instead, they will return the zero address upon recovery failure.
    // It is critical that the returned address is NEVER compared against
    // a zero address (e.g. an uninitialized address variable).

    /// @dev Recovers the signer's address from a message digest `hash`, and the `signature`.
    function tryRecover(bytes32 hash, bytes memory signature)
        internal
        view
        returns (address result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            result := 1
            let m := mload(0x40) // Cache the free memory pointer.
            for {} 1 {} {
                mstore(0x00, hash)
                mstore(0x40, mload(add(signature, 0x20))) // `r`.
                if eq(mload(signature), 64) {
                    let vs := mload(add(signature, 0x40))
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    break
                }
                if eq(mload(signature), 65) {
                    mstore(0x20, byte(0, mload(add(signature, 0x60)))) // `v`.
                    mstore(0x60, mload(add(signature, 0x40))) // `s`.
                    break
                }
                result := 0
                break
            }
            pop(
                staticcall(
                    gas(), // Amount of gas left for the transaction.
                    result, // Address of `ecrecover`.
                    0x00, // Start of input.
                    0x80, // Size of input.
                    0x40, // Start of output.
                    0x20 // Size of output.
                )
            )
            mstore(0x60, 0) // Restore the zero slot.
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            result := mload(xor(0x60, returndatasize()))
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Recovers the signer's address from a message digest `hash`, and the `signature`.
    function tryRecoverCalldata(bytes32 hash, bytes calldata signature)
        internal
        view
        returns (address result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            result := 1
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x00, hash)
            for {} 1 {} {
                if eq(signature.length, 64) {
                    let vs := calldataload(add(signature.offset, 0x20))
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x40, calldataload(signature.offset)) // `r`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    break
                }
                if eq(signature.length, 65) {
                    mstore(0x20, byte(0, calldataload(add(signature.offset, 0x40)))) // `v`.
                    calldatacopy(0x40, signature.offset, 0x40) // Copy `r` and `s`.
                    break
                }
                result := 0
                break
            }
            pop(
                staticcall(
                    gas(), // Amount of gas left for the transaction.
                    result, // Address of `ecrecover`.
                    0x00, // Start of input.
                    0x80, // Size of input.
                    0x40, // Start of output.
                    0x20 // Size of output.
                )
            )
            mstore(0x60, 0) // Restore the zero slot.
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            result := mload(xor(0x60, returndatasize()))
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Recovers the signer's address from a message digest `hash`,
    /// and the EIP-2098 short form signature defined by `r` and `vs`.
    function tryRecover(bytes32 hash, bytes32 r, bytes32 vs)
        internal
        view
        returns (address result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x00, hash)
            mstore(0x20, add(shr(255, vs), 27)) // `v`.
            mstore(0x40, r)
            mstore(0x60, shr(1, shl(1, vs))) // `s`.
            pop(
                staticcall(
                    gas(), // Amount of gas left for the transaction.
                    1, // Address of `ecrecover`.
                    0x00, // Start of input.
                    0x80, // Size of input.
                    0x40, // Start of output.
                    0x20 // Size of output.
                )
            )
            mstore(0x60, 0) // Restore the zero slot.
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            result := mload(xor(0x60, returndatasize()))
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Recovers the signer's address from a message digest `hash`,
    /// and the signature defined by `v`, `r`, `s`.
    function tryRecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s)
        internal
        view
        returns (address result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x00, hash)
            mstore(0x20, and(v, 0xff))
            mstore(0x40, r)
            mstore(0x60, s)
            pop(
                staticcall(
                    gas(), // Amount of gas left for the transaction.
                    1, // Address of `ecrecover`.
                    0x00, // Start of input.
                    0x80, // Size of input.
                    0x40, // Start of output.
                    0x20 // Size of output.
                )
            )
            mstore(0x60, 0) // Restore the zero slot.
            // `returndatasize()` will be `0x20` upon success, and `0x00` otherwise.
            result := mload(xor(0x60, returndatasize()))
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     HASHING OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns an Ethereum Signed Message, created from a `hash`.
    /// This produces a hash corresponding to the one signed with the
    /// [`eth_sign`](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign)
    /// JSON-RPC method as part of EIP-191.
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x20, hash) // Store into scratch space for keccak256.
            mstore(0x00, "\x00\x00\x00\x00\x19Ethereum Signed Message:\n32") // 28 bytes.
            result := keccak256(0x04, 0x3c) // `32 * 2 - (32 - 28) = 60 = 0x3c`.
        }
    }

    /// @dev Returns an Ethereum Signed Message, created from `s`.
    /// This produces a hash corresponding to the one signed with the
    /// [`eth_sign`](https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign)
    /// JSON-RPC method as part of EIP-191.
    /// Note: Supports lengths of `s` up to 999999 bytes.
    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            let sLength := mload(s)
            let o := 0x20
            mstore(o, "\x19Ethereum Signed Message:\n") // 26 bytes, zero-right-padded.
            mstore(0x00, 0x00)
            // Convert the `s.length` to ASCII decimal representation: `base10(s.length)`.
            for { let temp := sLength } 1 {} {
                o := sub(o, 1)
                mstore8(o, add(48, mod(temp, 10)))
                temp := div(temp, 10)
                if iszero(temp) { break }
            }
            let n := sub(0x3a, o) // Header length: `26 + 32 - o`.
            // Throw an out-of-offset error (consumes all gas) if the header exceeds 32 bytes.
            returndatacopy(returndatasize(), returndatasize(), gt(n, 0x20))
            mstore(s, or(mload(0x00), mload(n))) // Temporarily store the header.
            result := keccak256(add(s, sub(0x20, n)), add(n, sLength))
            mstore(s, sLength) // Restore the length.
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   EMPTY CALLDATA HELPERS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns an empty calldata bytes.
    function emptySignature() internal pure returns (bytes calldata signature) {
        /// @solidity memory-safe-assembly
        assembly {
            signature.length := 0
        }
    }
}

// ============================================================
// FILE: lib/royco/src/interfaces/IERC1271.sol
// ============================================================

/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IERC1271
/// @notice Interface defined by EIP-1271
/// @dev Interface for verifying contract account signatures
interface IERC1271 {
    /// @notice Returns whether the provided signature is valid for the provided data
    /// @dev Returns 0x1626ba7e (magic value) when function passes.
    /// @param digest Hash of the message to validate the signature against
    /// @param signature Signature produced for the provided digest
    function isValidSignature(bytes32 digest, bytes memory signature) external view returns (bytes4);
}

// ============================================================
// FILE: lib/royco/src/WeirollWallet.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { VM } from "../lib/enso-weiroll/contracts/VM.sol";
import { Clone } from "../lib/clones-with-immutable-args/src/Clone.sol";
import { IERC1271 } from "../src/interfaces/IERC1271.sol";
import { ECDSA } from "../lib/solady/src/utils/ECDSA.sol";

/// @title WeirollWallet
/// @author Jack Corddry, Shivaansh Kapoor, CopyPaste
/// @notice WeirollWallet implementation contract.
/// @notice Implements a simple smart contract wallet that can execute Weiroll VM commands
contract WeirollWallet is IERC1271, Clone, VM {
    // Returned to indicate a valid ERC1271 signature
    bytes4 internal constant ERC1271_MAGIC_VALUE = 0x1626ba7e; // bytes4(keccak256("isValidSignature(bytes32,bytes)")

    // Returned to indicate an invalid ERC1271 signature
    bytes4 internal constant INVALID_SIGNATURE = 0x00000000;

    /// @notice Let the Weiroll Wallet receive ether directly if needed
    receive() external payable { }
    /// @notice Also allow a fallback with no logic if erroneous data is provided
    fallback() external payable { }
    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    // Emit when owner executes an arbitrary script (not a market script)
    event WeirollWalletExecutedManually();

    error NotOwner();
    error NotRecipeMarketHub();
    error WalletLocked();
    error WalletNotForfeitable();
    error OfferUnfilled();
    error RawExecutionFailed();

    /// @notice Only the owner of the contract can call the function
    modifier onlyOwner() {
        if (msg.sender != owner()) {
            revert NotOwner();
        }
        _;
    }

    /// @notice Only the recipeMarketHub contract can call the function
    modifier onlyRecipeMarketHub() {
        if (msg.sender != recipeMarketHub()) {
            revert NotRecipeMarketHub();
        }
        _;
    }

    /// @notice The wallet can be locked
    modifier notLocked() {
        if (!forfeited && lockedUntil() > block.timestamp) {
            revert WalletLocked();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                               STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @dev Whether or not this offer has been executed
    bool public executed;
    /// @dev Whether or not the wallet has been forfeited
    bool public forfeited;

    /// @notice Forfeit all rewards to get control of the wallet back
    function forfeit() public onlyRecipeMarketHub {
        if (!isForfeitable() || block.timestamp >= lockedUntil()) {
            // Can't forfeit if:
            // 1. Wallet not created through a forfeitable market
            // 2. Lock time has passed and claim window has started
            revert WalletNotForfeitable();
        }

        forfeited = true;
    }

    /// @notice The address of the offer creator (owner)
    function owner() public pure returns (address) {
        return _getArgAddress(0);
    }

    /// @notice The address of the RecipeMarketHub contract
    function recipeMarketHub() public pure returns (address) {
        return _getArgAddress(20);
    }

    /// @notice The amount of tokens deposited into this wallet from the recipeMarketHub
    function amount() public pure returns (uint256) {
        return _getArgUint256(40);
    }

    /// @notice The timestamp after which the wallet may be interacted with
    function lockedUntil() public pure returns (uint256) {
        return _getArgUint256(72);
    }

    /// @notice Returns whether or not the wallet is forfeitable
    function isForfeitable() public pure returns (bool) {
        return _getArgUint8(104) != 0;
    }

    /// @notice Returns the hash of the market associated with this weiroll wallet
    function marketHash() public pure returns (bytes32) {
        return bytes32(_getArgUint256(105));
    }

    /*//////////////////////////////////////////////////////////////
                               EXECUTION LOGIC
    //////////////////////////////////////////////////////////////*/
    /// @notice Execute the Weiroll VM with the given commands.
    /// @param commands The commands to be executed by the Weiroll VM.
    function executeWeiroll(bytes32[] calldata commands, bytes[] calldata state) public payable onlyRecipeMarketHub returns (bytes[] memory) {
        executed = true;
        // Execute the Weiroll VM.
        return _execute(commands, state);
    }

    /// @notice Execute the Weiroll VM with the given commands.
    /// @param commands The commands to be executed by the Weiroll VM.
    function manualExecuteWeiroll(bytes32[] calldata commands, bytes[] calldata state) public payable onlyOwner notLocked returns (bytes[] memory) {
        // Prevent people from approving w/e then rugging during vesting
        if (!executed) revert OfferUnfilled();

        emit WeirollWalletExecutedManually();
        // Execute the Weiroll VM.
        return _execute(commands, state);
    }

    /// @notice Execute a generic call to another contract.
    /// @param to The address to call
    /// @param value The ether value of the execution
    /// @param data The data to pass along with the call
    function execute(address to, uint256 value, bytes memory data) public payable onlyOwner notLocked returns (bytes memory) {
        // Prevent people from approving w/e then rugging during vesting
        if (!executed) revert OfferUnfilled();

        // Execute the call.
        (bool success, bytes memory result) = to.call{ value: value }(data);
        if (!success) revert RawExecutionFailed();

        emit WeirollWalletExecutedManually();
        return result;
    }

    /// @notice Check if signature is valid for this contract
    /// @dev Signature is valid if the signer is the owner of this wallet
    /// @param digest Hash of the message to validate the signature against
    /// @param signature Signature produced for the provided digest
    function isValidSignature(bytes32 digest, bytes calldata signature) external view returns (bytes4) {
        // Modify digest to include the chainId and address of this wallet to prevent replay attacks
        bytes32 walletSpecificDigest = keccak256(abi.encode(digest, block.chainid, address(this)));
        // Check if signature was produced by owner of this wallet
        // Don't revert on failure. Simply return INVALID_SIGNATURE.
        if (ECDSA.tryRecover(walletSpecificDigest, signature) == owner()) return ERC1271_MAGIC_VALUE;
        else return INVALID_SIGNATURE;
    }
}

// ============================================================
// FILE: src/WeirollWalletHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { WeirollWallet } from "lib/royco/src/WeirollWallet.sol";

/// @title WeirollWalletHelper
/// @notice A helper contract to enable calling view functions of WeirollWallet via STATICCALL.
/// @author Shivaansh Kapoor, Jack Corddry
/// @dev This contract contains view functions that can be called via STATICCALL to access the state of a WeirollWallet contract.
contract WeirollWalletHelper {
    /// @notice Gets the address of the WeirollWallet.
    /// @dev Returns msg.sender (Weiroll Wallet) as a payable address.
    /// @return The address of the WeirollWallet.
    function thisWallet() external view returns (address payable) {
        return payable(msg.sender);
    }

    /// @notice Gets the native balance of the WeirollWallet.
    /// @dev Returns (msg.sender).balance.
    /// @return The ether balance of the WeirollWallet.
    function nativeBalance() external view returns (uint256) {
        return (msg.sender).balance;
    }

    /// @notice Gets the owner of the WeirollWallet.
    /// @dev Calls the `owner()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The address of the owner.
    function owner() external view returns (address) {
        return WeirollWallet(payable(msg.sender)).owner();
    }

    /// @notice Gets the address of the RecipeMarketHub contract associated with the WeirollWallet.
    /// @dev Calls the `recipeMarketHub()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The address of the RecipeMarketHub contract.
    function recipeMarketHub() external view returns (address) {
        return WeirollWallet(payable(msg.sender)).recipeMarketHub();
    }

    /// @notice Gets the amount of tokens deposited into the WeirollWallet.
    /// @dev Calls the `amount()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The amount of tokens deposited.
    function amount() external view returns (uint256) {
        return WeirollWallet(payable(msg.sender)).amount();
    }

    /// @notice Gets the timestamp until which the WeirollWallet is locked.
    /// @dev Calls the `lockedUntil()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The timestamp (in seconds since epoch) after which the wallet may be interacted with.
    function lockedUntil() external view returns (uint256) {
        return WeirollWallet(payable(msg.sender)).lockedUntil();
    }

    /// @notice Determines if the WeirollWallet is forfeitable.
    /// @dev Calls the `isForfeitable()` function of the WeirollWallet contract using `msg.sender`.
    /// @return A boolean indicating if the wallet is forfeitable.
    function isForfeitable() external view returns (bool) {
        return WeirollWallet(payable(msg.sender)).isForfeitable();
    }

    /// @notice Gets the hash of the market associated with the WeirollWallet.
    /// @dev Calls the `marketHash()` function of the WeirollWallet contract using `msg.sender`.
    /// @return The market hash as a bytes32.
    function marketHash() external view returns (bytes32) {
        return WeirollWallet(payable(msg.sender)).marketHash();
    }

    /// @notice Checks if the order associated with the WeirollWallet has been executed.
    /// @dev Calls the `executed()` function of the WeirollWallet contract using `msg.sender`.
    /// @return A boolean indicating if the order has been executed.
    function executed() external view returns (bool) {
        return WeirollWallet(payable(msg.sender)).executed();
    }

    /// @notice Checks if the WeirollWallet has been forfeited.
    /// @dev Calls the `forfeited()` function of the WeirollWallet contract using `msg.sender`.
    /// @return A boolean indicating if the wallet has been forfeited.
    function forfeited() external view returns (bool) {
        return WeirollWallet(payable(msg.sender)).forfeited();
    }
}
