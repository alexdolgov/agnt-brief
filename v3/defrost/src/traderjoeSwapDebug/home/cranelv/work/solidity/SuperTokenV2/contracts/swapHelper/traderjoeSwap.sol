/**
 * SPDX-License-Identifier: GPL-3.0-or-later
 * Copyright (C) 2020 defrost Protocol
 */
pragma solidity >=0.7.0 <0.8.0;
import "../modules/proxyOwner.sol";
import "../interfaces/IDSOracle.sol";
import "../interfaces/IJoeRouter01.sol";
import "../interfaces/IWAVAX.sol";
import "../modules/safeErc20.sol";
import "../modules/SafeMath.sol";
import "../modules/timeLockSetting.sol";
contract traderjoeSwap is proxyOwner,timeLockSetting {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    IJoeRouter01 public swapRouter;
    IDSOracle public oracle;
    IWAVAX public WAVAX;
    mapping(address=>mapping(address=>address[])) public swapRoutingPath;
    mapping(address=>bool) internal approveMap;
    event SetSwapRoutingPath(address indexed sender,address indexed token0,address indexed token1,address[] swapPath);
    constructor(address multiSignature,address origin0,address origin1,address _swapRouter,address _oracle)
        proxyOwner(multiSignature,origin0,origin1) {
        oracle = IDSOracle(_oracle);
        swapRouter = IJoeRouter01(_swapRouter);
        WAVAX = IWAVAX(swapRouter.WAVAX());
    } 
    receive() external payable {
        // React to receiving ether
    }
    function setOracle(address _oracle) external onlyOrigin notZeroAddress(_oracle){
        require(_oracle != address(oracle),"oracle set error!");
        _set(1,uint256(_oracle));
    }
    function acceptOracle() external onlyOrigin{
        oracle = IDSOracle(address(_accept(1)));
    }
    function safeApprove(IERC20 token)internal{
        if (!approveMap[address(token)]){
            approveMap[address(token)] = true;
            token.safeApprove(address(swapRouter),uint(-1));
        }
    }
    function getSwapMinAmountOut(address tokenIn,address tokenOut,uint256 amountIn,uint256 slipRate)internal view returns(uint256){
        address[] memory assets = new address[](2);
        assets[0] = tokenIn;
        assets[1] = tokenOut;
        uint256[]memory prices = oracle.getPrices(assets);
        if (prices[0]>0 && prices[1]>0){
            return amountIn.mul(prices[0]).mul(slipRate)/prices[1]/1e18;
        }
        return 0;
    }
    function getSwapMaxAmountIn(address tokenIn,address tokenOut,uint256 amountOut,uint256 slipRate)internal view returns(uint256){
        address[] memory assets = new address[](2);
        assets[0] = tokenIn;
        assets[1] = tokenOut;
        uint256[]memory prices = oracle.getPrices(assets);
        if (prices[0]>0 && prices[1]>0){
            return amountOut.mul(prices[1]).mul(1e18)/slipRate/prices[0];
        }
        return 0;
    }
    function getSwapRouterPathInfo(address token0,address token1)public view returns (address[] memory path){
        path = swapRoutingPath[token0][token1];
        if (path.length > 1){
            return path;
        }
        path = new address[](2);
        path[0] = token0 == address(0) ? address(WAVAX) : token0;
        path[1] = token1 == address(0) ? address(WAVAX) : token1;
    }
    function setSwapRoutingPathInfo(address token0,address token1,address[] calldata swapPath) external onlyOrigin {
        swapRoutingPath[token0][token1] = swapPath;
        emit SetSwapRoutingPath(msg.sender,token0,token1,swapPath);
    }
    function swapExactTokens(
        address token0,
        address token1,
        uint256 amountIn,
        uint256 amountOutMin,
        address to
    ) external payable returns (uint256 amountOut){
        return swapToken_minOut(token0,token1,amountIn,amountOutMin,to);
    }

    function swapExactTokens_oracle(
        address token0,
        address token1,
        uint256 amountIn,
        uint256 slipRate,
        address to
    ) external payable returns (uint256 amountOut){
        return swapToken_oracle(token0,token1,amountIn,slipRate,to);
    }

    function tokensInput(address token0,address token1,uint256 amountIn,address to) internal returns (bool,uint256){
        if (token0 == address(0)){
            if (token1 == address(0)){
                _safeTransferETH(to, msg.value);
                return (false,msg.value);
            }
            WAVAX.deposit{value: msg.value}();
            if(token1 == address(WAVAX)){
                 IERC20(token1).safeTransfer(to, msg.value);
                 return (false,msg.value);
            }
            return (true,msg.value);
        }else{
            if(token0 == address(WAVAX) && token1 == address(0)){
                IERC20(token0).safeTransferFrom(msg.sender,address(this), amountIn);
                WAVAX.withdraw(amountIn);
                _safeTransferETH(to, amountIn);
                return (false,amountIn);
            }
            if(token0 != token1){
                IERC20(token0).safeTransferFrom(msg.sender,address(this), amountIn);
                return (true,amountIn);
            }
            return (false,amountIn);
        }
    }
    function swapToken_minOut(address token0,address token1,uint256 amountIn,uint256 amountOutMin,address to) internal returns (uint256){
        bool next = false;
        (next,amountIn) = tokensInput(token0,token1,amountIn,to);
        if(!next){
            return amountIn;
        }
        return swapTokenToToken(token0,token1,amountIn,amountOutMin,to);
    }
    function swapToken_oracle(address token0,address token1,uint256 amountIn,uint256 slipRate,address to) internal returns (uint256){
        bool next = false;
        (next,amountIn) = tokensInput(token0,token1,amountIn,to);
        if(!next){
            return amountIn;
        }
        uint256 amountOutMin = getSwapMinAmountOut(token0,token1,amountIn,slipRate);
        return swapTokenToToken(token0,token1,amountIn,amountOutMin,to);
    }
    function swapToken_exactOut(address token0,address token1,uint256 amountMaxIn,uint256 amountOut,address to) public returns (uint256){
        address[] memory path = getSwapRouterPathInfo(token0,token1);
        uint256[] memory amountsIn = swapRouter.getAmountsIn(amountOut, path);
        require(amountsIn[0]<=amountMaxIn,"swapHelper : amount overflow!");
        bool next = false;
        (next,amountOut) = tokensInput(token0,token1,amountsIn[0],to);
        if(!next){
            return amountsIn[0];
        }
        uint256 amount = swapTokenToToken(token0,token1,amountsIn[0],amountOut,to);
        require(amount==amountOut,"swapHelper : amountOut Error!");
        return amountsIn[0];
    }
    function swapToken_exactOut_oracle(address token0,address token1,uint256 amountOut,uint256 slipRate,address to) external returns (uint256){
        uint256 amountMaxIn = getSwapMaxAmountIn(token0,token1,amountOut,slipRate);
        return swapToken_exactOut(token0,token1,amountMaxIn,amountOut,to);
    }
    function swapTokenToToken(address token0,address token1,uint256 amountIn,uint256 amountOutMin,address to)internal returns (uint256){
        address[] memory path = getSwapRouterPathInfo(token0,token1);
        safeApprove(IERC20(path[0]));
        if(token1 != address(0)){
            uint256[] memory amountsOut = swapRouter.swapExactTokensForTokens(amountIn,amountOutMin,path,to,block.timestamp+30);
            return amountsOut[amountsOut.length-1];
        }else{
            uint256[] memory amountsOut = swapRouter.swapExactTokensForTokens(amountIn,amountOutMin,path,address(this),block.timestamp+30);
            uint256 amount= amountsOut[amountsOut.length-1];
            WAVAX.withdraw(amount);
            _safeTransferETH(to, amount);
            return amount;
        }
    }
    function getAmountIn(address token0,address token1,uint256 amountOut)external view returns (uint256){
        address[] memory path = getSwapRouterPathInfo(token0,token1);
        uint256[] memory amountsIn = swapRouter.getAmountsIn(amountOut, path);
        return amountsIn[0];
    }
    function getAmountOut(address token0,address token1,uint256 amountIn)external view returns (uint256){
        address[] memory path = getSwapRouterPathInfo(token0,token1);
        uint256[] memory amountsOut = swapRouter.getAmountsOut(amountIn, path);
        return amountsOut[amountsOut.length-1];
    }
    function _safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        require(success, 'ETH_TRANSFER_FAILED');
    }
    modifier notZeroAddress(address inputAddress) {
        require(inputAddress != address(0), "superToken : input zero address");
        _;
    }
}