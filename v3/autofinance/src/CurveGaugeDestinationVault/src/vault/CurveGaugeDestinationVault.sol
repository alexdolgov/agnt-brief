// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { Errors } from "src/utils/Errors.sol";
import { CurveDestinationVault, DestinationVault } from "src/vault/CurveDestinationVault.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { CurveRewardsAdapter } from "src/destinations/adapters/rewards/CurveRewardsAdapter.sol";
import { ILiquidityGaugeV2 } from "src/interfaces/external/curve/ILiquidityGaugeV2.sol";
import { CurveGaugeStaking } from "src/destinations/adapters/staking/CurveGaugeAdapter.sol";

/// @notice Destination Vault to proxy a Curve Pool that stakes in Curve Gauge
/// @dev Inherits from CurveDestinationVault and adds Curve Gauge staking functionality
contract CurveGaugeDestinationVault is CurveDestinationVault {
    struct InitGaugeParams {
        CurveDestinationVault.InitParams base;
        /// @notice Curve Gauge contract
        address gauge;
        /// @notice Curve Minter contract
        address minter;
        /// @notice CRV token
        address crv;
    }

    /* ******************************** */
    /* State Variables                  */
    /* ******************************** */

    /// @notice Curve Gauge contract
    address public gauge;

    /// @notice Curve Minter contract
    address public minter;

    /// @notice CRV token
    address public crv;

    constructor(
        ISystemRegistry sysRegistry
    ) CurveDestinationVault(sysRegistry) { }

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
        Errors.verifyNotZero(initParams.minter, "minter");
        Errors.verifyNotZero(initParams.crv, "crv");

        gauge = initParams.gauge;
        minter = initParams.minter;
        crv = initParams.crv;

        // Verify gauge info
        address lpToken = ILiquidityGaugeV2(initParams.gauge).lp_token();
        if (lpToken != _underlying) {
            revert Errors.InvalidParam("lpToken");
        }
    }

    /// @inheritdoc CurveDestinationVault
    function destType() external pure virtual override returns (string memory) {
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
    function _collectRewards() internal override returns (uint256[] memory amounts, address[] memory tokens) {
        (amounts, tokens) = CurveRewardsAdapter.claimRewards(gauge, minter, crv, _trackedTokens);
    }
}
