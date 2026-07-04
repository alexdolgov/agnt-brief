// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IVaultExplorer } from "src/interfaces/external/balancer/v3/IVaultExplorer.sol";
import { Errors } from "src/utils/Errors.sol";

import { ScalingHelpers } from "src/external/balancer/v3/ScalingHelpers.sol";

import {
    BalancerBaseStableMathOracle, ISystemRegistry
} from "src/oracles/providers/base/BalancerBaseStableMathOracle.sol";

/// @title An StableMath based oracle for Balancer V3 spot pricing
contract BalancerV3StableMathOracle is BalancerBaseStableMathOracle {
    /// @notice Instance of Balancer V3 Vault Explorer.  Explorer is used to access state of main Vault contract
    IVaultExplorer public immutable vaultExplorer;

    /// @param pool Address of pool being used for pricing
    /// @param balancesRaw Current raw balances of pool
    struct BalancerV3StableOracleData {
        address pool;
        uint256[] balancesRaw;
    }

    constructor(IVaultExplorer _vaultExplorer, ISystemRegistry _registry) BalancerBaseStableMathOracle(_registry) {
        Errors.verifyNotZero(address(_vaultExplorer), "_vaultExplorer");

        vaultExplorer = _vaultExplorer;
    }

    function getDescription() external pure override returns (string memory) {
        return "balV3StableMath";
    }

    /// @inheritdoc BalancerBaseStableMathOracle
    function _getLiveBalancesAndScalingFactors(
        bytes memory data
    ) internal view override returns (uint256[] memory liveBalances, uint256[] memory scalingFactors) {
        BalancerV3StableOracleData memory decodedData = abi.decode(data, (BalancerV3StableOracleData));

        uint256[] memory balancesRaw = decodedData.balancesRaw;
        address pool = decodedData.pool;

        (uint256[] memory decimalScalingFactors, uint256[] memory rateScalingFactors) =
            vaultExplorer.getPoolTokenRates(pool);

        uint256 len = balancesRaw.length;
        Errors.verifyArrayLengths(len, decimalScalingFactors.length, "balances+decimalScalingFactors");

        liveBalances = new uint256[](len);
        scalingFactors = new uint256[](len);
        for (uint256 i = 0; i < len; ++i) {
            uint256 decScaling = decimalScalingFactors[i];
            uint256 rateScaling = rateScalingFactors[i];

            // Last saved raw balances are the updated balances for the pool before an operation.  Cannot use last
            // saved live balances because rates may have updated since last operation
            liveBalances[i] = ScalingHelpers.toScaled18ApplyRateRoundDown(balancesRaw[i], decScaling, rateScaling);
            scalingFactors[i] = decScaling * rateScaling;
        }
    }

    /// @inheritdoc BalancerBaseStableMathOracle
    function _getTotalSupply(
        address pool
    ) internal view override returns (uint256) {
        return IERC20(pool).totalSupply();
    }

    /// @inheritdoc BalancerBaseStableMathOracle
    function _getPoolTokens(
        address pool
    ) internal view override returns (IERC20[] memory, uint256[] memory, bytes memory) {
        // slither-disable-next-line unused-return
        (IERC20[] memory tokens,, uint256[] memory balancesRaw,) = vaultExplorer.getPoolTokenInfo(pool);

        return (tokens, balancesRaw, abi.encode(BalancerV3StableOracleData({ pool: pool, balancesRaw: balancesRaw })));
    }
}
