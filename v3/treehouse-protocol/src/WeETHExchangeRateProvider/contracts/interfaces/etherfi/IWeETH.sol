// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

/// @dev https://etherscan.io/address/0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee
interface IWeETH {
  /// @notice Wrap eETH to weETH
  /// @param _eETHAmount amount of eETH to wrap
  /// @return Amount of weETH received
  function wrap(uint256 _eETHAmount) external returns (uint256);

  /// @notice Unwrap weETH to eETH
  /// @param _weETHAmount amount of weETH to unwrap
  /// @return Amount of eETH received
  function unwrap(uint256 _weETHAmount) external returns (uint256);

  /// @notice Get weETH amount for a given eETH amount
  /// @param _eETHAmount eETH amount
  /// @return weETH equivalent
  function getWeETHByeETH(uint256 _eETHAmount) external view returns (uint256);

  /// @notice Get eETH amount for a given weETH amount
  /// @param _weETHAmount weETH amount
  /// @return eETH equivalent
  function getEETHByWeETH(uint256 _weETHAmount) external view returns (uint256);

  /// @notice Get the eETH value of 1 weETH
  /// @return rate eETH per weETH
  function getRate() external view returns (uint256);
}
