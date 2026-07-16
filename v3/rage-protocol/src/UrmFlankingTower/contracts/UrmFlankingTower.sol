// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {IUrm} from "./IUrm.sol";
import {IUrmSwapper} from "./IUrmSwapper.sol";
import {IUrmFortress} from "./IUrmFortress.sol";
import {IUrmFortressTower} from "./IUrmFortressTower.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {INonfungiblePositionManager} from "./INonfungiblePositionManager.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import {TickMath} from "./TickMath.sol";
import {LiquidityAmounts} from "./LiquidityAmounts.sol";
import {TowerStructs} from "./TowerStructs.sol";

contract UrmFlankingTower is ReentrancyGuard, IUrmFortressTower {
  // constant
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IUrm private constant URM = IUrm(0xF0E3349f00972475a5D16721796091AA3B997837);
  IUrmSwapper private constant URM_SWAPPER = IUrmSwapper(0x52C540F4d8D16f7F6D625b9e08317A1Ef2cdE13C);
  IUniswapV3Pool private constant URM_USDC_POOL = IUniswapV3Pool(0x63b531588398cD17297D571e17688D31cC182075);
  IUrmFortress private constant URM_FORTRESS = IUrmFortress(0x5E06B7117D47210a5FDc54D08A9Dd8d8Bf0F1Fc3);
  IRageChaosEngine private constant RCE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  INonfungiblePositionManager private constant POSITION_MANAGER = INonfungiblePositionManager(0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1);
  IUniswapV3Factory private constant FACTORY = IUniswapV3Factory(0x33128a8fC17869897dcE68Ed026d694621f6FDfD);
  uint256 private constant VERSION = 1;
  uint256 private constant BPS = 10_000;
  uint24 private constant URM_USDC_FEE = 500; // 0.05%
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;
  uint256 private constant MIN_SYNC_PERCENT = 1; // min off-target gap (%) before a sync acts
  uint256 private constant URM_LIQUIDITY_MARGIN = 25_000e18; // max change to urmLiquidity target per setConfigs call

  // immutable
  uint256 private immutable NFT_ID; // URM/USDC sell-side position (~1.0075–1.01)

  // state
  TowerStructs.FlankingConfig private CONFIG;
  TowerStructs.FlankingState private STATE;

  // events
  event ConfigChanged(TowerStructs.FlankingConfig config);
  event NftLocked(uint256 indexed nftId);
  event Synced(uint256 nftUrm, uint256 target, uint256 urmAdded, uint256 urmBurned);
  event FeesCollected(uint256 urmPaid);
  event TowerClosed(uint256 urmBurned);

  // constructor
  // validates the URM/USDC pool and NFT from the factory, caches token0, sets approvals and default config
  constructor(uint256 nftId) {
    NFT_ID = nftId;

    // factory validation
    require(FACTORY.getPool(address(URM), address(USDC), URM_USDC_FEE) == address(URM_USDC_POOL), "nft");

    // validate NFT has URM/USDC tokens with correct fee
    (, , address t0p, address t1p, uint24 feep, , , , , , , ) = POSITION_MANAGER.positions(nftId);
    require((t0p == address(URM) && t1p == address(USDC)) || (t0p == address(USDC) && t1p == address(URM)), "nft");
    require(feep == URM_USDC_FEE, "nft");

    // cache token0 for URM vs USDC direction
    STATE.urmUsdcPoolToken0 = URM_USDC_POOL.token0();

    // approve position manager for liquidity operations
    URM.approve(address(POSITION_MANAGER), type(uint256).max);
    USDC.approve(address(POSITION_MANAGER), type(uint256).max);

    // approve swapper for USDC fees, and the Fortress to pull URM on payFortress
    USDC.approve(address(URM_SWAPPER), type(uint256).max);
    URM.approve(address(URM_FORTRESS), type(uint256).max);

    // set default config (inert until the automator sets a target)
    CONFIG = TowerStructs.FlankingConfig({urmLiquidity: 0, slippage: 500, collectFeesDelay: 7 days, mode: 1});
  }

  // withdrawToken
  // URM and USDC are position-managed and cannot be withdrawn; other stray tokens go to the multisig
  function withdrawToken(address tokenAdr) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(tokenAdr != address(URM) && tokenAdr != address(USDC), "tok");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "bal");
    require(token.transfer(RCE.getMultisig(), balance), "xfer");
  }

  // lockNft
  // transfers the URM/USDC sell-side NFT into the tower; automator-gated, callable once
  function lockNft() external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(!STATE.nftLocked, "nft");
    STATE.nftLocked = true;

    POSITION_MANAGER.transferFrom(msg.sender, address(this), NFT_ID);
    emit NftLocked(NFT_ID);
  }

  // setConfigs
  // updates the target URM and slippage; automator only, 1-hour cooldown between calls
  function setConfigs(TowerStructs.FlankingConfig calldata newConfig) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(block.timestamp >= STATE.nextConfigTime, "cool");
    require(newConfig.slippage <= 2500, "conf");
    require(newConfig.collectFeesDelay <= 365 days, "conf");
    require(newConfig.mode == 1 || newConfig.mode == 2, "conf");

    // bound the per-call target change (up or down); use closeTower for an immediate full exit
    uint256 oldTarget = CONFIG.urmLiquidity;
    uint256 newTarget = newConfig.urmLiquidity;
    uint256 delta = newTarget > oldTarget ? newTarget - oldTarget : oldTarget - newTarget;
    require(delta <= URM_LIQUIDITY_MARGIN, "conf");

    CONFIG = newConfig;
    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;

    emit ConfigChanged(newConfig);
  }

  // getState
  // full read-only snapshot of the tower for off-chain monitoring
  function getState() external view returns (TowerStructs.FlankingGetState memory) {
    (uint256 nftUrm, uint256 nftUsdc) = getUrmLiquidity();

    return TowerStructs.FlankingGetState({
      version: VERSION,
      automator: getAutomator(),
      nftId: NFT_ID,
      nftUrm: nftUrm,
      nftUsdc: nftUsdc,
      outOfRange: nftUsdc == 0,
      syncNeeded: syncNeeded(nftUrm, CONFIG.urmLiquidity),
      urmBalance: getUrmBalance(),
      usdcBalance: getUsdcBalance(),
      state: STATE,
      config: CONFIG
    });
  }

  // fortressData
  // reports this tower's URM/USDC for the Fortress backing formula and URM supply accounting
  function fortressData() external view returns (uint256 usdcPooled, uint256 usdcStored, uint256 urmPooled, uint256 urmStored, uint256 urmBorrowed) {
    (uint256 nftUrm, uint256 nftUsdc) = getUrmLiquidity();
    return (nftUsdc, getUsdcBalance(), nftUrm, getUrmBalance(), 0);
  }

  // fortressPreSync
  // tells the Fortress how much URM to send and whether to sync, so the position converges to CONFIG.urmLiquidity
  function fortressPreSync(uint256 urmRequestable) external view returns (bool syncRequested, uint256 urmRequested) {
    if (STATE.closed) return (false, 0);

    (uint256 nftUrm, uint256 nftUsdc) = getUrmLiquidity();
    uint256 target = CONFIG.urmLiquidity;
    uint256 bal = getUrmBalance();
    bool feesDue = CONFIG.collectFeesDelay > 0 && block.timestamp >= STATE.lastCollectFees + CONFIG.collectFeesDelay;
    // only move liquidity while the position is out of range (single-sided URM, 0 USDC); see fortressSync
    bool outOfRange = nftUsdc == 0;

    if (outOfRange && CONFIG.mode == 1 && target > nftUrm && syncNeeded(nftUrm, target)) {
      // increase-only: top up toward target, requesting only what the held balance can't cover (capped by the offer)
      uint256 deficit = target - nftUrm;
      uint256 need = deficit > bal ? deficit - bal : 0;
      urmRequested = need < urmRequestable ? need : urmRequestable;
      syncRequested = urmRequested > 0 || bal > 0 || feesDue;
    } else if (outOfRange && CONFIG.mode == 2 && target < nftUrm && syncNeeded(nftUrm, target)) {
      // decrease-only: no URM required, just trigger the sync to trim + burn
      syncRequested = true;
    } else {
      // in range or nothing to do in the configured direction: only sync if fees are due to be collected
      syncRequested = feesDue;
    }
  }

  // fortressSync
  // inserts available URM into the position up to the target, or trims and burns the excess;
  // the Fortress transfers any requested URM into this tower before calling this
  function fortressSync() external nonReentrant {
    require(msg.sender == address(URM_FORTRESS) || msg.sender == getAutomator(), "auth");
    require(!STATE.closed, "closed");

    // collectFees is URM-balance-neutral and doesn't change liquidity, so these reads stay valid
    (uint256 nftUrm, uint256 nftUsdc) = getUrmLiquidity();
    uint256 target = CONFIG.urmLiquidity;
    uint256 bal = getUrmBalance();

    // only move liquidity while the position is out of range, i.e. single-sided URM (0 USDC).
    bool outOfRange = nftUsdc == 0;

    uint256 urmAdded;
    uint256 urmBurned;

    if (outOfRange && CONFIG.mode == 2 && target < nftUrm && syncNeeded(nftUrm, target)) {
      // trim toward target; liquidityDecrease collects fees first, then removes principal and burns it
      urmBurned = liquidityDecrease(nftUrm, target);
    } else {
      // periodic throttled fee harvest on non-decrease syncs
      if (CONFIG.collectFeesDelay > 0 && block.timestamp >= STATE.lastCollectFees + CONFIG.collectFeesDelay) {
        collectFees();
      }
      if (outOfRange && CONFIG.mode == 1 && target > nftUrm && bal > 0 && syncNeeded(nftUrm, target)) {
        // add single-sided URM, deploying only up to the remaining gap
        uint256 gap = target - nftUrm;
        urmAdded = liquidityIncrease(gap < bal ? gap : bal);
      }
    }

    if (urmAdded > 0 || urmBurned > 0) {
      STATE.lastSync = block.timestamp;
      STATE.syncCount += 1;
      emit Synced(nftUrm, target, urmAdded, urmBurned);
    }
  }

  // closeTower
  // terminal wind-down: routes accrued fees to the Fortress, removes 100% of the liquidity and
  // burns the principal URM, and permanently disables sync. Only when out of range (0 USDC).
  function closeTower() external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(!STATE.closed, "closed");

    (uint256 nftUrm, uint256 nftUsdc) = getUrmLiquidity();
    require(nftUsdc == 0, "range");

    STATE.closed = true;

    // liquidityDecrease collects fees then removes 100% (target 0) and burns the principal URM;
    // if the position is already empty, still flush any accrued fees to the Fortress
    uint256 urmBurned;
    if (nftUrm > 0) {
      urmBurned = liquidityDecrease(nftUrm, 0);
    } else {
      collectFees();
    }

    // burn any idle URM left in the tower (rounding dust, undeployed transfers, donations) so it isn't stranded
    uint256 idle = getUrmBalance();
    if (idle > 0) {
      URM.burn(idle);
      urmBurned += idle;
    }

    emit TowerClosed(urmBurned);
  }

  // liquidityIncrease
  // deploys single-sided URM into the position and records the amount added
  function liquidityIncrease(uint256 maxUrm) internal returns (uint256 urmAdded) {
    (urmAdded, ) = nftIncrease(maxUrm, 0);
    STATE.totalUrmIncrease += urmAdded;
  }

  // liquidityDecrease
  // collects fees to the Fortress first, then removes the URM above target from the position and burns it
  function liquidityDecrease(uint256 nftUrm, uint256 target) internal returns (uint256 urmBurned) {
    collectFees();
    uint256 urmFreed = nftDecrease(nftUrm, target);
    if (urmFreed > 0) {
      URM.burn(urmFreed);
      STATE.totalUrmDecrease += urmFreed;
      urmBurned = urmFreed;
    }
  }

  // nftIncrease
  // core liquidity-add mechanics for the URM/USDC position (single-sided URM in the normal sell-side state)
  function nftIncrease(uint256 maxUrm, uint256 maxUsdc) internal returns (uint256 urmIncrease, uint256 usdcIncrease) {
    bool urmIsToken0 = STATE.urmUsdcPoolToken0 == address(URM);

    (, , , , , int24 tickLower, int24 tickUpper, , , , , ) = POSITION_MANAGER.positions(NFT_ID);
    (uint160 sqrtPriceX96, , , , , , ) = URM_USDC_POOL.slot0();
    uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
    uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

    uint256 amount0Available = urmIsToken0 ? maxUrm : maxUsdc;
    uint256 amount1Available = urmIsToken0 ? maxUsdc : maxUrm;

    uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
      sqrtPriceX96, sqrtRatioAX96, sqrtRatioBX96, amount0Available, amount1Available
    );
    if (liquidity == 0) return (0, 0);

    (uint256 amount0Desired, uint256 amount1Desired) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96, sqrtRatioAX96, sqrtRatioBX96, liquidity
    );

    uint256 amount0Min = CONFIG.slippage > 0 ? (amount0Desired * (BPS - CONFIG.slippage)) / BPS : 0;
    uint256 amount1Min = CONFIG.slippage > 0 ? (amount1Desired * (BPS - CONFIG.slippage)) / BPS : 0;

    (, uint256 amount0Added, uint256 amount1Added) = POSITION_MANAGER.increaseLiquidity(
      INonfungiblePositionManager.IncreaseLiquidityParams({
        tokenId: NFT_ID,
        amount0Desired: amount0Desired,
        amount1Desired: amount1Desired,
        amount0Min: amount0Min,
        amount1Min: amount1Min,
        deadline: block.timestamp + MAX_DEADLINE_DURATION
      })
    );

    urmIncrease = urmIsToken0 ? amount0Added : amount1Added;
    usdcIncrease = urmIsToken0 ? amount1Added : amount0Added;
  }

  // nftDecrease
  // removes the URM in excess of the target from the position and collects it to the tower;
  // only called while out of range, so the freed amount is single-sided URM (the caller burns it)
  function nftDecrease(uint256 nftUrm, uint256 target) internal returns (uint256 urmDecrease) {
    (, , , , , int24 tickLower, int24 tickUpper, uint128 liquidity, , , , ) = POSITION_MANAGER.positions(NFT_ID);

    uint256 excess = nftUrm - target;
    uint128 liqToRemove = uint128((uint256(liquidity) * excess) / nftUrm);
    if (liqToRemove == 0) return 0;

    // slippage floors from the expected amounts for the liquidity being removed
    (uint160 sqrtPriceX96, , , , , , ) = URM_USDC_POOL.slot0();
    (uint256 e0, uint256 e1) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96, TickMath.getSqrtRatioAtTick(tickLower), TickMath.getSqrtRatioAtTick(tickUpper), liqToRemove
    );
    uint256 amount0Min = CONFIG.slippage > 0 ? (e0 * (BPS - CONFIG.slippage)) / BPS : 0;
    uint256 amount1Min = CONFIG.slippage > 0 ? (e1 * (BPS - CONFIG.slippage)) / BPS : 0;

    POSITION_MANAGER.decreaseLiquidity(
      INonfungiblePositionManager.DecreaseLiquidityParams({
        tokenId: NFT_ID,
        liquidity: liqToRemove,
        amount0Min: amount0Min,
        amount1Min: amount1Min,
        deadline: block.timestamp + MAX_DEADLINE_DURATION
      })
    );

    (uint256 amount0, uint256 amount1) = POSITION_MANAGER.collect(
      INonfungiblePositionManager.CollectParams({
        tokenId: NFT_ID,
        recipient: address(this),
        amount0Max: type(uint128).max,
        amount1Max: type(uint128).max
      })
    );

    bool urmIsToken0 = STATE.urmUsdcPoolToken0 == address(URM);
    urmDecrease = urmIsToken0 ? amount0 : amount1;
  }

  // collectFees
  // sweeps accrued swap fees from the position, swaps the tower's entire USDC balance to URM, and pays all of it to the Fortress
  function collectFees() internal {
    STATE.lastCollectFees = block.timestamp;

    (uint256 amount0, uint256 amount1) = POSITION_MANAGER.collect(
      INonfungiblePositionManager.CollectParams({
        tokenId: NFT_ID,
        recipient: address(this),
        amount0Max: type(uint128).max,
        amount1Max: type(uint128).max
      })
    );

    bool urmIsToken0 = STATE.urmUsdcPoolToken0 == address(URM);
    uint256 totalUrm = urmIsToken0 ? amount0 : amount1;

    // swap the whole USDC balance (just-collected fees plus any residual) to URM
    uint256 usdcBalance = getUsdcBalance();
    if (usdcBalance > 0) {
      totalUrm += URM_SWAPPER.swapUsdcToUrm(usdcBalance, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
    }

    // send all collected URM to the Fortress
    if (totalUrm > 0) {
      URM_FORTRESS.payFortress(totalUrm);
      STATE.totalUrmFees += totalUrm;
      emit FeesCollected(totalUrm);
    }
  }

  // getUrmLiquidity
  // returns URM and USDC amounts currently held in the sell-side NFT position
  function getUrmLiquidity() internal view returns (uint256 urm, uint256 usdc) {
    (uint256 amount0, uint256 amount1) = getNftAmounts();
    bool urmIsToken0 = STATE.urmUsdcPoolToken0 == address(URM);
    urm = urmIsToken0 ? amount0 : amount1;
    usdc = urmIsToken0 ? amount1 : amount0;
  }

  // getNftAmounts
  // returns the current token0/token1 amounts held in the NFT position
  function getNftAmounts() internal view returns (uint256 amount0, uint256 amount1) {
    (, , , , , int24 tickLower, int24 tickUpper, uint128 liquidity, , , , ) = POSITION_MANAGER.positions(NFT_ID);
    if (liquidity == 0) return (0, 0);

    (uint160 sqrtPriceX96, , , , , , ) = URM_USDC_POOL.slot0();

    (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96,
      TickMath.getSqrtRatioAtTick(tickLower),
      TickMath.getSqrtRatioAtTick(tickUpper),
      liquidity
    );
  }

  // getUrmBalance
  // URM held directly by the tower, not yet deployed into the position
  function getUrmBalance() internal view returns (uint256) {
    return URM.balanceOf(address(this));
  }

  // getUsdcBalance
  // USDC held directly by the tower
  function getUsdcBalance() internal view returns (uint256) {
    return USDC.balanceOf(address(this));
  }

  // syncNeeded
  // true when the position is at least MIN_SYNC_PERCENT off target; avoids churning syncs on dust
  function syncNeeded(uint256 nftUrm, uint256 target) internal pure returns (bool) {
    uint256 gap = nftUrm > target ? nftUrm - target : target - nftUrm;
    return gap * 100 >= target * MIN_SYNC_PERCENT;
  }

  // getAutomator
  function getAutomator() internal view returns (address) {
    return RCE.getAutomator();
  }
}
