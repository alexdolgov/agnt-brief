// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// shared struct home for Fortress towers (contracts implementing IUrmFortressTower):
// RageOtc (OTC structs) and UrmFlankingTower (Flanking structs)
library TowerStructs {

  // OtcConfig: configurable parameters for the OTC contract, adjustable by the automator
  struct OtcConfig {
    bool active;              // whether the OTC contract is accepting trades
    bool allowHestia;         // whether HESTIA is accepted as input token
    bool allowCircle;         // whether CIRCLE is accepted as input token
    bool payFortress;         // whether the bonus-sized slice of input is swapped to URM and paid to the fortress
    uint256 percentMultisig;  // maximum percentage of input tokens sent to multisig (0-100, whole percents); effective value may be reduced when bonus is high to ensure percentMultisig + bonus never exceeds 100
    uint256 bonusInterval;    // time interval for the bonus to automatically increment by 1 (min 1 hour, max 1 day, default 6 hours)
    uint256 bonusMin;         // minimum amount of bonus in percent (min 0, max 5, default 0)
    uint256 bonusMax;         // maximum amount of bonus in percent (min 10, max 50, default 20)
    uint256 minUsdcValue;     // minimum USDC equivalent value required for a trade (6 decimals, e.g. 10e6 = $10)
    uint256 slippage;         // max slippage for pool swaps in basis points (0-2500, e.g. 500 = 5%)
    uint32 twap;              // TWAP duration in seconds for oracle price calculations (1-3600)
  }

  // OtcState: internal state tracking for the OTC contract
  struct OtcState {
    uint256 txCount;          // total number of OTC trades executed
    uint256 batchTxCount;     // number of OTC trades since last setConfigs call
    uint256 txHestiaCount;    // number of OTC trades with HESTIA as input
    uint256 txCircleCount;    // number of OTC trades with CIRCLE as input
    uint256 txUsdcCount;      // number of OTC trades with USDC as input
    uint256 txUrmCount;       // number of OTC trades with URM as input
    uint256 inputValue;       // cumulative USDC value of all input tokens across all trades
    uint256 inputValueForMultisig;  // cumulative USDC value of input portions sent to multisig
    uint256 inputValueForBacking;   // cumulative USDC value of input portions converted to pTokens for backing
    uint256 inputValueForFortress;  // cumulative USDC value of input portions swapped to URM and paid to the fortress
    uint256 fortressUrmAmount;      // cumulative URM tokens paid to the fortress
    uint256 hestiaAmount;     // cumulative HESTIA tokens received as input
    uint256 circleAmount;     // cumulative CIRCLE tokens received as input
    uint256 usdcAmount;       // cumulative USDC tokens received as input
    uint256 urmAmount;        // cumulative URM tokens received as input
    uint256 rageOutputAmount; // cumulative RAGE tokens sent to users
    uint256 rageOutputValue;  // cumulative USDC value of all RAGE tokens sent to users
    uint256 rageOutputBonus;  // cumulative bonus-only RAGE given to users (subset of rageOutputAmount)
    uint256 nextConfigTime;   // earliest timestamp when config can be changed again
  }

  // OtcGetState: complete read-only snapshot of the OTC contract returned by getState()
  struct OtcGetState {
    uint256 version;          // contract version identifier
    address automator;        // current automator address with config privileges
    uint256 rageBalance;      // RAGE available to this contract in the depot (RAGE_DEPOT.getAvailableFor)
    uint256 rageDepotValue;   // USDC value of the RAGE available in the depot (0 when balance is 0)
    bool active;              // True if contract active config is true, and if rage balance > 1 token
    uint256 minHestia;        // Minimum Hestia amount for the investor to submit
    uint256 maxHestia;        // Maximum Hestia amount for the investor to submit (takes into account rageBalance value)
    uint256 minCircle;        // Minimum Circle amount for the investor to submit
    uint256 maxCircle;        // Maximum Circle amount for the investor to submit (takes into account rageBalance value)
    uint256 minUsdc;          // Minimum USDC amount for the investor to submit (is equal to config minUsdcValue)
    uint256 maxUsdc;          // Maximum USDC amount for the investor to submit (takes into account rageBalance value)
    uint256 minUrm;           // Minimum URM amount for the investor to submit
    uint256 maxUrm;           // Maximum URM amount for the investor to submit (takes into account rageBalance value)
    uint256 buyTarget;        // asset the backing flow would buy right now: 1 = HESTIA, 2 = CIRCLE (the one under its RBP invest target)
    uint256 ragePrice;        // Price of 1 Rage token
    uint256 hestiaPrice;      // Price of 1 Hestia token
    uint256 circlePrice;      // Price of 1 Circle token
    uint256 urmPrice;         // Price of 1 URM token
    uint256 bonusCurrent;     // Current amount of the bonus in percent
    uint256 bonusNextIncrement; // Timestamp of the next bonus increment
    uint256 bonusLastReset;     // Timestamp of the last bonus reset
    TowerStructs.OtcOverview lastTx; // last transaction
    TowerStructs.OtcState state;   // current internal state
    TowerStructs.OtcConfig config; // current configuration
  }

  // OtcOverview: preview of an OTC trade returned by otcOverview(), used by both frontend and otc()
  struct OtcOverview {
    uint256 timestamp;        // timestamp of the transaction
    address wallet;           // wallet who initiated the transaction
    bool canOtc;              // true if all conditions are met for the trade to execute
    bool userBalance;         // true if the wallet holds enough of the input token
    bool contractBalance;     // true if the contract holds enough RAGE for the output
    uint256 inputAmount;      // amount of input tokens the user is sending
    uint256 inputType;        // input token type: 1 = HESTIA, 2 = CIRCLE, 3 = URM, 4 = USDC
    uint256 inputValue;       // usdc value of input token amount
    uint256 minInput;         // minimum input amount for the input token (same calculation as getState min/max)
    uint256 maxInput;         // maximum input amount for the input token (takes into account rageBalance value)
    uint256 outputAmount;     // total RAGE tokens the user will receive (base + bonus)
    uint256 outputBonus;      // portion of outputAmount that comes from the bonus
    uint256 outputValue;      // usdc value of output rage amount
    uint256 inputForMultisig; // portion of inputAmount sent to multisig (swapped to URM first when input is USDC)
    uint256 inputValueForMultisig;  // usdc value of the input portion sent to multisig
    uint256 inputForBacking;  // portion of inputAmount converted to pTokens and sent to RBP as backing
    uint256 inputValueForBacking;   // usdc value of the input portion converted to pTokens for backing
    uint256 inputForFortress; // portion of inputAmount (bonus %) swapped to URM and paid to the fortress
    uint256 inputValueForFortress;  // usdc value of the input portion paid to the fortress
    uint256 bonus;            // bonus percentage of extra RAGE value given to the user (whole percents)
    uint256 percentMultisig;  // percentage of input tokens sent to multisig (0-100, whole percents)
    uint256 rageBalance;      // RAGE available to this contract in the depot at preview time
  }

  // FlankingConfig: configurable parameters for the UrmFlankingTower, adjustable by the automator
  struct FlankingConfig {
    uint256 urmLiquidity;     // target amount of URM (18 dec) that should sit in the sell-side NFT position
    uint256 slippage;         // max slippage for liquidity increase/decrease in basis points (0-2500, e.g. 500 = 5%)
    uint256 collectFeesDelay; // min seconds between fee collections in fortressSync (0 = off; max 365 days)
    uint256 mode;             // liquidity direction: 1 = increase only (top up toward target), 2 = decrease only (trim toward target)
  }

  // FlankingState: internal state tracking for the UrmFlankingTower
  struct FlankingState {
    bool nftLocked;            // true once the sell-side NFT has been transferred into the tower
    bool closed;               // true once closeTower has wound down the position; permanently disables sync
    address urmUsdcPoolToken0; // cached token0 of the URM/USDC pool, for URM vs USDC direction
    uint256 nextConfigTime;    // earliest timestamp when setConfigs can be called again
    uint256 lastSync;          // timestamp of the last fortressSync that touched the position
    uint256 syncCount;         // number of fortressSync calls that increased or decreased liquidity
    uint256 totalUrmIncrease;  // cumulative URM added into the NFT position (18 dec)
    uint256 totalUrmDecrease;  // cumulative URM removed from the position and burned (18 dec)
    uint256 lastCollectFees;   // timestamp of the last fee collection
    uint256 totalUrmFees;      // cumulative URM paid to the Fortress via collectFees (18 dec)
  }

  // FlankingGetState: complete read-only snapshot of the UrmFlankingTower returned by getState()
  struct FlankingGetState {
    uint256 version;          // contract version identifier
    address automator;        // current automator address with config privileges
    uint256 nftId;            // the managed URM/USDC sell-side position id
    uint256 nftUrm;           // URM currently held inside the NFT position (18 dec)
    uint256 nftUsdc;          // USDC currently held inside the NFT position (6 dec)
    bool outOfRange;          // true when the position is single-sided URM (0 USDC); liquidity is only moved in this state
    bool syncNeeded;          // true when the position is at least MIN_SYNC_PERCENT off target (a sync would act)
    uint256 urmBalance;       // URM held directly by the tower, not yet deployed (18 dec)
    uint256 usdcBalance;      // USDC held directly by the tower (6 dec)
    TowerStructs.FlankingState state;   // current internal state
    TowerStructs.FlankingConfig config; // current configuration
  }
}
