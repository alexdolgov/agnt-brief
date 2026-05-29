// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 Jones DAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/math/SafeMath.sol";
import {IRewardReceiver} from "src/interfaces/rewards/IRewardReceiver.sol";
import {ISingleRewardTracker} from "src/interfaces/rewards/ISingleRewardTracker.sol";
import {IDistributor} from "src/interfaces/rewards/IDistributor.sol";

import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";
import {IManager} from "src/interfaces/manager/IManager.sol";
import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";

import {UpgradeableOperableKeepable} from "src/governance/UpgradeableOperableKeepable.sol";

contract SingleRewardTracker is ISingleRewardTracker, UpgradeableOperableKeepable {
    using SafeMath for uint256;
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    uint256 public constant PRECISION = 1e30;

    IDistributor public merkleDistributor;
    ITokenSwapper public incentivesSwapper;
    ITokenSwapper public rewardsSwapper;
    IRewardReceiver public receiver;
    address public incentiveReceiver;
    uint256 public yieldRate;

    // staked token data
    IManager public manager;
    uint256 public totalStakedAmount;
    mapping(address => uint256) public stakedAmounts;

    //  token data
    IERC20 public rewardToken;
    uint256 public cumulativeRewardPerShare;
    mapping(address => uint256) public claimableReward;
    mapping(address => uint256) public previousCumulatedRewardPerShare;
    mapping(address => uint256) public cumulativeRewards;

    bool tokenOption;
    IERC20 public token0;
    IERC20 public token1;

    uint256 public slippage;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initializeSingleTracker(
        address _manager,
        address _rewardsSwapper,
        address _incentivesSwapper,
        address _receiver,
        address _distributor,
        address _incentiveReceiver,
        bool _tokenOption
    ) external initializer {
        __Governable_init(msg.sender);
        IManager manager_ = IManager(_manager);
        manager = manager_;
        token0 = manager_.token0();
        token1 = manager_.token1();

        if (_tokenOption) {
            rewardToken = manager_.token1();
            manager_.token0().safeApprove(_rewardsSwapper, type(uint256).max);
        } else {
            rewardToken = manager_.token0();
            manager_.token1().safeApprove(_rewardsSwapper, type(uint256).max);
        }

        receiver = IRewardReceiver(_receiver);
        merkleDistributor = IDistributor(_distributor);
        incentivesSwapper = ITokenSwapper(_incentivesSwapper);
        rewardsSwapper = ITokenSwapper(_rewardsSwapper);
        incentiveReceiver = _incentiveReceiver;

        slippage = PRECISION.mulDivDown(995, 1000); // 0.5%
        yieldRate = PRECISION.mulDivDown(1, 100); // 1%

        tokenOption = _tokenOption;
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
    function stake(address _account, uint256 _amount) external override onlyOperator returns (uint256) {
        require(_amount != 0, "Zero Amount");

        _stake(_account, _amount);
        return _amount;
    }

    /**
     * @notice Withdraw the staked assets
     * @param _account Owner of the assets to be withdrawn
     * @param _amount Assets to be withdrawn
     * @return Amount of assets witdrawed
     */
    function withdraw(address _account, uint256 _amount) external override onlyOperator returns (uint256) {
        require(_amount != 0, "Zero Amount");

        _withdraw(_account, _amount);
        return _amount;
    }

    /**
     * @notice Claim _account cumulative rewards
     * @dev Reward token will be transfer to the _account
     * @param _account Owner of the rewards
     * @return Amount of reward tokens transferred
     */
    function claim(address _account) external override onlyOperator returns (uint256) {
        return _claim(_account);
    }

    /**
     * @notice Update global cumulative reward
     * @dev No reward token are transferred
     */
    function updateRewards() external override onlyOperatorOrKeeper {
        _updateRewards(address(0));
    }

    /* -------------------------------------------------------------------------- */
    /*                                   KEEPER                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Claims merkle rewards for a given set of users.
     * @dev Anyone may call this function for anyone else, funds go to destination regardless, it's just a question of who provides the proof and pays the gas: `msg.sender` is used only for addresses that require a trusted operator
     * @param users Recipient of tokens
     * @param tokens ERC20 claimed
     * @param amounts Amount of tokens that will be sent to the corresponding users
     * @param proofs Array of hashes bridging from a leaf `(hash of user | token | amount)` to the Merkle root
     */
    function claim(
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external onlyKeeper {
        merkleDistributor.claim(users, tokens, amounts, proofs);
        emit MerkleClaim(users, tokens, amounts);
    }

    /**
     * @notice Swap and Process rewards
     * @param _swap Swap data array.
     */
    function swapAndProcess(Swap[] calldata _swap) external override onlyKeeper {
        uint256 amount;

        uint256 length = _swap.length;
        if (length > 0) {
            for (uint256 i; i < length;) {
                if (_swap[i].tokenOut == address(rewardToken)) {
                    IERC20(_swap[i].tokenIn).safeApprove(address(incentivesSwapper), _swap[i].amountIn);
                    amount = amount.add(
                        incentivesSwapper.swap(
                            _swap[i].tokenIn,
                            _swap[i].amountIn,
                            _swap[i].tokenOut,
                            _swap[i].minAmountOut,
                            _swap[i].externalData
                        )
                    );
                } else {
                    revert("Invalid Token Out");
                }

                ++i;
            }

            uint256 totalShares = totalStakedAmount;
            address _receiver = incentiveReceiver;
            uint256 rate = yieldRate;
            uint256 retention;

            if (amount > 0) {
                if (_receiver != address(0)) {
                    retention = amount.mulDivDown(rate, PRECISION);
                    rewardToken.safeTransfer(_receiver, retention);
                    amount = amount - retention;
                }

                if (totalShares != 0) {
                    cumulativeRewardPerShare = cumulativeRewardPerShare.add(amount.mulDivDown(PRECISION, totalShares));
                    emit UpdateRewards(msg.sender, amount, totalShares, cumulativeRewardPerShare);
                } else {
                    revert("Zero Shares");
                }
            }
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                  EXTERNAL                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Deposit rewards
     * @dev Transfer from called to here
     * @param _rewards Amount of reward of token
     */
    function depositRewards(uint256 _rewards) external override {
        uint256 totalShares = totalStakedAmount;
        require(_rewards != 0, "Zero Amount");

        if (_rewards > 0) {
            rewardToken.safeTransferFrom(msg.sender, address(this), _rewards);
            if (totalShares != 0) {
                cumulativeRewardPerShare = cumulativeRewardPerShare.add(_rewards.mulDivDown(PRECISION, totalShares));
                emit UpdateRewards(msg.sender, _rewards, totalShares, cumulativeRewardPerShare);
            } else {
                rewardToken.safeTransfer(incentiveReceiver, _rewards);
            }
        }
    }

    /**
     * @notice Return _account claimable rewards
     * @dev No reward token are transferred
     * @param _account Owner of the rewards
     * @return claimable Amount of reward tokens0 that can be claim
     */
    function claimable(address _account) external view override returns (uint256 claimable) {
        uint256 shares = stakedAmounts[_account];

        if (shares == 0) {
            return (claimableReward[_account]);
        }

        uint256 totalShares = totalStakedAmount;
        (uint256 pendingRewards0, uint256 pendingRewards1) = receiver.pendingRewards(address(manager), address(this));

        uint256 pendingRewards;

        if (tokenOption) {
            pendingRewards = pendingRewards1
                + rewardsSwapper.minAmountOut(address(manager.token0()), address(rewardToken), pendingRewards0);
        } else {
            pendingRewards = pendingRewards0
                + rewardsSwapper.minAmountOut(address(manager.token1()), address(rewardToken), pendingRewards1);
        }

        uint256 nextCumulativeRewardPerShare =
            cumulativeRewardPerShare.add(pendingRewards.mulDivDown(PRECISION, totalShares));

        claimable = claimableReward[_account].add(
            shares.mulDivDown(nextCumulativeRewardPerShare.sub(previousCumulatedRewardPerShare[_account]), PRECISION)
        );
    }

    /**
     * @notice Return _account staked amount
     * @param _account Owner of the staking
     * @return Staked amount
     */
    function stakedAmount(address _account) external view override returns (uint256) {
        return stakedAmounts[_account];
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GOVERNOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update slippage
     * @param _slippage token amount
     */
    function updateSlippage(uint256 _slippage) external onlyGovernor {
        slippage = _slippage;
    }

    /**
     * @notice Set arbitrary approval
     * @param _token token address
     * @param _spender spender address
     * @param _amount token amount
     */
    function govApproval(address _token, address _spender, uint256 _amount) external onlyGovernor {
        IERC20(_token).safeApprove(_spender, _amount);
    }

    /**
     * @notice Set a new lp manager
     * @param _manager address of lp manager contract
     */
    function setManager(address _manager) external onlyGovernor {
        address _swapper = address(rewardsSwapper);
        manager.token0().safeApprove(_swapper, 0);
        manager.token1().safeApprove(_swapper, 0);
        IManager manager_ = IManager(_manager);
        manager = manager_;
        if (tokenOption) {
            rewardToken = manager_.token1();
            manager_.token0().safeApprove(_swapper, type(uint256).max);
        } else {
            rewardToken = manager_.token0();
            manager_.token1().safeApprove(_swapper, type(uint256).max);
        }
    }

    /**
     * @notice Set Internal Contracts
     * @param _swapper New swapper address.
     * @param _incentivesSwapper New incentive swapper address.
     * @param _receiver New receiver address.
     * @param _distributor New receiver address.
     */
    function setInternalContracts(address _swapper, address _incentivesSwapper, address _receiver, address _distributor)
        external
        onlyGovernor
    {
        incentivesSwapper = ITokenSwapper(_incentivesSwapper);
        receiver = IRewardReceiver(_receiver);
        merkleDistributor = IDistributor(_distributor);
        address swaper_ = address(rewardsSwapper);
        IManager manager_ = manager;
        manager_.token0().safeApprove(swaper_, 0);
        manager_.token1().safeApprove(swaper_, 0);
        rewardsSwapper = ITokenSwapper(_swapper);
        if (tokenOption) {
            manager_.token0().safeApprove(_swapper, type(uint256).max);
        } else {
            manager_.token1().safeApprove(_swapper, type(uint256).max);
        }
    }

    /**
     * @notice Set a new incentive receiver contract
     * @param _incentiveReceiver New incentive receiver address
     */
    function setIncentiveReceiver(address _incentiveReceiver) external onlyGovernor {
        incentiveReceiver = _incentiveReceiver;
    }

    /**
     * @notice Update Yield Rate
     * @param _newRate New rate
     */
    function updateRate(uint256 _newRate) external onlyGovernor {
        yieldRate = _newRate;
    }

    /**
     * @notice Set a new operator of merkle distributor.
     * @param operator address.
     */
    function toggleOperatorDistributor(address operator) external onlyGovernor {
        merkleDistributor.toggleOperator(address(this), operator);
    }

    /**
     * @notice Set that only operator can claim merkle distributor rewards.
     */
    function toggleOnlyOperatorCanClaimDistributor() external onlyGovernor {
        merkleDistributor.toggleOnlyOperatorCanClaim(address(this));
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdrawal(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; ++i) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.safeTransfer(_to, assetBalance);
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            require(sent, "Fail Send ETH");
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PRIVATE                                   */
    /* -------------------------------------------------------------------------- */

    function _stake(address _account, uint256 _amount) private {
        _updateRewards(_account);

        stakedAmounts[_account] = stakedAmounts[_account].add(_amount);
        totalStakedAmount = totalStakedAmount.add(_amount);
        emit Stake(_account, _amount);
    }

    function _withdraw(address _account, uint256 _amount) private {
        _updateRewards(_account);

        uint256 amountStaked = stakedAmounts[_account];

        require(_amount <= amountStaked, "Exceeds Staked Amount");

        stakedAmounts[_account] = amountStaked.sub(_amount);

        totalStakedAmount = totalStakedAmount.sub(_amount);

        IERC20(address(manager)).safeTransfer(msg.sender, _amount);
        emit Withdraw(_account, _amount);
    }

    function _claim(address _account) private returns (uint256) {
        _updateRewards(_account);

        uint256 tokenAmount = claimableReward[_account];
        claimableReward[_account] = 0;

        if (tokenAmount > 0) {
            rewardToken.safeTransfer(msg.sender, tokenAmount);
            emit Claim(_account, tokenAmount);
        }

        return tokenAmount;
    }

    function _updateRewards(address _account) private {
        (uint256 rewards0, uint256 rewards1) = receiver.distributeRewards(address(manager)); // get new rewards for the rewards receiver

        uint256 rewards;

        if (tokenOption) {
            address tokenIn = address(manager.token0());
            uint256 minAmount = _applySlippage(rewardsSwapper.minAmountOut(tokenIn, address(rewardToken), rewards0));
            if (minAmount > 0) {
                rewards = rewards1 + rewardsSwapper.swap(tokenIn, rewards0, address(rewardToken), minAmount, "");
            } else {
                rewards = rewards1;
            }
        } else {
            address tokenIn = address(manager.token1());
            uint256 minAmount = _applySlippage(rewardsSwapper.minAmountOut(tokenIn, address(rewardToken), rewards1));
            if (minAmount > 0) {
                rewards = rewards0 + rewardsSwapper.swap(tokenIn, rewards1, address(rewardToken), minAmount, "");
            } else {
                rewards = rewards0;
            }
        }

        uint256 totalShares = totalStakedAmount;

        uint256 _cumulativeRewardPerShare = cumulativeRewardPerShare;
        if (totalShares > 0 && rewards > 0) {
            _cumulativeRewardPerShare = _cumulativeRewardPerShare.add(rewards.mulDivDown(PRECISION, totalShares));
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
                shares.mulDivDown(_cumulativeRewardPerShare.sub(previousCumulatedRewardPerShare[_account]), PRECISION);

            uint256 _claimableReward = claimableReward[_account].add(accountReward);
            claimableReward[_account] = _claimableReward; // add new user rewards to cumulative user rewards
            previousCumulatedRewardPerShare[_account] = _cumulativeRewardPerShare; // Important to not have more rewards than expected

            if (_claimableReward > 0 && shares > 0) {
                uint256 nextCumulativeReward = cumulativeRewards[_account].add(accountReward);
                cumulativeRewards[_account] = nextCumulativeReward;
            }
        }
    }

    function _applySlippage(uint256 _amount) private view returns (uint256) {
        return _amount.mulDivDown(slippage, PRECISION);
    }
}
