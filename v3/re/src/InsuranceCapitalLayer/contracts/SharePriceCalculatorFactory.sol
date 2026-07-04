pragma solidity 0.8.20;

import "./SharePriceCalculator.sol";

contract SharePriceCalculatorFactory {
  function createSharePriceCalculator(
    address _depositTokenRegistry,
    uint256 _initialSharePrice,
    address _admin,
    address _priceSetter
  ) public returns (address) {
    SharePriceCalculator newCalculator = new SharePriceCalculator(
      _depositTokenRegistry,
      _initialSharePrice,
      _admin,
      _priceSetter
    );
    return address(newCalculator);
  }
}
