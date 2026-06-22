// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

library RageStructs {

  // OtcConfig: configurable parameters for the OTC contract, adjustable by the automator
  struct OtcConfig {
    bool active;              // whether the OTC contract is accepting trades, any change to active resets the currentBonus to minBonus
    bool allowHestia;         // whether HESTIA is accepted as input token
    bool allowCircle;         // whether CIRCLE is accepted as input token
    uint256 allowUsdcMinBonus; // minimum bonus % required to allow USDC (0 = always allowed, >bonusMax = disabled)
    uint256 percentMultisig;  // percentage of input tokens sent to multisig (0-100, whole percents)
    uint256 buyType;          // which asset to buy when input is USDC: 1 = HESTIA, 2 = CIRCLE
    uint256 bonusInterval;    // time interval for the bonus to automatically increment by 1 (min 1 hour, max 1 day, default 12 hours)
    uint256 bonusMin;         // minimum amount of bonus in percent (min 0, max 5, default 0)
    uint256 bonusMax;         // maximum amount of bonus in percent (min 10, max 50, default 25)
    uint256 minUsdcValue;     // minimum USDC equivalent value required for a trade (6 decimals, e.g. 10e6 = $10)
    uint256 slippage;         // max slippage for pool swaps in basis points (0-2500, e.g. 500 = 5%)
    uint32 twap;              // TWAP duration in seconds for oracle price calculations (1-3600)
  }

  // OtcState: internal state tracking for the OTC contract
  struct OtcState {
    uint256 txCount;          // total number of OTC trades executed
    uint256 txHestiaCount;    // number of OTC trades with HESTIA as input
    uint256 txCircleCount;    // number of OTC trades with CIRCLE as input
    uint256 txUsdcCount;      // number of OTC trades with USDC as input
    uint256 inputValue;       // cumulative USDC value of all input tokens across all trades
    uint256 inputValueForMultisig;  // cumulative USDC value of input portions sent to multisig
    uint256 inputValueForBacking;   // cumulative USDC value of input portions converted to pTokens for backing
    uint256 hestiaAmount;     // cumulative HESTIA tokens received as input
    uint256 circleAmount;     // cumulative CIRCLE tokens received as input
    uint256 usdcAmount;       // cumulative USDC tokens received as input
    uint256 rageOutputAmount; // cumulative RAGE tokens sent to users
    uint256 rageOutputValue;  // cumulative USDC value of all RAGE tokens sent to users
    uint256 nextConfigTime;   // earliest timestamp when config can be changed again
  }

  // OtcGetState: complete read-only snapshot of the OTC contract returned by getState()
  struct OtcGetState {
    uint256 version;          // contract version identifier
    address rageChaosEngine;  // address of the RageChaosEngine contract
    address rageSwapper;      // address of the RageSwapper contract used for token swaps
    address rageOracle;       // address of the RageOracle contract used for price lookups
    address multisig;         // multisig wallet that receives the percentMultisig portion of input
    address automator;        // current automator address with config privileges
    uint256 rageBalance;      // RAGE token balance held by this contract, available for OTC trades
    bool active;              // True if contract active config is true, and if rage balance > 1 token
    uint256 minHestia;        // Minimum Hestia amount for the investor to submit
    uint256 maxHestia;        // Maximum Hestia amount for the investor to submit (takes into account rageBalance value)
    uint256 minCircle;        // Minimum Circle amount for the investor to submit
    uint256 maxCircle;        // Maximum Circle amount for the investor to submit (takes into account rageBalance value)
    uint256 minUsdc;          // Minimum USDC amount for the investor to submit (is equal to config minUsdcValue)
    uint256 maxUsdc;          // Maximum USDC amount for the investor to submit (takes into account rageBalance value)
    uint256 ragePrice;        // Price of 1 Rage token
    uint256 hestiaPrice;      // Price of 1 Hestia token
    uint256 circlePrice;      // Price of 1 Circle token
    uint256 bonusCurrent;     // Current amount of the bonus in percent
    uint256 bonusNextIncrement; // Timestamp of the next bonus increment
    uint256 bonusLastReset;     // Timestamp of the last bonus reset
    RageStructs.OtcOverview lastTx; // last transaction
    RageStructs.OtcState state;   // current internal state
    RageStructs.OtcConfig config; // current configuration
  }

  // OtcOverview: preview of an OTC trade returned by otcOverview(), used by both frontend and otc()
  struct OtcOverview {
    uint256 timestamp;        // timestamp of the transaction
    address wallet;           // wallet who initiated the transaction
    bool canOtc;              // true if all conditions are met for the trade to execute
    bool userBalance;         // true if the wallet holds enough of the input token
    bool contractBalance;     // true if the contract holds enough RAGE for the output
    uint256 inputAmount;      // amount of input tokens the user is sending
    uint256 inputType;        // input token type: 1 = HESTIA, 2 = CIRCLE, 3 = USDC
    uint256 inputValue;       // usdc value of input token amount
    uint256 outputAmount;     // total RAGE tokens the user will receive (base + bonus)
    uint256 outputBonus;      // portion of outputAmount that comes from the bonus
    uint256 outputValue;      // usdc value of output rage amount
    uint256 inputForMultisig; // portion of inputAmount sent to multisig
    uint256 inputValueForMultisig;  // usdc value of the input portion sent to multisig
    uint256 inputForBacking;  // portion of inputAmount converted to pTokens and sent to RBP as backing
    uint256 inputValueForBacking;   // usdc value of the input portion converted to pTokens for backing  
    uint256 bonus;            // bonus percentage of extra RAGE value given to the user (whole percents)
    uint256 percentMultisig;  // percentage of input tokens sent to multisig (0-100, whole percents)
    uint256 rageBalance;      // current rage balance in the contract
  }

  // TreasuryContract: per-caller attribution snapshot
  struct TreasuryContract {
    address wallet;           // registered caller contract address
    uint256 attributed;       // total rage attributed to this caller
    uint256 transferred;      // total rage already transferred by this caller
    uint256 available;        // rage still available (attributed - transferred)
    uint256 transferCount;    // number of times tokens where transfered for this caller
  }

  // Treasury state for the contract
  struct TreasuryState {
    uint256 totalAttributed;  // sum of all attributed amounts
    uint256 transferCount;    // number of transfer tokens transactions for all contract
    uint256 transferTotal;    // number of rage tokens transfered for all contract
    address addNominee1;      // address nominated by owner1 for add
    address addNominee2;      // address nominated by owner2 for add
    address removeNominee1;   // address nominated by owner1 for remove
    address removeNominee2;   // address nominated by owner2 for remove
  }

  // TreasuryGetState: complete read-only snapshot of the Treasury contract
  struct TreasuryGetState {
    uint256 version;          // contract version identifier
    address automator;        // current automator address
    address owner1;           // RCE owner1
    address owner2;           // RCE owner2
    TreasuryState state;      // full treasury state
    address[] contracts;      // array of all registered contracts addresses
    uint256 contractCount;    // number of contracts currently active within the treasury contract
    uint256 rageBalance;      // actual RAGE balance held by the contract
    uint256 totalTransferred; // sum of all transferred amounts across callers
    uint256 totalAvailable;   // totalAttributed - totalTransferred
    uint256 unallocated;      // rage in contract not attributed to any caller
  }
}