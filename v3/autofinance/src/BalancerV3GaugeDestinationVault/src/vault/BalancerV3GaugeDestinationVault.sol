// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { Errors } from "src/utils/Errors.sol";
import { BalancerV3DestinationVault, DestinationVault } from "src/vault/BalancerV3DestinationVault.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { CurveRewardsAdapter } from "src/destinations/adapters/rewards/CurveRewardsAdapter.sol";
import { ILiquidityGaugeV2 } from "src/interfaces/external/curve/ILiquidityGaugeV2.sol";
import { CurveGaugeStaking } from "src/destinations/adapters/staking/CurveGaugeAdapter.sol";

/// @title Destination Vault to proxy a Balancer Pool that stakes in Balancer Gauge
/// @dev Inherits from BalancerV3DestinationVault and adds Balancer Gauge staking functionality
contract BalancerV3GaugeDestinationVault is BalancerV3DestinationVault {
    struct InitGaugeParams {
        BalancerV3DestinationVault.InitParamsBase base;
        /// @notice Balancer Gauge contract
        address gauge;
    }

    /// @notice Gauge is shutdown
    error GaugeKilled();

    /* ******************************** */
    /* State Variables                  */
    /* ******************************** */

    /// @notice Balancer Gauge contract
    address public gauge;

    /// @notice Balancer Minter contract
    address public immutable minter;

    /// @notice BAL token
    address public immutable bal;

    // slither-disable-start missing-zero-check
    constructor(ISystemRegistry sysRegistry, address minter_, address bal_) BalancerV3DestinationVault(sysRegistry) {
        Errors.verifyNotZero(minter_, "minter");
        Errors.verifyNotZero(bal_, "bal");
        minter = minter_;
        bal = bal_;
    }
    // slither-disable-end missing-zero-check

    function initialize(
        IERC20 baseAsset_,
        IERC20 underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        InitGaugeParams memory initParams = abi.decode(params_, (InitGaugeParams));

        // Initialize base with its params
        super.initialize(
            baseAsset_,
            underlyer_,
            rewarder_,
            incentiveCalculator_,
            additionalTrackedTokens_,
            abi.encode(initParams.base)
        );

        Errors.verifyNotZero(initParams.gauge, "gauge");

        if (ILiquidityGaugeV2(initParams.gauge).is_killed()) {
            revert GaugeKilled();
        }

        gauge = initParams.gauge;

        // Verify gauge info
        address lpToken = ILiquidityGaugeV2(initParams.gauge).lp_token();
        if (lpToken != _underlying) {
            revert Errors.InvalidParam("lpToken");
        }
    }

    /// @inheritdoc BalancerV3DestinationVault
    function destType() external pure override returns (string memory) {
        return "gaugeStake";
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

    /// @inheritdoc DestinationVault
    /// @return Balance of underlyer currently staked in Gauge
    function externalQueriedBalance() public view override returns (uint256) {
        return ILiquidityGaugeV2(gauge).balanceOf(address(this));
    }

    /// @inheritdoc DestinationVault
    function _onDeposit(
        uint256 amount
    ) internal override {
        CurveGaugeStaking.deposit(_underlying, gauge, amount);
    }

    /// @inheritdoc DestinationVault
    function _ensureLocalUnderlyingBalance(
        uint256 amount
    ) internal override {
        CurveGaugeStaking.withdraw(_underlying, gauge, amount);
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal override returns (uint256[] memory, address[] memory) {
        // we forward the return values from the adapter
        // slither-disable-next-line unused-return
        return CurveRewardsAdapter.claimRewards(gauge, minter, bal);
    }
}
