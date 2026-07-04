//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.2;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IStakingRegistry} from "./interfaces/IStakingRegistry.sol";
import {console} from "forge-std/console.sol";

struct Stake {
    uint256 hopBalance; // The total balance of HOP including pending unstaked HOP
    uint256 totalUnstaked;
    mapping(uint256 => uint256) pendingUnstakedForWindow;

    uint256 activeChallengeCount;
    uint256 totalChallengeCount;
}

struct Challenge {
    address staker;
    address challenger;
    uint256 lastUpdated;
    uint256 penalty;
    bool isSettled;
    bool isChallengeWon;
    bool isAppealed;
    uint256 challengeEth;
    mapping(address => uint256) ethContributed;
    uint256 appealEth;
}

/// @title Staking Registry
/// @dev Manages HOP token staking, withdrawals, and a challenge/appeal game that can slash dishonest bonders.
contract StakingRegistry is IStakingRegistry, Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable hopToken;
    uint256 public immutable challengeIterationPeriod; // The time after a challenge iteration before it can be optimistically settled
    uint256 public immutable minChallengeIncrease;
    uint256 public immutable fullChallenge;
    uint256 public immutable minHopStake;
    uint256 public immutable windowSize;

    mapping(address => Stake) private stakes;
    mapping(bytes32 => Challenge) private challenges;

    constructor(
        IERC20 _hopToken,
        uint256 _challengeIterationPeriod, // e.g. 1 days
        uint256 _minChallengeIncrease, // e.g. 1 ETH
        uint256 _fullChallenge, // e.g. 3 ETH
        uint256 _minHopStake, // e.g. 50,000 HOP
        uint256 _windowSize // e.g. 1 hour
    ) {
        require(address(_hopToken) != address(0), "StakingRegistry: hop token cannot be address(0)");
        require(_challengeIterationPeriod > 0, "StakingRegistry: challenge period must be greater than 0");
        require(_minChallengeIncrease > 0, "StakingRegistry: minChallengeIncrease must be greater than 0");
        require(_fullChallenge > _minChallengeIncrease, "StakingRegistry: fullChallenge must be greater than minChallengeIncrease");
        require(_minHopStake > 0, "StakingRegistry: minHopStake must be greater than 0");
        require(_windowSize > 0, "StakingRegistry: windowSize must be greater than 0");

        hopToken = _hopToken;
        challengeIterationPeriod = _challengeIterationPeriod;
        minChallengeIncrease = _minChallengeIncrease;
        fullChallenge = _fullChallenge;
        minHopStake = _minHopStake;
        windowSize = _windowSize;
    }

    /// @notice Stake `amount` HOP on behalf of `staker`.
    function stakeHop(address staker, uint256 amount) external {
        require(staker != address(0), "StakeRegistry: no zero address");

        Stake storage stake = stakes[staker];
        stake.hopBalance += amount;

        emit HopStaked(staker, msg.sender, amount);

        hopToken.safeTransferFrom(msg.sender, address(this), amount);
    }

    /// @notice Schedule withdrawal of `amount` HOP
    /// @dev Tokens remain locked during the challenge window
    function unstakeHop(uint256 amount) external {
        Stake storage stake = stakes[msg.sender];
        require(stake.totalChallengeCount == 0, "StakeRegistry: cannot unstake during challenges");

        uint256 currentStake = stake.hopBalance - stake.totalUnstaked;
        if (currentStake != amount) {
            require(currentStake >= amount + minHopStake, "StakeRegistry: insufficient balance");
        }

        stake.totalUnstaked += amount;

        uint256 window = getWindowForTimestamp(block.timestamp);
        stake.pendingUnstakedForWindow[window] += amount;

        emit HopUnstaked(msg.sender, amount);
    }

    /// @notice Withdraw HOP that has completed the challenge delay.
    function withdrawStake(uint256 amount) external {
        Stake storage stake = stakes[msg.sender];
        require(stake.totalChallengeCount == 0, "StakeRegistry: cannot withdraw during challenges");
        uint256 withdrawableBalance = getWithdrawableBalance(msg.sender);
        require(amount <= withdrawableBalance, "StakeRegistry: insufficient withdrawable balance");
        stake.totalUnstaked -= amount;
        stake.hopBalance -= amount;

        emit StakeWithdrawn(msg.sender, amount);

        hopToken.safeTransfer(msg.sender, amount);
    }

    /// @notice Emit bonder preferences for offchain bonder selection.
    function signalPreference(bytes32 pathId, uint256 feeTier, uint256 liquidity) external {
        require(isStaked(msg.sender), "StakeRegistry: bonder not staked");
        emit BonderPreference(msg.sender, pathId, feeTier, liquidity);
    }

    /// @notice Initiate a challenge against `staker` by bonding ETH
    /// @dev slashingData should include a nonce or salt to create unique challengeIds
    /// @return challengeId The unique identifier for the created challenge
    function createChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        payable
        returns (bytes32)
    {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        require(staker != address(0), "StakeRegistry: no zero address");
        require(challenges[challengeId].staker == address(0), "StakeRegistry: challenge already exists");
        uint256 challengeEth = msg.value;
        require(challengeEth >= minChallengeIncrease, "StakeRegistry: insufficient challenge stake");

        Challenge storage challenge = challenges[challengeId];
        challenge.staker = staker;
        challenge.challenger = msg.sender;
        challenge.lastUpdated = block.timestamp;
        challenge.penalty = penalty;
        challenge.challengeEth = challengeEth;
        challenge.ethContributed[msg.sender] = challengeEth;

        stakes[staker].activeChallengeCount++;
        stakes[staker].totalChallengeCount++;

        emit ChallengeCreated(staker, msg.sender, penalty, slashingData, challengeEth);

        return challengeId;
    }

    /// @notice Add ETH to an existing challenge
    function addToChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        payable
    {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        Challenge storage challenge = challenges[challengeId];
        require(challenge.staker != address(0), "StakeRegistry: challenge does not exists");
        require(challenge.isSettled == false, "StakeRegistry: challenge already isSettled");
        uint256 challengeEth = challenge.challengeEth + msg.value;
        require(challengeEth <= fullChallenge, "StakeRegistry: challenge overfilled");
        require(block.timestamp < challenge.lastUpdated + challengeIterationPeriod, "StakeRegistry: challengeIterationPeriod not passed");

        // the challenger side must increase `challengeEth` to least `minChallengeIncrease` more than `appealEth`
        // unless `fullChallenge` has been reached.
        require(challengeEth >= challenge.appealEth + minChallengeIncrease || challengeEth == fullChallenge, "StakeRegistry: insufficient challenge ETH");
        challenge.challengeEth = challengeEth;
        // track how much this specific address has contributed so it can later claim winnings
        challenge.ethContributed[msg.sender] += msg.value;

        // If the staker was previously leading (i.e. an appeal was active) and the challenger has now
        // regained the lead, set `isAppealed` to false and restart the timeout.
        if (challenge.isAppealed) {
            challenge.lastUpdated = block.timestamp;
            challenge.isAppealed = false;
            // the challenge is live again so we increment activeChallengeCount for the staker
            stakes[staker].activeChallengeCount++;
        }

        emit AddedToChallenge(staker, msg.sender, penalty, slashingData, msg.value);
    }

    /// @notice Increase the appeal in favour of the staker
    function addToAppeal(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
        payable
    {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        Challenge storage challenge = challenges[challengeId];
        require(challenge.staker != address(0), "StakeRegistry: challenge does not exists");
        require(challenge.isSettled == false, "StakeRegistry: challenge already isSettled");
        uint256 appealEth = challenge.appealEth + msg.value;
        require(appealEth <= fullChallenge, "StakeRegistry: appeal overfilled");
        require(block.timestamp < challenge.lastUpdated + challengeIterationPeriod, "StakeRegistry: challengeIterationPeriod not passed");

        // the staker must increase `appealEth` to least `minChallengeIncrease` more than `challengeEth`
        // unless `fullChallenge` has been reached.
        require(appealEth >= challenge.challengeEth + minChallengeIncrease || appealEth == fullChallenge, "StakeRegistry: insufficient appeal ETH");
        challenge.appealEth = appealEth;

        // If the challenger was previously leading (i.e. no active appeal) and the staker now pulls ahead,
        // set `isAppealed` to true and restart the timeout.
        if (!challenge.isAppealed && (appealEth < fullChallenge || challenge.challengeEth < fullChallenge)) {
            challenge.lastUpdated = block.timestamp; // restart countdown
            challenge.isAppealed = true;

            Stake storage stake = stakes[staker];
            assert(stake.activeChallengeCount > 0);
            stake.activeChallengeCount--;
        }

        emit AddedToAppeal(staker, msg.sender, penalty, slashingData, msg.value);
    }

    /// @notice Settle a challenge after the timeout if challenge is not full
    function optimisticallySettleChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        external
    {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        Challenge storage challenge = challenges[challengeId];
        require(challenge.appealEth < fullChallenge || challenge.challengeEth < fullChallenge, "StakeRegistry: challenge is full");
        require(block.timestamp >= challenge.lastUpdated + challengeIterationPeriod, "StakeRegistry: challengeIterationPeriod not passed");

        bool challengeWon = !challenge.isAppealed;
        settleChallenge(staker, penalty, slashingData, challengeWon);
    }

    /// @dev Bonder accepts the slash and settles challenge.
    function acceptSlash(
        uint256 penalty,
        bytes memory slashingData
    )
        external
    {
        settleChallenge(msg.sender, penalty, slashingData, true);
    }

    /// @notice Governance settles a full challenge
    function forceSettleChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData,
        bool challengeWon
    )
        external
        onlyOwner
    {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        Challenge storage challenge = challenges[challengeId];
        require(challenge.appealEth == fullChallenge && challenge.challengeEth == fullChallenge, "StakeRegistry: challenge not full");
        settleChallenge(staker, penalty, slashingData, challengeWon);
    }

    function settleChallenge(
        address staker,
        uint256 penalty,
        bytes memory slashingData,
        bool challengeWon
    )
        internal
    {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        Challenge storage challenge = challenges[challengeId];
        require(challenge.staker != address(0), "StakeRegistry: challenge does not exists");
        require(challenge.isSettled == false, "StakeRegistry: challenge already isSettled");
        challenge.isSettled = true;
        challenge.isChallengeWon = challengeWon;

        // Decrement the staker's challenge count if the challenge is not appealed.
        Stake storage stake = stakes[challenge.staker];
        if (!challenge.isAppealed) {
            assert(stake.activeChallengeCount > 0);
            stake.activeChallengeCount--;
        }
        stake.totalChallengeCount--;

        emit ChallengeSettled(
            staker,
            penalty,
            slashingData,
            challenge.challengeEth + challenge.appealEth,
            challengeWon
        );

        // If the challenger won, slash the staker's HOP stake and distribute the penalty.
        if (challengeWon) {
            // The penalty cannot exceed the current stake balance.
            uint256 _penalty = penalty;
            if (stake.hopBalance < _penalty) {
                _penalty = stake.hopBalance;
            }
            // Evenly split the penalty between the challenger and the DAO (contract owner).
            uint256 hopForChallenger = _penalty / 2;
            uint256 hopForDao = _penalty - hopForChallenger;

            stake.hopBalance -= _penalty;
            uint256 _totalUnstaked = stake.totalUnstaked;
            if (_totalUnstaked > _penalty) {
                stake.totalUnstaked = _totalUnstaked - _penalty;
            } else if (_totalUnstaked > 0) {
                stake.totalUnstaked = 0;
            }

            // Distribute HOP
            hopToken.safeTransfer(owner(), hopForDao);
            hopToken.safeTransfer(challenge.challenger, hopForChallenger);
        }
    }

    /// @notice Claim ETH winnings from a settled challenge by bonder or challenger
    function claimEth(address staker, uint256 penalty, bytes memory slashingData) external {
        bytes32 challengeId = getChallengeId(staker, penalty, slashingData);
        Challenge storage challenge = challenges[challengeId];
        require(challenge.staker != address(0), "StakeRegistry: challenge does not exists");
        require(challenge.isSettled == true, "StakeRegistry: challenge is not settled");

        uint256 ethWon;
        if (challenge.isChallengeWon) {
            uint256 ethContributed = challenge.ethContributed[msg.sender];
            require(ethContributed > 0, "StakeRegistry: no contribution");
            uint256 challengeEth = challenge.challengeEth;
            uint256 totalEth = challengeEth + challenge.appealEth;
            ethWon = totalEth * ethContributed / challengeEth;
            challenge.ethContributed[msg.sender] = 0;
        } else {
            require(challenge.staker == msg.sender, "StakeRegistry: not staker");
            ethWon = challenge.challengeEth + challenge.appealEth;
            challenge.challengeEth = 0;
            challenge.appealEth = 0;
        }

        emit EthClaimed(staker, penalty, slashingData, ethWon);
        transfer(msg.sender, ethWon);
    }

    /// @notice Returns true if `staker` is currently staked and has no open challenges
    /// @return True if the staker is properly staked and eligible to operate as a bonder
    function isStaked(address staker) public view returns (bool) {
        Stake storage stake = stakes[staker];
        return stake.activeChallengeCount == 0 && stake.hopBalance - stake.totalUnstaked >= minHopStake;
    }

    function transfer(address to, uint256 amount) internal {
        (bool success, ) = to.call{value: amount}("");
        require(success, "StakingRegistry: transfer failed");
    }

    /// @notice Returns HOP amount currently withdrawable by `staker`
    /// @return withdrawableBalance The amount of HOP tokens that can be withdrawn immediately
    function getWithdrawableBalance(address staker) public view returns (uint256 withdrawableBalance) {
        Stake storage stake = stakes[staker];
        uint256 pendingUnstaked = getTotalPendingUnstaked(stake);
        uint256 totalUnstaked = stake.totalUnstaked;
        if (pendingUnstaked >= totalUnstaked) return 0;
        withdrawableBalance = totalUnstaked - pendingUnstaked;
        uint256 hopBalance = stake.hopBalance;
        if (withdrawableBalance > hopBalance) {
            withdrawableBalance = hopBalance;
        }
        return withdrawableBalance;
    }

    /// @notice Returns challenge ID for challenge parameters
    /// @dev slashingData should include a nonce or salt to create unique challengeIds
    /// @return challengeId The deterministic identifier for the challenge
    function getChallengeId(
        address staker,
        uint256 penalty,
        bytes memory slashingData
    )
        public
        pure
        returns (bytes32)
    {
        return keccak256(abi.encodePacked(staker, penalty, slashingData));
    }

    function getWindowForTimestamp(uint256 timestamp) internal view returns (uint256) {
        return timestamp / windowSize;
    }

    function getTotalPendingUnstaked(Stake storage stake) internal view returns (uint256) {
        uint256 startTimestamp = block.timestamp - challengeIterationPeriod;
        uint256 startWindow = getWindowForTimestamp(startTimestamp);
        uint256 currentWindow = getWindowForTimestamp(block.timestamp);

        uint256 total = 0;
        for (uint256 i = startWindow; i <= currentWindow; i++) {
            total += stake.pendingUnstakedForWindow[i];
        }

        return total;
    }

    function getTotalPendingUnstaked(address staker) external view returns (uint256) {
        return getTotalPendingUnstaked(stakes[staker]);
    }

    /// @notice Returns HOP amount currently staked by `staker`.
    /// @return The total amount of HOP tokens currently staked
    function getTotalBalance(address staker) external view returns (uint256) {
        return stakes[staker].hopBalance;
    }

    function getStakedBalance(address staker) external view returns (uint256) {
        return stakes[staker].hopBalance - stakes[staker].totalUnstaked;
    }

    function getChallenge(
        bytes32 challengeId
    ) 
        external 
        view 
        returns (
            address staker,
            address challenger,
            uint256 lastUpdated,
            uint256 penalty,
            bool isSettled,
            bool isChallengeWon,
            bool isAppealed,
            uint256 challengeEth,
            uint256 appealEth
    ) {
        Challenge storage challenge = challenges[challengeId];
        return (
            challenge.staker,
            challenge.challenger,
            challenge.lastUpdated,
            challenge.penalty,
            challenge.isSettled,
            challenge.isChallengeWon,
            challenge.isAppealed,
            challenge.challengeEth,
            challenge.appealEth
        );
    }

    function getStake(
        address staker
    )
        external
        view
        returns
    (
        uint256 hopBalance,
        uint256 totalUnstaked,
        uint256 activeChallengeCount,
        uint256 totalChallengeCount
    ) {
        Stake storage stake = stakes[staker];
        return (
            stake.hopBalance,
            stake.totalUnstaked,
            stake.activeChallengeCount,
            stake.totalChallengeCount
        );
    }
}
