pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../libraries/SwapCalldataUtils.sol";

contract DummyPool {
    using SwapCalldataUtils for bytes;
    using SafeERC20 for IERC20;

    address public tokenA;
    address public tokenB;
    uint public feeBps;

    constructor(address _tokenA, address _tokenB, uint _feeBps) {
        tokenA = _tokenA;
        tokenB = _tokenB;
        feeBps = _feeBps;
    }

    function swap(
        address tokenIn,
        uint amountIn
    ) external payable {
        _swap(tokenIn, amountIn, msg.sender);
    }

    function swap(
        address tokenIn,
        uint amountIn,
        address recipient
    ) external payable {
        _swap(tokenIn, amountIn, recipient);
    }

    function _swap(
        address tokenIn,
        uint amountIn,
        address recipient
    ) internal {
        uint amount0In;
        uint amount1In;
        address tokenOut;
        if (tokenIn == tokenA) {
            amount0In = amountIn;
            tokenOut = tokenB;
        }
        else if (tokenIn == tokenB) {
            amount1In = amountIn;
            tokenOut = tokenA;
        }
        else {
            require(false);
        }

        if (tokenIn == address(0)) {
            require(msg.value == amountIn);
        }
        else {
            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        }

        (uint reserve0, uint reserve1, uint k) = getReserves();

        reserve0 -= amount0In;
        reserve1 -= amount1In;
        k = reserve0 * reserve1;

        (uint amount0Out, uint amount1Out) = _calcSwap(amount0In, amount1In, reserve0, reserve1, k);
        uint amountOut = amount0Out == 0 ? amount1Out : amount0Out;

        if (tokenOut == address(0)) {
            payable(recipient).transfer(amountOut);
        }
        else {
            IERC20(tokenOut).safeTransfer(recipient, amountOut);
        }
    }

    function getReserves() public view returns (uint reserve0, uint reserve1, uint k) {
        reserve0 = tokenA == address(0) ? address(this).balance : IERC20(tokenA).balanceOf(address(this));
        reserve1 = tokenB == address(0) ? address(this).balance : IERC20(tokenB).balanceOf(address(this));
        k = reserve0 * reserve1;
    }

    function calcSwap(
        uint amount0In,
        uint amount1In
    ) external view returns (uint amount0Out, uint amount1Out) {
        (uint reserve0, uint reserve1, uint k) = getReserves();
        return _calcSwap(amount0In, amount1In, reserve0, reserve1, k);
    }

    function _calcSwap(
        uint amount0In,
        uint amount1In,
        uint reserve0, uint reserve1, uint k
    ) internal view returns (uint amount0Out, uint amount1Out) {

        if (amount0In != 0) {
            amount0In = amount0In * (10000 - feeBps) / 10000;
            uint newReserve0 = reserve0 + amount0In;
            uint newReserve1 = k / newReserve0;
            amount1Out = reserve1 - newReserve1;
        }
        else if (amount1In != 0) {
            amount1In = amount1In * (10000 - feeBps) / 10000;
            uint newReserve1 = reserve1 + amount1In;
            uint newReserve0 = k / newReserve1;
            amount0Out = reserve0 - newReserve0;
        }
        else {
            require(false, "SHOULD_NOT_HAPPEN");
        }
    }

    receive() external payable {}
}
