//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

abstract contract MockUpgrade {
  function foo() external pure returns (bool) {
    return true;
  }
}
