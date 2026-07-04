// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title IDecoderAndSanitizer
/// @notice Interface for decoder/sanitizer contracts that validate calldata
///         and extract address parameters for approval matching.
interface IDecoderAndSanitizer {
    /// @notice Decodes calldata, extracts address parameters, runs sanitization checks.
    /// @param calldata_ Full calldata including selector
    /// @param caller The user's EOA address (address(this) in the delegation context)
    /// @return addressesFound abi.encodePacked(addr0, addr1, ..., addrN)
    ///         Must match the approval leaf's packedAddressConstraints.
    function decode(
        bytes calldata calldata_,
        address caller
    ) external view returns (bytes memory addressesFound);
}
