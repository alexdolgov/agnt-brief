// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {IUrm} from "./IUrm.sol";
import {IUrmSwapper} from "./IUrmSwapper.sol";
import {IUrmOracle} from "./IUrmOracle.sol";
import {IRageDepot} from "./IRageDepot.sol";
import {IRageOracle} from "./IRageOracle.sol";
import {IRageBuyingProtocol} from "./IRageBuyingProtocol.sol";
import {IUrmFortressTower} from "./IUrmFortressTower.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {INonfungiblePositionManager} from "./INonfungiblePositionManager.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import {TickMath} from "./TickMath.sol";
import {LiquidityAmounts} from "./LiquidityAmounts.sol";
import {UrmStructs} from "./UrmStructs.sol";

contract UrmFortress is ReentrancyGuard {
  // constant
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant RAGE = IERC20(0xc0df50143EA93AeC63e38A6ED4E92B378079eA15);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IUniswapV3Pool private constant RAGE_USDC_POOL = IUniswapV3Pool(0xd474B32a5a2BF93453996287D361a00f661E04FF);
  IRageDepot private constant RAGE_DEPOT = IRageDepot(0x33E11FD175435188B0b750EB966fd6b195dA40DE);
  IRageOracle private constant RAGE_ORACLE = IRageOracle(0x9B8a45C4A0fBD44158480D9b4B41e0bdCA42874C);
  IRageChaosEngine private constant RCE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  INonfungiblePositionManager private constant POSITION_MANAGER = INonfungiblePositionManager(0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1);
  IUniswapV3Factory private constant FACTORY = IUniswapV3Factory(0x33128a8fC17869897dcE68Ed026d694621f6FDfD);
  uint256 private constant VERSION = 1;
  uint256 private constant BPS = 10_000;
  uint256 private constant PCT = 100;
  uint24 private constant URM_USDC_FEE = 500; // 0.05%
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  uint256 private constant PEG_DEFENSE_INTERVAL = 1 minutes;
  uint256 private constant REQUEST_URM_INTERVAL = 1 days;
  uint256 private constant REQUEST_URM_DIVISOR = 4; // 25% of Fortress URM balance
  uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;
  uint256 private constant NFT_ID_RAGE = 4095881; // RAGE/USDC LP position
  uint256 private constant LIQUIDITY_INCREASE_USDC_MIN = 1e6; // 1 USDC (6 dec)
  uint256 private constant REQUEST_SUPPLY_MARGIN = 50_000e18; // max requestSupplyMin headroom above current URM balance (18 dec); also the default
  uint256 private constant MAX_DEFENSE_SIZE = 10_000e6; // absolute cap on getMaxDefenseSize ($10,000; 6 dec)
  uint8 private constant TOWER_DISABLED = 0; // tower inactive
  uint8 private constant TOWER_BACKING_ONLY = 1; // counted in backing formula, no URM sync
  uint8 private constant TOWER_ENABLED = 2; // counted in backing formula + eligible for URM sync

  // immutable
  IUrm private immutable URM;
  IUrmSwapper private immutable URM_SWAPPER;
  IUrmOracle private immutable URM_ORACLE;
  IUniswapV3Pool private immutable URM_USDC_POOL;
  uint256 private immutable NFT_ID_URM; // URM/USDC position ($0.99–$1.01)
  address private immutable RAGE_USDC_POOL_TOKEN0; // cached token0 of RAGE/USDC pool for USDC direction

  // state
  UrmStructs.FortressConfig private CONFIG;
  UrmStructs.FortressStateValue private STATE;
  mapping(address => UrmStructs.FortressTower) private FORTRESS_TOWERS;

  // events
  event SupplyRequested(uint256 percent, uint256 minted);
  event SupplyBurned(uint256 amount);
  event TowerSet(address towerAddr, uint8 slot);
  event TowerRemoved(address towerAddr, uint8 slot);
  event TowersConfigSet(UrmStructs.FortressTowerConfig[9] configs);
  event BelowPegDefenseExecuted(bool sellRage, uint256 rageSold, uint256 urmReceived);
  event AbovePegDefenseExecuted(uint256 urmSold, uint256 usdcReceived, uint256 usdcToLp, uint256 usdcToBuy);
  event FortressPaid(uint256 urmAmount);
  event UrmRequested(address indexed caller, uint256 requested, uint256 transferred);
  event NftLocked(uint256 indexed nftId);
  event FortressFinalSet();

  // constructor
  // validates pools and NFTs from factory, caches token0 for each pool, sets default config and token approvals
  constructor(
    address urm,
    address urmSwapper,
    address urmOracle,
    address urmUsdcPool,
    uint256 nftId
  ) {
    URM = IUrm(urm);
    URM_SWAPPER = IUrmSwapper(urmSwapper);
    URM_ORACLE = IUrmOracle(urmOracle);
    URM_USDC_POOL = IUniswapV3Pool(urmUsdcPool);
    NFT_ID_URM = nftId;

    // factory validation
    require(FACTORY.getPool(urm, address(USDC), URM_USDC_FEE) == urmUsdcPool, "nft");

    // validate NFT has URM/USDC tokens with correct fee
    (, , address t0p, address t1p, uint24 feep, , , , , , , ) = POSITION_MANAGER.positions(nftId);
    require((t0p == urm && t1p == address(USDC)) || (t0p == address(USDC) && t1p == urm), "nft");
    require(feep == URM_USDC_FEE, "nft");

    // approve swapper for all tokens it may need
    USDC.approve(address(URM_SWAPPER), type(uint256).max);
    RAGE.approve(address(URM_SWAPPER), type(uint256).max);
    HESTIA.approve(address(URM_SWAPPER), type(uint256).max);
    CIRCLE.approve(address(URM_SWAPPER), type(uint256).max);
    IERC20(urm).approve(address(URM_SWAPPER), type(uint256).max);

    // approve position manager for liquidity operations
    USDC.approve(address(POSITION_MANAGER), type(uint256).max);
    IERC20(urm).approve(address(POSITION_MANAGER), type(uint256).max);

    // approve rage depot to pull RAGE for selfIncreaseAttribution
    RAGE.approve(address(RAGE_DEPOT), type(uint256).max);

    // remember token 0 for each pool
    STATE.urmUsdcPoolToken0 = IUniswapV3Pool(urmUsdcPool).token0();
    RAGE_USDC_POOL_TOKEN0 = RAGE_USDC_POOL.token0();

    // set default config
    CONFIG = UrmStructs.FortressConfig({
      assetsValuePercent: 75,
      ragePoolPercent: 50,
      twap: 120,
      slippage: 500,
      abovePegThreshold: 1_002_500,
      belowPegThreshold: 999_000,
      belowPegThreshold2: 995_000,
      abovePegDelay: 2 minutes,
      belowPegDelay: 2 minutes,
      abovePegBuy: 50,
      pegDefenseTarget: 0,
      requestSupplyPercent: 10,
      requestSupplyMin: REQUEST_SUPPLY_MARGIN,
      burnSupplyMin: REQUEST_SUPPLY_MARGIN * 2,
      syncTowers: true,
      collectFeesDelay: 7 days,
      liquidityIncrease: true
    });
  }

  // withdrawToken
  // URM, HESTIA and CIRCLE are protocol-managed and cannot be withdrawn
  function withdrawToken(address tokenAdr) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(tokenAdr != address(URM) && tokenAdr != address(HESTIA) && tokenAdr != address(CIRCLE), "conf");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "bal");
    require(token.transfer(RCE.getMultisig(), balance), "xfer");
  }

  // addTower
  // proposes or confirms adding a tower at a given slot (1–9); requires both owners
  function addTower(address towerAddr, uint8 slot) external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(!STATE.fortressFinal, "final");
    STATE.fortressFinalProposer = address(0);
    require(slot >= 1 && slot <= 9, "conf");
    require(towerAddr != address(0), "addr");

    bool matches = STATE.pendingTowerActive
      && STATE.pendingTowerSlot == slot
      && STATE.pendingTower == towerAddr
      && STATE.pendingTowerIsAdd
      && STATE.ownerProposerTower != msg.sender;

    if (matches) {
      require(getTowerSlot(slot) == address(0), "conf");
      setTowerSlot(slot, towerAddr);
      FORTRESS_TOWERS[towerAddr].towerAddr = towerAddr;
      FORTRESS_TOWERS[towerAddr].slot = slot;
      FORTRESS_TOWERS[towerAddr].dateAdd = block.timestamp;
      STATE.pendingTowerActive = false;
      STATE.pendingTower = address(0);
      STATE.ownerProposerTower = address(0);
      STATE.pendingTowerSlot = 0;
      STATE.pendingTowerIsAdd = false;
      emit TowerSet(towerAddr, slot);
    } else {
      try IUrmFortressTower(towerAddr).fortressData() returns (uint256, uint256, uint256, uint256, uint256) {}
      catch { revert("interface"); }

      require(getTowerSlot(slot) == address(0), "conf");

      STATE.pendingTower = towerAddr;
      STATE.ownerProposerTower = msg.sender;
      STATE.pendingTowerActive = true;
      STATE.pendingTowerSlot = slot;
      STATE.pendingTowerIsAdd = true;
    }
  }

  // removeTower
  // proposes or confirms clearing the slot that holds towerAddr; self-resolves slot by scanning all slots
  function removeTower(address towerAddr) external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(!STATE.fortressFinal, "final");
    STATE.fortressFinalProposer = address(0);
    require(towerAddr != address(0), "addr");

    bool matches = STATE.pendingTowerActive
      && STATE.pendingTower == towerAddr
      && !STATE.pendingTowerIsAdd
      && STATE.ownerProposerTower != msg.sender;

    if (matches) {
      uint8 slot = STATE.pendingTowerSlot;
      require(FORTRESS_TOWERS[towerAddr].recipientPercent == 0, "conf");
      require(FORTRESS_TOWERS[towerAddr].status == TOWER_DISABLED, "conf");
      setTowerSlot(slot, address(0));
      delete FORTRESS_TOWERS[towerAddr];
      STATE.pendingTowerActive = false;
      STATE.pendingTower = address(0);
      STATE.ownerProposerTower = address(0);
      STATE.pendingTowerSlot = 0;
      STATE.pendingTowerIsAdd = false;
      emit TowerRemoved(towerAddr, slot);
    } else {
      uint8 foundSlot = findTowerSpot(towerAddr);

      STATE.pendingTower = towerAddr;
      STATE.ownerProposerTower = msg.sender;
      STATE.pendingTowerActive = true;
      STATE.pendingTowerSlot = foundSlot;
      STATE.pendingTowerIsAdd = false;
    }
  }

  // setConfigs
  // updates all fortress config parameters; automator only, 1-hour cooldown between calls
  function setConfigs(UrmStructs.FortressConfig calldata newConfig) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(block.timestamp >= STATE.nextConfigTime, "cool");
    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;

    require(newConfig.twap >= 60 && newConfig.twap <= 3600, "conf");
    require(newConfig.slippage <= 2500, "conf");
    require(newConfig.abovePegThreshold >= 1_001_000, "conf");
    require(newConfig.belowPegThreshold <= 999_000, "conf");
    require(newConfig.belowPegThreshold2 < newConfig.belowPegThreshold, "conf");
    require(newConfig.abovePegDelay >= 1 minutes && newConfig.abovePegDelay <= 1 days, "conf");
    require(newConfig.belowPegDelay >= 1 minutes && newConfig.belowPegDelay <= 1 days, "conf");
    require(newConfig.abovePegBuy <= 100, "conf");
    require(newConfig.pegDefenseTarget <= 2, "conf");
    require(newConfig.requestSupplyPercent >= 1 && newConfig.requestSupplyPercent <= 10, "conf");
    require(newConfig.requestSupplyMin == 0 || newConfig.requestSupplyMin <= getUrmBalance() + REQUEST_SUPPLY_MARGIN, "conf");
    require(newConfig.burnSupplyMin == 0 || newConfig.burnSupplyMin > newConfig.requestSupplyMin, "conf");
    require(newConfig.collectFeesDelay <= 365 days, "conf");
    require(newConfig.assetsValuePercent >= 50 && newConfig.assetsValuePercent <= 100, "conf");
    require(newConfig.ragePoolPercent >= 25 && newConfig.ragePoolPercent <= 75, "conf");

    CONFIG = newConfig;
  }

  // setTowersConfigs
  // sets recipientPercent and status for all 9 towers atomically;
  // percents must sum to ≤100; any unallocated share stays in the Fortress; empty slots must have zero status; automator only, 1-hour cooldown
  function setTowersConfigs(UrmStructs.FortressTowerConfig[9] calldata configs) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(block.timestamp >= STATE.nextConfigTime, "cool");
    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;

    address[9] memory towers = getTowersAddr();
    uint256 total;
    for (uint256 i = 0; i < 9; i++) {
      if (towers[i] == address(0)) {
        require(configs[i].recipientPercent == 0, "conf");
        require(configs[i].status == TOWER_DISABLED, "conf");
      } else {
        require(configs[i].status <= TOWER_ENABLED, "conf");
        FORTRESS_TOWERS[towers[i]].recipientPercent = configs[i].recipientPercent;
        FORTRESS_TOWERS[towers[i]].status = configs[i].status;
      }
      total += configs[i].recipientPercent;
    }
    require(total <= 100, "conf");
    emit TowersConfigSet(configs);
  }

  // setFortressFinal
  // permanently blocks addTower and removeTower; the registered tower set is frozen forever
  function setFortressFinal() external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(!STATE.fortressFinal, "final");
    require(!STATE.pendingTowerActive, "conf");

    if (STATE.fortressFinalProposer != address(0) && STATE.fortressFinalProposer != msg.sender) {
      STATE.fortressFinal = true;
      STATE.fortressFinalProposer = address(0);
      emit FortressFinalSet();
    } else {
      STATE.fortressFinalProposer = msg.sender;
    }
  }

  // lockNft
  // transfers a Uniswap V3 LP position NFT into the Fortress
  function lockNft() external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(!STATE.nftLocked, "nft");
    STATE.nftLocked = true;

    POSITION_MANAGER.transferFrom(msg.sender, address(this), NFT_ID_URM);
    emit NftLocked(NFT_ID_URM);
  }

  // pegDefense
  // routes to abovePegDefense or belowPegDefense based on oracle price
  function pegDefense(uint256 defenseSize) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    UrmStructs.FortressPegDefenseOverview memory pdo = pegDefenseOverview(defenseSize);
    require(pdo.pegDefenseValid, "size");
    require(pdo.pegDefenseAvailable, "cool");
    require(pdo.required, "noop");
    STATE.nextPegDefenseTime = block.timestamp + PEG_DEFENSE_INTERVAL;

    if (pdo.requestSupply) requestSupply();
    if (pdo.collectFees) collectFees();
    if (pdo.towerSyncActive) sync(pdo.preSyncRequested, pdo.preSyncUrm);
    if (pdo.liquidityIncrease) nftUsdcUrmIncrease(NFT_ID_URM, getUrmBalance(), getUsdcBalance());

    if (pdo.belowPegDefense) {
      STATE.lastPegDefense = block.timestamp;
      STATE.lastPegDefenseType = 2;
      belowPegDefense(defenseSize);
    }

    // need to recheck balance on abovePegDefense and burn
    else if (pdo.abovePegDefense && getUrmBalance() >= pdo.urmToSell) {
      STATE.lastPegDefense = block.timestamp;
      STATE.lastPegDefenseType = 1;
      abovePegDefense(pdo.urmToSell);
    }

    if (CONFIG.burnSupplyMin > 0 && getUrmBalance() > CONFIG.burnSupplyMin) {
      burnSupply(getUrmBalance() - CONFIG.burnSupplyMin);
    }
  }

  // payFortress
  // pulls URM profit from a registered tower or the automator;
  // URM is distributed to registered towers per recipientPercent; the remainder stays in the Fortress as yield
  function payFortress(uint256 urmAmount) external nonReentrant {
    require(FORTRESS_TOWERS[msg.sender].towerAddr == msg.sender || msg.sender == getAutomator(), "auth");
    require(urmAmount > 0, "amt");
    require(URM.transferFrom(msg.sender, address(this), urmAmount), "xfer");
    STATE.payFortressUrm += urmAmount;
    if (FORTRESS_TOWERS[msg.sender].towerAddr == msg.sender) {
      FORTRESS_TOWERS[msg.sender].payFortressUrm += urmAmount;
    }
    payFortressUrm(urmAmount, msg.sender);
    
    emit FortressPaid(urmAmount);
  }

  // getState
  // returns a direct snapshot of fortress state: prices, balances, NFT position, RAGE depot, config and state values
  // for backing/supply breakdown call overview(); for registered tower details call towersOverview()
  function getState() external view returns (UrmStructs.FortressState memory) {
    (uint256 urm1, uint256 usdc1) = getUrmLiquidity(NFT_ID_URM);
    (uint256 hestiaBalance, uint256 circleBalance, uint256 underlyingAssetsValue) = getUnderlyingAssets();
    (uint256 rageDepotBalance, uint256 rageDepotValue) = getRageDepot();
    (address owner1, address owner2) = getOwners();

    return UrmStructs.FortressState({
      version: VERSION,
      automator: getAutomator(),
      owner1: owner1,
      owner2: owner2,
      rbpAddress: address(getRageBuyingProtocol()),
      urmUsdcPrice: getUrmPrice(1e18, CONFIG.twap),
      rageUsdcPrice: getRagePrice(1e18, CONFIG.twap),
      urmBalance: getUrmBalance(),
      usdcBalance: getUsdcBalance(),
      hestiaBalance: hestiaBalance,
      circleBalance: circleBalance,
      underlyingAssetsValue: underlyingAssetsValue,
      nftUrm: urm1,
      nftUsdc: usdc1,
      maxDefenseSize: getMaxDefenseSize(),
      ragePoolUsdc: getRageUsdcPool(),
      rageDepotValue: rageDepotValue,
      rageDepotRage: rageDepotBalance,
      config: CONFIG,
      state: STATE
    });
  }

  // towersOverview
  // returns the details of all registered towers, including current requestableUrm for each
  function towersOverview() external view returns (UrmStructs.FortressTower[9] memory records) {
    address[9] memory addrs = getTowersAddr();
    uint256 urmBalance = getUrmBalance();

    for (uint256 i = 0; i < 9; i++) {
      if (addrs[i] == address(0)) continue;
      records[i] = FORTRESS_TOWERS[addrs[i]];
      records[i].requestableUrm = getTowerRequestableUrm(addrs[i], urmBalance);
      records[i].urmBalance = URM.balanceOf(addrs[i]);
    }
  }

  // overview
  // returns pooled USDC, backing capacity, and full URM supply breakdown in a single call
  function overview() public view returns (UrmStructs.FortressOverview memory) {
    uint256 towerUsdcPooled;
    uint256 towerUsdcStored;
    uint256 towerUsdc;
    uint256 towerUrmPooled;
    uint256 towerUrmStored;
    uint256 towerUrmBorrowed;
    uint256 towerUrm;
    address[9] memory towers = getTowersAddr();
    for (uint256 i = 0; i < 9; i++) {
      if (towers[i] != address(0) && FORTRESS_TOWERS[towers[i]].status >= TOWER_BACKING_ONLY) {
        (uint256 usdcP, uint256 usdcS, uint256 urmP, uint256 urmS, uint256 urmB) = IUrmFortressTower(towers[i]).fortressData();
        towerUsdcPooled += usdcP;
        towerUsdcStored += usdcS;
        towerUrmPooled += urmP;
        towerUrmStored += urmS;
        towerUrmBorrowed += urmB;
        towerUsdc += usdcP + usdcS;
        towerUrm += urmP + urmS + urmB;
      }
    }

    uint256 totalUrm = URM.getTotalSupply();
    (uint256 nftUrm, uint256 nftUsdc) = getUrmLiquidity(NFT_ID_URM);

    uint256 totalExcludedUrm = nftUrm + towerUrm + getUrmBalance();
    uint256 totalIncludedUrm = totalUrm > totalExcludedUrm ? totalUrm - totalExcludedUrm : 0;

    uint256 ragePoolUsdc = getRageUsdcPool();
    (, uint256 rageDepotValue) = getRageDepot();
    (, , uint256 underlyingAssetsValue) = getUnderlyingAssets();

    uint256 rageDefense = ((rageDepotValue * CONFIG.assetsValuePercent / 100) < (ragePoolUsdc * CONFIG.ragePoolPercent / 100))
      ? (rageDepotValue * CONFIG.assetsValuePercent / 100)
      : (ragePoolUsdc * CONFIG.ragePoolPercent / 100);
    uint256 underlyingDefense = underlyingAssetsValue * CONFIG.assetsValuePercent / 100;
    uint256 softDefense = rageDefense + underlyingDefense;

    uint256 counterDefense = STATE.defenseCounter > 0 ? uint256(STATE.defenseCounter) : 0;
    int256 softDefenseSurplus = int256(softDefense) - int256(counterDefense);

    int256 totalDefense = int256(towerUsdc + nftUsdc) + int256(softDefense);
    int256 totalDefenseSurplus = totalDefense - int256(totalIncludedUrm / 1e12);
    uint256 backableUrm = totalDefenseSurplus > 0 ? (uint256(totalDefenseSurplus) * 1e12) : 0;

    return UrmStructs.FortressOverview({
      towerUsdcPooled: towerUsdcPooled,
      towerUsdcStored: towerUsdcStored,
      towerUsdc: towerUsdc,
      towerUrmPooled: towerUrmPooled,
      towerUrmStored: towerUrmStored,
      towerUrmBorrowed: towerUrmBorrowed,
      towerUrm: towerUrm,
      totalUsdcPooled: nftUsdc + towerUsdcPooled,
      totalUrmPooled: nftUrm + towerUrmPooled,
      totalUrm: totalUrm,
      totalExcludedUrm: totalExcludedUrm,
      totalIncludedUrm: totalIncludedUrm,
      rageDefense: rageDefense,
      rageDefenseValue: rageDepotValue,
      underlyingDefense: underlyingDefense,
      underlyingDefenseValue: underlyingAssetsValue,
      softDefense: softDefense,
      hardDefense: towerUsdc + nftUsdc,
      counterDefense: counterDefense,
      softDefenseSurplus: softDefenseSurplus,
      totalDefense: totalDefense,
      totalDefenseSurplus: totalDefenseSurplus,
      backableUrm: backableUrm
    });
  }

  // pegDefenseOverview
  // snapshot of which pegDefense branches would execute right now; use for off-chain scheduling
  // abovePegDefense flag may be false even if requestSupply() would mint enough URM to enable it
  function pegDefenseOverview(uint256 defenseSize) public view returns (UrmStructs.FortressPegDefenseOverview memory pdo) {
    pdo.pegDefenseValid = defenseSize <= getMaxDefenseSize();

    uint256 urmBalance = getUrmBalance();
    uint256 urmPrice = getUrmPrice(1e18, CONFIG.twap);
    pdo.urmToSell = defenseSize * 1e12;
    UrmStructs.FortressOverview memory ov = overview();

    pdo.pegDefenseAvailable = block.timestamp >= STATE.nextPegDefenseTime;

    pdo.requestSupply = CONFIG.requestSupplyMin > 0 && block.timestamp >= URM.getNextRequestSupplyTime() && urmBalance < CONFIG.requestSupplyMin;

    pdo.collectFees = CONFIG.collectFeesDelay > 0 && block.timestamp >= STATE.lastCollectFees + CONFIG.collectFeesDelay;

    pdo.towerSyncActive = CONFIG.syncTowers;

    address[9] memory towers = getTowersAddr();
    uint256 availableUrm = urmBalance;
    if (CONFIG.syncTowers) {
      for (uint256 i = 0; i < 9; i++) {
        address towerAddr = towers[i];
        if (towerAddr == address(0)) continue;
        if (FORTRESS_TOWERS[towerAddr].status < TOWER_ENABLED) continue;

        uint256 requestableUrm = getTowerRequestableUrm(towerAddr, availableUrm);
        (bool syncRequested, uint256 urmRequested) = IUrmFortressTower(towerAddr).fortressPreSync(requestableUrm);
        pdo.preSyncRequested[i] = syncRequested;
        // urmRequested is only honored when syncRequested is true; a URM request without sync is ignored
        if (syncRequested) {
          pdo.preSyncUrm[i] = urmRequested;
          if (urmRequested > 0 && urmRequested <= requestableUrm) {
            availableUrm -= urmRequested;
          }
          pdo.towerSyncRequested = true;
        }
      }
    }

    if (urmPrice > CONFIG.abovePegThreshold) {
      pdo.liquidityIncrease = CONFIG.liquidityIncrease && getUsdcBalance() >= LIQUIDITY_INCREASE_USDC_MIN;

      bool abovePegCooled = STATE.lastPegDefenseType != 1 || block.timestamp >= STATE.lastPegDefense + CONFIG.abovePegDelay;

      pdo.abovePegDefense = defenseSize > 0 && abovePegCooled && pdo.urmToSell <= ov.backableUrm && urmBalance >= pdo.urmToSell;

    } else if ((urmPrice < CONFIG.belowPegThreshold && STATE.defenseCounter >= int256(defenseSize)) || urmPrice < CONFIG.belowPegThreshold2) {
      bool belowPegCooled = STATE.lastPegDefenseType != 2 || block.timestamp >= STATE.lastPegDefense + CONFIG.belowPegDelay;

      pdo.belowPegDefenseEnoughRage = ov.rageDefenseValue >= defenseSize;
      pdo.belowPegDefenseEnoughUnderlying = ov.underlyingDefenseValue >= defenseSize;
      bool hasEnough = pdo.belowPegDefenseEnoughRage || pdo.belowPegDefenseEnoughUnderlying;

      pdo.belowPegDefense = defenseSize > 0 && belowPegCooled && hasEnough;
    }

    pdo.burnSupply = CONFIG.burnSupplyMin > 0 && urmBalance > CONFIG.burnSupplyMin;

    pdo.required = pdo.requestSupply || pdo.collectFees || pdo.towerSyncRequested || pdo.liquidityIncrease || pdo.abovePegDefense || pdo.belowPegDefense || pdo.burnSupply;
  }

  // sync
  // distributes URM and triggers fortressSync on each enabled tower slot using pre-computed pegDefenseOverview results
  function sync(bool[9] memory syncRequested, uint256[9] memory urmRequested) internal {
    address[9] memory towers = getTowersAddr();

    for (uint256 i = 0; i < 9; i++) {
      if (towers[i] == address(0)) continue;
      if (FORTRESS_TOWERS[towers[i]].status < TOWER_ENABLED) continue;

      uint256 requestable = getTowerRequestableUrm(towers[i], getUrmBalance());
      bool doSync = syncRequested[i];
      uint256 wanted = urmRequested[i];
      require(wanted == 0 || wanted <= requestable, "wanted");

      if (doSync) {
        if (wanted > 0) {
          URM.transfer(towers[i], wanted);

          FORTRESS_TOWERS[towers[i]].lastRequest = block.timestamp;
          FORTRESS_TOWERS[towers[i]].lastAmount = wanted;
          FORTRESS_TOWERS[towers[i]].totalCount += 1;
          FORTRESS_TOWERS[towers[i]].totalUrm += wanted;

          emit UrmRequested(towers[i], requestable, wanted);
        }

        IUrmFortressTower(towers[i]).fortressSync();
      }
    }
  }

  // burnSupply
  // burns URM from the Fortress balance; permanently reduces circulating supply
  function burnSupply(uint256 amount) internal {
    require(amount > 0, "amt");
    URM.burn(amount);
    STATE.amountUrmBurned += amount;
    STATE.lastBurnSupply = block.timestamp;

    emit SupplyBurned(amount);
  }

  // requestSupply
  // mints CONFIG.requestSupplyPercent% of URM supply; cap enforced by the URM contract
  function requestSupply() internal {
    uint256 minted = URM.requestSupply(CONFIG.requestSupplyPercent);

    STATE.amountUrmMinted += minted;
    STATE.lastRequestSupply = block.timestamp;
    emit SupplyRequested(CONFIG.requestSupplyPercent, minted);
  }

  // nftUsdcUrmIncrease
  // core liquidity-add mechanics for the URM/USDC LP position
  function nftUsdcUrmIncrease(uint256 nftId, uint256 maxUrm, uint256 maxUsdc) internal returns (uint256 urmIncrease, uint256 usdcIncrease) {
    bool urmIsToken0 = STATE.urmUsdcPoolToken0 == address(URM);

    (, , , , , int24 tickLower, int24 tickUpper, , , , , ) = POSITION_MANAGER.positions(nftId);
    (uint160 sqrtPriceX96, , , , , , ) = URM_USDC_POOL.slot0();
    uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
    uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

    uint256 amount0Available = urmIsToken0 ? maxUrm : maxUsdc;
    uint256 amount1Available = urmIsToken0 ? maxUsdc : maxUrm;

    uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
      sqrtPriceX96, sqrtRatioAX96, sqrtRatioBX96, amount0Available, amount1Available
    );
    require(liquidity > 0, "bal");

    (uint256 amount0Desired, uint256 amount1Desired) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96, sqrtRatioAX96, sqrtRatioBX96, liquidity
    );

    uint256 amount0Min = CONFIG.slippage > 0 ? (amount0Desired * (BPS - CONFIG.slippage)) / BPS : 0;
    uint256 amount1Min = CONFIG.slippage > 0 ? (amount1Desired * (BPS - CONFIG.slippage)) / BPS : 0;

    (, uint256 amount0Added, uint256 amount1Added) = POSITION_MANAGER.increaseLiquidity(
      INonfungiblePositionManager.IncreaseLiquidityParams({
        tokenId: nftId,
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

  // payFortressUrm
  // distributes URM to registered towers per their recipientPercent; any unallocated share stays in the Fortress
  function payFortressUrm(uint256 urmAmount, address excludeTower) internal {
    address[9] memory towers = getTowersAddr();
    uint256 sent;
    for (uint256 i = 0; i < 9; i++) {
      if (towers[i] != address(0) && towers[i] != excludeTower) {
        uint256 share = (urmAmount * FORTRESS_TOWERS[towers[i]].recipientPercent) / PCT;
        if (share > 0) {
          URM.transfer(towers[i], share);
          sent += share;
          FORTRESS_TOWERS[towers[i]].recipientUrm += share;
        }
      }
    }

    STATE.recipientUrm += sent;
    STATE.yieldUrm += urmAmount - sent;
  }

  // collectFees
  // claims accrued swap fees from the URM/USDC NFT position, swaps USDC fees to URM, and routes via payFortressUrm
  function collectFees() internal {
    STATE.lastCollectFees = block.timestamp;

    bool urmIsToken0Usdc = STATE.urmUsdcPoolToken0 == address(URM);
    uint256 totalUrm;
    uint256 totalUsdc;

    // collect NFT_ID_URM
    (uint256 a0, uint256 a1) = POSITION_MANAGER.collect(
      INonfungiblePositionManager.CollectParams({
        tokenId: NFT_ID_URM,
        recipient: address(this),
        amount0Max: type(uint128).max,
        amount1Max: type(uint128).max
      })
    );
    totalUrm += urmIsToken0Usdc ? a0 : a1;
    totalUsdc += urmIsToken0Usdc ? a1 : a0;

    // swap USDC fees to URM
    if (totalUsdc > 0) {
      totalUrm += URM_SWAPPER.swapUsdcToUrm(totalUsdc, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
    }

    if (totalUrm > 0) {
      STATE.nftFeesUrm += totalUrm;
      payFortressUrm(totalUrm, address(0));
      emit FortressPaid(totalUrm);
    }
  }

  // belowPegDefense
  // buys URM using RAGE from RageDepot or Fortress underlying assets, per pegDefenseTarget routing
  function belowPegDefense(uint256 defenseSize) internal {
    (, uint256 rageDepotValue) = getRageDepot();
    bool hasRage = rageDepotValue >= defenseSize;

    (uint256 hestiaBalance, uint256 circleBalance, uint256 underlyingAssetsValue) = getUnderlyingAssets();
    bool hasUnderlying = underlyingAssetsValue >= defenseSize;

    require(hasRage || hasUnderlying, "bal");

    uint256 ragePriceUsdc = getRagePrice(1e18, CONFIG.twap);

    bool sellRage;
    if (CONFIG.pegDefenseTarget == 1) {
      sellRage = hasRage;
    } else if (CONFIG.pegDefenseTarget == 2) {
      sellRage = !hasUnderlying;
    } else {
      IRageBuyingProtocol rbp = getRageBuyingProtocol();
      sellRage = (hasRage && hasUnderlying) ? ragePriceUsdc > rbp.getFmv() : hasRage;
    }

    uint256 urmReceived;
    uint256 rageToSell;

    if (sellRage) {
      rageToSell = (defenseSize * 1e18) / ragePriceUsdc;
      RAGE_DEPOT.requestTransfer(address(this), rageToSell);
      urmReceived = URM_SWAPPER.swapRageToUrm(rageToSell, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
      STATE.totalRageSold += rageToSell;
    } else {
      (uint256 hestiaSold, uint256 circleSold, uint256 urmOut) = URM_SWAPPER.swapUnderlyingAssetsToUrm(hestiaBalance, circleBalance, defenseSize, CONFIG.slippage, CONFIG.twap, block.timestamp + MAX_DEADLINE_DURATION);
      urmReceived = urmOut;
      STATE.totalHestiaSold += hestiaSold;
      STATE.totalCircleSold += circleSold;
    }

    STATE.defenseCounter -= int256(defenseSize);
    STATE.urmBoughtBelowPeg += urmReceived;

    emit BelowPegDefenseExecuted(sellRage, rageToSell, urmReceived);
  }

  // abovePegDefense
  // sells urmToSell URM to USDC, adds LP, routes buy leg to RAGE or underlying assets per pegDefenseTarget
  function abovePegDefense(uint256 urmToSell) internal {
    uint256 usdcReceived = URM_SWAPPER.swapUrmToUsdc(urmToSell, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);

    uint256 usdcForBuy = (usdcReceived * CONFIG.abovePegBuy) / PCT;
    uint256 usdcForLP = usdcReceived - usdcForBuy;

    // liquidity increase
    if (usdcForLP > 0) {
      nftUsdcUrmIncrease(NFT_ID_URM, getUrmBalance(), usdcForLP);
    }

    // buy rage or underlying assets
    if (usdcForBuy > 0) {
      bool buyRage;
      if (CONFIG.pegDefenseTarget == 1) {
        buyRage = true;
      } else if (CONFIG.pegDefenseTarget == 2) {
        buyRage = false;
      } else {
        IRageBuyingProtocol rbp = getRageBuyingProtocol();
        buyRage = getRagePrice(1e18, CONFIG.twap) < rbp.getFmv();
      }

      if (buyRage) {
        uint256 rageReceived = URM_SWAPPER.swapUsdcToRage(usdcForBuy, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
        RAGE_DEPOT.selfIncreaseAttribution(rageReceived);
        STATE.totalRageBuy += rageReceived;
      } else {
        (uint256 hestiaReceived, uint256 circleReceived) = URM_SWAPPER.swapUsdcToUnderlyingAssets(usdcForBuy, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
        STATE.totalHestiaBuy += hestiaReceived;
        STATE.totalCircleBuy += circleReceived;
      }

      STATE.defenseCounter += int256(usdcForBuy);
    }

    STATE.urmSoldAbovePeg += urmToSell;

    emit AbovePegDefenseExecuted(urmToSell, usdcReceived, usdcForLP, usdcForBuy);
  }

  // getTowersAddr
  // returns the addresses of all 9 registered tower slots
  function getTowersAddr() internal view returns (address[9] memory) {
    return [STATE.tower1, STATE.tower2, STATE.tower3, STATE.tower4, STATE.tower5, STATE.tower6, STATE.tower7, STATE.tower8, STATE.tower9];
  }

  // setTowerSlot
  // writes addr into the STATE slot for the given slot (1–9)
  function setTowerSlot(uint8 slot, address addr) internal {
    if      (slot == 1) STATE.tower1 = addr;
    else if (slot == 2) STATE.tower2 = addr;
    else if (slot == 3) STATE.tower3 = addr;
    else if (slot == 4) STATE.tower4 = addr;
    else if (slot == 5) STATE.tower5 = addr;
    else if (slot == 6) STATE.tower6 = addr;
    else if (slot == 7) STATE.tower7 = addr;
    else if (slot == 8) STATE.tower8 = addr;
    else                STATE.tower9 = addr;
  }

  // getTowerSlot
  // reads the STATE slot for the given slot (1–9)
  function getTowerSlot(uint8 slot) internal view returns (address) {
    if      (slot == 1) return STATE.tower1;
    else if (slot == 2) return STATE.tower2;
    else if (slot == 3) return STATE.tower3;
    else if (slot == 4) return STATE.tower4;
    else if (slot == 5) return STATE.tower5;
    else if (slot == 6) return STATE.tower6;
    else if (slot == 7) return STATE.tower7;
    else if (slot == 8) return STATE.tower8;
    else                return STATE.tower9;
  }

  // findTowerSpot
  // returns the slot (1–9) that holds towerAddr; reverts if not found
  function findTowerSpot(address towerAddr) internal view returns (uint8) {
    if      (STATE.tower1 == towerAddr) return 1;
    else if (STATE.tower2 == towerAddr) return 2;
    else if (STATE.tower3 == towerAddr) return 3;
    else if (STATE.tower4 == towerAddr) return 4;
    else if (STATE.tower5 == towerAddr) return 5;
    else if (STATE.tower6 == towerAddr) return 6;
    else if (STATE.tower7 == towerAddr) return 7;
    else if (STATE.tower8 == towerAddr) return 8;
    else if (STATE.tower9 == towerAddr) return 9;
    else revert("notFound");
  }

  // getTowerRequestableUrm
  // returns the max URM the given registered tower can request right now (0 if not TOWER_ENABLED, cooling down, or unregistered)
  function getTowerRequestableUrm(address towerAddr, uint256 urmBalance) internal view returns (uint256) {
    if (towerAddr == address(0)) return 0;
    if (FORTRESS_TOWERS[towerAddr].towerAddr != towerAddr) return 0;
    if (FORTRESS_TOWERS[towerAddr].status < TOWER_ENABLED) return 0;
    if (block.timestamp < FORTRESS_TOWERS[towerAddr].lastRequest + REQUEST_URM_INTERVAL) return 0;
    return urmBalance / REQUEST_URM_DIVISOR;
  }

  // getUrmLiquidity
  // returns URM and USDC amounts held in the given URM/USDC LP position
  function getUrmLiquidity(uint256 nftId) internal view returns (uint256 urm, uint256 usdc) {
    (uint256 amount0, uint256 amount1) = getNftAmounts(nftId, URM_USDC_POOL);
    bool urmIsToken0 = STATE.urmUsdcPoolToken0 == address(URM);
    urm = urmIsToken0 ? amount0 : amount1;
    usdc = urmIsToken0 ? amount1 : amount0;
  }

  // getMaxDefenseSize
  // max per-call defenseSize: a quarter of the URM/USDC position sum (6-dec USDC), capped at MAX_DEFENSE_SIZE
  function getMaxDefenseSize() internal view returns (uint256) {
    (uint256 urm1, uint256 usdc1) = getUrmLiquidity(NFT_ID_URM);
    uint256 maxSize = ((urm1 / 1e12) + usdc1) / 4;
    return maxSize > MAX_DEFENSE_SIZE ? MAX_DEFENSE_SIZE : maxSize;
  }

  // getNftAmounts
  // returns the current token amounts held in a Uniswap V3 LP position
  function getNftAmounts(uint256 nftId, IUniswapV3Pool pool) internal view returns (uint256 amount0, uint256 amount1) {
    require(nftId != 0, "nft");

    (, , , , , int24 tickLower, int24 tickUpper, uint128 liquidity, , , , ) = POSITION_MANAGER.positions(nftId);
    if (liquidity == 0) return (0, 0);

    (uint160 sqrtPriceX96, , , , , , ) = pool.slot0();

    (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96,
      TickMath.getSqrtRatioAtTick(tickLower),
      TickMath.getSqrtRatioAtTick(tickUpper),
      liquidity
    );
  }

  // getUrmBalance
  // returns the URM balance held directly by the Fortress contract
  function getUrmBalance() internal view returns (uint256) {
    return URM.balanceOf(address(this));
  }

  // getUsdcBalance
  // returns the USDC balance held directly by the Fortress contract
  function getUsdcBalance() internal view returns (uint256) {
    return USDC.balanceOf(address(this));
  }

  // getUnderlyingAssets
  // returns HESTIA balance, CIRCLE balance, and their combined USDC value at current TWAP (18 dec, 18 dec, 6 dec)
  function getUnderlyingAssets() internal view returns (uint256 hestiaBalance, uint256 circleBalance, uint256 underlyingAssetsValue) {
    hestiaBalance = HESTIA.balanceOf(address(this));
    circleBalance = CIRCLE.balanceOf(address(this));
    // price each leg only when held — the oracle reverts on a zero-amount quote
    uint256 hestiaValue = hestiaBalance > 0 ? URM_ORACLE.getHestiaTwapUsdcPrice(hestiaBalance, CONFIG.twap) : 0;
    uint256 circleValue = circleBalance > 0 ? URM_ORACLE.getCircleTwapUsdcPrice(circleBalance, CONFIG.twap) : 0;
    underlyingAssetsValue = hestiaValue + circleValue;
  }

  // getRageDepot
  // returns available RAGE in RageDepot and its USDC value at current TWAP (18 dec, 6 dec)
  function getRageDepot() internal view returns (uint256 rageDepotBalance, uint256 rageDepotValue) {
    rageDepotBalance = RAGE_DEPOT.getAvailableFor(address(this));
    rageDepotValue = rageDepotBalance > 0 ? getRagePrice(rageDepotBalance, CONFIG.twap) : 0;
  }

  // getRageUsdcPool
  // returns the USDC amount held in the ecosystem's RAGE/USDC LP position
  function getRageUsdcPool() internal view returns (uint256) {
    (uint256 amount0, uint256 amount1) = getNftAmounts(NFT_ID_RAGE, RAGE_USDC_POOL);
    return RAGE_USDC_POOL_TOKEN0 == address(RAGE) ? amount1 : amount0;
  }

  // getUrmPrice
  // returns URM TWAP price in USDC (6 dec) per 1e18 URM using the given twap interval; reverts if price is zero
  function getUrmPrice(uint256 quantity, uint32 twap) internal view returns (uint256 price) {
    price = URM_ORACLE.getUrmTwapUsdcPrice(quantity, twap);
    require(price > 0, "price");
  }

  // getRagePrice
  // returns RAGE TWAP price in USDC (6 dec) for the given quantity of RAGE using the given twap interval; reverts if price is zero
  function getRagePrice(uint256 quantity, uint32 twap) internal view returns (uint256 price) {
    price = RAGE_ORACLE.getRageTwapUsdcPrice(quantity, twap);
    require(price > 0, "price");
  }

  // getAutomator
  function getAutomator() internal view returns (address) {
    return RCE.getAutomator();
  }

  // getOwners
  function getOwners() internal view returns (address, address) {
    return RCE.getOwners();
  }

  // getRageBuyingProtocol
  function getRageBuyingProtocol() internal view returns (IRageBuyingProtocol) {
    return IRageBuyingProtocol(RCE.getRageBuyingProtocol());
  }
}
