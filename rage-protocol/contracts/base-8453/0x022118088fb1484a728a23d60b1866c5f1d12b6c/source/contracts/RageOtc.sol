// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IERC20} from "./IERC20.sol";
import {TowerStructs} from "./TowerStructs.sol";
import {IRageSwapper} from "./IRageSwapper.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {IRageDepot} from "./IRageDepot.sol";
import {IUrmOracle} from "./IUrmOracle.sol";
import {IUrmSwapper} from "./IUrmSwapper.sol";
import {IUrmFortressTower} from "./IUrmFortressTower.sol";
import {IUrmFortress} from "./IUrmFortress.sol";
import {IRageBuyingProtocol} from "./IRageBuyingProtocol.sol";

contract RageOtc is ReentrancyGuard, IUrmFortressTower {
  // constant
  IRageSwapper private constant RAGE_SWAPPER = IRageSwapper(0x03FEe5bA01D5B71c7F7689490826Ba75a2750c44);
  IRageChaosEngine private constant RAGE_CHAOS_ENGINE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  IRageDepot private constant RAGE_DEPOT = IRageDepot(0x33E11FD175435188B0b750EB966fd6b195dA40DE);
  IUrmOracle private constant URM_ORACLE = IUrmOracle(0xa51E78A5B3380516f9CF2c910641703d5c2e45A1);
  IUrmSwapper private constant URM_SWAPPER = IUrmSwapper(0x52C540F4d8D16f7F6D625b9e08317A1Ef2cdE13C);
  IUrmFortress private constant URM_FORTRESS = IUrmFortress(0x5E06B7117D47210a5FDc54D08A9Dd8d8Bf0F1Fc3);
  IERC20 private constant URM = IERC20(0xF0E3349f00972475a5D16721796091AA3B997837);
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IERC20 private constant PHESTIA = IERC20(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IERC20 private constant PCIRCLE = IERC20(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  uint256 private constant MIN_RAGE = 1e18;
  uint256 private constant VERSION = 2;
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;

  // state
  TowerStructs.OtcState private STATE;
  TowerStructs.OtcConfig private CONFIG;
  TowerStructs.OtcOverview private LAST_TX;
  uint256 private bonusLastReset; // timestamp when bonus was last reset to bonusMin
  
  // events
  event ConfigChanged(TowerStructs.OtcConfig config);
  event OtcExecuted(address indexed wallet, uint256 inputType, uint256 inputAmount, uint256 rageAmount, uint256 inputForMultisig, uint256 inputForBacking, uint256 inputForFortress);

  // constructor
  constructor() {
    // approve rage swapper for swapping
    USDC.approve(address(RAGE_SWAPPER), type(uint256).max);
    HESTIA.approve(address(RAGE_SWAPPER), type(uint256).max);
    CIRCLE.approve(address(RAGE_SWAPPER), type(uint256).max);

    // approve urm swapper for swapping to/from urm
    URM.approve(address(URM_SWAPPER), type(uint256).max);
    USDC.approve(address(URM_SWAPPER), type(uint256).max);
    HESTIA.approve(address(URM_SWAPPER), type(uint256).max);
    CIRCLE.approve(address(URM_SWAPPER), type(uint256).max);

    // approve urm fortress for pulling urm on payFortress
    URM.approve(address(URM_FORTRESS), type(uint256).max);

    // initialize config with default values
    CONFIG = TowerStructs.OtcConfig({
        active: false,
        allowHestia: true,
        allowCircle: true,
        payFortress: true,
        percentMultisig: 30,
        bonusInterval: 6 hours,
        bonusMin: 1,
        bonusMax: 20,
        minUsdcValue: 5e6,
        slippage: 500,
        twap: 10 minutes
    });

    bonusLastReset = block.timestamp;
  }

  // withdrawEth
  function withdrawEth() external nonReentrant {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");

    uint256 balance = address(this).balance;
    require(balance > 0, "noEthBalance");
    (bool success, ) = payable(RAGE_CHAOS_ENGINE.getMultisig()).call{value: balance}("");
    require(success, "ethTransferFailed");
  }

  // withdrawToken
  function withdrawToken(address tokenAdr) external nonReentrant  {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "noTokenBalance");
    require(token.transfer(RAGE_CHAOS_ENGINE.getMultisig(), balance), "transferFailed");
  }

  // receive
  receive() external payable nonReentrant {
    require(CONFIG.active, "notActive");

    uint256 deadline = block.timestamp + MAX_DEADLINE_DURATION;
    uint256 usdcOut = RAGE_SWAPPER.swapEthForUsdc{value: msg.value}(deadline);
    require(usdcOut > 0 && USDC.balanceOf(address(this)) >= usdcOut, "swapFailed");

    TowerStructs.OtcOverview memory overview = otcOverview(msg.sender, usdcOut, 4, usdcOut);

    otcProcess(overview, USDC);
  }

  // otc
  function otc(uint256 inputAmount, uint256 inputType) external nonReentrant {
    require(inputType >= 1 && inputType <= 4, "inputType");

    // determine input token and get overview for caller
    IERC20 inputToken = inputType == 1 ? HESTIA : (inputType == 2 ? CIRCLE : (inputType == 3 ? URM : USDC));
    TowerStructs.OtcOverview memory overview = otcOverview(msg.sender, inputAmount, inputType, inputToken.balanceOf(msg.sender));
    require(overview.canOtc, "cannotOtc");

    // transfer input tokens from user to this contract
    require(inputToken.transferFrom(msg.sender, address(this), inputAmount), "transferFromFailed");

    otcProcess(overview, inputToken);
  }

  // setConfigs
  function setConfigs(TowerStructs.OtcConfig calldata newConfig) external nonReentrant {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");
    require(block.timestamp >= STATE.nextConfigTime, "configTimeout");

    require(newConfig.percentMultisig <= 100, "percentMultisig");
    require(newConfig.bonusInterval >= 1 hours && newConfig.bonusInterval <= 1 days, "bonusInterval");
    require(newConfig.bonusMin >= 1 && newConfig.bonusMin <= 5, "bonusMin");
    require(newConfig.bonusMax >= 10 && newConfig.bonusMax <= 50, "bonusMax");
    require(newConfig.bonusMin < newConfig.bonusMax, "bonusMinMax");
    require(newConfig.minUsdcValue >= 1e6, "minUsdcValue");
    require(newConfig.slippage <= 2500, "slippage");
    require(newConfig.twap >= 60 seconds && newConfig.twap <= 3600 seconds, "twap");

    // reset bonus on any call to setConfigs
    bonusLastReset = block.timestamp;

    CONFIG = newConfig;
    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;
    STATE.batchTxCount = 0;

    emit ConfigChanged(newConfig);
  }
  
  // getState
  function getState() external view returns (TowerStructs.OtcGetState memory) {
    uint256 rageBalance = getRageDepotBalance();
    bool active = CONFIG.active && rageBalance > MIN_RAGE;

    // get oracle prices per 1 full token
    uint256 ragePrice = URM_ORACLE.getRageTwapUsdcPrice(1e18, CONFIG.twap);
    uint256 hestiaPrice = URM_ORACLE.getHestiaTwapUsdcPrice(1e18, CONFIG.twap);
    uint256 circlePrice = URM_ORACLE.getCircleTwapUsdcPrice(1e18, CONFIG.twap);
    uint256 urmPrice = URM_ORACLE.getUrmTwapUsdcPrice(1e18, CONFIG.twap);

    // usdc value of the rage available in the depot
    uint256 rageDepotValue;
    if (rageBalance > 0) {
        rageDepotValue = (rageBalance * ragePrice) / 1e18;
    }

    // get current bonus from inverse dutch auction
    (uint256 currentBonus, uint256 nextIncrement) = getCurrentBonus();

    // max USDC value the contract can support, accounting for current bonus
    uint256 maxUsdcValue = getMaxUsdcValue(rageBalance, ragePrice, currentBonus);

    // min/max input amounts per token
    (
        uint256 minHestia, uint256 maxHestia,
        uint256 minCircle, uint256 maxCircle,
        uint256 minUsdc, uint256 maxUsdc,
        uint256 minUrm, uint256 maxUrm
    ) = getMinMax(hestiaPrice, circlePrice, urmPrice, maxUsdcValue);

    return TowerStructs.OtcGetState({
        version: VERSION,
        automator: RAGE_CHAOS_ENGINE.getAutomator(),
        rageBalance: rageBalance,
        rageDepotValue: rageDepotValue,
        active: active,
        minHestia: minHestia,
        maxHestia: maxHestia,
        minCircle: minCircle,
        maxCircle: maxCircle,
        minUsdc: minUsdc,
        maxUsdc: maxUsdc,
        minUrm: minUrm,
        maxUrm: maxUrm,
        buyTarget: buyTarget(),
        ragePrice: ragePrice,
        hestiaPrice: hestiaPrice,
        circlePrice: circlePrice,
        urmPrice: urmPrice,
        bonusCurrent: currentBonus,
        bonusNextIncrement: nextIncrement,
        bonusLastReset: bonusLastReset,
        lastTx: LAST_TX,
        state: STATE,
        config: CONFIG
    });
  }

  // fortressData
  // rage otc holds no urm/usdc for the fortress defense formula
  function fortressData() external pure returns (uint256 usdcPooled, uint256 usdcStored, uint256 urmPooled, uint256 urmStored, uint256 urmBorrowed) {
    return (0, 0, 0, 0, 0);
  }

  // fortressPreSync
  // never requests a sync nor urm from the fortress
  function fortressPreSync(uint256) external pure returns (bool syncRequested, uint256 urmRequested) {
    return (false, 0);
  }

  // fortressSync
  // no-op, the fortress never syncs this tower (fortressPreSync never requests it)
  function fortressSync() external pure {}

  // otcOverview
  function otcOverview(address wallet, uint256 inputAmount, uint256 inputType, uint256 userBalance) public view returns (TowerStructs.OtcOverview memory) {
      TowerStructs.OtcOverview memory overview;

      overview.timestamp = block.timestamp;
      overview.wallet = wallet;
      overview.inputAmount = inputAmount;
      overview.inputType = inputType;

      // get current bonus from inverse dutch auction
      (uint256 currentBonus, ) = getCurrentBonus();
      overview.bonus = currentBonus;

      // cap the multisig share so percentMultisig + bonus never exceeds 100
      // only needed when payFortress is on: the fortress slice equals the bonus and
      // comes out of backing, so the multisig share shrinks to leave room for it.
      // when payFortress is off there is no fortress slice and percentMultisig (<= 100)
      // alone keeps backing >= 0, so the multisig keeps its full configured share.
      uint256 effectivePercentMultisig = CONFIG.percentMultisig;
      if (CONFIG.payFortress && effectivePercentMultisig + currentBonus > 100) {
          effectivePercentMultisig = 100 - currentBonus;
      }
      overview.percentMultisig = effectivePercentMultisig;

      // get the per-token usdc price and calculate the usdc value of inputAmount
      uint256 tokenPrice;
      if (inputType == 1) {
          tokenPrice = URM_ORACLE.getHestiaTwapUsdcPrice(1e18, CONFIG.twap);
      } else if (inputType == 2) {
          tokenPrice = URM_ORACLE.getCircleTwapUsdcPrice(1e18, CONFIG.twap);
      } else if (inputType == 3) {
          tokenPrice = URM_ORACLE.getUrmTwapUsdcPrice(1e18, CONFIG.twap);
      }

      if (inputType == 4) {
          overview.inputValue = inputAmount;
      } else {
          require(tokenPrice > 0, "invalidPrice");
          overview.inputValue = (inputAmount * tokenPrice) / 1e18;
      }

      // calculate rage output: usdc value + bonus worth of RAGE
      uint256 ragePrice = URM_ORACLE.getRageTwapUsdcPrice(1e18, CONFIG.twap);
      require(ragePrice > 0, "invalidRagePrice");
      uint256 baseRageAmount = (overview.inputValue * 1e18) / ragePrice;
      uint256 bonusAmount = (baseRageAmount * currentBonus) / 100;

      overview.outputAmount = baseRageAmount + bonusAmount;
      overview.outputBonus = bonusAmount;
      overview.outputValue = (overview.outputAmount * ragePrice) / 1e18;

      // calculate multisig/fortress/backing split of input tokens and their usdc values
      // the fortress slice equals the bonus percent and comes out of the backing portion
      // (percentMultisig + bonus never exceeds 100, so backing never underflows)
      overview.inputForMultisig = (inputAmount * overview.percentMultisig) / 100;
      overview.inputValueForMultisig = (overview.inputValue * overview.percentMultisig) / 100;
      if (CONFIG.payFortress) {
          overview.inputForFortress = (inputAmount * currentBonus) / 100;
          overview.inputValueForFortress = (overview.inputValue * currentBonus) / 100;
      }
      overview.inputForBacking = inputAmount - overview.inputForMultisig - overview.inputForFortress;
      overview.inputValueForBacking = overview.inputValue - overview.inputValueForMultisig - overview.inputValueForFortress;

      // validate contract holds enough rage
      overview.rageBalance = getRageDepotBalance();
      overview.contractBalance = overview.rageBalance >= overview.outputAmount;

      // calculate min/max input amounts for the input token (same code path as getState)
      uint256 maxUsdcValue = getMaxUsdcValue(overview.rageBalance, ragePrice, currentBonus);
      if (inputType == 4) {
          overview.minInput = CONFIG.minUsdcValue;
          overview.maxInput = maxUsdcValue;
      } else {
          (overview.minInput, overview.maxInput) = getTokenMinMax(tokenPrice, maxUsdcValue);
      }

      // validate if the inputType is allowed (usdc and urm are always allowed)
      bool allowed;
      if (inputType == 1) {
          allowed = CONFIG.allowHestia;
      } else if (inputType == 2) {
          allowed = CONFIG.allowCircle;
      } else {
          allowed = true;
      }

      // check if the wallet has the inputAmount
      overview.userBalance = userBalance >= inputAmount;

      // final check - all conditions must be met
      // input amount is validated against the same min/max bounds reported by getState
      overview.canOtc = CONFIG.active
          && allowed
          && overview.userBalance
          && overview.contractBalance
          && inputAmount >= overview.minInput
          && inputAmount <= overview.maxInput;

      return overview;
  }

  // otcProcess
  function otcProcess(TowerStructs.OtcOverview memory overview, IERC20 inputToken) internal {
    require(overview.canOtc, "cannotOtc");
    uint256 deadline = block.timestamp + MAX_DEADLINE_DURATION;

    // send multisig portion (usdc input is swapped to urm before sending)
    if (overview.inputForMultisig > 0) {
        if (overview.inputType == 4) {
            uint256 urmOut = URM_SWAPPER.swapUsdcToUrm(overview.inputForMultisig, CONFIG.slippage, deadline);
            require(urmOut > 0 && URM.balanceOf(address(this)) >= urmOut, "urmBalance");
            require(URM.transfer(RAGE_CHAOS_ENGINE.getMultisig(), urmOut), "multisigTransferFailed");
        } else {
            require(inputToken.transfer(RAGE_CHAOS_ENGINE.getMultisig(), overview.inputForMultisig), "multisigTransferFailed");
        }
    }

    // pay fortress portion (swapped to urm if needed, fortress pulls via transferFrom)
    if (overview.inputForFortress > 0) {
        uint256 urmOut;
        if (overview.inputType == 1) {
            urmOut = URM_SWAPPER.swapHestiaToUrm(overview.inputForFortress, CONFIG.slippage, deadline);
        } else if (overview.inputType == 2) {
            urmOut = URM_SWAPPER.swapCircleToUrm(overview.inputForFortress, CONFIG.slippage, deadline);
        } else if (overview.inputType == 3) {
            urmOut = overview.inputForFortress;
        } else {
            urmOut = URM_SWAPPER.swapUsdcToUrm(overview.inputForFortress, CONFIG.slippage, deadline);
        }
        require(urmOut > 0 && URM.balanceOf(address(this)) >= urmOut, "urmFortressBalance");
        URM_FORTRESS.payFortress(urmOut);
        STATE.fortressUrmAmount += urmOut;
    }

    // send rage tokens to user via rage depot
    require(RAGE_DEPOT.requestTransfer(overview.wallet, overview.outputAmount), "rageTransferFailed");

    // handle input for backing
    if (overview.inputForBacking > 0) {
        address rbp = address(getRageBuyingProtocol());

        if (overview.inputType == 1) {
            uint256 pHestiaOut = RAGE_SWAPPER.convertHestiaToPHestia(overview.inputForBacking, deadline);
            require(pHestiaOut > 0 && PHESTIA.balanceOf(address(this)) >= pHestiaOut, "pHestiaBalance");
            require(PHESTIA.transfer(rbp, pHestiaOut), "pHestiaTransferFailed");

        } else if (overview.inputType == 2) {
            uint256 pCircleOut = RAGE_SWAPPER.convertCircleToPCircle(overview.inputForBacking, deadline);
            require(pCircleOut > 0 && PCIRCLE.balanceOf(address(this)) >= pCircleOut, "pCircleBalance");
            require(PCIRCLE.transfer(rbp, pCircleOut), "pCircleTransferFailed");
        } else if (overview.inputType == 3) {
            uint256 usdcOut = URM_SWAPPER.swapUrmToUsdc(overview.inputForBacking, CONFIG.slippage, deadline);
            require(usdcOut > 0 && USDC.balanceOf(address(this)) >= usdcOut, "usdcBalance");
            processUsdcBacking(usdcOut, rbp, deadline);
        } else {
            processUsdcBacking(overview.inputForBacking, rbp, deadline);
        }
    }

    // update state
    STATE.txCount++;
    STATE.batchTxCount++;
    STATE.inputValue += overview.inputValue;
    STATE.inputValueForMultisig += overview.inputValueForMultisig;
    STATE.inputValueForBacking += overview.inputValueForBacking;
    STATE.inputValueForFortress += overview.inputValueForFortress;
    STATE.rageOutputAmount += overview.outputAmount;
    STATE.rageOutputValue += overview.outputValue;
    STATE.rageOutputBonus += overview.outputBonus;

    if (overview.inputType == 1) {
        STATE.txHestiaCount++;
        STATE.hestiaAmount += overview.inputAmount;
    } else if (overview.inputType == 2) {
        STATE.txCircleCount++;
        STATE.circleAmount += overview.inputAmount;
    } else if (overview.inputType == 3) {
        STATE.txUrmCount++;
        STATE.urmAmount += overview.inputAmount;
    } else {
        STATE.txUsdcCount++;
        STATE.usdcAmount += overview.inputAmount;
    }

    // store last transaction (rageBalance reflects the post-transfer depot balance)
    uint256 rageBalance = getRageDepotBalance();
    overview.rageBalance = rageBalance;
    LAST_TX = overview;

    // if rage balance falls under min_rage, deactivate the contract
    if (rageBalance <= MIN_RAGE) {
        CONFIG.active = false;
        bonusLastReset = block.timestamp;
    }

    // emit event
    emit OtcExecuted(overview.wallet, overview.inputType, overview.inputAmount, overview.outputAmount, overview.inputForMultisig, overview.inputForBacking, overview.inputForFortress);
  }

  // processUsdcBacking
  // buy the asset under its rbp invest target with usdc, convert it to its pToken and send it to the rage buying protocol
  function processUsdcBacking(uint256 usdcAmount, address rbp, uint256 deadline) internal {
    if (buyTarget() == 1) {
        uint256 hestiaOut = RAGE_SWAPPER.swapUsdcForHestia(usdcAmount, CONFIG.slippage, deadline);
        require(hestiaOut > 0 && HESTIA.balanceOf(address(this)) >= hestiaOut, "hestiaBalance");

        uint256 pHestiaOut = RAGE_SWAPPER.convertHestiaToPHestia(hestiaOut, deadline);
        require(pHestiaOut > 0 && PHESTIA.balanceOf(address(this)) >= pHestiaOut, "pHestiaBalance");
        require(PHESTIA.transfer(rbp, pHestiaOut), "pHestiaTransferFailed");
    } else {
        uint256 circleOut = RAGE_SWAPPER.swapUsdcForCircle(usdcAmount, CONFIG.slippage, deadline);
        require(circleOut > 0 && CIRCLE.balanceOf(address(this)) >= circleOut, "circleBalance");

        uint256 pCircleOut = RAGE_SWAPPER.convertCircleToPCircle(circleOut, deadline);
        require(pCircleOut > 0 && PCIRCLE.balanceOf(address(this)) >= pCircleOut, "pCircleBalance");
        require(PCIRCLE.transfer(rbp, pCircleOut), "pCircleTransferFailed");
    }
  }

  // getCurrentBonus
  // compute effective bonus based on time elapsed since anchor
  function getCurrentBonus() internal view returns (uint256 currentBonus, uint256 nextIncrement) {
    if (getRageDepotBalance() <= MIN_RAGE) {
        return (0, 0);
    }
    
    uint256 elapsed = block.timestamp - bonusLastReset;
    uint256 increments = elapsed / CONFIG.bonusInterval;
    currentBonus = CONFIG.bonusMin + increments;

    if (currentBonus >= CONFIG.bonusMax) {
        currentBonus = CONFIG.bonusMax;
        nextIncrement = 0;
    } else {
        nextIncrement = bonusLastReset + (increments + 1) * CONFIG.bonusInterval;
    }
  }

  // buyTarget
  // returns the asset the backing flow should buy: 1 = HESTIA, 2 = CIRCLE
  // buys hestia while its share of the rage underlying is at or under the rbp invest target
  // (underlying percents are in basis points, invest percents in whole percents)
  function buyTarget() internal view returns (uint256) {
    IRageBuyingProtocol rbp = getRageBuyingProtocol();
    (,,,,, uint256 hestiaPercent,) = rbp.getRageUnderlying();
    (uint256 targetHestia,) = rbp.getInvestPercents();
    return hestiaPercent <= targetHestia * 100 ? 1 : 2;
  }

  // getMaxUsdcValue
  // max usdc input value the contract can support: the value whose rage output (with bonus) equals the rage balance
  function getMaxUsdcValue(uint256 rageBalance, uint256 ragePrice, uint256 currentBonus) internal pure returns (uint256) {
    return (rageBalance * ragePrice * 100) / (1e18 * (100 + currentBonus));
  }

  // getTokenMinMax
  // min/max input amounts for a token (18 decimals) given its per-token usdc price
  function getTokenMinMax(uint256 tokenPrice, uint256 maxUsdcValue) internal view returns (uint256 minInput, uint256 maxInput) {
    minInput = (CONFIG.minUsdcValue * 1e18) / tokenPrice;
    maxInput = (maxUsdcValue * 1e18) / tokenPrice;
  }

  // getMinMax
  // min/max input amounts per token for the given prices and the max usdc value the contract can support
  // hestia/circle are 0 when not allowed; usdc and urm are always allowed
  function getMinMax(uint256 hestiaPrice, uint256 circlePrice, uint256 urmPrice, uint256 maxUsdcValue) internal view returns (
    uint256 minHestia, uint256 maxHestia,
    uint256 minCircle, uint256 maxCircle,
    uint256 minUsdc, uint256 maxUsdc,
    uint256 minUrm, uint256 maxUrm
  ) {
    if (CONFIG.allowHestia && hestiaPrice > 0) {
        (minHestia, maxHestia) = getTokenMinMax(hestiaPrice, maxUsdcValue);
    }

    if (CONFIG.allowCircle && circlePrice > 0) {
        (minCircle, maxCircle) = getTokenMinMax(circlePrice, maxUsdcValue);
    }

    minUsdc = CONFIG.minUsdcValue;
    maxUsdc = maxUsdcValue;

    if (urmPrice > 0) {
        (minUrm, maxUrm) = getTokenMinMax(urmPrice, maxUsdcValue);
    }
  }

  // getRageDepotBalance
  function getRageDepotBalance() internal view returns(uint256) {
    return RAGE_DEPOT.getAvailableFor(address(this));
  }

  // getRageBuyingProtocol
  function getRageBuyingProtocol() internal view returns (IRageBuyingProtocol) {
    return IRageBuyingProtocol(RAGE_CHAOS_ENGINE.getRageBuyingProtocol());
  }
}
