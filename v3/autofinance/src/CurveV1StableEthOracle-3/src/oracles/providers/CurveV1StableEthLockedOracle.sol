// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

// solhint-disable var-name-mixedcase

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { ICurveOwner } from "src/interfaces/external/curve/ICurveOwner.sol";
import { CurveV1StableEthOracle } from "src/oracles/providers/CurveV1StableEthOracle.sol";
import { ICurveV1StableSwap } from "src/interfaces/external/curve/ICurveV1StableSwap.sol";

/// @title Price oracle for Curve StableSwap pools that have ETH and require locking, the old stETH/ETH mainly
/// @dev getPriceEth is not a view fn to support reentrancy checks. Don't actually change state.
///      Registration is open to any pool. Up to admin to register appropriate pools
contract CurveV1StableEthLockedOracle is CurveV1StableEthOracle {
    constructor(
        ISystemRegistry _systemRegistry
    ) CurveV1StableEthOracle(_systemRegistry) { }

    /// @inheritdoc CurveV1StableEthOracle
    function getDescription() external pure override returns (string memory) {
        return "curveV1EthLocked";
    }

    /// @inheritdoc CurveV1StableEthOracle
    function getSpotPrice(
        address token,
        address pool,
        address requestedQuoteToken
    ) public override returns (uint256 price, address actualQuoteToken) {
        (price, actualQuoteToken) = super.getSpotPrice(token, pool, requestedQuoteToken);
        _checkLock(pool);
    }

    /// @inheritdoc CurveV1StableEthOracle
    function getSafeSpotPriceInfo(
        address pool,
        address lpToken,
        address quoteToken
    ) public override returns (uint256 totalLPSupply, ReserveItemInfo[] memory reserves) {
        (totalLPSupply, reserves) = super.getSafeSpotPriceInfo(pool, lpToken, quoteToken);
        _checkLock(pool);
    }

    /// @dev Triggers the reentrancy check on the Curve pool
    /// @param poolAddress Address of the Curve pool to check
    function _checkLock(
        address poolAddress
    ) private {
        ICurveV1StableSwap pool = ICurveV1StableSwap(poolAddress);
        ICurveOwner(pool.owner()).withdraw_admin_fees(address(pool));
    }
}
