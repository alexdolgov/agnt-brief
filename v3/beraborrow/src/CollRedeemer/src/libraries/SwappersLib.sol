// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {UtilsLib} from "src/libraries/UtilsLib.sol";

library SwappersLib {
    using UtilsLib for bytes;

    event SwapperAdded(address indexed swapRouter, bool status);

    struct SwapperData {
        mapping(address => bool) whitelistedSwappers;
    }

    function addWhitelistedSwapper(SwapperData storage self, address _swapRouter, bool status) internal {
        self.whitelistedSwappers[_swapRouter] = status;

        emit SwapperAdded(_swapRouter, status);
    }

    function executeSwap(SwapperData storage self, address swapRouter, bytes memory dexCalldata) internal {
        require(self.whitelistedSwappers[swapRouter], "SwappersLib: swapper not whitelisted");
        
        (bool success, bytes memory retData) = swapRouter.call(dexCalldata);
        if (!success) {
            retData.bubbleUpRevert();
        }
    }

}
