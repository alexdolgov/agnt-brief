// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface ILzCreditControllerV1 {
    function isCreditController() external view returns (bool);

    function informLzCreditRequest(
        address _to,
        uint256 _amountToCreditLD,
        uint32 /*_srcEid*/
    ) external returns (bool isPermitted);
}
