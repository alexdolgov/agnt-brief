// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Ownable2Step } from "@openzeppelin/contracts/access/Ownable2Step.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import { IMerkleDistributor } from "./interfaces/IMerkleDistributor.sol";

/**
 * @title StargateMerkleDistributor
 * @notice A contract to distribute Stargate incentives using a merkle root.
 */
contract StargateMerkleDistributor is Ownable2Step, IMerkleDistributor {
    using SafeERC20 for IERC20;

    uint256 private constant BITMAP_SHIFT = 1;

    IERC20 public immutable override token;
    bytes32 public immutable override merkleRoot;

    /// @notice Bitmap tracking claimed indices
    /// @dev Using a packed array of booleans for gas efficiency
    mapping(uint256 => uint256) private claimedBitMap;

    constructor(address owner_, address token_, bytes32 merkleRoot_) Ownable(owner_) {
        token = IERC20(token_);
        merkleRoot = merkleRoot_;
    }

    function claim(uint256 index, address account, uint256 amount, bytes32[] calldata proof) public {
        if (isClaimed(index)) revert AlreadyClaimed();

        // Verify the merkle proof.
        bytes32 leaf = getLeafHash(index, account, amount);

        if (!_verifyClaim(proof, leaf)) revert InvalidProof();

        // Mark it claimed and send the token.
        _setClaimed(index);
        IERC20(token).safeTransfer(account, amount);

        emit Claimed(index, account, amount);
    }

    function withdrawToken(address token_, address receiver_) external onlyOwner {
        uint256 balance = IERC20(token_).balanceOf(address(this));
        IERC20(token_).safeTransfer(receiver_, balance);

        emit EmergencyWithdrawn(token_, receiver_, balance);
    }

    // ------ View Functions ------
    function verifyClaim(
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata proof
    ) external view returns (bool valid) {
        return _verifyClaim(proof, getLeafHash(index, account, amount));
    }

    function isClaimed(uint256 index) public view returns (bool) {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        uint256 claimedWord = claimedBitMap[claimedWordIndex];
        uint256 mask = (BITMAP_SHIFT << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    function getLeafHash(uint256 index, address account, uint256 amount) public pure returns (bytes32) {
        return keccak256(bytes.concat(keccak256(abi.encode(index, account, amount))));
    }

    // ------ Helpers ------
    function _verifyClaim(bytes32[] calldata _proof, bytes32 _leaf) private view returns (bool valid) {
        return MerkleProof.verifyCalldata(_proof, merkleRoot, _leaf);
    }

    function _setClaimed(uint256 index) private {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        claimedBitMap[claimedWordIndex] = claimedBitMap[claimedWordIndex] | (BITMAP_SHIFT << claimedBitIndex);
    }
}
