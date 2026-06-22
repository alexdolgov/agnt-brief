// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

library RageStructs {
  struct RbpState {
    uint256 version;                   // rbp version
    RageStructs.RbpStateValue state;   // rbp internal state
    RageStructs.RbpConfig config;      // rbp internal configurations
    RageStructs.RbpRecent recent;      // rbp most recent actions
  }

  struct RbpViewState {
    uint256 price;                     // current rage price
    uint256 activeSupply;              // active supply as declared by rce
    uint256 fmv;                       // current rage fmv
    uint256 backingPerShare;           // current rage backing per share
    uint256 activeAssetsUsdcValue;     // Total USDC value of active assets
    uint256 rawHestia;                 // Raw HESTIA balance
    uint256 rawCircle;                 // Raw CIRCLE balance
    uint256 pendingHestia;             // Pending HESTIA
    uint256 pendingCircle;             // Pending CIRCLE
    uint256 bonusHestia;               // Available bonus HESTIA
    uint256 bonusCircle;               // Available bonus CIRCLE
    uint256 activePhestia;             // Active pHESTIA balance
    uint256 activePcircle;             // Active pCIRCLE balance
    uint256 activeHestia;             // Active HESTIA balance
    uint256 activeCircle;             // Active CIRCLE balance
    uint256 investPercentHestia;       // HESTIA investment percentage
    uint256 investPercentCircle;       // CIRCLE investment percentage
    uint256 underlyingHestia;          // HESTIA per RAGE
    uint256 underlyingCircle;          // CIRCLE per RAGE
    uint256 underlyingHestiaValue;     // USDC value of HESTIA per RAGE
    uint256 underlyingCircleValue;     // USDC value of CIRCLE per RAGE
    uint256 underlyingTotalValue;      // Total USDC value per RAGE
    uint256 underlyingHestiaPercent;   // HESTIA percentage
    uint256 underlyingCirclePercent;   // CIRCLE percentage
    uint256 rageFromOnePercentUsdc;    // RAGE received from one percent of active value in USDC
    uint256 hestiaFromOnePercentRage;  // HESTIA received from one percent of Rage active supply
    uint256 circleFromOnePercentRage;  // CIRCLE received from one percent of Rage active supply 
 }

  struct RageState {
    uint256 version;                   // version of the rage contract
    address owner;                     // owner of the rage token
    uint256 supply;                    // current rage supply
    uint256 initial;                   // rage initial supply
    uint256 mint;                      // total minted rage
    uint256 burn;                      // total burned rage
    uint256 mintable;                  // supply that can still be minted
    uint256 lastRequestSupply;         // timestamp of last supply request
  }

  struct RonState {
    uint256 version;                   // version of the rage option contract
    address rce;                       // address of the rce contract
    address rbp;                       // address of the rbp contract
    uint256 supply;                    // total nft supply
    string baseUri;                    // base uri for the nft metadata
    string contractUri;                // uri of the contract metadata json file
  }

  struct RbpStateValue {
    uint256 status;                    // Protocol status (0 = off, 1 = on)
    uint256 nextConfigTime;            // Next allowed configuration update timestamp
    uint256 pendingHestia;             // Amount of HESTIA tokens in pending backing
    uint256 pendingCircle;             // Amount of CIRCLE tokens in pending backing
    uint256 totalOptions;              // Total number of investment options created
    uint256 optionsMint;               // Options converted to RAGE tokens
    uint256 optionsAdp;                // Options minted using Asset Decline Protection
    uint256 optionsAdpValue;           // USDC value of options minted using Asset Decline Protection
    uint256 optionsRefund;             // Options that were refunded
    uint256 optionsRefundValue;        // USDC value of refunded options
    uint256 totalInvest;               // USDC value of invest
    uint256 totalInvestorBonus;        // USDC value of bonus given to investor
    uint256 totalEcosystemBonus;       // USDC value of bonus given to ecosystem
    uint256 totalDebt;                 // Total USDC owed for potential refunds
    uint256 totalClaims;               // Total number of unique claim wallets
    uint256 totalAdpDilution;          // Total USDC value diluted through ADP
    uint256 claimsProcessed;           // Number of claims successfully processed
    uint256 claimsHestia;              // Total HESTIA tokens claimed
    uint256 claimsCircle;              // Total CIRCLE tokens claimed
  }
  
  struct OraclePrices {
    uint256 wethTwapUsdcPrice;         // TWAP price of WETH in USDC
    uint256 hestiaTwapUsdcPrice;       // TWAP price of HESTIA in USDC
    uint256 circleTwapUsdcPrice;       // TWAP price of CIRCLE in USDC
    uint256 hestiaCircleTwapUsdcPrice; // TWAP price of 1 Hestia and 1 Circle in USDC
    uint256 rageTwapUsdcPrice;         // TWAP price of RAGE in USDC
    uint256 hestiaUsdcPriceAfterBondDebond;  // HESTIA price after bond/debond fees
    uint256 circleUsdcPriceAfterBondDebond;  // CIRCLE price after bond/debond fees
    uint256 pHestiaUsdcPriceAfterDebond;     // pHESTIA value in USDC after debonding
    uint256 pCircleUsdcPriceAfterDebond;     // pCIRCLE value in USDC after debonding
    uint256 pHestiaInHestiaAfterDebond;      // HESTIA received per pHESTIA after debond
    uint256 pCircleInCircleAfterDebond;      // CIRCLE received per pCIRCLE after debond
    uint256 pHestiaRequiredForHestia;        // pHESTIA needed to get 1 HESTIA
    uint256 pCircleRequiredForCircle;        // pCIRCLE needed to get 1 CIRCLE
    uint256 pHestiaRequiredForHestiaResult;  // HESTIA received when doing pHestiaRequiredForHestia (should be close to 1)
    uint256 pCircleRequiredForCircleResult;  // CIRCLE received when doing pHestiaRequiredForHestia (should be close to 1)
  }
  
  struct RbpConfig {
    uint256 minInvest; // Adjustable from $1 to $100 (default $10) - determines the minimum amount of USDC to receive to create a position
    uint256 maxInvest; // Adjustable from $1000 to $100000 (default $10000) - determines the maximum amount of USDC to receive to create a position
    uint256 hestiaPercent; // Adjustable from 55% to 95% (default: 80%) - determines the percentage of each investment and bonus allocated to HESTIA tokens
    uint256 investorBonus; // Adjustable from 1% to 15% (default: 6%) - sets the bonus percentage in both tokens (at their ratios) given to investors on their token purchases to cover wrapping fees and provide net benefit
    uint256 mintDelay; // Adjustable from 1 to 90 days (default: 3 days) - controls the mandatory waiting period after investment before NFT receipts can be converted to RAGE tokens
    uint256 adpDelay; // Adjustable from 30 to 300 days (default: 60 days) - sets the waiting period after investment before Asset Decline Protection becomes available for NFT conversion
    uint256 adpPercent; // Adjustable from 55% to 90% (default: 75%) - determines the percentage of original investment value used for Asset Decline Protection calculations. Cannot be more than refund percent.
    uint256 ecosystemBonus; // Adjustable from 1% to 15% (default: 6%) - controls the bonus tokens (distributed at their ratios) added to active assets with each new investment
    uint256 refundPercent; // Adjustable from 55% to 95% (default: 85%) - sets the percentage of original investment recoverable through the USDC refund mechanism (does not affect Asset Decline Protection calculations)
    uint256 refundDelay; // Adjustable from 500 days to 1500 days (default 1000 days) - sets the waiting period after investment before a refund can be requested
    uint256 minClaim; // Adjustable from 1e15 to 1e18 (default 1e18) - sets the minimum amount of Rage to reserve a claim
    uint256 maxClaim; // Adjustable from 100e18 to infinity (default 1000e18) - sets the maximum amount of Rage to reserve a claim
    uint256 claimFee; // Adjustable from 1% to 20% (default: 10%) - determines the fee applied when users claim their RAGE tokens
    uint256 claimDelay; // Adjustable from 10 to 100 days (default: 30 days) - sets the waiting period between creating and executing claims
    uint256 claimValidity; // Adjustable from 1 to 30 days (default: 10 days) - sets the validity period of a claim
    uint256 slippage; // Adjustable from 0 (off) to 2500 (25%), default is 500 or 5%, slippage when swapping on the pool
    uint32 twap; // Adjustable from 1 seconds to 3600 seconds, default is 30 seconds, twap duration for price calculation
  }

  struct RceConfig {
    uint256 stackRage;      // amount of rage to sell in stack underlying (range: 100-10000, default: 100)
    uint256 stackHestia;    // percent of hestia for stack underlying (range: 0-100, default: 80)
    uint256 boostRage;      // amount of rage to sell in pool boost (0=off, range: 100-10000, default: 100)
    uint128 crushDecrease;  // liquidity decrease for rageCrush (0=off, range: 100-10000, default: 0)
    bool crushBuy;          // whether rageCrush buys with collected USDC (default: true)
    uint256 burstRage;      // amount of rage to sell in rage burst (range: 1e18-200e18, default: 10e18)
    uint256 burstLoop;      // number of loops to do in rage burst (range: 1-5, default: 2)
    uint256 slippage;       // slippage for swaps/liquidity (0=off, max: 2500, default: 500)
    address podAddress;     // pod address excluded from active supply (default: address(0))
    address sideAddress1;   // side pool address #1 excluded from active supply (default: address(0))
    address sideAddress2;   // side pool address #2 excluded from active supply (default: address(0))
  }

  struct RbpRecent {
    uint256 lastInvest;                // Option ID of most recent investment
    uint256 lastMintRage;              // Option ID of most recent RAGE mint
    uint256 lastRefund;                // Option ID of most recent refund
    address lastReserveClaim;          // Wallet address of most recent claim reservation
    address lastClaim;                 // Wallet address of most recent claim execution
  }
  
  struct Option {
    uint256 id;                        // Unique option identifier
    uint256 version;                   // Contract version when created
    uint8 status;                      // Option status (1=active, 2=minted, 3=minted with ADP, 4=refunded)
    string transactionType;            // Transaction type ("i"=invest, "e"=ETH invest, "r"=receive)
    address walletCreated;             // Original creator wallet address
    address walletUpdated;             // Wallet that last updated the option
    address referral;                  // Referral address if applicable
    uint256 dateCreated;               // Timestamp when option was created
    uint256 dateUpdated;               // Timestamp of last update
    uint256 dateMintable;              // Timestamp when RAGE minting becomes available
    uint256 dateAdpAble;               // Timestamp when ADP protection activates
    uint256 dateRefundable;            // Timestamp when refund becomes available
    uint256 price;                     // price per rage when option was created
    uint256 fmv;                       // fmv when option was created
    uint256 backingPerShare;           // backing per share at the moment the option was created
    uint256 usdcInvest;                // Original USDC investment amount
    uint256 usdcAdp;                   // USDC value protected by ADP
    uint256 usdcRefund;                // USDC amount refundable
    uint256 pendingHestia;             // HESTIA tokens pending in this option
    uint256 pendingCircle;             // CIRCLE tokens pending in this option
    uint256 rageEstimated;             // Estimated RAGE tokens at creation
    uint256 rageMinted;                // Actual RAGE tokens minted
    uint256 usdcAdpDilution;           // USDC value diluted if ADP was used
    uint256 usdcInvestorBonus;          // USDC value of bonus given to investor
    uint256 hestiaInvestorBonus;       // HESTIA bonus given to investor
    uint256 circleInvestorBonus;       // CIRCLE bonus given to investor
    uint256 usdcEcosystemBonus;          // USDC value of bonus given to ecosystem
    uint256 hestiaEcosystemBonus;       // HESTIA bonus given to ecosystem
    uint256 circleEcosystemBonus;       // CIRCLE bonus given to ecosystem
    uint256 configHestiaPercent;       // HESTIA allocation % at creation
    uint256 configCirclePercent;       // CIRCLE allocation % at creation
    uint256 configInvestorBonus;       // Investor bonus % at creation
    uint256 configMintDelay;           // Mint delay at creation
    uint256 configAdpDelay;            // ADP delay at creation
    uint256 configAdpPercent;          // ADP percentage at creation
    uint256 configRefundPercent;       // Refund percentage at creation
    uint256 configRefundDelay;         // Refund delay at creation
  }
  
  struct Claim {
    address wallet;                    // Wallet address making the claim
    uint256 version;                   // Contract version when created
    uint8 status;                      // Claim status (1=active, 2=claimed)
    uint256 claimedCount;              // Number of times this wallet has claimed
    uint256 dateCreated;               // Timestamp when claim was reserved
    uint256 dateUpdated;               // Timestamp of last update
    uint256 dateClaimableStart;        // Start of claim validity window
    uint256 dateClaimableEnd;          // End of claim validity window
    uint256 rageBurn;                  // RAGE tokens to burn (before fee)
    uint256 rageAfterFee;              // RAGE tokens after fee deduction
    uint256 price;                     // price per rage when claim was created
    uint256 fmv;                       // fmv when claim was created
    uint256 backingPerShare;           // backing per share at the moment the claim was created
    uint256 claimHestia;               // HESTIA tokens claimable
    uint256 claimCircle;               // CIRCLE tokens claimable
    uint256 lastClaimHestia;           // HESTIA claimed in last execution
    uint256 lastClaimCircle;           // CIRCLE claimed in last execution
    uint256 totalClaimHestia;           // All HESTIA claimed by this wallet
    uint256 totalClaimCircle;           // All CIRCLE claimed by this wallet
    uint256 configClaimFee;            // Claim fee % at reservation
    uint256 configClaimDelay;          // Claim delay at reservation
    uint256 configClaimValidity;       // Validity period at reservation
  }
  
  struct OptionsOverview {
    uint256 totalDebt;                // Total USDC owed for potential refunds
    uint256 totalDebtReal;            // Real debt considering current asset values
    uint256 adpDebt;                  // USDC owed for ADP-eligible options
    uint256 adpDebtReal;              // Real ADP debt considering current asset values
    uint256 refundDebt;               // USDC owed for refundable options
    uint256 refundDebtReal;           // Real refund debt considering current asset values
    uint256 mintableRage;             // Total RAGE tokens mintable from active options
    uint256 usdcInvested;             // Total USDC invested across all options
    uint256 usdcBonus;                // Total USDC value of all bonuses
    uint256 hestiaInvestorBonus;      // Total HESTIA given as investor bonus
    uint256 circleInvestorBonus;      // Total CIRCLE given as investor bonus
    uint256 optionActiveCount;        // Count of options with status 1
    uint256 optionMintCount;          // Count of options with status 2
    uint256 optionAdpCount;           // Count of options with status 3
    uint256 optionRefundCount;        // Count of options with status 4
    uint256 totalPendingHestia;       // Sum of all pendingHestia in active options
    uint256 totalPendingCircle;       // Sum of all pendingCircle in active options
    uint256 optionsRefundableWithinThreshold; // Options becoming refundable soon (for liquidation planning)
    uint256 refundDebtRealThreshold;     // Real refund debt in the next 30 days considering current asset values
    uint256 optionsMintableNow;      // Active options that can be minted right now
    uint256 optionsAdpAbleNow;       // Active options eligible for ADP right now
    uint256 optionsRefundableNow;    // Active options that can be refunded right now
    uint256 totalAdpDilution;         // Total USDC diluted through ADP (from status 3 options)
    uint256 totalRefundValue;         // Total USDC refunded (from status 4 options)
    uint256 totalRageMinted;          // Sum of rageMinted from minted options
  }

  struct ClaimsOverview {
    uint256 activeClaimsCount;        // Count of active claims (status 1)
    uint256 claimedCount;             // Count of claimed (status 2)
    uint256 pendingClaimsCount;       // Active claims not yet in claim window
    uint256 claimableNowCount;        // Active claims currently in claim window
    uint256 expiredClaimsCount;       // Active claims past their window
    uint256 pendingHestia;            // Total HESTIA in pending claims
    uint256 pendingCircle;            // Total CIRCLE in pending claims
    uint256 claimableHestia;          // Total HESTIA in claimable-now claims
    uint256 claimableCircle;          // Total CIRCLE in claimable-now claims
    uint256 totalRageToBurn;          // Total RAGE that will be burned from active claims
    uint256 totalClaimedHestia;       // Historical total of HESTIA claimed
    uint256 totalClaimedCircle;       // Historical total of CIRCLE claimed
  }

  struct InvestOverview {
    address wallet;                    // Investor wallet address
    string transactionType;            // Transaction type identifier
    bool canInvest;                    // Whether investment is allowed
    bool isAmountValid;                // Whether amount is within min/max limits
    bool isPercentValid;               // Whether allocation percentages sum to 100%
    bool hasBonus;                     // Whether bonus HESTIA is available
    uint256 rageEstimated;             // Estimated RAGE tokens to receive
    uint256 rageEstimatedValue;        // Estimated USDC value of Rage tokens to receive
    uint256 dateMintable;              // When RAGE minting becomes available
    uint256 dateAdpAble;               // When ADP protection activates
    uint256 dateRefundable;            // When refund becomes available
    uint256 usdcInvest;                // USDC amount to invest
    uint256 usdcAdp;                   // USDC protected by ADP
    uint256 usdcRefund;                // USDC refundable amount
    uint256 usdcInvestorBonus;         // USDC value of investor bonus
    uint256 usdcEcosystemBonus;        // USDC value of ecosystem bonus
    uint256 usdcHestiaBonus;            // USDC value of Hestia investor + ecosystem bonus
    uint256 usdcCircleBonus;            // USDC value of Circle investor + ecosystem bonus
    uint256 hestiaInvestorBonus;       // HESTIA tokens as investor bonus
    uint256 hestiaEcosystemBonus;      // HESTIA tokens as ecosystem bonus
    uint256 circleInvestorBonus;       // CIRCLE tokens as investor bonus
    uint256 circleEcosystemBonus;      // CIRCLE tokens as ecosystem bonus
    uint256 configHestiaPercent;       // Current HESTIA allocation %
    uint256 configCirclePercent;       // Current CIRCLE allocation %
    uint256 configInvestorBonus;       // Current investor bonus %
    uint256 configMintDelay;           // Current mint delay setting
    uint256 configAdpDelay;            // Current ADP delay setting
    uint256 configAdpPercent;          // Current ADP percentage
    uint256 configRefundPercent;       // Current refund percentage
    uint256 configRefundDelay;         // Current refund delay
  }

  struct OptionOverview {
    address wallet;                    // Option owner wallet address
    uint256 optionId;                  // Id of the option nft
    bool canMint;                      // Whether RAGE minting is available
    bool canMintWithAdp;               // Whether ADP minting is available
    bool canRefund;                    // Whether refund is available
    bool hasRefundUsdc;                // Whether contract has USDC for refund
    uint256 rageMint;                  // RAGE tokens that can be minted
    uint256 rageMintValue;             // USDC value of Rage tokens to be minted
    uint256 usdcAssets;                // Current USDC value of the assets
    uint256 usdcCurrent;               // Current USDC value for minting
    uint256 usdcBalance;               // Contract's USDC balance
    uint256 usdcAdpDilution;           // ADP dilution amount in USDC
    uint256 backingPerShare;           // Current backing per share
    bool mintValueProfitable;          // Whether minting rage is profitable (rageMintValue higher than assets or adp value)
    bool mintBackingProfitable;        // Whether minting rage now has less backing that when option was created
  }
  
  struct ReserveClaimOverview {
    address wallet;                    // Claimer wallet address
    bool canReserve;                   // Whether claim can be reserved
    bool hasActiveClaim;               // Whether wallet has active claim
    bool isFirstClaim;                 // Whether this is wallet's first claim
    uint256 rageBurn;                  // RAGE to burn (before fee)
    uint256 rageBurnValue;             // USDC value of rage to burn (before fee)
    uint256 rageAfterFee;              // RAGE after fee deduction
    uint256 claimHestia;               // HESTIA claimable
    uint256 claimCircle;               // CIRCLE claimable
    uint256 claimValue;                // USDC value of claim assets
    uint256 dateClaimableStart;        // Start of validity window
    uint256 dateClaimableEnd;          // End of validity window
    uint256 configClaimFee;            // Current claim fee %
    uint256 configClaimDelay;          // Current claim delay
    uint256 configClaimValidity;       // Current validity period
  }
  
  struct ClaimOverview {
    address wallet;                    // Claimer wallet address
    bool canClaim;                     // Whether claim can be executed
    bool hasBalance;                   // Whether wallet has RAGE balance
    bool isValid;                      // Whether within validity window
    uint256 rageBurn;                  // RAGE to burn (before fee)
    uint256 rageBurnValue;             // USDC value of rage to burn (before fee)
    uint256 claimHestia;               // HESTIA to receive
    uint256 claimCircle;               // CIRCLE to receive
    uint256 claimValue;                // USDC value of claim assets
    uint256 pHestiaNeeded;             // pHestia needed for debond
    uint256 pCircleNeeded;             // pCircle needed for debond
    uint256 recalcClaimHestia;         // Recalculated HESTIA amount
    uint256 recalcClaimCircle;         // Recalculated CIRCLE amount
    uint256 recalcClaimValue;          // USDC value of recalculated claim assets
    uint256 backingPerShare;           // Current backing per share
  }

  struct RceStateValue {
    uint256 nextBoostTime;
    uint256 nextStackTime;
    uint256 nextCrushTime;
    uint256 nextBurstTime;
    uint256 nextConfigTime;
    uint256 nextYearlyAllowance;
    address poolToken0;
    uint256 nftLocked;
    address rageBuyingProtocol;
    address pendingRbp;
    address ownerProposer;
    address owner1;
    address owner2;
    address automator;
    uint256 amountAllowance;
    uint256 amountTransfer;
    uint256 amountMint;
    uint256 amountRageStack;
    uint256 amountUsdcBoost;
    uint256 amountRageBoost;
    uint256 amountUsdcCrush;
    uint256 lastStackTime;
    uint256 lastStackAmount;
    uint256 lastBoostTime;
    uint256 lastBoostAmount;
    uint256 lastCrushTime;
    uint256 lastCrushAmount;
    uint256 lastBurstTime;
    uint256 lastBurstAmount;
  }

  struct RceState {
    uint256 version;                    // Contract version identifier
    address rageSwapper;               // Address of the Rage Swapper contract for DEX operations
    address multisig;                  // Multisig wallet address for admin operations
    address poolAddress;               // Uniswap V3 pool address for RAGE/USDC
    uint256 nftId;                     // Uniswap V3 NFT position ID
    uint256 nftSupply;                  // RAGE tokens within the NFT of the RAGE/USDC pool
    uint256 activeSupply;               // RAGE tokens that are active and backed by underlying assets
    uint256 rageBalance;               // Current RAGE balance in contract
    uint256 usdcBalance;               // Current USDC balance in contract
    RceConfig config;
    RceStateValue state;
  }
}