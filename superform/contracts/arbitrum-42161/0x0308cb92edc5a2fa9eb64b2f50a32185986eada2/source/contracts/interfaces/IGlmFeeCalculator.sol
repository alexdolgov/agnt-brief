// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmFeeCalculator {
    event CoefficientsUpdated(uint256 quadraticCoeff, uint256 linearCoeff, uint256 constantCoeff);
    event BaseFeeUpdated(uint256 baseFee);

    function calculateAggressiveFee(uint256 deviation) external view returns (uint256);
}
