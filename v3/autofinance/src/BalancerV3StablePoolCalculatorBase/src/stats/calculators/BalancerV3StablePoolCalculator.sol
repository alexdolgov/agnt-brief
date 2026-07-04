// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import {
    BalancerV3StablePoolCalculatorBase,
    ISystemRegistry,
    IERC20
} from "src/stats/calculators/base/BalancerV3StablePoolCalculatorBase.sol";

contract BalancerV3StablePoolCalculator is BalancerV3StablePoolCalculatorBase {
    constructor(
        ISystemRegistry _registry,
        address _balancerVaultExplorer
    ) BalancerV3StablePoolCalculatorBase(_registry, _balancerVaultExplorer) { }

    /// @inheritdoc BalancerV3StablePoolCalculatorBase
    function getPoolTokens()
        internal
        view
        virtual
        override
        returns (IERC20[] memory tokens, uint256[] memory balances)
    {
        // slither-disable-next-line unused-return
        (tokens,, balances,) = balancerVaultExplorer.getPoolTokenInfo(poolAddress);
    }

    /// @inheritdoc BalancerV3StablePoolCalculatorBase
    function getVirtualPrice() internal view virtual override returns (uint256) {
        return balancerVaultExplorer.getBptRate(poolAddress);
    }
}
