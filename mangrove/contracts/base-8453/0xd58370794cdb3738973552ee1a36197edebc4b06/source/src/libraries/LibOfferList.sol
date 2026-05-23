// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibOffer, OfferUnpacked} from "./LibOffer.sol";
import {LibTree} from "./tree/LibTree.sol";
import {LibTick} from "./LibTick.sol";

/// @notice Decoded representation of a packed offer list bucket.
/// @dev Field bit widths match the packing layout in {LibOfferList.pack}.
struct OfferListUnpacked {
  uint40 head;
  uint40 tail;
  uint40 offerCount;
  uint64 totalGives;
  uint24 index;
}

/// @title LibOfferList
/// @notice Manages per-market linked lists of offers and aggregates.
/// @dev Each list is stored as a single 256-bit word addressed by (`market`, `index`).
/// Uses {LibOffer} to update per-offer `prev`/`next` pointers when inserting/unlinking.
library LibOfferList {
  using LibOffer for bytes32;
  using LibTree for *;
  using LibTick for int24;

  /// @notice Thrown when adding `gives` would overflow the 64-bit `totalGives` accumulator.
  /// @dev Error signature: 0xc9bc30a2. Example: inserting ~65k max-size offers.
  error TotalGivesOverflow();

  /// @dev Error signature: 0x0a869105. unlinking an offer that is not in the list.
  error CannotUnlink();

  uint256 private constant _HEAD_MASK = 0xffffffffff; // 5 bytes
  uint256 private constant _TAIL_MASK = 0xffffffffff; // 5 bytes
  uint256 private constant _OFFER_COUNT_MASK = 0xffffffffff; // 5 bytes
  uint256 private constant _TOTAL_GIVES_MASK = 0xffffffffffffffff; // 8 bytes
  uint256 private constant _INDEX_MASK = 0xffffff; // 3 bytes

  uint256 private constant _INDEX_SHIFT = 0xb8;
  uint256 private constant _HEAD_SHIFT = 0x90;
  uint256 private constant _TAIL_SHIFT = 0x68;
  uint256 private constant _OFFER_COUNT_SHIFT = 0x40;
  uint256 private constant _TOTAL_GIVES_SHIFT = 0x00;

  /**
   * @dev The offer list slot of (`market`, `index`) is given by:
   * ```
   *     mstore(0x20, _OFFER_LIST_SEED)
   *     mstore(0x18, index)
   *     mstore(0x00, market)
   *     let offerListSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("offerLists()"))
   */
  uint256 private constant _OFFER_LIST_SEED = 0xd095d0d6;

  /// @notice Reads the packed offer list word for (`market`, `index`).
  /// @param market The market identifier.
  /// @param index The list index (e.g., price bucket).
  /// @return _offerList The 256-bit packed offer list word.
  function offerList(bytes32 market, uint24 index) internal view returns (uint256 _offerList) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_LIST_SEED)
      mstore(0x18, index)
      mstore(0x00, market)
      _offerList := sload(keccak256(0x00, 0x40))
    }
  }

  /// @notice Writes the packed offer list word for (`market`, `index`).
  /// @param market The market identifier.
  /// @param index The list index (e.g., price bucket).
  /// @param _offerList The packed offer list word to store.
  function setOfferList(bytes32 market, uint24 index, uint256 _offerList) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_LIST_SEED)
      mstore(0x18, index)
      mstore(0x00, market)
      sstore(keccak256(0x00, 0x40), _offerList)
    }
  }

  /// @notice Removes an offer from the list and updates aggregates and pointers.
  /// @dev Decrements `offerCount`, subtracts `gives` from `totalGives`, and adjusts
  /// head/tail if needed. Also updates neighbor pointers via {LibOffer.setNext}/{LibOffer.setPrev}.
  /// If the offer is the only one in the list, it removes the tree index as well.
  /// @param market The market identifier.
  /// @param tickSpacing The tick spacing (used to compute the index).
  /// @param offer The offer to remove.
  function unlink(bytes32 market, uint16 tickSpacing, OfferUnpacked memory offer) internal {
    uint24 index = offer.tick.index(tickSpacing);
    uint48 gives = offer.gives;
    uint40 prevId = offer.prev;
    uint40 nextId = offer.next;

    unchecked {
      // if prevId is 0, set headId to nextId
      // else prevId.next = nextId
      // if nextId is 0, set tailId to prevId
      // else nextId.prev = prevId

      /// @solidity memory-safe-assembly
      assembly {
        // chack that isAcive == true
        if iszero(mload(add(offer, 0xe0))) {
          mstore(0x00, 0x0a869105) // CannotUnlink()
          revert(0x1c, 0x04)
        }
        mstore(0x20, _OFFER_LIST_SEED)
        mstore(0x18, index)
        mstore(0x00, market)
        let slot := keccak256(0x00, 0x40)
        let _offerList := sload(slot)
        // subtract gives from totalGives
        // it assumes that gives is less than total gives
        // since this is already the LSB, we can simply substract.
        // we don't check underflow since it's already checked in insert
        _offerList := sub(_offerList, gives)

        // subtract 1 from offerCount
        // no checks for underflow since we cannot have less than 0 offers on a single market anyway
        _offerList := sub(_offerList, shl(_OFFER_COUNT_SHIFT, 0x01))

        if iszero(prevId) {
          // set headId to nextId
          _offerList := or(and(not(shl(_HEAD_SHIFT, _HEAD_MASK)), _offerList), shl(_HEAD_SHIFT, nextId))
        }

        if iszero(nextId) {
          // set tailId to prevId
          _offerList := or(and(not(shl(_TAIL_SHIFT, _TAIL_MASK)), _offerList), shl(_TAIL_SHIFT, prevId))
        }
        sstore(slot, _offerList)
      }

      offer.isActive = false;
      if (prevId == 0 && nextId == 0) {
        market.treeFor().removeIndex(index);
      } else {
        if (prevId > 0) {
          market.setNext(prevId, nextId);
          offer.prev = 0;
        }
        if (nextId > 0) {
          market.setPrev(nextId, prevId);
          offer.next = 0;
        }
      }
    }
  }

  /// @notice Appends `offerId` to the tail of the list and updates aggregates.
  /// @dev Increments `offerCount`, adds `gives` to `totalGives` (reverts on 64-bit overflow),
  /// adjusts head/tail if needed, and sets the previous tail's `next` via {LibOffer.setNext}.
  /// If the list was empty, sets the index active.
  /// @param market The market identifier.
  /// @param index The list index (e.g., price bucket).
  /// @param offerId The offer id to insert at the tail.
  /// @param gives The `gives` amount of the inserted offer (for aggregate update).
  /// @return prevId The previous tail id before insertion (0 if list was empty).
  function insert(bytes32 market, uint24 index, uint40 offerId, uint48 gives) internal returns (uint40 prevId) {
    unchecked {
      /// @solidity memory-safe-assembly
      assembly {
        mstore(0x20, _OFFER_LIST_SEED)
        mstore(0x18, index)
        mstore(0x00, market)
        let slot := keccak256(0x00, 0x40)
        let _offerList := sload(slot)
        prevId := and(shr(_TAIL_SHIFT, _offerList), _TAIL_MASK)

        // check that totalGives does not overlow 64 bits
        if lt(shr(_OFFER_COUNT_SHIFT, _offerList), shr(_OFFER_COUNT_SHIFT, add(_offerList, gives))) {
          mstore(0x00, 0xc9bc30a2) // TotalGivesOverflow()
          revert(0x1c, 0x04)
        }

        // save index if not exists
        _offerList := or(_offerList, shl(_INDEX_SHIFT, index))

        // add gives to totalGives
        _offerList := add(_offerList, gives)

        // add 1 to offerCount
        // no checks for overflow since we cannot have more than type(uint40).max offers on a single market anyway
        _offerList := add(_offerList, shl(_OFFER_COUNT_SHIFT, 0x01))

        // set tailId to offerId
        _offerList := or(and(not(shl(_TAIL_SHIFT, _TAIL_MASK)), _offerList), shl(_TAIL_SHIFT, offerId))
        // set headId to offerID if prevId is 0
        if iszero(prevId) {
          // set head id to offerId
          _offerList := or(and(not(shl(_HEAD_SHIFT, _HEAD_MASK)), _offerList), shl(_HEAD_SHIFT, offerId))
        }
        sstore(slot, _offerList)
      }

      if (prevId > 0) {
        market.setNext(prevId, offerId);
      } else {
        market.treeFor().setIndexActive(index);
      }
    }
  }

  /// @notice Decodes a packed offer list word into `result`.
  /// @param result The struct to write into.
  /// @param _offerList The packed list word to decode.
  function from(OfferListUnpacked memory result, uint256 _offerList) internal pure {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(add(result, 0x60), and(_offerList, _TOTAL_GIVES_MASK))

      mstore(add(result, 0x40), and(shr(_OFFER_COUNT_SHIFT, _offerList), _OFFER_COUNT_MASK))

      mstore(add(result, 0x20), and(shr(_TAIL_SHIFT, _offerList), _TAIL_MASK))

      mstore(result, and(shr(_HEAD_SHIFT, _offerList), _HEAD_MASK))

      mstore(add(result, 0x80), and(shr(_INDEX_SHIFT, _offerList), _INDEX_MASK))
    }
  }

  /// @notice Packs an `OfferListUnpacked` struct into a 256-bit word.
  /// @param _offerList The struct to encode.
  /// @return result The packed list word.
  function pack(OfferListUnpacked memory _offerList) internal pure returns (uint256 result) {
    /// @solidity memory-safe-assembly
    assembly {
      result := shl(_INDEX_SHIFT, mload(add(_offerList, 0x80))) // index 24 bits
      result := or(result, shl(_HEAD_SHIFT, mload(_offerList))) // head 40 bits
      result := or(result, shl(_TAIL_SHIFT, mload(add(_offerList, 0x20)))) // tail 40 bits
      result := or(result, shl(_OFFER_COUNT_SHIFT, mload(add(_offerList, 0x40)))) // offerCount 40 bits
      result := or(result, mload(add(_offerList, 0x60))) // totalGives 64 bits
    }
  }
}
