// SPDX-License-Identifier: BSL
pragma solidity ^0.8.24;

interface IOrderBookFactory {
    function regularHookFeePercentage() external view returns (uint256);
    function dynamicHookFeePercentage() external view returns (uint256);
    function antiSnipeHookFeePercentage() external view returns (uint256);
    function antiSnipeDynamicHookFeePercentage() external view returns (uint256);
}