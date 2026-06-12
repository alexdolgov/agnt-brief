// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// solhint-disable-next-line max-line-length
import {MerkleProofUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol";

/**
 * Forked from https://github.com/Uniswap/merkle-distributor/blob/master/contracts/MerkleDistributor.sol
 * @title
 * @author
 * @notice
 */
abstract contract MerkleDistributor {
    bytes32 private _merkleRoot;

    // This is a packed array of booleans.
    mapping(uint256 => uint256) private _claimedBitMap;

    event RootUpdated(bytes32 root);

    error RootUndefined();
    error InvalidProof();

    /**
     * @dev Used to check if a merkle claim has been claimed from the merkle tree.
     * @param index The index of the award
     */
    function isClaimed(uint256 index) public view returns (bool) {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        uint256 claimedWord = _claimedBitMap[claimedWordIndex];
        uint256 mask = (1 << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    function getRoot() public view returns (bytes32) {
        return _merkleRoot;
    }

    /**
     * @dev Used to set that a merkle claim has been claimed.
     * @param index The index of the award
     */
    function _setClaimed(uint256 index) internal {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        _claimedBitMap[claimedWordIndex] =
            _claimedBitMap[claimedWordIndex] |
            (1 << claimedBitIndex);
    }

    function _setRoot(bytes32 root) internal {
        _merkleRoot = root;
        emit RootUpdated(root);
    }

    function _verifyClaim(
        bytes32[] calldata merkleProof,
        bytes32 node
    ) internal view {
        if (_merkleRoot == bytes32(0)) {
            revert RootUndefined();
        }
        if (!MerkleProofUpgradeable.verify(merkleProof, _merkleRoot, node)) {
            revert InvalidProof();
        }
    }
}
