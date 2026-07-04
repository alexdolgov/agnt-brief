// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.23;

import {ICamelot} from "./ICamelot.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControlDefaultAdminRules} from
    "openzeppelin-contracts/contracts/access/extensions/AccessControlDefaultAdminRules.sol";

contract CamelotTask is AccessControlDefaultAdminRules {
    uint256 public constant AMOUNT = 1_000_000;

    address public constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    address public constant USD_PLUS = 0xfc90518D5136585ba45e34ED5E1D108BD3950CFa;

    bytes32 public constant AUTHORIZED_CALLER = keccak256("AUTHORIZED_CALLER");

    error InsufficientBalance();

    event TradeExecuted(address tokenIn, address tokenOut);

    address public router;

    constructor(address _router, address _admin) AccessControlDefaultAdminRules(0, _admin) {
        router = _router;
    }

    function setRouter(address _router) external onlyRole(DEFAULT_ADMIN_ROLE) {
        router = _router;
    }

    function trade() external onlyRole(AUTHORIZED_CALLER) {
        // Switch swap direction based on which token has more balance
        uint256 usdcAmount = IERC20(USDC).balanceOf(address(this));
        uint256 usdPlusAmount = IERC20(USD_PLUS).balanceOf(address(this));
        ICamelot.Query memory query;
        if (usdcAmount > usdPlusAmount) {
            if (usdcAmount < AMOUNT) revert InsufficientBalance();
            query = ICamelot(router).queryNoSplit(AMOUNT, USDC, USD_PLUS);
        } else {
            if (usdPlusAmount < AMOUNT) revert InsufficientBalance();
            query = ICamelot(router).queryNoSplit(AMOUNT, USD_PLUS, USDC);
        }

        ICamelot.Trade memory tradeData = ICamelot.Trade({
            amountIn: AMOUNT,
            amountOut: 0, //query.amountOut,
            path: new address[](2),
            adapters: new address[](1),
            recipients: new address[](1)
        });

        tradeData.path[0] = query.tokenIn;
        tradeData.path[1] = query.tokenOut;

        tradeData.adapters[0] = query.adapter;
        tradeData.recipients[0] = query.recipient;

        SafeERC20.safeIncreaseAllowance(IERC20(query.tokenIn), router, AMOUNT);
        ICamelot(router).swapNoSplit(tradeData, 0, address(this));

        emit TradeExecuted(query.tokenIn, query.tokenOut);
    }

    function withdraw(address _token, address _receiver, uint256 _amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        SafeERC20.safeTransfer(IERC20(_token), _receiver, _amount);
    }
}
