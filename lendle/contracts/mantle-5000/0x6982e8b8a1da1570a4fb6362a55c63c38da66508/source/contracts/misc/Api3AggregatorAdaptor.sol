// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma abicoder v2;

import {IApi3Proxy, IApi3AggregatorAdaptor} from "../interfaces/IApi3.sol";

contract Api3AggregatorAdaptor is IApi3AggregatorAdaptor {  
  // Updating the proxy address is a security-critical action which is why
  // we have made it immutable.
  address public immutable ethToUsdProxy;
  address public immutable methToEthProxy;

  uint32 public constant DECIMALS = 18;

  constructor(address _ethToUsdProxy, address _methToEthProxy) {
    ethToUsdProxy = _ethToUsdProxy;
    methToEthProxy = _methToEthProxy;
  }

  function getPrice() external view override returns (int256 price, uint256 timestamp, uint32 decimals) {
    (int224 ethValueInUsd, uint256 ethToUsdTimestamp) = IApi3Proxy(ethToUsdProxy).read();
    (int224 methValueInEth, uint256 methToEthTimestamp) = IApi3Proxy(methToEthProxy).read();
    price = methValueInEth * ethValueInUsd / (10 ** 18);
    // use oldest timestamp
    timestamp = ethToUsdTimestamp > methToEthTimestamp ? methToEthTimestamp : ethToUsdTimestamp;
    decimals = DECIMALS;
  }
}