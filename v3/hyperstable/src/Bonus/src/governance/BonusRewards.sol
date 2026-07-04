// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {MerkleProofLib} from "solady/utils/MerkleProofLib.sol";
import {IPeg} from "../interfaces/IPeg.sol";
import {IVotingEscrow} from "../interfaces/IVotingEscrow.sol";

contract Bonus is Ownable {
    using MerkleProofLib for bytes32[];

    event UpdateClaimed(address indexed user, uint256 indexed epoch);
    event Claim(address indexed to, uint256 indexed epochTimestamp, uint256 amount);
    event EpochEnded(uint256 indexed epochTimestamp, bytes32 merkleRoot, uint256 rewardAmount);

    error NotOwnerOfLock();
    error NotPerpetual();
    error AlreadyClaimed();
    error NotInMerkle();
    error InvalidEpoch();
    error InsufficientBalanceToClaim();

    IVotingEscrow public immutable VOTING_ESCROW;
    IPeg public immutable PEG;
    uint256 public epochDuration;

    struct _epoch {
        uint256 epochTimestamp;
        bytes32 merkleRoot;
        uint256 rewardRate;
    }

    mapping(uint256 => _epoch) public epochData;
    mapping(address => mapping(uint256 => bool)) public hasClaimed;

    constructor(address _token, uint256 _epochDuration, address _votingEscrow) Ownable(msg.sender) {
        PEG = IPeg(_token);
        epochDuration = _epochDuration;
        VOTING_ESCROW = IVotingEscrow(_votingEscrow);
    }

    function getEpoch(uint256 timestamp) public view returns (_epoch memory) {
        uint256 epoch = getAlignedTimestamp(timestamp);
        return epochData[epoch];
    }

    function getAlignedTimestamp(uint256 timestamp) public view returns (uint256) {
        return (timestamp / epochDuration) * epochDuration;
    }

    function setAsAlreadyClaimed(address user, uint256 epochTimestamp) external onlyOwner {
        uint256 epoch = getAlignedTimestamp(epochTimestamp);
        hasClaimed[user][epoch] = true;

        emit UpdateClaimed(user, epoch);
    }

    function advanceEpoch(uint256 epochTimestamp, bytes32 merkleRoot, uint256 rewardRate) external onlyOwner {
        uint256 epoch = getAlignedTimestamp(epochTimestamp);
        require(epochData[epoch].epochTimestamp == 0, "Epoch already exists");

        epochData[epoch].epochTimestamp = epoch;
        epochData[epoch].merkleRoot = merkleRoot;
        epochData[epoch].rewardRate = rewardRate;

        emit EpochEnded(epoch, merkleRoot, rewardRate);
    }

    event ClaimLiquid(address indexed claimant, uint256 amount);
    event ClaimLocked(address indexed claimant, uint256 amount, uint256 tokenId);

    function _claim(
        uint256 epochTimestamp,
        uint256 weightedDebt,
        bytes32[] calldata proofs,
        bool liquid,
        uint256 tokenId
    ) internal {
        uint256 epoch = getAlignedTimestamp(epochTimestamp);
        if (hasClaimed[msg.sender][epoch]) revert AlreadyClaimed();
        if (epochData[epoch].epochTimestamp == 0) revert InvalidEpoch();

        bool isValidClaim = proofs.verifyCalldata(
            epochData[epoch].merkleRoot, keccak256(bytes.concat(keccak256(abi.encodePacked(msg.sender, weightedDebt))))
        );

        if (!isValidClaim) {
            revert NotInMerkle();
        }

        uint256 bonusAmount = (weightedDebt * epochData[epoch].rewardRate) / 1e18;

        if (liquid) {
            bonusAmount = (bonusAmount * 25) / 100;
        }

        if (bonusAmount > PEG.balanceOf(address(this))) {
            revert InsufficientBalanceToClaim();
        }

        hasClaimed[msg.sender][epoch] = true;
        if (liquid && tokenId == 0) {
            PEG.transfer(msg.sender, bonusAmount);

            emit ClaimLiquid(msg.sender, bonusAmount);
        } else {
            PEG.approve(address(VOTING_ESCROW), bonusAmount);

            if (tokenId == 0) {
                VOTING_ESCROW.create_lock_for(bonusAmount, 365 days, msg.sender);
            } else {
                if (!VOTING_ESCROW.locked(tokenId).perpetuallyLocked) {
                    revert NotPerpetual();
                }
                if (VOTING_ESCROW.ownerOf(tokenId) != msg.sender) {
                    revert NotOwnerOfLock();
                }
                VOTING_ESCROW.deposit_for(tokenId, bonusAmount);
            }

            emit ClaimLocked(msg.sender, bonusAmount, tokenId);
        }

        emit Claim(msg.sender, epochTimestamp, bonusAmount);
    }

    function claim_many(
        uint256[] calldata epochTimestamps,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs,
        bool liquid,
        uint256 tokenId
    ) external {
        for (uint256 i = 0; i < epochTimestamps.length; i++) {
            _claim(epochTimestamps[i], amounts[i], proofs[i], liquid, tokenId);
        }
    }

    function claim(uint256 epochTimestamp, uint256 amount, bytes32[] calldata proof, bool liquid, uint256 tokenId)
        external
    {
        _claim(epochTimestamp, amount, proof, liquid, tokenId);
    }

    function recoverToken(IERC20 tokenAddress) external onlyOwner {
        tokenAddress.transfer(msg.sender, tokenAddress.balanceOf(address(this)));
    }
}
