// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {ISudoVault} from '@src/interfaces/vault/IVault.sol';
import {IATM} from '@src/interfaces/IATM.sol';

contract CCDMClientStorageV1 {
  struct ExtAddr {
    uint32 domain;
    bytes32 addr;
  }

  // @param amount Threshold amount
  // @param ratio Threshold ratio (100% = 1 ether)
  // @dev depite the current gap does not satisfiy the threshold amount,
  //      we can execute adjust if the ratio is satisfied.
  struct Threshold {
    uint256 amount;
    uint256 ratio;
  }

  struct VaultInfo {
    bytes32 l1Asset;
    address l2Asset;
    uint256 unresolved;
    ISudoVault vault;
    Threshold threshold;
    bool connected;
  }

  struct StorageV1 {
    IATM atm;
    ExtAddr ccdmHost;
    VaultInfo[] vaults;
    mapping(address => uint256) vaultIdxByAddr;
    mapping(bytes32 => uint256) vaultIdxByL1Asset;
    mapping(address => uint256) vaultIdxByL2Asset;
  }

  // keccak256(abi.encode(uint256(keccak256("mitosis.storage.CCDMClient.v1")) - 1)) & ~bytes32(uint256(0xff))
  bytes32 public constant StorageV1Location = 0x102288caa3f4ed6e369a9c58e4f7907ea7c7c2c4a02dfe3165d5c7e45ae63000;

  function _getStorageV1() internal pure returns (StorageV1 storage $) {
    // slither-disable-next-line assembly
    assembly {
      $.slot := StorageV1Location
    }
  }
}
