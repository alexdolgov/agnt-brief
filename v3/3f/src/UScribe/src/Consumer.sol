// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Toll} from "chronicle-std@v2/toll/Toll.sol";

import {UScribe} from "uscribe@v1/UScribe.sol";

import {IChronicleVAO_Centrifuge_JAAA_Reader as IReader} from "./IReader.sol";

import {TollWithImmutableRouter} from "./TollWithImmutableRouter.sol";

// The poke struct is the single struct that is being poked.
struct PokeData {
    uint48 age;
    uint128 val;
}

/**
 * @title ChronicleVAO_Centrifuge_JAAA_Consumer_1
 * @custom:uscribe-version 1.3.0
 *
 * @author Chronicle Labs, Inc
 * @custom:security-contact security@chroniclelabs.org
 */
contract ChronicleVAO_Centrifuge_JAAA_Consumer_1 is
    UScribe,
    TollWithImmutableRouter,
    IReader
{

    /// @notice Thrown if attempted to poke a stale message.
    error StaleMessage();

    /// @notice Thrown if attempted to poke a future message.
    error FutureMessage();

    /// @notice Emitted when a poke is received.
    /// @param caller The caller's address.
    /// @param val The value poked.
    /// @param age The age of the value poked.
    event Poked(address indexed caller, uint128 val, uint48 age);

    //--------------------------------------------------------------------------
    // Storage

    uint128 internal _val;

    //--------------------------------------------------------------------------
    // Constructor

    constructor(address initialAuthed, address router)
        UScribe(initialAuthed, "VAO::Centrifuge_JAAA")
        TollWithImmutableRouter(router)
    {}

    /// @dev Defines authorization for IToll's authenticated functions.
    function toll_auth() internal override(TollWithImmutableRouter) auth {}

    //--------------------------------------------------------------------------
    // Poke Functionality

    /// @dev Function to handle state update.
    ///
    ///      This function is being called by the upstream uScribe
    ///      implementation iff the poke's signature verification succeeded.
    ///
    ///      Therefore, this function MUST only verify the payload contains
    ///      correctly encoded, non-stale and non-future data before committing a state update.
    ///
    /// @dev Reverts if:
    ///      - Decoding payload to expected format fails
    ///
    /// @dev Returns error if:
    ///      - Payload is stale
    ///      - Payload is signed at a future date to block timestamp
    ///
    /// @dev The payload is expected to be encoded using the PokeData struct
    ///      containing the fields:
    ///
    ///      - age: uint48
    ///      - val: uint128
    ///
    ///  @dev The age stored after a poke is equal to the current block time,
    ///       not the age sent in the poke.
    function _poke(bytes calldata payload)
        internal
        override(UScribe)
        returns (bytes4)
    {
        PokeData memory pokeData = abi.decode(payload, (PokeData));

        // Fail if payload stale.
        if (pokeData.age <= latestPoke()) {
            return StaleMessage.selector;
        }

        // Fail if payload from the future.
        if (pokeData.age > block.timestamp) {
            return FutureMessage.selector;
        }

        // Store the poke's val.
        _val = pokeData.val;

        emit Poked(msg.sender, pokeData.val, pokeData.age);

        return _NO_ERR;
    }

    //--------------------------------------------------------------------------
    // IReader Functionality
    //
    // Note that read functions differ from Scribe with regards to `val = 0` not
    // being a failure code. Read functions only revert/fail if
    // `latestPoke() = 0`, implying no valid poke occured yet.
    //
    // Side effect of this is that the read functions cannot be disabled.

    //// @inheritdoc IVAOReader
    function read() public view toll returns (uint val) {
        bool ok;
        (ok, val,) = _tryReadWithAge();
        require(ok);
    }

    //// @inheritdoc IVAOReader
    function tryRead() public view toll returns (bool ok, uint val) {
        (ok, val,) = _tryReadWithAge();
        // assert(ok || val == 0);
    }

    //// @inheritdoc IVAOReader
    function readWithAge() public view toll returns (uint val, uint age) {
        bool ok;
        (ok, val, age) = _tryReadWithAge();
        require(ok);
    }

    //// @inheritdoc IVAOReader
    function tryReadWithAge()
        public
        view
        toll
        returns (bool ok, uint val, uint age)
    {
        (ok, val, age) = _tryReadWithAge();
    }

    function _tryReadWithAge()
        internal
        view
        returns (bool ok, uint val, uint age)
    {
        age = latestPoke();
        val = _val;
        ok = age != 0;
        // assert(ok || val == 0);
    }
}
