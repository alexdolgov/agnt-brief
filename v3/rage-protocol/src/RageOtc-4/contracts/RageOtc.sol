// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IERC20} from "./IERC20.sol";
import {RageStructs} from "./RageStructs.sol";
import {IRageSwapper} from "./IRageSwapper.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {IRageOracle} from "./IRageOracle.sol";
import {IRageDepot} from "./IRageDepot.sol";

/**
 * RageOtc
 *
 * Allows users to swap HESTIA, CIRCLE, or USDC for RAGE tokens at oracle price plus a bonus.
 * The bonus operates as a reverse dutch auction: it starts at a minimum value and automatically
 * increments by 1% at each configured interval until it reaches its maximum. Toggling the
 * contract active status resets the bonus back to its minimum, restarting the auction.
 *
 * Input tokens are split between a multisig wallet and the Rage Buying Protocol (RBP).
 * The RBP portion is converted to pTokens (pHestia or pCircle) to increase RAGE backing.
 * USDC inputs are first swapped to HESTIA or CIRCLE (based on buyType config) before conversion.
 *
 * All prices are determined by TWAP oracle lookups at the time of the transaction.
 */
contract RageOtc is ReentrancyGuard {
  // constant
  IRageSwapper private constant RAGE_SWAPPER = IRageSwapper(0x03FEe5bA01D5B71c7F7689490826Ba75a2750c44);
  IRageChaosEngine private constant RAGE_CHAOS_ENGINE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  IRageOracle private constant RAGE_ORACLE = IRageOracle(0x9B8a45C4A0fBD44158480D9b4B41e0bdCA42874C);
  IRageDepot private constant RAGE_DEPOT = IRageDepot(0xa87008E732cfD9003C6bFBa84369C2778284C82C);
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IERC20 private constant PHESTIA = IERC20(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IERC20 private constant PCIRCLE = IERC20(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  uint256 private constant MIN_RAGE = 1e18;
  uint256 private constant VERSION = 1;
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;
  address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;

  // state
  RageStructs.OtcState private STATE;
  RageStructs.OtcConfig private CONFIG;
  RageStructs.OtcOverview private LAST_TX;
  uint256 private bonusLastReset; // timestamp when bonus was last reset to bonusMin
  
  // events
  event ConfigChanged(RageStructs.OtcConfig config);
  event OtcExecuted(address indexed wallet, uint256 inputType, uint256 inputAmount, uint256 rageAmount, uint256 inputForMultisig, uint256 inputForBacking);

  // constructor
  constructor() {
    // approve rage swapper for swapping
    USDC.approve(address(RAGE_SWAPPER), type(uint256).max);
    HESTIA.approve(address(RAGE_SWAPPER), type(uint256).max);
    CIRCLE.approve(address(RAGE_SWAPPER), type(uint256).max);
    PHESTIA.approve(address(RAGE_SWAPPER), type(uint256).max);
    PCIRCLE.approve(address(RAGE_SWAPPER), type(uint256).max);

    // initialize config with default values
    CONFIG = RageStructs.OtcConfig({
        active: false,
        allowHestia: true,
        allowCircle: true,
        allowUsdcMinBonus: 10,
        percentMultisig: 30,
        buyType: 1,
        bonusInterval: 6 hours,
        bonusMin: 0,
        bonusMax: 20,
        minUsdcValue: 5e6,
        slippage: 500,
        twap: 10 minutes
    });

    bonusLastReset = block.timestamp;
  }

  // withdrawEth
  function withdrawEth() external {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");

    uint256 balance = address(this).balance;
    require(balance > 0, "noEthBalance");
    (bool success, ) = payable(MULTISIG).call{value: balance}("");
    require(success, "ethTransferFailed");
  }

  // withdrawToken
  function withdrawToken(address tokenAdr) external {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "noTokenBalance");
    require(token.transfer(MULTISIG, balance), "transferFailed");
  }

  // receive
  receive() external payable nonReentrant {
    require(CONFIG.active, "notActive");
    (uint256 currentBonus,) = getCurrentBonus();
    require(currentBonus >= CONFIG.allowUsdcMinBonus, "usdcNotAllowed");

    uint256 usdcBefore = USDC.balanceOf(address(this));
    uint256 deadline = block.timestamp + MAX_DEADLINE_DURATION;
    RAGE_SWAPPER.swapEthForUsdc{value: msg.value}(deadline);
    uint256 usdcOut = USDC.balanceOf(address(this)) - usdcBefore;
    require(usdcOut > 0, "swapFailed");

    RageStructs.OtcOverview memory overview = otcOverview(msg.sender, usdcOut, 3, usdcOut);

    otcProcess(overview, USDC);
  }

    // otc
  function otc(uint256 inputAmount, uint256 inputType) external nonReentrant {
    // determine input token and get overview for caller
    IERC20 inputToken = inputType == 1 ? HESTIA : (inputType == 2 ? CIRCLE : USDC);
    RageStructs.OtcOverview memory overview = otcOverview(msg.sender, inputAmount, inputType, inputToken.balanceOf(msg.sender));
    require(overview.canOtc, "cannotOtc");

    // transfer input tokens from user to this contract
    require(inputToken.transferFrom(msg.sender, address(this), inputAmount), "transferFromFailed");

    otcProcess(overview, inputToken);
  }

  // getCurrentBonus
  // compute effective bonus based on time elapsed since anchor
  function getCurrentBonus() internal view returns (uint256 currentBonus, uint256 nextIncrement) {
    if (getRageBalance() <= MIN_RAGE) {
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

  // otcOverview
  function otcOverview(address wallet, uint256 inputAmount, uint256 inputType, uint256 userBalance) public view returns (RageStructs.OtcOverview memory) {
      RageStructs.OtcOverview memory overview;

      overview.timestamp = block.timestamp;
      overview.wallet = wallet;
      overview.inputAmount = inputAmount;
      overview.inputType = inputType;

      // get current bonus from inverse dutch auction
      (uint256 currentBonus, ) = getCurrentBonus();
      overview.bonus = currentBonus;

      // ensure minimum backing percentage equals the bonus
      // as bonus increases over time, multisig share shrinks to guarantee backing
      uint256 effectivePercentMultisig = CONFIG.percentMultisig;
      if (effectivePercentMultisig + currentBonus > 100) {
          effectivePercentMultisig = 100 - currentBonus;
      }
      overview.percentMultisig = effectivePercentMultisig;

      // calculate usdc value of inputAmount using RageOracle
      if (inputType == 1) {
          overview.inputValue = RAGE_ORACLE.getHestiaTwapUsdcPrice(inputAmount, CONFIG.twap);
      } else if (inputType == 2) {
          overview.inputValue = RAGE_ORACLE.getCircleTwapUsdcPrice(inputAmount, CONFIG.twap);
      } else {
          overview.inputValue = inputAmount;
      }

      // calculate rage output: usdc value + bonus worth of RAGE
      uint256 ragePrice = RAGE_ORACLE.getRageTwapUsdcPrice(1e18, CONFIG.twap);
      require(ragePrice > 0, "invalidRagePrice");
      uint256 baseRageAmount = (overview.inputValue * 1e18) / ragePrice;
      uint256 bonusAmount = (baseRageAmount * currentBonus) / 100;

      overview.outputAmount = baseRageAmount + bonusAmount;
      overview.outputBonus = bonusAmount;
      overview.outputValue = (overview.outputAmount * ragePrice) / 1e18;

      // calculate multisig/backing split of input tokens and their usdc values
      overview.inputForMultisig = (inputAmount * overview.percentMultisig) / 100;
      overview.inputValueForMultisig = (overview.inputValue * overview.percentMultisig) / 100;
      overview.inputForBacking = inputAmount - overview.inputForMultisig;
      overview.inputValueForBacking = overview.inputValue - overview.inputValueForMultisig;

      // validate contract holds enough rage
      overview.rageBalance = getRageBalance();
      overview.contractBalance = overview.rageBalance >= overview.outputAmount;

      // validate if the inputType is allowed
      bool allowed;
      if (inputType == 1) {
          allowed = CONFIG.allowHestia;
      } else if (inputType == 2) {
          allowed = CONFIG.allowCircle;
      } else {
          allowed = currentBonus >= CONFIG.allowUsdcMinBonus;
      }

      // check if the wallet has the inputAmount
      overview.userBalance = userBalance >= inputAmount;

      // final check - all conditions must be met
      overview.canOtc = CONFIG.active 
          && allowed 
          && overview.userBalance 
          && overview.contractBalance 
          && overview.inputValue >= CONFIG.minUsdcValue;

      return overview;
  }

  // otcProcess
  function otcProcess(RageStructs.OtcOverview memory overview, IERC20 inputToken) private {
    require(overview.canOtc, "cannotOtc");

    // send multisig portion
    if (overview.inputForMultisig > 0) {
        require(inputToken.transfer(MULTISIG, overview.inputForMultisig), "multisigTransferFailed");
    }

    // send rage tokens to user via rage depot
    require(RAGE_DEPOT.requestTransfer(overview.wallet, overview.outputAmount), "rageTransferFailed");

    // handle input for backing
    if (overview.inputForBacking > 0) {
        address rbp = RAGE_CHAOS_ENGINE.getRageBuyingProtocol();
        uint256 deadline = block.timestamp + MAX_DEADLINE_DURATION;

        if (overview.inputType == 1) {
            uint256 pHestiaOut = RAGE_SWAPPER.convertHestiaToPHestia(overview.inputForBacking, deadline);
            require(pHestiaOut > 0 && PHESTIA.balanceOf(address(this)) >= pHestiaOut, "pHestiaBalance");
            require(PHESTIA.transfer(rbp, pHestiaOut), "pHestiaTransferFailed");

        } else if (overview.inputType == 2) {
            uint256 pCircleOut = RAGE_SWAPPER.convertCircleToPCircle(overview.inputForBacking, deadline);
            require(pCircleOut > 0 && PCIRCLE.balanceOf(address(this)) >= pCircleOut, "pCircleBalance");
            require(PCIRCLE.transfer(rbp, pCircleOut), "pCircleTransferFailed");

        } else {
            if (CONFIG.buyType == 1) {
                uint256 hestiaOut = RAGE_SWAPPER.swapUsdcForHestia(overview.inputForBacking, CONFIG.slippage, deadline);
                require(hestiaOut > 0 && HESTIA.balanceOf(address(this)) >= hestiaOut, "hestiaBalance");

                uint256 pHestiaOut = RAGE_SWAPPER.convertHestiaToPHestia(hestiaOut, deadline);
                require(pHestiaOut > 0 && PHESTIA.balanceOf(address(this)) >= pHestiaOut, "pHestiaBalance");
                require(PHESTIA.transfer(rbp, pHestiaOut), "pHestiaTransferFailed");
            } else {
                uint256 circleOut = RAGE_SWAPPER.swapUsdcForCircle(overview.inputForBacking, CONFIG.slippage, deadline);
                require(circleOut > 0 && CIRCLE.balanceOf(address(this)) >= circleOut, "circleBalance");

                uint256 pCircleOut = RAGE_SWAPPER.convertCircleToPCircle(circleOut, deadline);
                require(pCircleOut > 0 && PCIRCLE.balanceOf(address(this)) >= pCircleOut, "pCircleBalance");
                require(PCIRCLE.transfer(rbp, pCircleOut), "pCircleTransferFailed");
            }
        }
    }

    // update state
    STATE.txCount++;
    STATE.batchTxCount++;
    STATE.inputValue += overview.inputValue;
    STATE.inputValueForMultisig += overview.inputValueForMultisig;
    STATE.inputValueForBacking += overview.inputValueForBacking;
    STATE.rageOutputAmount += overview.outputAmount;
    STATE.rageOutputValue += overview.outputValue;

    if (overview.inputType == 1) {
        STATE.txHestiaCount++;
        STATE.hestiaAmount += overview.inputAmount;
    } else if (overview.inputType == 2) {
        STATE.txCircleCount++;
        STATE.circleAmount += overview.inputAmount;
    } else {
        STATE.txUsdcCount++;
        STATE.usdcAmount += overview.inputAmount;
    }

    // store last transaction (update rageBalance to reflect post-transfer balance)
    overview.rageBalance -= overview.outputAmount;
    LAST_TX = overview;

    // if rage balance falls under min_rage, deactivate the contract
    uint256 rageBalance = getRageBalance();
    if (rageBalance <= MIN_RAGE) {
        CONFIG.active = false;
        bonusLastReset = block.timestamp;
    }

    // emit event
    emit OtcExecuted(overview.wallet, overview.inputType, overview.inputAmount, overview.outputAmount, overview.inputForMultisig, overview.inputForBacking);
  }

  // setConfigs
  function setConfigs(RageStructs.OtcConfig calldata newConfig) external nonReentrant {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");
    require(block.timestamp >= STATE.nextConfigTime, "configTimeout");

    require(newConfig.allowUsdcMinBonus <= 51, "allowUsdcMinBonus");
    require(newConfig.percentMultisig <= 100, "percentMultisig");
    require(newConfig.buyType == 1 || newConfig.buyType == 2, "buyType");
    require(newConfig.bonusInterval >= 1 hours && newConfig.bonusInterval <= 1 days, "bonusInterval");
    require(newConfig.bonusMin <= 5, "bonusMin");
    require(newConfig.bonusMax >= 10 && newConfig.bonusMax <= 50, "bonusMax");
    require(newConfig.bonusMin < newConfig.bonusMax, "bonusMinMax");
    require(newConfig.minUsdcValue >= 1e6, "minUsdcValue");
    require(newConfig.slippage <= 2500, "slippage");
    require(newConfig.twap >= 1 seconds && newConfig.twap <= 3600 seconds, "twap");

    // reset bonus on any call ot setConfigs
    bonusLastReset = block.timestamp;

    CONFIG = newConfig;
    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;
    STATE.batchTxCount = 0;

    emit ConfigChanged(newConfig);
  }
  
  // getState
  function getState() external view returns (RageStructs.OtcGetState memory) {
    uint256 rageBalance = getRageBalance();
    bool active = CONFIG.active && rageBalance > MIN_RAGE;

    // get oracle prices per 1 full token
    uint256 ragePrice = RAGE_ORACLE.getRageTwapUsdcPrice(1e18, CONFIG.twap);
    uint256 hestiaPrice = RAGE_ORACLE.getHestiaTwapUsdcPrice(1e18, CONFIG.twap);
    uint256 circlePrice = RAGE_ORACLE.getCircleTwapUsdcPrice(1e18, CONFIG.twap);

    // get current bonus from inverse dutch auction
    (uint256 currentBonus, uint256 nextIncrement) = getCurrentBonus();

    // max USDC value the contract can support, accounting for current bonus
    uint256 maxUsdcValue = (rageBalance * ragePrice * 100) / (1e18 * (100 + currentBonus));

    // min/max for HESTIA (0 if not allowed)
    uint256 minHestia;
    uint256 maxHestia;
    if (CONFIG.allowHestia && hestiaPrice > 0) {
        minHestia = (CONFIG.minUsdcValue * 1e18) / hestiaPrice;
        maxHestia = (maxUsdcValue * 1e18) / hestiaPrice;
    }

    // min/max for CIRCLE (0 if not allowed)
    uint256 minCircle;
    uint256 maxCircle;
    if (CONFIG.allowCircle && circlePrice > 0) {
        minCircle = (CONFIG.minUsdcValue * 1e18) / circlePrice;
        maxCircle = (maxUsdcValue * 1e18) / circlePrice;
    }

    // min/max for USDC (0 if not allowed)
    uint256 minUsdc;
    uint256 maxUsdc;
    if (currentBonus >= CONFIG.allowUsdcMinBonus) {
        minUsdc = CONFIG.minUsdcValue;
        maxUsdc = maxUsdcValue;
    }

    return RageStructs.OtcGetState({
        version: VERSION,
        rageChaosEngine: address(RAGE_CHAOS_ENGINE),
        rageSwapper: address(RAGE_SWAPPER),
        rageOracle: address(RAGE_ORACLE),
        rageDepot: address(RAGE_DEPOT),
        multisig: MULTISIG,
        automator: RAGE_CHAOS_ENGINE.getAutomator(),
        rageBalance: rageBalance,
        active: active,
        minHestia: minHestia,
        maxHestia: maxHestia,
        minCircle: minCircle,
        maxCircle: maxCircle,
        minUsdc: minUsdc,
        maxUsdc: maxUsdc,
        ragePrice: ragePrice,
        hestiaPrice: hestiaPrice,
        circlePrice: circlePrice,
        bonusCurrent: currentBonus,
        bonusNextIncrement: nextIncrement,
        bonusLastReset: bonusLastReset,
        lastTx: LAST_TX,
        state: STATE,
        config: CONFIG
    });
  }

  // getRageBalance
  function getRageBalance() internal view returns(uint256) {
    return RAGE_DEPOT.getAvailableFor(address(this));
  }
}
