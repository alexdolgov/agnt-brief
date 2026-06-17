// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IPriceOracle } from "./interfaces/IPriceOracle.sol";

contract InverseStETHPriceOracle is IPriceOracle {
  /// @notice The address of the `StETHPriceOracle` contract.
  address public immutable oracle;

  constructor(address _oracle) {
    oracle = _oracle;
  }

  /// @inheritdoc IPriceOracle
  function getPrice() public view returns (uint256 anchorPrice, uint256 minPrice, uint256 maxPrice) {
    (anchorPrice, minPrice, maxPrice) = IPriceOracle(oracle).getPrice();
    anchorPrice = 1e18 / anchorPrice;
    minPrice = 1e18 / maxPrice;
    maxPrice = 1e18 / minPrice;
  }

  /// @inheritdoc IPriceOracle
  function getExchangePrice() public view returns (uint256) {
    (, uint256 price, ) = getPrice();
    return price;
  }

  /// @inheritdoc IPriceOracle
  function getLiquidatePrice() external view returns (uint256) {
    return getExchangePrice();
  }

  /// @inheritdoc IPriceOracle
  function getRedeemPrice() external view returns (uint256) {
    (, , uint256 price) = getPrice();
    return price;
  }
}
