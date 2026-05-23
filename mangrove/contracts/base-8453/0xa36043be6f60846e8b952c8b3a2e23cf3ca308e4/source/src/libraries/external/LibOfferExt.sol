// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";
import {OfferUnpacked, LibOffer} from "../LibOffer.sol";

library LibOfferExt {
  using LibExtLoader for address;
  using LibOffer for OfferUnpacked;

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

  /// @notice Returns the packed offer for (`market`, `offerId`) from the target contract.
  /// @param target The target contract to load the offer from.
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @return result The packed offer for (`market`, `offerId`).
  function offerPacked(address target, bytes32 market, uint40 offerId) internal view returns (uint256) {
    uint256 slot;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)
      slot := keccak256(0x00, 0x40)
    }
    return target.sload(slot);
  }

  /// @notice Returns the offer for (`market`, `offerId`) from the target contract.
  /// @param target The target contract to load the offer from.
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @return _offer The offer for (`market`, `offerId`).
  function offer(address target, bytes32 market, uint40 offerId) internal view returns (OfferUnpacked memory _offer) {
    _offer.from(offerPacked(target, market, offerId));
  }

  /// @notice Returns the owner of the offer (`market`, `offerId`) from the target contract.
  /// @param target The target contract to load the offer owner from.
  /// @param market The market identifier.
  /// @param offerId The offer id.
  /// @return result The owner of the offer (`market`, `offerId`).
  function offerOwner(address target, bytes32 market, uint40 offerId) internal view returns (address) {
    uint256 slot;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _OFFER_OWNERS_SEED)
      mstore(0x05, offerId)
      mstore(0x00, market)
      slot := keccak256(0x00, 0x40)
    }
    return address(uint160(target.sload(slot)));
  }
}
