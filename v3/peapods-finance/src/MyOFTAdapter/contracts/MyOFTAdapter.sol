// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import '@openzeppelin/contracts/access/Ownable.sol';
import '@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol';

contract MyOFTAdapter is OFTAdapter {
  constructor(
    address _token, // a deployed, already existing ERC20 token address
    address _lzEndpoint, // local endpoint address
    address _owner // token owner used as a delegate in LayerZero Endpoint
  ) OFTAdapter(_token, _lzEndpoint, _owner) Ownable(_owner) {
    //
    // your custom contract logic here
    //
  }
}
