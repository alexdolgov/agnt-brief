// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title IVifMaking
/// @notice Create, edit, claim, and cancel limit offers using flash accounting.
/// @dev All methods operate within the flash-accounting model (see `IVifCore.lock`).
/// Actions accrue per-token global debts/credits that must be settled via
/// `IVifCore.settle`/`IVifCore.take` before the end of the lock.
interface IVifMaking {
  /// @notice Emitted when a new offer is created.
  event NewOffer(
    bytes32 indexed market,
    uint40 indexed offerId,
    address indexed maker,
    uint256 gives,
    int24 tick,
    uint32 expiry,
    uint24 provision
  );
  /// @notice Emitted when an existing offer is updated.
  event OfferUpdated(
    bytes32 indexed market,
    uint40 indexed offerId,
    uint256 gives,
    uint256 claimedReceived,
    int24 tick,
    uint32 expiry,
    uint24 provision
  );
  /// @notice Emitted when an offer is cancelled.
  event OfferCancelled(
    bytes32 indexed market, uint40 indexed offerId, uint256 outbound, uint256 inbound, uint256 provision
  );
  /// @notice Emitted when an offer's claim is processed.
  event OfferClaimed(
    bytes32 indexed market, uint40 indexed offerId, uint256 outbound, uint256 inbound, uint256 provision
  );

  /// @notice Create or edit an offer.
  /// @dev If `initialOfferId == 0`, a new offer is created; otherwise the existing
  /// offer identified by `initialOfferId` is edited. Each offer is immutably bound
  /// to its original `maker`; edits must use the same `maker`.
  ///
  /// Tick is the log base 1.00001 (0.1 bps) of price where
  /// price = inboundAmount / outboundAmount. A better price for the maker implies
  /// a higher `tick`.
  ///
  /// `gives` is rounded down to a multiple of the market's `outboundUnits`:
  /// gives := floor(gives / outboundUnits) * outboundUnits. Callers must handle
  /// that the actually debited `gives` may be lower than requested.
  ///
  /// Optional expiry (in seconds) can be set via `expiry` (0 for none). If an
  /// expiry is set, a provision is required and will be floored up to the global
  /// provision requirement; `provision` is specified in provision units.
  ///
  /// The effective `gives` must satisfy the market minimum volume:
  /// effectiveGives >= minOutboundUnits * outboundUnits, otherwise the call reverts.
  ///
  /// All effects accrue to flash-accounting balances and must be settled before
  /// the end of the surrounding `lock`.
  ///
  /// This function also claims received amount if the offer is edited.
  /// @param maker The offer owner; must match the original owner when editing.
  /// @param market The market identifier.
  /// @param initialOfferId 0 to create, or the existing offer id to edit.
  /// @param gives Outbound amount (rounded down to `outboundUnits`).
  /// @param tick Log-price in 0.1 bps ticks; higher means better for maker, rounded towards 0 to the closest tick according to the tick spacing.
  /// @param expiry Optional expiry timestamp (0 for none).
  /// @param provision Provision in provision units; required/floored if `expiry` > 0.
  /// @return offerId The created or updated offer id.
  /// @return claimedReceived The claimed received amount.
  function make(
    address maker,
    bytes32 market,
    uint40 initialOfferId,
    uint256 gives,
    int24 tick,
    uint32 expiry,
    uint24 provision
  ) external returns (uint40 offerId, uint256 claimedReceived);

  /// @notice Claim the received amount from an offer without retracting it.
  /// @dev If the offer is not live anymore or has expired (but not yet cleaned),
  /// this also retracts the offer and returns the remaining promised amount and
  /// provision. Effects are accrued via flash accounting and must be settled
  /// before the end of the surrounding `lock`.
  /// @param market The market identifier.
  /// @param offerId The offer to claim from.
  /// @return inbound The claimed inbound amount.
  /// @return outbound The remaining outbound (promised) amount returned if retracted.
  /// @return provision The provision returned if retracted.
  function claim(bytes32 market, uint40 offerId) external returns (uint256 inbound, uint256 outbound, uint256 provision);

  /// @notice Cancel an offer and claim all remaining balances.
  /// @dev Cancels the offer if live, claims remaining promised outbound, any
  /// received inbound, and the provision. Effects accrue via flash accounting
  /// and must be settled before the end of the surrounding `lock`.
  /// @param market The market identifier.
  /// @param offerId The offer to cancel.
  /// @return inbound The inbound amount claimed.
  /// @return outbound The remaining outbound (promised) amount returned.
  /// @return provision The provision returned.
  function cancel(bytes32 market, uint40 offerId)
    external
    returns (uint256 inbound, uint256 outbound, uint256 provision);
}
