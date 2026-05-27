// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/ILendingConnector.sol";
import "../interfaces/external/compound-v2/CTokenInterfaces.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract CompoundMarketConnector is ILendingConnector {
    function mint(
        address target,
        uint256 amount,
        bytes memory // extraData
    ) external payable override {
        CErc20Interface cToken = CErc20Interface(target);
        SafeTransferLib.safeApprove(cToken.underlying(), target, amount);
        require(
            cToken.mint(amount) == 0, "CompoundMarketConnector: mint failed"
        );

        address[] memory markets = new address[](1);
        markets[0] = target;
        uint256[] memory results = ComptrollerInterface(
            CTokenInterface(target).comptroller()
        ).enterMarkets(markets);
        require(results[0] == 0, "CompoundMarketConnector: enterMarkets failed");
    }

    function redeem(
        address target,
        uint256 amount,
        bytes memory // extraData
    ) external override {
        if (amount == 0) amount = IERC20(target).balanceOf(address(this));
        CErc20Interface cToken = CErc20Interface(target);
        require(
            cToken.redeem(amount) == 0, "CompoundMarketConnector: redeem failed"
        );
        if (IERC20(target).balanceOf(address(this)) == 0) {
            require(
                ComptrollerInterface(CTokenInterface(target).comptroller())
                    .exitMarket(target) == 0,
                "CompoundMarketConnector: exitMarket failed"
            );
        }
    }

    function redeemUnderlying(
        address target,
        uint256 amount,
        bytes memory // extraData
    ) external override {
        CErc20Interface cToken = CErc20Interface(target);
        require(
            cToken.redeemUnderlying(amount) == 0,
            "CompoundMarketConnector: redeemUnderlying failed"
        );
        if (IERC20(target).balanceOf(address(this)) == 0) {
            require(
                ComptrollerInterface(CTokenInterface(target).comptroller())
                    .exitMarket(target) == 0,
                "CompoundMarketConnector: exitMarket failed"
            );
        }
    }

    function borrow(
        address target,
        uint256 amount,
        bytes memory // extraData
    ) external payable override {
        CErc20Interface cToken = CErc20Interface(target);
        require(
            cToken.borrow(amount) == 0, "CompoundMarketConnector: borrow failed"
        );
    }

    function repay(
        address target,
        uint256 amount,
        bytes memory // extraData
    ) external payable override {
        if (amount == 0) amount = type(uint256).max;
        CErc20Interface cToken = CErc20Interface(target);
        SafeTransferLib.safeApprove(cToken.underlying(), target, amount);
        require(
            cToken.repayBorrow(amount) == 0,
            "CompoundMarketConnector: repay failed"
        );
        if (amount == type(uint256).max) {
            SafeTransferLib.safeApprove(cToken.underlying(), target, 0);
        }
    }

    function repayFor(
        address target,
        address borrower,
        uint256 amount,
        bytes memory // extraData
    ) external payable override {
        if (amount == 0) amount = type(uint256).max;
        CErc20Interface cToken = CErc20Interface(target);
        SafeTransferLib.safeApprove(cToken.underlying(), target, amount);
        require(
            cToken.repayBorrowBehalf(borrower, amount) == 0,
            "CompoundMarketConnector: repayFor failed"
        );
        if (amount == type(uint256).max) {
            SafeTransferLib.safeApprove(cToken.underlying(), target, 0);
        }
    }
}
