// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

/// @notice Calculate price of 1 USD in the given tokens
interface IPriceOracle {

  /// @notice This PricesOracle is not able to calculate price of 1 USD in terms of the provided token
  error ErrorUnsupportedToken(address token);

  /// @notice Return a price of one dollar in required tokens
  /// @return Price of 1 USD in given token, decimals  = decimals of the required token
  function getPrice(address requiredToken) external view returns (uint);
}