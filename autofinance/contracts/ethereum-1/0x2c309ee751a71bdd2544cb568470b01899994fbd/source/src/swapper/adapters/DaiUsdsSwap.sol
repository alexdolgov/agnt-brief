// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { ISwapRouter } from "src/interfaces/swapper/ISwapRouter.sol";
import { BaseAdapter, ISyncSwapper } from "src/swapper/adapters/BaseAdapter.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";
import { IDaiUsds } from "src/interfaces/external/sky/IDaiUsds.sol";
import { Errors } from "src/utils/Errors.sol";

contract DaiUsdsSwap is BaseAdapter {
    IDaiUsds public immutable daiUsdsConverter;

    constructor(address _router, address _daiUsdsConverter) BaseAdapter(_router) {
        Errors.verifyNotZero(_daiUsdsConverter, "_daiUsdsConverter");
        daiUsdsConverter = IDaiUsds(_daiUsdsConverter);
    }

    /// @inheritdoc ISyncSwapper
    function validate(address fromAddress, ISwapRouter.SwapData memory swapData) external view override {
        IDaiUsds converter = daiUsdsConverter;

        if (swapData.pool != address(converter)) {
            revert DataMismatch("pool");
        }

        address dai = daiUsdsConverter.dai();
        address usds = daiUsdsConverter.usds();

        bool oldForNew = fromAddress == dai && swapData.token == usds;
        bool newForOld = fromAddress == usds && swapData.token == dai;

        if (oldForNew || newForOld) {
            return;
        }

        revert DataMismatch("tokens");
    }

    /// @inheritdoc ISyncSwapper
    function swap(
        address poolAddress,
        address sellTokenAddress,
        uint256 sellAmount,
        address,
        uint256 minBuyAmount,
        bytes memory
    ) external override onlyRouter returns (uint256 amount) {
        IDaiUsds converter = IDaiUsds(poolAddress);
        address dai = converter.dai();

        if (sellAmount != minBuyAmount) {
            revert DataMismatch("min");
        }

        LibAdapter._approve(IERC20(sellTokenAddress), address(converter), sellAmount);
        if (sellTokenAddress == dai) {
            converter.daiToUsds(address(this), sellAmount);
        } else {
            converter.usdsToDai(address(this), sellAmount);
        }

        amount = sellAmount;
    }
}
