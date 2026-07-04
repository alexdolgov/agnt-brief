// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 Jones DAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IRewardReceiver} from "src/interfaces/IRewardReceiver.sol";
import {IRewardTracker} from "src/interfaces/IRewardTracker.sol";

import {UpgradeableGovernable} from "src/common/UpgradeableGovernable.sol";
import {UpgradeableOperableKeepable} from "src/common/UpgradeableOperableKeepable.sol";

contract RewardTracker is IRewardTracker, UpgradeableOperableKeepable {
    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    uint256 public constant PRECISION = 1e30;

    address public sharesToken;
    address public rewardToken;

    IRewardReceiver public receiver;
    address public incentiveReceiver;

    uint256 public cumulativeRewardPerShare;
    mapping(address => uint256) public claimableReward;
    mapping(address => uint256) public previousCumulatedRewardPerShare;
    mapping(address => uint256) public cumulativeRewards;

    uint256 public totalStakedAmount;
    mapping(address => uint256) public stakedAmounts;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(address _sharesToken, address _rewardToken, address _receiver, address _incentiveReceiver)
        external
        initializer
    {
        __Governable_init(msg.sender);

        sharesToken = _sharesToken;
        rewardToken = _rewardToken;
        receiver = IRewardReceiver(_receiver);
        incentiveReceiver = _incentiveReceiver;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  OPERATOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Stake into this contract assets to start earning rewards
     * @param _account Owner of the stake and future rewards
     * @param _amount Assets to be staked
     * @return Amount of assets staked
     */
    function stake(address _account, uint256 _amount) external onlyOperator returns (uint256) {
        if (_amount == 0) {
            revert AmountCannotBeZero();
        }
        _stake(_account, _amount);
        return _amount;
    }

    /**
     * @notice Withdraw the staked assets
     * @param _account Owner of the assets to be withdrawn
     * @param _amount Assets to be withdrawn
     * @return Amount of assets witdrawed
     */
    function withdraw(address _account, uint256 _amount) external onlyOperator returns (uint256) {
        if (_amount == 0) {
            revert AmountCannotBeZero();
        }

        _withdraw(_account, _amount);
        return _amount;
    }

    /**
     * @notice Claim _account cumulative rewards
     * @dev Reward token will be transfer to the _account
     * @param _account Owner of the rewards
     * @return Amount of reward tokens transferred
     */
    function claim(address _account) external onlyOperator returns (uint256) {
        return _claim(_account);
    }

    /**
     * @notice Update global cumulative reward
     * @dev No reward token are transferred
     */
    function updateRewards() external onlyOperatorOrKeeper {
        _updateRewards(address(0));
    }

    /* -------------------------------------------------------------------------- */
    /*                                  EXTERNAL                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Deposit rewards
     * @dev Transfer from called here
     * @param _rewards Amount of reward asset transferer
     */
    function depositRewards(uint256 _rewards) external {
        if (_rewards == 0) {
            revert AmountCannotBeZero();
        }
        uint256 totalShares = totalStakedAmount;
        IERC20(rewardToken).transferFrom(msg.sender, address(this), _rewards);

        if (totalShares != 0) {
            cumulativeRewardPerShare = cumulativeRewardPerShare + ((_rewards * PRECISION) / totalShares);
            emit UpdateRewards(msg.sender, _rewards, totalShares, cumulativeRewardPerShare);
        } else {
            IERC20(rewardToken).transfer(incentiveReceiver, _rewards);
        }
    }

    /**
     * @notice Return _account claimable rewards
     * @dev No reward token are transferred
     * @param _account Owner of the rewards
     * @return Amount of reward tokens that can be claim
     */
    function claimable(address _account) external view returns (uint256) {
        uint256 shares = stakedAmounts[_account];
        if (shares == 0) {
            return claimableReward[_account];
        }
        uint256 totalShares = totalStakedAmount;
        uint256 pendingRewards = receiver.pendingRewards() * PRECISION;
        uint256 nextCumulativeRewardPerShare = cumulativeRewardPerShare + (pendingRewards / totalShares);
        return claimableReward[_account]
            + ((shares * (nextCumulativeRewardPerShare - previousCumulatedRewardPerShare[_account])) / PRECISION);
    }

    /**
     * @notice Return _account staked amount
     * @param _account Owner of the staking
     * @return Staked amount
     */
    function stakedAmount(address _account) external view returns (uint256) {
        return stakedAmounts[_account];
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GOVERNOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Set a new shares and reward tokens
     * @param _sharesToken address of new shares token
     * @param _rewardToken address of new reward token
     */
    function setTokens(address _sharesToken, address _rewardToken) external onlyGovernor {
        sharesToken = _sharesToken;
        rewardToken = _rewardToken;
    }

    /**
     * @notice Set a new rewards receiver contract
     * @param _receiver New receiver address
     */
    function setRewardsReceiver(address _receiver) external onlyGovernor {
        receiver = IRewardReceiver(_receiver);
    }

    /**
     * @notice Set a new incentive receiver contract
     * @param _incentiveReceiver New incentive receiver address
     */
    function setIncentiveReceiver(address _incentiveReceiver) external onlyGovernor {
        incentiveReceiver = _incentiveReceiver;
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PRIVATE                                   */
    /* -------------------------------------------------------------------------- */

    function _stake(address _account, uint256 _amount) private {
        _updateRewards(_account);

        stakedAmounts[_account] = stakedAmounts[_account] + _amount;
        totalStakedAmount = totalStakedAmount + _amount;
        emit Stake(_account, _amount);
    }

    function _withdraw(address _account, uint256 _amount) private {
        _updateRewards(_account);

        uint256 amountStaked = stakedAmounts[_account];

        if (_amount > amountStaked) {
            revert AmountExceedsStakedAmount();
        }

        stakedAmounts[_account] = amountStaked - _amount;

        totalStakedAmount = totalStakedAmount - _amount;

        IERC20(sharesToken).transfer(msg.sender, _amount);
        emit Withdraw(_account, _amount);
    }

    function _claim(address _account) private returns (uint256) {
        _updateRewards(_account);

        uint256 tokenAmount = claimableReward[_account];
        claimableReward[_account] = 0;

        if (tokenAmount > 0) {
            IERC20(rewardToken).transfer(msg.sender, tokenAmount);
            emit Claim(_account, tokenAmount);
        }

        return tokenAmount;
    }

    function _updateRewards(address _account) private {
        uint256 rewards = receiver.distributeRewards(); // get new rewards for the rewards receiver

        uint256 totalShares = totalStakedAmount;

        uint256 _cumulativeRewardPerShare = cumulativeRewardPerShare;
        if (totalShares > 0 && rewards > 0) {
            _cumulativeRewardPerShare = _cumulativeRewardPerShare + ((rewards * PRECISION) / totalShares);
            cumulativeRewardPerShare = _cumulativeRewardPerShare; // add new rewards to cumulative rewards
            // Information needed to calculate rewards
            emit UpdateRewards(_account, rewards, totalShares, cumulativeRewardPerShare);
        }

        // cumulativeRewardPerShare can only increase
        // so if cumulativeRewardPerShare is zero, it means there are no rewards yet
        if (_cumulativeRewardPerShare == 0) {
            return;
        }

        if (_account != address(0)) {
            uint256 shares = stakedAmounts[_account];

            uint256 accountReward =
                (shares * (_cumulativeRewardPerShare - previousCumulatedRewardPerShare[_account])) / PRECISION;

            uint256 _claimableReward = claimableReward[_account] + accountReward;
            claimableReward[_account] = _claimableReward; // add new user rewards to cumulative user rewards
            previousCumulatedRewardPerShare[_account] = _cumulativeRewardPerShare; // Important to not have more rewards than expected

            if (_claimableReward > 0 && shares > 0) {
                uint256 nextCumulativeReward = cumulativeRewards[_account] + accountReward;
                cumulativeRewards[_account] = nextCumulativeReward;
            }
        }
    }
}
