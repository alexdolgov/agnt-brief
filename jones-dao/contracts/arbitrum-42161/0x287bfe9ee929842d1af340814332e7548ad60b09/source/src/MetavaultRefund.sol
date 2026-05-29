// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import {MerkleProof} from "openzeppelin-contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

contract MetavaultRefund is Ownable {
    bytes32 public root;
    IERC20 public rDPX;

    event Redeemed(address indexed account, uint256 ETHAmount, uint256 rDPXAmount);

    mapping(address => bool) public claimed;

    constructor(bytes32 _root, address _rDPX) {
        root = _root;
        rDPX = IERC20(_rDPX);
    }

    function redeem(address _account, uint256 _ETHAmount, uint256 _rDPXAmount, bytes32[] calldata proof)
        external
        returns (bool)
    {
        require(!claimed[_account], "Already claimed");
        require(_verify(keccak256(abi.encodePacked(_account, _ETHAmount, _rDPXAmount)), proof), "Invalid merkle proof");
        claimed[_account] = true;

        rDPX.transfer(_account, _rDPXAmount);
        (bool success,) = payable(_account).call{value: _ETHAmount}("");
        require(success, "Transfer failed.");

        emit Redeemed(_account, _ETHAmount, _rDPXAmount);
        return true;
    }

    function _verify(bytes32 leaf, bytes32[] memory proof) internal view returns (bool) {
        return MerkleProof.verify(proof, root, leaf);
    }

    function updateRoot(bytes32 _root) external onlyOwner {
        root = _root;
    }

    function emergencyWithdraw(address[] memory _token, uint256[] memory _amount, bool _native) external onlyOwner {
        require(_token.length == _amount.length, "Invalid input");
        for (uint256 i = 0; i < _token.length; i++) {
            IERC20(_token[i]).transfer(owner(), _amount[i]);
        }

        if (_native) {
            (bool success,) = payable(owner()).call{value: address(this).balance}("");
            require(success, "Transfer failed.");
        }
    }

    receive() external payable {}
}
