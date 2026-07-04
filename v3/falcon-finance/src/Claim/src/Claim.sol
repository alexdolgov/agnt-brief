// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IClaim} from "./IClaim.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

error AlreadyClaimed();
error InvalidProof();
error ClaimWindowNotStarted();
error ClaimWindowFinished();
error InvalidBeneficiaryCaller();
error InvalidOption();
error InvalidStakeAmount();

contract Claim is IClaim, Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public immutable override token;
    address public immutable override stakedToken;
    bytes32 public override merkleRoot;
    uint256 public startTime;
    uint256 public endTime;

    uint256 public vestMultiplier;
    uint256 public noVestMultiplier;
    uint256 public constant multiplierDenominator = 100;

    mapping(uint256 => uint256) private claimedBitMap;
    mapping(address => uint256) public claimedTimestampMap;
    mapping(address => Option) public claimedOptionMap;

    constructor(
        address _owner,
        address _token,
        address _stakedToken,
        bytes32 _merkleRoot,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _vestMultiplier,
        uint256 _noVestMultiplier
    ) Ownable(_owner) {
        require(_token != address(0), "token not set");
        require(_stakedToken != address(0), "stakedToken not set");
        require(_merkleRoot != bytes32(0), "merkleRoot not set");
        require(_startTime < _endTime, "endTime must be after startTime");
        require(_vestMultiplier >= 0 && _vestMultiplier <= multiplierDenominator, "vestMultiplier invalid");
        require(_noVestMultiplier >= 0 && _noVestMultiplier <= multiplierDenominator, "noVestMultiplier invalid");
        require(_vestMultiplier < _noVestMultiplier, "vestMultiplier must be less than noVestMultiplier");
        token = _token;
        stakedToken = _stakedToken;
        merkleRoot = _merkleRoot;
        startTime = _startTime;
        endTime = _endTime;
        vestMultiplier = _vestMultiplier;
        noVestMultiplier = _noVestMultiplier;
    }

    function isClaimed(uint256 index) public view override returns (bool) {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        uint256 claimedWord = claimedBitMap[claimedWordIndex];
        uint256 mask = (1 << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    function claim(
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof,
        Option option,
        uint256 stakeAmount
    ) public virtual override nonReentrant {
        if (msg.sender != account) revert InvalidBeneficiaryCaller();
        if (block.timestamp < startTime) revert ClaimWindowNotStarted();
        if (block.timestamp > endTime) revert ClaimWindowFinished();
        if (isClaimed(index)) revert AlreadyClaimed();

        // Verify the merkle proof.
        bytes32 node = keccak256(abi.encodePacked(index, account, amount));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) {
            revert InvalidProof();
        }

        uint256 claimAmount = (_getOptionMultiplier(option) * amount) / multiplierDenominator;
        uint256 vestAmount = option == Option.Vest ? amount - claimAmount : 0;
        if (stakeAmount > claimAmount) revert InvalidStakeAmount();
        claimAmount = claimAmount - stakeAmount;

        // Mark it claimed and send the token.
        _setClaimed(index);
        _setClaimedMetadata(account, option);
        if (claimAmount > 0) {
            IERC20(token).safeTransfer(account, claimAmount);
        }
        if (stakeAmount > 0) {
            IERC20(token).approve(address(stakedToken), stakeAmount);
            IERC4626(stakedToken).deposit(stakeAmount, account);
        }

        emit Claimed(index, account, amount, claimAmount, stakeAmount, vestAmount, option);
    }

    function setMerkleRoot(bytes32 root) external onlyOwner {
        merkleRoot = root;
    }

    function withdraw(uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(owner(), amount);
    }

    function withdrawERC20(address targetToken, uint256 amount) external onlyOwner {
        IERC20(targetToken).safeTransfer(owner(), amount);
    }

    function _setClaimed(uint256 index) private {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        claimedBitMap[claimedWordIndex] = claimedBitMap[claimedWordIndex] | (1 << claimedBitIndex);
    }

    function _setClaimedMetadata(address account, Option option) private {
        claimedOptionMap[account] = option;
        claimedTimestampMap[account] = block.timestamp;
    }

    function _getOptionMultiplier(Option option) private view returns (uint256) {
        return option == Option.Vest ? vestMultiplier : noVestMultiplier;
    }
}
