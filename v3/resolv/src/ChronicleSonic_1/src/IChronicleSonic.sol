// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IChronicleSonic {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice Thrown if verification failed.
    /// @dev The VerificationError encapsulates the error returned by the
    ///      IVerifier implementation.
    /// @param err The error thrown by the IVerifier implementation.
    error VerificationError(bytes4 err);

    /// @notice Thrown if wat message's length is insufficient.
    error WatMessageLengthInsufficient();

    /// @notice Thrown if version not supported.
    error VersionNotSupported();

    /// @notice Thrown if scheme not supported.
    error SchemeNotSupported();

    /// @notice Thrown if version is zero.
    error VersionIsZero();

    /// @notice Thrown if scheme is zero.
    error SchemeIsZero();

    /// @notice Thrown if wat is zero.
    error WatIsZero();

    /// @notice Thrown if bar is zero.
    error BarIsZero();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Emitted if new version supported.
    /// @param caller The caller's address.
    /// @param version The new version supported.
    event NewVersionSupported(address indexed caller, uint8 version);

    /// @notice Emitted when a version's scheme updated.
    /// @param caller The caller's address.
    /// @param version The version who's scheme got updated.
    /// @param scheme The scheme updated.
    /// @param oldVerifier The scheme's old verifier.
    /// @param newVerifier The scheme's new verifier.
    event SchemeUpdated(
        address indexed caller,
        uint8 version,
        uint8 scheme,
        address oldVerifier,
        address newVerifier
    );

    //--------------------------------------------------------------------------
    // Verify Functionality

    /// @notice Returns the verified value and corresponding age from wat
    ///         message `watMessage`.
    ///
    /// @dev Reverts if:
    ///      - `watMessage`'s length insufficient
    ///      - `watMessage`'s bar is zero
    ///      - `watMessage`'s wat is zero
    ///      - `watMessage`'s version is zero
    ///      - `watMessage`'s scheme is zero
    ///      - `watMessage`'s version not supported
    ///      - `watMessage`'s scheme not supported
    ///      - `watMessage`'s verification failed
    ///
    /// @param watMessage The encoded wat message.
    /// @return wat The wat of the wat message.
    /// @return val The verified value of the wat message.
    /// @return age The age of the value of the wat message.
    function verify(bytes calldata watMessage)
        external
        view
        returns (bytes32 wat, uint val, uint age);

    /// @notice Tries to return the verified value and corresponding age from
    ///         wat message `watMessage`.
    ///
    /// @param watMessage The encoded wat message.
    /// @return ok Whether the verification suceeded.
    /// @return wat The wat of the wat message.
    /// @return val The verified value of the wat message if ok, zero otherwise.
    /// @return age The age of the value of the wat message if ok, zero
    ///             otherwise.
    function tryVerify(bytes calldata watMessage)
        external
        view
        returns (bool ok, bytes32 wat, uint val, uint age);

    /// @notice Returns the verified values and corresponding ages from the list
    ///         of wat messages `watMessages`.
    ///
    /// @dev Reverts if:
    ///      - Any wat message in `watMessages`'s length insufficient
    ///      - Any wat message in `watMessages`'s bar is zero
    ///      - Any wat message in `watMessages`'s wat is zero
    ///      - Any wat message in `watMessages`'s version is zero
    ///      - Any wat message in `watMessages`'s scheme is zero
    ///      - Any wat message in `watMessages`'s version not supported
    ///      - Any wat message in `watMessages`'s scheme not supported
    ///      - Any wat message in `watMessages`'s verification failed
    ///
    /// @param watMessages The list of encoded wat messages.
    /// @return wats The wats of the wat messages.
    /// @return vals The verified values of the wat messages.
    /// @return ages The age of the values of the wat messages.
    function verify(bytes[] calldata watMessages)
        external
        view
        returns (bytes32[] memory wats, uint[] memory vals, uint[] memory ages);

    /// @notice Tries to return the verified values and corresponding ages from
    ///         the list of wat messages `watMessages`.
    ///
    /// @param watMessages The list of encoded wat messages.
    /// @return oks Whether the respective wat message's verification suceeded.
    /// @return wats The wats of the wat messages.
    /// @return vals The verified value of the respective wat message if its
    ///              verification suceeded, zero otherwise.
    /// @return ages The age of the value of the respective wat message if its
    ///              verification suceeded, zero otherwise.
    function tryVerify(bytes[] calldata watMessages)
        external
        view
        returns (
            bool[] memory oks,
            bytes32[] memory wats,
            uint[] memory vals,
            uint[] memory ages
        );

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @notice Returns the latest version supported.
    /// @return version The latest version supported.
    function latestVersion() external view returns (uint8 version);

    /// @notice Returns whether version `version_` is supported.
    ///
    /// @dev Reverts if:
    ///      - `version_` is zero
    ///
    /// @param version_ The version to check support for.
    /// @return supported Whether version `version` is supported.
    function version(uint8 version_) external view returns (bool supported);

    /// @notice Returns the list of supported schemes for version `version_`.
    ///
    /// @dev Reverts if:
    ///      - `version_` is zero
    ///      - `version_` not supported
    ///
    /// @param version_ The version to return its list of supported schemes.
    /// @return schemes_ The list of schemes supported for version `version_`.
    function schemes(uint8 version_)
        external
        view
        returns (uint8[] memory schemes_);

    /// @notice Returns the IVerifier implementation for version `version_`
    ///         and scheme `scheme_`.
    ///
    /// @dev Reverts if:
    ///      - `version_` is zero
    ///      - `version_` not supported
    ///      - `scheme_` is zero
    ///
    /// @param version_ The version to return its scheme's IVerifier
    ///                 implementation.
    /// @param scheme_ The scheme of the version to return its IVerifier
    ///                implementation.
    /// @return verifier_ The IVerifier implementation for version `version_`
    ///                   and scheme `scheme_`.
    function verifier(uint8 version_, uint8 scheme_)
        external
        view
        returns (address verifier_);

    //--------------------------------------------------------------------------
    // Auth'ed Functionality

    /// @notice Adds support for version `version_`.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Reverts if:
    ///      - version_ == 256
    ///      - version_ greater than latestVersion() + 1
    function supportVersion(uint8 version_) external;

    /// @notice Set the IVerifier implementation for version `version_` and
    ///         scheme `scheme_`.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Note that this function is used to add initial support for a new
    ///      scheme via adding a verifier, updating a scheme's verifier, and
    ///      removing a scheme's supported via setting its verifier to the zero
    ///      address.
    ///
    /// @dev Reverts if:
    ///      - `version_` is zero
    ///      - `scheme_` is zero
    ///      - `version_` not supported
    ///      - `verifier` is not zero address and `verifier`'s entrypoint does
    ///        not this entrypoint.
    ///      - `verifier` is not zero address and `verifier`'s version does not
    ///        match `version_`
    ///      - `verifier` is not zero address and `verifier`'s scheme does not
    ///        match `scheme_`
    ///
    /// @param version_ The version to set IVerifier implementation for.
    /// @param scheme_ The scheme to set IVerifier implementation for.
    /// @param verifier The IVerifier implementation.
    function setScheme(uint8 version_, uint8 scheme_, address verifier)
        external;
}
