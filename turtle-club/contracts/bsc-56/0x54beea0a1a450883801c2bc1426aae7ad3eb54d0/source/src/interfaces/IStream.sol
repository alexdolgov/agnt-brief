// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IStream
/// @notice Interface for the Stream contract exposing all public/external functions.
interface IStream {
    // ============ Storage/View Structs ============
    struct MerkleRoot {
        bytes32 hash;
        uint40 timestamp;
    }

    // ============ Initialization ============
    /// @notice Initialize stream
    /// @dev Modifiers: initializer
    function initialize(bytes16 streamId, IERC20 rewardToken) external;

    // ============ User Claims ============
    /// @notice Claim rewards for msg.sender
    /// @dev Modifiers: whenNotPaused
    function claim(uint amount, uint40 timestamp, bytes32[] calldata merkleProof) external returns (uint claimedAmount);

    /// @notice Claim rewards on behalf of beneficiary
    /// @dev Modifiers: whenNotPaused, onlyOwner (factory)
    function claimFor(
        address user,
        uint amount,
        uint40 timestamp,
        bytes32[] calldata merkleProof
    ) external returns (uint claimedAmount);

    // ============ Admin (Owner: Factory) ============
    /// @notice Update Merkle root
    /// @dev Modifiers: onlyOwner
    function setMerkleRoot(bytes32 rootHash, uint40 timestamp) external;

    /// @dev Modifiers: onlyOwner
    function clearMerkleRoot() external;

    /// @dev Modifiers: onlyOwner
    function clearPrevMerkleRoot() external;

    /// @notice Pause claims
    /// @dev Modifiers: onlyOwner
    function pause() external;

    /// @notice Unpause claims
    /// @dev Modifiers: onlyOwner
    function unpause() external;

    /// @dev Modifiers: onlyOwner
    function withdrawFunds(address to, uint amount) external;

    /// @dev Modifiers: onlyOwner
    function rescueTokens(IERC20 token, address payable to, uint amount) external returns (uint);

    // ============ Views ============
    function getStreamId() external view returns (bytes16);
    function getRewardToken() external view returns (IERC20);
    function getRoot() external view returns (MerkleRoot memory);
    function getPrevRoot() external view returns (MerkleRoot memory);
    function getClaimedRewards() external view returns (uint);
    function getClaimedRewards(address user) external view returns (uint);

    /// @notice Contract's reward token balance
    function getContractBalance() external view returns (uint);

    /// @notice Returns how much the user can claim now (delta) if all checks pass
    function canClaim(
        address user,
        uint amount,
        uint40 timestamp,
        bytes32[] calldata merkleProof
    ) external view returns (uint);

    function isStream() external pure returns (bool);

    /// @notice Version
    function version() external pure returns (string memory);
}
