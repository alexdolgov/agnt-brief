// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {ISponsorCenter} from "./interfaces/ISponsorCenter.sol";

/// @title Pool Init + Bind Router
/// @notice Helper to initialize a v4 pool and bind sponsor position atomically.
contract PoolInitAndBindRouter {
    error ZeroAddress();

    function initializePoolAndBind(
        IPoolManager poolManager,
        uint160 sqrtPriceX96,
        ISponsorCenter sponsorCenter,
        ISponsorCenter.SignedSponsorSlotPermit calldata signed
    ) external {
        if (address(poolManager) == address(0) || address(sponsorCenter) == address(0)) {
            revert ZeroAddress();
        }

        poolManager.initialize(signed.permit.key, sqrtPriceX96);
        sponsorCenter.bindSponsorTba(signed);
    }
}
