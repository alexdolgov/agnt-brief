// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

interface ISellFeeDistributor {
    event FeeDistributed(address indexed to, uint256 usdcAmount);
    event TangibleBurned(uint256 burnedTngbl);

    function distributeFee(uint256 feeAmount) external;
}
