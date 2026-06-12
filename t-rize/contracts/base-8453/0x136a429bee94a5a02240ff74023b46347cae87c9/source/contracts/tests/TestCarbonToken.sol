// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { BaseCarbon } from "../carbon/BaseCarbon.sol";

contract TestCarbonToken is BaseCarbon {

  constructor(string memory symbol, uint256 metricTonPerToken_)
    BaseCarbon(
      msg.sender,
      msg.sender,
      address(0),
      symbol, symbol,
      metricTonPerToken_
    ) {

    }

  function mint(address to, uint256 amount) external {
    _mint(to, amount);
  }
}