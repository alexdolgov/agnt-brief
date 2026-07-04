// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

library UrmStructs {
  struct UrmState {
    uint256 version; // contract version
    address owner; // URM Fortress address
    address pendingUrmFortress; // proposed next URM Fortress owner awaiting second-owner confirm (0 = none)
    address pendingUrmFortressProposer; // RCE owner who proposed pendingUrmFortress (0 = none)
    address deployer; // original deployer address
    bool locked; // true once lockUrmFortress has been called
    uint256 supply; // current circulating supply (excl. 0/dead address)
    uint256 initial; // amount minted on deployment
    uint256 mint; // cumulative additional minted supply
    uint256 burn; // cumulative burned supply (via burn())
    uint256 lastRequestSupply; // timestamp of last requestSupply call
  }

  struct OraclePrices {
    uint256 urmUsdcPrice; // URM price in USDC (6 dec)
    uint256 wethTwapUsdcPrice; // WETH price in USDC (6 dec)
    uint256 hestiaTwapUsdcPrice; // HESTIA price in USDC (6 dec)
    uint256 circleTwapUsdcPrice; // CIRCLE price in USDC (6 dec)
    uint256 rageTwapUsdcPrice; // RAGE price in USDC (6 dec)
  }

  struct FortressConfig {
    uint256 assetsValuePercent; // % of rageDepot/underlying value counted in soft defense (50–100; default 75)
    uint256 ragePoolPercent; // % of ragePool USDC counted in soft defense (25–75; default 50)
    uint32 twap; // TWAP interval for peg defense triggers in seconds (60–3600; default 180)
    uint256 slippage; // max slippage on swaps in BPS (0–2500; default 500)
    uint256 abovePegThreshold; // URM price in USDC (6 dec) that triggers above-peg defense (≥1_001_000; default 1_005_000)
    uint256 belowPegThreshold; // URM price (6 dec) for counter defense — triggers only when defenseCounter > 0 (≤999_000; default 999_000)
    uint256 belowPegThreshold2; // URM price (6 dec) for hard defense — triggers unconditionally (<belowPegThreshold; default 995_000)
    uint256 abovePegDelay; // min seconds between above-peg defense triggers (60–86400; default 120)
    uint256 belowPegDelay; // min seconds between below-peg defense triggers (60–86400; default 120)
    uint256 abovePegBuy; // % of USDC routed to buy leg when above peg (0–100; 0 sends all to LP; default 50)
    uint256 pegDefenseTarget; // peg defense asset preference (0=oracle routing by RAGE/FMV, 1=prefer RAGE, 2=prefer Underlying); falls back to the other asset if preferred is unavailable; default 0
    uint256 requestSupplyPercent; // % of URM supply to mint per requestSupply call (1–10; default 10)
    uint256 requestSupplyMin; // minimum URM balance before pegDefense calls requestSupply (18 dec; 0 = off; default 50_000e18)
    uint256 burnSupplyMin; // minimum URM balance before burning excess in pegDefense (18 dec; 0 = off, else must be > requestSupplyMin; default 100_000e18)
    bool syncTowers; // master switch: if true, sync() runs during pegDefense (default true)
    uint256 collectFeesDelay; // min seconds between collectFees calls in pegDefense (0 = off; default 7 days; max 365 days)
    bool liquidityIncrease; // if true, pegDefense adds URM/USDC liquidity to the URM/USDC NFT when USDC balance ≥ LIQUIDITY_INCREASE_USDC_MIN (default true)
  }

  struct FortressStateValue {
    address tower1; // tower slot 1
    address tower2; // tower slot 2
    address tower3; // tower slot 3
    address tower4; // tower slot 4
    address tower5; // tower slot 5
    address tower6; // tower slot 6
    address tower7; // tower slot 7
    address tower8; // tower slot 8
    address tower9; // tower slot 9
    address pendingTower; // pending address awaiting two-owner approval
    address ownerProposerTower; // which owner submitted pendingTower
    bool pendingTowerActive; // true when a two-owner proposal is in flight
    uint8 pendingTowerSlot; // 1–9
    bool pendingTowerIsAdd; // true = add, false = remove
    address fortressFinalProposer; // owner who proposed setFortressFinal (address(0) if no pending proposal)
    bool fortressFinal; // true once both owners confirmed; permanently blocks addTower and removeTower
    address urmUsdcPoolToken0; // cached token0 of URM/USDC pool for swap direction
    bool nftLocked; // true once NFT_ID_URM has been transferred into the Fortress
    uint256 nextConfigTime; // earliest timestamp at which setConfigs or setTowersConfigs can be called again
    uint256 nextPegDefenseTime; // earliest timestamp at which pegDefense can be called again
    int256 defenseCounter; // running USDC delta (6-dec); positive = above-peg buys lead, negative = below-peg sells lead
    uint256 lastPegDefense; // timestamp of last pegDefense that triggered a branch
    uint256 lastPegDefenseType; // 1 = above peg, 2 = below peg
    uint256 lastCollectFees; // timestamp of last collectFees call from pegDefense
    uint256 urmSoldAbovePeg; // cumulative URM sold in above-peg defense (18 dec)
    uint256 totalRageBuy; // cumulative RAGE bought via buy leg in above-peg defense (18 dec)
    uint256 totalHestiaBuy; // cumulative HESTIA received in above-peg defense (18 dec)
    uint256 totalCircleBuy; // cumulative CIRCLE received in above-peg defense (18 dec)
    uint256 urmBoughtBelowPeg; // cumulative URM bought in below-peg defense (18 dec)
    uint256 totalRageSold; // cumulative RAGE sold in below-peg defense (18 dec)
    uint256 totalHestiaSold; // cumulative HESTIA sold in below-peg defense (18 dec)
    uint256 totalCircleSold; // cumulative CIRCLE sold in below-peg defense (18 dec)
    uint256 amountUrmMinted; // cumulative URM minted by Fortress via requestSupply
    uint256 lastRequestSupply; // timestamp of last requestSupply call
    uint256 amountUrmBurned; // cumulative URM burned by Fortress
    uint256 lastBurnSupply; // timestamp of last burnSupply call
    uint256 payFortressUrm; // cumulative URM sent to Fortress via payFortress from all registered towers
    uint256 nftFeesUrm; // cumulative URM collected from all NFT pools via collectFees
    uint256 recipientUrm; // cumulative URM sent to registered towers via payFortressUrm (18 dec)
    uint256 yieldUrm; // cumulative URM kept in Fortress as real yield via payFortressUrm (18 dec)
  }

  struct FortressTowerConfig {
    uint256 recipientPercent; // URM profit share (0–100)
    uint8 status; // 0=disabled, 1=backing only, 2=backing+sync
  }

  struct FortressTower {
    address towerAddr; // registered address (address(0) if removed)
    uint8 slot; // 1–9
    uint256 recipientPercent; // URM profit share for this tower (0–100; set via setTowersConfigs)
    uint8 status; // 0=disabled, 1=backing only (counted in formula), 2=backing+sync (eligible for URM via sync)
    uint256 lastRequest; // timestamp of last requestUrm call
    uint256 lastAmount; // URM amount in last requestUrm call (18 dec)
    uint256 totalCount; // total number of requestUrm calls
    uint256 totalUrm; // cumulative URM requested (18 dec)
    uint256 recipientUrm; // cumulative URM received as a recipient via payFortressUrm (18 dec)
    uint256 payFortressUrm; // cumulative URM this tower has paid into the Fortress via payFortress (18 dec)
    uint256 dateAdd; // timestamp when this tower was registered
    uint256 requestableUrm; // max URM this tower can request right now; only populated by towersOverview() (18 dec)
    uint256 urmBalance; // URM currently held by the tower; only populated by towersOverview() (18 dec)
  }

  struct FortressPegDefenseOverview {
    bool pegDefenseAvailable; // true if the pegDefense cooldown has elapsed (can call pegDefense)
    bool pegDefenseValid; // defenseSize is within the dynamic max (((urm1/1e12)+usdc1)/2); pegDefense reverts if false
    bool requestSupply; // Fortress URM balance below requestSupplyMin and cooldown elapsed
    bool collectFees; // collectFeesDelay has elapsed since last collectFees call
    bool towerSyncActive; // CONFIG.syncTowers master switch is on
    bool towerSyncRequested; // at least one syncEnabled tower is requesting a sync
    bool[9] preSyncRequested; // fortressPreSync syncRequested for each slot (false if slot empty/!syncEnabled)
    uint256[9] preSyncUrm; // fortressPreSync urmRequested for each slot (0 if not applicable)
    uint256 urmToSell; // URM the Fortress will sell in above-peg defense (defenseSize * 1e12)
    bool liquidityIncrease; // above peg and USDC balance meets liquidityIncreaseUsdcMin
    bool abovePegDefense; // above peg, cooled, backed, and Fortress has enough URM to sell
    bool belowPegDefense; // below peg, cooled, and enough RAGE or underlying
    bool belowPegDefenseEnoughRage; // RAGE depot holds enough USDC value for one below-peg defense
    bool belowPegDefenseEnoughUnderlying; // underlying assets hold enough USDC value for one below-peg defense
    bool burnSupply; // URM balance exceeds burnSupplyMin; actual amount recomputed in pegDefense()
    bool required; // true if any action flag is true (excludes pegDefenseAvailable)
  }

  struct FortressOverview {
    uint256 towerUsdcPooled; // USDC pooled by registered backingEnabled towers only (6 dec)
    uint256 towerUsdcStored; // non-liquid USDC held by registered backingEnabled towers (6 dec)
    uint256 towerUsdc; // total USDC held by registered backingEnabled towers (6 dec)
    uint256 towerUrmPooled; // URM pooled by registered backingEnabled towers only (18 dec)
    uint256 towerUrmStored; // URM held (not pooled) by registered backingEnabled towers (18 dec)
    uint256 towerUrmBorrowed; // URM borrowed/outstanding from registered backingEnabled towers (18 dec)
    uint256 towerUrm; // total URM excluded by registered backingEnabled towers (18 dec)
    uint256 totalUsdcPooled; // total USDC pooled: NFT position + all backingEnabled towers (6 dec)
    uint256 totalUrmPooled; // total URM pooled: NFT position + all backingEnabled towers (18 dec)
    uint256 totalUrm; // total URM circulating supply (18 dec)
    uint256 totalExcludedUrm; // URM excluded from backing: nftUrm + towerUrm + Fortress idle balance (18 dec)
    uint256 totalIncludedUrm; // URM the Fortress must back (excl. registered towers, Fortress balance) (18 dec)
    uint256 rageDefense; // RAGE soft-asset contribution: min(rageDepot×assetsValuePercent%, ragePool×ragePoolPercent%) (6 dec)
    uint256 rageDefenseValue; // USDC value of RAGE in RageDepot available to Fortress (6 dec)
    uint256 underlyingDefense; // underlying soft-asset contribution: underlyingAssetsValue×assetsValuePercent% (6 dec)
    uint256 underlyingDefenseValue; // USDC value of HESTIA + CIRCLE held by Fortress at TWAP (6 dec)
    uint256 softDefense; // rageDefense + underlyingDefense: total soft-asset backing (6 dec)
    uint256 hardDefense; // towerUsdc + nftUsdc: raw USDC pool backing, no counter (6 dec)
    uint256 counterDefense; // max(0, STATE.defenseCounter); soft defense committed via above-peg earnings — diagnostic only (6 dec)
    int256 softDefenseSurplus; // softDefense − counterDefense; diagnostic only (6 dec; signed)
    int256 totalDefense; // hardDefense + softDefense (6 dec; signed)
    int256 totalDefenseSurplus; // totalDefense minus URM obligation in USDC; negative = gap (6 dec; signed)
    uint256 backableUrm; // max additional URM issuable while totalDefense still covers all URM (18 dec)
  }

  struct FortressState {
    uint256 version; // contract version
    address automator; // current automator address from RCE
    address owner1; // first owner address from RCE
    address owner2; // second owner address from RCE
    address rbpAddress; // current RageBuyingProtocol address from RCE
    uint256 urmUsdcPrice; // URM price in USDC from UrmOracle (6 dec)
    uint256 rageUsdcPrice; // RAGE price in USDC from RageOracle (6 dec)
    uint256 urmBalance; // URM held directly by the Fortress
    uint256 usdcBalance; // USDC held directly by the Fortress (6 dec)
    uint256 hestiaBalance; // HESTIA held directly by the Fortress (18 dec)
    uint256 circleBalance; // CIRCLE held directly by the Fortress (18 dec)
    uint256 underlyingAssetsValue; // USDC value of HESTIA + CIRCLE at current TWAP (6 dec)
    uint256 nftUrm; // URM in URM/USDC position
    uint256 nftUsdc; // USDC in URM/USDC position
    uint256 maxDefenseSize; // max per-call defenseSize accepted by pegDefense (((nftUrm/1e12)+nftUsdc)/4; 6 dec)
    uint256 ragePoolUsdc; // USDC in the ecosystem's RAGE/USDC LP position
    uint256 rageDepotValue; // USDC value of RAGE available in RageDepot for the Fortress
    uint256 rageDepotRage; // RAGE available in RageDepot for the Fortress (18 dec)
    FortressConfig config; // current config parameters
    FortressStateValue state; // current state values
  }

  // DepotContract: per-caller attribution snapshot
  struct DepotContract {
    address wallet; // registered caller contract address
    uint256 attributed; // total rage attributed to this caller
    uint256 transferred; // total rage already transferred by this caller
    uint256 available; // attributed - transferred (computed in view functions; always 0 in storage)
    uint256 transferCount; // number of times tokens were transferred for this caller
  }

  // Depot state for the contract
  struct DepotState {
    uint256 totalAttributed; // sum of all attributed amounts
    uint256 transferCount; // number of transfer tokens transactions for all contracts
    uint256 transferTotal; // number of rage tokens transferred for all contracts
    address addNominee1; // address nominated by owner1 for add
    address addNominee2; // address nominated by owner2 for add
    address removeNominee1; // address nominated by owner1 for remove
    address removeNominee2; // address nominated by owner2 for remove
  }

  // DepotGetState: complete read-only snapshot of the Depot contract
  struct DepotGetState {
    uint256 version; // contract version identifier
    address automator; // current automator address
    address owner1; // RCE owner1
    address owner2; // RCE owner2
    DepotState state; // full depot state
    address[] contracts; // array of all registered contracts addresses
    uint256 contractCount; // number of contracts currently active within the depot contract
    uint256 rageBalance; // actual RAGE balance held by the contract
    uint256 totalTransferred; // sum of all transferred amounts across callers
    uint256 totalAvailable; // totalAttributed - totalTransferred
    uint256 unallocated; // rage in contract not attributed to any caller
  }
}
