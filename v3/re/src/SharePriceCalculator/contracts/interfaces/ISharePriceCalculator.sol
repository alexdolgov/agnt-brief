// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface ISharePriceCalculator {
  event SharePriceSet(uint256 oldPrice, uint256 newPrice);

  function setSharePrice(uint256 newPrice) external;
  function convertToShares(
    address token,
    uint256 amount
  ) external view returns (uint256);
  function convertFromShares(
    address token,
    uint256 shares
  ) external view returns (uint256);
  function getSharePrice() external view returns (uint256);
}
