// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

library RageStructs {

  // OtcConfig: configurable parameters for the OTC contract, adjustable by the automator
  struct OtcConfig {
    bool active;              // whether the OTC contract is accepting trades
    bool allowHestia;         // whether HESTIA is accepted as input token
    bool allowCircle;         // whether CIRCLE is accepted as input token
    bool allowUsdc;           // whether USDC is accepted as input token
    uint256 percentMultisig;  // percentage of input tokens sent to multisig (0-100, whole percents)
    uint256 buyType;          // which asset to buy when input is USDC: 1 = HESTIA, 2 = CIRCLE
    uint256 bonus;            // bonus percentage of extra RAGE value given to the user (0-25, whole percents)
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
    RageStructs.OtcOverview lastTx; // last transaction
    RageStructs.OtcState state;   // current internal state
    RageStructs.OtcConfig config; // current configuration
  }

  // OtcOverview: preview of an OTC trade returned by otcOverview(), used by both frontend and otc()
  struct OtcOverview {
    uint256 timestamp;        // timestamp of the transaction
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
    uint256 bonus;            // bonus percentage of extra RAGE value given to the user (0-25, whole percents)
    uint256 percentMultisig;  // percentage of input tokens sent to multisig (0-100, whole percents)
  }
}