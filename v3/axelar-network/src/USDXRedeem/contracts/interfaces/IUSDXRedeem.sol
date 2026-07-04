// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

interface IUSDXRedeem {
  event AssetAdded(address indexed asset);
  event AssetRemoved(address indexed asset);
  event Redeem(address indexed account, address indexed redeemAsset, uint256 redeemAssetAmount, uint256 usdxAmount, uint256 fee);
  event Claim(address indexed account, address indexed claimAsset, uint256 claimAmount);
  event CooldownSet(uint256 oldCooldown, uint256 newCooldown);
  event UpdateFeeRate(uint256 oldFeeRate, uint256 newFeeRate);
  event UpdateMaxPerRedeem(uint256 oldMaxRedeem, uint256 newMaxRedeem);
  event UpdatedVault(address oldVault, address newVault);

  struct Redemption {
    uint256 cooldownEnd;
    uint256 underlingAmount;
    uint256 usdxAmount;
  }

  /**
   * @notice Redeem supported token
   * @param _assetToken Redeem asset address
   * @param _usdxAmount USDX amount
   */
  function redeem(address _assetToken, uint256 _usdxAmount) external;

  /**
   * @notice Redeem supported token
   * @param _assetToken Redeem asset address
   * @param _usdxAmount USDX amount
   * @param _deadline Deadline
   * @param _permitV V
   * @param _permitR R
   * @param _permitS S
   */
  function redeemWithPermit(
    address _assetToken,
    uint256 _usdxAmount,
    uint256 _deadline,
    uint8 _permitV,
    bytes32 _permitR,
    bytes32 _permitS
  ) external;

  /**
   * @notice Cliam token
   * @param _assetToken Claimable token address
   */
  function claim(address _assetToken) external;

  /**
   * @notice Adds an asset to the supported assets list.
   * @param asset Support asset
   */
  function addSupportedAsset(address asset) external;

  /**
   * @notice Removes an asset from the supported assets list
   * @param asset Support asset
   */
  function removeSupportedAsset(address asset) external;

  /**
   * @notice Checks if an asset is supported.
   * @param asset Support asset
   */
  function isSupportedAsset(address asset) external view returns (bool);

  /**
   * @notice Set cooldown duration.
   * @param duration Duration of the cooldown
   */
  function setCooldownDuration(uint24 duration) external;

  /**
   * @dev Update the redeem fee rate.
   * @dev Only callable by addresses with the owner.
   * @param _rate The new redeem fee rate.
   */
  function updateFeeRate(uint256 _rate) external;

  /**
   * @dev Update the max redeem limit.
   * @dev Only callable by addresses with the owner.
   * @param _maxRedeem The new max redeem limit.
   */
  function updateMaxPerRedeem(uint256 _maxRedeem) external;

  /**
   * @dev Update the vault address.
   * @dev Only callable by addresses with the owner.
   * @param _vault The new vault address.
   */
  function updateVault(address _vault) external;

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
