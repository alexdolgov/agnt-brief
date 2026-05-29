// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin-contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin-contracts/token/ERC20/IERC20.sol";
import {MerkleProof} from "@openzeppelin-contracts/utils/cryptography/MerkleProof.sol";

contract HyperAirdropClaim is Ownable {
    bytes32 public root;

    IERC20 public token;

    mapping(address => bool) public claimed;

    event Claimed(address indexed account, uint256 amount);

    constructor(address _token, bytes32 _root) Ownable() {
        token = IERC20(_token);
        root = _root;
    }

    function claim(address account, uint256 amount, bytes32[] calldata proof) external {
        require(!claimed[account], "HyperAirdropClaim: Already claimed");
        require(
            MerkleProof.verify(proof, root, keccak256(abi.encodePacked(account, amount))),
            "HyperAirdropClaim: Invalid proof"
        );

        claimed[account] = true;
        token.transfer(account, amount);

        emit Claimed(account, amount);
    }

    function setRoot(bytes32 _root) external onlyOwner {
        root = _root;
    }

    function rescueERC20(address _token, address _to, uint256 _amount) external onlyOwner {
        IERC20(_token).transfer(_to, _amount);
    }
}
