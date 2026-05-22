// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

interface IUSDXSales {
  event MaxMintPerBlockUpdated(uint256 previousValue, uint256 newValue);
  event CustodyWalletAdded(address wallet);
  event CustodyWalletRemoved(address wallet);
  event AssetAdded(address indexed asset);
  event AssetRemoved(address indexed asset);
  event CustodianAddressAdded(address indexed custodian);
  event CustodianAddressRemoved(address indexed custodian);
  event UpdateFeeRate(uint256 oldFeeRate, uint256 newFeeRate);
  event UpdateBuyStatus(bool oldStatus, bool newStatus);
  event BuySuccess(address beneficiary, address indexed collateralAsset, uint256 collateralAmount, uint256 usdxAmount, uint256 feeAmount);

  /**
   * @notice Purchase USDX through supported stablecoins
   * @param _collateralAsset Collateral asset address
   * @param _collateralAmount Collateral asset amount
   * @param _custodianAddress Custodian address
   */
  function buy(address _collateralAsset, uint256 _collateralAmount, address _custodianAddress) external;

  /**
   * Purchase USDX through supported stablecoins
   * @param _collateralAsset Collateral asset address
   * @param _collateralAmount Collateral asset amount
   * @param _custodianAddress Custodian address
   * @param _deadline Deadline
   * @param _permitV V
   * @param _permitR R
   * @param _permitS S
   */
  function buyWithPermit(
    address _collateralAsset,
    uint256 _collateralAmount,
    address _custodianAddress,
    uint256 _deadline,
    uint8 _permitV,
    bytes32 _permitR,
    bytes32 _permitS
  ) external;

  /**
   * @notice Adds an asset to the supported assets list.
   * @param asset Support asset
   */
  function addSupportedAsset(address asset) external;

  /**
   * @notice Adds an custodian to the supported custodians list.
   * @param custodian Custody address
   */
  function addCustodianAddress(address custodian) external;

  /**
   * @notice Removes an asset from the supported assets list
   * @param asset Support asset
   */
  function removeSupportedAsset(address asset) external;

  /**
   * @notice Removes an custodian from the custodian address list
   * @param custodian Custody address
   */
  function removeCustodianAddress(address custodian) external;

  /**
   * @notice Checks if an asset is supported.
   * @param asset Support asset
   */
  function isSupportedAsset(address asset) external view returns (bool);

  /**
   * @notice Checks if an asset is custodian.
   * @param custodian Custodian address
   */
  function isCustodianAddress(address custodian) external view returns (bool);

  /**
   * @dev Update the buy fee rate.
   * @dev Only callable by addresses with the owner.
   * @param _rate The new buy fee rate.
   */
  function updateFeeRate(uint256 _rate) external;

  /**
   * @dev Set max mint per block.
   * @dev Only callable by addresses with the owner.
   * @param _maxMintPerBlock The mint amount per block.
   */
  function setMaxMintPerBlock(uint256 _maxMintPerBlock) external;

  /**
   * @dev Pauses contract functionality.
   * @notice Only callable by addresses with the owner.
   */
  function pause() external;

  /**
   * @dev Unpauses contract functionality.
   * @notice Only callable by addresses with the owner.
   */
  function unpause() external;
}
