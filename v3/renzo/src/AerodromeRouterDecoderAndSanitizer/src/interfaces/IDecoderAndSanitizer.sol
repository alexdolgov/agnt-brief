// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title IDecoderAndSanitizer
/// @notice Interface for decoder/sanitizer contracts that validate calldata
///         and extract address parameters for approval matching.
interface IDecoderAndSanitizer {
    /// @notice Decodes calldata, extracts address parameters, runs sanitization checks.
    /// @param calldata_ Full calldata including selector
    /// @param auxData Optional sideband bytes for decoders that need data beyond
    ///        what the call's calldata carries (e.g. CoW order body for PreSign
    ///        validation). Most decoders ignore this and accept `0x`.
    /// @param caller The user's EOA address (address(this) in the delegation context)
    /// @return addressesFound abi.encodePacked(addr0, addr1, ..., addrN)
    ///         Must match the approval leaf's packedAddressConstraints.
    function decode(
        bytes calldata calldata_,
        bytes calldata auxData,
        address caller
    ) external view returns (bytes memory addressesFound);
}
