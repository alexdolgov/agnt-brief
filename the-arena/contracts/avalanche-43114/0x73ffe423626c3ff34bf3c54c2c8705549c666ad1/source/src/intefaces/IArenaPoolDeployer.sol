// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IArenaFeeHelperMinimal} from "./IArenaFeeHelperMinimal.sol";
interface IArenaPoolDeployer {
    struct PoolInitParams {
        int24 tickSpacing;
        int24 tickLower; // range of the position, must be a multiple of tickSpacing
        int24 tickUpper; // range of the position, must be a multiple of tickSpacing
        uint24 fee;
        uint160 startingPrice;
        uint256 tokenAAmount;
        uint256 tokenBAmount;
        address tokenA; // 0 or 1 will be determined by token address
        address tokenB;
        address recipient;
        address hookContract;
        bytes hookData;
    }

    function initPoolAndSetFees(PoolInitParams memory params, IArenaFeeHelperMinimal.Fee[] calldata fees) external returns (uint256);
}