// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/// @title IRateVerifier
/// @notice Generic interface for ZK proof verifiers used by HemiBTCRateProvider.
/// @dev Each implementation wraps a specific proof system (SP1, RISC Zero, OpenVM,
///      etc.) and validates that the supplied proof attests to the given
///      totalSupply / totalTVL pair. Implementations MUST bind the proof to the
///      exact values passed in — accepting a proof for different values is a
///      critical security violation.
///      Implementations MUST support ERC-165 and return true for
///      type(IRateVerifier).interfaceId.
interface IRateVerifier is IERC165 {
    /// @notice Verify a ZK proof for a given supply/TVL snapshot.
    /// @param totalSupply The hemiBTC total supply the proof attests to.
    /// @param totalTVL    The total value locked the proof attests to.
    /// @param proof       Proof bytes whose format is defined by the implementer.
    /// @param extraData   Auxiliary data the verifier may need (e.g. public inputs,
    ///                    verification key, timestamp binding). The rate provider
    ///                    does not interpret this field.
    /// @return True if the proof is valid for the given totalSupply/totalTVL pair.
    ///         Implementations MAY revert instead of returning false on invalid
    ///         proofs; the rate provider handles both cases identically.
    function verify(
        uint256 totalSupply,
        uint256 totalTVL,
        bytes calldata proof,
        bytes calldata extraData
    ) external view returns (bool);
}
