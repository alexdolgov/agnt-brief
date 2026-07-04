// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { UniV3SwapBase } from "src/swapper/adapters/UniV3SwapBase.sol";
import { BytesLib } from "src/external/univ3/BytesLib.sol";

// solhint-disable no-inline-assembly,gas-custom-errors
contract SwapXConcentratedSwap is UniV3SwapBase {
    using BytesLib for bytes;

    /// @dev The length of the bytes encoded address
    uint256 private constant ADDR_SIZE = 20;

    /// @dev The offset of a single token address
    uint256 private constant NEXT_OFFSET = ADDR_SIZE;

    uint256 private constant POP_OFFSET = NEXT_OFFSET + ADDR_SIZE;

    /// @dev The minimum length of an encoding that contains 2 or more pools
    uint256 private constant MULTIPLE_POOLS_MIN_LENGTH = POP_OFFSET + NEXT_OFFSET;

    constructor(
        address _swapXRouter
    ) UniV3SwapBase(_swapXRouter) { }

    ///@dev As implemented in Path.sol from @cryptoalgebra
    function _decodeFirstPool(
        bytes memory path
    ) internal pure override returns (address sellAddress, address buyAddress) {
        sellAddress = path.toAddress(0);
        buyAddress = path.toAddress(NEXT_OFFSET);
    }

    ///@dev As implemented in Path.sol from @cryptoalgebra
    function _hasMultiplePools(
        bytes memory path
    ) internal pure override returns (bool) {
        return path.length >= MULTIPLE_POOLS_MIN_LENGTH;
    }

    ///@dev As implemented in Path.sol from @cryptoalgebra
    function _skipToken(
        bytes memory path
    ) internal pure override returns (bytes memory) {
        return path.slice(NEXT_OFFSET, path.length - NEXT_OFFSET);
    }
}
