// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

contract ToolBox {

    IUniswapV2Router02 public constant pancakeswapRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IUniswapV2Factory public constant pancakeswapFactory = IUniswapV2Factory(0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73);
    address public constant busdAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    // Stable coin addresses
    address public constant usdtAddress = 0x55d398326f99059fF775485246999027B3197955;
    address public constant usdcAddress = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    address public constant tusdAddress = 0x23396cF899Ca06c4472205fC903bDB4de249D6fC;
    address public constant daiAddress = 0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3;

    function convertToTargetValueFromPair(IUniswapV2Pair pair, uint256 sourceTokenAmount, address targetAddress) public view returns (uint256) {
        address token0 = pair.token0();
        address token1 = pair.token1();

        require(token0 == targetAddress || token1 == targetAddress, "one of the pairs must be the targetAddress");
        if (sourceTokenAmount == 0)
            return 0;

        (uint256 res0, uint256 res1, ) = pair.getReserves();
        if (res0 == 0 || res1 == 0)
            return 0;

        if (token0 == targetAddress)
            return (res0 * sourceTokenAmount) / res1;
        else
            return (res1 * sourceTokenAmount) / res0;
    }

    function getTokenBUSDValue(uint256 tokenBalance, address token, bool isLPToken) external view returns (uint256) {
        if (token == address(busdAddress)){
            return tokenBalance;
        }

        // lp type
        if (isLPToken) {
            IUniswapV2Pair lpToken = IUniswapV2Pair(token);
            IERC20 token0 = IERC20(lpToken.token0());
            IERC20 token1 = IERC20(lpToken.token1());
            uint256 totalSupply = lpToken.totalSupply();

            if (totalSupply == 0){
                return 0;
            }

            // If lp contains stablecoin, we can take a short-cut
            if (isStablecoin(address(token0))) {
                return (token0.balanceOf(address(lpToken)) * tokenBalance * 2) / totalSupply;
            } else if (isStablecoin(address(token1))){
                return (token1.balanceOf(address(lpToken)) * tokenBalance * 2) / totalSupply;
            }
        }

        // Only used for lp type tokens.
        address lpTokenAddress = token;


        // If token0 or token1 is wbnb, use that, else use token0.
        if (isLPToken) {
            token = IUniswapV2Pair(token).token0() == wbnbAddress ? wbnbAddress :
            (IUniswapV2Pair(token).token1() == wbnbAddress ? wbnbAddress : IUniswapV2Pair(token).token0());
        }

        // if it is an LP token we work with all of the reserve in the LP address to scale down later.
        uint256 tokenAmount = (isLPToken) ? IERC20(token).balanceOf(lpTokenAddress) : tokenBalance;

        uint256 busdEquivalentAmount = 0;

        // As we arent working with busd at this point (early return), this is okay.
        IUniswapV2Pair busdPair = IUniswapV2Pair(pancakeswapFactory.getPair(address(busdAddress), token));
        if (address(busdPair) == address(0)){
            return 0;
        }
        busdEquivalentAmount = convertToTargetValueFromPair(busdPair, tokenAmount, busdAddress);

        if (isLPToken)
            return (busdEquivalentAmount * tokenBalance * 2) / IUniswapV2Pair(lpTokenAddress).totalSupply();
        else
            return busdEquivalentAmount;
    }

    function isStablecoin(address _tokenAddress) public view returns(bool){
        return _tokenAddress == busdAddress ||
        _tokenAddress == usdtAddress ||
        _tokenAddress == usdcAddress ||
        _tokenAddress == tusdAddress ||
        _tokenAddress == daiAddress;
    }

}