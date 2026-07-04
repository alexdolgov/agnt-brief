// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title MerkleDistributorPsmUsdc
/// @notice Immutable merkle distributor that repays cataloged USDC to stranded Polygon PSM accounts until endTime.
/// @dev Leaf surface adapted from Uniswap merkle-distributor; single-hash 84-byte leaves, OZ commutative proof.
contract MerkleDistributorPsmUsdc is Ownable {
    using SafeERC20 for IERC20;

    /// @notice Token paid out by claims and swept after endTime (Polygon native USDC).
    address public immutable token;
    /// @notice Root over leaves keccak256(abi.encodePacked(index, account, amount)).
    bytes32 public immutable merkleRoot;
    /// @notice Claims close, and the owner sweep opens, at this timestamp.
    uint256 public immutable endTime;

    /// @notice Owner and fixed recipient of the post-endTime residual sweep.
    address public constant SAFE = 0xf0F5F7c21d181B7a1F9Aa36Ed46DB3E620EDa385;

    // Packed bitmap of claimed leaf indices.
    mapping(uint256 => uint256) private claimedBitMap;

    event Claimed(uint256 index, address account, uint256 amount);

    error AlreadyClaimed();
    error InvalidProof();
    error ClaimWindowFinished();
    error EndTimeInPast();
    error ClaimWindowOpen();

    constructor(address token_, bytes32 merkleRoot_, uint256 endTime_) {
        if (endTime_ <= block.timestamp) revert EndTimeInPast();
        token = token_;
        merkleRoot = merkleRoot_;
        endTime = endTime_;
        _transferOwnership(SAFE);
    }

    /// @notice Whether the leaf at `index` has been claimed.
    function isClaimed(uint256 index) public view returns (bool) {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        uint256 claimedWord = claimedBitMap[claimedWordIndex];
        uint256 mask = (1 << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    function _setClaimed(uint256 index) private {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        claimedBitMap[claimedWordIndex] = claimedBitMap[claimedWordIndex] | (1 << claimedBitIndex);
    }

    /// @notice Pay `amount` to the leaf `account` regardless of caller; valid only before endTime.
    function claim(uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof) external {
        if (block.timestamp >= endTime) revert ClaimWindowFinished();
        if (isClaimed(index)) revert AlreadyClaimed();

        bytes32 node = keccak256(abi.encodePacked(index, account, amount));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) revert InvalidProof();

        _setClaimed(index); // checks-effects-interactions: mark before transfer
        IERC20(token).safeTransfer(account, amount);

        emit Claimed(index, account, amount);
    }

    /// @notice After endTime, sweep the full token balance to the Safe.
    function withdrawTokens() external onlyOwner {
        if (block.timestamp < endTime) revert ClaimWindowOpen();
        IERC20(token).safeTransfer(SAFE, IERC20(token).balanceOf(address(this)));
    }
}
