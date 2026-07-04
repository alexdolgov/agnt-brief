// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface ILzDebitControllerV1 {
    function isDebitController() external view returns (bool);

    function informLzDebitRequest(
        uint256 _amountToSendLD, // amount to send in local decimals()
        uint256 _minAmountToCreditLD, // minimum ammount to credit on the destination
        uint32 _dstEid // destination endpoint id
    ) external returns (bool isPermitted);
}
