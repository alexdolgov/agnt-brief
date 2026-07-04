// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ILimitOrder {

    struct Order {
        address maker;
        address buyToken;
        address sellToken;
        uint256 buyAmount;
        uint256 sellAmount;
        uint256 expiry;
        Status status;
    }

    enum Status {
        NONE,
        ACTIVE,
        EXECUTED,
        CANCELLED
    }

    struct PaginatedOrderData {
        Order[] orderData;
        uint256 lastReturnedIndex;
    }

    event OrderCreated(
        address indexed maker,
        address indexed buyToken,
        address indexed sellToken,
        uint256 buyAmount,
        uint256 sellAmount,
        uint256 expiry
    );

    event OrderExecuted(
        address indexed maker,
        address indexed buyToken,
        address indexed sellToken,
        uint256 buyAmount,
        uint256 sellAmount
    );

    event OrderCancelled(
        address indexed maker,
        address indexed buyToken,
        address indexed sellToken,
        uint256 buyAmount,
        uint256 sellAmount
    );

    event SetFee(uint256 oldFee, uint256 newFee);
    event SetMaxHops(uint256 oldMaxHops, uint256 newMaxHops);
    event SetMaxDuration(uint256 oldMaxDuration, uint256 newMaxDuration);
    event SetYakRouter(address oldYakRouter, address newYakRouter);
    event SetTrustedToken(address token, bool trusted);
    event RemoveTrustedToken(address token);

    error Expired(uint256 expiry, uint256 current);
    error IndexDoesNotExist(uint256 index);
    error AmountsMismatch(uint256 offer, uint256 sellAmount);
    error NotExecutable();
    error OnlyMaker();
    error InvalidAmount(uint256 amount);
    error InvalidTokens();
}