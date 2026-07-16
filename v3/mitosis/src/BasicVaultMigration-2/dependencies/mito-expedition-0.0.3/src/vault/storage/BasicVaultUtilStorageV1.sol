// SPDX-License-Identifier: MIT
pragma solidity >=0.8.23 <0.9.0;

import { ICap } from '../../interfaces/ICap.sol';

contract BasicVaultUtilStorageV1 {
  /// @custom:storage-location erc7201:mitosis.storage.BasicVaultUtil.v1
  struct UtilStorageV1 {
    ICap cap;
  }

  // keccak256(abi.encode(uint256(keccak256("mitosis.storage.BasicVaultUtil.v1")) - 1)) & ~bytes32(uint256(0xff))
  bytes32 public constant UtilStorageV1Location = 0xb74bb28fc0dafa03e97d9d2c2a11bb377bfd56ee8bbb7eda9a3949d9c8d49c00;

  function _getUtilStorageV1() internal pure returns (UtilStorageV1 storage $) {
    // slither-disable-next-line assembly
    assembly {
      $.slot := UtilStorageV1Location
    }
  }
}
