// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

interface IPoolInfoUtils {
    function borrowerInfo(
        address ajnaPool_,
        address borrower_
    ) external view returns (uint256 debt_, uint256 collateral_, uint256 t0Np_, uint256 thresholdPrice_);

    function borrowFeeRate(address ajnaPool_) external view returns (uint256);

    function lup(address ajnPool_) external view returns (uint256);
}
