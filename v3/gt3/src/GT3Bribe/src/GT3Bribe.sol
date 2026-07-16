// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IGT3Bribe} from "src/interfaces/IGT3Bribe.sol";
import {IxGT3} from "src/interfaces/IxGT3.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";

// solhint-disable max-states-count

/// @title GT3Bribe
/// @author gt3.finance
/// @notice Implementation of the bribe contract that manages rewards distribution for xGT3 token holders
contract GT3Bribe is IGT3Bribe, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    uint256 internal constant _PRECISION = 10 ** 18;

    /// @inheritdoc IGT3Bribe
    address public voter;

    /// @inheritdoc IGT3Bribe
    address public xGt3;

    /// @inheritdoc IGT3Bribe
    uint256 public totalSupply;

    /// @inheritdoc IGT3Bribe
    uint256 public supplyNumCheckpoints;

    /// @inheritdoc IGT3Bribe
    mapping(uint256 => uint256) public balanceOf;

    /// @inheritdoc IGT3Bribe
    mapping(address => mapping(uint256 => uint256)) public tokenRewardsPerEpoch;

    /// @inheritdoc IGT3Bribe
    mapping(address => mapping(uint256 => uint256)) public lastEarn;

    /// @inheritdoc IGT3Bribe
    mapping(address => bool) public isReward;

    /// @notice Returns the checkpoint for a token ID at a specific index
    mapping(uint256 tokenId => mapping(uint256 index => Checkpoint)) public checkpoints;

    /// @inheritdoc IGT3Bribe
    mapping(uint256 => uint256) public numCheckpoints;

    /// @notice Returns the supply checkpoint at a specific index
    mapping(uint256 index => SupplyCheckpoint) public supplyCheckpoints;

    /// @inheritdoc IGT3Bribe
    address[] public rewards;

    modifier onlyVoter() {
        if (msg.sender != voter) revert GT3BribeOnlyVoter(msg.sender);
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3Bribe
    function initialize(address voter_, address xGt3_) public initializer {
        __ReentrancyGuard_init();
        if (voter_ == address(0)) revert GT3BribeZeroVoter();
        if (xGt3_ == address(0)) revert GT3BribeZeroXGT3();
        voter = voter_;
        xGt3 = xGt3_;
    }

    /// @inheritdoc IGT3Bribe
    function rewardsListLength() external view returns (uint256) {
        return rewards.length;
    }

    /// @inheritdoc IGT3Bribe
    function getPriorBalanceIndex(uint256 tokenId_, uint256 timestamp_) public view returns (uint256) {
        uint256 nCheckpoints = numCheckpoints[tokenId_];
        if (nCheckpoints == 0) {
            return 0;
        }

        // First check most recent balance
        if (checkpoints[tokenId_][nCheckpoints - 1].timestamp <= timestamp_) {
            return (nCheckpoints - 1);
        }

        // Next check implicit zero balance
        if (checkpoints[tokenId_][0].timestamp > timestamp_) {
            return 0;
        }

        uint256 lower = 0;
        uint256 upper = nCheckpoints - 1;
        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
            Checkpoint memory checkpoint_ = checkpoints[tokenId_][center];
            if (checkpoint_.timestamp == timestamp_) {
                return center;
            } else if (checkpoint_.timestamp < timestamp_) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }
        return lower;
    }

    /// @inheritdoc IGT3Bribe
    function getPriorSupplyIndex(uint256 timestamp_) public view returns (uint256) {
        uint256 nCheckpoints = supplyNumCheckpoints;
        if (nCheckpoints == 0) {
            return 0;
        }

        // First check most recent balance
        if (supplyCheckpoints[nCheckpoints - 1].timestamp <= timestamp_) {
            return (nCheckpoints - 1);
        }

        // Next check implicit zero balance
        if (supplyCheckpoints[0].timestamp > timestamp_) {
            return 0;
        }

        uint256 lower = 0;
        uint256 upper = nCheckpoints - 1;
        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
            SupplyCheckpoint memory cp = supplyCheckpoints[center];
            if (cp.timestamp == timestamp_) {
                return center;
            } else if (cp.timestamp < timestamp_) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }
        return lower;
    }

    /// @inheritdoc IGT3Bribe
    function earned(address token, uint256 tokenId) public view returns (uint256) {
        if (numCheckpoints[tokenId] == 0) {
            return 0;
        }

        uint256 reward = 0;
        uint256 _supply = 1;
        uint256 _currTs = ProtocolTimeLibrary.epochStart(lastEarn[token][tokenId]); // take epoch last claimed in as starting point
        uint256 _index = getPriorBalanceIndex(tokenId, _currTs);
        Checkpoint memory cp0 = checkpoints[tokenId][_index];

        // accounts for case where lastEarn is before first checkpoint
        _currTs = Math.max(_currTs, ProtocolTimeLibrary.epochStart(cp0.timestamp));

        // get epochs between current epoch and first checkpoint in same epoch as last claim
        uint256 numEpochs = (ProtocolTimeLibrary.epochStart(block.timestamp) - _currTs) / ProtocolTimeLibrary.DURATION;

        if (numEpochs > 0) {
            for (uint256 i = 0; i < numEpochs; i++) {
                // get index of last checkpoint in this epoch
                _index = getPriorBalanceIndex(tokenId, _currTs + ProtocolTimeLibrary.DURATION - 1);
                // get checkpoint in this epoch
                cp0 = checkpoints[tokenId][_index];
                // get supply of last checkpoint in this epoch
                _supply = Math.max(
                    supplyCheckpoints[getPriorSupplyIndex(_currTs + ProtocolTimeLibrary.DURATION - 1)].supply, 1
                );
                reward += (cp0.balanceOf * tokenRewardsPerEpoch[token][_currTs]) / _supply;
                _currTs += ProtocolTimeLibrary.DURATION;
            }
        }

        return reward;
    }

    /// @inheritdoc IGT3Bribe
    function deposit(uint256 amount_, uint256 tokenId_) external onlyVoter {
        totalSupply += amount_;
        balanceOf[tokenId_] += amount_;

        _writeCheckpoint(tokenId_, balanceOf[tokenId_]);
        _writeSupplyCheckpoint();

        emit Deposit(msg.sender, tokenId_, amount_);
    }

    /// @inheritdoc IGT3Bribe
    function withdraw(uint256 amount_, uint256 tokenId_) external onlyVoter {
        totalSupply -= amount_;
        balanceOf[tokenId_] -= amount_;

        _writeCheckpoint(tokenId_, balanceOf[tokenId_]);
        _writeSupplyCheckpoint();

        emit Withdraw(msg.sender, tokenId_, amount_);
    }

    /// @inheritdoc IGT3Bribe
    function getRewardForOwner(uint256 tokenId_, address[] memory tokens_) external onlyVoter nonReentrant {
        address _owner = IxGT3(xGt3).ownerOf(tokenId_);
        _getReward(_owner, tokenId_, tokens_);
    }

    /// @inheritdoc IGT3Bribe
    function getReward(uint256 tokenId_, address[] memory tokens_) external nonReentrant {
        if (!IxGT3(xGt3).isApprovedOrOwner(msg.sender, tokenId_)) {
            revert GT3BribeNotTokenOwnerOrApproved(msg.sender, tokenId_);
        }
        _getReward(msg.sender, tokenId_, tokens_);
    }

    /// @inheritdoc IGT3Bribe
    function notifyRewardAmount(address token_, uint256 amount_) external nonReentrant {
        if (amount_ == 0) revert GT3BribeRewardAmountZero();
        IERC20(token_).safeTransferFrom(msg.sender, address(this), amount_);
        uint256 epochStart = ProtocolTimeLibrary.epochStart(block.timestamp);
        tokenRewardsPerEpoch[token_][epochStart] += amount_;
        emit NotifyReward(msg.sender, token_, epochStart, amount_);
    }

    /// @notice Internal function to write a balance checkpoint
    /// @param tokenId_ The ID of the token
    /// @param balance_ The balance to checkpoint
    function _writeCheckpoint(uint256 tokenId_, uint256 balance_) internal {
        uint256 _nCheckPoints = numCheckpoints[tokenId_];
        uint256 _timestamp = block.timestamp;

        if (
            _nCheckPoints > 0
                && ProtocolTimeLibrary.epochStart(checkpoints[tokenId_][_nCheckPoints - 1].timestamp)
                    == ProtocolTimeLibrary.epochStart(_timestamp)
        ) {
            checkpoints[tokenId_][_nCheckPoints - 1] = Checkpoint(_timestamp, balance_);
        } else {
            checkpoints[tokenId_][_nCheckPoints] = Checkpoint(_timestamp, balance_);
            numCheckpoints[tokenId_] = _nCheckPoints + 1;
        }
    }

    /// @notice Internal function to write a supply checkpoint
    function _writeSupplyCheckpoint() internal {
        uint256 _nCheckPoints = supplyNumCheckpoints;
        uint256 _timestamp = block.timestamp;

        if (
            _nCheckPoints > 0
                && ProtocolTimeLibrary.epochStart(supplyCheckpoints[_nCheckPoints - 1].timestamp)
                    == ProtocolTimeLibrary.epochStart(_timestamp)
        ) {
            supplyCheckpoints[_nCheckPoints - 1] = SupplyCheckpoint(_timestamp, totalSupply);
        } else {
            supplyCheckpoints[_nCheckPoints] = SupplyCheckpoint(_timestamp, totalSupply);
            supplyNumCheckpoints = _nCheckPoints + 1;
        }
    }

    /// @notice Internal function to process reward claims
    /// @param owner_ The address of the reward recipient
    /// @param tokenId_ The ID of the token
    /// @param tokens_ Array of reward token addresses
    function _getReward(address owner_, uint256 tokenId_, address[] memory tokens_) internal {
        uint256 _length = tokens_.length;
        for (uint256 i = 0; i < _length; i++) {
            uint256 _reward = earned(tokens_[i], tokenId_);
            lastEarn[tokens_[i]][tokenId_] = block.timestamp;
            if (_reward > 0) IERC20(tokens_[i]).safeTransfer(owner_, _reward);

            emit ClaimRewards(owner_, tokenId_, tokens_[i], _reward);
        }
    }
}
