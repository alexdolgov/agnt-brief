//       ╟╗                                                                      ╔╬
//       ╞╬╬                                                                    ╬╠╬
//      ╔╣╬╬╬                                                                  ╠╠╠╠╦
//     ╬╬╬╬╬╩                                                                  ╘╠╠╠╠╬
//    ║╬╬╬╬╬                                                                    ╘╠╠╠╠╬
//    ╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬      ╒╬╬╬╬╬╬╬╜   ╠╠╬╬╬╬╬╬╬         ╠╬╬╬╬╬╬╬    ╬╬╬╬╬╬╬╬╠╠╠╠╠╠╠╠
//    ╙╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╕    ╬╬╬╬╬╬╬╜   ╣╠╠╬╬╬╬╬╬╬╬        ╠╬╬╬╬╬╬╬   ╬╬╬╬╬╬╬╬╬╠╠╠╠╠╠╠╩
//     ╙╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬  ╔╬╬╬╬╬╬╬    ╔╠╠╠╬╬╬╬╬╬╬╬        ╠╬╬╬╬╬╬╬ ╣╬╬╬╬╬╬╬╬╬╬╬╠╠╠╠╝╙
//               ╘╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬    ╒╠╠╠╬╠╬╩╬╬╬╬╬╬       ╠╬╬╬╬╬╬╬╣╬╬╬╬╬╬╬╙
//                 ╣╬╬╬╬╬╬╬╬╬╬╠╣     ╣╬╠╠╠╬╩ ╚╬╬╬╬╬╬      ╠╬╬╬╬╬╬╬╬╬╬╬╬╬╬
//                  ╣╬╬╬╬╬╬╬╬╬╣     ╣╬╠╠╠╬╬   ╣╬╬╬╬╬╬     ╠╬╬╬╬╬╬╬╬╬╬╬╬╬╬
//                   ╟╬╬╬╬╬╬╬╩      ╬╬╠╠╠╠╬╬╬╬╬╬╬╬╬╬╬     ╠╬╬╬╬╬╬╬╠╬╬╬╬╬╬╬
//                    ╬╬╬╬╬╬╬     ╒╬╬╠╠╬╠╠╬╬╬╬╬╬╬╬╬╬╬╬    ╠╬╬╬╬╬╬╬ ╣╬╬╬╬╬╬╬
//                    ╬╬╬╬╬╬╬     ╬╬╬╠╠╠╠╝╝╝╝╝╝╝╠╬╬╬╬╬╬   ╠╬╬╬╬╬╬╬  ╚╬╬╬╬╬╬╬╬
//                    ╬╬╬╬╬╬╬    ╣╬╬╬╬╠╠╩       ╘╬╬╬╬╬╬╬  ╠╬╬╬╬╬╬╬   ╙╬╬╬╬╬╬╬╬
//

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import {IERC20} from "contracts/interface/IERC20.sol";
import {SafeERC20} from "contracts/lib/SafeERC20.sol";
import {YakAdapter} from "contracts/YakAdapter.sol";

struct QParams {
    address tokenIn;
    address tokenOut;
    int256 amount;
    bool exactIn;
}

interface IUniV3Pool {
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function liquidity() external view returns (uint128);
}

interface IUniV3Quoter {
    function quoteExactInputSingle(QParams memory params) external view returns (uint256);

    function quote(address, bool, int256, uint160) external view returns (int256, int256);
}

abstract contract UniswapV3likeAdapter is YakAdapter {
    using SafeERC20 for IERC20;

    error InsufficientOutputAmount(uint256 amountOut, uint256 requiredAmount);
    error NotPoolAddress();

    event QuoterUpdated(address newQuoter);

    uint160 internal constant MAX_SQRT_RATIO =
        1_461_446_703_485_210_103_287_273_052_203_988_822_378_723_970_342;
    uint160 internal constant MIN_SQRT_RATIO = 4_295_128_739;
    address public quoter;
    address public tempPoolAddress;

    constructor(string memory _name, address _quoter) YakAdapter(_name) {
        setQuoter(_quoter);
    }

    function setQuoter(address newQuoter) public onlyMaintainer {
        if (newQuoter == address(0)) revert AddressZero();
        quoter = newQuoter;

        emit QuoterUpdated(newQuoter);
    }

    function getQuoteForPool(
        address pool,
        uint256 amount,
        address tokenIn,
        address tokenOut,
        bool exactIn
    ) external view returns (uint256) {
        QParams memory params;
        params.amount = exactIn ? int256(amount) : -int256(amount);
        params.tokenIn = tokenIn;
        params.tokenOut = tokenOut;
        params.exactIn = exactIn;
        return getQuoteForPool(pool, params);
    }

    function _query(uint256 _amount, address _tokenIn, address _tokenOut, bool _exactIn)
        internal
        view
        override
        returns (uint256 quote, address recipient)
    {
        QParams memory params = getQParams(_amount, _tokenIn, _tokenOut, _exactIn);
        quote = getQuoteForBestPool(params);
        recipient = address(this);
    }

    function _swap(
        uint256 _amountIn,
        uint256 _amountOut,
        address _tokenIn,
        address _tokenOut,
        address _to
    ) internal override {
        QParams memory params = getQParams(_amountIn, _tokenIn, _tokenOut, true);

        uint256 amountOutBefore = IERC20(_tokenOut).balanceOf(address(this));
        _underlyingSwap(params, new bytes(0));
        uint256 amountOutAfter = IERC20(_tokenOut).balanceOf(address(this));
        uint256 amountOut = amountOutAfter - amountOutBefore;

        if (amountOut < _amountOut) revert InsufficientOutputAmount(amountOut, _amountOut);
        tempPoolAddress = address(0);

        _returnTo(_tokenOut, amountOut, _to);
    }

    function getQParams(uint256 amount, address tokenIn, address tokenOut, bool exactIn)
        internal
        pure
        returns (QParams memory params)
    {
        params = QParams({
            amount: exactIn ? int256(amount) : -int256(amount),
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            exactIn: exactIn
        });
    }

    function _underlyingSwap(QParams memory params, bytes memory callbackData)
        internal
        virtual
        returns (uint256)
    {
        address pool = getBestPool(params.tokenIn, params.tokenOut);
        (bool zeroForOne, uint160 priceLimit) =
            getZeroOneAndSqrtPriceLimitX96(params.tokenIn, params.tokenOut);
        (int256 amount0, int256 amount1) = IUniV3Pool(pool).swap(
            address(this), zeroForOne, int256(params.amount), priceLimit, callbackData
        );
        return zeroForOne ? uint256(-amount1) : uint256(-amount0);
    }

    function getQuoteForBestPool(QParams memory params) internal view returns (uint256 quote) {
        address bestPool = getBestPool(params.tokenIn, params.tokenOut);
        if (bestPool != address(0)) quote = getQuoteForPool(bestPool, params);
    }

    function getBestPool(address token0, address token1)
        internal
        view
        virtual
        returns (address mostLiquid);

    function getQuoteForPool(address pool, QParams memory params) internal view returns (uint256) {
        (bool zeroForOne, uint160 priceLimit) =
            getZeroOneAndSqrtPriceLimitX96(params.tokenIn, params.tokenOut);
        (int256 amount0, int256 amount1) = getQuoteSafe(pool, zeroForOne, params.amount, priceLimit);
        return params.exactIn
            ? (zeroForOne ? uint256(-amount1) : uint256(-amount0))
            : (zeroForOne ? uint256(amount0) : uint256(amount1));
    }

    function getQuoteSafe(address pool, bool zeroForOne, int256 amount, uint160 priceLimit)
        internal
        view
        returns (int256 amount0, int256 amount1)
    {
        bytes memory calldata_ = abi.encodeWithSignature(
            "quote(address,bool,int256,uint160)", pool, zeroForOne, amount, priceLimit
        );
        (bool success, bytes memory data) = staticCallQuoterRaw(calldata_);
        if (success) (amount0, amount1) = abi.decode(data, (int256, int256));
    }

    function staticCallQuoterRaw(bytes memory calldata_)
        internal
        view
        returns (bool success, bytes memory data)
    {
        (success, data) = quoter.staticcall(calldata_);
    }

    function getZeroOneAndSqrtPriceLimitX96(address tokenIn, address tokenOut)
        internal
        pure
        returns (bool zeroForOne, uint160 sqrtPriceLimitX96)
    {
        zeroForOne = tokenIn < tokenOut;
        sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;
    }
}
