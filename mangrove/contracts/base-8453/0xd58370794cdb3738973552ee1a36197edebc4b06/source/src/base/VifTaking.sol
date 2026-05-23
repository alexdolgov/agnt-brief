// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {FixedPointMathLib} from "lib/solady/src/utils/FixedPointMathLib.sol";

import {IVifTaking} from "../interfaces/base/IVifTaking.sol";

import {LibLock} from "../libraries/LibLock.sol";
import {LibMarket, Market} from "../libraries/LibMarket.sol";
import {LibTree} from "../libraries/tree/LibTree.sol";
import {LibTick} from "../libraries/LibTick.sol";
import {OfferUnpacked, LibOffer} from "../libraries/LibOffer.sol";
import {OfferListUnpacked, LibOfferList} from "../libraries/LibOfferList.sol";
import {LibProvision} from "../libraries/LibProvision.sol";
import {LibDeltas} from "../libraries/LibDeltas.sol";
import {LibAuthorization} from "../libraries/LibAuthorization.sol";
import {LibBit} from "../libraries/LibBit.sol";
import {LibFees} from "../libraries/LibFees.sol";

//    ░██    ░██ ░██    ░████ ░██████████           ░██       ░██
//    ░██    ░██       ░██        ░██               ░██
//    ░██    ░██ ░██░████████     ░██     ░██████   ░██    ░██░██░████████   ░████████
//    ░██    ░██ ░██   ░██        ░██          ░██  ░██   ░██ ░██░██    ░██ ░██    ░██
//     ░██  ░██  ░██   ░██        ░██     ░███████  ░███████  ░██░██    ░██ ░██    ░██
//      ░██░██   ░██   ░██        ░██    ░██   ░██  ░██   ░██ ░██░██    ░██ ░██   ░███
//       ░███    ░██   ░██        ░██     ░█████░██ ░██    ░██░██░██    ░██  ░█████░██
//                                                                                 ░██
//                                                                           ░███████

/// @title VifTaking
/// @notice The module containing functionnalities for market orders.
/// @dev Implements the IVifTaking interface.
/// @dev Handles the consumption of offers from a market, as well as the cleanup of expired offers.
contract VifTaking is IVifTaking {
  using LibMarket for bytes32;
  using LibMarket for Market;
  using LibOfferList for *;
  using LibOffer for *;
  using LibTree for *;
  using LibTick for *;
  using FixedPointMathLib for uint256;
  using LibProvision for uint24;
  using LibDeltas for address;
  using LibAuthorization for address;
  using LibFees for address;
  using LibFees for uint16;

  /// @dev struct to store the cache for the take operation
  struct SwapCache {
    Market market;
    LibTree.Cursor cursor;
    OfferListUnpacked offerList;
    OfferUnpacked offer;
    uint64 fillVolume;
    bool fillWants;
    bool hasNext;
    uint64 gave;
    uint64 got;
    uint256 price;
    uint256 offerCount;
    uint256 bounty;
    int24 maxTick;
  }

  /// @dev execute a given offer
  /// @param cache the cache for the take operation
  function _swap(SwapCache memory cache) internal pure {
    unchecked {
      uint48 wants =
        cache.price.inboundFromOutbound(cache.offer.gives, cache.market.outboundUnits, cache.market.inboundUnits);

      uint48 received;
      uint48 sent;

      if (cache.fillWants) {
        // Exact out
        if (cache.fillVolume >= cache.offer.gives) {
          received = cache.offer.gives;
          sent = wants;
        } else {
          // no overflow since fillVolume < offer.gives
          sent = uint48(uint256(wants).mulDivUp(cache.fillVolume, cache.offer.gives)); // round up
          // should fit within 48 bits since fillVolume < offer.gives
          received = uint48(cache.fillVolume);
        }
      } else {
        // exact In
        if (cache.fillVolume >= wants) {
          sent = wants;
          received = cache.offer.gives;
        } else {
          // no overflow since fillVolume < wants
          received = uint48(uint256(cache.offer.gives) * cache.fillVolume / wants); // round down
          // if nothing is received, set fillVolume to 0 to trigger the exit condition and return
          if (received == 0) {
            cache.fillVolume = 0;
            return;
          }
          // should fit within 48 bits since fillVolume < wants
          sent = uint48(cache.fillVolume);
        }
      }

      // check for overflow on received, if so cap sent and round towards taker instead.
      // This is not an issue since overall the received amount will be at least the requested amount,
      // since this has been checked for overflow upon creation
      if (cache.offer.received + sent < cache.offer.received) {
        // overflow: round towards taker (possibly sent could be 0)
        sent = type(uint48).max - cache.offer.received;
      }

      // update offer state
      cache.offer.received += sent;
      cache.offer.gives -= received;

      // update market order state
      cache.got += received;
      cache.gave += sent;

      // update fill volume for the market order
      cache.fillVolume -= uint64(FixedPointMathLib.ternary(cache.fillWants, received, sent));

      // update offer list state
      cache.offerList.totalGives -= received;
    }
  }

  /// @dev remove the offer assuming this is currently the first one in the queue
  /// @param cache the cache for the take operation
  function _removeCurrentOffer(SwapCache memory cache) internal pure {
    unchecked {
      // remove the offer from the offer list
      cache.offerList.head = cache.offer.next;
      // if head is 0, set tail to 0
      cache.offerList.tail = uint40(LibBit.decoalesce(cache.offerList.head, cache.offerList.tail));
      cache.offer.next = 0;
      cache.offerList.offerCount--;
      cache.offerList.totalGives -= cache.offer.gives;
      cache.offer.isActive = false;
    }
  }

  /// @dev consumes an offer by checking expiry and doing additional logic if the offer is expired
  /// @dev removes the offer is the amount is below density or expired.
  /// @param marketId the market id
  /// @param cache the cache for the take operation
  function _consumeOffer(bytes32 marketId, SwapCache memory cache) internal {
    unchecked {
      cache.offerCount++;
      uint40 offerId = cache.offerList.head;

      // get the offer data
      cache.offer.from(marketId.offer(offerId));

      // setting prev to 0 (not useful for first loop)
      cache.offer.prev = 0;

      if (cache.offer.expiry > 0 && block.timestamp >= cache.offer.expiry) {
        uint24 toBounty = cache.offer.provision.ceil();
        cache.bounty += toBounty;
        cache.offer.provision -= toBounty;
        _removeCurrentOffer(cache);
      } else {
        _swap(cache);

        if (cache.offer.gives < cache.market.minOutboundUnits) {
          _removeCurrentOffer(cache);
        }
      }

      // save offer
      marketId.setOffer(offerId, cache.offer.pack());
    }
  }

  /// @dev consumes a tick by iterating over the offers in the queue and consuming them
  /// @dev this function assumed that the queue for the given tick is not empty
  /// @param marketId the market id
  /// @param tree the tree to consume the tick from
  /// @param cache the cache for the take operation
  /// @param maxOffers the maximum number of offers to consume
  function _consumeTick(bytes32 marketId, LibTree.Tree storage tree, SwapCache memory cache, uint256 maxOffers)
    internal
  {
    unchecked {
      uint24 index = cache.cursor.index();
      int24 tick = index.tick(cache.market.tickSpacing);
      if (tick > cache.maxTick) {
        cache.hasNext = false;
        return;
      }
      cache.price = tick.tickToPrice();

      // get the offer list for the index
      cache.offerList.from(marketId.offerList(index));

      while (cache.fillVolume > 0 && cache.offerCount < maxOffers && cache.offerList.offerCount > 0) {
        _consumeOffer(marketId, cache);

        // if the offer list is empty, get the next tree node
        if (cache.offerList.head == 0) {
          cache.offerList.tail = 0;
          // get the next tree node
          cache.hasNext = cache.cursor.next(tree);
          break;
        }
      }

      // save offer list
      marketId.setOfferList(index, cache.offerList.pack());
    }
  }

  /// @inheritdoc IVifTaking
  function consume(
    address taker,
    bytes32 marketId,
    int24 maxTick,
    uint256 fillVolume,
    bool fillWants,
    uint256 maxOffers
  ) external returns (uint256 gave, uint256 got, uint256 fee, uint256 bounty) {
    unchecked {
      LibLock.checkLocked();
      taker.checkAuthorization(msg.sender);
      SwapCache memory cache;
      cache.maxTick = maxTick;
      cache.market = marketId.market();
      cache.market.checkActive();
      LibTree.Tree storage tree = marketId.treeFor();
      (cache.cursor, cache.hasNext) = tree.first();

      cache.fillWants = fillWants;
      cache.fillVolume = cache.market.fees.excludeFees(cache.market.normalizeVolume(fillVolume, fillWants), fillWants);

      while (cache.hasNext && cache.offerCount < maxOffers && cache.fillVolume > 0) {
        _consumeTick(marketId, tree, cache, maxOffers);
      }

      // fix last consumed offer list head offer
      // we need to set its head offer `prev` to 0
      if (cache.offerList.head > 0) {
        cache.offer.from(marketId.offer(cache.offerList.head));
        cache.offer.prev = 0;
        marketId.setOffer(cache.offerList.head, cache.offer.pack());
      }

      cache.cursor.flush(tree);

      gave = uint256(cache.gave) * cache.market.inboundUnits;
      got = uint256(cache.got) * cache.market.outboundUnits;
      fee = cache.market.fees.fees(gave, fillVolume, fillWants);
      bounty = cache.bounty * LibProvision.PROVISION_UNIT; // convert provision units to wei

      if (bounty > 0) {
        // casting to 'int256' is safe because bounty is less than 2^23 * PROVISION_UNITS
        // forge-lint: disable-next-line(unsafe-typecast)
        LibDeltas.NATIVE.applyDelta(int256(bounty));
      }

      // casting to 'int256' is safe because gave and fee combined are less than 2^128
      // forge-lint: disable-next-line(unsafe-typecast)
      cache.market.inboundToken.applyDelta(-int256(gave) - int256(fee));
      // casting to 'int256' is safe because got is less than 2^128
      // forge-lint: disable-next-line(unsafe-typecast)
      cache.market.outboundToken.applyDelta(int256(got));

      if (fee > 0) {
        cache.market.inboundToken.addFees(fee);
      }

      emit MarketOrder(marketId, taker, got, gave, fee, bounty, fillVolume, fillWants, cache.maxTick);
    }
  }

  /// @inheritdoc IVifTaking
  function clean(bytes32 marketId, uint40 offerId) external returns (uint256 bounty, bool success) {
    LibLock.checkLocked();
    // get the offer
    OfferUnpacked memory offer;
    offer.from(marketId.offer(offerId));
    // check that it is live and failing
    if (offer.isActive && offer.expiry > 0 && block.timestamp >= offer.expiry) {
      // compute bounty
      uint24 toBounty = offer.provision.ceil();
      offer.provision -= toBounty;
      bounty = uint256(toBounty) * LibProvision.PROVISION_UNIT;

      marketId.unlink(marketId.market().tickSpacing, offer);

      // save offer
      marketId.setOffer(offerId, offer.pack());

      // apply bounty
      // casting to 'int256' is safe because bounty is less than 2^23 * PROVISION_UNITS
      // forge-lint: disable-next-line(unsafe-typecast)
      LibDeltas.NATIVE.applyDelta(int256(bounty));

      success = true;
      emit OfferCleaned(marketId, offerId, bounty);
    }
  }
}
