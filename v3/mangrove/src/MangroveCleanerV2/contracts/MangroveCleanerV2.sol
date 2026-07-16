// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IMangrove} from "@mgv/src/IMangrove.sol";
import {MgvReader} from "@mgv/src/periphery/MgvReader.sol";
import {OLKey, Offer, OfferDetail, Tick, MgvLib} from "@mgv/src/core/MgvLib.sol";
import {IERC20} from "@mgv/lib/IERC20.sol";

contract MangroveCleanerV2 {
  IMangrove public immutable mangrove;

  MgvReader public immutable mgvReader;

  struct State {
    address taker;
    uint96 maxOfferPerCall;
  }

  State public state;

  constructor(
    IMangrove _mangrove,
    MgvReader _mgvReader,
    address _taker,
    uint96 _maxOfferPerCall
  ) {
    mgvReader = _mgvReader;
    mangrove = _mangrove;
    state.taker = _taker;
    state.maxOfferPerCall = _maxOfferPerCall;
  }

  function _getCleanTarget(uint256 offerId, uint256 balanceGives, Offer offer, OfferDetail detail)
    internal
    pure
    returns (MgvLib.CleanTarget memory target)
  {
    target.offerId = offerId;
    target.tick = offer.tick();
    target.gasreq = detail.gasreq();
    target.takerWants = target.tick.outboundFromInbound(balanceGives);
  }

  struct CleanHeap {
    uint256[] offerIds;
    Offer[] offers;
    OfferDetail[] details;
    MgvLib.CleanTarget[] targets;
    uint256[] bounties;
    uint256 length;
    MgvLib.CleanTarget[] target;
    uint256 currentInsert;
  }

  function _generateHeap(uint256 size) internal pure returns (CleanHeap memory heap) {
    heap.targets = new MgvLib.CleanTarget[](size);
  }

  function cleanByMarket(OLKey memory olKey, bool _withdraw) public returns (MgvLib.CleanTarget[] memory successes) {
    uint256 maxOfferPerCall = state.maxOfferPerCall;
    address taker = state.taker;
    CleanHeap memory heap = _generateHeap(state.maxOfferPerCall);
    (, heap.offerIds, heap.offers, heap.details) = mgvReader.packedOfferList(olKey, 0, maxOfferPerCall);

    heap.targets = new MgvLib.CleanTarget[](heap.offerIds.length);
    heap.bounties = new uint256[](heap.offerIds.length);

    uint256 inboundBalance = IERC20(olKey.inbound_tkn).balanceOf(taker);

    for (uint256 i = 0; i < heap.offerIds.length; i++) {
      heap.targets[i] = _getCleanTarget(heap.offerIds[i], inboundBalance, heap.offers[i], heap.details[i]);
      MgvLib.CleanTarget[] memory target = new MgvLib.CleanTarget[](1);
      target[0] = heap.targets[i];
      (, heap.bounties[i]) = mangrove.cleanByImpersonation(olKey, target, taker);
      if (heap.bounties[i] > 0) {
        heap.length++;
      }
    }

    successes = new MgvLib.CleanTarget[](heap.length);

    for (uint256 i = 0; i < heap.bounties.length; i++) {
      if (heap.bounties[i] > 0) {
        successes[heap.currentInsert] = heap.targets[i];
        heap.currentInsert++;
      }
    }

    if (_withdraw) {
      withdraw();
    }
  }

  function cleanMarkets(OLKey[] memory olKeys, bool _withdraw) public returns (MgvLib.CleanTarget[][] memory successes) {
    successes = new MgvLib.CleanTarget[][](olKeys.length);
    for (uint256 i = 0; i < olKeys.length; i++) {
      successes[i] = cleanByMarket(olKeys[i], false);
    }
    if (_withdraw) {
      withdraw();
    }
  }

  function efficientClean(OLKey[] calldata olKeys, MgvLib.CleanTarget[][] calldata targets, bool _withdraw)
    public
    returns (uint256 successes, uint256 totalBounty)
  {
    address taker = state.taker;
    for (uint256 i = 0; i < olKeys.length; i++) {
      (uint256 _s, uint256 _b) = mangrove.cleanByImpersonation(olKeys[i], targets[i], taker);
      successes += _s;
      totalBounty += _b;
    }
    if (_withdraw) {
      withdraw();
    }
  }

  function setTaker(address _taker) public {
    require(msg.sender == state.taker, "MangroveCleaner: FORBIDDEN");
    state.taker = _taker;
  }

  function setMaxOfferPerCall(uint96 _maxOfferPerCall) public {
    require(msg.sender == state.taker, "MangroveCleaner: FORBIDDEN");
    state.maxOfferPerCall = _maxOfferPerCall;
  }

  function setState(State calldata _state) public {
    require(msg.sender == state.taker, "MangroveCleaner: FORBIDDEN");
    state = _state;
  }

  function withdraw() public {
    uint256 balance = address(this).balance;
    if (balance > 0) {
      payable(state.taker).transfer(balance);
    }
  }

  receive() external payable {}

  struct EfficientMarketClean {
    bytes32 olKeyHash;
    uint256[] offerIds;
  }

  function efficientCalldataSingleClean(EfficientMarketClean memory market, bool _withdraw)
    public
    returns (uint256 successes, uint256 totalBounty)
  {
    OLKey memory olKey = mangrove.olKeys(market.olKeyHash);
    uint256 balance = IERC20(olKey.inbound_tkn).balanceOf(state.taker);
    MgvLib.CleanTarget[] memory targets = new MgvLib.CleanTarget[](market.offerIds.length);
    for (uint256 i = 0; i < market.offerIds.length; i++) {
      (Offer offer, OfferDetail detail) = mangrove.offerData(olKey, market.offerIds[i]);
      targets[i] = _getCleanTarget(market.offerIds[i], balance, offer, detail);
    }
    (successes, totalBounty) = mangrove.cleanByImpersonation(olKey, targets, state.taker);
    if (_withdraw) {
      withdraw();
    }
  }

  function efficientCalldataClean(EfficientMarketClean[] memory markets)
    public
    returns (uint256 successes, uint256 totalBounty)
  {
    for (uint256 i = 0; i < markets.length; i++) {
      (uint256 _s, uint256 _b) = efficientCalldataSingleClean(markets[i], false);
      successes += _s;
      totalBounty += _b;
    }
    withdraw();
  }
}