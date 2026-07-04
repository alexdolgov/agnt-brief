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

// Size of an address in bits
uint256 constant ADDRESS_SIZE_BITS = 160;

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
//                   Callback Constants                   //
////////////////////////////////////////////////////////////

// Maximum value for uint16, used to indicate no callback data
uint16 constant NO_CALLBACK_DATA = type(uint16).max;

// Offset for selector in callback data
uint256 constant SELECTOR_OFFSET = 48;

// Offset for callback data
uint256 constant CALLBACK_DATA_OFFSET = 160;

////////////////////////////////////////////////////////////
//                   Fee Constants                        //
////////////////////////////////////////////////////////////

// Basis points denominator (100%)
uint256 constant BASIS_POINTS = 1e4;

// Seconds in a year for fee calculations
uint256 constant SECONDS_PER_YEAR = 365 days;

// Dispute period for vault snapshot
uint256 constant DISPUTE_PERIOD = 15 days;

// Offset for performance fee in packed fee parameters
uint256 constant PERFORMANCE_FEE_OFFSET = 16;

// Offset for fee recipient in packed fee parameters
uint256 constant FEE_RECIPIENT_OFFSET = 32;

////////////////////////////////////////////////////////////
//                   Vault Constants                       //
////////////////////////////////////////////////////////////

// Sentinel address for vault address replacement
bytes32 constant VAULT_ADDRESS_SENTINEL = bytes32(uint256(uint160(address(0xaE3aae3aAe3aAe3aAe3AAE3aaE3aAe3aAe3Aae3a))));
