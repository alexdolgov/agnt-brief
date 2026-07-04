//SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.4;
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import '@openzeppelin/contracts/access/Ownable.sol';
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../libraries/TransferHelper.sol";
import "../interfaces/ISwapRouter02.sol";
import "../interfaces/IUniswapV2Pair.sol";
import "../interfaces/IWBNB.sol";

contract PandoArbitrage is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    ISwapRouter02 public swapRouter;
    uint256 constant PRECISION = 1000;
    mapping (address => bool) public operators;

    event Arbitrage(uint256 amountIn, uint256 amountOut, address[] path);
    event Withdraw(address indexed token, uint256 amount, address to);
    event OperatorChanged(address indexed operator, bool status);
    event swapRouterChanged(address indexed oldRouter, address indexed newRouter);
    constructor(address _swapRouter) public {
        swapRouter = ISwapRouter02(_swapRouter);
    }

    modifier onlyOperators() {
        require(operators[msg.sender] == true, "Arbitrage: caller is not the operators");
        _;
    }

    function arbitrage(uint256 usdtAmountIn, address[] memory path, uint256 slippage, uint256  gasInUsd, uint256 expectedRevenuePercent) public onlyOperators  {
        _approveTokenIfNeeded(path[0]);
        uint256[] memory usdtAmountOut = swapRouter.swapExactTokensForTokens(usdtAmountIn, usdtAmountIn*(PRECISION - slippage)/PRECISION, path, address(this), block.timestamp);
        uint256 invest = usdtAmountIn + gasInUsd;
        require(usdtAmountOut[usdtAmountOut.length - 1] > invest, "Arbitrage: Amount out is lesser than invest!");
            uint256 revenuePercent = ((usdtAmountOut[usdtAmountOut.length - 1] - invest) * PRECISION )/ invest;
            require(revenuePercent >= expectedRevenuePercent, "Arbitrage: Captial loss!");
            emit Arbitrage(usdtAmountIn, usdtAmountOut[usdtAmountOut.length - 1], path);
    }

    function withdraw(address token, address _to) external onlyOwner {
        if (token == address(0)) {
            TransferHelper.safeTransferETH(_to, address(this).balance);
            emit Withdraw(token, address(this).balance, _to);
            return;
        }

        uint256 _balance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(_to, _balance);
        emit Withdraw(token, _balance, _to);
    }

    function setSwapRouter(ISwapRouter02 _swapRouter) external onlyOwner {
        address oldRouter = address(swapRouter);
        swapRouter = _swapRouter;
        emit swapRouterChanged(oldRouter, address(_swapRouter));
    }

    function setOperator(address _operator, bool _status) external onlyOwner {
        operators[_operator] = _status;
        emit OperatorChanged(_operator, _status);
    }

    function _approveTokenIfNeeded(address token) private {
        if (IERC20(token).allowance(address(this), address(swapRouter)) == 0) {
            IERC20(token).safeApprove(address(swapRouter), type(uint256).max);
        }
    }

}
