// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

//------------------------------------------------------------------------------
// Errors

/// @dev Bytes4 instance used to indicate an absence of errors.
bytes4 constant NO_ERR = bytes4(0);

//------------------------------------------------------------------------------
// PokeData

/// @dev Type PokeData encapsulates a value and its corresponding timestamp.
struct PokeData {
    uint128 val;
    uint32 age;
}

/// @dev The size of a PokeData instance in bytes.
uint constant POKE_DATA_BYTE_SIZE = 32;

//------------------------------------------------------------------------------
// ValidatorMessage

/// @dev Type ValidatorMessageECDSA encapsulates a PokeData with its
///      corresponding ECDSA signature.
struct ValidatorMessageECDSA {
    PokeData pokeData;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

/// @dev The size of an ValidatorMessageECDSA instance in bytes.
uint constant VALIDATOR_MESSAGE_ECDSA_SIZE = 96;

/// @dev Type ValidatorMessageSchnorr encapsulates a PokeData with its
///      corresponding Schnorr muli-signature.
struct ValidatorMessageSchnorr {
    PokeData pokeData;
    bytes32 signature;
    address commitment;
    bytes validatorIds;
}

//------------------------------------------------------------------------------
// WatMessage

/// @dev Type WatMessageHeader defines the header of a wat message.
///
///      The header contains the wat message's version and cryptographic scheme,
///      as well as the wat's bar configuration and wat identifier.
struct WatMessageHeader {
    uint8 version;
    uint8 scheme;
    uint8 bar;
    bytes32 wat;
}

/// @dev The size of a WatMessageHeader instance in bytes.
uint constant WAT_MESSAGE_HEADER_BYTE_SIZE = 64;

/// @dev Type WatMessageECDSA defines a wat message using the ECDSA scheme.
struct WatMessageECDSA {
    WatMessageHeader header;
    ValidatorMessageECDSA[] messages;
}

/// @dev Type WatMessageECDSA defines a wat message using the Schnorr scheme.
struct WatMessageSchnorr {
    WatMessageHeader header;
    ValidatorMessageSchnorr message;
}
