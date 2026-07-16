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
        uint256 token0Amount;
        uint256 token1Amount;
        address token0;
        address token1;
        address recipient;
        address hookContract;
        bytes hookData;
    }

    function initPoolAndSetFees(PoolInitParams memory params, IArenaFeeHelperMinimal.Fee[] calldata fees) external returns (uint256);
}