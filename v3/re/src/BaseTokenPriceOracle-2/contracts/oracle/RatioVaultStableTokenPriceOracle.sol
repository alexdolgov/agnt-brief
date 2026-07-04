// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./BaseTokenPriceOracle.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title RatioVaultStableTokenPriceOracle
/// @notice Price oracle for ERC4626 vault tokens backed by stablecoins
/// @dev Uses Chainlink price feeds and implements safety checks
/// @custom:security-contact security@yourproject.com
contract RatioVaultStableTokenPriceOracle is BaseTokenPriceOracle {
  /// @dev Minimum acceptable price for the underlying stablecoin ($0.99)
  uint256 private constant MIN_PRICE = 99_000_000;
  uint256 private constant ONE_USD = 1e8; // $1.00 in Chainlink format

  /// @notice The ERC4626 vault contract
  IERC4626 public immutable vault;

  /// @notice The decimals of the vault's share token
  uint8 public immutable vaultShareDecimals;

  /// @notice The decimals of the vault's underlying token
  uint8 public immutable underlyingDecimals;

  /// @notice A static maximum ratio (denominated in underlying decimals).
  ///         If `vault.convertToAssets(1 share)` exceeds this, it is capped.
  uint256 public maxVaultRatio;

  error InvalidVaultAddress();
  error InvalidMaxRatio();

  event MaxVaultRatioUpdated(uint256 oldRatio, uint256 newRatio);

  constructor(
    address initialAdmin,
    address feed,
    uint32 stalenessPeriod,
    address vaultAddr,
    uint256 initialMaxRatio
  ) BaseTokenPriceOracle(initialAdmin) {
    if (vaultAddr == address(0)) revert InvalidVaultAddress();

    _setTokenConfig(feed, stalenessPeriod);

    vault = IERC4626(vaultAddr);
    vaultShareDecimals = vault.decimals();
    IERC20Metadata asset = IERC20Metadata(vault.asset());
    underlyingDecimals = asset.decimals();
    setMaxVaultRatio(initialMaxRatio);
  }

  /// @notice Returns the current ratio between vault shares and underlying assets
  /// @return The current ratio, capped by maxVaultRatio
  function getCurrentRatio() public view returns (uint256) {
    uint256 oneShare = 10 ** vaultShareDecimals;
    uint256 rawRatio = vault.convertToAssets(oneShare);
    return rawRatio > maxVaultRatio ? maxVaultRatio : rawRatio;
  }

  /**
   * @notice Retrieves the latest price information for the configured token
   * @return PriceInfo Struct containing the price and its status
   */
  function latestPriceInfo() external view override returns (PriceInfo memory) {
    AggregatorV3Interface feed = tokenConfig.priceFeed;
    (uint256 underlyingPrice, uint256 updatedAt) = _getLatestRoundData(feed);

    if (underlyingPrice == 0) {
      return PriceInfo(0, PriceStatus.INVALID);
    }

    // Check staleness
    if (_isStale(updatedAt, tokenConfig.stalenessPeriod)) {
      return PriceInfo(0, PriceStatus.STALE);
    }

    if (underlyingPrice < MIN_PRICE) {
      return PriceInfo(0, PriceStatus.INVALID);
    }

    // Cap the price at $1.00
    if (underlyingPrice > ONE_USD) {
      underlyingPrice = ONE_USD;
    }

    uint256 ratio = getCurrentRatio();

    uint256 finalPrice = (underlyingPrice * ratio) / (10 ** underlyingDecimals);

    // Ensure the price fits within uint96
    if (finalPrice > type(uint96).max) {
      return PriceInfo(0, PriceStatus.INVALID);
    }

    return PriceInfo(uint96(finalPrice), PriceStatus.VALID);
  }

  // ---------------------- ADMIN FUNCTION TO SET CAP -----------------------
  /**
   * @notice Updates the static max ratio (denominated in the underlying's decimals).
   * @param newRatio The new ratio limit
   *
   * Example:
   *  - If underlying has 6 decimals, and you want 2.5 underlying tokens as cap,
   *    set `newRatio = 2.5e6`.
   *  - If underlying has 18 decimals, and you want 1.1 underlying tokens as cap,
   *    set `newRatio = 1.1e18`.
   */
  function setMaxVaultRatio(uint256 newRatio) public onlyRole(ADMIN_ROLE) {
    // Ensure ratio is at least 1.0 in terms of underlying decimals
    if (newRatio < 10 ** underlyingDecimals) revert InvalidMaxRatio();
    uint256 oldRatio = maxVaultRatio;
    maxVaultRatio = newRatio;
    emit MaxVaultRatioUpdated(oldRatio, newRatio);
  }

  /// @notice Returns the address of the underlying asset
  /// @return The address of the underlying token
  function getUnderlyingAsset() external view returns (address) {
    return vault.asset();
  }
}
