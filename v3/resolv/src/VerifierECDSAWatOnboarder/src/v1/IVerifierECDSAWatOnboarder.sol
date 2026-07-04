// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IVerifierECDSAWatOnboarder {
    /// @notice Thrown if attempted to onboard wat that is already onboarded.
    error WatAlreadyOnboarded();

    /// @notice Thrown if given bar or bloom is zero.
    error BarOrBloomZero();

    /// @notice Onboards wat `wat` on v1/VerifierECDSA instance `verifier` with
    ///         bar `bar` and bloom `bloom`.
    ///
    /// @dev Notet that bar must be non-zero and bloom a non-empty subset of the
    ///      verifier's global validator set.
    ///
    /// @dev Reverts if:
    ///      - Wat already supported
    ///      - Contract not auth'ed on v1/IVerifierECDSA instance `verifier`
    ///      - Bar zero
    ///      - Bloom zero
    ///
    /// @dev Only callable by auth'ed addresses.
    ///
    /// @param verifierECDSA The v1/IVerifierECDSA instance.
    /// @param wat The wat to onboard.
    /// @param bar The wat's bar configuration.
    /// @param bloom The wat's validator set as bloom.
    function onboard(address verifierECDSA, bytes32 wat, uint8 bar, uint bloom)
        external;
}
