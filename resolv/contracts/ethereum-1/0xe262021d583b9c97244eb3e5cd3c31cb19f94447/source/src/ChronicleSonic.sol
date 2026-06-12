// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {Auth} from "chronicle-std/auth/Auth.sol";

import {IChronicleSonic} from "./IChronicleSonic.sol";
import {IVerifier} from "./IVerifier.sol";

import {
    NO_ERR,
    WatMessageHeader,
    WAT_MESSAGE_HEADER_BYTE_SIZE
} from "./libs/Types.sol";

/**
 * @title ChronicleSonic
 * @custom:version 1.0.0
 *
 * @notice Entrypoint to verify Chronicle Protocol low-latency oracle messages
 *
 * @dev This contract provides single and bulk functions to verify wat
 *      messages, ie messages that provide a verifiable (val, age) tuple, for a
 *      wat.
 *
 *      Both, single and bulk, verify functions come in two flavours, verify()
 *      and tryVerify(). While the verify() functions revert on errors the
 *      tryVerify() functions do not revert but instead return a bool indicating
 *      the function's success.
 *
 * @author Chronicle Labs, Inc
 * @custom:security-contact security@chroniclelabs.org
 */
contract ChronicleSonic is IChronicleSonic, Auth {
    /// @dev Version encapsulates a version's list of IVerifier implementations
    ///      for up to 256 schemes.
    ///
    ///      The latest supported scheme is stored to enable quick lookup of all
    ///      supported schemes via providing the upper bound of IVerifier
    ///      implementations to iterate.
    struct Version {
        /// @dev The verifiers array provides the IVerifier implementation
        ///      for a scheme.
        ///
        /// @dev Note that scheme 0 is invalid.
        ///
        /// @custom:invariant Scheme 0 does not have a verifier.
        ///     verifiers[0] == address(0)
        /// @custom:invariant Verifier's upper bound is latestScheme.
        ///     ∀ scheme ∊ Uint8: scheme > latestScheme →
        ///         verifiers[scheme] == address(0)
        address[256] verifiers;
        /// @dev The latestScheme field provides the latest scheme supported by
        ///      the version.
        uint8 latestScheme;
    }

    /// @dev The _versions array manages the IVerifier implementations, ie
    ///      schemes, for each version.
    ///
    /// @dev Note that version 0 is invalid.
    ///
    /// @dev Supports a maximum of 254 versions.
    ///
    /// @custom:invariant Versions are added incrementally.
    ///     preTx(latestVersion()) != postTx(latestVersion())
    ///         → preTx(latestVersion()) + 1 = postTx(latestVersion())
    /// @custom:invariant Version can only be incremented by auth'ed caller.
    ///     preTx(latestVersion()) != postTx(latestVersion())
    ///         → authed(msg.sender)
    /// @custom:invariant Maximum supported version is 254.
    ///     latestVersion() <= 254
    /// @custom:invariant Version 0 does not have a scheme.
    ///       _versions[0].latestScheme = 0
    ///     ∧ ∀ verifier ∊ _versions[0].verifiers: verifier == address(0)
    Version[] internal _versions;

    //--------------------------------------------------------------------------
    // Constructor

    constructor(address initialAuthed) payable Auth(initialAuthed) {
        // Ensure _versions.length > 0.
        _versions.push();
    }

    //--------------------------------------------------------------------------
    // Verify Functionality

    /// @inheritdoc IChronicleSonic
    function verify(bytes calldata watMessage)
        external
        view
        returns (bytes32, uint, uint)
    {
        bytes4 err;
        bytes32 wat;
        uint val;
        uint age;
        (err, wat, val, age) = _verify(watMessage);
        if (err != NO_ERR) {
            revert VerificationError(err);
        }

        return (wat, val, age);
    }

    /// @inheritdoc IChronicleSonic
    ///
    /// @custom:invariant Reverts iff out of gas.
    function tryVerify(bytes calldata watMessage)
        external
        view
        returns (bool, bytes32, uint, uint)
    {
        bytes4 err;
        bytes32 wat;
        uint val;
        uint age;
        (err, wat, val, age) = _verify(watMessage);
        if (err != NO_ERR) {
            return (false, bytes32(""), 0, 0);
        }

        return (true, wat, val, age);
    }

    /// @inheritdoc IChronicleSonic
    function verify(bytes[] calldata watMessages)
        external
        view
        returns (bytes32[] memory, uint[] memory, uint[] memory)
    {
        uint len = watMessages.length;
        bytes32[] memory wats = new bytes32[](len);
        uint[] memory vals = new uint[](len);
        uint[] memory ages = new uint[](len);

        for (uint i; i < len; i++) {
            bytes4 err;
            bytes32 wat;
            uint val;
            uint age;
            (err, wat, val, age) = _verify(watMessages[i]);
            if (err != NO_ERR) {
                revert VerificationError(err);
            }

            wats[i] = wat;
            vals[i] = val;
            ages[i] = age;
        }

        return (wats, vals, ages);
    }

    /// @inheritdoc IChronicleSonic
    ///
    /// @custom:invariant Reverts iff out of gas.
    function tryVerify(bytes[] calldata watMessages)
        external
        view
        returns (bool[] memory, bytes32[] memory, uint[] memory, uint[] memory)
    {
        uint len = watMessages.length;
        bool[] memory oks = new bool[](len);
        bytes32[] memory wats = new bytes32[](len);
        uint[] memory vals = new uint[](len);
        uint[] memory ages = new uint[](len);

        for (uint i; i < len; i++) {
            bytes calldata watMessage = watMessages[i];

            // Create additional scope to counteract stack-to-deep during non
            // --via-ir compilation.
            {
                bytes4 err;
                bytes32 wat;
                uint val;
                uint age;
                (err, wat, val, age) = _verify(watMessage);
                if (err == NO_ERR) {
                    oks[i] = true;
                    wats[i] = wat;
                    vals[i] = val;
                    ages[i] = age;
                } else {
                    oks[i] = false;
                    wats[i] = bytes32("");
                    vals[i] = 0;
                    ages[i] = 0;
                }
            }
        }

        return (oks, wats, vals, ages);
    }

    /// @custom:invariant Reverts iff out of gas.
    function _verify(bytes calldata watMessage)
        internal
        view
        returns (bytes4, bytes32, uint, uint)
    {
        bytes4 err;

        // Decode header from wat message blob.
        WatMessageHeader memory header;
        (err, header) = _decodeHeader(watMessage);
        if (err != NO_ERR) {
            return (err, bytes32(""), 0, 0);
        }

        // Fail if bar or wat zero.
        //
        // Note that while IVerifier implementations are expected to fail for
        // invalid bar or wat settings, these checks are enabled as additional
        // defense mechanisms.
        if (header.bar == 0) {
            return (BarIsZero.selector, bytes32(""), 0, 0);
        }
        if (header.wat == bytes32("")) {
            return (WatIsZero.selector, bytes32(""), 0, 0);
        }

        // Fail if version or scheme zero.
        if (header.version == 0) {
            return (VersionIsZero.selector, bytes32(""), 0, 0);
        }
        if (header.scheme == 0) {
            return (SchemeIsZero.selector, bytes32(""), 0, 0);
        }

        // Fail if version not supported.
        if (header.version > latestVersion()) {
            return (VersionNotSupported.selector, bytes32(""), 0, 0);
        }

        // Load verifier implementation for (version, scheme) setting.
        //
        // Note to fail if verifier not set, ie scheme not supported.
        address verifier_ = _versions[header.version].verifiers[header.scheme];
        if (verifier_ == address(0)) {
            return (SchemeNotSupported.selector, bytes32(""), 0, 0);
        }

        // Try to verify wat message via the verifier implementation.
        bytes32 wat;
        uint val;
        uint age;
        (err, wat, val, age) = IVerifier(verifier_).tryVerify(watMessage);
        if (err == NO_ERR) {
            return (NO_ERR, wat, val, age);
        } else {
            return (err, bytes32(""), 0, 0);
        }
    }

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @inheritdoc IChronicleSonic
    function latestVersion() public view returns (uint8) {
        uint len = _versions.length;
        // assert(len != 0);
        // assert(len <= type(uint8).max);

        uint8 version_;
        unchecked {
            version_ = uint8(len - 1);
        }

        return version_;
    }

    /// @inheritdoc IChronicleSonic
    function version(uint8 version_) public view returns (bool) {
        if (version_ == 0) {
            revert VersionIsZero();
        }

        return version_ <= latestVersion();
    }

    /// @inheritdoc IChronicleSonic
    function schemes(uint8 version_) external view returns (uint8[] memory) {
        if (!version(version_)) {
            revert VersionNotSupported();
        }

        uint latestScheme_ = _versions[version_].latestScheme;
        if (latestScheme_ == 0) {
            return new uint8[](0);
        }

        uint8[] memory schemes_ = new uint8[](latestScheme_);
        uint ctr;
        for (uint i = 1; i <= latestScheme_; i++) {
            address verifier_ = _versions[version_].verifiers[i];
            if (verifier_ == address(0)) {
                continue;
            }

            schemes_[ctr++] = uint8(i);
        }

        assembly ("memory-safe") {
            mstore(schemes_, ctr)
        }

        return schemes_;
    }

    /// @inheritdoc IChronicleSonic
    function verifier(uint8 version_, uint8 scheme_)
        external
        view
        returns (address)
    {
        if (!version(version_)) {
            revert VersionNotSupported();
        }

        if (scheme_ == 0) {
            revert SchemeIsZero();
        }

        return _versions[version_].verifiers[scheme_];
    }

    //--------------------------------------------------------------------------
    // Auth'ed Functionality

    /// @inheritdoc IChronicleSonic
    function supportVersion(uint8 version_) external auth {
        // Require version to not exceed 255.
        require(version_ < type(uint8).max);

        // Return if version already supported, ie be idempotent.
        if (version_ <= latestVersion()) {
            return;
        }

        // Fail if version does not increase incrementally.
        require(version_ == latestVersion() + 1);

        // Support new version.
        _versions.push();
        emit NewVersionSupported(msg.sender, version_);
    }

    /// @inheritdoc IChronicleSonic
    function setScheme(uint8 version_, uint8 scheme_, address verifier_)
        external
        auth
    {
        // Require valid version and scheme.
        require(version_ != 0);
        require(scheme_ != 0);

        // Require supported version.
        require(version(version_));

        // If scheme is not being removed, require verifier's entrypoint,
        // version, and scheme to match.
        if (verifier_ != address(0)) {
            require(IVerifier(verifier_).entrypoint() == address(this));
            require(IVerifier(verifier_).version() == version_);
            require(IVerifier(verifier_).scheme() == scheme_);
        }

        // Return if no state change, ie be idempotent.
        address oldVerifier = _versions[version_].verifiers[scheme_];
        if (verifier_ == oldVerifier) {
            return;
        }

        // Update latestScheme field if necessary.
        uint8 latestScheme_ = _versions[version_].latestScheme;
        if (scheme_ > latestScheme_) {
            _versions[version_].latestScheme = scheme_;
        }

        // Update scheme's verifier.
        _versions[version_].verifiers[scheme_] = verifier_;
        emit SchemeUpdated(
            msg.sender, version_, scheme_, address(oldVerifier), verifier_
        );
    }

    //--------------------------------------------------------------------------
    // Internal Helpers

    /// @custom:invariant Reverts iff out of gas.
    function _decodeHeader(bytes calldata watMessage)
        internal
        pure
        returns (bytes4, WatMessageHeader memory)
    {
        WatMessageHeader memory header;

        // Fail if length insufficient.
        if (watMessage.length < WAT_MESSAGE_HEADER_BYTE_SIZE) {
            return (WatMessageLengthInsufficient.selector, header);
        }

        // Load both words from calldata.
        uint word0;
        uint word1;
        assembly ("memory-safe") {
            word0 := calldataload(watMessage.offset)
            word1 := calldataload(add(watMessage.offset, 0x20))
        }

        // Note that masking is not necessary due to casting.
        header.version = uint8(word0 >> 248);
        header.scheme = uint8(word0 >> 240);
        header.bar = uint8(word0 >> 232);
        header.wat = bytes32(word1);

        return (NO_ERR, header);
    }
}

/**
 * @dev Contract overwrite to deploy contract instances with specific naming.
 *
 *      For more info, see docs/Deployment.md.
 */
contract ChronicleSonic_1 is ChronicleSonic {
    constructor(address initialAuthed) ChronicleSonic(initialAuthed) {}
}
