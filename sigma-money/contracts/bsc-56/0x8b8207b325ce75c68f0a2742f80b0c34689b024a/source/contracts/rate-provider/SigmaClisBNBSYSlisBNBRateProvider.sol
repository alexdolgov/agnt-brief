// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IRateProvider } from "./interfaces/IRateProvider.sol";

// solhint-disable contract-name-camelcase

contract SigmaClisBNBSYSlisBNBRateProvider is IRateProvider {
  constructor() {}

  /// @notice SigmaClisBNBSY and slisBNB are 1:1 pegged.
  /// @inheritdoc IRateProvider
  function getRate() external view override returns (uint256) {
    return 1 ether;
  }

  function getX() external pure returns (uint256) {
    return 1 ether;
  }
}
