// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

/// @dev https://snowtrace.io/address/0xf362fea9659cf036792c9cb02f8ff8198e21b4cb

interface IBENQI {
  function mint(uint mintAmount) external returns (uint);

  function redeem(uint redeemTokens) external returns (uint);

  function borrow(uint borrowAmount) external returns (uint);

  function repayBorrow(uint repayAmount) external returns (uint);

  function exchangeRateCurrent() external returns (uint);

  function exchangeRateStored() external view returns (uint);

  function getAccountSnapshot(address account) external view returns (uint, uint, uint, uint);

  function comptroller() external view returns (address);

  function decimals() external view returns (uint8);

  function balanceOfUnderlying(address owner) external returns (uint);

  function borrowBalanceCurrent(address account) external returns (uint);

  function accrueInterest() external returns (uint);

  function redeemUnderlying(uint redeemAmount) external returns (uint);

}
