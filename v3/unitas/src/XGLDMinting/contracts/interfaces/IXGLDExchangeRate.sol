// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

interface IXGLDExchangeRate {
    function exchangeRate() external view returns (uint256);
}
