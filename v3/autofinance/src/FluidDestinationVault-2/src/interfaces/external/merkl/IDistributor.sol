// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

interface IDistributor {
    /// @notice Claims rewards for a given set of users
    /// @dev Unless another address has been approved for claiming, only an address can claim for itself
    /// @param users Addresses for which claiming is taking place
    /// @param tokens ERC20 token claimed
    /// @param amounts Amount of tokens that will be sent to the corresponding users
    /// @param proofs Array of hashes bridging from a leaf `(hash of user | token | amount)` to the Merkle root
    function claim(
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external;

    /// @notice Struct to track claims
    struct Claim {
        uint208 amount;
        uint48 timestamp;
        bytes32 merkleRoot;
    }

    /// @notice Returns claim information for a given user and token
    /// @param user The address of the user
    /// @param token The token address
    /// @return claimInfo The claim details
    function claimed(
        address user,
        address token
    ) external view returns (Claim memory claimInfo);

    /// @notice Toggles whitelisting for a given user and a given operator
    function toggleOperator(
        address user,
        address operator
    ) external;
}
