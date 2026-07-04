// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {Auth} from "chronicle-std/auth/Auth.sol";
import {Toll} from "chronicle-std/toll/Toll.sol";

import {IVerifier} from "../IVerifier.sol";

import {IVerifierECDSA} from "./IVerifierECDSA.sol";

import {
    NO_ERR,
    WatMessageHeader,
    WAT_MESSAGE_HEADER_BYTE_SIZE,
    ValidatorMessageECDSA,
    VALIDATOR_MESSAGE_ECDSA_SIZE,
    PokeData
} from "../libs/Types.sol";

/**
 * @title VerifierECDSA
 * @custom:version 1.0.0
 *
 * @notice Chronicle Protocol low-latency verifier for ECDSA median-proof based
 *         v1 messages.
 *
 * @dev This IVerifier implementation is able to verify ECDSA median-prood based
 *      v1 wat messages.
 *
 * @custom:references
 *      - [EIP-2098]: https://eips.ethereum.org/EIPS/eip-2098
 *      - [Median]: https://github.com/makerdao/median/blob/0316acd5a97fbd6c3d23b159b3d329f99ead3405/src/median.sol
 *
 * @author Chronicle Labs, Inc
 * @custom:security-contact security@chroniclelabs.org
 */
contract VerifierECDSA is IVerifierECDSA, Auth {
    /// @dev WatConfig defines the security configuration for a wat.
    struct WatConfig {
        /// @dev The bloom of validators lifted.
        uint bloom;
        /// @dev The bar security parameter.
        uint8 bar;
        /// @dev The timestamp the config got activated.
        uint32 born;
    }

    /// @dev Tuple of a wat's current and previous config.
    ///
    /// @dev The previous config MAY be used during the grace period after a
    ///      config update.
    struct WatConfigTuple {
        /// @dev The current valid config.
        WatConfig cur;
        /// @dev The last config, valid only during the grace period after a
        ///      config update.
        WatConfig last;
    }

    //--------------------------------------------------------------------------
    // Constants and Immutables

    /// @dev Mask to receive an ECDSA's s value from an [EIP-2098] compact
    ///      signature representation.
    ///
    ///      Equals `(1 << 255) - 1`.
    bytes32 internal constant _EIP2098_MASK =
        0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

    /// @dev The low-latency message version the verifier supports.
    uint8 internal constant _VERSION = 1;

    /// @dev The low-latency verification scheme the verifier supports.
    uint8 internal constant _SCHEME = 1;

    /// @dev The entrypoint from which the verifier accepts verify requests.
    ///
    /// @custom:invariant Only entrypoint can call verify functions
    ///     msg.sig == "tryVerify" → msg.sender == _ENTRYPOINT
    address internal immutable _ENTRYPOINT;

    //--------------------------------------------------------------------------
    // Storage

    /// @dev Stores the configs for each wat.
    ///
    /// @dev Additionally to the current wat's config its last config is stored
    ///      to allow for a grace period after a config update. For more info,
    ///      see `_gracePeriod`.
    ///
    /// @custom:invariant Empty wat has no config
    ///     _cfgs[bytes32("")].cur.born == 0
    ///   ∧ _cfgs[bytes32("")].last.born == 0
    ///
    /// @custom:invariant Current config is never born earlier than last config
    ///   ∀ cfg ∊ _cfgs: cfg.cur.born >= cfg.last.born
    ///
    /// @custom:invariant Bar and bloom must both be zero or both be non-zero
    ///   ∀ cfg ∊ _cfgs:   (cfg.cur.bar  == 0) ↔ (cfg.cur.bloom  == 0)
    ///                  ∧ (cfg.last.bar == 0) ↔ (cfg.last.bloom == 0)
    ///
    /// @custom:invariant Config can only be updated via `setConfig`
    ///   ∀ cfg ∊ _cfgs: preTx(cfg.cur.born) != postTx(cfg.cur.born)
    ///                    → msg.sig == "setConfig"
    ///
    /// @custom:invariant Last config can only be set to current config
    ///   ∀ cfg ∊ _cfgs: preTx(cfg.last) != postTx(cfg.last)
    ///                    → postTx(cfg.last) = preTx(cfg.cur)
    mapping(bytes32 => WatConfigTuple) _cfgs;

    /// @dev The set of global validators indexed via their 1-byte identifier.
    ///
    /// @custom:invariant Validators are indexed via their 1-byte identifier
    ///   ∀ id ∊ Uint8: _validators[id] != 0 → validators[id] >> 152 == id
    address[256] internal _validators;

    /// @dev The bloom of the global set of validators.
    ///
    /// @custom:invariant Bloom encodes _validators.
    ///     ∀ id ∊ Uint8: _validators[id] != 0 ↔ _bloom & (1 << id) != 0
    uint internal _bloom;

    /// @dev The grace period during which both wat configs, the current and
    ///      last one, are valid.
    ///
    /// @dev The grace period allows to successfully verify wat messages already
    ///      in transit during a config update and thereby weakens the
    ///      offchain's config update requirements from hard real-time to soft
    ///      soft real-time.
    ///
    /// @dev Note that offboarded wats do not have a grace period!
    uint16 internal _gracePeriod;

    /// @dev The staleness threshold defining after which age a validator
    ///      message is deemed invalid.
    ///
    /// @dev Note that if a single validator message included in a wat message,
    ///      ie a single ECDSA signed poke data included in a median proof, is
    ///      stale the whole message is considered invalid.
    uint16 internal _stalenessThreshold;

    //--------------------------------------------------------------------------
    // Constructor

    constructor(address initialAuthed, address entrypoint_)
        payable
        Auth(initialAuthed)
    {
        _ENTRYPOINT = entrypoint_;
    }

    //--------------------------------------------------------------------------
    // IVerifier Verify Functionality

    /// @inheritdoc IVerifier
    ///
    /// @custom:invariant Reverts iff out of gas.
    function tryVerify(bytes calldata watMessage)
        external
        view
        returns (bytes4, bytes32, uint, uint)
    {
        bytes4 err;

        // Fail if caller not entrypoint.
        if (msg.sender != _ENTRYPOINT) {
            return (NotEntrypoint.selector, bytes32(""), 0, 0);
        }

        // Decode header from wat message.
        WatMessageHeader memory header;
        (err, header) = _tryDecodeHeader(watMessage);
        if (err != NO_ERR) {
            return (err, bytes32(""), 0, 0);
        }
        // assert(header.wat != bytes32(""));
        // assert(header.bar != 0);

        // Initialize loop variables.
        //
        // Let bloom encode the processed set of validators.
        uint bloom;
        // Let oldest be the oldest processed validator message's age.
        uint oldest = type(uint).max;

        // Create additional scope to counteract stack-to-deep during non
        // --via-ir compilation.
        {
            // Let valMessage be the current validator message.
            ValidatorMessageECDSA memory valMessage;
            // Let last be the last processed validator message's val.
            uint last;

            // First prove coherence of wat message.
            //
            // Note that verification of wat message's conformity to its respective
            // config is performed afterwards.
            for (uint i; i < header.bar; i++) {
                // Cast i to uint8 without performing overflow check.
                //
                // Note that loop is bounded by header's bar field which is of type
                // uint8.
                uint8 index;
                assembly ("memory-safe") {
                    index := i
                }

                // Decode i'th validator message from wat message.
                valMessage = _decodeValidatorMessage(watMessage, index);

                // Fail if validator message from the future.
                if (valMessage.pokeData.age > block.timestamp) {
                    return (FutureMessage.selector, bytes32(""), 0, 0);
                }

                // Fail if validator message stale.
                //
                // Unchecked because the only protected operation performed is a
                // substraction from block.timestamp with the validator message's
                // age which is guaranteed to be less than or equal to
                // block.timestamp.
                unchecked {
                    uint staleness = block.timestamp - valMessage.pokeData.age;
                    if (staleness > _stalenessThreshold) {
                        return (StaleMessage.selector, bytes32(""), 0, 0);
                    }
                }

                // Recover signer and compute respective id.
                address signer = _recover(header.wat, valMessage);
                uint8 signerId = uint8(uint160(signer) >> 152);

                // Fail if signer not a validator.
                //
                // Note that this check succeeds if signer is the zero address
                // and _validators[0] == address(0), ie the 0x00 validator not
                // being lifted.
                if (_validators[signerId] != signer) {
                    return (NotAValidator.selector, bytes32(""), 0, 0);
                }

                // Fail if double signing attempted.
                if (bloom & (1 << signerId) != 0) {
                    return (DoubleSigningAttempted.selector, bytes32(""), 0, 0);
                }

                // Fail if validator messages not in ascending order based on val.
                if (valMessage.pokeData.val < last) {
                    return (MessagesNotSorted.selector, bytes32(""), 0, 0);
                }

                // Update loop variables.
                bloom |= 1 << signerId;
                last = valMessage.pokeData.val;
                oldest = oldest < valMessage.pokeData.age
                    ? oldest
                    : valMessage.pokeData.age;
            }
        }
        // assert(bloom != 0);

        // Fail if zero address used as signer.
        //
        // Note that the zero address signer check is performed outside the
        // loop to reduce the check's cost from O(n) to O(1).
        if (bloom & 1 == 1 && _validators[0] == address(0)) {
            return (SignerIsZeroAddress.selector, bytes32(""), 0, 0);
        }

        // Verify wat message conforms to its respective config.
        //
        // Note that this check is performed after the loop to efficiently
        // verify wat message's validators set is a subset of the wat config's
        // validator set. Note that this check can only be performed in O(1)
        // once the wat message's bloom is constructed.
        if (!_verifyConfig(header.wat, header.bar, bloom)) {
            return (ConfigInvalid.selector, bytes32(""), 0, 0);
        }

        // Let wat message's val be the val of the median's validator message.
        uint val = _median(watMessage, header.bar);

        // Let val's age be the age of the oldest validator message.
        uint age = oldest;

        return (NO_ERR, header.wat, val, age);
    }

    /// @dev Returns whether bar `bar` and bloom `bloom` is an acceptable config
    ///      for wat `wat`.
    ///
    /// @dev Whether a config is acceptable is defined as:
    ///
    ///         !offboarded && (matchesCur || (inGracePeriod && matchesLast)
    ///
    ///      where:
    ///         offboarded    : Whether wat's current config is zero
    ///         matchesCur    : Whether bar equals current config's bar and
    ///                         bloom is a subset of current config's bloom
    ///         inGracePeriod : Whether current config is in grace period
    ///         matchesLast   : Whether bar equals last config's bar and bloom
    ///                         is a subset of last config's bloom
    ///
    /// @custom:invariant Reverts iff out of gas.
    function _verifyConfig(bytes32 wat, uint8 bar, uint bloom)
        internal
        view
        returns (bool)
    {
        // assert(wat != bytes32(""));
        // assert(bar != 0);
        // assert(bloom != 0);

        // Load current config from storage.
        WatConfig memory cur = _cfgs[wat].cur;

        // Succeed if wat's current config matches given bar and bloom.
        //
        // Note that explicitly checking whether cur config exists is performed
        // after this check to optimize the happy path. Note that this is
        // possible due to the guarantee that bar is non-zero.
        if ((bloom | cur.bloom) == cur.bloom && bar == cur.bar) {
            return true;
        }

        // Fail if current config is zero, ie wat not supported.
        //
        // Note that there is no grace period when a wat is offboarded.
        if (cur.bar == 0) {
            return false;
        }

        // Fail if current config not in grace period, ie only current config
        // deemed valid.
        //
        // Unchecked because the only protected operation performed is a
        // substraction from block.timestamp with cur.born which is guaranteed
        // to be less than or equal to block.timestamp.
        unchecked {
            bool inGracePeriod = (block.timestamp - cur.born) <= _gracePeriod;
            if (!inGracePeriod) {
                return false;
            }
        }

        // If current config in grace period the last config may also be valid.
        //
        // Note that explicitly checking whether last config exists can be
        // abdicated due to the guarantee that bar is non-zero.
        WatConfig memory last = _cfgs[wat].last;
        if ((bloom | last.bloom) == last.bloom && bar == last.bar) {
            return true;
        }

        // Otherwise config is invalid.
        return false;
    }

    /// @custom:invariant Reverts iff out of gas.
    function _tryDecodeHeader(bytes calldata watMessage)
        internal
        pure
        returns (bytes4, WatMessageHeader memory)
    {
        WatMessageHeader memory header;

        // Note that checking whether wat message's length is sufficient to hold
        // at least the header is abdicated. This check MUST have been performed
        // by the entrypoint already in oder to _correctly_ forward messages.
        //
        // Nevertheless, note that reading non-existing calldata does not revert
        // but rather returns zero.
        //
        // require(
        //     watMessage.length < WAT_MESSAGE_HEADER_BYTE_SIZE,
        //     "internal error: entrypoint did not verify wat message's header"
        // );

        // Load both words from calldata.
        uint word0;
        uint word1;
        assembly ("memory-safe") {
            word0 := calldataload(watMessage.offset)
            word1 := calldataload(add(watMessage.offset, 0x20))
        }

        // Extract fields.
        //
        // Note that masking is not necessary due to casting.
        header.version = uint8(word0 >> 248);
        header.scheme = uint8(word0 >> 240);
        header.bar = uint8(word0 >> 232);
        header.wat = bytes32(word1);

        // Fail if version or scheme mismatch.
        if (header.version != _VERSION) {
            return (VersionMismatch.selector, header);
        }
        if (header.scheme != _SCHEME) {
            return (SchemeMismatch.selector, header);
        }

        // Fail if bar or wat zero.
        if (header.bar == 0) {
            return (BarIsZero.selector, header);
        }
        if (header.wat == 0) {
            return (WatIsZero.selector, header);
        }

        return (NO_ERR, header);
    }

    /// @custom:invariant Reverts iff out of gas.
    function _decodeValidatorMessage(bytes calldata watMessage, uint8 index)
        internal
        pure
        returns (ValidatorMessageECDSA memory)
    {
        uint offset = _computeValidatorMessageOffset(watMessage, index);

        // Read validator message's (val, age) tuple.
        uint valAndAge;
        assembly ("memory-safe") {
            valAndAge := calldataload(offset)
        }

        // Note that masking is not necessary due to casting.
        uint128 val = uint128(valAndAge >> 128);
        uint32 age = uint32(valAndAge >> 96);

        // Read and decompress validator message's EIP-2098 compressed ECDSA
        // signature.
        uint8 v;
        bytes32 r;
        bytes32 s;
        assembly ("memory-safe") {
            r := calldataload(add(0x20, offset))
            let yParityAndS := calldataload(add(offset, 0x40))

            // Receive s via masking yParityAndS with EIP-2098 mask.
            s := and(yParityAndS, _EIP2098_MASK)

            // Receive v via reading yParity, encoded in the last bit, and
            // adding 27.
            //
            // Note that yParity ∊ {0, 1} which cannot overflow by adding 27.
            v := add(shr(255, yParityAndS), 27)
        }

        return ValidatorMessageECDSA(PokeData(val, age), v, r, s);
    }

    /// @custom:invariant Reverts iff out of gas.
    function _median(bytes calldata watMessage, uint8 bar)
        internal
        pure
        returns (uint)
    {
        // assert(bar != 0);

        uint8 mid = bar >> 1;
        uint offset = _computeValidatorMessageOffset(watMessage, mid);

        // Read validator message's (val, age) tuple.
        uint valAndAge;
        assembly ("memory-safe") {
            valAndAge := calldataload(offset)
        }

        // Return only validator message's val.
        //
        // Note that masking is not necessary due to casting.
        return uint128(valAndAge >> 128);
    }

    /// @custom:invariant Reverts iff out of gas.
    function _computeValidatorMessageOffset(
        bytes calldata watMessage,
        uint8 index
    ) internal pure returns (uint) {
        // Note that index is the index'th validator message in given wat
        // message. Therefore, the offset to the index'th validator message MUST
        // be less than the total calldatasize, allowing computing the offset
        // via unchecked arithmetic.
        uint offset;
        unchecked {
            // Let initial offset be the offset to the first validator message.
            uint initialOffset;
            assembly ("memory-safe") {
                // forgefmt: disable-next-item
                initialOffset := add(
                    watMessage.offset,
                    WAT_MESSAGE_HEADER_BYTE_SIZE
                )
            }

            // Let dynamic offset be the offset from the first validator message
            // to the index'th validator message.
            uint dynamicOffset = uint(index) * VALIDATOR_MESSAGE_ECDSA_SIZE;
            // Note that type(uint8).max * VALIDATOR_MESSAGE_ECDSA_SIZE = 24,480.
            // assert(dynamicOffset <= 24_480);

            offset = initialOffset + dynamicOffset;
        }

        // uint calldatasize_;
        // assembly ("memory-safe") {
        //     calldatasize_ := calldatasize()
        // }
        // assert(offset < calldatasize_);

        return offset;
    }

    /// @dev Note that a ValidatorMessageECDSA signature scheme equals
    ///      Chronicle's legacy [Median] oracle scheme developed for MakerDAO.
    ///
    ///      This ensures validators don't have to sign the same data multiple
    ///      times.
    ///
    /// @custom:invariant Reverts iff out of gas.
    function _recover(bytes32 wat, ValidatorMessageECDSA memory valMessage)
        internal
        pure
        returns (address)
    {
        return ecrecover(
            keccak256(
                abi.encodePacked(
                    "\x19Ethereum Signed Message:\n32",
                    keccak256(
                        abi.encodePacked(
                            uint(valMessage.pokeData.val),
                            uint(valMessage.pokeData.age),
                            wat
                        )
                    )
                )
            ),
            valMessage.v,
            valMessage.r,
            valMessage.s
        );
    }

    //--------------------------------------------------------------------------
    // IVerifier Public View Functions

    /// @inheritdoc IVerifier
    function version() external pure returns (uint8) {
        return _VERSION;
    }

    /// @inheritdoc IVerifier
    function scheme() external pure returns (uint8) {
        return _SCHEME;
    }

    /// @inheritdoc IVerifier
    function entrypoint() external view returns (address) {
        return _ENTRYPOINT;
    }

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @inheritdoc IVerifierECDSA
    function wats(bytes32 wat) public view returns (bool) {
        if (wat == bytes32("")) {
            revert WatIsZero();
        }

        return _cfgs[wat].cur.bar != 0;
    }

    /// @inheritdoc IVerifierECDSA
    function config(bytes32 wat) external view returns (uint, uint) {
        if (!wats(wat)) {
            revert WatNotSupported();
        }

        WatConfig memory cur = _cfgs[wat].cur;

        return (cur.bar, cur.bloom);
    }

    /// @inheritdoc IVerifierECDSA
    function validators() external view returns (address[] memory) {
        address[] memory validators_ = new address[](256);

        uint bloom = _bloom;
        uint ctr;
        for (uint i; i < 256; i++) {
            if (bloom & (1 << i) == 0) {
                continue;
            }

            address validator = _validators[i];
            // assert(validator != address(0));
            // assert(uint(validator) >> 152 == i);

            validators_[ctr++] = validator;
        }

        assembly ("memory-safe") {
            mstore(validators_, ctr)
        }

        return validators_;
    }

    /// @inheritdoc IVerifierECDSA
    function validators(address validator) external view returns (bool) {
        uint8 validatorId = uint8(uint160(validator) >> 152);

        return _validators[validatorId] == validator;
    }

    /// @inheritdoc IVerifierECDSA
    function validators(bytes32 wat) external view returns (address[] memory) {
        if (!wats(wat)) {
            revert WatNotSupported();
        }

        address[] memory validators_ = new address[](256);

        uint bloom = _cfgs[wat].cur.bloom;
        uint ctr;
        for (uint i; i < 256; i++) {
            if (bloom & (1 << i) == 0) {
                continue;
            }

            address validator = _validators[i];

            // Note that the following invariants are NOT enforced onchain.
            // For more info, see `drop()`.
            //
            // assert(validator != address(0));
            // assert(uint(validator) >> 152 == i);

            validators_[ctr++] = validator;
        }

        assembly ("memory-safe") {
            mstore(validators_, ctr)
        }

        return validators_;
    }

    /// @inheritdoc IVerifierECDSA
    function validators(bytes32 wat, address validator)
        external
        view
        returns (bool)
    {
        if (!wats(wat)) {
            revert WatNotSupported();
        }

        uint8 validatorId = uint8(uint160(validator) >> 152);

        // Note to not only verify validator is part of wat's bloom but also
        // part of the global bloom. This is necessary because `drop()` does
        // not verify whether a validator is lifted on a wat before dropping.
        return _validators[validatorId] == validator
            && _cfgs[wat].cur.bloom & (1 << validatorId) != 0;
    }

    /// @inheritdoc IVerifierECDSA
    function gracePeriod() external view returns (uint16) {
        return _gracePeriod;
    }

    /// @inheritdoc IVerifierECDSA
    function stalenessThreshold() external view returns (uint16) {
        return _stalenessThreshold;
    }

    //--------------------------------------------------------------------------
    // Auth'ed Functionality

    /// @inheritdoc IVerifierECDSA
    function setGracePeriod(uint16 gracePeriod_) external auth {
        require(gracePeriod_ != 0);

        if (_gracePeriod != gracePeriod_) {
            emit GracePeriodUpdated(msg.sender, _gracePeriod, gracePeriod_);
            _gracePeriod = gracePeriod_;
        }
    }

    /// @inheritdoc IVerifierECDSA
    function setStalenessThreshold(uint16 stalenessThreshold_) external auth {
        require(stalenessThreshold_ != 0);

        if (_stalenessThreshold != stalenessThreshold_) {
            emit StalenessThresholdUpdated(
                msg.sender, _stalenessThreshold, stalenessThreshold_
            );
            _stalenessThreshold = stalenessThreshold_;
        }
    }

    /// @inheritdoc IVerifierECDSA
    function setConfig(bytes32 wat, uint8 bar, uint bloom) external auth {
        require(wat != bytes32(""));

        // Fail if exclusively bar or bloom zero.
        require((bar == 0) == (bloom == 0));

        // Fail if config's validator set not a subset of global validator set.
        require(_bloom | bloom == _bloom);

        // Cache old config.
        WatConfig memory oldCfg = _cfgs[wat].cur;

        // Update configs.
        _cfgs[wat].cur = WatConfig(bloom, bar, uint32(block.timestamp));
        _cfgs[wat].last = oldCfg;

        emit ConfigUpdated(
            msg.sender, wat, oldCfg.bar, oldCfg.bloom, bar, bloom
        );
    }

    /// @inheritdoc IVerifierECDSA
    function lift(address validator) external auth {
        _lift(validator);
    }

    /// @inheritdoc IVerifierECDSA
    function lift(address[] memory validators_) external auth {
        for (uint i; i < validators_.length; i++) {
            _lift(validators_[i]);
        }
    }

    function _lift(address validator) internal {
        require(validator != address(0));

        uint8 validatorId = uint8(uint160(validator) >> 152);
        if (_validators[validatorId] == address(0)) {
            // assert(_bloom & (1 << validatorId) == 0);

            _validators[validatorId] = validator;
            _bloom |= 1 << validatorId;

            emit ValidatorLifted(msg.sender, validator);
        } else {
            // Note to be idempotent. However, disallow updating an id's validator
            // via lifting without dropping the previous validator.
            require(_validators[validatorId] == validator);
        }
    }

    /// @inheritdoc IVerifierECDSA
    function drop(uint8 validatorId) external auth {
        _drop(validatorId);
    }

    /// @inheritdoc IVerifierECDSA
    function drop(uint8[] memory validatorIds) external auth {
        for (uint i; i < validatorIds.length; i++) {
            _drop(validatorIds[i]);
        }
    }

    /// @dev Note that it is possible to drop a validator that is lifted for a
    ///      wat, ie part of a wat's bloom config. However, note that any ECDSA
    ///      signature verification for a dropped validator fails.
    function _drop(uint8 validatorId) internal {
        if (_validators[validatorId] != address(0)) {
            // assert(_bloom & (1 << validator) != 0);

            emit ValidatorDropped(msg.sender, _validators[validatorId]);

            _validators[validatorId] = address(0);
            _bloom &= ~(1 << validatorId);
        }
    }
}

/**
 * @dev Contract overwrite to deploy contract instances with specific naming.
 *
 *      For more info, see docs/Deployment.md.
 */
contract VerifierECDSA_1 is VerifierECDSA {
    constructor(address initialAuthed, address entrypoint_)
        VerifierECDSA(initialAuthed, entrypoint_)
    {}
}
