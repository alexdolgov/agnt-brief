// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IWhitelistMerkle.sol";
import "./libs/Errors.sol";

contract Whitelist is IWhitelistMerkle, Ownable {
    bytes32 public rootHash;

    constructor(bytes32 _rootHash) {
        rootHash = _rootHash;
    }

    function isValidProof(bytes32[] calldata proof, bytes32 leaf) external view returns (bool) {
        return MerkleProof.verifyCalldata(proof, rootHash, leaf);
    }

    function setNewRootHash(bytes32 _rootHash) external onlyOwner {
        rootHash = _rootHash;
    }

    function renounceOwnership() public override onlyOwner {
        revert("Can't renounceOwnership here");
    }
}
