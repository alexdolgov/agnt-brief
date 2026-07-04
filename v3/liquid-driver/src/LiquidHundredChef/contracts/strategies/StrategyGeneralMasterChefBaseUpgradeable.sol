// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

import "./StrategyBaseUpgradeable.sol";
import "./interfaces/IMasterChef.sol";
import "../interfaces/ILiquidDepositor.sol";

abstract contract StrategyGeneralMasterChefBaseUpgradeable is StrategyBaseUpgradeable {
    // Token addresses
    address public masterchef;
    address public rewardToken;
    address public secondRewardToken;

    uint256 public poolId;

    constructor() public {}

    function initializeStrategyGeneralMasterChefBase(
        address _rewardToken,
        address _secondRewardToken,
        address _masterchef,
        uint256 _poolId,
        address _lp,
        address _depositor
    ) public initializer {
        initializeStrategyBase(
            _lp,
            _depositor
        );
        poolId = _poolId;
        rewardToken = _rewardToken;
        secondRewardToken = _secondRewardToken;
        masterchef = _masterchef;
    }
    
    function balanceOfPool() public override view returns (uint256) {
        (uint256 amount, ) = IMasterChef(masterchef).userInfo(poolId, address(this));
        return amount;
    }

    function getHarvestable() external virtual view returns (uint256) {
        uint256 _pendingReward = IMasterChef(masterchef).pendingReward(poolId, address(this));
        return _pendingReward;
    }

    // **** Setters ****

    function deposit() public override {
        uint256 _want = IERC20(want).balanceOf(address(this));
        if (_want > 0) {
            IERC20(want).safeApprove(masterchef, 0);
            IERC20(want).safeApprove(masterchef, _want);
            IMasterChef(masterchef).deposit(poolId, _want);
        }
    }

    function _withdrawSome(uint256 _amount)
        internal
        override
        returns (uint256)
    {
        IMasterChef(masterchef).withdraw(poolId, _amount);
        return _amount;
    }

    function emergencyWithdrawAllToStrategy() external onlyOwner {
        IMasterChef(masterchef).emergencyWithdraw(poolId, address(this));
    }

    function setSecondReward(address _reward) external onlyOwner {
        secondRewardToken = _reward;
    }

    // **** State Mutations ****

    function harvest() public override onlyBenevolent {
        IMasterChef(masterchef).withdraw(poolId, 0);
        uint256 _rewardBalance = IERC20(rewardToken).balanceOf(address(this));
        IERC20(rewardToken).safeTransfer(
            ILiquidDepositor(depositor).treasury(),
            _rewardBalance
        );
        if (secondRewardToken != address(0)) {
            uint256 _secondRewardBalance = IERC20(secondRewardToken).balanceOf(address(this));
            IERC20(secondRewardToken).safeTransfer(
                ILiquidDepositor(depositor).treasury(),
                _secondRewardBalance
            );
        }
    }
}
