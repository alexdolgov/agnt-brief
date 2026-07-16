// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

library RebalanceTypes {
    struct FloorReserveInfo {
        bool active;
        uint256 index;
        uint256 reserve0;
        uint256 reserve1;
        uint128 liquidity;
    }
}
