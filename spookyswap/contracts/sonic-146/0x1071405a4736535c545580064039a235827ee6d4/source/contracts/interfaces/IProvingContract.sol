// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Proving contract represents a contract which use the proof verifier.
/// Used for updating the proof verifier address.
interface IProvingContract {
    function proofVerifier() external view returns(address);
    function setProofVerifier(address proofVerifier) external;
    function setExitAdministrator(address exitAdministrator) external;
}
