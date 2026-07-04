// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol"; // OZ: MerkleProof
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBlast {
    function configureClaimableGas() external;
    function configureGovernor(address _governor) external;
}

contract PacmoonAirdrop is Ownable {
    address public token;
    bytes32 public merkleRoot;
    mapping(bytes32 => bool) public claimed;
    mapping(address => bool) public addressHasClaimed;

    event Claim(address indexed to, uint256 amount);

    constructor(address _token, address _governor, bytes32 _merkleRoot) Ownable(msg.sender) {
        token = _token;
        merkleRoot = _merkleRoot;

        // configure blast gas
        IBlast(0x4300000000000000000000000000000000000002).configureClaimableGas();
        IBlast(0x4300000000000000000000000000000000000002).configureGovernor(_governor);
    }

    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoot = _merkleRoot;
    }

    function claim(address recipient, uint256 amount, bytes32[] calldata proof) external {
        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(abi.encodePacked(recipient, amount));
        require(!claimed[leaf], "already claimed");

        // check validity of leaf
        bool isVerified = MerkleProof.verify(proof, merkleRoot, leaf);
        require(isVerified, "invalid proof");

        claimed[leaf] = true;
        addressHasClaimed[recipient] = true;

        require(IERC20(token).transfer(recipient, amount), "Transfer failed");
        emit Claim(recipient, amount);
    }

    function reclaim(uint256 amount) external onlyOwner {
        require(IERC20(token).transfer(msg.sender, amount), "Transfer failed");
    }
}
