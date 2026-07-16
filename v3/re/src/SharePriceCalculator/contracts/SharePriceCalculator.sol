// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/ISharePriceCalculator.sol";
import "./interfaces/IDepositTokenRegistry.sol";
import "./interfaces/IPriceOracle.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title SharePriceCalculator
/// @notice Handles conversion between token amounts and shares based on current share price
/// @dev Uses price oracles to determine token values and maintains a global share price
contract SharePriceCalculator is ISharePriceCalculator, AccessControl {
  using Math for uint256;

  error ZeroAddress();
  error InvalidPrice();
  error InvalidTokenAddress();
  error AmountTooLow();
  error TokenNotAcceptedOrPaused();
  error InvalidTokenPrice();

  bytes32 public constant PRICE_SETTER_ROLE = keccak256("PRICE_SETTER_ROLE");

  uint256 private sharePrice;
  IDepositTokenRegistry public immutable depositTokenRegistry;

  /// @notice Initializes the SharePriceCalculator with a deposit token registry
  /// @param _depositTokenRegistry Address of the deposit token registry contract
  /// @dev Sets initial share price to 1e18 (1:1 ratio)
  constructor(
    address _depositTokenRegistry,
    uint256 _initialSharePrice,
    address _admin,
    address _priceSetter
  ) {
    if (_depositTokenRegistry == address(0)) revert ZeroAddress();
    if (_initialSharePrice == 0) revert InvalidPrice();
    if (_admin == address(0)) revert ZeroAddress();
    if (_priceSetter == address(0)) revert ZeroAddress();

    depositTokenRegistry = IDepositTokenRegistry(_depositTokenRegistry);
    sharePrice = _initialSharePrice; // Initialize with 1:1 ratio

    _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    _grantRole(PRICE_SETTER_ROLE, _priceSetter);
  }

  /// @notice Updates the global share price
  /// @param newPrice New share price value (scaled by 1e18)
  /// @dev Only callable by addresses with PRICE_SETTER_ROLE
  /// @dev Emits SharePriceSet event
  function setSharePrice(
    uint256 newPrice
  ) external onlyRole(PRICE_SETTER_ROLE) {
    if (newPrice == 0) revert InvalidPrice();
    uint256 oldPrice = sharePrice;
    sharePrice = newPrice;
    emit SharePriceSet(oldPrice, newPrice);
  }

  /// @notice Returns the current share price
  /// @return Current share price scaled by 1e18
  function getSharePrice() external view returns (uint256) {
    return sharePrice;
  }

  /// @notice Converts a token amount to equivalent shares
  /// @param token Address of the token to convert
  /// @param amount Amount of tokens to convert (in token's native decimals)
  /// @return Number of shares equivalent to the token amount
  /// @dev Formula: shares = (amount * tokenPrice * 1e18) / (10^tokenDecimals * 10^oracleDecimals * sharePrice)
  function convertToShares(
    address token,
    uint256 amount
  ) external view returns (uint256) {
    if (token == address(0)) revert InvalidTokenAddress();
    if (amount == 0) revert AmountTooLow();

    (
      bool isAccepted,
      bool paused,
      address priceOracle,
      uint8 tokenDecimals
    ) = depositTokenRegistry.getTokenPriceInfo(token);
    if (!isAccepted || paused) revert TokenNotAcceptedOrPaused();

    IPriceOracle oracle = IPriceOracle(priceOracle);
    IPriceOracle.PriceInfo memory priceInfo = oracle.latestPriceInfo();

    if (
      priceInfo.status != IPriceOracle.PriceStatus.VALID &&
      priceInfo.status != IPriceOracle.PriceStatus.CAPPED
    ) revert InvalidTokenPrice();

    uint256 tokenPrice = priceInfo.price;
    uint8 oracleDecimals = oracle.decimals();

    uint256 tokenValue = amount.mulDiv(
      tokenPrice.mulDiv(1e18, 10 ** tokenDecimals),
      10 ** oracleDecimals
    );
    return tokenValue.mulDiv(1e18, sharePrice);
  }

  /// @notice Converts a number of shares to equivalent token amount
  /// @param token Address of the token to convert to
  /// @param shares Number of shares to convert
  /// @return Amount of tokens equivalent to the shares (in token's native decimals)
  /// @dev Formula: tokens = (shares * sharePrice * 10^tokenDecimals * 10^oracleDecimals) / (tokenPrice * 1e36)
  function convertFromShares(
    address token,
    uint256 shares
  ) external view returns (uint256) {
    if (token == address(0)) revert InvalidTokenAddress();
    if (shares == 0) revert AmountTooLow();

    (
      bool isAccepted,
      bool paused,
      address priceOracle,
      uint8 tokenDecimals
    ) = depositTokenRegistry.getTokenPriceInfo(token);
    if (!isAccepted || paused) revert TokenNotAcceptedOrPaused();

    IPriceOracle oracle = IPriceOracle(priceOracle);
    IPriceOracle.PriceInfo memory priceInfo = oracle.latestPriceInfo();

    if (
      priceInfo.status != IPriceOracle.PriceStatus.VALID &&
      priceInfo.status != IPriceOracle.PriceStatus.CAPPED
    ) revert InvalidTokenPrice();

    uint256 tokenPrice = priceInfo.price;
    uint8 oracleDecimals = oracle.decimals();

    uint256 tokenValue = shares.mulDiv(sharePrice, 1e18);
    return
      tokenValue.mulDiv(
        10 ** tokenDecimals * 10 ** oracleDecimals,
        tokenPrice * 1e18
      );
  }
}
