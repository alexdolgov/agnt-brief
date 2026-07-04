// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

////////////////////////////////////////////////////////////
//                    Memory & Calldata                   //
////////////////////////////////////////////////////////////

// Size of a word in bytes
uint256 constant WORD_SIZE = 32;

// Size of a function selector in bytes
uint256 constant SELECTOR_SIZE = 4;

// Minimum valid calldata size (selector + one word = 36)
uint256 constant MINIMUM_CALLDATA_LENGTH = WORD_SIZE + SELECTOR_SIZE;

// Offset to skip selector and first word in calldata
uint256 constant CALLDATA_OFFSET = MINIMUM_CALLDATA_LENGTH;

// Offset for extracting spender address from approval calldata
uint256 constant ERC20_SPENDER_OFFSET = 36;

////////////////////////////////////////////////////////////
//                     Bit Operations                     //
////////////////////////////////////////////////////////////

// Mask for extracting 8-bit values
uint256 constant MASK_8_BIT = 0xff;

// Mask for extracting 16-bit values
uint256 constant MASK_16_BIT = 0xffff;

////////////////////////////////////////////////////////////
//                    Pipeline Constants                  //
////////////////////////////////////////////////////////////

// Bit offset for results index in packed clipboard data
uint256 constant RESULTS_INDEX_OFFSET = 24;

// Bit offset for copy word position in packed clipboard data
uint256 constant COPY_WORD_OFFSET = 16;

////////////////////////////////////////////////////////////
//                   Extractor Constants                  //
////////////////////////////////////////////////////////////

// Number of bytes per extraction offset
uint256 constant EXTRACT_OFFSET_SIZE_BITS = 16;

// Number of bits to shift to get the offset (256 - 16)
uint256 constant EXTRACTION_OFFSET_SHIFT_BITS = 240;

/// @dev Maximum number of extraction offsets(16) + 1
uint256 constant MAX_EXTRACT_OFFSETS_EXCLUSIVE = 17;

////////////////////////////////////////////////////////////
//                     Hook Constants                     //
////////////////////////////////////////////////////////////

// Mask for a bit indicating whether a hook has before submit call
uint256 constant BEFORE_SUBMIT_MASK = 1;

// Mask for a bit indicating whether a hook has after submit call
uint256 constant AFTER_SUBMIT_MASK = 2;

// Mask for a bit indicating whether a hook exists
uint256 constant HOOK_FLAG_MASK = 0x80;

// Mask for 7 bits indicating the number of configurable hook offsets
uint256 constant CONFIGURABLE_HOOK_LENGTH_MASK = 0x7F;

////////////////////////////////////////////////////////////
//                    Oracle Constants                    //
////////////////////////////////////////////////////////////

// Single bit set to 1, used as a flag when shifted left (e.g. by DISABLED_OFFSET)
uint256 constant ONE_BIT_FLAG = 0x01;

// Offset for disabled flag in oracle data
uint256 constant DISABLED_OFFSET = 255;

// Mask for disabled flag in oracle data
uint256 constant DISABLED_MASK = ONE_BIT_FLAG << DISABLED_OFFSET;

// Offset for deprecated flag in oracle data
uint256 constant DEPRECATED_OFFSET = 254;

// Mask for deprecated flag in oracle data
uint256 constant DEPRECATED_MASK = ONE_BIT_FLAG << DEPRECATED_OFFSET;

// Inverted mask for deprecated flag in oracle data, used to clear the flag
uint256 constant DEPRECATED_MASK_INVERTED = ~DEPRECATED_MASK;

// Mask for commit timestamp in oracle data
uint256 constant COMMIT_TIMESTAMP_MASK = 0xFFFFFFFFF;

// Offset for commit timestamp in oracle data
uint256 constant COMMIT_TIMESTAMP_OFFSET = 218;

// Inverted mask for commit timestamp in oracle data, used to clear the timestamp
uint256 constant COMMIT_TIMESTAMP_MASK_INVERTED = ~(COMMIT_TIMESTAMP_MASK << COMMIT_TIMESTAMP_OFFSET);

// Mask for oracle type in oracle data
uint256 constant ORACLE_TYPE_MASK = 0x3;

// Offset for oracle type in oracle data
uint256 constant ORACLE_TYPE_OFFSET = 216;

// Oracle type for Chainlink oracle
uint256 constant ORACLE_TYPE_CHAINLINK = 1;

uint256 constant ORACLE_TYPE_CHAINLINK_MASK = ORACLE_TYPE_CHAINLINK << ORACLE_TYPE_OFFSET;

// Oracle type for ERC7726 oracle
uint256 constant ORACLE_TYPE_ERC7726 = 2;

uint256 constant ORACLE_TYPE_ERC7726_MASK = ORACLE_TYPE_ERC7726 << ORACLE_TYPE_OFFSET;

// Offset for Chainlink heartbeat in oracle data
uint256 constant CHAINLINK_HEARTBEAT_OFFSET = 160;

// Mask for Chainlink decimals in oracle data
uint256 constant CHAINLINK_DECIMALS_MASK = 0xFF;

// Offset for Chainlink decimals in oracle data
uint256 constant CHAINLINK_DECIMALS_OFFSET = 192;

// Inverted mask for Chainlink decimals in oracle data used for deleting decimals
uint256 constant CHAINLINK_DECIMALS_MASK_INVERTED = ~(MASK_8_BIT << CHAINLINK_DECIMALS_OFFSET);

// Validation mask for Chainlink oracle data
uint256 constant CHAINLINK_VALIDATION_MASK = 0x0000000000FFFF00000000000000000000000000000000000000000000000000;

// Validation mask for ERC7726 oracle data
uint256 constant ERC7726_ORACLE_VALIDATION_MASK = 0x0000000000FFFFFFFFFFFFFF0000000000000000000000000000000000000000;

// Maximum commit timestamp value
uint40 constant MAX_COMMIT_TIMESTAMP = uint40(2 ** 36 - 1);

////////////////////////////////////////////////////////////
//                   Callback Constants                   //
////////////////////////////////////////////////////////////

// Maximum value for uint16, used to indicate no callback data
uint16 constant NO_CALLBACK_DATA = type(uint16).max;

// Offset for selector in callback data
uint256 constant SELECTOR_OFFSET = 48;

// Offset for callback data
uint256 constant CALLBACK_DATA_OFFSET = 160;

// Size of an address in bits
uint256 constant ADDRESS_SIZE_BITS = 160;
