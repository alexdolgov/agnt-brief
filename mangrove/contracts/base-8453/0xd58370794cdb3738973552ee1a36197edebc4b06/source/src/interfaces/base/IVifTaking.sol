// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title IVifTaking
/// @notice Market order consumption and cleanup using flash accounting.
/// @dev The `taker` must call directly or authorize the caller (e.g., router)
/// via the authorizer. All effects accrue to flash-accounting balances and must
/// be settled after via `IVifCore.settle`/`IVifCore.take` within a `lock`.
interface IVifTaking {
  /// @notice Emitted when a market order is executed.
  event MarketOrder(
    bytes32 indexed market,
    address indexed taker,
    uint256 got,
    uint256 gave,
    uint256 fee,
    uint256 bounty,
    uint256 fillVolume,
    bool fillWants,
    int24 maxTick
  );

  /// @notice Emitted when an offer is cleaned.
  event OfferCleaned(bytes32 indexed market, uint40 indexed offerId, uint256 bounty);

  /// @notice Consume offers from a market up to price/volume/offer-count limits.
  /// @dev `maxTick` caps the per-offer price: stop when an offer's tick exceeds
  /// it; use `type(int24).max` for no cap. `fillVolume` is the exact volume to
  /// send if `fillWants == false` (exact-inbound), or the exact volume to
  /// receive if `fillWants == true` (exact-outbound). `maxOffers` bounds the
  /// number of consumed offers to control gas. Fees are paid by the taker in the
  /// inbound token and reported as `fee` (denominated in the sent token).
  /// Effects use flash accounting and must be settled after.
  /// @param taker The taker account; must be the caller or have delegated authorization.
  /// @param market The market identifier.
  /// @param maxTick The maximum acceptable per-offer tick.
  /// @param fillVolume Exact volume to send (if `fillWants == false`) or receive (if `true`).
  /// @param fillWants Whether `fillVolume` represents outbound received (`true`) or inbound sent (`false`).
  /// @param maxOffers Maximum number of offers to consume.
  /// @return gave Tokens sent by the taker (inbound).
  /// @return got Tokens received by the taker (outbound).
  /// @return fee Fee paid by the taker (denominated in sent tokens).
  /// @return bounty Native tokens awarded for cleaning expired offers during execution.
  function consume(address taker, bytes32 market, int24 maxTick, uint256 fillVolume, bool fillWants, uint256 maxOffers)
    external
    returns (uint256 gave, uint256 got, uint256 fee, uint256 bounty);

  /// @notice Clean an expired offer and collect bounty if applicable.
  /// @dev Performs only flash-accounting updates; settle after within the `lock`.
  /// @param market The market identifier.
  /// @param offerId The offer to clean if expired.
  /// @return bounty Native tokens awarded for cleaning.
  /// @return success True if the offer was cleaned.
  function clean(bytes32 market, uint40 offerId) external returns (uint256 bounty, bool success);
}
