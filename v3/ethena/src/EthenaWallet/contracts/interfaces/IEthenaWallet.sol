// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/* solhint-disable var-name-mixedcase  */

import "./IEthenaWalletEvents.sol";

interface IEthenaWallet is IEthenaWalletEvents {
  enum AssetType {
    STABLE,
    VOLATILE
  }

  error InvalidUSDeAddress();
  error InvalidAdminAddress();
  error InvalidAssetAddressAddition();
  error InvalidAssetAddressRemoval();
  error InvalidAssetAddressLength();
  error InvalidDestinationAddress();
  error UnsupportedAsset();
  error NoAssetsProvided();
  error TransferNativeFailed();
}
