// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

import "../../libraries/Math.sol";
import "../../libraries/UnsafeMath.sol";

import "../../interfaces/pool/ICryptoPool.sol";
import "../../interfaces/master/IPoolMaster.sol";
import "../../interfaces/master/IFeeManagerV2.sol";

import "./ICryptoMath.sol";
import "./ICryptoView.sol";

contract CryptoView_ is ICryptoView, UnsafeMath {

    address public immutable master;
    ICryptoMath public immutable MATH;

    constructor(address _master, address _MATH) {
        master = _master;
        MATH = ICryptoMath(_MATH);
    }

    struct GetAmountOutArgs {
        uint reserve0;
        uint reserve1;
        uint a;
        uint gamma;
        uint futureTime;
        uint priceScale;
        uint invariant;
        uint token0PrecisionMultiplier;
        uint token1PrecisionMultiplier;
    }

    function getAmountOut(address pool, address tokenIn, uint amountIn, address sender, bytes memory feeData) external view returns (uint _amountOut) {
        GetAmountOutArgs memory it;
        (it.reserve0, it.reserve1) = ICryptoPool(pool).getReserves();
        (it.a, it.gamma, it.futureTime) = ICryptoPool(pool).getParams();

        it.priceScale = ICryptoPool(pool).priceScale();
        it.token0PrecisionMultiplier = ICryptoPool(pool).token0PrecisionMultiplier();
        it.token1PrecisionMultiplier = ICryptoPool(pool).token1PrecisionMultiplier();

        // Recaculate invariant if undergoing ramps.
        if (it.futureTime > block.timestamp) {
            uint xp0 = it.reserve0 * it.token0PrecisionMultiplier;
            uint xp1 = Math.mulDivUnsafeFirstLast(it.token1PrecisionMultiplier, it.reserve1 * it.priceScale, 1e18);

            it.invariant = MATH.computeD(it.a, it.gamma, xp0, xp1, 0);
        } else {
            it.invariant = ICryptoPool(pool).invariantLast();
        }

        address token0 = ICryptoPool(pool).token0();
        address token1 = ICryptoPool(pool).token1();

        (_amountOut,) = _getAmountOut(
            ICryptoPool(pool),
            token0,
            token1,
            sender,
            amountIn,
            tokenIn == token0,
            it,
            feeData
        );
    }

    struct GetAmountOutArgs2 {
        uint xp0;
        uint xp1;
        uint y;
        uint xp1PriceScale;
    }

    function _getAmountOut(
        ICryptoPool pool,
        address _token0,
        address _token1,
        address _sender,
        uint _amountIn,
        bool _token0In,
        GetAmountOutArgs memory args,
        bytes memory feeData
    ) private view returns (uint _amountOut, uint _feeIn) {
        if (_amountIn != 0) {
            if (_token0In) {
                args.reserve0 += _amountIn;
            } else {
                args.reserve1 += _amountIn;
            }

            GetAmountOutArgs2 memory it;
            it.xp0 = args.reserve0 * args.token0PrecisionMultiplier;
            it.xp1PriceScale = args.priceScale * args.token1PrecisionMultiplier;
            it.xp1 = Math.mulDivUnsafeLast(args.reserve1, it.xp1PriceScale, 1e18);

            if (_token0In) {
                (it.y,) = MATH.getY(args.a, args.gamma, it.xp0, it.xp1, args.invariant, 1);
                _amountOut = it.xp1 - it.y;
                it.xp1 = it.y;

                _amountOut -= 1;
                _amountOut = Math.mulDivUnsafeFirst(1e18, _amountOut, it.xp1PriceScale);

                _feeIn = Math.mulDivUnsafeLast(
                    _getFee(pool, _sender, _token0, _token1, it.xp0, it.xp1, feeData), _amountOut, 1e5
                );
            } else {
                (it.y,) = MATH.getY(args.a, args.gamma, it.xp0, it.xp1, args.invariant, 0);
                _amountOut = it.xp0 - it.y;
                it.xp0 = it.y;

                _amountOut -= 1;
                _amountOut = unsafe_div(_amountOut, args.token0PrecisionMultiplier);

                _feeIn = Math.mulDivUnsafeLast(
                    _getFee(pool, _sender, _token1, _token0, it.xp0, it.xp1, feeData), _amountOut, 1e5
                );
            }

            _amountOut -= _feeIn;
        }
    }

    function _getFee(
        ICryptoPool pool,
        address _sender,
        address _tokenIn,
        address _tokenOut,
        uint xp0,
        uint xp1,
        bytes memory feeData
    ) internal view returns (uint24) {
        IFeeManagerV2 feeManager = IFeeManagerV2(IPoolMaster(master).feeManager());
        IFeeManagerV2.FeeData memory data = feeManager.getSwapFeeData(address(pool), _sender, _tokenIn, _tokenOut, feeData);
        uint f = xp0 + xp1;
        f = unsafe_mul(data.gamma, 1e18) / (
            unsafe_add(data.gamma, 1e18) - unsafe_div(4e18 * xp0 / f * xp1, f)
        );
        return uint24(unsafe_div(
            data.minFee * f + data.maxFee * (1e18 - f),
            1e18
        ));
    }
}