// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Authorizable } from "@auth/Authorizable.sol";
import { Facet } from "@internal/eip2535/Facet.sol";

import { EnumerableSet } from "@solidstate/data/EnumerableSet.sol";
import { IERC20 } from "@solidstate/interfaces/IERC20.sol";
import { ReentrancyGuardTransient } from "@common/contracts/ReentrancyGuardTransient.sol";

import { IStakingFacet } from "../interfaces/IStakingFacet.sol";

import {
    StakingData,
    StakingLayout,
    StakingStorage,
    User,
    Rewards,
    RewardsClaim,
    Vesting,
    VestingMaxSteps
} from "../storage/StakingStorage.sol";

import { EIP712 } from "@signatures/EIP712.sol";

import { SignatureVerification } from "@signatures/libraries/SignatureVerification.sol";
import { ClaimHash } from "../signatures/ClaimHash.sol";

contract StakingFacet is Authorizable, Facet, IStakingFacet, ReentrancyGuardTransient, EIP712 {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SignatureVerification for bytes;
    using ClaimHash for RewardsClaim;

    uint256 constant MAGNITUDE = 2 ** 128;

    uint256 public immutable startTimestamp;
    IERC20 immutable rewardToken;
    IERC20 immutable stakedToken;
    address immutable pointsBackend;

    constructor(
        uint256 _startTimestamp,
        address _rewardTokenAddress,
        address _stakedTokenAddress,
        address _pointsBackend
    ) payable EIP712("StakingFacet", "1") {
        startTimestamp = _startTimestamp;
        rewardToken = IERC20(_rewardTokenAddress);
        stakedToken = IERC20(_stakedTokenAddress);
        pointsBackend = _pointsBackend;
    }

    function depositForVesting(VestingParams[] calldata params) external override nonreentrant requiresAuthorization {
        StakingData storage staking = StakingStorage.layout().data[0];
        mapping(address => User) storage users = staking.users;
        uint256 paramsLen = params.length;
        EnumerableSet.AddressSet storage userSet = staking.userSet;
        for (uint256 i; i < paramsLen; i++) {
            VestingParams memory param = params[i];
            User storage user = users[param.account];
            mapping(uint256 => Vesting) storage vests = user.vests;
            if (user.vestedAmount > 0) {
                revert InvalidInput(i);
            }
            staking.totalDividends += param.depositAmount + param.vestedAmount;
            user.depositAmount = param.depositAmount;
            user.vestedAmount = param.vestedAmount;
            uint256 length = param.vestingIds.length;
            uint256 totalVested;
            for (uint256 j; j < length; j++) {
                Vesting storage vest = vests[param.vestingIds[j]];
                vest.lockedAmount = param.vestingAmounts[j];
                totalVested += param.vestingAmounts[j];
            }

            if (totalVested != param.vestedAmount) {
                revert InvalidInput(i);
            }
            userSet.add(param.account);
        }
        emit VestInit(params);
    }

    function deposit(uint256 depositAmount) external override nonreentrant {
        _deposit(depositAmount, msg.sender);
    }

    function _deposit(uint256 depositAmount, address account) internal virtual returns (User storage user) {
        if (depositAmount == 0) {
            revert InvalidAmount();
        }
        StakingData storage staking = StakingStorage.layout().data[0];
        user = _preconditions(account, staking);
        uint256 userDepositAmount = user.depositAmount;
        uint256 userVestedAmount = user.vestedAmount;
        bool isNewUser = userDepositAmount == 0;
        if (!isNewUser) {
            _claimRewards(staking, user, account, false);
        }
        stakedToken.transferFrom(account, address(this), depositAmount);
        staking.totalDividends += depositAmount;
        userDepositAmount += depositAmount;
        user.depositAmount = userDepositAmount;
        _setRewardDebt(userDepositAmount + userVestedAmount, staking.rewardPerShare, user, account);
        if (isNewUser) {
            staking.userSet.add(account);
        }
        emit Deposit(depositAmount, msg.sender, account);
    }

    function withdraw(uint256 amount) external override nonreentrant {
        _withdraw(amount, msg.sender);
    }

    function _withdraw(uint256 amount, address account) internal virtual {
        if (amount == 0) {
            revert InvalidAmount();
        }
        StakingData storage staking = StakingStorage.layout().data[0];
        User storage user = _preconditions(account, staking);
        uint256 userDepositAmount = user.depositAmount;
        uint256 userVestedAmount = user.vestedAmount;
        uint256 vestUnlocked;
        uint256[3] memory vestsAvailable;
        uint256 step = staking.currentVestingStep;
        if (userVestedAmount > 0) {
            (vestUnlocked, vestsAvailable) = _vestAvailableForWithdraw(step, user);
        }
        if (amount > userDepositAmount + vestUnlocked) {
            revert InvalidAmount();
        }
        if (userDepositAmount + userVestedAmount > 0) {
            _claimRewards(staking, user, account, false);
        }
        if (amount > userDepositAmount) {
            uint256 remainingFromVested = amount - userDepositAmount;
            emit Withdraw(userDepositAmount, msg.sender, account);
            user.depositAmount = 0;
            userDepositAmount = 0;
            user.vestedAmount -= remainingFromVested;
            userVestedAmount -= remainingFromVested;
            for (uint256 i; i < 3; i++) {
                Vesting storage vest = user.vests[i];
                uint256 availableAmount = vestsAvailable[i];
                if (availableAmount == 0) {
                    continue;
                }
                if (availableAmount < remainingFromVested) {
                    uint256 withdrawnTotal = vest.withdrawnAmount + remainingFromVested;
                    vest.withdrawnAmount = withdrawnTotal;
                    emit VestUpdated(account, i, withdrawnTotal);
                    break;
                } else {
                    remainingFromVested -= availableAmount;
                    uint256 withdrawnTotal = vest.withdrawnAmount + availableAmount;
                    vest.withdrawnAmount = withdrawnTotal;
                    emit VestUpdated(account, i, withdrawnTotal);
                }
            }
        } else {
            userDepositAmount -= amount;
            user.depositAmount = userDepositAmount;
            emit Withdraw(amount, msg.sender, account);
        }
        staking.totalDividends -= amount;
        _setRewardDebt(userDepositAmount + userVestedAmount, staking.rewardPerShare, user, account);
        stakedToken.transfer(account, amount);
        if (userDepositAmount == 0 && userVestedAmount == 0) {
            staking.userSet.remove(account);
        }
    }

    function _vestAvailableForWithdraw(uint256 step, User storage user)
        internal
        view
        virtual
        returns (uint256 total, uint256[3] memory availableAmounts)
    {
        uint256[3] memory maxSteps = [VestingMaxSteps.ROUND_1, VestingMaxSteps.ROUND_2, VestingMaxSteps.ROUND_3];
        uint256 userVestedAmount = user.vestedAmount;
        if (userVestedAmount == 0) {
            return (0, availableAmounts);
        }
        mapping(uint256 => Vesting) storage vests = user.vests;
        for (uint256 i; i < 3; i++) {
            Vesting storage vest = vests[i];
            uint256 lockedAmount = vest.lockedAmount;
            uint256 withdrawnAmount = vest.withdrawnAmount;
            if (lockedAmount == 0 || lockedAmount == withdrawnAmount) {
                continue;
            }
            uint256 maxStep = maxSteps[i];
            if (step >= maxStep) {
                availableAmounts[i] = lockedAmount - withdrawnAmount;
                total += availableAmounts[i];
                continue;
            }
            uint256 tokensUnlockedPerStep = lockedAmount * MAGNITUDE / maxStep;
            uint256 vestUnlockedAmount = (tokensUnlockedPerStep * step) / MAGNITUDE;
            availableAmounts[i] = (vestUnlockedAmount - withdrawnAmount);
            total += availableAmounts[i];
        }
    }

    function claimRewards(RewardsClaim calldata claim, bytes calldata signature)
        external
        virtual
        override
        nonreentrant
        returns (uint256)
    {
        uint256 deadline = claim.deadline;
        if (deadline < block.timestamp) {
            revert ExpiredClaim();
        }
        address to = claim.to;
        if (to != msg.sender) {
            revert InvalidTo();
        }
        signature.verify(_hashTypedData(claim.hash()), pointsBackend);
        mapping(uint256 => StakingData) storage data = StakingStorage.layout().data;
        StakingData storage staking = data[0];
        User storage user = _preconditions(msg.sender, staking);
        return _claimRewards(staking, user, msg.sender, true);
    }

    function _claimRewards(StakingData storage staking, User storage user, address to, bool transfer)
        internal
        virtual
        returns (uint256)
    {
        (uint256 rewards, uint256 userAmount, uint256 rewardPerShare) = _getPendingRewards(staking, user, false);
        uint256 totalRewards = user.unclaimedRewards + rewards;
        if (totalRewards == 0) {
            if (transfer) {
                revert NoRewardsToClaim();
            } else {
                return 0;
            }
        }
        _setRewardDebt(userAmount, rewardPerShare, user, to);
        if (transfer) {
            user.unclaimedRewards = 0;
            rewardToken.transfer(to, totalRewards);
            emit ClaimRewards(totalRewards, to);
        } else {
            user.unclaimedRewards = totalRewards;
            emit UnclaimedRewardsUpdated(rewards, to);
        }
        return totalRewards;
    }

    function getPendingRewards(address _address) external view override returns (uint256) {
        StakingData storage staking = StakingStorage.layout().data[0];
        (uint256 pending,,) = _getPendingRewards(staking, staking.users[_address], true);
        return pending;
    }

    function getUserDepositAmount(address _address) external view override returns (uint256) {
        return StakingStorage.layout().data[0].users[_address].depositAmount;
    }

    function getUserVestedAmount(address _address) external view override returns (uint256) {
        return StakingStorage.layout().data[0].users[_address].vestedAmount;
    }

    function getUserTotalUnlockedAmount(address _address) external view override returns (uint256) {
        return StakingStorage.layout().data[0].users[_address].totalUnlockedAmount;
    }

    function getUserVesting(address account) external view override returns (Vesting[3] memory) {
        StakingData storage staking = StakingStorage.layout().data[0];
        User storage user = staking.users[account];
        mapping(uint256 => Vesting) storage vests = user.vests;
        return [vests[0], vests[1], vests[2]];
    }

    function getLastRewardTimestamp() external view override returns (uint256) {
        return StakingStorage.layout().data[0].lastRewardTimestamp;
    }

    function getTotalDividends() external view override returns (uint256) {
        return StakingStorage.layout().data[0].totalDividends;
    }

    function getCurrentRewards() external view override returns (uint256, uint256) {
        StakingData storage staking = StakingStorage.layout().data[0];
        uint256 currentRewardIndex = staking.currentRewardIndex;
        Rewards storage currentRewards = staking.rewards[currentRewardIndex];
        return (currentRewards.rewardPerSecond, currentRewards.endTimestamp);
    }

    function getNextRewards() external view override returns (uint256, uint256) {
        StakingData storage staking = StakingStorage.layout().data[0];
        uint256 nextRewardIndex = staking.currentRewardIndex + 1;
        Rewards storage nextRewards = staking.rewards[nextRewardIndex];
        return (nextRewards.rewardPerSecond, nextRewards.endTimestamp);
    }

    function getRewardPerSecond() external view override returns (uint256) {
        StakingData storage staking = StakingStorage.layout().data[0];
        return staking.rewards[staking.currentRewardIndex].rewardPerSecond;
    }

    function _preconditions(address account, StakingData storage staking)
        internal
        virtual
        returns (User storage user)
    {
        user = staking.users[account];
        if (block.timestamp < startTimestamp) {
            return user;
        }
        _processRewards(staking);
    }

    function _processRewards(StakingData storage staking) internal virtual {
        if (block.timestamp <= staking.lastRewardTimestamp) {
            return;
        }
        uint256 totalDividends = staking.totalDividends;
        if (totalDividends == 0) {
            return;
        }
        (uint256 rewardPerShareIncrease, uint256 nextRewardIndex) = _getRewardPerShare(totalDividends, staking);
        uint256 rewardPerShare = staking.rewardPerShare += rewardPerShareIncrease;
        staking.rewardPerShare = rewardPerShare;
        if (nextRewardIndex > 0) {
            staking.currentRewardIndex = nextRewardIndex;
            emit RewardIndexUpdate(nextRewardIndex);
        }
        staking.lastRewardTimestamp = block.timestamp;
        emit RewardPerShareUpdated(rewardPerShare);
    }

    function _getRewardPerShare(uint256 totalDividends, StakingData storage staking)
        internal
        view
        virtual
        returns (uint256 rewardPerShare, uint256 nextRewardIndex)
    {
        uint256 multiplier;
        uint256 rewardPerSecond;
        mapping(uint256 => Rewards) storage rewards = staking.rewards;
        uint256 currentRewardIndex = staking.currentRewardIndex;
        Rewards storage currentRewards = rewards[currentRewardIndex];
        uint256 endTimestamp = currentRewards.endTimestamp;
        if (endTimestamp < block.timestamp) {
            nextRewardIndex = currentRewardIndex + 1;
            Rewards storage nextRewards = rewards[nextRewardIndex];
            if (nextRewards.endTimestamp == 0) {
                revert MissingRewardsEndTimestamp();
            }
            multiplier = endTimestamp - staking.lastRewardTimestamp;
            rewardPerSecond = currentRewards.rewardPerSecond;
            rewardPerShare = ((multiplier * rewardPerSecond) * MAGNITUDE) / totalDividends;

            multiplier = block.timestamp - endTimestamp;
            rewardPerSecond = nextRewards.rewardPerSecond;
            rewardPerShare += ((multiplier * rewardPerSecond) * MAGNITUDE) / totalDividends;
        } else {
            multiplier = block.timestamp - staking.lastRewardTimestamp;
            rewardPerSecond = currentRewards.rewardPerSecond;
            rewardPerShare = ((multiplier * rewardPerSecond) * MAGNITUDE) / totalDividends;
        }
    }

    function _getPendingRewards(StakingData storage staking, User storage user, bool update)
        internal
        view
        virtual
        returns (uint256 pending, uint256 userAmount, uint256 rewardPerShare)
    {
        userAmount = user.depositAmount + (user.vestedAmount - user.totalUnlockedAmount);
        rewardPerShare = staking.rewardPerShare;
        if (userAmount == 0 || rewardPerShare == 0) {
            return (0, userAmount, rewardPerShare);
        }
        if (update) {
            uint256 totalDividends = staking.totalDividends;
            if (totalDividends != 0) {
                (uint256 rewardPerShareIncrease,) = _getRewardPerShare(totalDividends, staking);
                rewardPerShare += rewardPerShareIncrease;
            }
        }
        pending = ((userAmount * rewardPerShare) / MAGNITUDE) - user.rewardDebt;
        uint256 rewardTokenBalance = rewardToken.balanceOf(address(this));
        if (pending > rewardTokenBalance) {
            pending = rewardTokenBalance;
        }
    }

    function _setRewardDebt(uint256 userAmount, uint256 rewardPerShare, User storage user, address account) internal {
        uint256 rewardDebt = (userAmount * rewardPerShare) / MAGNITUDE;
        user.rewardDebt = rewardDebt;
        emit RewardDebtUpdated(rewardDebt, account, account);
    }

    function depositRewards(uint256 amount, uint256 endTimestamp) external requiresAuthorization {
        StakingData storage staking = StakingStorage.layout().data[0];
        _processRewards(staking);
        rewardToken.transferFrom(msg.sender, address(this), amount);
        mapping(uint256 => Rewards) storage rewards = staking.rewards;
        uint256 currentRewardIndex = staking.currentRewardIndex;
        Rewards storage nextRewards = rewards[currentRewardIndex + 1];
        uint256 nextRewardsEndTimestamp = nextRewards.endTimestamp;
        uint256 currentEndTimestamp = rewards[currentRewardIndex].endTimestamp;
        uint256 rewardPerSecond;
        if (nextRewardsEndTimestamp != 0) {
            if (nextRewardsEndTimestamp != endTimestamp) {
                revert InvalidEndTimestamp();
            }
            rewardPerSecond = nextRewards.rewardPerSecond + amount / (endTimestamp - currentEndTimestamp);
        } else {
            nextRewards.endTimestamp = endTimestamp;
            rewardPerSecond = amount / (endTimestamp - currentEndTimestamp);
        }

        nextRewards.rewardPerSecond = rewardPerSecond;
        emit RewardsDeposit(currentRewardIndex + 1, amount, rewardPerSecond, currentEndTimestamp, endTimestamp);
    }

    function incrementVestingStep() external requiresAuthorization {
        StakingData storage staking = StakingStorage.layout().data[0];
        uint256 currentStep = staking.currentVestingStep + 1;
        staking.currentVestingStep = currentStep;
        emit VestingStepUpdated(currentStep);
    }

    function initializeStaking(uint256 _startTimestamp, uint256 usdcAmount) external requiresAuthorization {
        StakingData storage staking = StakingStorage.layout().data[0];
        if (staking.lastRewardTimestamp != 0) {
            revert StakingAlreadyInitialized();
        }
        staking.lastRewardTimestamp = _startTimestamp;
        staking.currentVestingStep = 1;

        Rewards storage rewards = staking.rewards[0];
        uint256 endTimestamp = _startTimestamp + 30 days;
        rewards.endTimestamp = endTimestamp;
        uint256 rewardPerSecond = usdcAmount / (endTimestamp - _startTimestamp);
        rewards.rewardPerSecond = rewardPerSecond;
        emit IStakingFacet.RewardsDeposit(0, usdcAmount, rewards.rewardPerSecond, _startTimestamp, endTimestamp);
    }
}
