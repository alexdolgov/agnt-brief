// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { ICurve3Pool } from "src/interfaces/external/curve/ICurve3Pool.sol";
import { ISwapRouter } from "src/interfaces/swapper/ISwapRouter.sol";
import { BaseAdapter, ISyncSwapper } from "src/swapper/adapters/BaseAdapter.sol";
import { IWETH9 } from "src/interfaces/utils/IWETH9.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";

contract Curve3PoolSwap is BaseAdapter {
    constructor(
        address _router
    ) BaseAdapter(_router) { }

    /// @inheritdoc ISyncSwapper
    function validate(address fromAddress, ISwapRouter.SwapData memory swapData) external view override {
        (int128 sellIndex, int128 buyIndex) = abi.decode(swapData.data, (int128, int128));

        ICurve3Pool pool = ICurve3Pool(swapData.pool);

        address sellAddress = pool.coins(_int128ToUint256(sellIndex));
        address buyAddress = pool.coins(_int128ToUint256(buyIndex));

        // verify that the fromAddress and toAddress are in the pool
        if (!isTokenMatch(fromAddress, sellAddress)) revert DataMismatch("fromAddress");
        if (!isTokenMatch(swapData.token, buyAddress)) revert DataMismatch("toAddress");
    }

    /// @inheritdoc ISyncSwapper
    function swap(
        address poolAddress,
        address sellTokenAddress,
        uint256 sellAmount,
        address buyTokenAddress,
        uint256 minBuyAmount,
        bytes memory data
    ) external override onlyRouter returns (uint256 amount) {
        (int128 sellIndex, int128 buyIndex) = abi.decode(data, (int128, int128));
        ICurve3Pool pool = ICurve3Pool(poolAddress);

        LibAdapter._approve(IERC20(sellTokenAddress), poolAddress, sellAmount);

        uint256 balanceBefore = IERC20(buyTokenAddress).balanceOf(address(this));
        pool.exchange(sellIndex, buyIndex, sellAmount, minBuyAmount);
        uint256 balanceAfter = IERC20(buyTokenAddress).balanceOf(address(this));

        amount = balanceAfter - balanceBefore;
    }

    function _int128ToUint256(
        int128 value
    ) internal pure returns (uint256 result) {
        if (value < 0) {
            revert InvalidIndex();
        }
        // slither-disable-start assembly
        // solhint-disable-next-line no-inline-assembly
        assembly {
            result := value
        }
        //slither-disable-end assembly
    }

    /// @notice Determine if the supplied and queried tokens match
    /// @param fromAddress Token supplied in our config
    /// @param queriedAddress Token queried based on the supplied index
    /// @return true for "matches"
    function isTokenMatch(address fromAddress, address queriedAddress) internal pure returns (bool) {
        return fromAddress == queriedAddress;
    }
}
