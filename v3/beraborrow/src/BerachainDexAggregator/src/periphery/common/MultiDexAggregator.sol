// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IMultiDexAggregator} from "src/interfaces/periphery/common/IMultiDexAggregator.sol";
import {IEverlongCore} from "src/interfaces/core/IEverlongCore.sol";

abstract contract MultiDexAggregator is IMultiDexAggregator {
    using SafeERC20 for IERC20;

    mapping(uint8 => address) public dexRouters;

    IEverlongCore public immutable everlongCore;

    modifier onlyOwner() {
        if (msg.sender != everlongCore.owner()) {
            revert NotOwner(msg.sender);
        }
        _;
    }

    constructor(address _everlongCore, uint8[] memory _dexIndices, address[] memory _routers) {
        everlongCore = IEverlongCore(_everlongCore);
        for (uint256 i; i < _dexIndices.length; i++) {
            dexRouters[_dexIndices[i]] = _routers[i];
            emit DexRouterSet(_dexIndices[i], _routers[i]);
        }
    }

    function swap(
        uint8 dexIndex,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata dexParams
    ) external override returns (uint256 amountOut) {
        address router = dexRouters[dexIndex];
        if (router == address(0)) revert InvalidDexIndex(dexIndex);

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        uint256 prevTokenOutBalance = IERC20(tokenOut).balanceOf(address(this));

        IERC20(tokenIn).safeIncreaseAllowance(router, amountIn);

        _executeSwap(dexIndex, router, tokenIn, tokenOut, amountIn, amountOutMin, dexParams);

        amountOut = IERC20(tokenOut).balanceOf(address(this)) - prevTokenOutBalance;
        if (amountOut < amountOutMin) revert InsufficientOutput(amountOut, amountOutMin);

        IERC20(tokenOut).safeTransfer(msg.sender, amountOut);

        // Return any unused input tokens (e.g. exactOutput swaps)
        uint256 remainingIn = IERC20(tokenIn).balanceOf(address(this));
        if (remainingIn > 0) {
            IERC20(tokenIn).safeTransfer(msg.sender, remainingIn);
        }
    }

    function setDexRouter(uint8 index, address router) external override onlyOwner {
        dexRouters[index] = router;
        emit DexRouterSet(index, router);
    }

    function getDexRouter(uint8 index) external view override returns (address) {
        return dexRouters[index];
    }

    function _executeSwap(
        uint8 dexIndex,
        address router,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata dexParams
    ) internal virtual;
}
