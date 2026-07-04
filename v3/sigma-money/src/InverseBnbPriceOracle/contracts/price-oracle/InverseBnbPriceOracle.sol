// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { IRateProvider } from "../rate-provider/interfaces/IRateProvider.sol";

contract InverseBnbPriceOracle is IPriceOracle {
  /// @notice The address of the `BNBPriceOracle` contract.
  address public immutable oracle;

  constructor(address _oracle) {
    oracle = _oracle;
  }

  /// @inheritdoc IPriceOracle
  function getPrice() public view returns (uint256 anchorPrice, uint256 minPrice, uint256 maxPrice) {
    (uint256 tmpAnchorPrice, uint256 tmpMinPrice, uint256 tmpMaxPrice) = IPriceOracle(oracle).getPrice();
    anchorPrice = 1e36 / tmpAnchorPrice;
    minPrice = 1e36 / tmpMaxPrice;
    maxPrice = 1e36 / tmpMinPrice;
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
