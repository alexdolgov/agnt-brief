// // SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IUniswapV2Router} from "src/interfaces/external/IUniswapV2.sol";
import {IWETH} from "../interfaces/external/IWETH.sol";

abstract contract UsingUniV2 {
    using SafeERC20 for IERC20;

    IERC20 internal constant ETH = IERC20(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    IWETH public immutable WETH;
    IUniswapV2Router public immutable router;

    error AddressIsNull();

    constructor(IUniswapV2Router router_, IWETH weth_) {
        if (address(router_) == address(0) || address(weth_) == address(0)) revert AddressIsNull();
        WETH = weth_;
        router = router_;
    }

    function _swap(
        IERC20 tokenIn_,
        IERC20 tokenOut_,
        uint256 amountIn_,
        uint256 amountOutMin_,
        address receiver_
    ) internal returns (uint256 _amountOut) {
        if (address(tokenIn_) == address(0)) return 0;
        if (amountIn_ == type(uint256).max) {
            amountIn_ = _balance(tokenIn_);
        }
        if (amountIn_ == 0) return 0;
        if (address(tokenIn_) == address(tokenOut_)) return amountIn_;
        if (tokenIn_ == WETH && tokenOut_ == ETH) {
            WETH.withdraw(amountIn_);
            _transferAsset(ETH, receiver_, amountIn_);
            return amountIn_;
        }
        if (tokenIn_ == ETH && tokenOut_ == WETH) {
            WETH.deposit{value: amountIn_}();
            _transferAsset(WETH, receiver_, amountIn_);
            return amountIn_;
        }

        address[] memory _path = new address[](2);
        _path[0] = tokenIn_ == ETH ? address(WETH) : address(tokenIn_);
        _path[1] = tokenOut_ == ETH ? address(WETH) : address(tokenOut_);

        if (tokenIn_ == ETH) {
            return router.swapExactETHForTokens{value: amountIn_}(amountOutMin_, _path, receiver_, block.timestamp)[1];
        }

        if (tokenOut_ == ETH) {
            tokenIn_.approve(address(router), amountIn_);
            return router.swapExactTokensForETH(amountIn_, amountOutMin_, _path, receiver_, block.timestamp)[1];
        }

        tokenIn_.approve(address(router), amountIn_);
        return router.swapExactTokensForTokens(amountIn_, amountOutMin_, _path, receiver_, block.timestamp)[1];
    }

    function _transferAsset(IERC20 _asset, address _receiver, uint256 _amount) internal {
        if (_amount == 0) return;
        if (_receiver == address(this)) return;

        if (_asset == ETH) {
            if (_amount == type(uint256).max) {
                _amount = address(this).balance;
            }
            (bool success, ) = _receiver.call{value: _amount}("");
            require(success, "Transfer failed");
        } else {
            if (_amount == type(uint256).max) {
                _amount = _asset.balanceOf(address(this));
            }
            _asset.safeTransfer(_receiver, _amount);
        }
    }

    function _balance(IERC20 token_) internal view returns (uint256) {
        return token_ == ETH ? address(this).balance : token_.balanceOf(address(this));
    }

    receive() external payable {}
}
