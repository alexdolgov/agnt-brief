// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Ownable} from "./helpers/Ownable.sol";
import {EthReceiver} from "./helpers/EthReceiver.sol";
import {Currency, CurrencyLibrary} from "./libraries/CurrencyLibrary.sol";
import {IAggregationExecutor} from './interfaces/IAggregationExecutor.sol';
import {IAggregationRouter} from './interfaces/IAggregationRouter.sol';
import {ReentrancyGuard} from "solmate/utils/ReentrancyGuard.sol";

contract AggregationRouter is IAggregationRouter, Ownable, EthReceiver, ReentrancyGuard {
    using CurrencyLibrary for Currency;

    error ZeroMinReturnAmount();
    error EmptyRouteData();
    error InvalidMsgValue();
    error MinimalOutputBalanceViolation();

    event Swap(
        address sender,
        Currency srcToken,
        Currency dstToken,
        address dstReceiver,
        uint256 amount,
        uint256 returnAmount
    );

    /**
     * @notice Retrieves funds accidently sent directly to the contract address
     * @param currency currency to retrieve
     * @param amount amount to retrieve
     */
    function rescueFunds(Currency currency, uint256 amount) external onlyOwner {
        currency.transfer(msg.sender, amount);
    }

    function swap(
        IAggregationExecutor executor,
        SwapDescription memory desc,
        bytes memory route
    ) 
        external 
        payable
        nonReentrant
        returns (
            uint256 returnAmount,
            uint256 spentAmount
        )  
    {
        if (desc.minReturnAmount == 0) revert ZeroMinReturnAmount();
        if (route.length == 0) revert EmptyRouteData();

        Currency srcToken = desc.srcToken;
        Currency dstToken = desc.dstToken;
        address dstReceiver = desc.dstReceiver == address(0) ? msg.sender : desc.dstReceiver;
        uint256 dstBalanceInitial = dstToken.balanceOf(dstReceiver);

        bool srcNative = srcToken.isNative();
        if (srcNative && msg.value < desc.amount) revert InvalidMsgValue();

        if (!srcNative) {
            srcToken.transferFrom(msg.sender, address(executor), desc.amount);
        }

        {
            bytes memory callData = abi.encodeCall(executor.excute, (msg.sender, desc, route));
            (bool success, bytes memory returnData) = address(executor).call{value: msg.value}(callData);
            if (!success) {
                assembly {
                    revert(add(returnData, 32), mload(returnData))
                }
            }
        }

        spentAmount = desc.amount;
        uint256 dstBalanceFinal = dstToken.balanceOf(dstReceiver);
        returnAmount = dstBalanceFinal - dstBalanceInitial;

        if (returnAmount < desc.minReturnAmount) revert MinimalOutputBalanceViolation();

        emit Swap(msg.sender, desc.srcToken, desc.dstToken, dstReceiver, desc.amount, returnAmount);
    }
}
