//       ╟╗                                                                      ╔╬
//       ╞╬╬                                                                    ╬╠╬
//      ╔╣╬╬╬                                                                  ╠╠╠╠╦
//     ╬╬╬╬╬╩                                                                  ╘╠╠╠╠╬
//    ║╬╬╬╬╬                                                                    ╘╠╠╠╠╬
//    ╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬      ╒╬╬╬╬╬╬╬╜   ╠╠╬╬╬╬╬╬╬         ╠╬╬╬╬╬╬╬    ╬╬╬╬╬╬╬╬╠╠╠╠╠╠╠╠
//    ╙╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╕    ╬╬╬╬╬╬╬╜   ╣╠╠╬╬╬╬╬╬╬        ╠╬╬╬╬╬╬╬   ╬╬╬╬╬╬╬╬╬╠╠╠╠╠╠╠╩
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
pragma solidity 0.8.30;

import {
    UniswapV3likeAdapter, QParams, IUniV3Pool
} from "contracts/adapters/UniswapV3likeAdapter.sol";
import {SafeERC20, IERC20} from "contracts/lib/SafeERC20.sol";

interface IAlgebraFactory {
    function poolByPair(address, address) external view returns (address);
}

interface IAlgebraPool {
    function swapSupportingFeeOnInputTokens(
        address sender,
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);
}

contract AlgebraAdapter is UniswapV3likeAdapter {
    using SafeERC20 for IERC20;

    address public immutable FACTORY;

    constructor(string memory _name, address _quoter, address _factory)
        UniswapV3likeAdapter(_name, _quoter)
    {
        if (_factory == address(0) || _quoter == address(0)) revert AddressZero();
        FACTORY = _factory;
    }

    function getBestPool(address token0, address token1)
        internal
        view
        override
        returns (address mostLiquid)
    {
        return IAlgebraFactory(FACTORY).poolByPair(token0, token1);
    }

    function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata)
        external
    {
        if (msg.sender != tempPoolAddress) revert NotPoolAddress();
        if (amount0Delta > 0) {
            IERC20(IUniV3Pool(msg.sender).token0()).transfer(msg.sender, uint256(amount0Delta));
        } else {
            IERC20(IUniV3Pool(msg.sender).token1()).transfer(msg.sender, uint256(amount1Delta));
        }
    }

    function _underlyingSwap(QParams memory params, bytes memory callbackData)
        internal
        virtual
        override
        returns (uint256)
    {
        tempPoolAddress = getBestPool(params.tokenIn, params.tokenOut);
        (bool zeroForOne, uint160 priceLimit) =
            getZeroOneAndSqrtPriceLimitX96(params.tokenIn, params.tokenOut);
        (int256 amount0, int256 amount1) = IAlgebraPool(tempPoolAddress)
            .swapSupportingFeeOnInputTokens(
            address(this),
            address(this),
            zeroForOne,
            int256(params.amount),
            priceLimit,
            callbackData
        );
        return zeroForOne ? uint256(-amount1) : uint256(-amount0);
    }
}
