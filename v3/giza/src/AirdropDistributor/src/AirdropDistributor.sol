// SPDX-License-Identifier: MIT
/*
Copyright 2025 Giza Association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

pragma solidity 0.8.26;

import {Ownable} from "./utils/Ownable.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {MerkleProof} from "openzeppelin-contracts/contracts/utils/cryptography/MerkleProof.sol";
import {IGizaStaking} from "./interfaces/IGizaStaking.sol";

///@title  Airdrop Distributor contract
///@notice This is a contract to distribute airdrop rewards to users, this implements a merkle tree to verify the proof and efficiently distribute the rewards
contract AirdropDistributor is Ownable {
    using SafeERC20 for IERC20;

    event Claimed(address indexed user, uint256 amount);
    event ClaimedAndStaked(address indexed user, uint256 amount);

    error AlreadyClaimed();
    error InvalidProof();
    error NotDistributing();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    IERC20 public immutable giza;
    IGizaStaking public immutable gizaStaking;
    ///@notice Merkle root
    bytes32 public merkleRoot;

    ///@notice Mapping of asset to claimed bitmap
    mapping(address user => bool) public isClaimed;

    ///@notice Is distributing
    bool public isDistributing;

    constructor(address _owner, address _giza, address _gizaStaking) Ownable(_owner) {
        giza = IERC20(_giza);
        gizaStaking = IGizaStaking(_gizaStaking);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Set the merkle root
    ///@param _merkleRoot bytes32 of the merkle root
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoot = _merkleRoot;
    }

    ///@notice Recover asset from the contract in case of emergency
    function recoverAsset(address asset, address to, uint256 amount) external onlyOwner {
        IERC20(asset).safeTransfer(to, amount);
    }

    ///@notice Send reward to the contract and activate the distribution
    ///@param amount amount of the reward
    function sendReward(uint256 amount) external onlyOwner {
        giza.safeTransferFrom(msg.sender, address(this), amount);
        isDistributing = true;
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Claim the reward for a given asset
    ///@param amount amount of the reward
    ///@param merkleProof bytes32[] of the merkle proof
    function claim(uint256 amount, bytes32[] calldata merkleProof) external {
        _claim(amount, merkleProof);

        // Transfer token to the user
        giza.safeTransfer(msg.sender, amount);

        emit Claimed(msg.sender, amount);
    }

    ///@notice Claim the reward for a given asset and stake it
    ///@param amount amount of the reward
    ///@param merkleProof bytes32[] of the merkle proof
    function claimAndStake(uint256 amount, bytes32[] calldata merkleProof) external {
        _claim(amount, merkleProof);

        // Approve the staking contract to stake the tokens
        giza.approve(address(gizaStaking), amount);

        // Stake the tokens
        gizaStaking.stakeOnBehalf(msg.sender, uint104(amount));

        emit ClaimedAndStaked(msg.sender, amount);
    }

    function _claim(uint256 amount, bytes32[] calldata merkleProof) internal {
        address user = msg.sender;
        if (!isDistributing || merkleRoot == bytes32(0)) revert NotDistributing();
        if (isClaimed[user]) revert AlreadyClaimed();

        // Verify the merkle proof.
        bytes32 node = keccak256(bytes.concat(keccak256(abi.encode(user, amount))));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) revert InvalidProof();
        isClaimed[user] = true;
    }
}
