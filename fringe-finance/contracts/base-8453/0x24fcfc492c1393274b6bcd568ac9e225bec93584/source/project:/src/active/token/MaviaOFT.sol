// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract MaviaOFT is OFT {
  constructor(
    string memory _name, // token name
    string memory _symbol, // token symbol
    address _layerZeroEndpoint, // local endpoint address
    address _owner // token owner used as a delegate in LayerZero Endpoint
  )
    OFT(_name, _symbol, _layerZeroEndpoint, _owner)
    Ownable() // solhint-disable-next-line no-empty-blocks
  {}
}
