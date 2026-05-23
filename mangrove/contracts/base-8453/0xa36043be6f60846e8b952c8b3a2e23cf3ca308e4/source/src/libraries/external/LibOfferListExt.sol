// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";
import {LibOfferList, OfferListUnpacked} from "../LibOfferList.sol";

library LibOfferListExt {
  using LibExtLoader for address;
  using LibOfferList for OfferListUnpacked;

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

  /// @notice Returns the packed offer list for (`market`, `index`) from the target contract.
  /// @param target The target contract to load the offer list from.
  /// @param market The market identifier.
  /// @param index The index of the offer list.
  /// @return _offerList The packed offer list for (`market`, `index`).
  function offerListPacked(address target, bytes32 market, uint24 index) internal view returns (uint256 _offerList) {
    uint256 slot;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_LIST_SEED)
      mstore(0x18, index)
      mstore(0x00, market)
      slot := keccak256(0x00, 0x40)
    }
    _offerList = target.sload(slot);
  }

  /// @notice Returns the offer list for (`market`, `index`) from the target contract.
  /// @param target The target contract to load the offer list from.
  /// @param market The market identifier.
  /// @param index The index of the offer list.
  /// @return _offerList The offer list for (`market`, `index`).
  function offerList(address target, bytes32 market, uint24 index)
    internal
    view
    returns (OfferListUnpacked memory _offerList)
  {
    _offerList.from(offerListPacked(target, market, index));
  }
}
