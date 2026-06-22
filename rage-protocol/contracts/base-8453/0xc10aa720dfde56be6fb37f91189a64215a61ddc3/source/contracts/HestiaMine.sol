// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {Owned} from "./Owned.sol";
import {IPeaPods} from "./IPeaPods.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";

contract HestiaMine is Owned, ReentrancyGuard {
  // constant
  string private constant VERSION = '2.0';
  uint256 private constant PSN = 10000;
  uint256 private constant PSNH = 5000;
  uint256 private constant CONFIG_INTERVAL = 12 hours;
  uint256 private constant AUTOCOMPOUND_INTERVAL = 8 hours;
  uint256 private constant DRIP_INTERVAL = 6 hours;
  uint256 private constant MINE_SPEED = 2215385; // 3.9% daily roi on miners, market fragment 221538500000
  uint256 private constant MARKET_BOOST_SELL = 1;
  uint256 private constant AUTOCOMPOUND_DURATION = 7 days;
  uint256 private constant REFERRAL_INTERVAL = 4 hours;

  // peapods
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant PHESTIA = IERC20(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IPeaPods private constant PEAPODS = IPeaPods(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  uint256 private constant PODS_BOND_SLIPPAGE = 50; // this is a divisor, equals 2%
  uint256 private constant PODS_WRAP_FEE = 100; // this is a divisor, equals 1%
  uint256 private constant PODS_UNWRAP_FEE = 100; // this is a divisor, equals 1%

  // config variable for automator
  uint256 private BURN_TAX = 6; // percent of every sell amount that is sent to the burn address, min 3, max 8
  uint256 private REFERRAL_BONUS = 10; // percent of fragments that is shared with the referral, min 0, max 15
  uint256 private BUY_FRAGMENT_BOOST = 0; // percent of fragments given to buyers as boost to their buys, min 0, max 15
  uint256 private SELL_MINER_PENALTY = 2; // percent of miners taken from seller the closer he sells to the sell limit amount, min 0, max 3
  uint256 private SELL_LIMIT = 8; // percent of contract balance that can be sold in 1 transaction, min 5, max 10
  uint256 private MARKET_BOOST_BUY = 4; // this is a divisor not a percent, allows to tweak MARKET_FRAGMENT growth on buy, higher percent value advantages buyers, min 3 (33%), default 4 (25%), max 7 (14%)
  uint256 private MARKET_BOOST_COMPOUND = 5; // this is a divisor not a percent, allows to tweak MARKET_FRAGMENT growth on compound, higher percent value advantages buyers, min 3 (33%), default 5 (20%), max 7 (14%)
  uint256 private MIN_HESTIA = 1e17; // minimum hestia to have for a number of contract operations (min 1e15, max 1e18)

  // state variable
  uint256 private LAUNCH_TIMESTAMP = 0;
  uint8 private MINE_STATUS = 0; // 0 idle, 1 open, 2 close
  bool private MINE_ETERNAL = false; // an eternal mine can never be closed
  uint256 private MARKET_FRAGMENT = 221538500000;
  uint256 private NEXT_CONFIG_TIME;
  uint256 private LAST_AUTOCOMPOUND;
  uint256 private LAST_DRIP;
  address private AUTOMATOR = 0xCBe5a4103d4C7Ed5D73d9942101473C1Bc0A8020;
  mapping(address => MiningChief) private MINING_CHIEFS;
  address[] private WALLETS;
  uint256 private LIQUIDITY_DRIP = 0;
  uint256 private TOTAL_MINERS = 0;
  uint256 private TOTAL_BUY = 0;
  uint256 private TOTAL_SELL = 0;
  uint256 private TOTAL_BURN = 0;

  // structs
  struct MiningChief {
    address wallet;
    uint256 miners;
    address lastReferralTo;
    uint256 lastReferralToTimestamp;
    uint256 referralToCount;
    uint256 referralToFragment;
    address lastReferralFrom;
    uint256 lastReferralFromTimestamp;
    uint256 referralFromCount;
    uint256 referralFromFragment;
    uint256 firstTx;
    uint256 lastTx;
    uint256 lastBuy;
    uint256 buyCount;
    uint256 buyTotal;
    uint256 lastCompound;
    uint256 compoundCount;
    uint256 lastSell;
    uint256 sellCount;
    uint256 sellTotal;
    uint256 lastAutocompound;
    uint256 autocompoundCount;
    uint256 autocompoundMiners;
    uint256 lastRegisterAutocompound;
    uint256 registerAutocompoundCount;
  }
  struct MiningChiefOverview {
    uint256 timestamp;
    address wallet;
    bool exists;
    uint256 miners;
    uint256 fragment;
    uint256 fragmentValue;
    uint256 minerShare;
    uint256 contractShare;
    uint256 dailyFragments;
    uint256 estimatedDailyValue;
    bool canReceiveReferral;
    bool canSendReferral;
    address lastReferralTo;
    uint256 lastReferralToTimestamp;
    uint256 referralToCount;
    uint256 referralToFragment;
    address lastReferralFrom;
    uint256 lastReferralFromTimestamp;
    uint256 referralFromCount;
    uint256 referralFromFragment;
    uint256 referralFromMiners;
    bool canBuy;
    uint256 buyFragmentAmount;
    uint256 buyFragmentFromBonus;
    uint256 buyFragmentTotal;
    address buyReferralTo;
    uint8 buyReferralReason;
    uint256 buyFragmentReferralTo;
    uint256 buyMinersReferralTo;
    uint256 buyNewMiners;
    uint256 buyNewMinersFromBuy;
    uint256 buyNewMinersFromCompound;
    uint256 buyNewMinersFromBonus;
    uint256 buyTotalMiners;
    uint256 buyMarketImpact;
    bool canCompound;
    uint256 compoundNewMiners;
    uint256 compoundNewMinersFromCompound;
    uint256 compoundTotalMiners;
    uint256 compoundMarketImpact;
    bool canAutocompound;
    bool canRegisterAutocompound;
    bool registerAutocompoundActive;
    uint256 registerAutocompoundUntil;
    bool canSell;
    uint256 sellLimit;
    uint256 sellHestiaFound;
    uint256 sellEstimatedTax;
    uint256 sellHestiaRemaining;
    uint256 sellMinersPenalty;
    uint256 sellTotalMiners;
    uint256 sellMarketImpact;
    uint256 firstTx;
    uint256 lastTx;
    uint256 lastBuy;
    uint256 buyCount;
    uint256 buyTotal;
    uint256 lastCompound;
    uint256 compoundCount;
    uint256 lastAutocompound;
    uint256 autocompoundCount;
    uint256 autocompoundMiners;
    uint256 lastRegisterAutocompound;
    uint256 registerAutocompoundCount;
    uint256 lastSell;
    uint256 sellCount;
    uint256 sellTotal;
  }
  struct State { 
    string version;
    address owner;
    address automator;
    uint256 nextConfigTime;
    uint256 lastAutocompound;
    uint256 lastDrip;
    uint8 mineStatus;
    bool mineEternal;
    uint256 walletCount;
    uint256 hestiaBalance;
    uint256 pHestiaBalance;
    uint256 hestiaPodsBalance;
    uint256 pTknRate;
    uint256 hestiaSellLimit;
    uint256 marketFragment;
    uint256 totalMiners;
    uint256 mineSpeed;
    uint256 mineRoi;
    uint256 burnTax;
    uint256 referralBonus;
    uint256 buyFragmentBoost;
    uint256 sellMinerPenalty;
    uint256 sellLimit;
    uint256 marketBoostBuy;
    uint256 marketBoostCompound;
    uint256 marketBoostSell;
    uint256 minHestia;
    uint256 totalBuy;
    uint256 totalSell;
    uint256 totalBurn;
    uint256 liquidityDrip;
    uint256 dripInterval;
    uint256 autocompoundInterval;
    uint256 autocompoundDuration;
    uint256 referralInterval;
    uint256 minerRate;
    address pods;
    uint256 launchTimestamp;
  }
  
  // events
  event OpenMine();
  event EternalMine();
  event CloseMine(uint256 totalBalance, uint256 walletAmount, uint256 distributedTotal, uint256 distributedPtknOwner, uint256 distributedTknOwner);
  event Buy(uint256 tokenAmount, uint256 newMiners);
  event Compound(uint256 newMiners);
  event Sell(uint256 burn, uint256 sent);
  event Drip(uint256 tokenAmount);
  event SetAutomator(address automator);
  event ConfigChanged(
      uint256 burnTax,
      uint256 referralBonus,
      uint256 buyFragmentBoost,
      uint256 sellMinerPenalty,
      uint256 sellLimit,
      uint256 marketBoostBuy,
      uint256 marketBoostCompound,
      uint256 minHestia
  );
  event Autocompound(uint256 walletCount);

  // constructor
  constructor() Owned(msg.sender) {}

  // bond tkn provided to ptkn, input is tknAmount
  // reverts if amount of ptkn is less than minimal amount
  function bond(uint256 tknAmount) internal {
    uint256 tknBalance = getHestiaBalance();
    uint256 ptknBalance = getPHestiaBalance();
    require(tknBalance >= tknAmount,'invalidBalanceForBond');

    // tolerate a maximum of 2% slippage on the min amount
    uint256 minAmount = convertTknToPtkn(tknAmount);
    minAmount = minAmount - (minAmount / PODS_BOND_SLIPPAGE);

    PEAPODS.bond(address(HESTIA), tknAmount, minAmount);

    uint256 ptknBalanceAfter = getPHestiaBalance();
    uint256 ptknBalanceDiff = (ptknBalanceAfter > ptknBalance) ? ptknBalanceAfter - ptknBalance : 0;
    require(ptknBalanceDiff >= minAmount,'bondPtknInsufficient');
  }

  // debond pTkn to tkn, input is tknAmount
  // revert if the amount of tkn receives is less than argument
  // the debond function will return an amount very close to tknAmount, but it will not be exactly the same
  function debond(uint256 tknAmount, uint256 minAmount) internal returns(uint256 tknReceived) {
    uint256 tknBalance = getHestiaBalance();
    uint256 ptknBalance = getPHestiaBalance();

    // add 1% wrap fee to the amount
    tknAmount = tknAmount + (tknAmount / PODS_WRAP_FEE);
    uint256 ptknAmount = convertTknToPtkn(tknAmount);

    // add 1% unwrap fee to the amount
    ptknAmount = ptknAmount + (ptknAmount / PODS_UNWRAP_FEE);

    // balance check
    require(ptknBalance >= ptknAmount,'invalidBalanceForDebond');

    address[] memory _tokens = new address[](0);
    uint8[] memory _percentages = new uint8[](0);
    PEAPODS.debond(ptknAmount, _tokens, _percentages);

    uint256 tknBalanceAfter = getHestiaBalance();
    tknReceived = (tknBalanceAfter > tknBalance) ? tknBalanceAfter - tknBalance : 0;
    
    require(tknReceived >= minAmount,'debondTknInsufficient');
  }

  // converts tkn amount to pktn
  function convertTknToPtkn(uint256 tknAmount) public view returns (uint256 ptknAmount)
  {
    ptknAmount = PEAPODS.convertToShares(tknAmount);
  }

  // converts ptkn amount to ktn
  function convertPtknToTkn(uint256 ptknAmount) public view returns (uint256 tknAmount)
  {
    tknAmount = PEAPODS.convertToAssets(ptknAmount);
  }

  // returns the value of the pHestia as hestia, this is what is used internally for all calculations
  function getHestiaPodsBalance() internal view returns(uint256) {
    uint256 balance = getPHestiaBalance();
    return convertPtknToTkn(balance);
  }

  function buy(address ref, uint256 tokenAmount) external nonReentrant {
    require(MINE_STATUS == 1,'mineInactive');

    if(!doesMiningChiefExist(msg.sender)) {
      WALLETS.push(msg.sender);
      MINING_CHIEFS[msg.sender].wallet = msg.sender;
      MINING_CHIEFS[msg.sender].firstTx = block.timestamp;
    }

    MiningChiefOverview memory miningChief = getMiningChiefOverview(msg.sender, tokenAmount, ref);
    require(miningChief.canBuy,'cannotBuy');

    // transfer needs to happen after calculation, as the calculation will be fetching contract's balance
    require(HESTIA.transferFrom(msg.sender, address(this), tokenAmount),'tknTransferFailed');
    
    // bond the tkn with peapods contract, receive pktn
    bond(tokenAmount);

    MINING_CHIEFS[msg.sender].miners += miningChief.buyNewMiners;
    MINING_CHIEFS[msg.sender].referralFromFragment = 0;
    MINING_CHIEFS[msg.sender].lastTx = block.timestamp;
    MINING_CHIEFS[msg.sender].lastBuy = block.timestamp;
    MINING_CHIEFS[msg.sender].buyCount += 1;
    MINING_CHIEFS[msg.sender].buyTotal += tokenAmount;

    if(miningChief.canSendReferral) {  
      // an address could receive multiple referral, we will only keep last "fromAddress" but we add the amount, count and timestamp
      MINING_CHIEFS[ref].lastReferralFrom = msg.sender;
      MINING_CHIEFS[ref].referralFromFragment += miningChief.buyFragmentReferralTo;
      MINING_CHIEFS[ref].referralFromCount += 1;
      MINING_CHIEFS[ref].lastReferralFromTimestamp = block.timestamp;

      // keep track of the last referral to, amount sent, count and timestamp
      MINING_CHIEFS[msg.sender].lastReferralTo = ref;
      MINING_CHIEFS[msg.sender].referralToFragment += miningChief.buyFragmentReferralTo;
      MINING_CHIEFS[msg.sender].referralToCount += 1;
      MINING_CHIEFS[msg.sender].lastReferralToTimestamp = block.timestamp;
    }

    TOTAL_MINERS += miningChief.buyNewMiners;
    TOTAL_BUY += tokenAmount;
    MARKET_FRAGMENT += miningChief.buyMarketImpact;

    emit Buy(tokenAmount, miningChief.buyNewMiners);
  }

  function compound() external nonReentrant {
    require(MINE_STATUS == 1,'mineInactive');

    if(!doesMiningChiefExist(msg.sender)) {
      WALLETS.push(msg.sender);
      MINING_CHIEFS[msg.sender].wallet = msg.sender;
      MINING_CHIEFS[msg.sender].firstTx = block.timestamp;
    }

    MiningChiefOverview memory miningChief = getMiningChiefOverview(msg.sender,0,address(0));
    require(miningChief.canCompound,'cannotCompound');

    miningChiefCompound(msg.sender, miningChief);

    MINING_CHIEFS[msg.sender].lastTx = block.timestamp;
    MINING_CHIEFS[msg.sender].lastCompound = block.timestamp;
    MINING_CHIEFS[msg.sender].compoundCount += 1;

    emit Compound(miningChief.compoundNewMiners);
  }

  function sell() external nonReentrant {
    require(MINE_STATUS == 1,'mineInactive');

    if(!doesMiningChiefExist(msg.sender)) {
      WALLETS.push(msg.sender);
      MINING_CHIEFS[msg.sender].wallet = msg.sender;
      MINING_CHIEFS[msg.sender].firstTx = block.timestamp;
    }

    MiningChiefOverview memory miningChief = getMiningChiefOverview(msg.sender,0,address(0));
    require(miningChief.canSell,'cannotSell');

    MINING_CHIEFS[msg.sender].miners -= miningChief.sellMinersPenalty;
    MINING_CHIEFS[msg.sender].referralFromFragment = 0;
    MINING_CHIEFS[msg.sender].lastTx = block.timestamp;
    MINING_CHIEFS[msg.sender].lastSell = block.timestamp;
    MINING_CHIEFS[msg.sender].sellCount += 1;
    MINING_CHIEFS[msg.sender].sellTotal += miningChief.sellHestiaFound;

    TOTAL_SELL += miningChief.sellHestiaRemaining;
    TOTAL_MINERS -= miningChief.sellMinersPenalty;
    MARKET_FRAGMENT += miningChief.sellMarketImpact;

    // amount of hestia we need to receive, this will revert if the balance received is less than the min amount - sellHestiaRemaining
    uint256 tknReceived = debond(miningChief.sellHestiaFound, miningChief.sellHestiaRemaining);
    
    // we need to recalculate the burn tax as the tkn received from debound is not exactly the amount requested, it is very close though
    // exchange rate fluctuations when debonding are absorbed by the burn tax
    uint256 burnTax = tknReceived - miningChief.sellHestiaRemaining;
    if(burnTax > 0) {
      require(HESTIA.transfer(address(0), burnTax),'burnTransferFailed');
      TOTAL_BURN += burnTax;
    }
    require(HESTIA.transfer(msg.sender, miningChief.sellHestiaRemaining),'walletTransferFailed');

    emit Sell(burnTax, miningChief.sellHestiaRemaining);
  }

  // internal function which compounds the miners for a mining chief
  // can be used in compound and autocompound
  function miningChiefCompound(address adr, MiningChiefOverview memory miningChief) internal {
    require(miningChief.canCompound || miningChief.canAutocompound,'cannotCompoundOrAutoCompound');

    MINING_CHIEFS[adr].miners += miningChief.compoundNewMiners;
    MINING_CHIEFS[adr].referralFromFragment = 0;

    TOTAL_MINERS += miningChief.compoundNewMiners;
    MARKET_FRAGMENT += miningChief.compoundMarketImpact;
  }

  // register autocompound for the calling user
  // during autocompound period user cannot compound or sell, but the compounded will be done automatically by the automator wallet
  function registerAutocompound() external nonReentrant {
    require(MINE_STATUS == 1,'mineInactive');
    MiningChiefOverview memory miningChief = getMiningChiefOverview(msg.sender,0, address(0));
    require(!miningChief.registerAutocompoundActive,'autocompoundAlreadyActive');

    MINING_CHIEFS[msg.sender].lastRegisterAutocompound = block.timestamp;
    MINING_CHIEFS[msg.sender].lastTx = block.timestamp;
    MINING_CHIEFS[msg.sender].registerAutocompoundCount++;
    MINING_CHIEFS[msg.sender].autocompoundCount = 0;
    MINING_CHIEFS[msg.sender].autocompoundMiners = 0;
  }

  // most of the calculations for buy, compound and sell have been brought in this one function
  // it was mostly done for having easy access to all the data in the front-end
  function getMiningChiefOverview(address adr, uint256 buyAmount, address buyReferral) public view returns (MiningChiefOverview memory) {
    // overview
    bool exists = doesMiningChiefExist(adr);
    uint256 contractBalance = getHestiaPodsBalance();
    uint256 existingMiners = MINING_CHIEFS[adr].miners;
    uint256 contractShare = TOTAL_MINERS > 0 ? (existingMiners * contractBalance) / TOTAL_MINERS : 0;
    uint256 existingFragment = calculateMiningChiefFragment(MINING_CHIEFS[adr].lastTx, existingMiners, MINING_CHIEFS[adr].referralFromFragment);
    uint256 existingFragmentValue = existingFragment > 0 ? calculateFragmentSell(existingFragment, contractBalance, MARKET_FRAGMENT): 0;
    uint256 existingMinerShare = TOTAL_MINERS > 0 ? (existingMiners * 10000) / TOTAL_MINERS: 0;
    uint256 dailyFragments = (existingMiners * 1 days);
    uint256 estimatedDailyValue = dailyFragments > 0 ? calculateFragmentSell(dailyFragments, contractBalance, MARKET_FRAGMENT) : 0;
    
    // referral
    bool canReceiveReferral = REFERRAL_BONUS > 0 && exists;
    bool canSendReferral = false;
    address lastReferralTo = MINING_CHIEFS[adr].lastReferralTo;
    uint256 lastReferralToTimestamp = MINING_CHIEFS[adr].lastReferralToTimestamp;
    uint256 referralToCount = MINING_CHIEFS[adr].referralToCount;
    uint256 referralToFragment = MINING_CHIEFS[adr].referralToFragment;
    address lastReferralFrom = MINING_CHIEFS[adr].lastReferralFrom;
    uint256 lastReferralFromTimestamp = MINING_CHIEFS[adr].lastReferralFromTimestamp;
    uint256 referralFromCount = MINING_CHIEFS[adr].referralFromCount;
    uint256 referralFromFragment = MINING_CHIEFS[adr].referralFromFragment;
    uint256 referralFromMiners = referralFromFragment / MINE_SPEED;

    // buy
    uint256 buyFragmentAmount;
    uint256 buyFragmentFromBonus;
    uint256 buyFragmentTotal;
    address buyReferralTo;
    uint8 buyReferralReason;
    uint256 buyFragmentReferralTo;
    uint256 buyMinersReferralTo;
    uint256 buyNewMiners;
    uint256 buyNewMinersFromBuy;
    uint256 buyNewMinersFromCompound;
    uint256 buyNewMinersFromBonus;
    uint256 buyTotalMiners;
    uint256 buyMarketImpact;
    bool canBuy = MINE_STATUS == 1 && buyAmount >= MIN_HESTIA;
    if(canBuy) {
      // there is a major difference here with original bnbminer, we do NOT deduct a burn tax from the buy amount - only the sell
      buyFragmentAmount = calculateFragmentBuy(buyAmount, contractBalance, MARKET_FRAGMENT);

      // whether referral can be active for this buy transaction, you can only send a referral to a mining chief that already exists
      bool validReferralInterval = (lastReferralToTimestamp + REFERRAL_INTERVAL) < block.timestamp;
      bool activateReferral = buyReferral != address(0) && REFERRAL_BONUS > 0 && buyReferral != adr && doesMiningChiefExist(buyReferral) && validReferralInterval;

      // another difference with bnb miner, the fragment referral is only calculated from the buy itself and not the fragments generated by the miners over time
      // it is also only available in a buy transaction
      buyFragmentReferralTo = activateReferral ? (buyFragmentAmount * REFERRAL_BONUS) / 100 : 0;

      // activate referral if the referral address is valid, if there are referral fragments that can be sent, and if the last referral is not the same
      canSendReferral = activateReferral && buyFragmentReferralTo > 0 && lastReferralTo != buyReferral;

      // we can send referral
      if(canSendReferral)
      {
        // if a referral will be given, save the address, otherwise return null adddress
        buyReferralTo = buyReferral;

        // calculate the miners value of the fragment referral, for front-end purposes
        buyMinersReferralTo = (buyFragmentReferralTo / MINE_SPEED);
      }

      // cannot send referral
      else
      {
        // front-end helper, to find why the referral has failed
        if(buyReferral == address(0)) buyReferralReason = 1; // code 1, no referral address
        else if(REFERRAL_BONUS == 0) buyReferralReason = 2; // code 2, there are no referral bonus at the moment
        else if(buyReferral == adr) buyReferralReason = 3; // code 3, referral address is self
        else if(!doesMiningChiefExist(buyReferral)) buyReferralReason = 4; // code 4, referral address is not a mining chief
        else if(!validReferralInterval) buyReferralReason = 5; // code 5, cannot send 2 referrals within such a short delay
        else if(lastReferralTo == buyReferral) buyReferralReason = 6; // code 6, cannot send twice in a row a referral to the same address
        else if(buyFragmentReferralTo == 0) buyReferralReason = 7; // code 7, referral fragment calculated is empty
        else buyReferralReason = 8; // unknown error

        buyFragmentReferralTo = 0;
      }

      // calculate total fragments acquired by combining buy and referralFragments
      uint256 buyFragmentCombined = buyFragmentAmount + MINING_CHIEFS[adr].referralFromFragment;

      // we apply the fragment bonus, if activated, only on the actual fragments acquired from the buy
      if(BUY_FRAGMENT_BOOST > 0 && buyFragmentAmount > 0) {
        buyFragmentFromBonus = (buyFragmentAmount * BUY_FRAGMENT_BOOST) / 100;
        buyFragmentCombined += buyFragmentFromBonus;
      }

      buyFragmentTotal = calculateMiningChiefFragment(MINING_CHIEFS[adr].lastTx, existingMiners, buyFragmentCombined);

      // calculate new miners from fragments
      buyNewMiners = buyFragmentTotal / MINE_SPEED;

      // we want to separate the value of new miners coming from buy and from the compound of existing fragments
      buyNewMinersFromBuy = buyFragmentAmount / MINE_SPEED;
      buyNewMinersFromBonus = (buyFragmentFromBonus > 0) ? buyFragmentFromBonus / MINE_SPEED : 0;
      uint256 buyNewMinersFromBuyAndBonus = buyNewMinersFromBuy + buyNewMinersFromBonus;

      // in this calculation we want to isolate the miners coming only from compound (remove buy and referral)
      uint256 buyNewMinersFromCompoundAndReferral = buyNewMiners > buyNewMinersFromBuyAndBonus ? (buyNewMiners - buyNewMinersFromBuyAndBonus) : 0;
      buyNewMinersFromCompound = buyNewMinersFromCompoundAndReferral > referralFromMiners ? (buyNewMinersFromCompoundAndReferral - referralFromMiners) : 0;
      
      buyTotalMiners = MINING_CHIEFS[adr].miners + buyNewMiners;
      buyMarketImpact = buyFragmentTotal / MARKET_BOOST_BUY;
    }

    // autocompound
    uint256 registerAutocompoundUntil = MINING_CHIEFS[adr].lastRegisterAutocompound > 0 ? MINING_CHIEFS[adr].lastRegisterAutocompound + AUTOCOMPOUND_DURATION : 0;
    bool registerAutocompoundActive = block.timestamp < registerAutocompoundUntil;
    bool canRegisterAutocompound = exists && !registerAutocompoundActive && existingMiners > 0;
    bool canAutocompound = MINE_STATUS == 1 && exists && registerAutocompoundActive && existingFragmentValue >= MIN_HESTIA;

    // compound
    uint256 compoundNewMiners;
    uint256 compoundNewMinersFromCompound;
    uint256 compoundTotalMiners;
    uint256 compoundMarketImpact;
    // the mining chief does not need to exist for a compound, as he could have obtained fragments from referral
    bool canCompound = MINE_STATUS == 1 && !registerAutocompoundActive && existingFragmentValue >= MIN_HESTIA;
    if(canCompound || canAutocompound) {
      // existing fragment will include fragment acquired over time by miners and referral fragments
      compoundNewMiners = existingFragment / MINE_SPEED;

      // in this calculation we want to isolate the miners coming only from compound (remove referral)
      compoundNewMinersFromCompound = compoundNewMiners > referralFromMiners ? (compoundNewMiners - referralFromMiners) : 0;

      compoundTotalMiners = MINING_CHIEFS[adr].miners + compoundNewMiners;
      compoundMarketImpact = existingFragment / MARKET_BOOST_COMPOUND;
    }
    
    // sell
    uint256 sellEstimatedTax;
    uint256 sellHestiaFound;
    uint256 sellHestiaRemaining;
    uint256 sellMarketImpact;
    uint256 sellMinersPenalty;
    uint256 sellTotalMiners;
    uint256 sellLimit = calculateSellLimit(contractBalance);
    // the mining chief does not need to exist for a sell, as he could have obtained fragments from referral
    bool canSell = MINE_STATUS == 1 && !registerAutocompoundActive && existingFragmentValue >= MIN_HESTIA && existingFragmentValue <= sellLimit;
    if(canSell) {
      // get value of existing fragments, and calculate the burn tax
      sellHestiaFound = existingFragmentValue;
      sellEstimatedTax = calculateBurnTax(existingFragmentValue);

      sellHestiaRemaining = existingFragmentValue - sellEstimatedTax;

      // same as bnb miner, sells have full market impact
      sellMarketImpact = existingFragment / MARKET_BOOST_SELL;

      // a miner penalty can be calculated dynamically depending on how close the sell amount is to the sell limit
      sellMinersPenalty = calculateDynamicSellPenalty(sellHestiaFound, existingMiners, sellLimit);
      sellTotalMiners = existingMiners - sellMinersPenalty;
    }

    return MiningChiefOverview({
      timestamp: block.timestamp, // current timestamp
      wallet: adr, // address of the mining chief
      exists: exists, // whether the mining chief exists - has made one buy transaction
      miners: existingMiners, // the total miners owned by the mining chiefs
      fragment: existingFragment, // the number of fragments currently mined by the miners
      fragmentValue: existingFragmentValue, // the value of fragments in hestia amount
      minerShare: existingMinerShare, // the share of the mining chief miners vs all miners
      contractShare: contractShare, // the share of token in the contract that the mining chief theoratically owns at the moment
      dailyFragments: dailyFragments, // the fragments the mining chief should generate in one day
      estimatedDailyValue: estimatedDailyValue, // the value of those daily fragments generated in hestia amount
      canReceiveReferral: canReceiveReferral, // whether the mining chief can receive referral
      canSendReferral: canSendReferral, // whether the mining chief can send referral fragments to another mining chief
      lastReferralTo: lastReferralTo, // the last address this mining chief sent fragments to
      lastReferralToTimestamp: lastReferralToTimestamp, // timestamp of last referral sent to another mining chief
      referralToCount: referralToCount, // number of referral transactions that were sent to other mining chiefs 
      referralToFragment: referralToFragment, // the amount of fragment this mining chief sent to another one
      lastReferralFrom: lastReferralFrom, // the last mining chief address that sent fragments to this mining chief
      lastReferralFromTimestamp: lastReferralFromTimestamp, // timestamp of last received referral by this mining chief
      referralFromCount: referralFromCount, // number of referral transactions that were received by this mining chief
      referralFromFragment: referralFromFragment, // the amount of fragments this mining chief received as referrals, resets to zero after each transaction
      referralFromMiners: referralFromMiners, // the amount of miners, calculated from the fragments, this mining chief received as referrals
      canBuy: canBuy, // whether the mining chief can do a buy transaction
      buyFragmentAmount: buyFragmentAmount, // this is the amount of fragments that can be bought with the provided hestia token
      buyFragmentFromBonus: buyFragmentFromBonus, // amount of fragment from bonus, which is a portion of the buy
      buyFragmentTotal: buyFragmentTotal, // this is the total amount of fragments that includes bought fragments, referral fragments and accumulated fragments via miners
      buyReferralTo: buyReferralTo, // address of the referral if valid, returns null address otherwise 
      buyReferralReason: buyReferralReason, // number of the referral failure, for the front-end
      buyFragmentReferralTo: buyFragmentReferralTo, // the fragments available for a referral to another mining chief
      buyMinersReferralTo: buyMinersReferralTo, // the miners available for a referral to another mining chief
      buyNewMiners: buyNewMiners, // the amount of new miners that will be obtained from the buyFragmentTotal value
      buyNewMinersFromBuy: buyNewMinersFromBuy, // the amount of miners obtained from the "bought fragments"
      buyNewMinersFromCompound: buyNewMinersFromCompound, // the amount of miners obtained from the fragments accumulated by miners
      buyNewMinersFromBonus: buyNewMinersFromBonus, // the amount of miners obtained from the buyFragmentBoost configuration, if activated
      buyTotalMiners: buyTotalMiners, // total amount of miners owned by the mining chief if the transaction proceeds
      buyMarketImpact: buyMarketImpact, // market impact of the buy transaction on the MARKET_FRAGMENTS value
      canCompound: canCompound, // whether the mining chief can do a compound transaction
      compoundNewMiners: compoundNewMiners, // the amount of new miners obtained by the compound transaction
      compoundNewMinersFromCompound: compoundNewMinersFromCompound, // the amount of new miners of the compound, excluding the referral miners
      compoundTotalMiners: compoundTotalMiners, // total amount of miners owned by the mining chief if the transaction proceeds
      compoundMarketImpact: compoundMarketImpact, // market impact of the compound transaction on the MARKET_FRAGMENTS value
      canAutocompound: canAutocompound, // whether the automator could autocompound miners for this mining chief
      canRegisterAutocompound: canRegisterAutocompound, // whether the user could register to autocompound at the moment
      registerAutocompoundActive: registerAutocompoundActive, // if an autocompound registration is currently active
      registerAutocompoundUntil: registerAutocompoundUntil, // the expiry date of the autocompound registration
      canSell: canSell, // whether the mining chief can do a sell transaction
      sellLimit: sellLimit, // the maximum amount of hestia that can be sold in one transaction
      sellHestiaFound: sellHestiaFound, // the value of all fragments in hestia amount
      sellEstimatedTax: sellEstimatedTax, // the estimated burn tax in hestia amount that will be deducted, the amount is not exact as it will be recalculated after debond
      sellHestiaRemaining: sellHestiaRemaining, // the amount of hestia that would be sent to the mining chief if sell transaction proceeds
      sellMinersPenalty: sellMinersPenalty, // the miner penalty the seller will incur if the sell transaction proceeds
      sellTotalMiners: sellTotalMiners, // total amount of miners owned by the mining chief if the transaction proceeds
      sellMarketImpact: sellMarketImpact, // market impact of the sell transaction on the MARKET_FRAGMENTS value
      firstTx: MINING_CHIEFS[adr].firstTx, // date of first transaction
      lastTx: MINING_CHIEFS[adr].lastTx, // date of last transaction
      lastBuy: MINING_CHIEFS[adr].lastBuy, // date of last buy
      buyCount: MINING_CHIEFS[adr].buyCount, // number of distinct buy transactions
      buyTotal: MINING_CHIEFS[adr].buyTotal, // total number of tokens that were used in buy transactions
      lastCompound: MINING_CHIEFS[adr].lastCompound, // date of last compound
      compoundCount: MINING_CHIEFS[adr].compoundCount, // number of distinct compound transactions (autocompound transactions also count)
      lastAutocompound: MINING_CHIEFS[adr].lastAutocompound, // date of last autocompound
      autocompoundCount: MINING_CHIEFS[adr].autocompoundCount, // number of distinct autocompound transactions
      autocompoundMiners: MINING_CHIEFS[adr].autocompoundMiners, // number of miners gained during this autocompound session
      lastRegisterAutocompound: MINING_CHIEFS[adr].lastRegisterAutocompound, // date of last registration to autocompound
      registerAutocompoundCount: MINING_CHIEFS[adr].registerAutocompoundCount, // number of times the mining chief registered to autocompound
      lastSell: MINING_CHIEFS[adr].lastSell, // date of lase sell
      sellCount: MINING_CHIEFS[adr].sellCount, // number of distinct sell transactions
      sellTotal: MINING_CHIEFS[adr].sellTotal // total number of tokens that were used in sell transactions
    });
  }

  // returns all chiefs with full data, will be usefull for the leaderboard
  // need to provide offset and limit as this data set might become too big
  function getAllChiefs(uint256 offset, uint256 limit) external view returns (MiningChiefOverview[] memory)
  {
    uint256 walletAmount = WALLETS.length;
    
    // return empty array if no wallets exist or offset is beyond available wallets
    if (walletAmount == 0 || offset >= walletAmount) {
        return new MiningChiefOverview[](0);
    }

    uint256 end = offset + limit;
    if (end > walletAmount) {
        end = walletAmount;
    }
    uint256 length = end - offset;

    MiningChiefOverview[] memory chiefs = new MiningChiefOverview[](length);

    for (uint256 i = 0; i < length; ++i) {
        address wallet = WALLETS[i + offset];
        MiningChiefOverview memory miningChief = getMiningChiefOverview(wallet, 0,address(0));
        chiefs[i] = miningChief;
    }

    return chiefs;
  }

  function calculateMiningChiefFragment(uint256 lastTx, uint256 miners, uint256 fragment) internal view returns(uint256) {
    uint256 fragmentSinceLastTx = 0;

    if(lastTx != 0) {
      uint256 secondsSinceLastTx = block.timestamp - lastTx;
      uint256 secondsPassed = MINE_SPEED < secondsSinceLastTx ? MINE_SPEED : secondsSinceLastTx;
      fragmentSinceLastTx = secondsPassed * miners;
    }

    return fragment + fragmentSinceLastTx;
  }
  
  function getState() external view returns (State memory) {
    uint256 balance = getHestiaPodsBalance();
    uint256 pTknRate = convertPtknToTkn(1e18);
    uint256 minerRate = (calculateFragmentBuy(1e18, balance, MARKET_FRAGMENT) * 10000) / MINE_SPEED;

    return State({
      version: VERSION,
      owner: owner,
      automator: AUTOMATOR,
      nextConfigTime: NEXT_CONFIG_TIME,
      lastAutocompound: LAST_AUTOCOMPOUND,
      lastDrip: LAST_DRIP,
      mineStatus: MINE_STATUS,
      mineEternal: MINE_ETERNAL,
      walletCount: WALLETS.length,
      hestiaBalance: getHestiaBalance(),
      pHestiaBalance: getPHestiaBalance(),
      hestiaPodsBalance: balance,
      pTknRate: pTknRate,
      hestiaSellLimit: calculateSellLimit(balance),
      marketFragment: MARKET_FRAGMENT,
      totalMiners: TOTAL_MINERS,
      mineSpeed: MINE_SPEED,
      mineRoi: (1 days * 10000) / MINE_SPEED,
      burnTax: BURN_TAX,
      referralBonus: REFERRAL_BONUS,
      buyFragmentBoost: BUY_FRAGMENT_BOOST,
      sellMinerPenalty: SELL_MINER_PENALTY,
      sellLimit: SELL_LIMIT,
      marketBoostBuy: MARKET_BOOST_BUY,
      marketBoostCompound: MARKET_BOOST_COMPOUND,
      marketBoostSell: MARKET_BOOST_SELL,
      minHestia: MIN_HESTIA,
      totalBuy: TOTAL_BUY,
      totalSell: TOTAL_SELL,
      totalBurn: TOTAL_BURN,
      liquidityDrip: LIQUIDITY_DRIP,
      dripInterval: DRIP_INTERVAL,
      autocompoundInterval: AUTOCOMPOUND_INTERVAL,
      autocompoundDuration: AUTOCOMPOUND_DURATION,
      referralInterval: REFERRAL_INTERVAL,
      minerRate: minerRate,
      pods: address(PEAPODS),
      launchTimestamp: LAUNCH_TIMESTAMP
    });
  }
  
  function getWallets() external view returns (address[] memory) {
    return WALLETS;
  }

  function doesMiningChiefExist(address adr) public view returns (bool) {
    return MINING_CHIEFS[adr].wallet == adr;
  }

  function openMine() external onlyOwner nonReentrant {
    require(MINE_STATUS == 0,'mineCannotBeOpened');
    MINE_STATUS = 1;
    LAUNCH_TIMESTAMP = block.timestamp;

    // approve tokens for peapods contract
    require(HESTIA.approve(address(PEAPODS), type(uint256).max),'approveFailed');
    require(PHESTIA.approve(address(PEAPODS), type(uint256).max),'approveFailed');

    emit OpenMine();
  }
  
  // owner function which makes the mine eternal and disables the closeMine function
  function eternalMine() external onlyOwner nonReentrant {
    require(MINE_STATUS == 1,'mineNotOpen');
    require(MINE_ETERNAL == false,'mineAlreadyEternal');

    MINE_ETERNAL = true;

    emit EternalMine();
  }

  // the close mine function is an emergency exit if something should break in the contract
  // we are keeping this function only for the first few weeks in case of a critical problem with the peapods integration
  // once MINE_ETERNAL is true, then the mine is eternal, and can never be closed
  // we are aware the closeMine function would not scale if the wallets array contains millions of addresses
  // all contract funds will be sent back to investor using their miner share
  // we are not using the main calculation function getMiningChiefOverview, as if there is a calculation error one day it will come from there
  // we are sending pHestia to users, they will have to debond on their end
  function closeMine() external onlyOwner nonReentrant {
    require(MINE_STATUS == 1,'mineCannotBeClosed');
    require(MINE_ETERNAL == false,'mineIsEternal');
    MINE_STATUS = 2;
    uint256 totalBalance = getPHestiaBalance();
    uint256 walletAmount = WALLETS.length;
    uint256 distributedTotal = 0;
    uint256 distributedPtknOwner = 0;
    uint256 distributedTknOwner = 0;

    // if there are pTokens to distribute
    if(totalBalance > MIN_HESTIA && TOTAL_MINERS > 0)
    {
      for (uint256 i = 0; i < walletAmount; ++i) {
          address wallet = WALLETS[i];
          uint256 miners = MINING_CHIEFS[wallet].miners;

          if (miners > 0) {
              uint256 share = (miners * totalBalance) / TOTAL_MINERS;
              uint256 currentBalance = getPHestiaBalance();
              if (share > currentBalance) {
                  share = currentBalance;
              }

              // ignore dust position from the close mine payment, this will reduce number of transactions
              if (share > MIN_HESTIA) {
                  distributedTotal += share;
                  require(PHESTIA.transfer(wallet, share), "ptknTransferFailed");
              }

              MINING_CHIEFS[wallet].miners = 0;
          }
      }

      // send remaining dust to owner for ptkn and tkn
      distributedPtknOwner = getPHestiaBalance();
      if (distributedPtknOwner > 0) {
          require(PHESTIA.transfer(owner, distributedPtknOwner), "ptknDustTransferFailed");
      }
      distributedTknOwner = getHestiaBalance();
      if (distributedTknOwner > 0) {
          require(HESTIA.transfer(owner, distributedTknOwner), "tknDustTransferFailed");
      }

      TOTAL_MINERS = 0;
    }
    
    emit CloseMine(totalBalance, walletAmount, distributedTotal, distributedPtknOwner, distributedTknOwner);
  }
  
  // change automator address, only for owner or automator
  // even though its not the best practice, we choose to allow automator to name a successor himself (if deployer wallet is lost for example)
  function setAutomator(address automator) external nonReentrant {
      require(msg.sender == AUTOMATOR || msg.sender == owner, "unauthorized");
      require(automator != owner && automator != address(0), "invalidAutomatorAddress");
      AUTOMATOR = automator;
      emit SetAutomator(automator);
  }

  // autocompound
  // the automator wallet will loop through a range of wallets who have auto-compound activated and will compound their fragments in new miners
  function autocompound(uint256 offset, uint256 limit) external nonReentrant {
    require(msg.sender == AUTOMATOR, "unauthorized");
    require(MINE_STATUS == 1,'mineInactive');
    require(block.timestamp >= LAST_AUTOCOMPOUND + AUTOCOMPOUND_INTERVAL, "autocompoundTimeout");
    LAST_AUTOCOMPOUND = block.timestamp;

    uint256 totalWallets = WALLETS.length;
    uint256 walletsCount = 0;

    require(offset <= totalWallets, "invalidOffset");
    uint256 endIndex = offset + limit;
    if (endIndex > totalWallets) {
        endIndex = totalWallets;
    }

    for (uint256 i = offset; i < endIndex; ++i) {
        address adr = WALLETS[i];
        MiningChiefOverview memory miningChief = getMiningChiefOverview(adr,0,address(0));

        if(miningChief.canAutocompound) {
          miningChiefCompound(adr, miningChief);
          MINING_CHIEFS[adr].lastAutocompound = block.timestamp;
          MINING_CHIEFS[adr].autocompoundCount += 1;
          MINING_CHIEFS[adr].autocompoundMiners += miningChief.compoundNewMiners;
          walletsCount++;
        }
    }

    emit Autocompound(walletsCount);
  }

  // automator can drip liquidity in the mine without creating new miners
  // this is very beneficial for all investors
  function drip(uint256 tokenAmount) external nonReentrant {
    require(msg.sender == AUTOMATOR, "unauthorized");
    require(MINE_STATUS == 1,'mineInactive');
    require(block.timestamp >= LAST_DRIP + DRIP_INTERVAL, "dripTimeout");
    LAST_DRIP = block.timestamp;

    require(HESTIA.transferFrom(msg.sender, address(this), tokenAmount),'tknTransferFailed');
    
    // the drip function will bond received token and any hestia token that could have been left in contract
    uint256 balance = getHestiaBalance();

    // bond the tkn with peapods contract, receive pktn
    bond(balance);

    LIQUIDITY_DRIP += balance;

    emit Drip(balance);
  }

  // set configs of the contract, only for automator
  function setConfigs(
      uint256 burnTax,
      uint256 referralBonus,
      uint256 buyFragmentBoost,
      uint256 sellMinerPenalty,
      uint256 sellLimit,
      uint256 marketBoostBuy,
      uint256 marketBoostCompound,
      uint256 minHestia
  ) external nonReentrant {
      require(msg.sender == AUTOMATOR, "unauthorized");
      require(MINE_STATUS == 1,'mineInactive');
      require(block.timestamp >= NEXT_CONFIG_TIME, "configTimeout");
      NEXT_CONFIG_TIME = block.timestamp + CONFIG_INTERVAL;

      require(burnTax >= 3 && burnTax <= 8, "invalidBurnTax");
      require(referralBonus >= 0 && referralBonus <= 15, "invalidReferralBonus");
      require(buyFragmentBoost >= 0 && buyFragmentBoost <= 15, "invalidBuyFragmentBoost");
      require(sellMinerPenalty >= 0 && sellMinerPenalty <= 3, "invalidSellMinerPenalty");
      require(sellLimit >= 5 && sellLimit <= 10, "invalidSellLimit");
      require(marketBoostBuy >= 3 && marketBoostBuy <= 7, "invalidMarketBoostBuy");
      require(marketBoostCompound >= 3 && marketBoostCompound <= 7, "invalidMarketBoostCompound");
      require(minHestia >= 1e15 && minHestia <= 1e18, "invalidMinHestia");

      BURN_TAX = burnTax;
      REFERRAL_BONUS = referralBonus;
      BUY_FRAGMENT_BOOST = buyFragmentBoost;
      SELL_MINER_PENALTY = sellMinerPenalty;
      SELL_LIMIT = sellLimit;
      MARKET_BOOST_BUY = marketBoostBuy;
      MARKET_BOOST_COMPOUND = marketBoostCompound;
      MIN_HESTIA = minHestia;

      emit ConfigChanged(
          burnTax,
          referralBonus,
          buyFragmentBoost,
          sellMinerPenalty,
          sellLimit,
          marketBoostBuy,
          marketBoostCompound,
          minHestia
      );
  }

  // returns the hestia within contract
  function getHestiaBalance() internal view returns(uint256) {
    return HESTIA.balanceOf(address(this));
  }

  // returns the pHestia within contract
  function getPHestiaBalance() internal view returns(uint256) {
    return PHESTIA.balanceOf(address(this));
  }

  // calculates the max sell amount if a sell limit exists
  function calculateSellLimit(uint256 balance) public view returns(uint256) {
    uint256 sellLimit = balance;

    if(balance > 0)
    {
      uint256 limit = (balance * SELL_LIMIT) / 100;
      // ensure that the limit is at least min hestia, if balance is lesser than sellLimit
      sellLimit = limit > MIN_HESTIA ? limit : MIN_HESTIA;
    }

    return sellLimit;
  }

  // calculateDynamicSellPenalty
  function calculateDynamicSellPenalty(uint256 sellAmount, uint256 userMiners, uint256 maxSellAmount) public view returns (uint256) {
      if (SELL_MINER_PENALTY == 0 || userMiners == 0 || sellAmount == 0) {
          return 0;
      }
      
      // if no sell limit exists, apply full penalty
      if (maxSellAmount == 0) {
          return (userMiners * SELL_MINER_PENALTY) / 100;
      }
      
      // if selling at or above the limit, apply full penalty
      if (sellAmount >= maxSellAmount) {
          return (userMiners * SELL_MINER_PENALTY) / 100;
      }
      
      // otherwise scale penalty linearly based on sell amount vs max sell amount
      return (sellAmount * userMiners * SELL_MINER_PENALTY) / (maxSellAmount * 100);
  }

  // main trade algorythm - identical to the one in bnbminer
  function calculateTrade(uint256 rt, uint256 rs, uint256 bs) internal pure returns (uint256) {
    if(rt == 0) {
      return 0;
    }
    //(PSN*bs)/(PSNH+((PSN*rs+PSNH*rt)/rt))
    return (PSN * bs) / (PSNH + (((PSN * rs) + (PSNH * rt)) / rt));
  }
  
  // calculates the sell of fragment to hestia
  function calculateFragmentSell(uint256 fragment, uint256 balance, uint256 marketFragment) public pure returns (uint256) {
    return calculateTrade(fragment, marketFragment, balance);
  }

  // calculates buying fragment using hestia
  function calculateFragmentBuy(uint256 tokenAmount, uint256 balance, uint256 marketFragment) public pure returns (uint256) {
    return calculateTrade(tokenAmount, balance, marketFragment);
  }

  // calculates the burn tax
  function calculateBurnTax(uint256 amount) public view returns(uint256) {
    return (amount * BURN_TAX) / 100;
  }
}