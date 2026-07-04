// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import "./Ownable.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {MerkleProof} from "openzeppelin-contracts/utils/cryptography/MerkleProof.sol";

contract RewardDistributor is Ownable {
    using SafeERC20 for IERC20;

    event Claimed(address indexed user, address asset, uint256 amount);

    error AlreadyClaimed();
    error InvalidProof();
    error NotDistributing();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    ///@notice Mapping of merkle roots for a given asset
    mapping(address asset => bytes32 merkleRoot) public merkleRoots;

    ///@notice Mapping of asset to claimed bitmap
    mapping(address asset => mapping(uint256 => uint256)) public claimedBitmap;

    mapping(address asset => bool) public isDistributing;

    constructor() Ownable(msg.sender) {}

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Set the merkle root for a given asset
    ///@param asset address of the asset
    ///@param merkleRoot bytes32 of the merkle root
    function setMerkleRoot(address asset, bytes32 merkleRoot) external onlyOwner {
        merkleRoots[asset] = merkleRoot;
    }

    ///@notice Recover asset from the contract in case of emergency
    function recoverAsset(address asset, address to, uint256 amount) external onlyOwner {
        IERC20(asset).safeTransfer(to, amount);
    }

    ///@notice Send reward to the contract and activate the distribution
    ///@param asset address of the asset
    ///@param amount amount of the reward
    function sendReward(address asset, uint256 amount) external onlyOwner {
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        isDistributing[asset] = true;
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Claim the reward for a given asset
    ///@param index index of the user setted in the merkle proof
    ///@param asset address of the asset
    ///@param amount amount of the reward
    ///@param merkleProof bytes32[] of the merkle proof
    function claim(uint256 index, address asset, uint256 amount, bytes32[] calldata merkleProof) external {
        address user = msg.sender;
        if (!isDistributing[asset] || merkleRoots[asset] == bytes32(0)) revert NotDistributing();
        if (isClaimed(index, asset)) revert AlreadyClaimed();

        // Verify the merkle proof.
        bytes32 node = keccak256(bytes.concat(keccak256(abi.encode(index, user, amount))));
        if (!MerkleProof.verify(merkleProof, merkleRoots[asset], node)) revert InvalidProof();

        // Mark it claimed and send the token.
        _setClaimed(index, asset);
        IERC20(asset).safeTransfer(user, amount);

        emit Claimed(user, asset, amount);
    }

    ///@notice Return if user at index claimed the reward for a given asset
    ///@param index index of the user setted in the merkle proof
    ///@param asset address of the asset
    function isClaimed(uint256 index, address asset) public view returns (bool) {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        uint256 claimedWord = claimedBitmap[asset][claimedWordIndex];
        uint256 mask = (1 << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Set user at index claimed the reward for a given asset
    ///@param index index of the user setted in the merkle proof
    ///@param asset address of the asset
    function _setClaimed(uint256 index, address asset) internal {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        claimedBitmap[asset][claimedWordIndex] = claimedBitmap[asset][claimedWordIndex] | (1 << claimedBitIndex);
    }
}
