// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {RageStructs} from "./RageStructs.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {IRageSwapper} from "./IRageSwapper.sol";
import {IRageOracle} from "./IRageOracle.sol";
import {IRage} from "./IRage.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IERC20} from "./IERC20.sol";
import {IRageOptionNft} from "./IRageOptionNft.sol";
import {IRageCalculation} from "./IRageCalculation.sol";

contract RageBuyingProtocol is ReentrancyGuard {
  // constant
  uint256 private constant VERSION = 1;
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IERC20 private constant PHESTIA = IERC20(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IERC20 private constant PCIRCLE = IERC20(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;
  uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;
  uint256 private constant TRANSACTION_COSTS = 3; // 3% reserved for costs, accounting for price impact, transaction costs (pool fee), and peapods fee
  uint256 private constant INITIAL_HESTIA_BACKING = 1912600000000000000;  // 1.9126 HESTIA
  uint256 private constant INITIAL_CIRCLE_BACKING = 1384800000000000000;  // 1.3848 CIRCLE

  // immutable
  IRageChaosEngine private immutable RAGE_CHAOS_ENGINE;
  IRage private immutable RAGE;
  IRageOracle private immutable RAGE_ORACLE;
  IRageCalculation private immutable RAGE_CALCULATION;
  IRageSwapper private immutable RAGE_SWAPPER;
  IRageOptionNft private immutable RAGE_OPTION_NFT;

  // state
  RageStructs.RbpStateValue private STATE;
  RageStructs.RbpConfig private CONFIG;
  RageStructs.RbpRecent private RECENT;
  address[] private CLAIM_WALLETS; // array which contain all wallets that made a claim
  mapping(uint256 => RageStructs.Option) private OPTIONS_MAP; // options allow multiple options per wallet, id is linked to the nft id
  mapping(address => RageStructs.Claim) private CLAIMS_MAP; // claims allow 1 claim per wallet, a new claim would replace the old

  // events
  event OptionCreated(uint256 indexed optionId);
  event RageMinted(uint256 indexed optionId);
  event OptionRefunded(uint256 indexed optionId);
  event ClaimReserved( address indexed wallet);
  event ClaimProcessed(address indexed wallet);

  // constructor
  constructor(address rce, address rage, address oracle, address calc, address swap, address rOption) {
    RAGE_CHAOS_ENGINE = IRageChaosEngine(rce);
    RAGE = IRage(rage);
    RAGE_ORACLE = IRageOracle(oracle);
    RAGE_CALCULATION = IRageCalculation(calc);
    RAGE_SWAPPER = IRageSwapper(swap);
    RAGE_OPTION_NFT = IRageOptionNft(rOption);

    // approve rage swaps for swapping
    USDC.approve(address(RAGE_SWAPPER), type(uint256).max);
    HESTIA.approve(address(RAGE_SWAPPER), type(uint256).max);
    CIRCLE.approve(address(RAGE_SWAPPER), type(uint256).max);
    PHESTIA.approve(address(RAGE_SWAPPER), type(uint256).max);
    PCIRCLE.approve(address(RAGE_SWAPPER), type(uint256).max);
    
    // initialize config with default values
    CONFIG = RageStructs.RbpConfig({
        minInvest: 10e6,
        maxInvest: 7500e6,
        hestiaPercent: 80,
        investorBonus: 6,
        mintDelay: 2 days,
        adpDelay: 60 days,
        adpPercent: 75,
        ecosystemBonus: 6,
        refundPercent: 85,
        refundDelay: 1000 days,
        claimFee: 10,
        claimDelay: 30 days,
        claimValidity: 10 days,
        minClaim: 1e18,
        maxClaim: 500e18,
        slippage: 500,
        twap: 30 seconds
    });
  }

  // getState
  // returns the complete state of the contract including config and last operations
  function getState() external view returns (RageStructs.RbpState memory) {
    return RageStructs.RbpState({
      version: VERSION,
      state: STATE,
      config: CONFIG,
      recent: RECENT
    });
  }

  // getViewState
  // returns the view state of the contract
  // this function may revert if the contract does not have active assets or active supply
  function getViewState() external view returns (RageStructs.RbpViewState memory) {
    uint256 price = getPrice(1e18);
    uint256 activeSupply = RAGE_CHAOS_ENGINE.getActiveSupply();
    uint256 fmv = getFmv();
    uint256 backingPerShare = getBackingPerShare();
    uint256 activeAssetsValue = getActiveAssetsUsdcValue();
    (uint256 investHestia, uint256 investCircle) = getInvestPercents();

    // assets
    (uint256 rawHestia, uint256 rawCircle) = getRawAssets();
    (uint256 pendingHestia, uint256 pendingCircle) = getPendingAssets();
    (uint256 bonusHestia, uint256 bonusCircle) = getBonusAssets();
    (uint256 activePhestia, uint256 activePcircle) = getActiveAssets();

    // underlying
    (
        uint256 underlyingHestia,
        uint256 underlyingCircle,
        uint256 hestiaValue,
        uint256 circleValue,
        uint256 totalValue,
        uint256 hestiaPercent,
        uint256 circlePercent
    ) = getRageUnderlying();

    // conversion with 1% amounts
    uint256 onePercentUsdc = activeAssetsValue / 100;
    uint256 onePercentRage = activeSupply / 100;
    uint256 rageFromUsdc = getRageFromUsdc(onePercentUsdc);
    (uint256 hestiaFromRage, uint256 circleFromRage) = getAssetsFromRage(onePercentRage);
    
    return RageStructs.RbpViewState({
        price: price,
        activeSupply: activeSupply,
        fmv: fmv,
        backingPerShare: backingPerShare,
        activeAssetsUsdcValue: activeAssetsValue,
        rawHestia: rawHestia,
        rawCircle: rawCircle,
        pendingHestia: pendingHestia,
        pendingCircle: pendingCircle,
        bonusHestia: bonusHestia,
        bonusCircle: bonusCircle,
        activePhestia: activePhestia,
        activePcircle: activePcircle,
        activeHestia: RAGE_ORACLE.getPhestiaInHestiaAfterDebond(activePhestia),
        activeCircle: RAGE_ORACLE.getPcircleInCircleAfterDebond(activePcircle),
        investPercentHestia: investHestia,
        investPercentCircle: investCircle,
        underlyingHestia: underlyingHestia,
        underlyingCircle: underlyingCircle,
        underlyingHestiaValue: hestiaValue,
        underlyingCircleValue: circleValue,
        underlyingTotalValue: totalValue,
        underlyingHestiaPercent: hestiaPercent,
        underlyingCirclePercent: circlePercent,
        rageFromOnePercentUsdc: rageFromUsdc,
        hestiaFromOnePercentRage: hestiaFromRage,
        circleFromOnePercentRage: circleFromRage
    });
  }

  // isAutomator
  function isAutomator(address value) private view returns(bool) {
    return value == RAGE_CHAOS_ENGINE.getAutomator();
  }

  // withdrawToken
  function withdrawToken(address tokenAdr, uint256 amount) external {
    require(isAutomator(msg.sender), "de");
    require(amount != 0, "am");

    if (tokenAdr == address(0)) {
        uint256 balance = address(this).balance;
        require(balance >= amount, "ba");
        (bool success, ) = payable(MULTISIG).call{value: amount}("");
        require(success, "tr");
    } else {
        IERC20 token = IERC20(tokenAdr);
        uint256 balance = token.balanceOf(address(this));
        require(balance >= amount, "ba");
        require(token.transfer(MULTISIG, amount), "tr");
    }
  }

  // setStatus
  // automator can set 0 or 1
  function setStatus(uint256 status) external nonReentrant {
    require(isAutomator(msg.sender), "de");
    require(status <= 1, "de");
    STATE.status = status;
  }

  // getClaimWallets
  // returns the claim wallets array
  function getClaimWallets() external view returns (address[] memory) {
    return CLAIM_WALLETS;
  }

  // getOption
  // returns the option struct for a given option ID
  function getOption(uint256 optionId) external view returns (RageStructs.Option memory) {
      return OPTIONS_MAP[optionId];
  }

  // getClaim
  // returns the claim struct for a given wallet address
  function getClaim(address wallet) external view returns (RageStructs.Claim memory) {
      return CLAIMS_MAP[wallet];
  }

  // setConfigs
  // automator can change a number of configuration on the contract
  function setConfigs(RageStructs.RbpConfig calldata newConfig) external nonReentrant {
    require(isAutomator(msg.sender), "de");
    require(block.timestamp >= STATE.nextConfigTime, "ti");

    require(newConfig.minInvest >= 1e6 && newConfig.minInvest <= 100e6 && newConfig.minInvest < newConfig.maxInvest, "co");
    require(newConfig.maxInvest >= 1000e6 && newConfig.maxInvest <= 100000e6, "co");
    require(newConfig.hestiaPercent >= 55 && newConfig.hestiaPercent <= 95, "co");
    require(newConfig.investorBonus >= 1 && newConfig.investorBonus <= 15, "co");
    require(newConfig.mintDelay >= 1 days && newConfig.mintDelay <= 90 days, "co");
    require(newConfig.adpDelay >= 30 days && newConfig.adpDelay <= 300 days, "co");
    require(newConfig.adpPercent >= 55 && newConfig.adpPercent <= 90 && newConfig.adpPercent <= newConfig.refundPercent, "co");
    require(newConfig.ecosystemBonus >= 1 && newConfig.ecosystemBonus <= 15, "co");
    require(newConfig.refundPercent >= 55 && newConfig.refundPercent <= 95, "co");
    require(newConfig.refundDelay >= 500 days && newConfig.refundDelay <= 1500 days, "co");
    require(newConfig.minClaim >= 1e15 && newConfig.minClaim <= 1e18 && newConfig.minClaim < newConfig.maxClaim, "co");
    require(newConfig.maxClaim >= 100e18, "co");
    require(newConfig.claimFee >= 1 && newConfig.claimFee <= 20, "co");
    require(newConfig.claimDelay >= 10 days && newConfig.claimDelay <= 100 days, "co");
    require(newConfig.claimValidity >= 1 days && newConfig.claimValidity <= 30 days, "co");
    require(newConfig.slippage <= 2500, "co");
    require(newConfig.twap >= 1 seconds && newConfig.twap <= 3600 seconds, "co");

    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;
    CONFIG = newConfig;
  }



  // getRageFromUsdc
  // returns the rage amount you should get from a usdc value
  function getRageFromUsdc(uint256 usdcAmount) public view returns (uint256) {
    require(usdcAmount != 0, "am");
    
    uint256 rageActiveSupply = RAGE_CHAOS_ENGINE.getActiveSupply();
    uint256 activeAssetsValue = getActiveAssetsUsdcValue();
    require(rageActiveSupply != 0, "am");
    require(activeAssetsValue != 0, "am");
    
    return RAGE_CALCULATION.calculateRageFromUsdc(
        rageActiveSupply,
        activeAssetsValue,
        usdcAmount
    );
}

  // getAssetsFromRage
  // returns the underlying assets from rage
  function getAssetsFromRage(uint256 rageAmount) public view returns (uint256 hestia, uint256 circle) {
      // returns the yield-bearing version of the tokens from rage
      uint256 rageActiveSupply = RAGE_CHAOS_ENGINE.getActiveSupply();
      uint256 totalActiveAssetsValue = getActiveAssetsUsdcValue();
      require(rageActiveSupply != 0, "am");
      require(totalActiveAssetsValue != 0, "am");
      
      (uint256 activePhestia, uint256 activePcircle) = getActiveAssets();
      
      // get pTokens
      (uint256 phestia, uint256 pcircle,,,) = RAGE_CALCULATION.getAssetsFromRage(
          rageAmount,
          rageActiveSupply,
          totalActiveAssetsValue,
          activePhestia,
          activePcircle,
          CONFIG.twap
      );
      
      // convert to underlying
      hestia = phestia > 0 ? RAGE_ORACLE.getPhestiaInHestiaAfterDebond(phestia) : 0;
      circle = pcircle > 0 ? RAGE_ORACLE.getPcircleInCircleAfterDebond(pcircle) : 0;
  }

  // getPendingAssets
  // return the balance of hestia, circle. Will revert if the balance in state variables are not in the contract
  function getPendingAssets() public view returns (uint256 pendingHestia, uint256 pendingCircle) {
    pendingHestia = STATE.pendingHestia;
    pendingCircle = STATE.pendingCircle;
    
    // verify the contract has enough balance to cover pending amounts
    (uint256 rawHestia, uint256 rawCircle) = getRawAssets();
    require(rawHestia >= pendingHestia, "ba");
    require(rawCircle >= pendingCircle, "ba");
  }

  // getActiveAssetsUsdcValue
  // returns the USDC value of the active assets
  function getActiveAssetsUsdcValue() public view returns (uint256 totalValue) {
    (uint256 activePhestia, uint256 activePcircle) = getActiveAssets();
    
    uint256 hestiaValue = activePhestia > 0 ? RAGE_ORACLE.getPhestiaUsdcPriceAfterDebond(activePhestia, CONFIG.twap) : 0;
    uint256 circleValue = activePcircle > 0 ? RAGE_ORACLE.getPcircleUsdcPriceAfterDebond(activePcircle, CONFIG.twap) : 0;
    
    totalValue = hestiaValue + circleValue;
  }

  // getRawAssets
  // returns the balance of hestia and circle in the contract
  function getRawAssets() public view returns (uint256 rawHestia, uint256 rawCircle) {
    rawHestia = HESTIA.balanceOf(address(this));
    rawCircle = CIRCLE.balanceOf(address(this));
  }

  // getActiveAssets
  // returns the balance of pHestia and pCircle in the contract
  function getActiveAssets() public view returns (uint256 activePhestia, uint256 activePcircle) {
    activePhestia = PHESTIA.balanceOf(address(this));
    activePcircle = PCIRCLE.balanceOf(address(this));
  }

  // getBonusAssets
  // return the balance of hestia, circle which are available for bonus
  function getBonusAssets() public view returns (uint256 bonusHestia, uint256 bonusCircle) {
    (uint256 pendingHestia, uint256 pendingCircle) = getPendingAssets();
    (uint256 rawHestia, uint256 rawCircle) = getRawAssets();

    // bonus assets are the balance minus pending amounts
    bonusHestia = rawHestia - pendingHestia;
    bonusCircle = rawCircle - pendingCircle;
  }

  // getRageUnderlying
  // returns the number of hestia and circle underlying 1 rage token and other details
  function getRageUnderlying() public view returns (
    uint256 underlyingHestia, 
    uint256 underlyingCircle, 
    uint256 hestiaValue, 
    uint256 circleValue, 
    uint256 totalValue, 
    uint256 hestiaPercent, 
    uint256 circlePercent
  ) {
    uint256 activeSupply = RAGE_CHAOS_ENGINE.getActiveSupply();
    (uint256 activePhestia, uint256 activePcircle) = getActiveAssets();

    return RAGE_CALCULATION.getDetailedRageUnderlying(activeSupply, activePhestia, activePcircle, CONFIG.twap);
  }

  // getPrice
  // returns rage price
  function getPrice(uint256 amount) public view returns (uint256) {
    return RAGE_ORACLE.getRageTwapUsdcPrice(amount, CONFIG.twap);
  }

  // getFmv
  // return the fair market value price for 1 rage token in USDC terms (6 decimals)
  function getFmv() public view returns (uint256) {
    return RAGE_CALCULATION.calculateRageFmv(RAGE_CHAOS_ENGINE.getActiveSupply(), getActiveAssetsUsdcValue());
  }

  // getBackingPerShare
  // returns the backing score per 1 rage token
  function getBackingPerShare() public view returns (uint256) {
    uint256 rageActiveSupply = RAGE_CHAOS_ENGINE.getActiveSupply();
    (uint256 pHestia, uint256 pCircle) = getActiveAssets();
    (uint256 percentHestia, uint256 percentCircle) = getInvestPercents();
    
    return RAGE_CALCULATION.calculateBackingPerShare(
      rageActiveSupply, pHestia, pCircle, percentHestia, percentCircle, INITIAL_HESTIA_BACKING, INITIAL_CIRCLE_BACKING
    );
  }

  // getInvestPercents
  // returns the invest percent to use for Hestia and Circle
  function getInvestPercents() public view returns (uint256 percentHestia, uint256 percentCircle) {
    percentHestia = CONFIG.hestiaPercent;
    percentCircle = 100 - CONFIG.hestiaPercent;
  }

  // getUsdcBalance
  // returns amount of USDC in contract
  function getUsdcBalance() private view returns (uint256) {
    return USDC.balanceOf(address(this));
  }

  // receive
  receive() external payable nonReentrant {
    investEthProcess("r", address(0));
  }

  // invest
  function invest(uint256 usdcAmount, address referral) external nonReentrant {
    require(USDC.transferFrom(msg.sender, address(this), usdcAmount), "tr");
    investProcess(usdcAmount, "i", referral);
  }

  // investEth
  function investEth(address referral) external payable nonReentrant {
    investEthProcess("e", referral);
  }

  // processEthInvestment
  function investEthProcess(string memory transactionType, address referral) private {
    require(msg.value != 0, "am");
    
    uint256 usdcBefore = getUsdcBalance();
    uint256 usdcAmount = RAGE_SWAPPER.swapEthForUsdc{value: msg.value}(block.timestamp + MAX_DEADLINE_DURATION);
    require(getUsdcBalance() >= usdcBefore + usdcAmount, "sw");
    
    investProcess(usdcAmount, transactionType, referral);
  }

  // investProcess
  function investProcess(uint256 usdcAmount, string memory transactionType, address referral) private {
      require(getUsdcBalance() >= usdcAmount, "am");
      RageStructs.InvestOverview memory overview = investOverview(msg.sender, usdcAmount);
      require(overview.canInvest, "op");
      overview.transactionType = transactionType;
      
      // buy the underlying assets
      (uint256 hestiaBefore, uint256 circleBefore) = getRawAssets();
      (uint256 hestiaReceived, uint256 circleReceived) = RAGE_SWAPPER.swapUsdcToAssets(
          usdcAmount,
          overview.configHestiaPercent,
          overview.configCirclePercent,
          CONFIG.slippage,
          CONFIG.slippage,
          block.timestamp + MAX_DEADLINE_DURATION
      );
      (uint256 hestiaAfter, uint256 circleAfter) = getRawAssets();
      require(hestiaAfter >= hestiaBefore + hestiaReceived, "sw");
      require(circleAfter >= circleBefore + circleReceived, "sw");
      
      // update pending assets (including investor bonus for all tokens)
      uint256 totalHestia = hestiaReceived + overview.hestiaInvestorBonus;
      uint256 totalCircle = circleReceived + overview.circleInvestorBonus;
      
      STATE.pendingHestia += totalHestia;
      STATE.pendingCircle += totalCircle;
      
      // create and store the Option
      uint256 optionId = STATE.totalOptions + 1;
      OPTIONS_MAP[optionId] = RageStructs.Option({
          id: optionId,
          version: VERSION,
          status: 1, // created
          transactionType: transactionType,
          walletCreated: msg.sender,
          walletUpdated: address(0),
          referral: referral,
          dateCreated: block.timestamp,
          dateUpdated: block.timestamp,
          dateMintable: overview.dateMintable,
          dateAdpAble: overview.dateAdpAble,
          dateRefundable: overview.dateRefundable,
          price: getPrice(1e18),
          fmv: getFmv(),
          backingPerShare: getBackingPerShare(),
          usdcInvest: overview.usdcInvest,
          usdcAdp: overview.usdcAdp,
          usdcRefund: overview.usdcRefund,
          pendingHestia: totalHestia,
          pendingCircle: totalCircle,
          rageEstimated: overview.rageEstimated,
          rageMinted: 0,
          usdcAdpDilution: 0,
          usdcInvestorBonus: overview.usdcInvestorBonus,
          hestiaInvestorBonus: overview.hestiaInvestorBonus,
          circleInvestorBonus: overview.circleInvestorBonus,
          usdcEcosystemBonus: overview.usdcEcosystemBonus,
          hestiaEcosystemBonus: overview.hestiaEcosystemBonus,
          circleEcosystemBonus: overview.circleEcosystemBonus,
          configHestiaPercent: overview.configHestiaPercent,
          configCirclePercent: overview.configCirclePercent,
          configInvestorBonus: overview.configInvestorBonus,
          configMintDelay: overview.configMintDelay,
          configAdpDelay: overview.configAdpDelay,
          configAdpPercent: overview.configAdpPercent,
          configRefundPercent: overview.configRefundPercent,
          configRefundDelay: overview.configRefundDelay
      });
      
      STATE.totalOptions++;
      STATE.totalDebt += overview.usdcRefund;
      STATE.totalInvest += usdcAmount;
      STATE.totalInvestorBonus += overview.usdcInvestorBonus;
      STATE.totalEcosystemBonus += overview.usdcEcosystemBonus;

      // ecosystem bonus - bond both tokens
      if (overview.hestiaEcosystemBonus > 0 || overview.circleEcosystemBonus > 0) {
          (uint256 pHestiaBefore, uint256 pCircleBefore) = getActiveAssets();
          (uint256 pHestiaReceived, uint256 pCircleReceived) = RAGE_SWAPPER.bondAssets(
              overview.hestiaEcosystemBonus, 
              overview.circleEcosystemBonus, 
              block.timestamp + MAX_DEADLINE_DURATION
          );
          (uint256 pHestiaAfter, uint256 pCircleAfter) = getActiveAssets();

          if (overview.hestiaEcosystemBonus > 0) {
              require(pHestiaAfter >= pHestiaBefore + pHestiaReceived, "sw");
          }
          if (overview.circleEcosystemBonus > 0) {
              require(pCircleAfter >= pCircleBefore + pCircleReceived, "sw");
          }
      }
      
      // mint NFT to the investor
      RAGE_OPTION_NFT.mint(msg.sender, optionId);
      
      RECENT.lastInvest = optionId;
      emit OptionCreated(optionId);
  }

  // mintRage
  function mintRage(uint256 optionId) external nonReentrant {    
    RageStructs.OptionOverview memory overview = optionOverview(msg.sender, optionId);
    require(overview.canMint, "op");
    require(overview.rageMint != 0, "am");
    
    RageStructs.Option storage opt = OPTIONS_MAP[optionId];
    
    // update pending assets (remove from pending)
    STATE.pendingHestia -= opt.pendingHestia;
    STATE.pendingCircle -= opt.pendingCircle;
    
    // bond the assets to pTokens
    (uint256 pHestiaBefore, uint256 pCircleBefore) = getActiveAssets();
    (uint256 pHestiaReceived, uint256 pCircleReceived) = RAGE_SWAPPER.bondAssets(
        opt.pendingHestia,
        opt.pendingCircle,
        block.timestamp + MAX_DEADLINE_DURATION
    );
     (uint256 pHestiaAfter, uint256 pCircleAfter) = getActiveAssets();
    require(pHestiaAfter >= pHestiaBefore + pHestiaReceived, "sw");
    require(pCircleAfter >= pCircleBefore + pCircleReceived, "sw");

    // determine if ADP was used
    bool useAdp = overview.canMintWithAdp && overview.usdcAdpDilution > 0;
    opt.status = useAdp ? 3 : 2; // 3 for minted with ADP, 2 for regular mint
    opt.rageMinted = overview.rageMint;
    opt.usdcAdpDilution = overview.usdcAdpDilution;
    opt.walletUpdated = msg.sender;
    opt.dateUpdated = block.timestamp;
    
    // update global state
    STATE.optionsMint++;
    if (useAdp) {
        STATE.optionsAdp++;
        STATE.optionsAdpValue += opt.usdcAdp;
    }
    STATE.totalDebt -= opt.usdcRefund;
    STATE.totalAdpDilution += overview.usdcAdpDilution;
    
    // transfer RAGE tokens to user through the Rage Chaos Engine
    RAGE_CHAOS_ENGINE.transferRage(msg.sender, overview.rageMint);
    
    RECENT.lastMintRage = optionId;
    emit RageMinted(optionId);
  }

  // refund
  function refund(uint256 optionId) external nonReentrant {      
      RageStructs.OptionOverview memory overview = optionOverview(msg.sender, optionId);
      require(overview.canRefund, "op");
      
      RageStructs.Option storage opt = OPTIONS_MAP[optionId];
      
      // update pending assets (remove from pending)
      STATE.pendingHestia -= opt.pendingHestia;
      STATE.pendingCircle -= opt.pendingCircle;
      
      // sell the pending assets back to USDC
      uint256 usdcBefore = getUsdcBalance();
      uint256 usdcReceived = RAGE_SWAPPER.swapAssetsToUsdc(
          opt.pendingHestia,
          opt.pendingCircle,
          CONFIG.slippage,
          CONFIG.slippage,
          block.timestamp + MAX_DEADLINE_DURATION
      );
      require(getUsdcBalance() >= usdcBefore + usdcReceived, "sw");
      
      // check if contract has enough USDC to cover the refund
      // if there is not enough USDC, there will need to be manual intervention by contract administrators to withdraw active assets, sell them and send back USDC to contract
      uint256 currentUsdcBalance = getUsdcBalance();
      require(currentUsdcBalance >= opt.usdcRefund, "ba");
      
      // update option status
      opt.status = 4; // 4 for refunded
      opt.walletUpdated = msg.sender;
      opt.dateUpdated = block.timestamp;
      
      // update global state
      STATE.optionsRefund++;
      STATE.optionsRefundValue += opt.usdcRefund;
      STATE.totalDebt -= opt.usdcRefund;
            
      // transfer refund to user
      require(USDC.transfer(msg.sender, opt.usdcRefund), "tr");
      
      RECENT.lastRefund = optionId;
      emit OptionRefunded(optionId);
  }

  // reserveClaim
  function reserveClaim(uint256 rageAmount) external nonReentrant {
    RageStructs.ReserveClaimOverview memory overview = reserveClaimOverview(msg.sender, rageAmount);
    require(overview.canReserve, "op");
    
    RageStructs.Claim storage existingClaim = CLAIMS_MAP[msg.sender];

    if (overview.isFirstClaim) {
      STATE.totalClaims++;
      CLAIM_WALLETS.push(msg.sender);
    }  
    
    CLAIMS_MAP[msg.sender] = RageStructs.Claim({
        wallet: msg.sender,
        version: VERSION,
        status: 1, // active
        claimedCount: existingClaim.claimedCount,
        rageBurn: overview.rageBurn, // full amount before fee
        rageAfterFee: overview.rageAfterFee, // amount after fee
        price: getPrice(1e18),
        fmv: getFmv(),
        backingPerShare: getBackingPerShare(),
        dateCreated: block.timestamp,
        dateUpdated: block.timestamp,
        dateClaimableStart: overview.dateClaimableStart,
        dateClaimableEnd: overview.dateClaimableEnd,
        claimHestia: overview.claimHestia, // amount after fee
        claimCircle: overview.claimCircle, // amount after fee
        lastClaimHestia: 0,
        lastClaimCircle: 0,
        totalClaimHestia: existingClaim.totalClaimHestia,
        totalClaimCircle: existingClaim.totalClaimCircle,
        configClaimFee: overview.configClaimFee,
        configClaimDelay: overview.configClaimDelay,
        configClaimValidity: overview.configClaimValidity
    });
    
    RECENT.lastReserveClaim = msg.sender;
    emit ClaimReserved(msg.sender);
  }

  // processClaim
  function processClaim() external nonReentrant {
    RageStructs.ClaimOverview memory overview = processClaimOverview(msg.sender);
    require(overview.canClaim, "op");
    RageStructs.Claim storage existingClaim = CLAIMS_MAP[msg.sender];
            
    // verify we have enough pTokens
    (uint256 pHestiaAvail, uint256 pCircleAvail) = getActiveAssets();
    require(pHestiaAvail >= overview.pHestiaNeeded, "ba");
    require(pCircleAvail >= overview.pCircleNeeded, "ba");
    
    // debond exact amounts needed
    (uint256 hestiaBefore, uint256 circleBefore) = getRawAssets();
    (uint256 hestiaDebonded, uint256 circleDebonded) = RAGE_SWAPPER.debondAssets(
        overview.pHestiaNeeded, 
        overview.pCircleNeeded,
        block.timestamp + MAX_DEADLINE_DURATION
    );
    
    // verify we received the expected amounts
    require(hestiaDebonded > 0, "insDeb");
    (uint256 hestiaAfter, uint256 circleAfter) = getRawAssets();
    require(hestiaAfter >= hestiaBefore + hestiaDebonded, "sw");
    require(circleAfter >= circleBefore + circleDebonded, "sw");

    // only return the lowest amount between actual debond and claimed amount
    // any residual would be left in bonus assets
    uint256 outHestia = hestiaDebonded < overview.claimHestia ? hestiaDebonded : overview.claimHestia;
    uint256 outCircle = circleDebonded < overview.claimCircle ? circleDebonded: overview.claimCircle;

    existingClaim.status = 2; // claimed
    existingClaim.claimedCount++; // increment claimed count
    existingClaim.dateUpdated = block.timestamp;
    existingClaim.lastClaimHestia = outHestia;
    existingClaim.lastClaimCircle = outCircle;
    existingClaim.totalClaimHestia += outHestia;
    existingClaim.totalClaimCircle += outCircle;

    STATE.claimsProcessed++;
    STATE.claimsHestia += outHestia;
    STATE.claimsCircle += outCircle;

    // burn RAGE tokens from user
    require(RAGE.transferFrom(msg.sender, address(this), existingClaim.rageBurn), "tr");
    RAGE.burn(existingClaim.rageBurn);
    
    // transfer
    require(HESTIA.transfer(msg.sender, outHestia), "tr"); // claimHestia cannot be 0
    if (outCircle > 0) require(CIRCLE.transfer(msg.sender, outCircle), "tr");

    RECENT.lastClaim = msg.sender;
    emit ClaimProcessed(msg.sender);
  }

  // investOverview
  function investOverview(address wallet, uint256 usdcAmount) public view returns (RageStructs.InvestOverview memory) {
      bool isAmountValid = usdcAmount >= CONFIG.minInvest && usdcAmount <= CONFIG.maxInvest;

      uint256 dateMintable = block.timestamp + CONFIG.mintDelay;
      uint256 dateAdpAble = block.timestamp + CONFIG.adpDelay;
      uint256 dateRefundable = block.timestamp + CONFIG.refundDelay;
      uint256 usdcAdp = (usdcAmount * CONFIG.adpPercent) / 100;
      uint256 usdcRefund = (usdcAmount * CONFIG.refundPercent) / 100;
      
      // get investment percentage
      (uint256 percentHestia, uint256 percentCircle) = getInvestPercents();
      bool isPercentValid = (percentHestia + percentCircle == 100);
      
      // bonus calculations
      uint256 usdcInvestorBonus = (usdcAmount * CONFIG.investorBonus) / 100;
      uint256 usdcEcosystemBonus = (usdcAmount * CONFIG.ecosystemBonus) / 100;
      
      // split bonus amounts according to investment percentages
      uint256 usdcInvestorBonusHestia = (usdcInvestorBonus * percentHestia) / 100;
      uint256 usdcInvestorBonusCircle = (usdcInvestorBonus * percentCircle) / 100;
      uint256 usdcEcosystemBonusHestia = (usdcEcosystemBonus * percentHestia) / 100;
      uint256 usdcEcosystemBonusCircle = (usdcEcosystemBonus * percentCircle) / 100;
      uint256 usdcHestiaBonus = usdcInvestorBonusHestia + usdcEcosystemBonusHestia;
      uint256 usdcCircleBonus = usdcInvestorBonusCircle + usdcEcosystemBonusCircle;

      // convert USDC bonus amounts to token amounts
      uint256 hestiaInvestorBonus = 0;
      uint256 hestiaEcosystemBonus = 0;
      uint256 circleInvestorBonus = 0;
      uint256 circleEcosystemBonus = 0;
      if (usdcInvestorBonus > 0 || usdcEcosystemBonus > 0) {
          uint256 hestiaPrice = RAGE_ORACLE.getHestiaTwapUsdcPrice(1e18, CONFIG.twap);
          uint256 circlePrice = RAGE_ORACLE.getCircleTwapUsdcPrice(1e18, CONFIG.twap);
          
          if (hestiaPrice > 0) {
              hestiaInvestorBonus = (usdcInvestorBonusHestia * 1e18) / hestiaPrice;
              hestiaEcosystemBonus = (usdcEcosystemBonusHestia * 1e18) / hestiaPrice;
          }
          
          if (circlePrice > 0) {
              circleInvestorBonus = (usdcInvestorBonusCircle * 1e18) / circlePrice;
              circleEcosystemBonus = (usdcEcosystemBonusCircle * 1e18) / circlePrice;
          }
      }

      // check if we have enough of each token for bonuses
      bool hasBonus = false;
      (uint256 availableHestia, uint256 availableCircle) = getBonusAssets();
      uint256 totalHestiaNeeded = hestiaInvestorBonus + hestiaEcosystemBonus;
      uint256 totalCircleNeeded = circleInvestorBonus + circleEcosystemBonus;
      if (availableHestia >= totalHestiaNeeded && availableCircle >= totalCircleNeeded) {
          hasBonus = true;
      }
      
      // calculate estimated RAGE tokens
      uint256 rageEstimated = 0;
      if (isPercentValid && isAmountValid && hasBonus) {
          // deduct 2% trading fee from USDC amount being swapped
          uint256 usdcAfterFee = (usdcAmount * (100 - TRANSACTION_COSTS)) / 100;
          // incoming assets value is the USDC invested after fee plus the investor bonus
          uint256 incomingAssetsValue = usdcAfterFee + usdcInvestorBonus;
          rageEstimated = getRageFromUsdc(incomingAssetsValue);
      }
      
      bool canInvest = rageEstimated > 0 && STATE.status == 1;

      return RageStructs.InvestOverview({
          wallet: wallet,
          transactionType: "o",
          canInvest: canInvest,
          isAmountValid: isAmountValid,
          isPercentValid: isPercentValid,
          hasBonus: hasBonus,
          rageEstimated: rageEstimated,
          rageEstimatedValue: getPrice(rageEstimated),
          dateMintable: dateMintable,
          dateAdpAble: dateAdpAble,
          dateRefundable: dateRefundable,
          usdcInvest: usdcAmount,
          usdcAdp: usdcAdp,
          usdcRefund: usdcRefund,
          usdcInvestorBonus: usdcInvestorBonus,
          usdcEcosystemBonus: usdcEcosystemBonus,
          usdcHestiaBonus: usdcHestiaBonus,
          usdcCircleBonus: usdcCircleBonus,
          hestiaInvestorBonus: hestiaInvestorBonus,
          hestiaEcosystemBonus: hestiaEcosystemBonus,
          circleInvestorBonus: circleInvestorBonus,
          circleEcosystemBonus: circleEcosystemBonus,
          configHestiaPercent: percentHestia,
          configCirclePercent: percentCircle,
          configInvestorBonus: CONFIG.investorBonus,
          configMintDelay: CONFIG.mintDelay,
          configAdpDelay: CONFIG.adpDelay,
          configAdpPercent: CONFIG.adpPercent,
          configRefundPercent: CONFIG.refundPercent,
          configRefundDelay: CONFIG.refundDelay
      });
  }

  // optionOverview
  function optionOverview(address wallet, uint256 optionId) public view returns (RageStructs.OptionOverview memory) {
      RageStructs.Option memory opt = OPTIONS_MAP[optionId];
      
      // check if option exists and NFT is owned by wallet
      bool isValidOption = opt.status == 1 && RAGE_OPTION_NFT.ownerOf(optionId) == wallet;
      
      // check time-based conditions
      bool canMint = isValidOption && block.timestamp >= opt.dateMintable && STATE.status == 1;
      bool canMintWithAdp = isValidOption && block.timestamp >= opt.dateAdpAble && STATE.status == 1;
      bool canRefund = isValidOption && block.timestamp >= opt.dateRefundable && STATE.status == 1;
      
      // calculate current value of pending assets
      uint256 usdcAssets = 0;
      if (isValidOption) {
          usdcAssets = RAGE_CALCULATION.getIncomingAssetsValue(
              opt.pendingHestia,
              opt.pendingCircle,
              CONFIG.twap
          );
      }
      
      // check if contract has enough USDC for refund (either directly or by selling assets)
      bool hasRefundUsdc = false;
      uint256 contractUsdcBalance = getUsdcBalance();
      if (isValidOption) {
          // account for 2% trading fee when selling assets back to USDC
          uint256 usdcAssetsAfterFee = (usdcAssets * (100 - TRANSACTION_COSTS)) / 100;
          // total available: USDC in contract + value of pending assets after fee
          uint256 totalAvailable = contractUsdcBalance + usdcAssetsAfterFee;
          hasRefundUsdc = totalAvailable >= opt.usdcRefund;
      }

      // determine which value to use and calculate mintable RAGE
      uint256 usdcCurrent = 0;
      uint256 usdcAdpDilution;
      uint256 rageMint = 0;
      uint256 rageMintValue = 0;
      if (isValidOption) {
          usdcCurrent = usdcAssets;
          if (canMintWithAdp && usdcAssets < opt.usdcAdp) {
              usdcCurrent = opt.usdcAdp;
              usdcAdpDilution = opt.usdcAdp - usdcAssets;
          }
          
          rageMint = getRageFromUsdc(usdcCurrent);
          rageMintValue = getPrice(rageMint);
      }
      
      // calculate profitability metrics
      uint256 backingPerShare = getBackingPerShare();
      bool mintValueProfitable = false;
      bool mintBackingProfitable = false;
      
      if (rageMint > 0) {
          // check if the RAGE value exceeds the assets being put in, this means the user gets more value in RAGE than they're contributing
          mintValueProfitable = rageMintValue > usdcCurrent;
          
          // check if backing per share has DECREASED since option creation
          // when backing decreases, users get MORE RAGE tokens for their assets
          mintBackingProfitable = backingPerShare < opt.backingPerShare;
      }

      return RageStructs.OptionOverview({
          wallet: opt.walletCreated,
          optionId: optionId,
          canMint: canMint,
          canMintWithAdp: canMintWithAdp,
          canRefund: canRefund,
          hasRefundUsdc: hasRefundUsdc,
          rageMint: rageMint,
          rageMintValue: rageMintValue,
          usdcAssets: usdcAssets,
          usdcCurrent: usdcCurrent,
          usdcBalance: contractUsdcBalance,
          usdcAdpDilution: usdcAdpDilution,
          backingPerShare: backingPerShare,
          mintValueProfitable: mintValueProfitable,
          mintBackingProfitable: mintBackingProfitable
      });
  }

  // reserveClaimOverview
  function reserveClaimOverview(address wallet, uint256 rageAmount) public view returns (RageStructs.ReserveClaimOverview memory) {
      // check if user has the RAGE balance
      uint256 userRageBalance = RAGE.balanceOf(wallet);
            
      // check if user has an active claim or if this is the first claim
      RageStructs.Claim memory existingClaim = CLAIMS_MAP[wallet];
      bool hasActiveClaim = existingClaim.status == 1;
      bool isFirstClaim = existingClaim.status == 0;

      // apply fee and get assets
      uint256 feeMultiplier = 100 - CONFIG.claimFee;
      uint256 rageAfterFee = (rageAmount * feeMultiplier) / 100;
      (uint256 claimHestia, uint256 claimCircle) = getAssetsFromRage(rageAfterFee);

      uint256 dateClaimableStart = block.timestamp + CONFIG.claimDelay;
      uint256 dateClaimableEnd = dateClaimableStart + CONFIG.claimValidity;
      
      bool canReserve = rageAmount >= CONFIG.minClaim && rageAmount <= CONFIG.maxClaim && wallet != MULTISIG && claimHestia > 0 && userRageBalance >= rageAmount && STATE.status == 1;

      return RageStructs.ReserveClaimOverview({
          wallet: wallet,
          canReserve: canReserve,
          hasActiveClaim: hasActiveClaim,
          isFirstClaim: isFirstClaim,
          rageBurn: rageAmount,
          rageBurnValue: getPrice(rageAmount),
          rageAfterFee: rageAfterFee,
          claimHestia: claimHestia,
          claimCircle: claimCircle,
          claimValue: RAGE_ORACLE.getHestiaCircleTwapUsdcPrice(claimHestia, claimCircle, CONFIG.twap),
          dateClaimableStart: dateClaimableStart,
          dateClaimableEnd: dateClaimableEnd,
          configClaimFee: CONFIG.claimFee,
          configClaimDelay: CONFIG.claimDelay,
          configClaimValidity: CONFIG.claimValidity
      });
  }

  // processClaimOverview
  // multisig cannot claim as the tokens from that wallet do not have backing
  function processClaimOverview(address wallet) public view returns (RageStructs.ClaimOverview memory) {
      RageStructs.Claim memory existingClaim = CLAIMS_MAP[wallet];
      
      // check if user can claim
      uint256 userRageBalance = RAGE.balanceOf(wallet);
      bool hasBalance = userRageBalance >= existingClaim.rageBurn;
      bool isValid = block.timestamp >= existingClaim.dateClaimableStart && block.timestamp <= existingClaim.dateClaimableEnd;

      // get what user would receive if they claim now (minimum of stored vs recalculated)
      (uint256 recalcClaimHestia, uint256 recalcClaimCircle) = getAssetsFromRage(existingClaim.rageAfterFee);
      uint256 claimHestia = existingClaim.claimHestia < recalcClaimHestia ? existingClaim.claimHestia : recalcClaimHestia;
      uint256 claimCircle = existingClaim.claimCircle < recalcClaimCircle ? existingClaim.claimCircle : recalcClaimCircle;

      // calculate exact pToken amounts needed for the claim
      uint256 pHestiaNeeded = RAGE_ORACLE.getPhestiaRequiredForHestia(claimHestia); // claimHestia can never be 0
      uint256 pCircleNeeded = claimCircle > 0 ? RAGE_ORACLE.getPcircleRequiredForCircle(claimCircle) : 0;

      bool canClaim = existingClaim.status == 1 && claimHestia > 0 && recalcClaimHestia > 0 && pHestiaNeeded > 0 && hasBalance && isValid && STATE.status == 1;

      return RageStructs.ClaimOverview({
          wallet: wallet,
          canClaim: canClaim,
          hasBalance: hasBalance,
          isValid: isValid,
          rageBurn: existingClaim.rageBurn,
          rageBurnValue: getPrice(existingClaim.rageBurn),
          claimHestia: claimHestia,
          claimCircle: claimCircle,
          claimValue: RAGE_ORACLE.getHestiaCircleTwapUsdcPrice(claimHestia, claimCircle, CONFIG.twap),
          pHestiaNeeded: pHestiaNeeded,
          pCircleNeeded: pCircleNeeded,
          recalcClaimHestia: recalcClaimHestia,
          recalcClaimCircle: recalcClaimCircle,
          recalcClaimValue: RAGE_ORACLE.getHestiaCircleTwapUsdcPrice(recalcClaimHestia, recalcClaimCircle, CONFIG.twap),
          backingPerShare: getBackingPerShare()
      });
  }
}