// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

/// @title Utility library for handling Merkle root related operations
library MerkleRootUtil {
    /// @dev Struct to hold the Merkle root and its dispute duration
    /// @param root The Merkle root
    /// @param disputeUntil The timestamp until which the Merkle root can be disputed
    struct MerkleData {
        bytes32 root;
        uint256 disputeUntil;
    }

    error DisputeResolved();
    error DisputeNotResolved();

    /// @notice Dispute the last Merkle root if it is not resolved
    /// @param merkleRoots The array of Merkle roots
    /// @return root The disputed Merkle root
    function dispute(MerkleData[] storage merkleRoots) internal returns (bytes32) {
        if (!isLastMerkleRootInDispute(merkleRoots)) revert DisputeResolved();

        bytes32 root = merkleRoots[merkleRoots.length - 1].root;
        merkleRoots.pop();

        return root;
    }

    /// @notice Set a new Merkle root with a dispute duration
    /// @param merkleRoots The array of Merkle roots
    /// @param root The new Merkle root
    /// @param disputeDuration The dispute duration for the new Merkle root
    function setMerkleRoot(MerkleData[] storage merkleRoots, bytes32 root, uint256 disputeDuration) internal {
        if (isLastMerkleRootInDispute(merkleRoots)) revert DisputeNotResolved();

        uint256 length = merkleRoots.length;
        if (length >= 2) {
            // If the array has more than two elements, remove the first element
            merkleRoots[length - 2] = merkleRoots[length - 1];
            merkleRoots[length - 1] = MerkleData(root, block.timestamp + disputeDuration);
        } else {
            // Add the new Merkle root to the array
            merkleRoots.push(MerkleData(root, block.timestamp + disputeDuration));
        }
    }

    /// @notice Get the last valid Merkle root
    /// @param merkleRoots The array of Merkle roots
    /// @return root The last valid Merkle root
    function getLastValidMerkleRoot(MerkleData[] memory merkleRoots) internal view returns (bytes32 root) {
        if (merkleRoots.length == 0) {
            // If the array is empty, return bytes32(0)
            root = bytes32(0);
        } else if (merkleRoots.length == 1) {
            // If the array has one element, check if it is disputed
            root = block.timestamp >= merkleRoots[0].disputeUntil ? merkleRoots[0].root : bytes32(0);
        } else {
            // If the array has more than one element, check the last two elements
            uint256 length = merkleRoots.length;
            root = block.timestamp >= merkleRoots[length - 1].disputeUntil
                ? merkleRoots[length - 1].root
                : merkleRoots[length - 2].root;
        }
    }

    /// @notice Check if the last Merkle root is disputed
    /// @param merkleRoots The array of Merkle roots
    /// @return True if the last Merkle root is disputed, false otherwise
    function isLastMerkleRootInDispute(MerkleData[] memory merkleRoots) internal view returns (bool) {
        if (merkleRoots.length == 0) {
            // If the array is empty, return false
            return false;
        } else {
            // Otherwise, check if the dispute duration of the last element has passed
            return block.timestamp < merkleRoots[merkleRoots.length - 1].disputeUntil;
        }
    }

    /// @notice Get the information of the last Merkle root
    /// @param merkleRoots The array of Merkle roots
    /// @return inDispute True if the last Merkle root is in dispute, false otherwise
    /// @return root The root of the last Merkle root
    /// @return disputeUntil The timestamp until which the last Merkle root can be disputed
    function getLastMerkleRootInfo(
        MerkleData[] memory merkleRoots
    ) internal view returns (bool inDispute, bytes32 root, uint256 disputeUntil) {
        if (merkleRoots.length == 0) {
            inDispute = false;
            root = bytes32(0);
            disputeUntil = 0;
        } else {
            MerkleData memory lastMerkleData = merkleRoots[merkleRoots.length - 1];
            inDispute = block.timestamp < lastMerkleData.disputeUntil;
            root = lastMerkleData.root;
            disputeUntil = lastMerkleData.disputeUntil;
        }
    }
}
