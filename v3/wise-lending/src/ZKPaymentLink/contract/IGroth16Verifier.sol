// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/**
 * @title IGroth16Verifier
 * @notice Interface for the auto-generated Groth16 Solidity verifier produced by snarkjs.
 *
 * Generate the concrete implementation by running:
 *   cd circuits && ./build.sh
 *
 * The generated contract will be written to contract/Groth16Verifier.sol.
 *
 * Public signal layout (must match circuit output order):
 *   _pubSignals[0] = depositCommitment  (Poseidon(nullifier, secret))
 *   _pubSignals[1] = nullifierHash      (Poseidon(nullifier, depositId, chainId))
 *   _pubSignals[2] = recipient          (uint160 of recipient address)
 *   _pubSignals[3] = depositId          (the specific deposit this proof is bound to)
 *   _pubSignals[4] = chainId            (EVM chain ID — prevents cross-chain replay)
 */
interface IGroth16Verifier {
    function verifyProof(
        uint256[2]    calldata _pA,
        uint256[2][2] calldata _pB,
        uint256[2]    calldata _pC,
        uint256[5]    memory _pubSignals
    ) external view returns (bool);
}
