// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { ProxyOFTV2 } from "lib/layer-zero-example/contracts/token/oft/v2/ProxyOFTV2.sol";
import { Transfer as TransferLib } from "src/libraries/Transfer.sol";

contract ProxyPYTH is ProxyOFTV2 {
  constructor(address _token, address _lzEndpoint) ProxyOFTV2(_token, 6, _lzEndpoint) {}

  function recoverToken(address _token, address _to, uint256 _amount) external onlyOwner {
    TransferLib.nativeOrToken(_token, _to, _amount);
  }
}
