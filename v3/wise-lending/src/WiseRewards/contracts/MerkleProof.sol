// SPDX-License-Identifier: -- BCOM --

pragma solidity =0.8.25;

library MerkleProof {

    function verify(
        bytes32[] memory _proof,
        bytes32 _root,
        bytes32 _leaf
    )
        internal
        pure
        returns (bool)
    {
        uint256 i;
        uint256 l = _proof.length;
        bytes32 computedHash = _leaf;

        while (i < l) {

            bytes32 proofElement = _proof[i];

            computedHash <= proofElement
                ? computedHash = keccak256(abi.encodePacked(computedHash, proofElement))
                : computedHash = keccak256(abi.encodePacked(proofElement, computedHash));

            unchecked {
                ++i;
            }
        }

        return computedHash == _root;
    }
}
