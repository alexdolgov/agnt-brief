// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { OFTV2 } from "lib/layer-zero-example/contracts/token/oft/v2/OFTV2.sol";

contract RemoteFDX is OFTV2 {
  constructor(
    address _layerZeroEndpoint,
    uint8 _sharedDecimals
  ) OFTV2("FDX", "FDX", _sharedDecimals, _layerZeroEndpoint) {}
}
