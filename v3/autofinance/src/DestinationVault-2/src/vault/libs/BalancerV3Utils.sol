// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { IPoolInfo } from "src/interfaces/external/balancer/v3/IPoolInfo.sol";
import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";

library BalancerV3Utils {
    /// @notice Gets the reserves of the underlying tokens
    function underlyingReserves(
        address underlying,
        bool[] memory isWrappedToken
    ) external view returns (uint256[] memory balances) {
        // slither-disable-next-line unused-return
        (address[] memory queriedTokens,, uint256[] memory queriedBalances,) = IPoolInfo(underlying).getTokenInfo();
        uint256 len = queriedTokens.length;
        balances = new uint256[](len);

        for (uint256 i = 0; i < len; ++i) {
            if (isWrappedToken[i]) {
                balances[i] = IERC4626(queriedTokens[i]).convertToAssets(queriedBalances[i]);
            } else {
                balances[i] = queriedBalances[i];
            }
        }
    }
}
