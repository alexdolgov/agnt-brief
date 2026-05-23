// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title Market types and helpers
/// @notice Defines market parameters and provides storage and utility functions.
/// @dev Units:
/// - outboundUnits/inboundUnits: denomination factors for normalizing amounts
/// - minOutboundUnits: minimum allowed outbound volume in units (not tokens)
/// - fees: fee parameter (encoding is implementation-specific)
/// Markets are addressed by `bytes32` ids derived from their parameters.
struct Market {
  address outboundToken;
  uint64 outboundUnits;
  uint32 minOutboundUnits; // actually 31 bits
  bool active;
  address inboundToken;
  uint64 inboundUnits;
  uint16 tickSpacing;
  uint16 fees;
}

library LibMarket {
  /// @notice Fired when a market has already been created.
  /// @dev error sig: 0x6b04142c
  error AlreadyCreated();

  /// @notice Fired when a market has not been created yet.
  /// @dev error sig: 0x8fead4d2
  error NotCreated();

  /// @notice Fired when a market is not active.\
  error NotActive();

  /// @notice Fired when a market's density is too low.
  error DensityTooLow();

  /// @notice fired when an amount overflows.
  /// @dev error sig: 0x0590fb9f
  error AmountOverflow();

  /// @notice fired when units are invalid on market creation.
  error InvalidUnits();

  /// @notice fired when the tick spacing is invalid on market creation.
  error InvalidTickSpacing();

  /// @notice fired when the min outbound units are invalid (min should 0)
  error InvalidMinOutboundUnits();

  /// @notice Emitted when a new market is created.
  /// @param market The market id.
  /// @param outboundToken The outbound token address.
  /// @param inboundToken The inbound token address.
  /// @param outboundUnits The outbound units.
  /// @param minOutboundUnits The minimum outbound units.
  /// @param inboundUnits The inbound units.
  /// @param fees The fees.
  /// @dev when this event is emitted, it implies that the market is active by default.
  event NewMarket(
    bytes32 indexed market,
    address indexed outboundToken,
    address indexed inboundToken,
    uint64 outboundUnits,
    uint32 minOutboundUnits,
    uint64 inboundUnits,
    uint16 tickSpacing,
    uint16 fees
  );

  /// @notice Emitted when the fees are set for a market.
  /// @param market The market id.
  /// @param fees The fees.
  event SetFees(bytes32 indexed market, uint16 fees);

  /// @notice Emitted when the minimum outbound units are set for a market.
  /// @param market The market id.
  /// @param minOutboundUnits The minimum outbound units.
  event SetMinOutboundUnits(bytes32 indexed market, uint32 minOutboundUnits);

  /// @notice Emitted when the active status is set for a market.
  /// @param market The market id.
  /// @param active The active status.
  event SetActive(bytes32 indexed market, bool active);

  /// @dev keccak256("NewMarket(bytes32,address,address,uint64,uint32,uint64,uint16,uint16)")
  uint256 private constant _NEW_MARKET_EVENT_SIGNATURE =
    0xb5a95a57e9ed6c7cb9f9d1144b00038abd73df63dcd17f11b57373d8afe19a6d;

  /// @dev keccak256("SetFees(bytes32,uint16)")
  uint256 private constant _SET_FEES_EVENT_SIGNATURE =
    0xed4e9269cdb52c29ee7435b63d3990ebe93969a5acfbfc3cb9c5006b5f75ffe9;

  /// @dev keccak256("SetMinOutboundUnits(bytes32,uint32)")
  uint256 private constant _SET_MIN_OUTBOUND_UNITS_EVENT_SIGNATURE =
    0x5597c138aeaff29dbadfaddbad6aa60f74d3ee0ef464e23cd3de46c5ccf9b6d7;

  /// @dev keccak256("SetActive(bytes32,bool)")
  uint256 private constant _SET_ACTIVE_EVENT_SIGNATURE =
    0xcddecc2f17a0c961cfad3af69d94ee8d5ece1542dc95fd53f898ab77781272c4;

  uint256 private constant _UNIT_MASK = 0xffffffffffffffff;
  uint256 private constant _MIN_MASK = 0x7fffffff;
  uint256 private constant _FEES_MASK = 0xffff;
  uint256 private constant _TICK_SPACING_MASK = 0xffff;
  uint256 private constant _ACTIVE_MASK = 0x01;

  uint256 private constant _TOKEN_POSITION = 0x60;
  uint256 private constant _UNIT_POSITION = 0x20;
  uint256 private constant _TICK_SPACING_POSITION = 0x10;
  uint256 private constant _MIN_POSITION = 0x01;

  uint256 private constant _OUTBOUND_TOKEN_MEMORY_OFFSET = 0x00;
  uint256 private constant _OUTBOUND_UNITS_MEMORY_OFFSET = 0x20;
  uint256 private constant _MIN_MEMORY_OFFSET = 0x40;
  uint256 private constant _ACTIVE_MEMORY_OFFSET = 0x60;
  uint256 private constant _INBOUND_TOKEN_MEMORY_OFFSET = 0x80;
  uint256 private constant _INBOUND_UNITS_MEMORY_OFFSET = 0xa0;
  uint256 private constant _TICK_SPACING_MEMORY_OFFSET = 0xc0;
  uint256 private constant _FEES_MEMORY_OFFSET = 0xe0;

  /**
   * @dev The market slot of (`market`) is given by:
   * ```
   *     mstore(0x20, _MARKET_SEED)
   *     mstore(0x00, market)
   *     let marketSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("markets()"))
   */
  uint256 private constant _MARKET_SEED = 0x3ac2a032;

  /// @notice Compute the market id from its parameters.
  /// @param _market The market parameters.
  /// @return _id The derived market id.
  function id(Market memory _market) internal pure returns (bytes32 _id) {
    /// @solidity memory-safe-assembly
    assembly {
      let m := mload(0x40)
      mcopy(m, _market, 0x40) // outbound token and units
      mcopy(add(m, 0x40), add(_market, _INBOUND_TOKEN_MEMORY_OFFSET), 0x60) // inbound token, units and tick spacing
      _id := keccak256(m, 0xa0)
      mstore(0x40, add(m, 0xa0)) // update the free memory pointer
    }
  }

  /// @notice Load a market from storage by id.
  /// @param marketId The market id.
  /// @return _market The loaded market parameters.
  function market(bytes32 marketId) internal view returns (Market memory _market) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _MARKET_SEED)
      mstore(0x00, marketId)
      let slot := keccak256(0x00, 0x40)
      let left := sload(slot)
      let right := sload(add(slot, 0x01))

      mstore(_market, shr(_TOKEN_POSITION, left)) // outbound token
      mstore(add(_market, _OUTBOUND_UNITS_MEMORY_OFFSET), and(shr(_UNIT_POSITION, left), _UNIT_MASK)) // outbound units
      mstore(add(_market, _MIN_MEMORY_OFFSET), and(shr(_MIN_POSITION, left), _MIN_MASK)) // min outbound units
      mstore(add(_market, _ACTIVE_MEMORY_OFFSET), and(left, _ACTIVE_MASK)) // active

      mstore(add(_market, _INBOUND_TOKEN_MEMORY_OFFSET), shr(_TOKEN_POSITION, right)) // inbound token
      mstore(add(_market, _INBOUND_UNITS_MEMORY_OFFSET), and(shr(_UNIT_POSITION, right), _UNIT_MASK)) // inbound units
      mstore(add(_market, _TICK_SPACING_MEMORY_OFFSET), and(shr(_TICK_SPACING_POSITION, right), _TICK_SPACING_MASK)) // tick spacing
      mstore(add(_market, _FEES_MEMORY_OFFSET), and(right, _FEES_MASK)) // fees
    }
  }

  /// @notice Create a new market and persist it to storage.
  /// @dev Reverts if a market with the same id already exists.
  /// Emits `NewMarket`.
  /// @param _market The market parameters to create.
  /// @return marketId The derived id of the created market.
  function create(Market memory _market) internal returns (bytes32 marketId) {
    if (_market.outboundUnits == 0 || _market.inboundUnits == 0) revert InvalidUnits();
    if (_market.tickSpacing == 0) revert InvalidTickSpacing();
    if (_market.minOutboundUnits == 0) revert InvalidMinOutboundUnits();
    /// @solidity memory-safe-assembly
    assembly {
      let m := mload(0x40)
      mcopy(m, _market, 0x40) // outbound token and units
      mcopy(add(m, 0x40), add(_market, _INBOUND_TOKEN_MEMORY_OFFSET), 0x60) // inbound token units and tick spacing
      marketId := keccak256(m, 0xa0)

      mstore(0x20, _MARKET_SEED)
      mstore(0x00, marketId)
      let marketSlot := keccak256(0x00, 0x40)

      if iszero(iszero(sload(marketSlot))) {
        mstore(0x00, 0x6b04142c) // `AlreadyCreated()`.
        revert(0x1c, 0x04)
      }

      // forgefmt: disable-next-item
      let left := or(
        shl(_TOKEN_POSITION, mload(_market)), // outbound token
        or(
          shl(_UNIT_POSITION, mload(add(_market, _OUTBOUND_UNITS_MEMORY_OFFSET))), // outbound units
          or(
            shl(_MIN_POSITION, and(mload(add(_market, _MIN_MEMORY_OFFSET)), _MIN_MASK)), // min outbound units
            iszero(iszero(mload(add(_market, _ACTIVE_MEMORY_OFFSET)))) // active
          ) 
        )
      )

      // forgefmt: disable-next-item
      let right := or(
        shl(_TOKEN_POSITION, mload(add(_market, _INBOUND_TOKEN_MEMORY_OFFSET))), // inbound token
        or(
          shl(_UNIT_POSITION, mload(add(_market, _INBOUND_UNITS_MEMORY_OFFSET))), // inbound units
          or(
            shl(_TICK_SPACING_POSITION, mload(add(_market, _TICK_SPACING_MEMORY_OFFSET))), // tick spacing
            mload(add(_market, _FEES_MEMORY_OFFSET)) // fees
          )
        )
      )
      sstore(marketSlot, left)
      sstore(add(marketSlot, 0x01), right)

      // data for the event (outbound units, inbound units, tick spacing, fees)
      mcopy(m, add(_market, _OUTBOUND_UNITS_MEMORY_OFFSET), 0x40)
      mcopy(add(m, 0x40), add(_market, _INBOUND_UNITS_MEMORY_OFFSET), 0x60)

      // log event
      log4(
        m,
        0xa0,
        _NEW_MARKET_EVENT_SIGNATURE,
        marketId,
        mload(_market),
        mload(add(_market, _INBOUND_TOKEN_MEMORY_OFFSET))
      )

      mstore(0x40, add(m, 0xa0)) // update the free memory pointer
    }
  }

  /// @notice Revert if the market is not active.
  /// @param _market The market to check.
  function checkActive(Market memory _market) internal pure {
    if (!_market.active) revert NotActive();
  }

  /// @notice Revert if `volume` is less than `minOutboundUnits`.
  /// @dev `volume` is in outbound unit counts, not raw token decimals.
  /// @param _market The market to check.
  /// @param volume The normalized outbound volume to validate.
  function checkVolume(Market memory _market, uint48 volume) internal pure {
    unchecked {
      if (volume < uint64(_market.minOutboundUnits)) revert DensityTooLow();
    }
  }

  /// @notice Set fees for a market.
  /// @dev Reverts if the market is not created. Emits `SetFees`.
  /// @param marketId The market id.
  /// @param fees The new fee parameter (format is implementation-specific).
  function setFees(bytes32 marketId, uint16 fees) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _MARKET_SEED)
      mstore(0x00, marketId)
      let slot := add(keccak256(0x00, 0x40), 0x01)
      let value := sload(slot)
      // revert if market is not created
      if iszero(value) {
        mstore(0x00, 0x8fead4d2) // `NotCreated()`.
        revert(0x1c, 0x04)
      }
      // set fees
      value := or(shl(_TICK_SPACING_POSITION, shr(_TICK_SPACING_POSITION, value)), fees)
      sstore(slot, value)
      // log event
      mstore(0x00, fees)
      log2(0x00, 0x20, _SET_FEES_EVENT_SIGNATURE, marketId)
    }
  }

  /// @notice Set the minimum outbound units for a market.
  /// @dev Reverts if the market is not created. Emits `SetMinOutboundUnits`.
  /// @param marketId The market id.
  /// @param minOutboundUnits The new minimum outbound unit count.
  function setMinOutboundUnits(bytes32 marketId, uint32 minOutboundUnits) internal {
    if (minOutboundUnits == 0) revert InvalidMinOutboundUnits();
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _MARKET_SEED)
      mstore(0x00, marketId)
      let slot := keccak256(0x00, 0x40)
      let value := sload(slot)
      // revert if market is not created
      if iszero(value) {
        mstore(0x00, 0x8fead4d2) // `NotCreated()`.
        revert(0x1c, 0x04)
      }
      // set min outbound units
      value := or(and(value, not(shl(_MIN_POSITION, _MIN_MASK))), shl(_MIN_POSITION, and(minOutboundUnits, _MIN_MASK)))
      sstore(slot, value)
      // log event
      mstore(0x00, minOutboundUnits)
      log2(0x00, 0x20, _SET_MIN_OUTBOUND_UNITS_EVENT_SIGNATURE, marketId)
    }
  }

  /// @notice Set the active flag for a market.
  /// @dev Reverts if the market is not created. Emits `SetActive`.
  /// @param marketId The market id.
  /// @param active The new active status.
  function setActive(bytes32 marketId, bool active) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _MARKET_SEED)
      mstore(0x00, marketId)
      let slot := keccak256(0x00, 0x40)
      let value := sload(slot)
      // revert if market is not created
      if iszero(value) {
        mstore(0x00, 0x8fead4d2) // `NotCreated()`.
        revert(0x1c, 0x04)
      }
      // set active
      value := or(shl(0x01, shr(0x01, value)), iszero(iszero(active)))
      sstore(slot, value)
      // log event
      mstore(0x00, active)
      log2(0x00, 0x20, _SET_ACTIVE_EVENT_SIGNATURE, marketId)
    }
  }

  /// @notice Normalize a raw volume into unit counts.
  /// @dev Returns `volume / (fillWants ? outboundUnits : inboundUnits)`, reverts on 64-bit overflow.
  /// @param _market The market reference for units.
  /// @param volume The raw token volume.
  /// @param fillWants If true, divide by `outboundUnits`, else by `inboundUnits`.
  /// @return normalizedVolume The normalized 64-bit unit count.
  function normalizeVolume(Market memory _market, uint256 volume, bool fillWants)
    internal
    pure
    returns (uint64 normalizedVolume)
  {
    // if fillWants is true then use outbound units add(_market, 0x20)
    // if fillWants is false then use inbound units add(_market, 0x80)
    /// @solidity memory-safe-assembly
    assembly {
      // equivalent to volume / (fillWants ? outbound_units : inbound_units)
      normalizedVolume := div(
        volume,
        mload(
          add(
            _market,
            xor(
              _OUTBOUND_UNITS_MEMORY_OFFSET,
              mul(xor(_INBOUND_UNITS_MEMORY_OFFSET, _OUTBOUND_UNITS_MEMORY_OFFSET), iszero(fillWants))
            )
          )
        )
      )

      // revert if overflow 64 bits
      if iszero(iszero(shr(64, normalizedVolume))) {
        mstore(0x00, 0x0590fb9f) // `AmountOverflow()`.
        revert(0x1c, 0x04)
      }
    }
  }

  /// @notice Normalize a raw `gives` into outbound unit counts, as 48-bit.
  /// @dev Returns `gives / outboundUnits`, reverts on 48-bit overflow.
  /// @param _market The market reference for outbound units.
  /// @param gives The raw outbound token amount.
  /// @return normalizedGives The normalized 48-bit unit count.
  function normalizeGives(Market memory _market, uint256 gives) internal pure returns (uint48 normalizedGives) {
    // use outbound units add(_market, 0x20)
    /// @solidity memory-safe-assembly
    assembly {
      normalizedGives := div(gives, mload(add(_market, _OUTBOUND_UNITS_MEMORY_OFFSET)))

      // revert if overflow 48 bits
      if iszero(iszero(shr(48, normalizedGives))) {
        mstore(0x00, 0x0590fb9f) // `AmountOverflow()`.
        revert(0x1c, 0x04)
      }
    }
  }
}
