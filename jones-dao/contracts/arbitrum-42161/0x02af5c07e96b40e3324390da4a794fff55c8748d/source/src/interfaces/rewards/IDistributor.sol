/// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
pragma abicoder v2;

interface IDistributor {
    function claim(
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external;

    // Returns the MerkleRoot that is currently live for the contract
    function getMerkleRoot() external view returns (bytes32);

    // Toggles permissioned claiming for a given user
    function toggleOnlyOperatorCanClaim(address user) external;

    // Toggles whitelisting for a given user and a given operator
    function toggleOperator(address user, address operator) external;
}
