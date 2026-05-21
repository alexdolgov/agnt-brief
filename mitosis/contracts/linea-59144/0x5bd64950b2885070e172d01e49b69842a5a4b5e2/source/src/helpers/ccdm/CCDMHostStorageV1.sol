// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IBridgeAdapter} from '@src/interfaces/bridge/IBridgeAdapter.sol';

contract CCDMHostStorageV1 {
  struct FeeInfo {
    address receiver;
    uint256 gas;
    uint256 adjustment;
  }

  struct StorageV1 {
    FeeInfo fee;
    mapping(uint32 => mapping(address => bytes32)) assetL1L2Map;
    mapping(uint32 => IBridgeAdapter) bridges;
  }

  // keccak256(abi.encode(uint256(keccak256("mitosis.storage.CCDMHost.v1")) - 1)) & ~bytes32(uint256(0xff))
  bytes32 public constant StorageV1Location = 0xf796c24f9057be79314b6cfd89a459ffcf8ec32e3414b78b590edda563e45900;

  function _getStorageV1() internal pure returns (StorageV1 storage $) {
    // slither-disable-next-line assembly
    assembly {
      $.slot := StorageV1Location
    }
  }
}
