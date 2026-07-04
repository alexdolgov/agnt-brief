// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { Address } from "openzeppelin-contracts/utils/Address.sol";
import { BaseAdapter, ISyncSwapper, ISwapRouter } from "src/swapper/adapters/BaseAdapter.sol";

/// @title Sync swapper that allows for unwrapping a vault share to its underlying asset as a part of the
/// sync swapper system
/// @dev `IERC4626.redeem()` is an 'exact in variable out' operation
contract ERC4626RedeemSwapper is BaseAdapter {
    using Address for address;

    constructor(
        address _swapRouter
    ) BaseAdapter(_swapRouter) { }

    /// @inheritdoc ISyncSwapper
    function validate(address fromAddress, ISwapRouter.SwapData memory swapData) external view virtual {
        // Swap here is technically happening on the `fromAddress`, as this is a 4626 vault operation
        if (swapData.pool != fromAddress) revert Errors.InvalidConfiguration();

        // Ensure that fromAddress is a 4626 vault, and that `asset()` call is returning data
        (bytes memory data) = fromAddress.functionStaticCall(abi.encodeCall(IERC4626.asset, ()));
        if (data.length == 0) revert Errors.InvalidDataReturned();
        address asset = abi.decode(data, (address));

        // Ensure that the asset token is the token that we expect
        if (asset != swapData.token) revert Errors.InvalidConfiguration();
    }

    /// @inheritdoc ISyncSwapper
    function swap(
        address,
        address sellTokenAddress,
        uint256 sellAmount,
        address,
        uint256,
        bytes memory
    ) external virtual onlyRouter returns (uint256 actualBuyAmount) {
        // Redeem for vault asset
        return IERC4626(sellTokenAddress).redeem(sellAmount, address(this), address(this));
    }
}
