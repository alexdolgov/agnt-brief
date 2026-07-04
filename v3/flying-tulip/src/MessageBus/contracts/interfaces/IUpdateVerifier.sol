// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Update verifier provides a way to verify validators signatures on an update.
/// It provides access to the validators registry for the purpose of inter-chain synchronization.
interface IUpdateVerifier {
    struct Validator {
        uint256 id;
        address addr;
        uint256 weight;
    }

    /// Verify the state oracle update signatures
    function verifyUpdate(uint256 blockNum, bytes32 stateRoot, uint256 chainId, bytes calldata newValidators, address proofVerifier, address updateVerifier, address exitAdmin, bytes[] calldata signatures) external view returns (uint256[] memory);

    /// Write into the validators registry - reverts if the registry is readonly.
    function setValidators(bytes calldata newValidators) external;

    /// Get the highest validator id for purpose of iterating
    function lastValidatorId() external view returns(uint256);

    /// Get validator pubkey address by validator id
    function validatorAddress(uint256 index) external view returns(address);

    /// Get validator weight by validator address
    function validatorWeight(address addr) external view returns(uint256);

    /// Get validator id by validator pubkey address
    function validatorId(address addr) external view returns(uint256);

    /// Get weight of all registered validators
    function totalWeight() external view returns(uint256);

    /// Get weight necessary to update the state oracle
    function getQuorum() external view returns (uint256);
}
