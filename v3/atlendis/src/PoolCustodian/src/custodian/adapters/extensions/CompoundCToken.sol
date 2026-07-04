// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.10;

abstract contract CTokenInterface {
    uint8 public decimals;

    function mint(uint256 mintAmount) external virtual returns (uint256);

    function redeem(uint256 redeemTokens) external virtual returns (uint256);

    function exchangeRateCurrent() external virtual returns (uint256);
}
