// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.27;

/// @title Interface for TaxHandler.
interface ITaxHandler {
    function sellFeePercent() external view returns (uint8);
    function swapToBase(uint256 _tokenAmount) external returns (uint256 baseAmount);
    function distributeBaseFee(
        uint256 _baseAmount
    ) external returns (uint256 adminAmount, uint256 creatorAmount);
}
