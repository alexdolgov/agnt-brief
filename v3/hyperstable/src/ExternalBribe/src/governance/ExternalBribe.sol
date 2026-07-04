// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {SystemEpoch} from "./SystemEpoch.sol";
import {IGauge} from "../interfaces/IGauge.sol";
import {IBribe} from "../interfaces/IBribe.sol";
import {IVoter} from "../interfaces/IVoter.sol";
import {IVotingEscrow} from "../interfaces/IVotingEscrow.sol";

// Bribes pay out rewards for a given pool based on the votes that were received from the user (goes hand in hand with Voter.vote())
contract ExternalBribe is IBribe, UUPSUpgradeable, ReentrancyGuardUpgradeable, SystemEpoch {
    /// @notice A checkpoint for marking balance
    struct Checkpoint {
        uint256 timestamp;
        uint256 balanceOf;
    }

    /// @notice A checkpoint for marking supply
    struct SupplyCheckpoint {
        uint256 timestamp;
        uint256 supply;
    }

    address public immutable VOTER; // only voter can modify balances (since it only happens on vote())
    address public immutable VE; // 天使のたまご

    uint256 public constant MAX_REWARD_TOKENS = 16;
    uint256 public constant PRECISION = 1e18;

    uint256 public totalSupply;
    mapping(uint256 => uint256) public balanceOf;
    mapping(address => mapping(uint256 => uint256)) public tokenRewardsPerEpoch;
    mapping(address => uint256) public periodFinish;
    mapping(address => mapping(uint256 => uint256)) public lastEarn;

    address[] public rewards;
    mapping(address => bool) public isReward;

    /// @notice A record of balance checkpoints for each account, by index
    mapping(uint256 => mapping(uint256 => Checkpoint)) public checkpoints;
    /// @notice The number of checkpoints for each account
    mapping(uint256 => uint256) public numCheckpoints;
    /// @notice A record of balance checkpoints for each token, by index
    mapping(uint256 => SupplyCheckpoint) public supplyCheckpoints;
    /// @notice The number of checkpoints
    uint256 public supplyNumCheckpoints;

    uint256[49] __gap;

    event Deposit(address indexed from, uint256 tokenId, uint256 amount);
    event Withdraw(address indexed from, uint256 tokenId, uint256 amount);
    event NotifyReward(address indexed from, address indexed reward, uint256 epoch, uint256 amount);
    event ClaimRewards(address indexed from, address indexed reward, uint256 amount);

    error OnlyTeam();

    constructor(address _voter) {
        VOTER = _voter;
        VE = IVoter(_voter)._ve();

        _disableInitializers();
    }

    modifier onlyTeam() {
        if (msg.sender != IVotingEscrow(VE).team()) {
            revert OnlyTeam();
        }

        _;
    }

    function initialize(address[] calldata _allowedRewardTokens) external initializer {
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        for (uint256 i; i < _allowedRewardTokens.length; i++) {
            if (_allowedRewardTokens[i] != address(0)) {
                isReward[_allowedRewardTokens[i]] = true;
                rewards.push(_allowedRewardTokens[i]);
            }
        }
    }

    // This is an external function, but internal notation is used since it can only be called "internally" from Gauges
    function _deposit(uint256 amount, uint256 tokenId) external {
        require(msg.sender == VOTER);

        totalSupply += amount;
        balanceOf[tokenId] += amount;

        _writeCheckpoint(tokenId, balanceOf[tokenId]);
        _writeSupplyCheckpoint();

        emit Deposit(msg.sender, tokenId, amount);
    }

    function _withdraw(uint256 amount, uint256 tokenId) external {
        require(msg.sender == VOTER);

        totalSupply -= amount;
        balanceOf[tokenId] -= amount;

        _writeCheckpoint(tokenId, balanceOf[tokenId]);
        _writeSupplyCheckpoint();

        emit Withdraw(msg.sender, tokenId, amount);
    }

    function getEpochStart(uint256 timestamp) public pure returns (uint256) {
        uint256 bribeStart = _bribeStart(timestamp);
        uint256 bribeEnd = bribeStart + EPOCH;
        return timestamp < bribeEnd ? bribeStart : bribeStart + EPOCH;
    }

    /**
     * @notice Determine the prior balance for an account as of a block number
     * @dev Block number must be a finalized block or else this function will revert to prevent misinformation.
     * @param tokenId The token of the NFT to check
     * @param timestamp The timestamp to get the balance at
     * @return The balance the account had as of the given block
     */
    function getPriorBalanceIndex(uint256 tokenId, uint256 timestamp) public view returns (uint256) {
        uint256 nCheckpoints = numCheckpoints[tokenId];
        if (nCheckpoints == 0) {
            return 0;
        }
        // First check most recent balance
        if (checkpoints[tokenId][nCheckpoints - 1].timestamp <= timestamp) {
            return (nCheckpoints - 1);
        }
        // Next check implicit zero balance
        if (checkpoints[tokenId][0].timestamp > timestamp) {
            return 0;
        }

        uint256 lower = 0;
        uint256 upper = nCheckpoints - 1;
        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
            Checkpoint memory cp = checkpoints[tokenId][center];
            if (cp.timestamp == timestamp) {
                return center;
            } else if (cp.timestamp < timestamp) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }
        return lower;
    }

    function getPriorSupplyIndex(uint256 timestamp) public view returns (uint256) {
        uint256 nCheckpoints = supplyNumCheckpoints;
        if (nCheckpoints == 0) {
            return 0;
        }

        // First check most recent balance
        if (supplyCheckpoints[nCheckpoints - 1].timestamp <= timestamp) {
            return (nCheckpoints - 1);
        }

        // Next check implicit zero balance
        if (supplyCheckpoints[0].timestamp > timestamp) {
            return 0;
        }

        uint256 lower = 0;
        uint256 upper = nCheckpoints - 1;
        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
            SupplyCheckpoint memory cp = supplyCheckpoints[center];
            if (cp.timestamp == timestamp) {
                return center;
            } else if (cp.timestamp < timestamp) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }
        return lower;
    }

    function rewardsListLength() external view returns (uint256) {
        return rewards.length;
    }

    // returns the last time the reward was modified or periodFinish if the reward has ended
    function lastTimeRewardApplicable(address token) public view returns (uint256) {
        return FixedPointMathLib.min(block.timestamp, periodFinish[token]);
    }

    // allows a user to claim rewards for a given token
    function getReward(uint256 tokenId, address[] memory tokens) external nonReentrant {
        require(IVotingEscrow(VE).isApprovedOrOwner(msg.sender, tokenId));
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 _reward = earned(tokens[i], tokenId);
            lastEarn[tokens[i]][tokenId] = block.timestamp;
            if (_reward > 0) _safeTransfer(tokens[i], msg.sender, _reward);

            emit ClaimRewards(msg.sender, tokens[i], _reward);
        }
    }

    // used by Voter to allow batched reward claims
    function getRewardForOwner(uint256 tokenId, address[] memory tokens) external nonReentrant {
        require(msg.sender == VOTER);
        address _owner = IVotingEscrow(VE).ownerOf(tokenId);
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 _reward = earned(tokens[i], tokenId);
            lastEarn[tokens[i]][tokenId] = block.timestamp;
            if (_reward > 0) _safeTransfer(tokens[i], _owner, _reward);

            emit ClaimRewards(_owner, tokens[i], _reward);
        }
    }

    function earned(address token, uint256 tokenId) public view returns (uint256) {
        if (numCheckpoints[tokenId] == 0) {
            // No deposits => No rewards
            return 0;
        }

        uint256 earnedRewards = 0;
        uint256 epochStart = _bribeStart(lastEarn[token][tokenId]);
        uint256 index = getPriorBalanceIndex(tokenId, epochStart);
        Checkpoint memory lastPoint = checkpoints[tokenId][index];

        // Current timestamp or last checkpoint timestamp
        epochStart = FixedPointMathLib.max(epochStart, _bribeStart(lastPoint.timestamp));

        // A second before the current epoch ends
        uint256 epochEnd = epochStart + EPOCH - 1;

        uint256 lastClaimableEpoch = (_bribeStart(block.timestamp) - epochStart) / EPOCH;

        if (lastClaimableEpoch > 0) {
            for (uint256 i = 0; i < lastClaimableEpoch; i++) {
                // update index for the current epoch
                index = getPriorBalanceIndex(tokenId, epochEnd);

                // get checkpoint in this epoch
                lastPoint = checkpoints[tokenId][index];

                // Get last supply snapshot on epoch or `1` (prevents division by zero)
                uint256 supply = FixedPointMathLib.max(supplyCheckpoints[getPriorSupplyIndex(epochEnd)].supply, 1);

                // Accumulate earned rewards
                earnedRewards +=
                    (lastPoint.balanceOf * tokenRewardsPerEpoch[token][epochStart]) * PRECISION / supply / PRECISION;

                // Advance to next epoch
                epochStart += EPOCH;
                epochEnd = epochStart + EPOCH - 1;
            }
        }

        return earnedRewards;
    }

    function left(address token) external view returns (uint256) {
        uint256 adjustedTstamp = getEpochStart(block.timestamp);
        return tokenRewardsPerEpoch[token][adjustedTstamp];
    }

    function notifyRewardAmount(address token, uint256 amount) external nonReentrant {
        require(amount > 0);
        if (!isReward[token]) {
            require(IVoter(VOTER).isWhitelisted(token), "bribe tokens must be whitelisted");
            require(rewards.length < MAX_REWARD_TOKENS, "too many rewards tokens");
        }
        // bribes kick in at the start of next bribe period
        uint256 adjustedTstamp = getEpochStart(block.timestamp);
        uint256 epochRewards = tokenRewardsPerEpoch[token][adjustedTstamp];

        _safeTransferFrom(token, msg.sender, address(this), amount);
        tokenRewardsPerEpoch[token][adjustedTstamp] = epochRewards + amount;

        periodFinish[token] = adjustedTstamp + EPOCH;

        if (!isReward[token]) {
            isReward[token] = true;
            rewards.push(token);
        }

        emit NotifyReward(msg.sender, token, adjustedTstamp, amount);
    }

    function swapOutRewardToken(uint256 i, address oldToken, address newToken) external onlyTeam {
        require(rewards[i] == oldToken);
        isReward[oldToken] = false;
        isReward[newToken] = true;
        rewards[i] = newToken;
    }

    function _bribeStart(uint256 timestamp) internal pure returns (uint256) {
        return timestamp - (timestamp % (EPOCH));
    }

    function _writeCheckpoint(uint256 tokenId, uint256 balance) internal {
        uint256 _timestamp = block.timestamp;
        uint256 _nCheckPoints = numCheckpoints[tokenId];
        if (_nCheckPoints > 0 && checkpoints[tokenId][_nCheckPoints - 1].timestamp == _timestamp) {
            checkpoints[tokenId][_nCheckPoints - 1].balanceOf = balance;
        } else {
            checkpoints[tokenId][_nCheckPoints] = Checkpoint(_timestamp, balance);
            numCheckpoints[tokenId] = _nCheckPoints + 1;
        }
    }

    function _writeSupplyCheckpoint() internal {
        uint256 _nCheckPoints = supplyNumCheckpoints;
        uint256 _timestamp = block.timestamp;

        if (_nCheckPoints > 0 && supplyCheckpoints[_nCheckPoints - 1].timestamp == _timestamp) {
            supplyCheckpoints[_nCheckPoints - 1].supply = totalSupply;
        } else {
            supplyCheckpoints[_nCheckPoints] = SupplyCheckpoint(_timestamp, totalSupply);
            supplyNumCheckpoints = _nCheckPoints + 1;
        }
    }

    function _safeTransfer(address token, address to, uint256 value) internal {
        require(token.code.length > 0);
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

    function _safeTransferFrom(address token, address from, address to, uint256 value) internal {
        require(token.code.length > 0);
        (bool success, bytes memory data) =
            token.call(abi.encodeWithSelector(IERC20.transferFrom.selector, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

    function _authorizeUpgrade(address) internal override onlyTeam {}
}
