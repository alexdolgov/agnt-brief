/**
 *Submitted for verification at FtmScan.com on 2022-02-20
*/

// SPDX-License-Identifier: MIT
// ftm.guru's extension of Solidly's periphery (Router)
// https://github.com/andrecronje/solidly/blob/master/contracts/BaseV1-periphery.sol
// BaseV1Router02.sol : Supporting Fee-on-transfer Tokens
// https://github.com/ftm1337/solidly-with-FoT/blob/master/contracts/BaseV1-periphery.sol

pragma solidity >=0.8.0;


import '../lib/Constants.sol';
interface IBaseV1Factory {
    function allPairsLength() external view returns (uint);
    function isPair(address pair) external view returns (bool);
    function pairCodeHash() external pure returns (bytes32);
    function getPair(address tokenA, address token, bool stable) external view returns (address);
    function createPair(address tokenA, address tokenB, bool stable) external returns (address pair);
}

interface IBaseV1Pair {
    function transferFrom(address src, address dst, uint amount) external returns (bool);
    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function burn(address to) external returns (uint amount0, uint amount1);
    function mint(address to) external returns (uint liquidity);
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
    function getAmountOut(uint, address) external view returns (uint);
}

interface erc20 {
    function totalSupply() external view returns (uint256);
    function transfer(address recipient, uint amount) external returns (bool);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
    function balanceOf(address) external view returns (uint);
    function transferFrom(address sender, address recipient, uint amount) external returns (bool);
    function approve(address spender, uint value) external returns (bool);
}

interface IPairFactory {
    function getFee(bool _stable) external view returns(uint256);
    function MAX_REFERRAL_FEE() external view returns(uint256);
}


library Math {
    function min(uint a, uint b) internal pure returns (uint) {
        return a < b ? a : b;
    }
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
    function sub(uint x, uint y) internal pure returns (uint z) {
        require((z = x - y) <= x, 'Math: Sub-underflow');
    }
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}


import './base/PeripheryPaymentsWithFee.sol';

// Experimental Extension [ftm.guru/solidly/BaseV1Router02]
// contract BaseV1Router02 is BaseV1Router01
// with Support for Fee-on-Transfer Tokens
abstract contract SolidlyRouter is PeripheryPaymentsWithFee {

	using Math for uint;

    struct route {
        address from;
        address to;
        bool stable;
    }

    address public immutable factorySolidly;
    IWETH public immutable wETH;
    bytes32 immutable pairCodeHash;
    
    // swap event for the referral system
    event Swap(address indexed sender,uint amount0In,address _tokenIn, address indexed to, bool stable);  


    constructor(address _factorySol, address _wETH) {
        factorySolidly = _factorySol;
        pairCodeHash = IBaseV1Factory(_factorySol).pairCodeHash();
        wETH = IWETH(_wETH);
    }

    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, 'BaseV1Router: IDENTICAL_ADDRESSES');
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'BaseV1Router: ZERO_ADDRESS');
    }

    // calculates the CREATE2 address for a pair without making any external calls
    function pairFor(address tokenA, address tokenB, bool stable) internal view returns (address pair) {
        (address token0, address token1) = sortTokens(tokenA, tokenB);
        pair = address(uint160(uint256(keccak256(abi.encodePacked(
            hex'ff',
            factorySolidly,
            keccak256(abi.encodePacked(token0, token1, stable)),
            pairCodeHash // init code hash
        )))));
    }

    // fetches and sorts the reserves for a pair
    function getReserves(address tokenA, address tokenB, bool stable) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(tokenA, tokenB);
        (uint reserve0, uint reserve1,) = IBaseV1Pair(pairFor(tokenA, tokenB, stable)).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    // performs chained getAmountOut calculations on any number of pairs
    function getAmountOut(uint amountIn, address tokenIn, address tokenOut) internal view returns (uint amount, bool stable) {
        address pair = pairFor(tokenIn, tokenOut, true);
        uint amountStable;
        uint amountVolatile;
        if (IBaseV1Factory(factorySolidly).isPair(pair)) {
            amountStable = IBaseV1Pair(pair).getAmountOut(amountIn, tokenIn);
        }
        pair = pairFor(tokenIn, tokenOut, false);
        if (IBaseV1Factory(factorySolidly).isPair(pair)) {
            amountVolatile = IBaseV1Pair(pair).getAmountOut(amountIn, tokenIn);
        }
        return amountStable > amountVolatile ? (amountStable, true) : (amountVolatile, false);
    }

    // performs chained getAmountOut calculations on any number of pairs
    function getAmountsOut(uint amountIn, route[] memory routes) internal view returns (uint[] memory amounts) {
        require(routes.length >= 1, 'BaseV1Router: INVALID_PATH');
        amounts = new uint[](routes.length+1);
        amounts[0] = amountIn;
        for (uint i = 0; i < routes.length; i++) {
            address pair = pairFor(routes[i].from, routes[i].to, routes[i].stable);
            if (IBaseV1Factory(factorySolidly).isPair(pair)) {
                amounts[i+1] = IBaseV1Pair(pair).getAmountOut(amounts[i], routes[i].from);
            }
        }
    }

    function isPair(address pair) internal view returns (bool) {
        return IBaseV1Factory(factorySolidly).isPair(pair);
    }



    // **** SWAP ****
    // requires the initial amount to have already been sent to the first pair
    function _swap(uint[] memory amounts, route[] memory routes, address _to) internal {
        for (uint i = 0; i < routes.length; i++) {
            (address token0,) = sortTokens(routes[i].from, routes[i].to);
            uint amountOut = amounts[i + 1];
            (uint amount0Out, uint amount1Out) = routes[i].from == token0 ? (uint(0), amountOut) : (amountOut, uint(0));
            address to = i < routes.length - 1 ? pairFor(routes[i+1].from, routes[i+1].to, routes[i+1].stable) : _to;
            IBaseV1Pair(pairFor(routes[i].from, routes[i].to, routes[i].stable)).swap(
                amount0Out, amount1Out, to, new bytes(0)
            );

            emit Swap(msg.sender,amounts[i],routes[i].from, _to, routes[i].stable); 
        }
    }

    function swapExactTokensForTokensSimple(uint256 amountIn,uint256 amountOutMin,address tokenFrom,address tokenTo,bool stable,address to,uint256 /*deadline*/) external returns (uint[] memory amounts) {
        route[] memory routes = new route[](1);
        routes[0].from = tokenFrom;
        routes[0].to = tokenTo;
        routes[0].stable = stable;
        if(amountIn == Constants.CONTRACT_BALANCE){
            amountIn = IERC20(tokenFrom).balanceOf(address(this));
        }
        amounts = getAmountsOut(amountIn, routes);
        require(amounts[amounts.length - 1] >= amountOutMin, 'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT');
        _safeTransfer(routes[0].from,pairFor(routes[0].from, routes[0].to, routes[0].stable), amounts[0]);
        _swap(amounts, routes, to);
    }

    function swapExactTokensForTokens(uint256 amountIn,uint256 amountOutMin,route[] calldata routes,address to,uint256 /*deadline*/) external  returns (uint[] memory amounts) { 
        if(amountIn == Constants.CONTRACT_BALANCE){
            amountIn = IERC20(routes[0].from).balanceOf(address(this));
        }
        amounts = getAmountsOut(amountIn, routes);
        
        require(amounts[amounts.length - 1] >= amountOutMin, 'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT');
        _safeTransfer(routes[0].from,pairFor(routes[0].from, routes[0].to, routes[0].stable), amounts[0]);
        _swap(amounts, routes, to);
    }

    function swapExactETHForTokens(uint256 amountOutMin, route[] calldata routes, address to, uint256 /*deadline*/) external payable returns (uint[] memory amounts) {
        require(routes[0].from == address(wETH), 'BaseV1Router: INVALID_PATH');
        uint amountIn = msg.value == 0 ? address(this).balance : msg.value;
        amounts = getAmountsOut(amountIn, routes);
        require(amounts[amounts.length - 1] >= amountOutMin, 'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT');
        wETH.deposit{value: amounts[0]}();
        assert(wETH.transfer(pairFor(routes[0].from, routes[0].to, routes[0].stable), amounts[0]));
        _swap(amounts, routes, to);
    }

    function swapExactTokensForETH(uint256 amountIn, uint256 amountOutMin, route[] calldata routes, address to, uint256 /*deadline*/) external returns (uint[] memory amounts) {
        require(routes[routes.length - 1].to == address(wETH), 'BaseV1Router: INVALID_PATH');
        if(amountIn == Constants.CONTRACT_BALANCE){
            amountIn = IERC20(routes[0].from).balanceOf(address(this));
        }
        amounts = getAmountsOut(amountIn, routes);
        require(amounts[amounts.length - 1] >= amountOutMin, 'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT');
        _safeTransfer(routes[0].from,pairFor(routes[0].from, routes[0].to, routes[0].stable), amounts[0]);
        _swap(amounts, routes, address(this));
        wETH.withdraw(amounts[amounts.length - 1]);
        _safeTransferETH(to, amounts[amounts.length - 1]);
    }


    function _safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }

    function _safeTransfer(address token, address to, uint256 value) internal {
        require(token.code.length > 0);
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(erc20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

  
    // Experimental Extension [ETH.guru/solidly/BaseV1Router02]
    
    // **** SWAP (supporting fee-on-transfer tokens) ****
    // requires the initial amount to have already been sent to the first pair
    function _swapSupportingFeeOnTransferTokens(route[] calldata routes, address _to) internal {
        for (uint i; i < routes.length; i++) {
        	(address input, address output) = (routes[i].from, routes[i].to);
            (address token0,) = sortTokens(input, output);
            IBaseV1Pair pair = IBaseV1Pair(pairFor(routes[i].from, routes[i].to, routes[i].stable));
            uint amountInput;
            uint amountOutput;
            { // scope to avoid stack too deep errors
            (uint reserve0, uint reserve1,) = pair.getReserves();
            (uint reserveInput,) = input == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
            amountInput = erc20(input).balanceOf(address(pair)).sub(reserveInput);
            (amountOutput,) = getAmountOut(amountInput, input, output);
            }
            (uint amount0Out, uint amount1Out) = input == token0 ? (uint(0), amountOutput) : (amountOutput, uint(0));
            address to = i < routes.length - 1 ? pairFor(routes[i+1].from, routes[i+1].to, routes[i+1].stable) : _to;
            pair.swap(amount0Out, amount1Out, to, new bytes(0));

            bool _stable = routes[i].stable;
            emit Swap(msg.sender,amountInput,input,_to,_stable);  
        }
    }
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 amountIn,uint256 amountOutMin,route[] calldata routes,address to,uint256 /*deadline*/) external { 
        if(amountIn == Constants.CONTRACT_BALANCE){
            amountIn = IERC20(routes[0].from).balanceOf(address(this));
        }
        _safeTransfer(routes[0].from,pairFor(routes[0].from, routes[0].to, routes[0].stable), amountIn);
        uint balanceBefore = erc20(routes[routes.length - 1].to).balanceOf(to);
        _swapSupportingFeeOnTransferTokens(routes, to);
        require(
            erc20(routes[routes.length - 1].to).balanceOf(to).sub(balanceBefore) >= amountOutMin,
            'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT'
        );
    }
    function swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 amountOutMin,route[] calldata routes,address to,uint256 /*deadline*/) external payable {
        require(routes[0].from == address(wETH), 'BaseV1Router: INVALID_PATH');
        uint amountIn = msg.value == 0 ? address(this).balance : msg.value;
        wETH.deposit{value: amountIn}();
        assert(wETH.transfer(pairFor(routes[0].from, routes[0].to, routes[0].stable), amountIn));
        uint balanceBefore = erc20(routes[routes.length - 1].to).balanceOf(to);
        _swapSupportingFeeOnTransferTokens(routes, to);
        require(
            erc20(routes[routes.length - 1].to).balanceOf(to).sub(balanceBefore) >= amountOutMin,
            'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT'
        );
    }
    function swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 amountIn,uint256 amountOutMin,route[] calldata routes,address to,uint256 /*deadline*/) external {
        if(amountIn == Constants.CONTRACT_BALANCE){
            amountIn = IERC20(routes[0].from).balanceOf(address(this));
        }
        require(routes[routes.length - 1].to == address(wETH), 'BaseV1Router: INVALID_PATH');
        _safeTransfer(routes[0].from,pairFor(routes[0].from, routes[0].to, routes[0].stable), amountIn);
        _swapSupportingFeeOnTransferTokens(routes, address(this));
        uint amountOut = erc20(address(wETH)).balanceOf(address(this));
        require(amountOut >= amountOutMin, 'BaseV1Router: INSUFFICIENT_OUTPUT_AMOUNT');
        wETH.withdraw(amountOut);
        _safeTransferETH(to, amountOut);
    }
}