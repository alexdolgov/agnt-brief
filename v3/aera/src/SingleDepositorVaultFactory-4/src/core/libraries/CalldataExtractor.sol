// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {
    EXTRACTION_OFFSET_SHIFT_BITS,
    EXTRACT_OFFSET_SIZE_BITS,
    MAX_EXTRACT_OFFSETS_EXCLUSIVE,
    MINIMUM_CALLDATA_LENGTH,
    SELECTOR_SIZE,
    VAULT_ADDRESS_SENTINEL,
    WORD_SIZE
} from "src/core/Constants.sol";

/// @title CalldataExtractor
/// @notice Library for extracting specific chunks of calldata based on offset configurations
library CalldataExtractor {
    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error ExtractionNumberTooLarge();
    error CalldataTooShort();
    error OffsetOutOfBounds();

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @notice Extracts relevant parts of calldata based on config offsets
    /// @param callData The complete calldata to extract from
    /// @param calldataOffsetsPacked Packed 16 bits extraction offsets
    /// @param calldafaOffsetsCount Number of extractions to perform
    /// @return result Concatenated bytes of extracted 32 bytes calldata chunks
    /// @dev calldafaOffsetsCount must be <= 16 because thats how many fit in uint256
    /// @dev Calldata must be at least 36 bytes long to be considered valid
    /// @dev All math is unchecked because we validate everything before doing any operations
    function extract(bytes memory callData, uint256 calldataOffsetsPacked, uint256 calldafaOffsetsCount)
        internal
        view
        returns (bytes memory)
    {
        unchecked {
            // Requirements: check that the number of extractions is less than the maximum allowed
            require(calldafaOffsetsCount < MAX_EXTRACT_OFFSETS_EXCLUSIVE, ExtractionNumberTooLarge());
            // Initialize result bytes array with the length being number of extractions times 32 bytes
            bytes memory result = new bytes(calldafaOffsetsCount * WORD_SIZE);

            uint256 resultPtr;
            assembly ("memory-safe") {
                resultPtr := result
            }
            // skip the dynamic array length word
            resultPtr += WORD_SIZE;

            uint256 callDataLength = callData.length;
            // Requirements: check that the calldata is at least 36 bytes long(selector + one word)
            require(callDataLength >= MINIMUM_CALLDATA_LENGTH, CalldataTooShort());

            // max valid offset is the length of callData minus 36 bytes(selector + one word)
            uint256 maxValidOffset = callDataLength - WORD_SIZE;

            uint256 calldataPointer;
            assembly ("memory-safe") {
                calldataPointer := callData
            }
            // skip the dynamic array length word
            calldataPointer += WORD_SIZE;

            uint256 resultWriteOffset;
            for (uint256 i = 0; i < calldafaOffsetsCount; ++i) {
                uint256 extractionOffset = (calldataOffsetsPacked >> EXTRACTION_OFFSET_SHIFT_BITS) + SELECTOR_SIZE;

                // Requirements: check that the offset is within the calldata bounds
                require(extractionOffset <= maxValidOffset, OffsetOutOfBounds());

                uint256 calldataOffsetPointer = calldataPointer + extractionOffset;

                // Extract 32 bytes from calldata at offset
                // mload from callData pointer + extraction offset
                bytes32 extracted;
                assembly ("memory-safe") {
                    extracted := mload(calldataOffsetPointer)
                }
                if (extracted == bytes32(uint256(uint160(address(this))))) {
                    extracted = VAULT_ADDRESS_SENTINEL;
                }

                // Store extracted value in the result
                // mstore extracted word to result pointer + current result offset
                uint256 resultOffsetPointer = resultPtr + resultWriteOffset;
                assembly ("memory-safe") {
                    mstore(resultOffsetPointer, extracted)
                }

                resultWriteOffset += WORD_SIZE;
                calldataOffsetsPacked = calldataOffsetsPacked << EXTRACT_OFFSET_SIZE_BITS;
            }

            return result;
        }
    }
}
