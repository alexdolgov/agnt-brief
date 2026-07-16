// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {Owned} from "./Owned.sol";
import {IPeaPods} from "./IPeaPods.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";

contract CircleTemple is Owned, ReentrancyGuard {
  // constant
  string private constant VERSION = '3.0';
  uint256 private constant PSN = 10000;
  uint256 private constant PSNH = 5000;
  uint256 private constant CONFIG_INTERVAL = 12 hours;
  uint256 private constant AUTOCOMPOUND_INTERVAL = 24 hours;
  uint256 private constant DRIP_INTERVAL = 12 hours;
  uint256 private constant TEMPLE_SPEED = 2335135; // 3.7% daily roi on templars, market fragment 233513500000
  uint256 private constant MARKET_BOOST_SELL = 1;
  uint256 private constant AUTOCOMPOUND_DURATION = 7 days;
  uint256 private constant REFERRAL_INTERVAL = 1 hours;

  // peapods
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IERC20 private constant PCIRCLE = IERC20(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  IPeaPods private constant PEAPODS = IPeaPods(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  uint256 private constant PODS_BOND_SLIPPAGE = 50; // this is a divisor, equals 2%
  uint256 private constant PODS_WRAP_FEE = 200; // this is a divisor, equals 0.5%
  uint256 private constant PODS_UNWRAP_FEE = 100; // this is a divisor, equals 1%

  // config variable for automator
  uint256 private BURN_TAX = 4; // percent of every sell amount that is sent to the burn address, min 3, max 5
  uint256 private REFERRAL_BONUS = 10; // percent of fragments that is shared with the referral, min 0, max 20
  uint256 private BUY_FRAGMENT_BOOST = 0; // percent of fragments given to buyers as boost to their buys, min 0, max 20
  uint256 private SELL_TEMPLAR_PENALTY = 2; // percent of templars taken from seller the closer he sells to the sell limit amount, min 0, max 3
  uint256 private SELL_LIMIT = 7; // percent of contract balance that can be sold in 1 transaction, min 5, max 10
  uint256 private MARKET_BOOST_BUY = 4; // this is a divisor not a percent, allows to tweak MARKET_FRAGMENT growth on buy, higher percent value advantages buyers, min 3 (33%), default 4 (25%), max 6 (16%)
  uint256 private MARKET_BOOST_COMPOUND = 4; // this is a divisor not a percent, allows to tweak MARKET_FRAGMENT growth on compound, higher percent value advantages buyers, min 3 (33%), default 4 (25%), max 6 (16%)
  uint256 private MIN_CIRCLE = 1e17; // minimum circle to have for a number of contract operations (min 1e15, max 1e18)

  // state variable
  uint256 private LAUNCH_TIMESTAMP = 0;
  uint8 private TEMPLE_STATUS = 0; // 0 idle, 1 open, 2 close
  bool private TEMPLE_ETERNAL = false; // an eternal temple can never be closed
  uint256 private MARKET_FRAGMENT = 233513500000;
  uint256 private NEXT_CONFIG_TIME;
  uint256 private LAST_AUTOCOMPOUND;
  uint256 private LAST_DRIP;
  address private AUTOMATOR = 0xCBe5a4103d4C7Ed5D73d9942101473C1Bc0A8020;
  mapping(address => CultLeader) private CULT_LEADERS;
  address[] private WALLETS;
  uint256 private LIQUIDITY_DRIP = 0;
  uint256 private TOTAL_TEMPLARS = 0;
  uint256 private TOTAL_BUY = 0;
  uint256 private TOTAL_SELL = 0;
  uint256 private TOTAL_BURN = 0;

  // structs
  struct CultLeader {
    address wallet;
    uint256 templars;
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
    uint256 autocompoundTemplars;
    uint256 lastRegisterAutocompound;
    uint256 registerAutocompoundCount;
  }
  struct CultLeaderOverview {
    uint256 timestamp;
    address wallet;
    bool exists;
    uint256 templars;
    uint256 fragment;
    uint256 fragmentValue;
    uint256 templarShare;
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
    uint256 referralFromTemplars;
    bool canBuy;
    uint256 buyFragmentAmount;
    uint256 buyFragmentFromBonus;
    uint256 buyFragmentTotal;
    address buyReferralTo;
    uint8 buyReferralReason;
    uint256 buyFragmentReferralTo;
    uint256 buyTemplarsReferralTo;
    uint256 buyNewTemplars;
    uint256 buyNewTemplarsFromBuy;
    uint256 buyNewTemplarsFromCompound;
    uint256 buyNewTemplarsFromBonus;
    uint256 buyTotalTemplars;
    uint256 buyMarketImpact;
    bool canCompound;
    uint256 compoundNewTemplars;
    uint256 compoundNewTemplarsFromCompound;
    uint256 compoundTotalTemplars;
    uint256 compoundMarketImpact;
    bool canAutocompound;
    bool canRegisterAutocompound;
    bool registerAutocompoundActive;
    uint256 registerAutocompoundUntil;
    bool canSell;
    uint256 sellLimit;
    uint256 sellCircleFound;
    uint256 sellEstimatedTax;
    uint256 sellCircleRemaining;
    uint256 sellTemplarsPenalty;
    uint256 sellTotalTemplars;
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
    uint256 autocompoundTemplars;
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
    uint8 templeStatus;
    bool templeEternal;
    uint256 walletCount;
    uint256 circleBalance;
    uint256 pCircleBalance;
    uint256 circlePodsBalance;
    uint256 pTknRate;
    uint256 circleSellLimit;
    uint256 marketFragment;
    uint256 totalTemplars;
    uint256 templeSpeed;
    uint256 templeRoi;
    uint256 burnTax;
    uint256 referralBonus;
    uint256 buyFragmentBoost;
    uint256 sellTemplarPenalty;
    uint256 sellLimit;
    uint256 marketBoostBuy;
    uint256 marketBoostCompound;
    uint256 marketBoostSell;
    uint256 minCircle;
    uint256 totalBuy;
    uint256 totalSell;
    uint256 totalBurn;
    uint256 liquidityDrip;
    uint256 dripInterval;
    uint256 autocompoundInterval;
    uint256 autocompoundDuration;
    uint256 referralInterval;
    uint256 templarRate;
    address pods;
    uint256 launchTimestamp;
    uint256 templarsOnePercent;
    uint256 circleForOnePercent;
  }

  // events
  event OpenTemple();
  event EternalTemple();
  event CloseTemple(uint256 totalBalance, uint256 walletAmount, uint256 distributedTotal, uint256 distributedPtknOwner, uint256 distributedTknOwner);
  event Buy(uint256 tokenAmount, uint256 newTemplars);
  event Compound(uint256 newTemplars);
  event Sell(uint256 burn, uint256 sent);
  event Drip(uint256 tokenAmount);
  event SetAutomator(address automator);
  event ConfigChanged(
      uint256 burnTax,
      uint256 referralBonus,
      uint256 buyFragmentBoost,
      uint256 sellTemplarPenalty,
      uint256 sellLimit,
      uint256 marketBoostBuy,
      uint256 marketBoostCompound,
      uint256 minCircle
  );
  event Autocompound(uint256 walletCount);

  // constructor
  constructor() Owned(msg.sender) {}

  // bond tkn provided to ptkn, input is tknAmount
  // reverts if amount of ptkn is less than minimal amount
  function bond(uint256 tknAmount) internal {
    uint256 tknBalance = getCircleBalance();
    uint256 ptknBalance = getPCircleBalance();
    require(tknBalance >= tknAmount,'invalidBalanceForBond');

    // tolerate a maximum of 2% slippage on the min amount
    uint256 minAmount = convertTknToPtkn(tknAmount);
    minAmount = minAmount - (minAmount / PODS_BOND_SLIPPAGE);

    PEAPODS.bond(address(CIRCLE), tknAmount, minAmount);

    uint256 ptknBalanceAfter = getPCircleBalance();
    uint256 ptknBalanceDiff = (ptknBalanceAfter > ptknBalance) ? ptknBalanceAfter - ptknBalance : 0;
    require(ptknBalanceDiff >= minAmount,'bondPtknInsufficient');
  }

  // debond pTkn to tkn, input is tknAmount
  // revert if the amount of tkn receives is less than argument
  // the debond function will return an amount very close to tknAmount, but it will not be exactly the same
  function debond(uint256 tknAmount, uint256 minAmount) internal returns(uint256 tknReceived) {
    uint256 tknBalance = getCircleBalance();
    uint256 ptknBalance = getPCircleBalance();

    // add 0.5% wrap fee to the amount
    tknAmount = tknAmount + (tknAmount / PODS_WRAP_FEE);
    uint256 ptknAmount = convertTknToPtkn(tknAmount);

    // add 1% unwrap fee to the amount
    ptknAmount = ptknAmount + (ptknAmount / PODS_UNWRAP_FEE);

    // balance check
    require(ptknBalance >= ptknAmount,'invalidBalanceForDebond');

    address[] memory _tokens = new address[](0);
    uint8[] memory _percentages = new uint8[](0);
    PEAPODS.debond(ptknAmount, _tokens, _percentages);

    uint256 tknBalanceAfter = getCircleBalance();
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

  // returns the value of the pCircle as circle, this is what is used internally for all calculations
  function getCirclePodsBalance() internal view returns(uint256) {
    uint256 balance = getPCircleBalance();
    return convertPtknToTkn(balance);
  }

  function buy(address ref, uint256 tokenAmount) external nonReentrant {
    require(TEMPLE_STATUS == 1,'templeInactive');

    if(!doesCultLeaderExist(msg.sender)) {
      WALLETS.push(msg.sender);
      CULT_LEADERS[msg.sender].wallet = msg.sender;
      CULT_LEADERS[msg.sender].firstTx = block.timestamp;
    }

    CultLeaderOverview memory cultLeader = getCultLeaderOverview(msg.sender, tokenAmount, ref);
    require(cultLeader.canBuy,'cannotBuy');

    // transfer needs to happen after calculation, as the calculation will be fetching contract's balance
    require(CIRCLE.transferFrom(msg.sender, address(this), tokenAmount),'tknTransferFailed');
    
    // bond the tkn with peapods contract, receive pktn
    bond(tokenAmount);

    CULT_LEADERS[msg.sender].templars += cultLeader.buyNewTemplars;
    CULT_LEADERS[msg.sender].referralFromFragment = 0;
    CULT_LEADERS[msg.sender].lastTx = block.timestamp;
    CULT_LEADERS[msg.sender].lastBuy = block.timestamp;
    CULT_LEADERS[msg.sender].buyCount += 1;
    CULT_LEADERS[msg.sender].buyTotal += tokenAmount;

    if(cultLeader.canSendReferral) {  
      // an address could receive multiple referral, we will only keep last "fromAddress" but we add the amount, count and timestamp
      CULT_LEADERS[ref].lastReferralFrom = msg.sender;
      CULT_LEADERS[ref].referralFromFragment += cultLeader.buyFragmentReferralTo;
      CULT_LEADERS[ref].referralFromCount += 1;
      CULT_LEADERS[ref].lastReferralFromTimestamp = block.timestamp;

      // keep track of the last referral to, amount sent, count and timestamp
      CULT_LEADERS[msg.sender].lastReferralTo = ref;
      CULT_LEADERS[msg.sender].referralToFragment += cultLeader.buyFragmentReferralTo;
      CULT_LEADERS[msg.sender].referralToCount += 1;
      CULT_LEADERS[msg.sender].lastReferralToTimestamp = block.timestamp;
    }

    TOTAL_TEMPLARS += cultLeader.buyNewTemplars;
    TOTAL_BUY += tokenAmount;
    MARKET_FRAGMENT += cultLeader.buyMarketImpact;

    emit Buy(tokenAmount, cultLeader.buyNewTemplars);
  }

  function compound() external nonReentrant {
    require(TEMPLE_STATUS == 1,'templeInactive');

    if(!doesCultLeaderExist(msg.sender)) {
      WALLETS.push(msg.sender);
      CULT_LEADERS[msg.sender].wallet = msg.sender;
      CULT_LEADERS[msg.sender].firstTx = block.timestamp;
    }

    CultLeaderOverview memory cultLeader = getCultLeaderOverview(msg.sender,0,address(0));
    require(cultLeader.canCompound,'cannotCompound');

    cultLeaderCompound(msg.sender, cultLeader);

    CULT_LEADERS[msg.sender].lastTx = block.timestamp;
    CULT_LEADERS[msg.sender].lastCompound = block.timestamp;
    CULT_LEADERS[msg.sender].compoundCount += 1;

    emit Compound(cultLeader.compoundNewTemplars);
  }

  function sell() external nonReentrant {
    require(TEMPLE_STATUS == 1,'templeInactive');

    if(!doesCultLeaderExist(msg.sender)) {
      WALLETS.push(msg.sender);
      CULT_LEADERS[msg.sender].wallet = msg.sender;
      CULT_LEADERS[msg.sender].firstTx = block.timestamp;
    }

    CultLeaderOverview memory cultLeader = getCultLeaderOverview(msg.sender,0,address(0));
    require(cultLeader.canSell,'cannotSell');

    CULT_LEADERS[msg.sender].templars -= cultLeader.sellTemplarsPenalty;
    CULT_LEADERS[msg.sender].referralFromFragment = 0;
    CULT_LEADERS[msg.sender].lastTx = block.timestamp;
    CULT_LEADERS[msg.sender].lastSell = block.timestamp;
    CULT_LEADERS[msg.sender].sellCount += 1;
    CULT_LEADERS[msg.sender].sellTotal += cultLeader.sellCircleFound;

    TOTAL_SELL += cultLeader.sellCircleRemaining;
    TOTAL_TEMPLARS -= cultLeader.sellTemplarsPenalty;
    MARKET_FRAGMENT += cultLeader.sellMarketImpact;

    // amount of circle we need to receive, this will revert if the balance received is less than the min amount - sellCircleRemaining
    uint256 tknReceived = debond(cultLeader.sellCircleFound, cultLeader.sellCircleRemaining);
    
    // we need to recalculate the burn tax as the tkn received from debound is not exactly the amount requested, it is very close though
    // exchange rate fluctuations when debonding are absorbed by the burn tax
    uint256 burnTax = tknReceived - cultLeader.sellCircleRemaining;
    if(burnTax > 0) {
      require(CIRCLE.transfer(address(0), burnTax),'burnTransferFailed');
      TOTAL_BURN += burnTax;
    }
    require(CIRCLE.transfer(msg.sender, cultLeader.sellCircleRemaining),'walletTransferFailed');

    emit Sell(burnTax, cultLeader.sellCircleRemaining);
  }

  // internal function which compounds the templars for a cult leader
  // can be used in compound and autocompound
  function cultLeaderCompound(address adr, CultLeaderOverview memory cultLeader) internal {
    require(cultLeader.canCompound || cultLeader.canAutocompound,'cannotCompoundOrAutoCompound');

    CULT_LEADERS[adr].templars += cultLeader.compoundNewTemplars;
    CULT_LEADERS[adr].referralFromFragment = 0;

    TOTAL_TEMPLARS += cultLeader.compoundNewTemplars;
    MARKET_FRAGMENT += cultLeader.compoundMarketImpact;
  }

  // register autocompound for the calling user
  // during autocompound period user cannot compound or sell, but the compounded will be done automatically by the automator wallet
  function registerAutocompound() external nonReentrant {
    require(TEMPLE_STATUS == 1,'templeInactive');
    CultLeaderOverview memory cultLeader = getCultLeaderOverview(msg.sender,0, address(0));
    require(!cultLeader.registerAutocompoundActive,'autocompoundAlreadyActive');

    // compound existing fragments before registering for autocompound, this was a bug in Hestia Mine
    if (cultLeader.canCompound) {
        cultLeaderCompound(msg.sender, cultLeader);
    }

    CULT_LEADERS[msg.sender].lastRegisterAutocompound = block.timestamp;
    CULT_LEADERS[msg.sender].lastTx = block.timestamp;
    CULT_LEADERS[msg.sender].registerAutocompoundCount++;
    CULT_LEADERS[msg.sender].autocompoundCount = 0;
    CULT_LEADERS[msg.sender].autocompoundTemplars = 0;
  }

  // most of the calculations for buy, compound and sell have been brought in this one function
  // it was mostly done for having easy access to all the data in the front-end
  function getCultLeaderOverview(address adr, uint256 buyAmount, address buyReferral) public view returns (CultLeaderOverview memory) {
    // overview
    bool exists = doesCultLeaderExist(adr);
    uint256 contractBalance = getCirclePodsBalance();
    uint256 existingTemplars = CULT_LEADERS[adr].templars;
    uint256 contractShare = TOTAL_TEMPLARS > 0 ? (existingTemplars * contractBalance) / TOTAL_TEMPLARS : 0;
    uint256 existingFragment = calculateCultLeaderFragment(CULT_LEADERS[adr].lastTx, existingTemplars, CULT_LEADERS[adr].referralFromFragment);
    uint256 existingFragmentValue = existingFragment > 0 ? calculateFragmentSell(existingFragment, contractBalance, MARKET_FRAGMENT): 0;
    uint256 existingTemplarShare = TOTAL_TEMPLARS > 0 ? (existingTemplars * 10000) / TOTAL_TEMPLARS: 0;
    uint256 dailyFragments = (existingTemplars * 1 days);
    uint256 estimatedDailyValue = dailyFragments > 0 ? calculateFragmentSell(dailyFragments, contractBalance, MARKET_FRAGMENT) : 0;
    
    // referral
    bool canReceiveReferral = REFERRAL_BONUS > 0 && exists;
    bool canSendReferral = false;
    address lastReferralTo = CULT_LEADERS[adr].lastReferralTo;
    uint256 lastReferralToTimestamp = CULT_LEADERS[adr].lastReferralToTimestamp;
    uint256 referralToCount = CULT_LEADERS[adr].referralToCount;
    uint256 referralToFragment = CULT_LEADERS[adr].referralToFragment;
    address lastReferralFrom = CULT_LEADERS[adr].lastReferralFrom;
    uint256 lastReferralFromTimestamp = CULT_LEADERS[adr].lastReferralFromTimestamp;
    uint256 referralFromCount = CULT_LEADERS[adr].referralFromCount;
    uint256 referralFromFragment = CULT_LEADERS[adr].referralFromFragment;
    uint256 referralFromTemplars = referralFromFragment / TEMPLE_SPEED;

    // buy
    uint256 buyFragmentAmount;
    uint256 buyFragmentFromBonus;
    uint256 buyFragmentTotal;
    address buyReferralTo;
    uint8 buyReferralReason;
    uint256 buyFragmentReferralTo;
    uint256 buyTemplarsReferralTo;
    uint256 buyNewTemplars;
    uint256 buyNewTemplarsFromBuy;
    uint256 buyNewTemplarsFromCompound;
    uint256 buyNewTemplarsFromBonus;
    uint256 buyTotalTemplars;
    uint256 buyMarketImpact;
    bool canBuy = TEMPLE_STATUS == 1 && buyAmount >= MIN_CIRCLE;
    if(canBuy) {
      // there is a major difference here with original bnbminer, we do NOT deduct a burn tax from the buy amount - only the sell
      buyFragmentAmount = calculateFragmentBuy(buyAmount, contractBalance, MARKET_FRAGMENT);

      // whether referral can be active for this buy transaction, you can only send a referral to a cult leader that already exists
      bool validReferralInterval = (lastReferralToTimestamp + REFERRAL_INTERVAL) < block.timestamp;
      bool activateReferral = buyReferral != address(0) && REFERRAL_BONUS > 0 && buyReferral != adr && doesCultLeaderExist(buyReferral) && validReferralInterval;

      // another difference with bnbminer, the fragment referral is only calculated from the buy itself and not the fragments generated by the templars over time
      // it is also only available in a buy transaction
      buyFragmentReferralTo = activateReferral ? (buyFragmentAmount * REFERRAL_BONUS) / 100 : 0;

      // activate referral if the referral address is valid, if there are referral fragments that can be sent, and if the last referral is not the same
      canSendReferral = activateReferral && buyFragmentReferralTo > 0 && lastReferralTo != buyReferral;

      // we can send referral
      if(canSendReferral)
      {
        // if a referral will be given, save the address, otherwise return null adddress
        buyReferralTo = buyReferral;

        // calculate the templars value of the fragment referral, for front-end purposes
        buyTemplarsReferralTo = (buyFragmentReferralTo / TEMPLE_SPEED);
      }

      // cannot send referral
      else
      {
        // front-end helper, to find why the referral has failed
        if(buyReferral == address(0)) buyReferralReason = 1; // code 1, no referral address
        else if(REFERRAL_BONUS == 0) buyReferralReason = 2; // code 2, there are no referral bonus at the moment
        else if(buyReferral == adr) buyReferralReason = 3; // code 3, referral address is self
        else if(!doesCultLeaderExist(buyReferral)) buyReferralReason = 4; // code 4, referral address is not a cult leader
        else if(!validReferralInterval) buyReferralReason = 5; // code 5, cannot send 2 referrals within such a short delay
        else if(lastReferralTo == buyReferral) buyReferralReason = 6; // code 6, cannot send twice in a row a referral to the same address
        else if(buyFragmentReferralTo == 0) buyReferralReason = 7; // code 7, referral fragment calculated is empty
        else buyReferralReason = 8; // unknown error

        buyFragmentReferralTo = 0;
      }

      // calculate total fragments acquired by combining buy and referralFragments
      uint256 buyFragmentCombined = buyFragmentAmount + CULT_LEADERS[adr].referralFromFragment;

      // we apply the fragment bonus, if activated, only on the actual fragments acquired from the buy
      if(BUY_FRAGMENT_BOOST > 0 && buyFragmentAmount > 0) {
        buyFragmentFromBonus = (buyFragmentAmount * BUY_FRAGMENT_BOOST) / 100;
        buyFragmentCombined += buyFragmentFromBonus;
      }

      buyFragmentTotal = calculateCultLeaderFragment(CULT_LEADERS[adr].lastTx, existingTemplars, buyFragmentCombined);

      // calculate new templars from fragments
      buyNewTemplars = buyFragmentTotal / TEMPLE_SPEED;

      // we want to separate the value of new templars coming from buy and from the compound of existing fragments
      buyNewTemplarsFromBuy = buyFragmentAmount / TEMPLE_SPEED;
      buyNewTemplarsFromBonus = (buyFragmentFromBonus > 0) ? buyFragmentFromBonus / TEMPLE_SPEED : 0;
      uint256 buyNewTemplarsFromBuyAndBonus = buyNewTemplarsFromBuy + buyNewTemplarsFromBonus;

      // in this calculation we want to isolate the templars coming only from compound (remove buy and referral)
      uint256 buyNewTemplarsFromCompoundAndReferral = buyNewTemplars > buyNewTemplarsFromBuyAndBonus ? (buyNewTemplars - buyNewTemplarsFromBuyAndBonus) : 0;
      buyNewTemplarsFromCompound = buyNewTemplarsFromCompoundAndReferral > referralFromTemplars ? (buyNewTemplarsFromCompoundAndReferral - referralFromTemplars) : 0;
      
      buyTotalTemplars = CULT_LEADERS[adr].templars + buyNewTemplars;
      buyMarketImpact = buyFragmentTotal / MARKET_BOOST_BUY;
    }

    // autocompound
    uint256 registerAutocompoundUntil = CULT_LEADERS[adr].lastRegisterAutocompound > 0 ? CULT_LEADERS[adr].lastRegisterAutocompound + AUTOCOMPOUND_DURATION : 0;
    bool registerAutocompoundActive = block.timestamp < registerAutocompoundUntil;
    bool canRegisterAutocompound = exists && !registerAutocompoundActive && existingTemplars > 0;
    bool canAutocompound = TEMPLE_STATUS == 1 && exists && registerAutocompoundActive && existingFragmentValue >= MIN_CIRCLE;

    // compound
    uint256 compoundNewTemplars;
    uint256 compoundNewTemplarsFromCompound;
    uint256 compoundTotalTemplars;
    uint256 compoundMarketImpact;
    // the cult leader does not need to exist for a compound, as he could have obtained fragments from referral
    bool canCompound = TEMPLE_STATUS == 1 && !registerAutocompoundActive && existingFragmentValue >= MIN_CIRCLE;
    if(canCompound || canAutocompound) {
      // existing fragment will include fragment acquired over time by templars and referral fragments
      compoundNewTemplars = existingFragment / TEMPLE_SPEED;

      // in this calculation we want to isolate the templars coming only from compound (remove referral)
      compoundNewTemplarsFromCompound = compoundNewTemplars > referralFromTemplars ? (compoundNewTemplars - referralFromTemplars) : 0;

      compoundTotalTemplars = CULT_LEADERS[adr].templars + compoundNewTemplars;
      compoundMarketImpact = existingFragment / MARKET_BOOST_COMPOUND;
    }
    
    // sell
    uint256 sellEstimatedTax;
    uint256 sellCircleFound;
    uint256 sellCircleRemaining;
    uint256 sellMarketImpact;
    uint256 sellTemplarsPenalty;
    uint256 sellTotalTemplars;
    uint256 sellLimit = calculateSellLimit(contractBalance);
    // the cult leader does not need to exist for a sell, as he could have obtained fragments from referral
    bool canSell = TEMPLE_STATUS == 1 && !registerAutocompoundActive && existingFragmentValue >= MIN_CIRCLE && existingFragmentValue <= sellLimit;
    if(canSell) {
      // get value of existing fragments, and calculate the burn tax
      sellCircleFound = existingFragmentValue;
      sellEstimatedTax = calculateBurnTax(existingFragmentValue);

      sellCircleRemaining = existingFragmentValue - sellEstimatedTax;

      // same as bnbminer, sells have full market impact
      sellMarketImpact = existingFragment / MARKET_BOOST_SELL;

      // a templar penalty can be calculated dynamically depending on how close the sell amount is to the sell limit
      sellTemplarsPenalty = calculateDynamicSellPenalty(sellCircleFound, existingTemplars, sellLimit);
      sellTotalTemplars = existingTemplars - sellTemplarsPenalty;
    }

    return CultLeaderOverview({
      timestamp: block.timestamp, // current timestamp
      wallet: adr, // address of the cult leader
      exists: exists, // whether the cult leader exists - has made one buy transaction
      templars: existingTemplars, // the total templars owned by the cult leaders
      fragment: existingFragment, // the number of fragments currently templed by the templars
      fragmentValue: existingFragmentValue, // the value of fragments in circle amount
      templarShare: existingTemplarShare, // the share of the cult leader templars vs all templars
      contractShare: contractShare, // the share of token in the contract that the cult leader theoratically owns at the moment
      dailyFragments: dailyFragments, // the fragments the cult leader should generate in one day
      estimatedDailyValue: estimatedDailyValue, // the value of those daily fragments generated in circle amount
      canReceiveReferral: canReceiveReferral, // whether the cult leader can receive referral
      canSendReferral: canSendReferral, // whether the cult leader can send referral fragments to another cult leader
      lastReferralTo: lastReferralTo, // the last address this cult leader sent fragments to
      lastReferralToTimestamp: lastReferralToTimestamp, // timestamp of last referral sent to another cult leader
      referralToCount: referralToCount, // number of referral transactions that were sent to other cult leaders 
      referralToFragment: referralToFragment, // the amount of fragment this cult leader sent to another one
      lastReferralFrom: lastReferralFrom, // the last cult leader address that sent fragments to this cult leader
      lastReferralFromTimestamp: lastReferralFromTimestamp, // timestamp of last received referral by this cult leader
      referralFromCount: referralFromCount, // number of referral transactions that were received by this cult leader
      referralFromFragment: referralFromFragment, // the amount of fragments this cult leader received as referrals, resets to zero after each transaction
      referralFromTemplars: referralFromTemplars, // the amount of templars, calculated from the fragments, this cult leader received as referrals
      canBuy: canBuy, // whether the cult leader can do a buy transaction
      buyFragmentAmount: buyFragmentAmount, // this is the amount of fragments that can be bought with the provided circle token
      buyFragmentFromBonus: buyFragmentFromBonus, // amount of fragment from bonus, which is a portion of the buy
      buyFragmentTotal: buyFragmentTotal, // this is the total amount of fragments that includes bought fragments, referral fragments and accumulated fragments via templars
      buyReferralTo: buyReferralTo, // address of the referral if valid, returns null address otherwise 
      buyReferralReason: buyReferralReason, // number of the referral failure, for the front-end
      buyFragmentReferralTo: buyFragmentReferralTo, // the fragments available for a referral to another cult leader
      buyTemplarsReferralTo: buyTemplarsReferralTo, // the templars available for a referral to another cult leader
      buyNewTemplars: buyNewTemplars, // the amount of new templars that will be obtained from the buyFragmentTotal value
      buyNewTemplarsFromBuy: buyNewTemplarsFromBuy, // the amount of templars obtained from the "bought fragments"
      buyNewTemplarsFromCompound: buyNewTemplarsFromCompound, // the amount of templars obtained from the fragments accumulated by templars
      buyNewTemplarsFromBonus: buyNewTemplarsFromBonus, // the amount of templars obtained from the buyFragmentBoost configuration, if activated
      buyTotalTemplars: buyTotalTemplars, // total amount of templars owned by the cult leader if the transaction proceeds
      buyMarketImpact: buyMarketImpact, // market impact of the buy transaction on the MARKET_FRAGMENTS value
      canCompound: canCompound, // whether the cult leader can do a compound transaction
      compoundNewTemplars: compoundNewTemplars, // the amount of new templars obtained by the compound transaction
      compoundNewTemplarsFromCompound: compoundNewTemplarsFromCompound, // the amount of new templars of the compound, excluding the referral templars
      compoundTotalTemplars: compoundTotalTemplars, // total amount of templars owned by the cult leader if the transaction proceeds
      compoundMarketImpact: compoundMarketImpact, // market impact of the compound transaction on the MARKET_FRAGMENTS value
      canAutocompound: canAutocompound, // whether the automator could autocompound templars for this cult leader
      canRegisterAutocompound: canRegisterAutocompound, // whether the user could register to autocompound at the moment
      registerAutocompoundActive: registerAutocompoundActive, // if an autocompound registration is currently active
      registerAutocompoundUntil: registerAutocompoundUntil, // the expiry date of the autocompound registration
      canSell: canSell, // whether the cult leader can do a sell transaction
      sellLimit: sellLimit, // the maximum amount of circle that can be sold in one transaction
      sellCircleFound: sellCircleFound, // the value of all fragments in circle amount
      sellEstimatedTax: sellEstimatedTax, // the estimated burn tax in circle amount that will be deducted, the amount is not exact as it will be recalculated after debond
      sellCircleRemaining: sellCircleRemaining, // the amount of circle that would be sent to the cult leader if sell transaction proceeds
      sellTemplarsPenalty: sellTemplarsPenalty, // the templar penalty the seller will incur if the sell transaction proceeds
      sellTotalTemplars: sellTotalTemplars, // total amount of templars owned by the cult leader if the transaction proceeds
      sellMarketImpact: sellMarketImpact, // market impact of the sell transaction on the MARKET_FRAGMENTS value
      firstTx: CULT_LEADERS[adr].firstTx, // date of first transaction
      lastTx: CULT_LEADERS[adr].lastTx, // date of last transaction
      lastBuy: CULT_LEADERS[adr].lastBuy, // date of last buy
      buyCount: CULT_LEADERS[adr].buyCount, // number of distinct buy transactions
      buyTotal: CULT_LEADERS[adr].buyTotal, // total number of tokens that were used in buy transactions
      lastCompound: CULT_LEADERS[adr].lastCompound, // date of last compound
      compoundCount: CULT_LEADERS[adr].compoundCount, // number of distinct compound transactions (autocompound transactions also count)
      lastAutocompound: CULT_LEADERS[adr].lastAutocompound, // date of last autocompound
      autocompoundCount: CULT_LEADERS[adr].autocompoundCount, // number of distinct autocompound transactions
      autocompoundTemplars: CULT_LEADERS[adr].autocompoundTemplars, // number of templars gained during this autocompound session
      lastRegisterAutocompound: CULT_LEADERS[adr].lastRegisterAutocompound, // date of last registration to autocompound
      registerAutocompoundCount: CULT_LEADERS[adr].registerAutocompoundCount, // number of times the cult leader registered to autocompound
      lastSell: CULT_LEADERS[adr].lastSell, // date of lase sell
      sellCount: CULT_LEADERS[adr].sellCount, // number of distinct sell transactions
      sellTotal: CULT_LEADERS[adr].sellTotal // total number of tokens that were used in sell transactions
    });
  }

  // returns all leaders with full data, will be usefull for the leaderboard
  // need to provide offset and limit as this data set might become too big
  function getAllLeaders(uint256 offset, uint256 limit) external view returns (CultLeaderOverview[] memory)
  {
    uint256 walletAmount = WALLETS.length;
    
    // return empty array if no wallets exist or offset is beyond available wallets
    if (walletAmount == 0 || offset >= walletAmount) {
        return new CultLeaderOverview[](0);
    }

    uint256 end = offset + limit;
    if (end > walletAmount) {
        end = walletAmount;
    }
    uint256 length = end - offset;

    CultLeaderOverview[] memory leaders = new CultLeaderOverview[](length);

    for (uint256 i = 0; i < length; ++i) {
        address wallet = WALLETS[i + offset];
        CultLeaderOverview memory cultLeader = getCultLeaderOverview(wallet, 0,address(0));
        leaders[i] = cultLeader;
    }

    return leaders;
  }

  function calculateCultLeaderFragment(uint256 lastTx, uint256 templars, uint256 fragment) internal view returns(uint256) {
    uint256 fragmentSinceLastTx = 0;

    if(lastTx != 0) {
      uint256 secondsSinceLastTx = block.timestamp - lastTx;
      uint256 secondsPassed = TEMPLE_SPEED < secondsSinceLastTx ? TEMPLE_SPEED : secondsSinceLastTx;
      fragmentSinceLastTx = secondsPassed * templars;
    }

    return fragment + fragmentSinceLastTx;
  }
  
  function getState() external view returns (State memory) {
    uint256 balance = getCirclePodsBalance();
    uint256 pTknRate = convertPtknToTkn(1e18);
    uint256 templarRate = (calculateFragmentBuy(1e18, balance, MARKET_FRAGMENT) * 10000) / TEMPLE_SPEED;
    uint256 templarsOnePercent = TOTAL_TEMPLARS / 100;
    uint256 circleForOnePercent = templarRate > 0 ? (templarsOnePercent * 10000) / templarRate : 0;

    return State({
      version: VERSION,
      owner: owner,
      automator: AUTOMATOR,
      nextConfigTime: NEXT_CONFIG_TIME,
      lastAutocompound: LAST_AUTOCOMPOUND,
      lastDrip: LAST_DRIP,
      templeStatus: TEMPLE_STATUS,
      templeEternal: TEMPLE_ETERNAL,
      walletCount: WALLETS.length,
      circleBalance: getCircleBalance(),
      pCircleBalance: getPCircleBalance(),
      circlePodsBalance: balance,
      pTknRate: pTknRate,
      circleSellLimit: calculateSellLimit(balance),
      marketFragment: MARKET_FRAGMENT,
      totalTemplars: TOTAL_TEMPLARS,
      templeSpeed: TEMPLE_SPEED,
      templeRoi: (1 days * 10000) / TEMPLE_SPEED,
      burnTax: BURN_TAX,
      referralBonus: REFERRAL_BONUS,
      buyFragmentBoost: BUY_FRAGMENT_BOOST,
      sellTemplarPenalty: SELL_TEMPLAR_PENALTY,
      sellLimit: SELL_LIMIT,
      marketBoostBuy: MARKET_BOOST_BUY,
      marketBoostCompound: MARKET_BOOST_COMPOUND,
      marketBoostSell: MARKET_BOOST_SELL,
      minCircle: MIN_CIRCLE,
      totalBuy: TOTAL_BUY,
      totalSell: TOTAL_SELL,
      totalBurn: TOTAL_BURN,
      liquidityDrip: LIQUIDITY_DRIP,
      dripInterval: DRIP_INTERVAL,
      autocompoundInterval: AUTOCOMPOUND_INTERVAL,
      autocompoundDuration: AUTOCOMPOUND_DURATION,
      referralInterval: REFERRAL_INTERVAL,
      templarRate: templarRate,
      pods: address(PEAPODS),
      launchTimestamp: LAUNCH_TIMESTAMP,
      templarsOnePercent: templarsOnePercent,
      circleForOnePercent: circleForOnePercent
    });
  }
  
  function getWallets() external view returns (address[] memory) {
    return WALLETS;
  }

  function doesCultLeaderExist(address adr) public view returns (bool) {
    return CULT_LEADERS[adr].wallet == adr;
  }

  function openTemple() external onlyOwner nonReentrant {
    require(TEMPLE_STATUS == 0,'templeCannotBeOpened');
    TEMPLE_STATUS = 1;
    LAUNCH_TIMESTAMP = block.timestamp;

    // approve tokens for peapods contract
    require(CIRCLE.approve(address(PEAPODS), type(uint256).max),'approveFailed');
    require(PCIRCLE.approve(address(PEAPODS), type(uint256).max),'approveFailed');

    emit OpenTemple();
  }
  
  // owner function which makes the temple eternal and disables the closeTemple function
  function eternalTemple() external onlyOwner nonReentrant {
    require(TEMPLE_STATUS == 1,'templeNotOpen');
    require(TEMPLE_ETERNAL == false,'templeAlreadyEternal');

    TEMPLE_ETERNAL = true;

    emit EternalTemple();
  }

  // the close temple function is an emergency exit if something should break in the contract
  // we are keeping this function only for the first few weeks in case of a critical problem with the peapods integration
  // once TEMPLE_ETERNAL is true, then the temple is eternal, and can never be closed
  // we are aware the closeTemple function would not scale if the wallets array contains millions of addresses
  // all contract funds will be sent back to investor using their templar share
  // we are not using the main calculation function getCultLeaderOverview, as if there is a calculation error one day it will come from there
  // we are sending pCircle to users, they will have to debond on their end
  function closeTemple() external onlyOwner nonReentrant {
    require(TEMPLE_STATUS == 1,'templeCannotBeClosed');
    require(TEMPLE_ETERNAL == false,'templeIsEternal');
    TEMPLE_STATUS = 2;
    uint256 totalBalance = getPCircleBalance();
    uint256 walletAmount = WALLETS.length;
    uint256 distributedTotal = 0;
    uint256 distributedPtknOwner = 0;
    uint256 distributedTknOwner = 0;

    // if there are pTokens to distribute
    if(totalBalance > MIN_CIRCLE && TOTAL_TEMPLARS > 0)
    {
      for (uint256 i = 0; i < walletAmount; ++i) {
          address wallet = WALLETS[i];
          uint256 templars = CULT_LEADERS[wallet].templars;

          if (templars > 0) {
              uint256 share = (templars * totalBalance) / TOTAL_TEMPLARS;
              uint256 currentBalance = getPCircleBalance();
              if (share > currentBalance) {
                  share = currentBalance;
              }

              // ignore dust position from the close temple payment, this will reduce number of transactions
              if (share > MIN_CIRCLE) {
                  distributedTotal += share;
                  require(PCIRCLE.transfer(wallet, share), "ptknTransferFailed");
              }

              CULT_LEADERS[wallet].templars = 0;
          }
      }

      // send remaining dust to owner for ptkn and tkn
      distributedPtknOwner = getPCircleBalance();
      if (distributedPtknOwner > 0) {
          require(PCIRCLE.transfer(owner, distributedPtknOwner), "ptknDustTransferFailed");
      }
      distributedTknOwner = getCircleBalance();
      if (distributedTknOwner > 0) {
          require(CIRCLE.transfer(owner, distributedTknOwner), "tknDustTransferFailed");
      }

      TOTAL_TEMPLARS = 0;
    }
    
    emit CloseTemple(totalBalance, walletAmount, distributedTotal, distributedPtknOwner, distributedTknOwner);
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
  // the automator wallet will loop through a range of wallets who have auto-compound activated and will compound their fragments in new templars
  function autocompound(uint256 offset, uint256 limit) external nonReentrant {
    require(msg.sender == AUTOMATOR, "unauthorized");
    require(TEMPLE_STATUS == 1,'templeInactive');
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
        CultLeaderOverview memory cultLeader = getCultLeaderOverview(adr,0,address(0));

        if(cultLeader.canAutocompound) {
          cultLeaderCompound(adr, cultLeader);
          CULT_LEADERS[adr].lastTx = block.timestamp; // this line was missing in the Hestia mine
          CULT_LEADERS[adr].lastAutocompound = block.timestamp;
          CULT_LEADERS[adr].autocompoundCount += 1;
          CULT_LEADERS[adr].autocompoundTemplars += cultLeader.compoundNewTemplars;
          walletsCount++;
        }
    }

    emit Autocompound(walletsCount);
  }

  // automator can drip liquidity in the temple without creating new templars
  // this is very beneficial for all investors
  function drip(uint256 tokenAmount) external nonReentrant {
    require(msg.sender == AUTOMATOR, "unauthorized");
    require(TEMPLE_STATUS == 1,'templeInactive');
    require(block.timestamp >= LAST_DRIP + DRIP_INTERVAL, "dripTimeout");
    LAST_DRIP = block.timestamp;

    require(CIRCLE.transferFrom(msg.sender, address(this), tokenAmount),'tknTransferFailed');
    
    // the drip function will bond received token and any circle token that could have been left in contract
    uint256 balance = getCircleBalance();

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
      uint256 sellTemplarPenalty,
      uint256 sellLimit,
      uint256 marketBoostBuy,
      uint256 marketBoostCompound,
      uint256 minCircle
  ) external nonReentrant {
      require(msg.sender == AUTOMATOR, "unauthorized");
      require(TEMPLE_STATUS == 1,'templeInactive');
      require(block.timestamp >= NEXT_CONFIG_TIME, "configTimeout");
      NEXT_CONFIG_TIME = block.timestamp + CONFIG_INTERVAL;

      require(burnTax >= 3 && burnTax <= 5, "invalidBurnTax");
      require(referralBonus >= 0 && referralBonus <= 20, "invalidReferralBonus");
      require(buyFragmentBoost >= 0 && buyFragmentBoost <= 20, "invalidBuyFragmentBoost");
      require(sellTemplarPenalty >= 0 && sellTemplarPenalty <= 3, "invalidSellTemplarPenalty");
      require(sellLimit >= 5 && sellLimit <= 10, "invalidSellLimit");
      require(marketBoostBuy >= 3 && marketBoostBuy <= 6, "invalidMarketBoostBuy");
      require(marketBoostCompound >= 3 && marketBoostCompound <= 6, "invalidMarketBoostCompound");
      require(minCircle >= 1e15 && minCircle <= 1e18, "invalidMinCircle");

      BURN_TAX = burnTax;
      REFERRAL_BONUS = referralBonus;
      BUY_FRAGMENT_BOOST = buyFragmentBoost;
      SELL_TEMPLAR_PENALTY = sellTemplarPenalty;
      SELL_LIMIT = sellLimit;
      MARKET_BOOST_BUY = marketBoostBuy;
      MARKET_BOOST_COMPOUND = marketBoostCompound;
      MIN_CIRCLE = minCircle;

      emit ConfigChanged(
          burnTax,
          referralBonus,
          buyFragmentBoost,
          sellTemplarPenalty,
          sellLimit,
          marketBoostBuy,
          marketBoostCompound,
          minCircle
      );
  }

  // returns the circle within contract
  function getCircleBalance() internal view returns(uint256) {
    return CIRCLE.balanceOf(address(this));
  }

  // returns the pCircle within contract
  function getPCircleBalance() internal view returns(uint256) {
    return PCIRCLE.balanceOf(address(this));
  }

  // calculates the max sell amount if a sell limit exists
  function calculateSellLimit(uint256 balance) public view returns(uint256) {
    uint256 sellLimit = balance;

    if(balance > 0)
    {
      uint256 limit = (balance * SELL_LIMIT) / 100;
      // ensure that the limit is at least min circle, if balance is lesser than sellLimit
      sellLimit = limit > MIN_CIRCLE ? limit : MIN_CIRCLE;
    }

    return sellLimit;
  }

  // calculateDynamicSellPenalty
  function calculateDynamicSellPenalty(uint256 sellAmount, uint256 userTemplars, uint256 maxSellAmount) public view returns (uint256) {
      if (SELL_TEMPLAR_PENALTY == 0 || userTemplars == 0 || sellAmount == 0) {
          return 0;
      }
      
      // if no sell limit exists, apply full penalty
      if (maxSellAmount == 0) {
          return (userTemplars * SELL_TEMPLAR_PENALTY) / 100;
      }
      
      // if selling at or above the limit, apply full penalty
      if (sellAmount >= maxSellAmount) {
          return (userTemplars * SELL_TEMPLAR_PENALTY) / 100;
      }
      
      // otherwise scale penalty linearly based on sell amount vs max sell amount
      return (sellAmount * userTemplars * SELL_TEMPLAR_PENALTY) / (maxSellAmount * 100);
  }

  // main trade algorythm - identical to the one in bnbminer
  function calculateTrade(uint256 rt, uint256 rs, uint256 bs) internal pure returns (uint256) {
    if(rt == 0) {
      return 0;
    }
    //(PSN*bs)/(PSNH+((PSN*rs+PSNH*rt)/rt))
    return (PSN * bs) / (PSNH + (((PSN * rs) + (PSNH * rt)) / rt));
  }
  
  // calculates the sell of fragment to circle
  function calculateFragmentSell(uint256 fragment, uint256 balance, uint256 marketFragment) public pure returns (uint256) {
    return calculateTrade(fragment, marketFragment, balance);
  }

  // calculates buying fragment using circle
  function calculateFragmentBuy(uint256 tokenAmount, uint256 balance, uint256 marketFragment) public pure returns (uint256) {
    return calculateTrade(tokenAmount, balance, marketFragment);
  }

  // calculates the burn tax
  function calculateBurnTax(uint256 amount) public view returns(uint256) {
    return (amount * BURN_TAX) / 100;
  }
}