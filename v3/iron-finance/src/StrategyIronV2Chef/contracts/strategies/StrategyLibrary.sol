// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IUniswapV2Router.sol";
import "../interfaces/IWBNB.sol";

library StrategyLibrary {
    address internal constant wbnbAddress = 0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270; // this is mock. Please change

    // address internal constant wbnbAddress = 0x3Bae2020Fc06bfd221cDCD53b28d3C99FE6f8187; // this is mock. Please change

    function safeSwap(
        address _swapRouterAddress,
        uint256 _amountIn,
        uint256 _slippageFactor,
        address[] memory _path,
        address _to,
        uint256 _deadline
    ) internal {
        IUniswapV2Router _swapRouter = IUniswapV2Router(_swapRouterAddress);
        require(_path.length > 0, "invalidSwapPath");
        uint256[] memory amounts = _swapRouter.getAmountsOut(_amountIn, _path);
        uint256 amountOut = amounts[amounts.length - 1];

        _swapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            _amountIn,
            (amountOut * _slippageFactor) / 10000,
            _path,
            _to,
            _deadline
        );
    }

    function unwrapBNB() internal {
        // WBNB -> BNB
        uint256 wbnbBal = IERC20(wbnbAddress).balanceOf(address(this));
        if (wbnbBal > 0) {
            IWBNB(wbnbAddress).withdraw(wbnbBal);
        }
    }

    function wrapBNB() internal {
        // BNB -> WBNB
        uint256 bnbBal = address(this).balance;
        if (bnbBal > 0) {
            IWBNB(wbnbAddress).deposit{value: bnbBal}(); // BNB -> WBNB
        }
    }

    function isBNB(address _token) internal pure returns (bool) {
        return _token == wbnbAddress;
    }
}
