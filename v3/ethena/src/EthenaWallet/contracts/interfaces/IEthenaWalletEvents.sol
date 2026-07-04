// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/* solhint-disable var-name-mixedcase  */

interface IEthenaWalletEvents {
  /// @notice Event emitted when contract receives ETH
  event Received(address, uint256);

  /// @notice Event emitted when a supported asset is added
  event AssetAdded(address indexed asset);

  /// @notice Event emitted when a supported asset is removed
  event AssetRemoved(address indexed asset);

  // @notice Event emitted when a whitelisted destination address is added
  event WhitelistedDestinationAddressAdded(address indexed destination);

  // @notice Event emitted when a whitelisted destination address is removed
  event WhitelistedDestinationAddressRemoved(address indexed destination);

  /// @notice Event emitted when assets are moved to whitelisted destination wallet
  event WhitelistedDestinationTransfer(address indexed wallet, address indexed asset, uint256 amount);

  /// @notice Event emitted when USDe is set
  event USDeSet(address indexed USDe);

  /// @notice Event emitted when the asset type for a asset is set.
  event AssetTypeSet(address indexed asset, uint256 assetType);
}
