// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

import "./StrategyBaseUpgradeable.sol";
import "../interfaces/ILiquidDepositor.sol";
import "../interfaces/ISolidlyGauge.sol";

contract StrategyGeneralSolidlyBaseUpgradeable is StrategyBaseUpgradeable {
    // Token addresses
    address public gauge;
    address public rewardToken;
    string public __NAME__;
    address public token0;
    address public token1;

    constructor() public {}

    function initialize(
        string memory _name,
        address _rewardToken,
        address _gauge,
        address _lp,
        address _depositor,
        address _token0,
        address _token1
    ) public initializer {
        __Ownable_init();
        initializeStrategyBase(_lp, _depositor);
        rewardToken = _rewardToken;
        gauge = _gauge;
        __NAME__ = _name;
        token0 = _token0;
        token1 = _token1;

        address _lpToken;
        _lpToken = address(ISolidlyGauge(_gauge).stake());

        require(_lp == _lpToken, "LP address doesn't match!");
    }
    
    function balanceOfPool() public override view returns (uint256) {
        uint256 amount = ISolidlyGauge(gauge).balanceOf(address(this));
        return amount;
    }

    function getHarvestable() external view returns (uint256) {
        uint256 _pendingReward = ISolidlyGauge(gauge).earned(rewardToken, address(this));
        return _pendingReward;
    }

    // **** Setters ****

    function deposit() public override {
        uint256 _want = IERC20(want).balanceOf(address(this));
        if (_want > 0) {
            IERC20(want).safeApprove(gauge, _want);
            ISolidlyGauge(gauge).depositAll(0);
        }
    }

    function _withdrawSome(uint256 _amount)
        internal
        override
        returns (uint256)
    {
        ISolidlyGauge(gauge).withdraw(_amount);
        return _amount;
    }

    // **** State Mutations ****

    function harvest() public override onlyBenevolent {
        address[] memory _tokens = new address[](1);
        _tokens[0] = rewardToken;
        ISolidlyGauge(gauge).getReward(
            address(this),
            _tokens
        );
        uint256 _rewardBalance = IERC20(rewardToken).balanceOf(address(this));
        IERC20(rewardToken).safeTransfer(
            ILiquidDepositor(depositor).treasury(),
            _rewardBalance
        );
    }

    function getClaimFees() public onlyBenevolent {
        address[] memory _tokens = new address[](1);
        _tokens[0] = token0;
        _tokens[1] = token1;
        ISolidlyGauge(gauge).claimFees();
        ISolidlyGauge(gauge).getReward(
            address(this),
            _tokens
        );
        for (uint i = 0; i < 2; i ++) {
            uint256 _rewardBalance = IERC20(_tokens[i]).balanceOf(address(this));
            IERC20(_tokens[i]).safeTransfer(
                ILiquidDepositor(depositor).treasury(),
                _rewardBalance
            );
        }
    }
}
