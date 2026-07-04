//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/cryptography/MerkleProof.sol';

import './interfaces/IMerkleAirdrop.sol';
import './libraries/SafeToken.sol';

contract MerkleAirdrop is IMerkleAirdrop, Ownable {
    using SafeToken for address;

    event Claim(address recipient, uint256 nowClaimed, uint256 totalClaimed);

    address public immutable sonne;
    address public tokenHolder;
    bytes32 public merkleRoot;
    mapping(address => uint256) public claimed;

    constructor(address sonne_, address tokenHolder_) {
        sonne = sonne_;
        tokenHolder = tokenHolder_;
    }

    /** Claim functions */
    function claim(Balance calldata _balance, bytes32[] calldata proof) public {
        require(merkleRoot != bytes32(0), 'MerkleAirdrop: not initialized');
        require(msg.sender == _balance.recipient, 'MerkleAirdrop: only recipient can claim');
        _validateBalance(_balance, proof);
        _claimBalance(_balance);
    }

    function _validateBalance(Balance memory _balance, bytes32[] memory proof) internal view {
        bytes32 leaf = keccak256(abi.encode(_balance));
        bool isValid = MerkleProof.verify(proof, merkleRoot, leaf);
        require(isValid, 'BabiClaim:invalid balance proof');
    }

    function _claimBalance(Balance memory balance) internal {
        address recipient = balance.recipient;

        require(balance.value > claimed[recipient], 'BabiClaim::_claimBalance nothing to claim');

        uint256 amount;
        unchecked {
            amount = balance.value - claimed[recipient];
        }

        claimed[recipient] = balance.value;
        sonne.safeTransferFrom(tokenHolder, recipient, amount);

        emit Claim(recipient, amount, balance.value);
    }

    /** Admin functions */
    function setTokenHolder(address _tokenHolder) public override onlyOwner {
        tokenHolder = _tokenHolder;
    }

    function setMerkleRoot(bytes32 _merkleRoot) public override onlyOwner {
        merkleRoot = _merkleRoot;
    }

    function addClaimed(Balance[] calldata _increments) public onlyOwner {
        for (uint256 i = 0; i < _increments.length; i++) {
            claimed[_increments[i].recipient] += _increments[i].value;
        }
    }
}
