// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

/**
 * IMPORTANT: this contract is depreceted, because now the all liquidity is in a multitoken reserve
 * @title LiquidityRequester
 * @dev Contains functions related to liquidity managed
 * Increments every time money is taking out for lending projects, decrements every time is returned
 * @author Ethichub
 */
abstract contract LiquidityRequester {
    uint256 private _totalBorrowed_deprecated; // Rename in v1.3 from totalBorrowed to _totalBorrowed_deprecated (unused variable)
    uint256[49] private __gap;
}
