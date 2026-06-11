// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.29 <0.9.0;

// ============================================
// PENDLE V2 INTERFACES
// https://docs.pendle.finance/
// ============================================

/**
 * @title ApproxParams
 * @notice Parameters for approximation algorithms in Pendle swaps
 */
struct ApproxParams {
    uint256 guessMin;
    uint256 guessMax;
    uint256 guessOffchain; // pass 0 if not available
    uint256 maxIteration; // every iteration, the diff between guessMin and guessMax will be divided by 2
    uint256 eps; // the max eps between the returned result & the correct result, base 1e18. Normally this is set to
        // 1e15 (1e18/1000 = 0.1%)
}

/**
 * @title TokenInput
 * @notice Input token data for Pendle router swaps
 */
struct TokenInput {
    address tokenIn;
    uint256 netTokenIn;
    address tokenMintSy;
    address pendleSwap;
    SwapData swapData;
}

/**
 * @title TokenOutput
 * @notice Output token data for Pendle router swaps
 */
struct TokenOutput {
    address tokenOut;
    uint256 minTokenOut;
    address tokenRedeemSy;
    address pendleSwap;
    SwapData swapData;
}

/**
 * @title SwapData
 * @notice Swap data for external DEX integrations
 */
struct SwapData {
    SwapType swapType;
    address extRouter;
    bytes extCalldata;
    bool needScale;
}

/**
 * @title SwapType
 * @notice Enum for swap types
 */
enum SwapType {
    NONE,
    KYBERSWAP,
    ONE_INCH,
    ETH_WETH
}

/**
 * @title LimitOrderData
 * @notice Limit order data (pass empty struct if not using limit orders)
 */
struct LimitOrderData {
    address limitRouter;
    uint256 epsSkipMarket;
    FillOrderParams[] normalFills;
    FillOrderParams[] flashFills;
    bytes optData;
}

struct FillOrderParams {
    Order order;
    bytes signature;
    uint256 makingAmount;
}

struct Order {
    uint256 salt;
    uint256 expiry;
    uint256 nonce;
    OrderType orderType;
    address token;
    address YT;
    address maker;
    address receiver;
    uint256 makingAmount;
    uint256 lnImpliedRate;
    uint256 failSafeRate;
    bytes permit;
}

enum OrderType {
    SY_FOR_PT,
    PT_FOR_SY,
    SY_FOR_YT,
    YT_FOR_SY
}

/**
 * @title MarketState
 * @notice State data of a Pendle market
 */
struct MarketState {
    int256 totalPt;
    int256 totalSy;
    int256 totalLp;
    address treasury;
    int256 scalarRoot;
    uint256 expiry;
    uint256 lnFeeRateRoot;
    uint256 reserveFeePercent;
    uint256 lastLnImpliedRate;
}

/**
 * @title IPendleRouter
 * @notice Interface for Pendle Router V4
 * @dev https://github.com/pendle-finance/pendle-core-v2-public
 */
interface IPendleRouter {
    /**
     * @notice Swap exact token for PT
     * @param receiver Address to receive PT
     * @param market Pendle market address
     * @param minPtOut Minimum PT output (slippage protection)
     * @param guessPtOut Approximation parameters
     * @param input Token input data
     * @param limit Limit order data (pass empty if not using)
     * @return netPtOut Actual PT received
     * @return netSyFee SY fee charged
     * @return netSyInterm Intermediate SY amount
     */
    function swapExactTokenForPt(
        address receiver,
        address market,
        uint256 minPtOut,
        ApproxParams calldata guessPtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    )
        external
        payable
        returns (uint256 netPtOut, uint256 netSyFee, uint256 netSyInterm);

    /**
     * @notice Swap exact PT for token
     * @param receiver Address to receive tokens
     * @param market Pendle market address
     * @param exactPtIn Exact PT amount to swap
     * @param output Token output data
     * @param limit Limit order data (pass empty if not using)
     * @return netTokenOut Actual tokens received
     * @return netSyFee SY fee charged
     * @return netSyInterm Intermediate SY amount
     */
    function swapExactPtForToken(
        address receiver,
        address market,
        uint256 exactPtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    )
        external
        returns (uint256 netTokenOut, uint256 netSyFee, uint256 netSyInterm);

    /**
     * @notice Redeem PT and YT for SY after expiry
     * @param receiver Address to receive SY
     * @param YT YT token address
     * @param netPyIn Amount of PT+YT to redeem
     * @return netSyOut SY received
     */
    function redeemPyToSy(
        address receiver,
        address YT,
        uint256 netPyIn,
        uint256 minSyOut
    )
        external
        returns (uint256 netSyOut);

    /**
     * @notice Redeem PT and YT for underlying token after expiry
     * @param receiver Address to receive tokens
     * @param YT YT token address
     * @param netPyIn Amount of PT+YT to redeem
     * @param output Token output data
     * @return netTokenOut Tokens received
     */
    function redeemPyToToken(
        address receiver,
        address YT,
        uint256 netPyIn,
        TokenOutput calldata output
    )
        external
        returns (uint256 netTokenOut, uint256 netSyInterm);

    /**
     * @notice Redeem SY to underlying token
     * @param receiver Address to receive tokens
     * @param SY SY token address
     * @param netSyIn Amount of SY to redeem
     * @param output Token output data
     * @return netTokenOut Tokens received
     */
    function redeemSyToToken(
        address receiver,
        address SY,
        uint256 netSyIn,
        TokenOutput calldata output
    )
        external
        returns (uint256 netTokenOut);

    /**
     * @notice Mint SY from underlying token
     * @param receiver Address to receive SY
     * @param SY SY token address
     * @param minSyOut Minimum SY output
     * @param input Token input data
     * @return netSyOut SY received
     */
    function mintSyFromToken(
        address receiver,
        address SY,
        uint256 minSyOut,
        TokenInput calldata input
    )
        external
        payable
        returns (uint256 netSyOut);
}

/**
 * @title IPendleMarket
 * @notice Interface for Pendle Market
 */
interface IPendleMarket {
    /**
     * @notice Read current market state
     * @param router Router address for oracle data
     * @return market Current market state
     */
    function readState(address router) external view returns (MarketState memory market);

    /**
     * @notice Get market expiry timestamp
     * @return Expiry timestamp
     */
    function expiry() external view returns (uint256);

    /**
     * @notice Check if market is expired
     * @return True if expired
     */
    function isExpired() external view returns (bool);

    /**
     * @notice Get PT token address
     * @return PT address
     */
    function PT() external view returns (address);

    /**
     * @notice Get SY token address
     * @return SY address
     */
    function SY() external view returns (address);

    /**
     * @notice Get YT token address
     * @return YT address
     */
    function YT() external view returns (address);

    /**
     * @notice Get market tokens
     * @return _SY SY address
     * @return _PT PT address
     * @return _YT YT address
     */
    function readTokens() external view returns (address _SY, address _PT, address _YT);

    /**
     * @notice Get total active supply of LP
     * @return Total LP supply
     */
    function totalActiveSupply() external view returns (uint256);

    /**
     * @notice Get active balance of an account
     * @param account Account address
     * @return Active balance
     */
    function activeBalance(address account) external view returns (uint256);

    /**
     * @notice Increase the oracle observations cardinality
     * @param cardinalityNext The new minimum cardinality for oracle observations
     * @dev Required for TWAP to work over longer durations. Must be called before
     *      trades to build up observation history.
     */
    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external;
}

/**
 * @title IStandardizedYield
 * @notice Interface for Pendle Standardized Yield (SY) token
 */
interface IStandardizedYield {
    /**
     * @notice Deposit underlying token to mint SY
     * @param receiver Address to receive SY
     * @param tokenIn Address of input token
     * @param amountTokenToDeposit Amount to deposit
     * @param minSharesOut Minimum SY shares to receive
     * @return amountSharesOut SY shares minted
     */
    function deposit(
        address receiver,
        address tokenIn,
        uint256 amountTokenToDeposit,
        uint256 minSharesOut
    )
        external
        payable
        returns (uint256 amountSharesOut);

    /**
     * @notice Redeem SY for underlying token
     * @param receiver Address to receive tokens
     * @param amountSharesToRedeem Amount of SY to redeem
     * @param tokenOut Address of output token
     * @param minTokenOut Minimum tokens to receive
     * @param burnFromInternalBalance Whether to burn from internal balance
     * @return amountTokenOut Tokens received
     */
    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    )
        external
        returns (uint256 amountTokenOut);

    /**
     * @notice Get exchange rate of SY to underlying
     * @return Exchange rate (1e18 = 1:1)
     */
    function exchangeRate() external view returns (uint256);

    /**
     * @notice Get list of tokens that can be deposited
     * @return List of token addresses
     */
    function getTokensIn() external view returns (address[] memory);

    /**
     * @notice Get list of tokens that can be redeemed
     * @return List of token addresses
     */
    function getTokensOut() external view returns (address[] memory);

    /**
     * @notice Get underlying yield token
     * @return Yield token address
     */
    function yieldToken() external view returns (address);

    /**
     * @notice Preview deposit amount
     * @param tokenIn Input token address
     * @param amountTokenToDeposit Amount to deposit
     * @return amountSharesOut Expected SY shares
     */
    function previewDeposit(
        address tokenIn,
        uint256 amountTokenToDeposit
    )
        external
        view
        returns (uint256 amountSharesOut);

    /**
     * @notice Preview redeem amount
     * @param tokenOut Output token address
     * @param amountSharesToRedeem Amount of SY to redeem
     * @return amountTokenOut Expected tokens out
     */
    function previewRedeem(
        address tokenOut,
        uint256 amountSharesToRedeem
    )
        external
        view
        returns (uint256 amountTokenOut);

    /**
     * @notice Check if token is valid for deposit
     * @param token Token address
     * @return True if valid
     */
    function isValidTokenIn(address token) external view returns (bool);

    /**
     * @notice Check if token is valid for redeem
     * @param token Token address
     * @return True if valid
     */
    function isValidTokenOut(address token) external view returns (bool);

    /**
     * @notice Get asset info
     * @return assetType Type of asset
     * @return assetAddress Address of asset
     * @return assetDecimals Decimals of asset
     */
    function assetInfo() external view returns (uint8 assetType, address assetAddress, uint8 assetDecimals);
}

/**
 * @title ISYWithSupplyCap
 * @notice Extended SY interface for tokens that implement supply cap
 * @dev Not all SY tokens implement supply cap. Use try-catch when calling.
 *
 * Supply cap mechanism:
 *   - supplyCap(): Maximum total supply allowed
 *   - totalSupply() (from ERC20): Current total supply
 *   - Remaining capacity = supplyCap() - totalSupply()
 *
 * Note: Some SY implementations return type(uint256).max for unlimited cap.
 */
interface ISYWithSupplyCap {
    /**
     * @notice Get the maximum supply cap for this SY token
     * @return Maximum supply cap (type(uint256).max if unlimited)
     */
    function supplyCap() external view returns (uint256);
}

/**
 * @title IPPrincipalToken
 * @notice Interface for Pendle Principal Token (PT)
 */
interface IPPrincipalToken {
    /**
     * @notice Get expiry timestamp
     * @return Expiry timestamp
     */
    function expiry() external view returns (uint256);

    /**
     * @notice Check if PT is expired
     * @return True if expired
     */
    function isExpired() external view returns (bool);

    /**
     * @notice Get SY token address
     * @return SY address
     */
    function SY() external view returns (address);

    /**
     * @notice Get YT token address
     * @return YT address
     */
    function YT() external view returns (address);

    /**
     * @notice Get factory address
     * @return Factory address
     */
    function factory() external view returns (address);

    /**
     * @notice Burn PT to mint SY (only after expiry)
     * @param user User address
     * @param receiver Address to receive SY
     * @return amountSyOut SY received
     */
    function burnByYT(address user, address receiver) external returns (uint256 amountSyOut);

    // ERC20 standard functions
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint8);
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
}

/**
 * @title IPYieldToken
 * @notice Interface for Pendle Yield Token (YT)
 */
interface IPYieldToken {
    /**
     * @notice Get expiry timestamp
     * @return Expiry timestamp
     */
    function expiry() external view returns (uint256);

    /**
     * @notice Check if YT is expired
     * @return True if expired
     */
    function isExpired() external view returns (bool);

    /**
     * @notice Get SY token address
     * @return SY address
     */
    function SY() external view returns (address);

    /**
     * @notice Get PT token address
     * @return PT address
     */
    function PT() external view returns (address);

    /**
     * @notice Redeem PY (PT+YT) for SY
     * @dev PT/YT must be transferred to YT contract prior to calling
     * @dev Pre-expiry: both PT and YT are required
     * @dev Post-expiry: only PT is required (YT has no value after maturity)
     * @param receiver Address to receive SY
     * @return amountSyOut SY received
     * @custom:reference https://docs.pendle.finance/pendle-v2/Developers/Contracts/YieldTokenization#redeempy
     */
    function redeemPY(address receiver) external returns (uint256 amountSyOut);

    /**
     * @notice Mint PT and YT from SY
     * @dev SY must be transferred to YT contract prior to calling
     * @param receiverPT Address to receive PT
     * @param receiverYT Address to receive YT
     * @return amountPYOut Amount of PT/YT minted
     * @custom:reference https://docs.pendle.finance/pendle-v2/Developers/Contracts/YieldTokenization#mintpy
     */
    function mintPY(address receiverPT, address receiverYT) external returns (uint256 amountPYOut);

    /**
     * @notice Redeem due interest and rewards
     * @param user User address
     * @return interestOut Interest received
     * @return rewardsOut Rewards received
     */
    function redeemDueInterestAndRewards(
        address user,
        bool redeemInterest,
        bool redeemRewards
    )
        external
        returns (uint256 interestOut, uint256[] memory rewardsOut);

    /**
     * @notice Get py index stored
     * @return pyIndexStored
     */
    function pyIndexStored() external view returns (uint256);

    /**
     * @notice Get current py index
     * @return pyIndexCurrent
     */
    function pyIndexCurrent() external returns (uint256);

    // ERC20 standard functions
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint8);
}

/**
 * @title IPendleOracle
 * @notice Interface for Pendle Oracle (optional, for more accurate pricing)
 */
interface IPendleOracle {
    /**
     * @notice Get PT to asset rate
     * @param market Market address
     * @param duration TWAP duration in seconds
     * @return rate PT to asset rate (1e18 = 1:1)
     */
    function getPtToAssetRate(address market, uint32 duration) external view returns (uint256 rate);

    /**
     * @notice Get PT to SY rate
     * @param market Market address
     * @param duration TWAP duration in seconds
     * @return rate PT to SY rate (1e18 = 1:1)
     */
    function getPtToSyRate(address market, uint32 duration) external view returns (uint256 rate);

    /**
     * @notice Check oracle state
     * @param market Market address
     * @param duration TWAP duration
     * @return increaseCardinalityRequired Whether cardinality increase is required
     * @return cardinalityRequired Required cardinality
     * @return oldestObservationSatisfied Whether oldest observation satisfies duration
     */
    function getOracleState(
        address market,
        uint32 duration
    )
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied);
}
