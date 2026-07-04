// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { OFTV2 } from "lib/layer-zero-example/contracts/token/oft/v2/OFTV2.sol";

contract RemoteHMX is OFTV2 {
  constructor(
    address _layerZeroEndpoint,
    uint8 _sharedDecimals
  ) OFTV2("HMX", "HMX", _sharedDecimals, _layerZeroEndpoint) {}
}
