// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @notice Decoded representation of a packed offer stored on-chain.
/// @dev Field bit widths match the packing layout in {LibOffer.pack}.
struct OfferUnpacked {
  uint40 prev;
  uint40 next;
  uint32 expiry;
  uint48 gives;
  uint48 received;
  int24 tick;
  uint24 provision; // stored in 23 bits
  bool isActive; // stored in 1 bit
}

/// @title LibOffer
/// @notice Helpers to pack/unpack offer words and manage offer storage.
/// @dev Offers are stored as a single packed 256-bit word addressed by
/// (`market`, `offerId`). Owner and next-offer-id are stored in dedicated maps.
library LibOffer {
  // 0x2c9e7680
  /// @notice Thrown when incrementing the next offer id would overflow 40 bits.
  error OfferIdOverflow();

  uint256 private constant _MAX_OFFER_ID = 0xffffffffff; // 40 bits
  uint256 private constant _PREV_MASK = 0xffffffffff; // 5 bytes
  uint256 private constant _NEXT_MASK = 0xffffffffff; // 5 bytes
  uint256 private constant _EXPIRY_MASK = 0xffffffff; // 4 bytes
  uint256 private constant _GIVES_MASK = 0xffffffffffff; // 6 bytes
  uint256 private constant _RECEIVED_MASK = 0xffffffffffff; // 6 bytes
  uint256 private constant _TICK_MASK = 0xffffff; // 3 bytes
  uint256 private constant _PROVISION_MASK = 0x7fffff; // 3 bytes - 1 bit
  uint256 private constant _IS_ACTIVE_MASK = 0x01; // 1 bit

  uint256 private constant _PREV_SHIFT = 0xd8;
  uint256 private constant _NEXT_SHIFT = 0xb0;
  uint256 private constant _EXPIRY_SHIFT = 0x90;
  uint256 private constant _GIVES_SHIFT = 0x60;
  uint256 private constant _RECEIVED_SHIFT = 0x30;
  uint256 private constant _TICK_SHIFT = 0x18;
  uint256 private constant _PROVISION_SHIFT = 0x01;
  uint256 private constant _IS_ACTIVE_SHIFT = 0x00;

  /**
   * @dev The offer slot of (`market`, `offerId`) is given by:
   * ```
   *     mstore(0x20, _OFFER_SEED)
   *     mstore(0x05, offerId)
   *     mstore(0x00, market)
   *     let offerSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("offers()"))
   */
  uint256 private constant _OFFER_SEED = 0x68d83aa7;

  /**
   * @dev The offer owner slot of (`market`, `offerId`) is given by:
   * ```
   *     mstore(0x20, _OFFER_OWNERS_SEED)
   *     mstore(0x05, offerId)
   *     mstore(0x00, market)
   *     let offerSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("offerOwners()"))
   */
  uint256 private constant _OFFER_OWNERS_SEED = 0xb9c53f1e;

  /**
   * @dev The offer owner slot of (`market`) is given by:
   * ```
   *     mstore(0x20, _NEXT_OFFER_ID_SLOT)
   *     mstore(0x00, market)
   *     let offerSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("nextOfferId()"))
   */
  uint256 private constant _NEXT_OFFER_ID_SLOT = 0x5f5d0655;

  // storage functions

  /// @notice Reads the packed offer word for (`market`, `offerId`).
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @return _offer The 256-bit packed offer word.
  function offer(bytes32 market, uint40 offerId) internal view returns (uint256 _offer) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)
      _offer := sload(keccak256(0x00, 0x40))
    }
  }

  /// @notice Reads the owner of the offer (`market`, `offerId`).
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @return _offerOwner The owner address.
  function offerOwner(bytes32 market, uint40 offerId) internal view returns (address _offerOwner) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_OWNERS_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)
      _offerOwner := sload(keccak256(0x00, 0x40))
    }
  }

  /// @notice Writes the packed offer word for (`market`, `offerId`).
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @param _offer The packed offer word to store.
  function setOffer(bytes32 market, uint40 offerId, uint256 _offer) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)
      sstore(keccak256(0x00, 0x40), _offer)
    }
  }

  /// @notice Sets the owner of the offer (`market`, `offerId`).
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @param _offerOwner The owner address to set.
  function setOfferOwner(bytes32 market, uint40 offerId, address _offerOwner) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_OWNERS_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)
      sstore(keccak256(0x00, 0x40), _offerOwner)
    }
  }

  /// @notice Increments and returns the next offer id for `market`.
  /// @dev Reverts with `OfferIdOverflow()` if the next id would exceed 40 bits.
  /// @param market The market identifier.
  /// @return _nextOfferId The next offer id after incrementing.
  function nextOfferId(bytes32 market) internal returns (uint40 _nextOfferId) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _NEXT_OFFER_ID_SLOT)
      mstore(0x00, market)
      let slot := keccak256(0x00, 0x40)
      _nextOfferId := add(sload(slot), 0x01)
      if gt(_nextOfferId, _MAX_OFFER_ID) {
        mstore(0x00, 0x2c9e7680) // `OfferIdOverflow()`.
        revert(0x1c, 0x04)
      }
      sstore(slot, _nextOfferId)
    }
  }

  /// @notice Updates the `next` pointer of an offer.
  /// @param market The market identifier.
  /// @param offerId The offer id to modify.
  /// @param _nextOfferId The id to set as `next`.
  function setNext(bytes32 market, uint40 offerId, uint40 _nextOfferId) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)

      let slot := keccak256(0x00, 0x40)
      let value := sload(slot)

      value := or(and(value, not(shl(_NEXT_SHIFT, _NEXT_MASK))), shl(_NEXT_SHIFT, _nextOfferId))
      sstore(slot, value)
    }
  }

  /// @notice Updates the `prev` pointer of an offer.
  /// @param market The market identifier.
  /// @param offerId The offer id to modify.
  /// @param _prevOfferId The id to set as `prev`.
  function setPrev(bytes32 market, uint40 offerId, uint40 _prevOfferId) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)

      let slot := keccak256(0x00, 0x40)
      let value := sload(slot)

      value := or(shr(0x28, shl(0x28, value)), shl(_PREV_SHIFT, _prevOfferId))
      sstore(slot, value)
    }
  }

  /// @notice Decodes a packed offer word into `result`.
  /// @param result The struct to write into.
  /// @param _offer The packed offer word to decode.
  function from(OfferUnpacked memory result, uint256 _offer) internal pure {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(add(result, 0xe0), and(_offer, _IS_ACTIVE_MASK))

      mstore(add(result, 0xc0), and(shr(_PROVISION_SHIFT, _offer), _PROVISION_MASK))

      mstore(add(result, 0xa0), signextend(0x02, and(shr(_TICK_SHIFT, _offer), _TICK_MASK)))

      mstore(add(result, 0x80), and(shr(_RECEIVED_SHIFT, _offer), _RECEIVED_MASK))

      mstore(add(result, 0x60), and(shr(_GIVES_SHIFT, _offer), _GIVES_MASK))

      mstore(add(result, 0x40), and(shr(_EXPIRY_SHIFT, _offer), _EXPIRY_MASK))

      mstore(add(result, 0x20), and(shr(_NEXT_SHIFT, _offer), _NEXT_MASK))

      mstore(result, and(shr(_PREV_SHIFT, _offer), _PREV_MASK))
    }
  }

  /// @notice Packs an `OfferUnpacked` struct into a 256-bit word.
  /// @param _offer The struct to encode.
  /// @return result The packed offer word.
  function pack(OfferUnpacked memory _offer) internal pure returns (uint256 result) {
    /// @solidity memory-safe-assembly
    assembly {
      result := shl(_PREV_SHIFT, and(mload(_offer), _PREV_MASK)) // prev 40 bits
      result := or(result, shl(_NEXT_SHIFT, and(mload(add(_offer, 0x20)), _NEXT_MASK))) // next 40 bits
      result := or(result, shl(_EXPIRY_SHIFT, and(mload(add(_offer, 0x40)), _EXPIRY_MASK))) // expiry 32 bits
      result := or(result, shl(_GIVES_SHIFT, and(mload(add(_offer, 0x60)), _GIVES_MASK))) // gives 48 bits
      result := or(result, shl(_RECEIVED_SHIFT, and(mload(add(_offer, 0x80)), _RECEIVED_MASK))) // received 48 bits
      result := or(result, shl(_TICK_SHIFT, and(mload(add(_offer, 0xa0)), _TICK_MASK))) // tick 24 bits
      result := or(result, shl(_PROVISION_SHIFT, and(mload(add(_offer, 0xc0)), _PROVISION_MASK))) // provision 23 bits
      result := or(result, shl(_IS_ACTIVE_SHIFT, and(mload(add(_offer, 0xe0)), _IS_ACTIVE_MASK))) // isActive 1 bit
    }
  }
}
