// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


interface IFlashLoanAggregator {
    function flashLoan(
        address[] calldata tokens,
        uint256[] calldata amounts,
        uint256 flashLoanRoute,
        bytes calldata termFlashRepay,
        bytes calldata flashLoanInstaData
    ) external;
}
