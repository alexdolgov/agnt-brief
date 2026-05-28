// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IVaultExplorer } from "src/interfaces/external/balancer/v3/IVaultExplorer.sol";
import { IAllowanceTransfer } from "src/interfaces/external/uniswap/permit2/IAllowanceTransfer.sol";

import { LibAdapter } from "src/libs/LibAdapter.sol";
import { BaseAdapter, Errors } from "src/swapper/adapters/BaseAdapter.sol";

/// @title Base adapter for common functionalities across bal v3 swappers
abstract contract BalancerV3BaseSwap is BaseAdapter {
    IVaultExplorer public immutable balVaultExplorer;
    IAllowanceTransfer public immutable permit2;
    address public immutable balRouter;

    constructor(
        address _router,
        address _balVaultExplorer,
        address _permit2,
        address _balRouter
    ) BaseAdapter(_router) {
        Errors.verifyNotZero(_balVaultExplorer, "_balVaultExplorer");
        Errors.verifyNotZero(_permit2, "_permit2");
        Errors.verifyNotZero(_balRouter, "_balRouter");

        balVaultExplorer = IVaultExplorer(_balVaultExplorer);
        permit2 = IAllowanceTransfer(_permit2);
        balRouter = _balRouter;
    }

    function _permit2Approval(address _sellToken, uint256 _sellAmount) internal {
        // First, approve permit2 to spend tokens
        LibAdapter._approve(IERC20(_sellToken), address(permit2), _sellAmount);

        // Second, permit router through permit2
        permit2.approve(_sellToken, balRouter, uint160(_sellAmount), uint40(block.timestamp));
    }

    /// @dev Validates pool address, that tokens are contained in pool, etc
    function _validatePool(address _pool, address _sellToken, address _buyToken) internal view {
        Errors.verifyNotZero(_pool, "_pool");
        if (_sellToken == _buyToken) revert Errors.InvalidParams();

        IERC20[] memory poolTokens = balVaultExplorer.getPoolTokens(_pool);

        // slither-disable-start uninitialized-local
        bool fromExists;
        bool toExists;
        // slither-disable-end uninitialized-local

        for (uint256 i = 0; i < poolTokens.length; ++i) {
            address currentPoolToken = address(poolTokens[i]);
            if (currentPoolToken == _sellToken) {
                fromExists = true;
                continue;
            } else if (currentPoolToken == _buyToken) {
                toExists = true;
            }
        }

        if (!fromExists || !toExists) revert DataMismatch("poolTokens");
    }
}
