// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.20;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {IMerkleDistributor} from "./interfaces/IMerkleDistributor.sol";

contract MerkleDistributor is IMerkleDistributor {
    using SafeERC20 for IERC20;

    error AlreadyClaimed();
    error InvalidProof();

    address public immutable override token;
    bytes32 public override merkleRoot;

    mapping(address => uint256) public claimed;

    constructor(address token_, bytes32 merkleRoot_) {
        token = token_;
        merkleRoot = merkleRoot_;
    }

    function claim(uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof)
        public
        virtual
        override
    {
        uint256 claimable = amount - claimed[account];

        if (claimable == 0) revert AlreadyClaimed();

        // Verify the merkle proof.
        bytes32 node = keccak256(abi.encodePacked(index, account, amount));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) revert InvalidProof();

        claimed[account] += claimable;

        IERC20(token).safeTransfer(account, claimable);

        emit Claimed(index, account, amount);
    }
}
