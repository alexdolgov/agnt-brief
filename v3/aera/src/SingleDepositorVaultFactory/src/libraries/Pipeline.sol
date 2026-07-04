// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {
    CALLDATA_OFFSET,
    COPY_WORD_OFFSET,
    MASK_16_BIT,
    MASK_8_BIT,
    RESULTS_INDEX_OFFSET,
    WORD_SIZE
} from "../Constants.sol";
import { CalldataReader } from "./CalldataReader.sol";

/// @title Pipeline
/// @notice Library for handling pipeline operations that copy and paste data between operations
/// @dev Uses bit manipulation and assembly for efficient data movement
library Pipeline {
    /// @notice Thrown when trying to copy from an invalid position in source data
    error CopyOffsetOutOfBounds();
    /// @notice Thrown when trying to paste to an invalid position in target data
    error PasteOffsetOutOfBounds();

    /// @notice Processes pipeline operations by copying data between operations
    /// @param data The calldata to modify
    /// @param reader Current position in the calldata
    /// @param results Array of previous operation results to copy from
    function pipe(bytes memory data, CalldataReader reader, bytes[] memory results)
        internal
        pure
        returns (CalldataReader)
    {
        uint256 clipboardCount;
        (reader, clipboardCount) = reader.readU8();

        unchecked {
            for (; clipboardCount != 0; --clipboardCount) {
                uint256 clipboard;
                (reader, clipboard) = reader.readU32();

                uint256 resultIndex = clipboard >> RESULTS_INDEX_OFFSET;
                // will Panic(uint256) revert on out of bounds index
                bytes memory result = results[resultIndex];

                uint256 copyOffset = (clipboard >> COPY_WORD_OFFSET & MASK_8_BIT) * WORD_SIZE;
                require(copyOffset + WORD_SIZE <= result.length, CopyOffsetOutOfBounds());

                uint256 pasteOffset = clipboard & MASK_16_BIT;
                require(pasteOffset + WORD_SIZE <= data.length, PasteOffsetOutOfBounds());

                uint256 operationCalldataPointer;
                uint256 resultPointer;
                assembly ("memory-safe") {
                    operationCalldataPointer := data
                    resultPointer := result
                }

                uint256 pastePointer = operationCalldataPointer + pasteOffset + CALLDATA_OFFSET;
                uint256 copyPointer = resultPointer + WORD_SIZE + copyOffset;

                assembly ("memory-safe") {
                    mcopy(pastePointer, copyPointer, WORD_SIZE)
                }
            }
        }

        return reader;
    }
}
