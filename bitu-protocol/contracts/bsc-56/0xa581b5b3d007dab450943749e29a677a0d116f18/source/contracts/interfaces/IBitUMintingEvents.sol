// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IBitUMintingEvents {
  /// @notice Event emitted when contract receives ETH
  event Received(address, uint256);

  /// @notice Event emitted when BITU is minted
  event Mint(
    address minter,
    address indexed collateral_asset,
    uint256 indexed collateral_amount,
    uint256 indexed bitu_amount,
    uint256 collateral_ratio,
    uint256 timestamp,
    uint256 mintfee
  );

  /// @notice Event emitted when funds are redeemed
  event Redeem(
    address redeemer,
    address indexed collateral_asset,
    uint256 indexed collateral_amount,
    uint256 indexed bitu_amount,
    uint256 collateral_ratio,
    uint256 interest,
    uint256 timestamp
  );

  event Liqiudation(
    address user,
    address indexed asset,
    uint256 indexed collateral_amount,
    uint256 indexed bitu_amount,
    uint256 collateral_ratio,
    uint256 timestamp
  );
  /// @notice Event emitted when custody wallet is added
  event CustodyWalletAdded(address wallet);

  /// @notice Event emitted when a custody wallet is removed
  event CustodyWalletRemoved(address wallet);

  /// @notice Event emitted when a supported asset is added
  event AssetAdded(address indexed asset,address oracle, uint256 gaurdRate, uint256 minRate);

 /// @notice Event emitted when a supported ratios is added
  event AssetGuardRatioSetted(address indexed asset, uint256 guardRatio, uint256 minRatio);

  /// @notice Event emitted when a supported asset is removed
  event AssetRemoved(address indexed asset);

  // @notice Event emitted when a custodian address is added
  event CustodianAddressAdded(address indexed custodian);

  // @notice Event emitted when a custodian address is removed
  event CustodianAddressRemoved(address indexed custodian);

  /// @notice Event emitted when assets are moved to custody provider wallet
  event CustodyTransfer(address indexed wallet, address indexed asset, uint256 amount);

  /// @notice Event emitted when BITU is set
  event BITUSet(address indexed BITU);

  /// @notice Event emitted when the max mint per block is changed
  event MaxMintPerBlockChanged(uint256 indexed oldMaxMintPerBlock, uint256 indexed newMaxMintPerBlock);

  /// @notice Event emitted when the max redeem per block is changed
  event MaxRedeemPerBlockChanged(uint256 indexed oldMaxRedeemPerBlock, uint256 indexed newMaxRedeemPerBlock);

  /// @notice Event emitted when a delegated signer is added, enabling it to sign orders on behalf of another address
  event DelegatedSignerAdded(address indexed signer, address indexed delegator);

  /// @notice Event emitted when a delegated signer is removed
  event DelegatedSignerRemoved(address indexed signer, address indexed delegator);
}
