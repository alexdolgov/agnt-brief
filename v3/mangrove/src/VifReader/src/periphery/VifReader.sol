// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibOfferExt} from "../libraries/external/LibOfferExt.sol";
import {LibOfferListExt} from "../libraries/external/LibOfferListExt.sol";
import {LibOffer, OfferUnpacked} from "../libraries/LibOffer.sol";
import {LibOfferList, OfferListUnpacked} from "../libraries/LibOfferList.sol";
import {LibMarket, Market} from "../libraries/LibMarket.sol";
import {LibTreeExt} from "../libraries/external/LibTreeExt.sol";
import {LibTick} from "../libraries/LibTick.sol";
import {LibMarketExt} from "../libraries/external/LibMarketExt.sol";
import {LibAuthorizationExt} from "../libraries/external/LibAuthorizationExt.sol";
import {DynamicArrayLib} from "lib/solady/src/utils/DynamicArrayLib.sol";
import {LibFeesExt} from "../libraries/external/LibFeesExt.sol";
import {LibProvisionExt} from "../libraries/external/LibProvisionExt.sol";
import {FixedPointMathLib} from "lib/solady/src/utils/FixedPointMathLib.sol";
import {LibPausableExt} from "../libraries/external/LibPausableExt.sol";
import {LibBlackListExt} from "../libraries/external/LibBlackListExt.sol";

//    ░██    ░██ ░██    ░████ ░█████████                               ░██
//    ░██    ░██       ░██    ░██     ░██                              ░██
//    ░██    ░██ ░██░████████ ░██     ░██  ░███████   ░██████    ░████████  ░███████  ░██░████
//    ░██    ░██ ░██   ░██    ░█████████  ░██    ░██       ░██  ░██    ░██ ░██    ░██ ░███
//     ░██  ░██  ░██   ░██    ░██   ░██   ░█████████  ░███████  ░██    ░██ ░█████████ ░██
//      ░██░██   ░██   ░██    ░██    ░██  ░██        ░██   ░██  ░██   ░███ ░██        ░██
//       ░███    ░██   ░██    ░██     ░██  ░███████   ░█████░██  ░█████░██  ░███████  ░██

/// @title VifReader
/// @notice Reader contract for the Vif protocol.
/// @dev Handles the reading values from the Vif protocol.
contract VifReader {
  using LibOfferExt for address;
  using LibOfferListExt for address;
  using LibMarketExt for address;
  using LibAuthorizationExt for address;
  using LibFeesExt for address;
  using LibProvisionExt for address;
  using LibPausableExt for address;
  using LibMarket for Market;
  using LibBlackListExt for address;
  using LibOffer for *;
  using LibOfferList for *;
  using LibTreeExt for *;
  using LibTick for *;
  using DynamicArrayLib for *;

  error OfferNotActive();

  /// @notice The Vif contract address.
  address public immutable VIF;

  struct Markets {
    bytes32 market01;
    bytes32 market10;
  }

  /// @notice The markets list
  Markets[] internal _markets;

  /// @notice The market index.
  /// @dev positions are 1-indexed to avoid 0 being a valid position.
  mapping(bytes32 => uint256) internal _marketIndex;

  /// @notice Constructor.
  /// @param _vif The Vif contract address.
  constructor(address _vif) {
    VIF = _vif;
  }

  /// @notice Counts the number of offers after a given offer on a single offer list.
  /// @param marketId The market id.
  /// @param _offer The offer.
  /// @return length The number of offers after the given offer (inclusive)
  function _countAfterOffer(bytes32 marketId, OfferUnpacked memory _offer) internal view returns (uint256 length) {
    unchecked {
      length = 1;
      while (_offer.next > 0) {
        _offer = VIF.offer(marketId, _offer.next);
        length++;
      }
    }
  }

  /// @notice Returns the end points of the offer list.
  /// @param marketId The market id.
  /// @param fromId The offer id to start from.
  /// @param maxOffers The maximum number of offers to return.
  /// @return startId The offer id to start from.
  /// @return length The number of offers after the given offer (inclusive, capped at maxOffers).
  function offerListEndPoints(bytes32 marketId, uint40 fromId, uint256 maxOffers)
    public
    view
    returns (uint40 startId, uint256 length)
  {
    unchecked {
      uint24 startIndex;

      if (fromId != 0) {
        OfferUnpacked memory _offer = VIF.offer(marketId, fromId);
        if (!_offer.isActive) revert OfferNotActive();

        startIndex = _offer.tick.index(VIF.market(marketId).tickSpacing) + 1; // +1 because we want to start after the offer
        startId = fromId;
        length = _countAfterOffer(marketId, _offer);
      }

      LibTreeExt.Tree memory tree = VIF.treeFor(marketId);
      (LibTreeExt.Cursor memory cursor, bool found) = tree.firstAfter(startIndex);
      OfferListUnpacked memory offerList;

      while (found && length < maxOffers) {
        offerList = VIF.offerList(marketId, cursor.index());
        if (startId == 0) {
          startId = offerList.head;
        }
        length += offerList.offerCount;
        found = cursor.next(tree);
      }

      if (length > maxOffers) length = maxOffers;
    }
  }

  struct PackedOfferListCache {
    LibTreeExt.Tree tree;
    LibTreeExt.Cursor cursor;
    bool found;
    OfferUnpacked offer;
    OfferListUnpacked offerList;
  }

  /// @notice Returns the packed offer list.
  /// @param marketId The market id.
  /// @param fromId The offer id to start from.
  /// @param maxOffers The maximum number of offers to return.
  /// @return nextOfferId The next offer id.
  /// @return offerIds The offer ids.
  /// @return offers The offers.
  /// @return owners The owners.
  function packedOfferList(bytes32 marketId, uint40 fromId, uint256 maxOffers)
    external
    view
    returns (uint40 nextOfferId, uint40[] memory offerIds, uint256[] memory offers, address[] memory owners)
  {
    unchecked {
      (uint40 startId, uint256 length) = offerListEndPoints(marketId, fromId, maxOffers);

      if (length > 0) {
        offerIds = new uint40[](length);
        offers = new uint256[](length);
        owners = new address[](length);

        PackedOfferListCache memory cache;
        cache.tree = VIF.treeFor(marketId);

        if (startId == 0) {
          (cache.cursor, cache.found) = cache.tree.first();
          cache.offerList = VIF.offerList(marketId, cache.cursor.index());
          cache.offer = VIF.offer(marketId, cache.offerList.head);
          nextOfferId = cache.offerList.head;
        } else {
          cache.offer = VIF.offer(marketId, startId);
          uint24 index = cache.offer.tick.index(VIF.market(marketId).tickSpacing);
          cache.offerList = VIF.offerList(marketId, index);
          (cache.cursor, cache.found) = cache.tree.firstAfter(index);
          nextOfferId = startId;
        }

        for (uint256 i = 0; i < length; i++) {
          offerIds[i] = nextOfferId;
          offers[i] = cache.offer.pack();
          owners[i] = VIF.offerOwner(marketId, nextOfferId);
          nextOfferId = cache.offer.next;

          if (nextOfferId == 0) {
            cache.found = cache.cursor.next(cache.tree);
            if (!cache.found) break;
            cache.offerList = VIF.offerList(marketId, cache.cursor.index());
            nextOfferId = cache.offerList.head;
            cache.offer = VIF.offer(marketId, nextOfferId);
          } else {
            cache.offer = VIF.offer(marketId, nextOfferId);
          }
        }
      }
    }
  }

  /// @notice Returns the packed book.
  /// @dev the book packed is only to return a visualisation of the book, does not contain the actual offers.
  /// @param marketId The market id.
  /// @param fromPricePoint The price point to start from.
  /// @param maxPricePoints The maximum number of price points to return.
  /// @return nextPricePoint The next price point.
  /// @return offerListsPacked The packed offer lists.
  function packedBook(bytes32 marketId, uint24 fromPricePoint, uint24 maxPricePoints)
    external
    view
    returns (uint24 nextPricePoint, uint256[] memory offerListsPacked)
  {
    unchecked {
      LibTreeExt.Tree memory tree = VIF.treeFor(marketId);
      (LibTreeExt.Cursor memory cursor, bool found) = tree.firstAfter(fromPricePoint);

      DynamicArrayLib.DynamicArray memory offerLists;
      offerLists.reserve(maxPricePoints);

      uint24 length;
      while (found && length < maxPricePoints) {
        length++;
        offerLists.p(VIF.offerListPacked(marketId, cursor.index()));
        found = cursor.next(tree);
      }

      if (found) nextPricePoint = cursor.index();
      offerListsPacked = offerLists.data;
    }
  }

  /// @notice Returns the packed offer.
  /// @param marketId The market id.
  /// @param offerId The offer id.
  /// @return _offer The packed offer.
  /// @return owner The owner of the offer.
  function offerPacked(bytes32 marketId, uint40 offerId) external view returns (uint256 _offer, address owner) {
    _offer = VIF.offerPacked(marketId, offerId);
    owner = VIF.offerOwner(marketId, offerId);
  }

  /// @notice Returns the offer.
  /// @param marketId The market id.
  /// @param offerId The offer id.
  /// @return _offer The offer.
  /// @return owner The owner of the offer.
  function offer(bytes32 marketId, uint40 offerId) external view returns (OfferUnpacked memory _offer, address owner) {
    _offer = VIF.offer(marketId, offerId);
    owner = VIF.offerOwner(marketId, offerId);
  }

  /// @notice Returns the market.
  /// @param marketId The market id.
  /// @return _market The market.
  function market(bytes32 marketId) external view returns (Market memory) {
    return VIF.market(marketId);
  }

  /// @notice Returns whether the authorized account is authorized by the authorizer.
  /// @param authorizer The authorizer.
  /// @param authorized The authorized account.
  /// @return result Whether the authorized account is authorized by the authorizer.
  function isAuthorized(address authorizer, address authorized) external view returns (bool) {
    return VIF.authorized(authorizer, authorized);
  }

  /// @notice Returns the nonce for the authorizer.
  /// @param authorizer The authorizer.
  /// @return result The nonce for the authorizer.
  function authorizerNonce(address authorizer) external view returns (uint256) {
    return VIF.authorizerNonce(authorizer);
  }

  /// @notice Returns the fees for the token.
  /// @param token The token.
  /// @return result The fees for the token.
  function fees(address token) external view returns (uint256) {
    return VIF.fees(token);
  }

  /// @notice Returns the minimum provision.
  /// @return result The minimum provision.
  function minProvision() external view returns (uint24) {
    return VIF.provision();
  }

  /// @notice Orders the tokens with its units.
  /// @param token0 The token0.
  /// @param token1 The token1.
  /// @param units0 The units0.
  /// @param units1 The units1.
  /// @return _token0 The token0.
  /// @return _token1 The token1.
  /// @return _units0 The units0.
  /// @return _units1 The units1.
  function _orderMarkets(address token0, address token1, uint64 units0, uint64 units1)
    internal
    pure
    returns (address _token0, address _token1, uint64 _units0, uint64 _units1)
  {
    if (token0 > token1) {
      return (token1, token0, units1, units0);
    }
    return (token0, token1, units0, units1);
  }

  /// @notice Updates the markets.
  /// @dev if either the 01 market or the 10 market is active, the market will be added if it does not exist.
  /// @dev if both the 01 market and the 10 market are inactive, the market will be removed if it exists.
  /// @dev this function can return a valid market on one side, but not the other (containing 0 values).
  /// @param token0 The token0.
  /// @param token1 The token1.
  /// @param units0 The units0.
  /// @param units1 The units1.
  /// @param tickSpacing The tick spacing.
  function updateMarkets(address token0, address token1, uint64 units0, uint64 units1, uint16 tickSpacing) external {
    unchecked {
      (token0, token1, units0, units1) = _orderMarkets(token0, token1, units0, units1);
      Market memory _market;
      _market.outboundToken = token0;
      _market.outboundUnits = units0;
      _market.inboundToken = token1;
      _market.inboundUnits = units1;
      _market.tickSpacing = tickSpacing;
      bytes32 market01 = _market.id();

      _market.outboundToken = token1;
      _market.outboundUnits = units1;
      _market.inboundToken = token0;
      _market.inboundUnits = units0;
      bytes32 market10 = _market.id();

      uint256 position = _marketIndex[market01];
      // get the market state
      bool active = VIF.market(market01).active || VIF.market(market10).active;

      if (active && position == 0) {
        position = _markets.length + 1;
        _marketIndex[market01] = position;
        _marketIndex[market10] = position;
        _markets.push(Markets({market01: market01, market10: market10}));
      } else if (!active && position > 0) {
        uint256 posLast = _markets.length;
        if (posLast != position) {
          Markets memory last = _markets[posLast - 1];
          _marketIndex[last.market01] = position;
          _marketIndex[last.market10] = position;
          _markets[position - 1] = last;
        }
        _markets.pop();
        delete _marketIndex[market01];
        delete _marketIndex[market10];
      }
    }
  }

  struct OpenMarketsResult {
    Market market01;
    Market market10;
  }

  /// @notice Returns the open markets.
  /// @param from The index to start from.
  /// @param maxLength The maximum number of markets to return.
  /// @return results The open markets.
  function openMarkets(uint256 from, uint256 maxLength) public view returns (OpenMarketsResult[] memory results) {
    unchecked {
      uint256 len = _markets.length;
      if (from >= len) return results;
      results = new OpenMarketsResult[](FixedPointMathLib.min(maxLength, len - from));
      for (uint256 i = 0; i < results.length; i++) {
        results[i].market01 = VIF.market(_markets[i + from].market01);
        results[i].market10 = VIF.market(_markets[i + from].market10);
      }
    }
  }

  /// @notice Returns the length of the open markets.
  /// @return length The length of the open markets.
  function openMarketsLength() external view returns (uint256) {
    return _markets.length;
  }

  /// @notice Returns the full list of open markets.
  /// @dev this function is used to get the full list of open markets offchain as it is gas unbounded.
  /// @return results The open markets.
  function openMarkets() external view returns (OpenMarketsResult[] memory) {
    return openMarkets(0, _markets.length);
  }

  /// @notice Returns whether the contract is paused.
  /// @return result True if the contract is paused.
  function isPaused() external view returns (bool) {
    return VIF.isPaused();
  }

  /// @notice Returns whether a user is blacklisted.
  /// @param user The user to check.
  /// @return result True if the user is blacklisted.
  function isBlacklisted(address user) external view returns (bool) {
    return VIF.isBlacklisted(user);
  }
}
