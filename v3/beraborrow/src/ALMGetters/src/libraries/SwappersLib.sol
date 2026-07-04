// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;
import {UtilsLib} from "./UtilsLib.sol";


library SwappersLib {
    using UtilsLib for bytes;

    error SwapperNotWhitelisted();

    event SwapperAdded(address indexed swapRouter, bool status);

    struct SwapperData {
        mapping(address => bool) whitelistedSwappers;
    }

    function addWhitelistedSwapper(SwapperData storage self, address _swapRouter, bool status) internal {
        self.whitelistedSwappers[_swapRouter] = status;

        emit SwapperAdded(_swapRouter, status);
    }

    function executeSwap(SwapperData storage self, address swapRouter, bytes memory dexCalldata) internal {
        if (!self.whitelistedSwappers[swapRouter]) revert SwapperNotWhitelisted();
        
        (bool success, bytes memory retData) = swapRouter.call(dexCalldata);
        if (!success) {
            retData.bubbleUpRevert();
        }
    }
}
