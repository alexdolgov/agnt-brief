// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {IGenericRouter, IAggregationExecutor, IERC20} from "src/interfaces/swap/IGenericRouter.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

contract OneInchV5Swapper is ITokenSwapper {
    struct SwapParams {
        address executor;
        address srcToken;
        address dstToken;
        address srcReceiver;
        address dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 flags;
        bytes permit;
        bytes data;
    }

    IGenericRouter public router;

    address executor = 0xE37e799D5077682FA0a244D46E5649F71457BD09;

    constructor(address _router) {
        router = IGenericRouter(payable(_router));
    }

    /*
    * @param externalData A bytes value containing the encoded swap parameters.
    * @return The actual amount of `tokenOut` received in the swap.
    */
    function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, bytes memory externalData)
        external
        returns (uint256 amountOut)
    {
        SwapParams memory _swap;

        (_swap.executor, _swap.srcToken, _swap.dstToken,,, _swap.amount, _swap.minReturnAmount,,, _swap.data) = abi
            .decode(externalData, (address, address, address, address, address, uint256, uint256, uint256, bytes, bytes));

        if (tokenIn != _swap.srcToken) {
            revert InvalidTokenIn(tokenIn, _swap.srcToken);
        }

        if (amountIn < _swap.amount) {
            revert InvalidAmountIn(amountIn, _swap.amount);
        }

        if (tokenOut != _swap.dstToken) {
            revert InvalidTokenOut(tokenOut, _swap.dstToken);
        }

        if (minAmountOut > _swap.minReturnAmount) {
            revert InvalidMinAmountOut(minAmountOut, _swap.minReturnAmount);
        }

        IERC20(_swap.srcToken).transferFrom(msg.sender, address(this), _swap.amount);
        IERC20(_swap.srcToken).approve(address(router), _swap.amount);

        (amountOut,) = router.swap(
            IAggregationExecutor(_swap.executor),
            IGenericRouter.SwapDescription({
                srcToken: IERC20(_swap.srcToken),
                dstToken: IERC20(_swap.dstToken),
                srcReceiver: payable(_swap.executor),
                dstReceiver: payable(address(this)),
                amount: _swap.amount,
                minReturnAmount: _swap.minReturnAmount,
                flags: 4
            }),
            "",
            _swap.data
        );

        IERC20(_swap.dstToken).transfer(msg.sender, amountOut);

        return amountOut;
    }
}
