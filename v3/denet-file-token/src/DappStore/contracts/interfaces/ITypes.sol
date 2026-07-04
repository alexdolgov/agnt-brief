// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.15;

interface ITypes {
  /// -----------------------DAPP's STATE STRUCTS-----------------------

  /**
   * @dev Dapp version for storing dapp hashes, Used by storage provider
   * updatedAt - time, when dapp was updated
   * Will inclided in next versions:
   * verify, calc via ыubtracting the largest from the resultы
   * Example: 154 - DeNet Team, DAO, Deposit, Pre Installed
   * 256 - Using DeNet as Storage on backend
   * 128 - Verify by DeNet Team
   * 64 - DeNet Team
   * 32 - Verified Developer
   * 16 - Verified by DAO
   * 8 - Verified by Deposit
   * 4 - Verified by Time (1 Months)
   * 2 - Pre Installed App
   */

  struct DappVersion {
    uint256[] nodeIds;
    uint32 paddingSize;
    bytes32 encryptionKey;
    bytes32 manifestFileKey;
    bytes32 manifestpartKey;
    uint32 updatedAt;
    uint16 verify;
  }

  /**
   * @dev Dapp is a sturct to store dapp state and versions
   */
  struct Dapp {
    string name;
    DappVersion[] versions;
  }

  /**
   * @dev Dapp Dto is a sturct of dapp date with onwner & dapp id (token id)
   */
  struct DappDto {
    uint256 dappId;
    address owner;
    Dapp dapp;
  }
}
