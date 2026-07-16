//SPDX-License-Identifier: ISC

pragma solidity ^0.8.13;

// For full documentation refer to @lyrafinance/protocol/contracts/LiquidityPool.sol";
interface ILiquidityPool {
    struct Collateral {
        uint256 quote;
        uint256 base;
    }

    /// These values are all in quoteAsset amounts.
    struct Liquidity {
        // Amount of liquidity available for option collateral and premiums
        uint256 freeLiquidity;
        // Amount of liquidity available for withdrawals - different to freeLiquidity
        uint256 burnableLiquidity;
        // Amount of liquidity reserved for long options sold to traders
        uint256 reservedCollatLiquidity;
        // Portion of liquidity reserved for delta hedging (quote outstanding)
        uint256 pendingDeltaLiquidity;
        // Current value of delta hedge
        uint256 usedDeltaLiquidity;
        // Net asset value, including everything and netOptionValue
        uint256 NAV;
    }

    struct QueuedDeposit {
        uint256 id;
        // Who will receive the LiquidityToken minted for this deposit after the wait time
        address beneficiary;
        // The amount of quoteAsset deposited to be converted to LiquidityToken after wait time
        uint256 amountLiquidity;
        // The amount of LiquidityToken minted. Will equal to 0 if not processed
        uint256 mintedTokens;
        uint256 depositInitiatedTime;
    }

    struct QueuedWithdrawal {
        uint256 id;
        // Who will receive the quoteAsset returned after burning the LiquidityToken
        address beneficiary;
        // The amount of LiquidityToken being burnt after the wait time
        uint256 amountTokens;
        // The amount of quote transferred. Will equal to 0 if process not started
        uint256 quoteSent;
        uint256 withdrawInitiatedTime;
    }

    struct LiquidityPoolParameters {
        // The minimum amount of quoteAsset for a deposit, or the amount of LiquidityToken for a withdrawal
        uint256 minDepositWithdraw;
        // Time between initiating a deposit and when it can be processed
        uint256 depositDelay;
        // Time between initiating a withdrawal and when it can be processed
        uint256 withdrawalDelay;
        // Fee charged on withdrawn funds
        uint256 withdrawalFee;
        // Percentage of NAV below which the liquidity CB fires
        uint256 liquidityCBThreshold;
        // Length of time after the liq. CB stops firing during which deposits/withdrawals are still blocked
        uint256 liquidityCBTimeout;
        // Difference between the spot and GWAV baseline IVs after which point the vol CB will fire
        uint256 ivVarianceCBThreshold;
        // Difference between the spot and GWAV skew ratios after which point the vol CB will fire
        uint256 skewVarianceCBThreshold;
        // Length of time after the (base) vol. CB stops firing during which deposits/withdrawals are still blocked
        uint256 ivVarianceCBTimeout;
        // Length of time after the (skew) vol. CB stops firing during which deposits/withdrawals are still blocked
        uint256 skewVarianceCBTimeout;
        // The address of the "guardian"
        address guardianMultisig;
        // Length of time a deposit/withdrawal since initiation for before a guardian can force process their transaction
        uint256 guardianDelay;
        // When a new board is listed, block deposits/withdrawals
        uint256 boardSettlementCBTimeout;
        // When exchanging, don't exchange if fee is above this value
        uint256 maxFeePaid;
    }

    struct CircuitBreakerParameters {
        // Percentage of NAV below which the liquidity CB fires
        uint256 liquidityCBThreshold;
        // Length of time after the liq. CB stops firing during which deposits/withdrawals are still blocked
        uint256 liquidityCBTimeout;
        // Difference between the spot and GWAV baseline IVs after which point the vol CB will fire
        uint256 ivVarianceCBThreshold;
        // Difference between the spot and GWAV skew ratios after which point the vol CB will fire
        uint256 skewVarianceCBThreshold;
        // Length of time after the (base) vol. CB stops firing during which deposits/withdrawals are still blocked
        uint256 ivVarianceCBTimeout;
        // Length of time after the (skew) vol. CB stops firing during which deposits/withdrawals are still blocked
        uint256 skewVarianceCBTimeout;
        // When a new board is listed, block deposits/withdrawals
        uint256 boardSettlementCBTimeout;
        // Timeout on deposits and withdrawals in a contract adjustment event
        uint256 contractAdjustmentCBTimeout;
    }

    function poolHedger() external view returns (address);

    function queuedDeposits(uint256 id) external view returns (QueuedDeposit memory);

    function totalQueuedDeposits() external view returns (uint256);

    function queuedDepositHead() external view returns (uint256);

    function nextQueuedDepositId() external view returns (uint256);

    function queuedWithdrawals(uint256 id) external view returns (QueuedWithdrawal memory);

    function totalQueuedWithdrawals() external view returns (uint256);

    function queuedWithdrawalHead() external view returns (uint256);

    function nextQueuedWithdrawalId() external view returns (uint256);

    function CBTimestamp() external view returns (uint256);

    /// @dev Amount of collateral locked for outstanding calls and puts sold to users
    function lockedCollateral() external view returns (Collateral memory);

    /// @dev Total amount of quoteAsset reserved for all settled options that have yet to be paid out
    function totalOutstandingSettlements() external view returns (uint256);

    /// @dev Total value not transferred to this contract for all shorts that didn't have enough collateral after expiry
    function insolventSettlementAmount() external view returns (uint256);

    /// @dev Total value not transferred to this contract for all liquidations that didn't have enough collateral when liquidated
    function liquidationInsolventAmount() external view returns (uint256);

    function initiateDeposit(address beneficiary, uint256 amountQuote) external;

    function initiateWithdraw(address beneficiary, uint256 amountLiquidityToken) external;

    function processDepositQueue(uint256 limit) external;

    function processWithdrawalQueue(uint256 limit) external;

    function updateCBs() external;

    function getTotalTokenSupply() external view returns (uint256);

    function getTokenPriceWithCheck()
        external
        view
        returns (uint256 tokenPrice, bool isStale, uint256 circuitBreakerExpiry);

    function getTokenPrice() external view returns (uint256);

    function getLiquidity() external view returns (Liquidity memory);

    function getTotalPoolValueQuote() external view returns (uint256);

    function exchangeBase() external;

    function getLpParams() external view returns (LiquidityPoolParameters memory);

    ////////////
    // Events //
    ////////////

    /// @dev Emitted whenever the pool paramters are updated
    event LiquidityPoolParametersUpdated(LiquidityPoolParameters lpParams);

    /// @dev Emitted whenever the poolHedger address is modified
    event PoolHedgerUpdated(address poolHedger);

    /// @dev Emitted when quote is locked.
    event PutCollateralLocked(uint256 quoteLocked, uint256 lockedCollateralQuote);

    /// @dev Emitted when AMM put collateral is freed.
    event PutCollateralFreed(uint256 quoteFreed, uint256 lockedCollateralQuote);

    /// @dev Emitted when base is locked.
    event CallCollateralLocked(uint256 baseLocked, uint256 lockedCollateralBase);

    /// @dev Emitted when AMM call collateral is freed.
    event CallCollateralFreed(uint256 baseFreed, uint256 lockedCollateralBase);

    /// @dev Emitted when a board is settled.
    event BoardSettlement(
        uint256 insolventSettlementAmount, uint256 amountQuoteReserved, uint256 totalOutstandingSettlements
    );

    /// @dev Emitted when reserved quote is sent.
    event OutstandingSettlementSent(address indexed user, uint256 amount, uint256 totalOutstandingSettlements);

    /// @dev Emitted whenever quote is exchanged for base
    event BasePurchased(uint256 quoteSpent, uint256 baseReceived);

    /// @dev Emitted whenever base is exchanged for quote
    event BaseSold(uint256 amountBase, uint256 quoteReceived);

    /// @dev Emitted whenever premium is sent to a trader closing their position
    event PremiumTransferred(address indexed recipient, uint256 recipientPortion, uint256 optionMarketPortion);

    /// @dev Emitted whenever quote is sent to the PoolHedger
    event QuoteTransferredToPoolHedger(uint256 amountQuote);

    /// @dev Emitted whenever the insolvent settlement amount is updated (settlement and excess)
    event InsolventSettlementAmountUpdated(uint256 amountQuoteAdded, uint256 totalInsolventSettlementAmount);

    /// @dev Emitted whenever a user deposits and enters the queue.
    event DepositQueued(
        address indexed depositor,
        address indexed beneficiary,
        uint256 indexed depositQueueId,
        uint256 amountDeposited,
        uint256 totalQueuedDeposits,
        uint256 timestamp
    );

    /// @dev Emitted whenever a deposit gets processed. Note, can be processed without being queued.
    ///  QueueId of 0 indicates it was not queued.
    event DepositProcessed(
        address indexed caller,
        address indexed beneficiary,
        uint256 indexed depositQueueId,
        uint256 amountDeposited,
        uint256 tokenPrice,
        uint256 tokensReceived,
        uint256 timestamp
    );

    /// @dev Emitted whenever a deposit gets processed. Note, can be processed without being queued.
    ///  QueueId of 0 indicates it was not queued.
    event WithdrawProcessed(
        address indexed caller,
        address indexed beneficiary,
        uint256 indexed withdrawalQueueId,
        uint256 amountWithdrawn,
        uint256 tokenPrice,
        uint256 quoteReceived,
        uint256 totalQueuedWithdrawals,
        uint256 timestamp
    );
    event WithdrawPartiallyProcessed(
        address indexed caller,
        address indexed beneficiary,
        uint256 indexed withdrawalQueueId,
        uint256 amountWithdrawn,
        uint256 tokenPrice,
        uint256 quoteReceived,
        uint256 totalQueuedWithdrawals,
        uint256 timestamp
    );
    event WithdrawQueued(
        address indexed withdrawer,
        address indexed beneficiary,
        uint256 indexed withdrawalQueueId,
        uint256 amountWithdrawn,
        uint256 totalQueuedWithdrawals,
        uint256 timestamp
    );

    /// @dev Emitted whenever the CB timestamp is updated
    event CircuitBreakerUpdated(
        uint256 newTimestamp,
        bool ivVarianceThresholdCrossed,
        bool skewVarianceThresholdCrossed,
        bool liquidityThresholdCrossed
    );

    /// @dev Emitted whenever the CB timestamp is updated from a board settlement
    event BoardSettlementCircuitBreakerUpdated(uint256 newTimestamp);

    /// @dev Emitted whenever a queue item is checked for the ability to be processed
    event CheckingCanProcess(
        uint256 entryId, bool boardNotStale, bool validEntry, bool guardianBypass, bool delaysExpired
    );

    ////////////
    // Errors //
    ////////////
    // Admin
    error InvalidLiquidityPoolParameters(address thrower, LiquidityPoolParameters lpParams);
    error InvalidCircuitBreakerParameters(address thrower, CircuitBreakerParameters cbParams);

    // Deposits and withdrawals
    error InvalidBeneficiaryAddress(address thrower, address beneficiary);
    error MinimumDepositNotMet(address thrower, uint256 amountQuote, uint256 minDeposit);
    error MinimumWithdrawNotMet(address thrower, uint256 amountQuote, uint256 minWithdraw);

    // Liquidity and accounting
    error LockingMoreQuoteThanIsFree(
        address thrower, uint256 quoteToLock, uint256 freeLiquidity, Collateral lockedCollateral
    );
    error SendPremiumNotEnoughCollateral(address thrower, uint256 premium, uint256 reservedFee, uint256 freeLiquidity);
    error NotEnoughFreeToReclaimInsolvency(address thrower, uint256 amountQuote, Liquidity liquidity);
    error OptionValueDebtExceedsTotalAssets(address thrower, int256 totalAssetValue, int256 optionValueDebt);
    error NegativeTotalAssetValue(address thrower, int256 totalAssetValue);

    // Access
    error OnlyPoolHedger(address thrower, address caller, address poolHedger);
    error OnlyOptionMarket(address thrower, address caller, address optionMarket);
    error OnlyShortCollateral(address thrower, address caller, address poolHedger);

    // Token transfers (amounts denominated in token decimals)
    error QuoteTransferFailed(address thrower, address from, address to, uint256 realAmount);
    error BaseTransferFailed(address thrower, address from, address to, uint256 realAmount);

    // @dev Emmitted whenever a position can not be opened as the hedger is unable to hedge
    error UnableToHedgeDelta(address thrower, uint256 amountOptions, bool increasesDelta);
}
