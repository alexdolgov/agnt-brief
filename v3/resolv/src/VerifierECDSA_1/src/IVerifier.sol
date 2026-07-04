// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IVerifier {
    /// @notice Thrown if message verification requested by a different address
    ///         than the entrypoint.
    error NotEntrypoint();

    /// @notice Thrown if wat message's version does not match verifier's
    ///         version.
    error VersionMismatch();

    /// @notice Thrown if wat message's scheme does not match verifier's scheme.
    error SchemeMismatch();

    /// @notice Thrown if wat message's bar is zero.
    error BarIsZero();

    /// @notice Thrown if wat message's wat is zero.
    error WatIsZero();

    /// @notice Tries to verify wat message `watMessage`.
    ///
    /// @dev Only callable by entrypoint!
    ///
    /// @param watMessage The wat message to verify.
    /// @return err The error occured during verification, if any.
    /// @return wat The wat message's wat identifier.
    /// @return val The wat message's verified value.
    /// @return age The wat message's value's age.
    function tryVerify(bytes calldata watMessage)
        external
        view
        returns (bytes4 err, bytes32 wat, uint val, uint age);

    /// @notice The low-latency message version the verifier supports.
    /// @return version_ The verifier's low-latency message version supported.
    function version() external view returns (uint8 version_);

    /// @notice The low-latency message verification scheme the verifier
    ///         supports.
    /// @return scheme_ The verifier's low-latency verification scheme.
    function scheme() external view returns (uint8 scheme_);

    /// @notice The low-latency entrypoint contract from which the verifier
    ///         accepts verify requests.
    /// @return entrypoint_ The verifier's low-latency entrypoint.
    function entrypoint() external view returns (address entrypoint_);
}
