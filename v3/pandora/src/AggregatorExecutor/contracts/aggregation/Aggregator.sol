// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '../interfaces/ISwapRouter02.sol';
import '../interfaces/ISwapFactory.sol';
import '../interfaces/ISwapPair.sol';
import '../interfaces/IMultiOracle.sol';
import "../interfaces/IWBNB.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import '@openzeppelin/contracts/access/Ownable.sol';
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2ERC20.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

contract AggregatorExecutor is Ownable {
    using SafeERC20 for IERC20;

    struct SwapStep {
        address fromToken;
        address toToken;
        address pair;
        uint256 fee;
    }

    uint256 public DENOMINATOR_FEE = 10000;
    IWBNB public WBNB = IWBNB(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c); // mainnet

    address public BNB = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    modifier ensure(uint256 _deadline) {
        require(_deadline >= block.timestamp, 'AggregatorExecutor: EXPIRED');
        _;
    }

    //=========== external functions ============//
    function swap(SwapStep[] calldata _swaps, uint256 _amountIn, uint256 _amountOutMin, address payable _receiver, uint256 _deadline)
    external payable
    ensure(_deadline)
    {
        //check input eth
        if(_swaps[0].fromToken == address(BNB) && msg.value > 0) {
            require(_amountIn == msg.value,"AggregatorExecutor: !msgValue");
            WBNB.deposit{value: _amountIn}();
        } else {
            IERC20(_swaps[0].fromToken).safeTransferFrom(msg.sender, address(this), _amountIn);
        }

        //swap
        uint _length = _swaps.length;
        for (uint i = 0; i < _length; i++) {
            _swap(_swaps[i], i == _length - 1, address(this));
        }

        require(IERC20(_swaps[_length - 1].toToken).balanceOf(address(this)) >= _amountOutMin, "AggregatorExecutor: price impact too high");

        //send eth to user
        if (_swaps[_length - 1].toToken == address(BNB)) {
            uint256 _balance = WBNB.balanceOf(address(this));
            WBNB.withdraw(_balance);
            (bool _sent,) = _receiver.call{value: _balance}("");
            require(_sent, "AggregatorExecutor: Failed to send BNB");
        } else {
            IERC20 _token = IERC20(_swaps[_length - 1].toToken);
            _token.safeTransfer(_receiver, _token.balanceOf(address(this)));
        }
    }

    function rescueFunds(IERC20 token, uint256 amount) external onlyOwner {
        token.safeTransfer(msg.sender, amount);
    }

    function destroy() external onlyOwner {
        selfdestruct(payable(msg.sender));
    }

    //=========== internal functions ============//
    function _getAmountOut
    (
        address fromToken,
        address toToken,
        uint256 amountIn,
        uint256 reserve0,
        uint256 reserve1,
        uint256 fee,
        address token0)
    internal returns(uint256 amountOut){
        uint256 amountInWithFee = amountIn * (DENOMINATOR_FEE - fee);
        if (fromToken == token0) {
            amountOut = (amountInWithFee * reserve1) / (reserve0 * DENOMINATOR_FEE + amountInWithFee);
        } else {
            amountOut =(amountInWithFee * reserve0) / (reserve1 * DENOMINATOR_FEE + amountInWithFee);
        }
    }

    function _swap(
        SwapStep calldata _step,
        bool finish,
        address receiver
    ) internal returns (uint256 amountOut) {

        //get info
        IUniswapV2Pair pair = IUniswapV2Pair(_step.pair);
        require(address(pair) != address(0), "AggregatorExecutor: Pair address is zero");
        address token0 = pair.token0();
        uint _amountIn = IERC20(_step.fromToken).balanceOf(address(this));

        //get reserve
        (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
        amountOut = _getAmountOut(_step.fromToken, _step.toToken, _amountIn, reserve0, reserve1, _step.fee, token0);

        // get amount out
        (uint256 amount0Out, uint256 amount1Out) = _step.fromToken == token0 ? (uint256(0), amountOut) : (amountOut, uint256(0));

        //swap
        IERC20(_step.fromToken).safeTransfer(address(pair), _amountIn);
        pair.swap(amount0Out, amount1Out, receiver, new bytes(0));

        //event trade mining
        emit TradeMining(tx.origin, address(pair), _step.fromToken, _step.toToken, amountOut);
    }

    receive() external payable {

    }

    //=========== Event ============//
    event UpdateMultiOracle(address _old, address _new);
    event UpdateWBNB(address _old, address _new);
    event TradeMining(address _user, address _pool, address _tokenIn, address _tokenOut, uint _amount);
}
