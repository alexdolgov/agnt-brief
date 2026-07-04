// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

interface INonfungiblePositionManagerStruct {
    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }
}
