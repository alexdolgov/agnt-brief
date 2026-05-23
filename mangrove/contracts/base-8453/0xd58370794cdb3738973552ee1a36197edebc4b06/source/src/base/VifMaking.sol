// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {IVifMaking} from "../interfaces/base/IVifMaking.sol";

import {LibOffer, OfferUnpacked} from "../libraries/LibOffer.sol";
import {LibAuthorization} from "../libraries/LibAuthorization.sol";
import {LibLock} from "../libraries/LibLock.sol";
import {LibMarket, Market} from "../libraries/LibMarket.sol";
import {LibOfferList} from "../libraries/LibOfferList.sol";
import {LibTick} from "../libraries/LibTick.sol";
import {LibDeltas} from "../libraries/LibDeltas.sol";
import {LibProvision} from "../libraries/LibProvision.sol";
import {LibTree} from "../libraries/tree/LibTree.sol";

//    ░██    ░██ ░██    ░████ ░███     ░███            ░██       ░██
//    ░██    ░██       ░██    ░████   ░████            ░██
//    ░██    ░██ ░██░████████ ░██░██ ░██░██  ░██████   ░██    ░██░██░████████   ░████████
//    ░██    ░██ ░██   ░██    ░██ ░████ ░██       ░██  ░██   ░██ ░██░██    ░██ ░██    ░██
//     ░██  ░██  ░██   ░██    ░██  ░██  ░██  ░███████  ░███████  ░██░██    ░██ ░██    ░██
//      ░██░██   ░██   ░██    ░██       ░██ ░██   ░██  ░██   ░██ ░██░██    ░██ ░██   ░███
//       ░███    ░██   ░██    ░██       ░██  ░█████░██ ░██    ░██░██░██    ░██  ░█████░██
//                                                                                    ░██
//                                                                              ░███████

/// @title VifMaking
/// @notice The module containing functionnalities for creating, editing, claiming, and cancelling limit orders.
/// @dev Implements the IVifMaking interface.
contract VifMaking is IVifMaking {
  using LibOffer for bytes32;
  using LibOffer for OfferUnpacked;
  using LibOfferList for bytes32;
  using LibAuthorization for address;
  using LibMarket for bytes32;
  using LibMarket for Market;
  using LibTick for int24;
  using LibDeltas for address;
  using LibProvision for uint24;
  using LibTree for bytes32;
  using LibTree for LibTree.Tree;

  /// @notice Thrown if the offer does not exist
  error NonExistentOffer();
  /// @notice Thrown if an expiry is set in the past
  error InvalidExpiry();

  /// @dev struct to store the heap for the make operation
  struct MakeHeap {
    uint48 normalizedGives;
    uint40 offerId;
    uint24 index;
    uint256 existingGives;
    uint256 existingProvision;
    Market market;
  }

  /// @inheritdoc IVifMaking
  function make(
    address maker,
    bytes32 marketId,
    uint40 initialOfferId,
    uint256 gives,
    int24 tick,
    uint32 expiry,
    uint24 provision
  ) external returns (uint40 offerId, uint256 claimedReceived) {
    LibLock.checkLocked();
    maker.checkAuthorization(msg.sender);
    provision.checkProvision();

    if (expiry > 0 && expiry <= block.timestamp) revert InvalidExpiry();

    MakeHeap memory heap;

    heap.market = marketId.market();
    heap.market.checkActive();
    heap.normalizedGives = heap.market.normalizeGives(gives);
    heap.market.checkVolume(heap.normalizedGives);

    // round up to the nearest tick according to the tick spacing
    tick = tick.closestTick(heap.market.tickSpacing);

    // check that price * gives with given units fits within 48 bits
    {
      uint256 price = tick.tickToPrice();
      // throws in case of overflow
      LibTick.inboundFromOutbound(price, heap.normalizedGives, heap.market.outboundUnits, heap.market.inboundUnits);
    }

    OfferUnpacked memory offer;

    if (initialOfferId > 0) {
      if (marketId.offerOwner(initialOfferId) != maker) revert LibAuthorization.NotAuthorized();
      // set the offer id to the initial id
      offerId = initialOfferId;
      // get the current offer data
      offer.from(marketId.offer(initialOfferId));
      // get the existing gives
      heap.existingGives = uint256(offer.gives) * heap.market.outboundUnits;
      // if the offer is active, remove it from the chained list
      if (offer.isActive) {
        marketId.unlink(heap.market.tickSpacing, offer);
      }
      // get the existing provision and reset it to 0
      heap.existingProvision = uint256(offer.provision); // convert provision units to wei
      // offer.provision = 0; (not needed since we'll override it anyway)

      claimedReceived = uint256(offer.received) * heap.market.inboundUnits;

      if (claimedReceived > 0) {
        // casting to 'int256' is safe because claimedReceived is less than 2^128
        // forge-lint: disable-next-line(unsafe-typecast)
        heap.market.inboundToken.applyDelta(int256(claimedReceived));
        offer.received = 0;
      }
    } else {
      offerId = marketId.nextOfferId();
      marketId.setOfferOwner(offerId, maker);
    }

    // set the new offer data
    offer.gives = heap.normalizedGives;
    offer.tick = tick;
    offer.expiry = expiry;
    // if there is an expiry, floor the provision to the global provision price
    offer.provision = expiry > 0 ? provision.floor() : provision;

    uint24 index = tick.index(heap.market.tickSpacing);

    offer.prev = marketId.insert(index, offerId, heap.normalizedGives);
    offer.isActive = true;

    uint256 totalGives = uint256(heap.normalizedGives) * heap.market.outboundUnits;

    // apply the provision deltas
    LibDeltas.NATIVE
      .applyDelta(
        (int256(heap.existingProvision) - int256(uint256(offer.provision))) * int256(LibProvision.PROVISION_UNIT)
      ); // convert provision units to wei
    // casting to 'int256' is safe because heap.existingGives and totalGives are less than 2^128
    // forge-lint: disable-next-line(unsafe-typecast)
    heap.market.outboundToken.applyDelta(int256(heap.existingGives) - int256(totalGives));

    // set the offer data
    marketId.setOffer(offerId, offer.pack());

    // if initalOfferId, emit the offer edited event
    // else emit the offer created event
    if (initialOfferId > 0) {
      emit OfferUpdated(marketId, offerId, totalGives, claimedReceived, tick, expiry, offer.provision);
    } else {
      emit NewOffer(marketId, offerId, maker, totalGives, tick, expiry, offer.provision);
    }
  }

  /// @inheritdoc IVifMaking
  function claim(bytes32 marketId, uint40 offerId)
    external
    returns (uint256 inbound, uint256 outbound, uint256 provision)
  {
    LibLock.checkLocked();

    // if owner is address(0), revert
    address owner = marketId.offerOwner(offerId);
    if (owner == address(0)) revert NonExistentOffer();
    // check if caller is authorized
    owner.checkAuthorization(msg.sender);

    Market memory market = marketId.market();
    OfferUnpacked memory offer;
    offer.from(marketId.offer(offerId));

    inbound = uint256(offer.received) * market.inboundUnits;

    if (inbound > 0) {
      // casting to 'int256' is safe because inbound is less than 2^128
      // forge-lint: disable-next-line(unsafe-typecast)
      market.inboundToken.applyDelta(int256(inbound));
      offer.received = 0;
    }

    // if offer is not active or expired, or the market is not active, remove provisions and outbound as well
    if (!offer.isActive || !market.active || (offer.expiry > 0 && block.timestamp >= offer.expiry)) {
      outbound = uint256(offer.gives) * market.outboundUnits;
      provision = uint256(offer.provision) * LibProvision.PROVISION_UNIT; // convert provision units to wei

      if (offer.isActive) {
        marketId.unlink(market.tickSpacing, offer);
      }

      offer.gives = 0;
      offer.provision = 0;

      if (outbound > 0) {
        // casting to 'int256' is safe because outbound is less than 2^128
        // forge-lint: disable-next-line(unsafe-typecast)
        market.outboundToken.applyDelta(int256(outbound));
      }
      if (provision > 0) {
        // casting to 'int256' is safe because provision is less than 2^23 * PROVISION_UNITS
        // forge-lint: disable-next-line(unsafe-typecast)
        LibDeltas.NATIVE.applyDelta(int256(provision));
      }
    }

    marketId.setOffer(offerId, offer.pack());
    emit OfferClaimed(marketId, offerId, outbound, inbound, provision);
  }

  /// @inheritdoc IVifMaking
  function cancel(bytes32 marketId, uint40 offerId)
    external
    returns (uint256 inbound, uint256 outbound, uint256 provision)
  {
    LibLock.checkLocked();

    // if owner is address(0), revert
    address owner = marketId.offerOwner(offerId);
    if (owner == address(0)) revert NonExistentOffer();
    // check if caller is authorized
    owner.checkAuthorization(msg.sender);

    Market memory market = marketId.market();
    OfferUnpacked memory offer;
    offer.from(marketId.offer(offerId));

    inbound = uint256(offer.received) * market.inboundUnits;
    outbound = uint256(offer.gives) * market.outboundUnits;
    provision = uint256(offer.provision) * LibProvision.PROVISION_UNIT; // convert provision units to wei

    if (offer.isActive) {
      marketId.unlink(market.tickSpacing, offer);
    }

    marketId.setOffer(offerId, 0);

    if (inbound > 0) {
      // casting to 'int256' is safe because inbound is less than 2^128
      // forge-lint: disable-next-line(unsafe-typecast)
      market.inboundToken.applyDelta(int256(inbound));
    }
    if (outbound > 0) {
      // casting to 'int256' is safe because outbound is less than 2^128
      // forge-lint: disable-next-line(unsafe-typecast)
      market.outboundToken.applyDelta(int256(outbound));
    }
    if (provision > 0) {
      // casting to 'int256' is safe because provision is less than 2^23 * PROVISION_UNITS
      // forge-lint: disable-next-line(unsafe-typecast)
      LibDeltas.NATIVE.applyDelta(int256(provision));
    }

    emit OfferCancelled(marketId, offerId, outbound, inbound, provision);
  }
}
