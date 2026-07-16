// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IGT3Rebase} from "src/interfaces/IGT3Rebase.sol";
import {IxGT3} from "src/interfaces/IxGT3.sol";
import {IGT3Minter} from "src/interfaces/IGT3Minter.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";

/// @title GT3Rebase Contract
/// @author gt3.finance
/// @notice Manages token distribution over epochs for GT3
contract GT3Rebase is IGT3Rebase, UUPSOwnable2Step {
    using SafeERC20 for IERC20;

    /// @notice Returns the address of the xGT3 token
    IxGT3 public xGt3;

    /// @inheritdoc IGT3Rebase
    address public token;

    /// @inheritdoc IGT3Rebase
    address public minter;

    /// @inheritdoc IGT3Rebase
    uint256 public startTime;

    /// @inheritdoc IGT3Rebase
    uint256 public lastCheckpointTime;

    /// @inheritdoc IGT3Rebase
    uint256 public tokenLastBalance;

    /// @inheritdoc IGT3Rebase
    mapping(uint256 => uint256) public timeCursorOf;

    /// @inheritdoc IGT3Rebase
    uint256[1000000000000000] public tokensPerEpoch;

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3Rebase
    function initialize(address owner_, address xGt3_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();

        uint256 epochStart_ = ProtocolTimeLibrary.epochStart(block.timestamp);
        startTime = epochStart_;
        lastCheckpointTime = epochStart_;
        xGt3 = IxGT3(xGt3_);
        address token_ = xGt3.token();
        token = token_;
        _updateMinter(msg.sender);
        IERC20(token_).forceApprove(xGt3_, type(uint256).max);
    }

    /// @inheritdoc IGT3Rebase
    function updateMinter(address minter_) external onlyOwner {
        _updateMinter(minter_);
    }

    /// @inheritdoc IGT3Rebase
    function checkpoint() external {
        if (msg.sender != minter) revert NotMinter();
        _checkpoint();
    }

    /// @inheritdoc IGT3Rebase
    function claimable(uint256 tokenId_) external view returns (uint256 claimable_) {
        uint256 lastCheckpointTime_ = ProtocolTimeLibrary.epochStart(lastCheckpointTime);
        (claimable_,,) = _claimable(tokenId_, lastCheckpointTime_);
    }

    /// @inheritdoc IGT3Rebase
    function claim(uint256 tokenId_) external returns (uint256) {
        if (IGT3Minter(minter).activePeriod() < ProtocolTimeLibrary.epochStart(block.timestamp)) revert UpdatePeriod();
        uint256 lastCheckpointTime_ = ProtocolTimeLibrary.epochStart(lastCheckpointTime);
        uint256 amount = _claim(tokenId_, lastCheckpointTime_);
        if (amount != 0) {
            uint256 unlockTs = xGt3.lockedEnd(tokenId_);
            tokenLastBalance -= amount;
            if (block.timestamp >= unlockTs) {
                address _owner = xGt3.ownerOf(tokenId_);
                IERC20(token).safeTransfer(_owner, amount);
            } else {
                xGt3.depositFor(tokenId_, amount);
            }
        }
        return amount;
    }

    /// @notice Internal function to create a checkpoint and distribute tokens
    /// @dev Distributes tokens across epochs based on time elapsed
    /// @dev Limited to 12 epochs to prevent gas issues
    function _checkpoint() internal {
        uint256 tokenBalance = IERC20(token).balanceOf(address(this));
        uint256 toDistribute = tokenBalance - tokenLastBalance;
        tokenLastBalance = tokenBalance;
        uint256 lastCheckpointTime_ = lastCheckpointTime;
        lastCheckpointTime = block.timestamp;
        uint256 totalTimeToDistribute_ = block.timestamp - lastCheckpointTime_;
        uint256 epochToUpdate_ = ProtocolTimeLibrary.epochStart(lastCheckpointTime_);
        uint256 nextEpoch_;

        for (uint256 i = 0; i < 12; i++) {
            nextEpoch_ = epochToUpdate_ + ProtocolTimeLibrary.DURATION;
            if (block.timestamp < nextEpoch_) {
                //epochToUpdate_ not finished (current epoch)
                if (totalTimeToDistribute_ == 0 && block.timestamp == lastCheckpointTime_) {
                    tokensPerEpoch[epochToUpdate_] += toDistribute;
                } else {
                    tokensPerEpoch[epochToUpdate_] +=
                        (toDistribute * (block.timestamp - lastCheckpointTime_)) / totalTimeToDistribute_;
                }
                break;
            } else {
                //epochToUpdate_ already finished
                if (totalTimeToDistribute_ == 0 && nextEpoch_ == lastCheckpointTime_) {
                    tokensPerEpoch[epochToUpdate_] += toDistribute;
                } else {
                    tokensPerEpoch[epochToUpdate_] +=
                        (toDistribute * (nextEpoch_ - lastCheckpointTime_)) / totalTimeToDistribute_;
                }
            }
            lastCheckpointTime_ = nextEpoch_;
            epochToUpdate_ = nextEpoch_;
        }
        emit CheckpointToken(block.timestamp, toDistribute);
    }

    /// @notice Internal function to process a claim
    /// @param tokenId_ The ID of the token
    /// @param lastCheckpointTime_ The last checkpoint time
    /// @return The amount of tokens distributed
    /// @dev Updates the time cursor and emits a Claimed event
    function _claim(uint256 tokenId_, uint256 lastCheckpointTime_) internal returns (uint256) {
        (uint256 toDistribute, uint256 epochStart, uint256 epochCursor) = _claimable(tokenId_, lastCheckpointTime_);
        timeCursorOf[tokenId_] = epochCursor;
        if (toDistribute == 0) return 0;
        emit Claimed(tokenId_, epochStart, epochCursor, toDistribute);
        return toDistribute;
    }

    /// @notice Internal function to calculate claimable tokens
    /// @param tokenId_ The ID of the token
    /// @param lastCheckpointTime_ The last checkpoint time
    /// @return toDistribute The amount of tokens to distribute
    /// @return epochCursorStart The starting epoch cursor
    /// @return epochCursor The current epoch cursor
    /// @dev Calculates tokens based on user's voting power and total supply
    /// @dev Limited to 24 epochs to prevent gas issues
    function _claimable(uint256 tokenId_, uint256 lastCheckpointTime_)
        internal
        view
        returns (uint256 toDistribute, uint256 epochCursorStart, uint256 epochCursor)
    {
        uint256 _startTime = startTime;
        epochCursor = timeCursorOf[tokenId_];
        epochCursorStart = epochCursor;

        // case where token does not exist
        uint256 maxUserEpoch = xGt3.userPointEpoch(tokenId_);
        if (maxUserEpoch == 0) return (0, epochCursorStart, epochCursor);

        // case where token exists but has never been claimed
        if (epochCursor == 0) {
            uint256 userPointTs = xGt3.userPointHistoryTimestamp(tokenId_, 1);
            epochCursor = ProtocolTimeLibrary.epochStart(userPointTs);
            epochCursorStart = epochCursor;
        }
        if (epochCursor >= lastCheckpointTime_) return (0, epochCursorStart, epochCursor);
        if (epochCursor < _startTime) epochCursor = _startTime;

        for (uint256 i = 0; i < 24; i++) {
            if (epochCursor >= lastCheckpointTime_) break;

            uint256 balance = xGt3.getVotingUnitsNFTAt(tokenId_, epochCursor + ProtocolTimeLibrary.DURATION - 1);
            uint256 supply = xGt3.totalSupplyAtTimestamp(epochCursor + ProtocolTimeLibrary.DURATION - 1);
            supply = supply == 0 ? 1 : supply;
            toDistribute += (balance * tokensPerEpoch[epochCursor]) / supply;
            epochCursor += ProtocolTimeLibrary.DURATION;
        }
    }

    /// @notice Private function to update the minter address
    /// @param newMinter_ The new minter address
    /// @dev Emits an UpdateMinter event
    function _updateMinter(address newMinter_) private {
        minter = newMinter_;
        emit UpdateMinter(newMinter_);
    }
}
