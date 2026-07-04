// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { Errors } from "src/utils/Errors.sol";
import { CurveDestinationVault, DestinationVault } from "src/vault/CurveDestinationVault.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { IConvexBooster } from "src/interfaces/external/convex/IConvexBooster.sol";
import { ConvexStaking } from "src/destinations/adapters/staking/ConvexAdapter.sol";
import { IBaseRewardPool } from "src/interfaces/external/convex/IBaseRewardPool.sol";
import { ConvexRewards } from "src/destinations/adapters/rewards/ConvexRewardsAdapter.sol";
import { IncentiveCalculatorBase } from "src/stats/calculators/base/IncentiveCalculatorBase.sol";

/// @notice Destination Vault to proxy a Curve Pool that goes into Convex
/// @dev Inherits from CurveDestinationVault and adds Convex staking functionality

contract CurveConvexDestinationVaultV2 is CurveDestinationVault {
    struct InitStakingParams {
        CurveDestinationVault.InitParams base;
        /// @notice Convex reward contract
        address convexStaking;
        /// @notice Numeric pool id used to reference Curve pool
        uint256 convexPoolId;
    }

    /// @notice Pool is shutdown
    error PoolShutdown();

    /* ******************************** */
    /* State Variables                  */
    /* ******************************** */

    /// @notice Token minted during reward claiming
    address public immutable defaultStakingRewardToken;

    /// @notice Convex Booster contract
    address public immutable convexBooster;

    /// @notice Convex reward contract
    address public convexStaking;

    /// @notice Numeric pool id used to reference Curve pool
    uint256 public convexPoolId;

    constructor(
        ISystemRegistry sysRegistry,
        address _defaultStakingRewardToken,
        address _convexBooster
    ) CurveDestinationVault(sysRegistry) {
        Errors.verifyNotZero(_defaultStakingRewardToken, "_defaultStakingRewardToken");
        Errors.verifyNotZero(_convexBooster, "_convexBooster");

        // slither-disable-start missing-zero-check
        defaultStakingRewardToken = _defaultStakingRewardToken;
        convexBooster = _convexBooster;
        // slither-disable-end missing-zero-check
    }

    function initialize(
        IERC20 baseAsset_,
        IERC20 underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        InitStakingParams memory initParams = abi.decode(params_, (InitStakingParams));

        Errors.verifyNotZero(initParams.convexStaking, "convexStaking");

        convexStaking = initParams.convexStaking;
        convexPoolId = initParams.convexPoolId;

        // Initialize base with its params
        super.initialize(
            baseAsset_,
            underlyer_,
            rewarder_,
            incentiveCalculator_,
            additionalTrackedTokens_,
            abi.encode(initParams.base)
        );

        // slither-disable-next-line unused-return
        (address lpToken,,, address crvRewards,, bool _isShutdown) =
            IConvexBooster(convexBooster).poolInfo(initParams.convexPoolId);

        if (_isShutdown) {
            revert PoolShutdown();
        }

        if (lpToken != _underlying) {
            revert Errors.InvalidParam("lpToken");
        }

        if (crvRewards != initParams.convexStaking) {
            revert Errors.InvalidParam("crvRewards");
        }
    }

    /// @inheritdoc CurveDestinationVault
    function destType() external pure override returns (string memory) {
        return "convexStake";
    }

    /// @inheritdoc DestinationVault
    /// @notice In this vault all underlyer should be staked externally, so internal debt should be 0.
    function internalDebtBalance() public pure override returns (uint256) {
        return 0;
    }

    /// @inheritdoc DestinationVault
    function externalDebtBalance() public view override returns (uint256) {
        return totalSupply();
    }

    /// @inheritdoc DestinationVault
    function externalQueriedBalance() public view override returns (uint256) {
        return IBaseRewardPool(convexStaking).balanceOf(address(this));
    }

    /// @inheritdoc DestinationVault
    function _onDeposit(
        uint256 amount
    ) internal override {
        ConvexStaking.depositAndStake(IConvexBooster(convexBooster), _underlying, convexStaking, convexPoolId, amount);
    }

    /// @inheritdoc DestinationVault
    function _ensureLocalUnderlyingBalance(
        uint256 amount
    ) internal override {
        ConvexStaking.withdrawStake(_underlying, convexStaking, amount);
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        (amounts, tokens) =
            ConvexRewards.claimRewards(convexStaking, defaultStakingRewardToken, msg.sender, _trackedTokens);
    }

    function _validateCalculator(
        address incentiveCalculator
    ) internal view override {
        address calcLp = IncentiveCalculatorBase(incentiveCalculator).lpToken();
        address calcPool = IncentiveCalculatorBase(incentiveCalculator).pool();
        address pool = getPool();

        if (calcLp != _underlying) {
            revert InvalidIncentiveCalculator(calcLp, _underlying, "lp");
        }
        if (calcPool != pool) {
            revert InvalidIncentiveCalculator(calcPool, pool, "pool");
        }
    }
}
