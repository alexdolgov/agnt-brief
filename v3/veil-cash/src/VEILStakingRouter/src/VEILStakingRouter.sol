// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./libraries/math/SafeMath.sol";
import "./libraries/token/IERC20.sol";
import "./libraries/token/SafeERC20.sol";
import "./libraries/utils/ReentrancyGuard.sol";
import "./libraries/utils/Address.sol";

import "./interfaces/IRewardTracker.sol";
import "./interfaces/IMintable.sol";
import "./access/Governable.sol";

// @dev: VEIL Staking reward router
// @dev: Main contract for staking and unstaking VEIL and handling rewards
contract VEILStakingRouter is ReentrancyGuard, Governable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using Address for address payable;

    bool public isInitialized;

    // staking token that is staked and rewarded with a yield if required - VEIL
    address public stakingToken;
    address public stakingTokenTracker;

    // revenueToken token - protocol rewards - Also paid out in VEIL
    address public revenueToken;
    address public revenueTokenTracker;

    // multiplier points
    address public bonusToken;
    address public bonusTokenTracker;

    event Stake(address account, address token, uint256 amount);
    event Unstake(address account, address token, uint256 amount);

    receive() external payable {
        require(msg.sender == revenueToken, "Router: invalid sender");
    }

    function initialize(
        address _revenueToken,
        address _stakingToken,
        address _bnToken,
        address _stakingTokenTracker,
        address _bonusTokenTracker,
        address _revenueTokenTracker
    ) external onlyGov {
        require(!isInitialized, "RewardRouter: already initialized");
        isInitialized = true;

        revenueToken = _revenueToken;
        stakingToken = _stakingToken;
        bonusToken = _bnToken;

        stakingTokenTracker = _stakingTokenTracker;
        bonusTokenTracker = _bonusTokenTracker;
        revenueTokenTracker = _revenueTokenTracker;
    }

    // to help users who accidentally send their tokens to this contract
    function withdrawToken(address _token, address _account, uint256 _amount) external onlyGov {
        IERC20(_token).safeTransfer(_account, _amount);
    }

    function batchStakeForAccount(address[] memory _accounts, uint256[] memory _amounts)
        external
        nonReentrant
        onlyGov
    {
        address _stakingToken = stakingToken;
        for (uint256 i = 0; i < _accounts.length; i++) {
            _stake(msg.sender, _accounts[i], _stakingToken, _amounts[i]);
        }
    }

    function stakeForAccount(address _account, uint256 _amount) external nonReentrant onlyGov {
        _stake(msg.sender, _account, stakingToken, _amount);
    }

    function stake(uint256 _amount) external nonReentrant {
        _stake(msg.sender, msg.sender, stakingToken, _amount);
    }

    function unstake(uint256 _amount) external nonReentrant {
        _unstake(msg.sender, stakingToken, _amount, true);
    }

    function claim() external nonReentrant {
        address account = msg.sender;

        IRewardTracker(revenueTokenTracker).claimForAccount(account, account);
        IRewardTracker(stakingTokenTracker).claimForAccount(account, account);
    }

    function claimNativeRewards() external nonReentrant {
        address account = msg.sender;

        IRewardTracker(stakingTokenTracker).claimForAccount(account, account);
    }

    /// now called claimRevenueToken
    function claimRevenueToken() external nonReentrant {
        address account = msg.sender;

        IRewardTracker(revenueTokenTracker).claimForAccount(account, account);
    }

    function compound() external nonReentrant {
        _compound(msg.sender);
    }

    function compoundBoth() external nonReentrant {
        _compound_both(msg.sender);
    }

    function compoundForAccount(address _account) external nonReentrant onlyGov {
        _compound(_account);
    }

    function batchCompoundForAccounts(address[] memory _accounts) external nonReentrant onlyGov {
        for (uint256 i = 0; i < _accounts.length; i++) {
            _compound(_accounts[i]);
        }
    }

    function handleRewards(
        bool _shouldClaimNativeRewards,
        bool _shouldStakeMultiplierPoints,
        bool _shouldClaimRevenueToken
    ) external nonReentrant {
        address account = msg.sender;

        uint256 nativeRewardsAmount = 0;
        if (_shouldClaimNativeRewards) {
            nativeRewardsAmount = IRewardTracker(stakingTokenTracker).claimForAccount(account, account);
        }

        if (_shouldStakeMultiplierPoints) {
            uint256 bnTokenAmount = IRewardTracker(bonusTokenTracker).claimForAccount(account, account);
            if (bnTokenAmount > 0) {
                IRewardTracker(revenueTokenTracker).stakeForAccount(account, account, bonusToken, bnTokenAmount);
            }
        }

        if (_shouldClaimRevenueToken) {
            IRewardTracker(revenueTokenTracker).claimForAccount(account, account);
        }
    }

    function _compound(address _account) private {
        uint256 revenueTokenAmount = IRewardTracker(revenueTokenTracker).claimForAccount(_account, _account);
        if (revenueTokenAmount > 0) {
            _stake(_account, _account, stakingToken, revenueTokenAmount);
        }

        uint256 bnTokenAmount = IRewardTracker(bonusTokenTracker).claimForAccount(_account, _account);
        if (bnTokenAmount > 0) {
            IRewardTracker(revenueTokenTracker).stakeForAccount(_account, _account, bonusToken, bnTokenAmount);
        }
    }

    function _compound_both(address _account) private {
        uint256 nativeRewardsAmount = IRewardTracker(stakingTokenTracker).claimForAccount(_account, _account);
        if (nativeRewardsAmount > 0) {
            _stake(_account, _account, stakingToken, nativeRewardsAmount);
        }

        uint256 revenueTokenAmount = IRewardTracker(revenueTokenTracker).claimForAccount(_account, _account);
        if (revenueTokenAmount > 0) {
            _stake(_account, _account, stakingToken, revenueTokenAmount);
        }

        uint256 bnTokenAmount = IRewardTracker(bonusTokenTracker).claimForAccount(_account, _account);
        if (bnTokenAmount > 0) {
            IRewardTracker(revenueTokenTracker).stakeForAccount(_account, _account, bonusToken, bnTokenAmount);
        }
    }

    function _stake(address _fundingAccount, address _account, address _token, uint256 _amount) private {
        require(_amount > 0, "RewardRouter: invalid _amount");

        IRewardTracker(stakingTokenTracker).stakeForAccount(_fundingAccount, _account, _token, _amount);
        IRewardTracker(bonusTokenTracker).stakeForAccount(_account, _account, stakingTokenTracker, _amount);
        IRewardTracker(revenueTokenTracker).stakeForAccount(_account, _account, bonusTokenTracker, _amount);

        emit Stake(_account, _token, _amount);
    }

    function _unstake(address _account, address _token, uint256 _amount, bool _shouldReduceBnBmx) private {
        require(_amount > 0, "RewardRouter: invalid _amount");

        uint256 balance = IRewardTracker(stakingTokenTracker).stakedAmounts(_account);

        IRewardTracker(revenueTokenTracker).unstakeForAccount(_account, bonusTokenTracker, _amount, _account);
        IRewardTracker(bonusTokenTracker).unstakeForAccount(_account, stakingTokenTracker, _amount, _account);
        IRewardTracker(stakingTokenTracker).unstakeForAccount(_account, _token, _amount, _account);

        if (_shouldReduceBnBmx) {
            uint256 bnTokenAmount = IRewardTracker(bonusTokenTracker).claimForAccount(_account, _account);
            if (bnTokenAmount > 0) {
                IRewardTracker(revenueTokenTracker).stakeForAccount(_account, _account, bonusToken, bnTokenAmount);
            }

            uint256 stakedBnBmx = IRewardTracker(revenueTokenTracker).depositBalances(_account, bonusToken);
            if (stakedBnBmx > 0) {
                uint256 reductionAmount = stakedBnBmx.mul(_amount).div(balance);
                IRewardTracker(revenueTokenTracker).unstakeForAccount(_account, bonusToken, reductionAmount, _account);
                IMintable(bonusToken).burn(_account, reductionAmount);
            }
        }

        emit Unstake(_account, _token, _amount);
    }
}
