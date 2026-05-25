// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IReceipt {
    struct Order {
        bool orderType;
        address owner;
        address asset;
        address receiver;
        address yToken;
        uint256 amount;
        uint256 eligibleAt;
        uint256 exchangeRateInUnderlying;
        address callback;
        bytes callbackData;
        bytes32 referralCode;
    }

    function counter() external view returns (uint256);

    function readOrder(uint256 orderId) external view returns (Order memory);
}
