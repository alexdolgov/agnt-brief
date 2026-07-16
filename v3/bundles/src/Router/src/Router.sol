// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IWETH.sol";
import "./interfaces/IRouter.sol";
import "./interfaces/IFactory.sol";
import "./interfaces/IPair.sol";

/// @title Router is used to swap on Antfarm Protocol without having to own ATF tokens
/// @notice This Version only supports ETH swaps and relies on the ATF/ETH Oracle
contract Router is IRouter {
    address public immutable factory;
    address public immutable antfarmToken;
    address public immutable weth;
    address public immutable oraclePair;

    mapping(address => uint256) public userDeposits;
    uint256 public totalDeposits;

    constructor(address _factory, address _weth) {
        factory = _factory;
        antfarmToken = IFactory(factory).protocolToken();
        weth = _weth;
        oraclePair = IFactory(factory).getPair(antfarmToken, weth, uint16(10));
    }

    modifier ensure(uint256 deadline) {
        if (deadline < block.timestamp) revert Router__Expired();
        _;
    }

    receive() external payable {}

    /// @inheritdoc IRouter
    function swapExactETHForTokens(
        address _output,
        uint16 _fee,
        address _to,
        uint256 _deadline,
        uint256 _amountOutMin
    ) external payable ensure(_deadline) returns (uint256 _amountOut) {
        IWETH(weth).deposit{value: msg.value}();

        uint256[] memory amounts = getAmountsOut(msg.value, weth, _output, _fee);

        address pair = IFactory(factory).getPair(weth, _output, _fee);
        (,, uint256 feeToPay) = _getFeeToPay(amounts, weth, _output, pair);

        // Use 'amounts' to store the required WETH to swap for fee ATF tokens
        amounts = _getAmountsIn(feeToPay, weth, antfarmToken, uint16(10));

        amounts = getAmountsOut(
            (msg.value * msg.value) / (msg.value + amounts[0]),
            weth,
            _output,
            _fee
        );

        // Checks that the intermediary calculation is already enough
        if (amounts[1] < _amountOutMin) {
            revert Router__InsufficientOutputAmount();
        }

        (uint256 amount0Out, uint256 amount1Out, uint256 finalFeeToPay) =
            _getFeeToPay(amounts, weth, _output, pair);

        _amountOut = amount0Out + amount1Out;

        IERC20(weth).transfer(oraclePair, msg.value - amounts[0]);
        IPair(oraclePair).swap(finalFeeToPay, 0, pair);

        IERC20(weth).transfer(pair, amounts[0]);
        IPair(pair).swap(amount0Out, amount1Out, _to);

        emit SwapExecuted(_to, weth, _output, msg.value, _amountOut);
    }

    /// @inheritdoc IRouter
    function swapExactTokensForETH(
        address _input,
        uint16 _fee,
        address _to,
        uint256 _deadline,
        uint256 _amountIn,
        uint256 _amountOutMin
    ) external ensure(_deadline) returns (uint256 _amountOut) {
        uint256[] memory amounts = getAmountsOut(_amountIn, _input, weth, _fee);
        uint256 standardAmountOut = amounts[1];

        address pair = IFactory(factory).getPair(_input, weth, _fee);

        (uint256 amount0Out, uint256 amount1Out, uint256 feeToPay) =
            _getFeeToPay(amounts, _input, weth, pair);

        if (feeToPay > totalDeposits) {
            revert Router__InsufficientATFBalance();
        }

        amounts = _getAmountsIn(feeToPay, weth, antfarmToken, uint16(10));
        if (standardAmountOut - amounts[0] < _amountOutMin) {
            revert Router__InsufficientOutputAmount();
        }

        IERC20(antfarmToken).transfer(pair, feeToPay);
        IERC20(_input).transferFrom(msg.sender, pair, _amountIn);

        IPair(pair).swap(amount0Out, amount1Out, address(this));

        _amountOut = standardAmountOut - amounts[0];

        IERC20(weth).transfer(oraclePair, amounts[0]);
        IPair(oraclePair).swap(feeToPay, 0, address(this));

        IWETH(weth).withdraw(standardAmountOut - amounts[0]);
        _safeTransferETH(_to, standardAmountOut - amounts[0]);

        emit SwapExecuted(_to, _input, weth, _amountIn, _amountOut);
    }

    /// @inheritdoc IRouter
    function swapETHForExactTokens(
        address _output,
        uint16 _fee,
        address _to,
        uint256 _deadline,
        uint256 _amountOut
    ) external payable ensure(_deadline) returns (uint256 _amountIn) {
        // Wrap all received ETH into WETH.
        IWETH(weth).deposit{value: msg.value}();

        uint256[] memory amounts =
            _getAmountsIn(_amountOut, weth, _output, _fee);

        address pair = IFactory(factory).getPair(weth, _output, _fee);
        (uint256 amount0Out, uint256 amount1Out, uint256 feeToPay) =
            _getFeeToPay(amounts, weth, _output, pair);

        _amountIn = amounts[0]; // Temporary storage for the amount of WETH used for main swap
        amounts = _getAmountsIn(feeToPay, weth, antfarmToken, uint16(10));

        if (_amountIn + amounts[0] > msg.value) {
            revert Router__InsufficientInputAmount();
        }

        IERC20(weth).transfer(oraclePair, amounts[0]);
        IPair(oraclePair).swap(feeToPay, 0, pair);

        IERC20(weth).transfer(pair, _amountIn);
        IPair(pair).swap(amount0Out, amount1Out, _to);

        _amountIn += amounts[0];

        uint256 refund = msg.value - _amountIn;
        if (refund > 0) {
            IWETH(weth).withdraw(refund);
            _safeTransferETH(msg.sender, refund);
        }

        emit SwapExecuted(_to, weth, _output, _amountIn, _amountOut);
    }

    /// @inheritdoc IRouter
    function estimateExactETHForTokens(
        address _output,
        uint16 _fee,
        uint256 _amountIn
    ) external view returns (uint256 estimatedOut) {
        uint256[] memory amounts = getAmountsOut(_amountIn, weth, _output, _fee);
        address pair = IFactory(factory).getPair(weth, _output, _fee);
        (,, uint256 feeToPay) = _getFeeToPay(amounts, weth, _output, pair);

        uint256[] memory feeInAmounts =
            _getAmountsIn(feeToPay, weth, antfarmToken, uint16(10));

        feeInAmounts = getAmountsOut(
            (_amountIn * _amountIn) / (_amountIn + feeInAmounts[0]),
            weth,
            _output,
            _fee
        );

        return feeInAmounts[1];
    }

    /// @inheritdoc IRouter
    function estimateExactTokensForETH(
        address _input,
        uint16 _fee,
        uint256 _amountIn
    ) external view returns (uint256 estimatedOut) {
        uint256[] memory amounts = getAmountsOut(_amountIn, _input, weth, _fee);
        uint256 standardAmountOut = amounts[1];

        address pair = IFactory(factory).getPair(_input, weth, _fee);
        (,, uint256 feeToPay) = _getFeeToPay(amounts, _input, weth, pair);

        amounts = _getAmountsIn(feeToPay, weth, antfarmToken, uint16(10));

        return standardAmountOut - amounts[0];
    }

    /// @inheritdoc IRouter
    function estimateETHForExactTokens(
        address _output,
        uint16 _fee,
        uint256 _amountOut
    ) external view returns (uint256 estimatedIn) {
        uint256[] memory amounts =
            _getAmountsIn(_amountOut, weth, _output, _fee);

        address pair = IFactory(factory).getPair(weth, _output, _fee);
        (,, uint256 feeToPay) = _getFeeToPay(amounts, weth, _output, pair);

        // Calculate WETH needed to pay for ATF fees
        uint256[] memory feeInAmounts =
            _getAmountsIn(feeToPay, weth, antfarmToken, uint16(10));

        // Total ETH needed is the amount for the swap plus the amount needed for fees
        return amounts[0] + feeInAmounts[0];
    }

    function getAmountsOut(
        uint256 amountIn,
        address tokenIn,
        address tokenOut,
        uint16 fee
    ) internal view returns (uint256[] memory) {
        uint256[] memory amounts = new uint256[](2);
        amounts[0] = amountIn;
        (uint256 reserveIn, uint256 reserveOut) =
            _getReserves(tokenIn, tokenOut, fee);

        if (tokenIn == antfarmToken) {
            amounts[1] = _getAmountOut(
                (amountIn * 1000) / (1000 + 10), reserveIn, reserveOut
            );
        } else if (tokenOut == antfarmToken) {
            amounts[1] = (_getAmountOut(amountIn, reserveIn, reserveOut) * 1000)
                / (1000 + 10);
        } else {
            amounts[1] = _getAmountOut(amountIn, reserveIn, reserveOut);
        }

        return amounts;
    }

    function _getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) internal pure returns (uint256) {
        if (amountIn == 0) revert Router__InsufficientInputAmount();
        if (reserveIn == 0 || reserveOut == 0) {
            revert Router__InsufficientLiquidity();
        }
        uint256 numerator = amountIn * reserveOut;
        uint256 denominator = reserveIn + amountIn;
        return numerator / denominator;
    }

    function _getAmountsIn(
        uint256 amountOut,
        address tokenIn,
        address tokenOut,
        uint16 fee
    ) internal view returns (uint256[] memory) {
        uint256[] memory amounts = new uint256[](2);
        amounts[1] = amountOut;
        (uint256 reserveIn, uint256 reserveOut) =
            _getReserves(tokenIn, tokenOut, fee);
        if (tokenIn == antfarmToken) {
            amounts[0] = (
                _getAmountIn(amountOut, reserveIn, reserveOut) * (1000 + 10)
            ) / 1000;
        } else if (tokenOut == antfarmToken) {
            amounts[0] = _getAmountIn(
                (amountOut * (1000 + 10)) / 1000, reserveIn, reserveOut
            );
        } else {
            amounts[0] = _getAmountIn(amountOut, reserveIn, reserveOut);
        }
        return amounts;
    }

    function _getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) internal pure returns (uint256) {
        if (amountOut == 0) revert Router__InsufficientOutputAmount();
        if (reserveIn == 0 || reserveOut == 0 || amountOut >= reserveOut) {
            revert Router__InsufficientLiquidity();
        }
        uint256 numerator = reserveIn * amountOut;
        uint256 denominator = reserveOut - amountOut;
        return (numerator / denominator) + 1;
    }

    function _getFeeToPay(
        uint256[] memory amounts,
        address tokenIn,
        address tokenOut,
        address pair
    )
        internal
        view
        returns (uint256 amount0Out, uint256 amount1Out, uint256 feeToPay)
    {
        // Original fee calculation for non-ATF pairs
        (address token0,) = _sortTokens(tokenIn, tokenOut);
        (amount0Out, amount1Out) = tokenIn == token0
            ? (uint256(0), amounts[1])
            : (amounts[1], uint256(0));

        uint256 amountIn = amounts[0];

        feeToPay = IPair(pair).getFees(
            amount0Out,
            tokenIn == token0 ? amountIn : uint256(0),
            amount1Out,
            tokenIn == token0 ? uint256(0) : amountIn
        );
    }

    function _getReserves(address tokenA, address tokenB, uint16 fee)
        internal
        view
        returns (uint256 reserveA, uint256 reserveB)
    {
        (address token0,) = _sortTokens(tokenA, tokenB);
        (uint256 reserve0, uint256 reserve1,) =
            IPair(IFactory(factory).getPair(tokenA, tokenB, fee)).getReserves();
        (reserveA, reserveB) =
            tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    function _sortTokens(address tokenA, address tokenB)
        internal
        view
        returns (address token0, address token1)
    {
        if (tokenA == tokenB) revert Router__IdenticalAddresses();
        if (tokenA == antfarmToken || tokenB == antfarmToken) {
            (token0, token1) = tokenA == antfarmToken
                ? (antfarmToken, tokenB)
                : (antfarmToken, tokenA);
            if (token1 == address(0)) revert Router__AddressZero();
        } else {
            (token0, token1) =
                tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
            if (token0 == address(0)) revert Router__AddressZero();
        }
    }

    function _safeTransferETH(address to, uint256 value) internal {
        (bool success,) = to.call{value: value}("");
        if (!success) revert Router__ETHTransferFailed();
    }

    function depositATF(uint256 amount) external {
        if (amount == 0) revert Router__ZeroAmount();

        userDeposits[msg.sender] += amount;
        totalDeposits += amount;

        if (
            !IERC20(antfarmToken).transferFrom(msg.sender, address(this), amount)
        ) {
            revert Router__TransferFailed();
        }
    }

    function withdrawATF(uint256 amount) external {
        if (amount == 0) revert Router__ZeroAmount();
        if (amount > userDeposits[msg.sender]) {
            revert Router__InsufficientBalance();
        }

        userDeposits[msg.sender] -= amount;
        totalDeposits -= amount;

        if (!IERC20(antfarmToken).transfer(msg.sender, amount)) {
            revert Router__TransferFailed();
        }
    }

    function getDeposit(address user) external view returns (uint256) {
        return userDeposits[user];
    }
}
