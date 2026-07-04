// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { AuraStaking } from "src/destinations/adapters/staking/AuraAdapter.sol";
import { IConvexBooster } from "src/interfaces/external/convex/IConvexBooster.sol";

import { AuraRewards } from "src/destinations/adapters/rewards/AuraRewardsAdapter.sol";
import { BalancerV3DestinationVault, DestinationVault } from "src/vault/BalancerV3DestinationVault.sol";
import { Errors } from "src/utils/Errors.sol";

contract BalancerV3AuraDestinationVault is BalancerV3DestinationVault {
    /// @notice Token minted during reward claiming. Specific to Convex-style rewards. Aura in this case.
    address public immutable defaultRewardToken;

    /// @notice Aura reward contract
    address public auraStaking;

    /// @notice Aura Booster contract
    address public auraBooster;

    /// @notice Numeric pool id used to reference balancer pool
    uint256 public auraPoolId;

    struct InitAuraParams {
        InitParamsBase base;
        address auraStaking;
        address auraBooster;
        uint256 auraPoolId;
    }

    constructor(
        ISystemRegistry _systemRegistry,
        address _defaultStakingRewardToken
    ) BalancerV3DestinationVault(_systemRegistry) {
        Errors.verifyNotZero(_defaultStakingRewardToken, "_defaultStakingRewardToken");
        // slither-disable-next-line missing-zero-check
        defaultRewardToken = _defaultStakingRewardToken;
    }

    function initialize(
        IERC20Metadata baseAsset_,
        IERC20Metadata underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public override {
        InitAuraParams memory initParams = abi.decode(params_, (InitAuraParams));

        // Validate Aura specific params
        Errors.verifyNotZero(initParams.auraStaking, "auraStaking");
        Errors.verifyNotZero(initParams.auraBooster, "auraBooster");
        Errors.verifyNotZero(initParams.auraPoolId, "auraPoolId");

        auraStaking = initParams.auraStaking;
        auraBooster = initParams.auraBooster;
        auraPoolId = initParams.auraPoolId;

        // Initialize base with its params
        super.initialize(
            baseAsset_,
            underlyer_,
            rewarder_,
            incentiveCalculator_,
            additionalTrackedTokens_,
            abi.encode(initParams.base)
        );
    }

    /// @inheritdoc BalancerV3DestinationVault
    function destType() external pure override returns (string memory) {
        return "auraStake";
    }

    /// @inheritdoc DestinationVault
    function _onDeposit(
        uint256 amount
    ) internal override {
        super._onDeposit(amount);
        AuraStaking.depositAndStake(IConvexBooster(auraBooster), _underlying, auraStaking, auraPoolId, amount);
    }

    /// @inheritdoc DestinationVault
    function _ensureLocalUnderlyingBalance(
        uint256 amount
    ) internal override {
        super._ensureLocalUnderlyingBalance(amount);
        AuraStaking.withdrawStake(_underlying, auraStaking, amount);
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        super._collectRewards();
        (amounts, tokens) = AuraRewards.claimRewards(auraStaking, defaultRewardToken, msg.sender, _trackedTokens);
        return (amounts, tokens);
    }

    /// @inheritdoc DestinationVault
    /// @notice In this vault all underlyer should be staked externally, so internal debt should be 0.
    function internalDebtBalance() public pure override returns (uint256) {
        return 0;
    }

    /// @inheritdoc DestinationVault
    /// @notice In this vault all underlyer should be staked, and mint is 1:1, so external debt is `totalSupply()`.
    function externalDebtBalance() public view override returns (uint256) {
        return totalSupply();
    }

    /// @notice Get the balance of underlyer currently staked in Aura
    /// @return Balance of underlyer currently staked in Aura
    function externalQueriedBalance() public view override returns (uint256) {
        return IERC20(auraStaking).balanceOf(address(this));
    }
}
