// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "./BaseStrategy.sol";
import "../../interfaces/IDexAdapter.sol";

/// @title Keeper Strategy contract.
/// @author Blaize.tech team.
/// @notice Dummy strategy to keep tokens.
contract KeeperStrategy is BaseStrategy {
    using SafeERC20 for IERC20;
    /// @notice Amount of want tokens stored.
    uint256 public deposited;

    /// @notice Performs initial setup.
    /// @param _strategyRouter Address of StrategyRouter contract.
    /// @param _want Asset to keep.
    /// @param _adapter Address of dex-adapter.
    function initialize(
        address _strategyRouter,
        address _want,
        address _adapter
    ) external initializer {
        super.initialize(_want, _strategyRouter, address(0), _adapter);
    }

    /**
     * CLUSTERS LOCK INTERFACE
     */

    /// @notice Keeps deposited token.
    /// @param _amount Amount of want tokens to keep.
    function deposit(uint256 _amount) external override onlyRole(STRATEGY_ROUTER) {
        uint256 balance = want.balanceOf(address(this)) - deposited - wantRewardCollected;
        require(balance == _amount, "Incorrect amount was transferred");

        deposited += _amount;
        emit Deposited(balance);
    }

    /// @notice Returns tokens to Strategy router.
    /// @param _amount Amount of want tokens to withdraw.
    function withdraw(uint256 _amount) external override onlyRole(STRATEGY_ROUTER) {
        require(_amount != 0, "Wrong amount");

        deposited -= _amount;
        want.safeTransfer(_msgSender(), _amount);
        emit Withdrawn(_amount);
    }

    /// @notice Withdraws all tokens.
    function withdrawAll() external override onlyRole(STRATEGY_ROUTER) returns (uint256, uint256) {
        uint256 balance = deposited;
        uint256 collectedRewards = wantRewardCollected;
        deposited = 0;

        if (collectedRewards > 0) {
            _transferRewards(collectedRewards);
        }
        if (balance > 0) {
            want.safeTransfer(_msgSender(), balance);
        }

        emit Withdrawn(balance);
        return (balance, collectedRewards);
    }

    /// @notice Does nothing.
    function emergencyWithdraw() external override {}

    /// @notice Does nothing.
    function harvest() external override {}

    function mockAddRewards(uint256 _amount) external onlyRole(STRATEGIST_ROLE) {
        want.safeTransferFrom(_msgSender(), address(this), _amount);
        wantRewardCollected += _amount;
    }

    /**
     * VIEW INTERFACE
     */

    /// @notice Returns amount of kept tokens.
    /// @return Amount of kept tokens.
    function underlyingBalanceStored() public view override returns (uint256) {
        return deposited;
    }

    /// @notice Returns tokens, which can't be collected by admin.
    /// @return Array of protected tokens.
    function protectedTokens() public view override returns (address[] memory) {
        address[] memory tokens = new address[](1);
        tokens[0] = address(want);
        return tokens;
    }

    /**
     * INTERNAL HELPERS
     */

    /// @notice Does nothing.
    /// @return nothing.
    function _harvest() internal override returns (uint256) {
        return 0;
    }

    /// @notice Calculates amount of ETH out of collected rewards.
    /// @param _amount Amount of collected reward.
    /// @return Amount of reward in ETH.
    function _rewardsInEth(uint256 _amount) internal view override returns (uint256) {
        if (_amount == 0) {
            return 0;
        }
        return IDexAdapter(adapter).getEthAmountWithSlippage(_amount, address(want));
    }

    /// @notice Transfers rewards to Strategy router.
    /// @param _rewardEarned Amount of reward to transfer.
    function _transferRewards(uint256 _rewardEarned) internal override {
        wantRewardCollected -= _rewardEarned;
        want.safeTransfer(_msgSender(), _rewardEarned);

        emit RewardsTransfered(_rewardEarned);
    }
}
