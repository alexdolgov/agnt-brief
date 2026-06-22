// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "./BaseStrategy.sol";
import "../../interfaces/external/IVaultChef.sol";
import "../../interfaces/external/IPolyCatStrategy.sol";
import "../../interfaces/external/IUniswapV2Router01.sol";

/// @title Fish Strategy contract
/// @author Blaize.tech team
/// @notice Strategy for staking FISH token
contract FishStrategy is BaseStrategy {
    using SafeERC20 for IERC20;

    /// @notice Swap router address.
    address public router;
    /// @notice Address of reward token.
    address public rewardToken;
    /// @notice Route for swapping reward token to FISH token.
    address[] public swapRewardRoute;
    /// @notice Id of pool in Polycat VaultChef.
    uint256 public poolId;

    /// @notice Performs initial setup.
    /// @param _strategyRouter Address of StrategyRouter contract.
    /// @param _router Address of swap router.
    /// @param _adapter adapter.
    function initialize(
        address _strategyRouter,
        address _router,
        address _adapter
    ) external initializer {
        super.initialize(
            address(0x3a3Df212b7AA91Aa0402B9035b098891d276572B), // Fish Token
            _strategyRouter,
            address(0xBdA1f897E851c7EF22CD490D2Cf2DAce4645A904), // PolyCat VaultChef
            _adapter
        );
        poolId = 259;
        router = _router;
        rewardToken = address(0xBC5b59EA1b6f8Da8258615EE38D40e999EC5D74F); // Paw V2 token
    }

    /**
     * CLUSTERS LOCK INTERFACE
     */

    /// @notice Deposits tokens to Polycat VaultChef.
    /// @param _amount Amount of tokens to deposit.
    function deposit(uint256 _amount) external override onlyRole(STRATEGY_ROUTER) {
        _harvest();

        want.safeApprove(masterChef, 0);
        want.safeApprove(masterChef, _amount);
        IVaultChef(masterChef).deposit(poolId, _amount);

        emit Deposited(_amount);
    }

    /// @notice Withdraws some amount of tokens from Polycat VaultChef.
    /// @param _amount Amount of tokens to withdraw.
    function withdraw(uint256 _amount) external override onlyRole(STRATEGY_ROUTER) {
        require(_amount != 0, "Wrong amount");
        IVaultChef(masterChef).withdraw(poolId, _amount);

        want.safeTransfer(_msgSender(), _amount);
        emit Withdrawn(_amount);
    }

    /// @notice Withdraws all tokens, staked in Polycat VaultChef.
    /// @dev Transfers all collected reward.
    /// @return Amount of deposited and reward tokens.
    function withdrawAll() external override onlyRole(STRATEGY_ROUTER) returns (uint256, uint256) {
        _harvest();
        IVaultChef(masterChef).withdrawAll(poolId);

        uint256 balance = want.balanceOf(address(this)) - wantRewardCollected;
        uint256 collectedRewards = wantRewardCollected;

        if (collectedRewards > 0) {
            _transferRewards(collectedRewards);
        }
        if (balance > 0) {
            want.safeTransfer(_msgSender(), balance);
        }

        emit Withdrawn(balance);
        return (balance, collectedRewards);
    }

    /**
     * STRATEGIST INTERFACE
     */

    /// @notice Add route for swapping reward.
    /// @param _newRoute Route to be set.
    function setRoute(address[] memory _newRoute) external onlyRole(STRATEGIST_ROLE) {
        swapRewardRoute = _newRoute;
    }

    /// @notice Withdraws all tokens including rewards in case of emergency.
    function emergencyWithdraw() external override onlyRole(STRATEGIST_ROLE) {
        IVaultChef(masterChef).withdrawAll(poolId);

        want.safeTransfer(_msgSender(), want.balanceOf(address(this)));
        wantRewardCollected = 0;
    }

    /// @notice Claims reward from Polycat VaultChef.
    function harvest() external override onlyRole(STRATEGIST_ROLE) {
        _harvest();
    }

    /**
     * VIEW INTERFACE
     */

    /// @notice Returns amount of FISH tokens, staked in Polycat VaultChef.
    /// @return Amount of staked tokens.
    function underlyingBalanceStored() public view override returns (uint256) {
        return IVaultChef(masterChef).stakedWantTokens(poolId, address(this));
    }

    /// @notice Returns tokens, which can't be collected by admin.
    /// @return Array of protected tokens.
    function protectedTokens() public view override returns (address[] memory) {
        address[] memory tokens = new address[](2);
        tokens[0] = address(want);
        tokens[1] = rewardToken;
        return tokens;
    }

    /// @notice Shows amount of collected reward calculated in ETH.
    /// @return Amount of collected reward in ETH.
    function rewardsInEth() external view virtual override returns (uint256) {
        uint256 rewardEarned = wantRewardCollected;

        address strategy = IVaultChef(masterChef).poolInfo(poolId).strat;
        uint256 pawPending = IPolyCatStrategy(strategy).pendingPaw(address(this));

        if (pawPending > DUST_AMOUNT) {
            rewardEarned +=
                IUniswapV2Router01(router).getAmountsOut(pawPending, swapRewardRoute)[swapRewardRoute.length - 1];
        }

        if (rewardEarned > DUST_AMOUNT) {
            return _rewardsInEth(rewardEarned);
        }
        return 0;
    }

    /**
     * INTERNAL HELPERS
     */

    /// @notice Claims reward from Polycat VaultChef.
    function _harvest() internal override returns (uint256) {
        address strategy = IVaultChef(masterChef).poolInfo(poolId).strat;
        IPolyCatStrategy(strategy).harvest();

        uint256 rewardBalance = IERC20(rewardToken).balanceOf(address(this));
        if (rewardBalance > DUST_AMOUNT) {
            wantRewardCollected += _swapRewards(rewardBalance);
            return wantRewardCollected;
        }
        return 0;
    }

    /// @notice Transfers rewards to ClustersLock contract.
    /// @param _fishRewardAmount Amount of reward, collected in FISH token.
    function _transferRewards(uint256 _fishRewardAmount) internal override {
        // Send Fish reward
        wantRewardCollected -= _fishRewardAmount;
        want.safeTransfer(_msgSender(), _fishRewardAmount);

        emit RewardsTransfered(_fishRewardAmount);
    }

    /// @notice Swaps reward tokens to want token.
    /// @param _rewardAmount Amount of reward token.
    /// @return Collected amount of FISH token.
    function _swapRewards(uint256 _rewardAmount) internal returns (uint256) {
        IERC20(rewardToken).safeApprove(router, 0);
        IERC20(rewardToken).safeApprove(router, _rewardAmount);

        return
            IUniswapV2Router01(router).swapExactTokensForTokens(_rewardAmount, 1, swapRewardRoute, address(this), block.timestamp + 100)[
                swapRewardRoute.length - 1
            ];
    }

    /// @notice Calculates amount of ETH out of collected rewards.
    /// @param _amount Amount of collected reward.
    /// @return Amount of reward in ETH.
    function _rewardsInEth(uint256 _amount) internal view override returns (uint256) {
        return IDexAdapter(adapter).getEthAmountWithSlippage(_amount, address(want));
    }
}
