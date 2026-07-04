// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IAccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/IAccessControlUpgradeable.sol";
import {IUniswapV3MintCallback} from "uni-v3-core/interfaces/callback/IUniswapV3MintCallback.sol";
import {IPancakeV3MintCallback} from "pancake-v3-core/interfaces/callback/IPancakeV3MintCallback.sol";

/// @title Types and Structs
/// @notice This interface defines the types and structs used in the portal
interface IPortalTypes {
    //
    // public constants
    //

    //
    // Types and Structs
    //

    /// @dev curve Types
    enum CurveType {
        CURVE_LEGACY_15, // r = 15
        CURVE_4, // r = 4
        CURVE_0_974, // r = 0.974
        CURVE_0_5, // r = 0.5
        CURVE_1000, // r = 1000
        CURVE_20000, // r = 20000
        CURVE_2500, // r = 2500
        CURVE_3, // r = 3
        CURVE_2, // r = 2
        CURVE_6 // r = 6

    }

    /// @dev Token version
    /// Which token implementation is used
    enum TokenVersion {
        TOKEN_LEGACY_MINT_NO_PERMIT,
        TOKEN_LEGACY_MINT_NO_PERMIT_DUPLICATE, // for historical reasons, both 0 and 1 are the same: TOKEN_LEGACY_MINT_NO_PERMIT
        TOKEN_V2_PERMIT, // 2
        TOKEN_GOPLUS, // 3
        TOKEN_TAXED // 4: The token is tax enabled

    }

    /// @dev dex threshold types
    enum DexThreshType {
        TWO_THIRDS, //  66.67% supply
        FOUR_FIFTHS, // 80% supply
        HALF, // 50% supply
        _95_PERCENT, // 95% supply
        _81_PERCENT, // 81% supply
        _1_PERCENT // 1% supply => mainly for testing

    }

    /// @dev the quote token, i.e, the token as the reserve
    enum QuoteTokenType {
        NATIVE_GAS_TOKEN, // The native gas token
        ERC20_TOKEN_WITH_PERMIT, //  The ERC20 token with permit
        ERC20_TOKEN_WITHOUT_PERMIT // The ERC20 token without permit

    }

    /// @notice the status of a token
    /// The token has 4 statuses:
    //    - Tradable: The token can be traded(buy/sell)
    //    - InDuel: (obsolete) The token is in a battle, it can only be bought but not sold.
    //    - Killed: (obsolete) The token is killed, it can not be traded anymore. Can only be redeemed for another token.
    //    - DEX: The token has been added to the DEX
    enum TokenStatus {
        Invalid, // The token does not exist
        Tradable,
        InDuel, // obsolete
        Killed, // obsolete
        DEX
    }

    /// @notice the migrator type
    /// @dev the migrator type determines how the liquidity is added to the DEX.
    /// Note: To mitigate the risk of DOS, if a V3 migrator is used but the liquidity cannot
    /// be added to v3 pools, the migrator will fallback to a V2 migrator.
    /// A TAX token must use a V2 migrator.
    enum MigratorType {
        V3_MIGRATOR, // Migrate the liquidity to a Uniswap V3 like pool
        V2_MIGRATOR // Migrate the liquidity to a Uniswap V2 like pool

    }

    /// @notice the state of a token (with dex related fields)
    struct TokenStateV2 {
        TokenStatus status; // the status of the token
        uint256 reserve; // the reserve of the token
        uint256 circulatingSupply; // the circulatingSupply of the token
        uint256 price; // the price of the token
        TokenVersion tokenVersion; // the version of the token implementation this token is using
        uint256 r; // the r of the curve of the token
        uint256 dexSupplyThresh; // the cirtulating supply threshold for adding the token to the DEX
    }

    /// @notice the state of a token (with all V2 fields plus quoteTokenAddress and nativeToQuoteSwapEnabled)
    struct TokenStateV3 {
        /// The status of the token (see TokenStatus enum)
        TokenStatus status;
        /// The reserve amount of the quote token held by the bonding curve
        uint256 reserve;
        /// The circulating supply of the token
        uint256 circulatingSupply;
        /// The current price of the token (in quote token units, 18 decimals)
        uint256 price;
        /// The version of the token implementation (see TokenVersion enum)
        TokenVersion tokenVersion;
        /// The curve parameter 'r' used for the bonding curve
        uint256 r;
        /// The circulating supply threshold for adding the token to the DEX
        uint256 dexSupplyThresh;
        /// The address of the quote token (address(0) if native gas token)
        address quoteTokenAddress;
        /// Whether native-to-quote swap is enabled for this token
        bool nativeToQuoteSwapEnabled;
    }

    /// @notice Parameters for creating a new token (V2)
    struct NewTokenV2Params {
        /// The name of the token
        string name;
        /// The symbol of the token
        string symbol;
        /// The metadata URI of the token
        string meta;
        /// The DEX supply threshold type
        DexThreshType dexThresh;
        /// The salt for deterministic deployment
        bytes32 salt;
        /// The tax rate in basis points (if non-zero, this is a tax token)
        uint16 taxRate;
        /// The migrator type (see MigratorType enum)
        MigratorType migratorType;
        /// The quote token address (native gas token if zero address)
        address quoteToken;
        /// The initial quote token amount to spend for buying
        uint256 quoteAmt;
        /// The beneficiary address for the token
        /// For rev share tokens, this is the address that can claim the LP fees
        /// For tax tokens, this is the address that receives the tax fees
        address beneficiary;
        /// The optional permit data for the quote token
        bytes permitData;
    }

    /// @dev The configuration of the "native to quote" swap
    /// i.e How to swap ETH for the quote token when the quote token is not ETH
    enum NativeToQuoteSwapType {
        SWAP_DISABLED, // 0: disabled
        SWAP_VIA_V2_POOL, // 1: swap through v2 pool
        SWAP_VIA_V3_2500_POOL, // 2: swap through v3 2500 pool
        SWAP_VIA_V3_500_POOL // 3: swap through v3 500 pool

    }

    /// @dev  the quote token configurations
    struct QuoteTokenConfiguration {
        uint8 enabled; // 8bit: 1 if allowed, 0 if not allowed
        CurveType defaultCurve; // 8bit: the default token curve type of the quote token
        CurveType alternativeCurve; // 8bit: the alternative token curve type of the quote token
        NativeToQuoteSwapType nativeToQuoteSwapType; // 8bit: the native to quote swap feature configuration of the quote token
    }

    //
    // Events
    //

    /// @notice emitted when a new token is created
    ///
    /// @param ts The timestamp of the event
    /// @param creator The address of the creator
    /// @param nonce The nonce of the token
    /// @param token  The address of the token
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta The meta URI of the token
    event TokenCreated(
        uint256 ts, address creator, uint256 nonce, address token, string name, string symbol, string meta
    );

    /// @notice emitted when a token is bought
    ///
    /// @param ts The timestamp of the event
    /// @param token  The address of the token
    /// @param buyer  The address of the buyer
    /// @param amount  The amount of tokens bought
    /// @param eth  The amount of ETH spent
    /// @param fee The amount of ETH spent on fee
    /// @param postPrice The price of the token after this trade
    event TokenBought(
        uint256 ts, address token, address buyer, uint256 amount, uint256 eth, uint256 fee, uint256 postPrice
    );

    /// @notice emitted when a token is sold
    ///
    /// @param ts The timestamp of the event
    /// @param token  The address of the token
    /// @param seller  The address of the seller
    /// @param amount  The amount of tokens sold
    /// @param eth  The amount of ETH received
    /// @param fee  The amount of ETH deducted as a fee
    /// @param postPrice The price of the token after this trade
    event TokenSold(
        uint256 ts, address token, address seller, uint256 amount, uint256 eth, uint256 fee, uint256 postPrice
    );

    /// emitted when a token's curve is set
    /// @param token The address of the token
    /// @param curve The address of the curve
    /// @param curveParameter The parameter of the curve
    event TokenCurveSet(address token, address curve, uint256 curveParameter);

    /// emitted when a token's dexSupplyThresh is set
    /// @param token The address of the token
    /// @param dexSupplyThresh The new dexSupplyThresh of the token
    event TokenDexSupplyThreshSet(address token, uint256 dexSupplyThresh);

    /// emitted when a token's implementation is set
    /// @param token The address of the token
    /// @param version The version of the token
    event TokenVersionSet(address token, TokenVersion version);

    /// @notice emitted when a new vanity token is created
    /// @param token The address of the created token
    /// @param creator The address of the creator
    /// @param beneficiary The address of the beneficiary
    event VanityTokenCreated(address token, address creator, address beneficiary);

    /// @notice emitted when a token's quote token is set
    /// @param token The address of the token
    /// @param quoteToken The address of the quote token
    event TokenQuoteSet(address token, address quoteToken);

    /// @notice emitted when a token's migrator is set
    /// @param token The address of the token
    /// @param migratorType The migrator type
    event TokenMigratorSet(address token, MigratorType migratorType);

    //
    // events
    //

    /// @notice emitted when token is redeemed
    /// @param ts The timestamp of the event
    /// @param srcToken The address of the token to redeem
    /// @param dstToken The address of the token to receive
    /// @param srcAmount The amount of srcToken to redeem
    /// @param dstAmount The amount of dstToken to receive
    /// @param who The address of the redeemer
    event TokenRedeemed(
        uint256 ts, address srcToken, address dstToken, uint256 srcAmount, uint256 dstAmount, address who
    );

    /// @notice emitted when the bit flags are changed
    /// @param oldFlags The old flags
    /// @param newFlags The new flags
    event BitFlagsChanged(uint256 oldFlags, uint256 newFlags);

    /// @notice emitted when adding liquidity to DEX
    /// @param token The address of the token
    /// @param pool The address of the pool
    /// @param amount The amount of token added
    /// @param eth The amount of quote Token added
    event LaunchedToDEX(address token, address pool, uint256 amount, uint256 eth);

    //
    // Token V2 supply change
    //

    /// @notice emitted when the circulating supply of a token changes
    /// @param token The address of the token
    /// @param newSupply The new circulating supply
    event FlapTokenCirculatingSupplyChanged(address token, uint256 newSupply);

    /// @notice emitted when a new tax is set for a token
    /// @param token The address of the token
    /// @param tax The tax value set for the token
    event FlapTokenTaxSet(address token, uint256 tax);

    // operation related
    // should remove later

    /// @notice emitted when a users successfully checked in
    /// @param user The address of the user
    event CheckedIn(address user);

    /// @notice emitted when a beneficiary claims fees
    /// @param token The address of the token
    /// @param beneficiary The address of the beneficiary
    /// @param tokenAmount The amount of the token claimed
    /// @param ethAmount The amount of ETH claimed
    event BeneficiaryClaimed(
        address indexed token, address indexed beneficiary, uint256 tokenAmount, uint256 ethAmount
    );

    //
    // Custom Errors
    //

    /// @notice error if the dex is both pancake and algebra1.9
    ///         which is impossible
    error DEXCannotBeBothPancakeAndAlgebra1_9();

    /// @notice error if the token does not exist
    error TokenNotFound(address token);

    /// @notice error if the amount is too small
    error AmountTooSmall(uint256 amount);

    /// @notice error if slippage is too high
    /// i.e: actualAmount < minAmount
    error SlippageTooHigh(uint256 actualAmount, uint256 minAmount);

    /// @notice error if the input token & output token of a swap is the same
    error SameToken(address tokenA);

    /// @notice error if trying to trade a killed token
    error TokenKilled(address token);

    /// @notice error if token is not tradable
    error TokenNotTradable(address token);

    /// @notice error if trying to sell a token that is in a battle
    error TokenInDuel(address token);

    /// @notice error if trying to redeem a token that is not killed
    error TokenNotKilled(address token);

    /// @notice error if the token has already been added to the DEX
    error TokenAlreadyDEXed(address token);

    /// @notice error if the token is not listed on DEX yet
    error TokenNotDEXed(address token);

    /// @notice error if there is no conversion path from srcToken to dstToken
    error NoConversionPath(address srcToken, address dstToken);

    /// @notice error if the game not started
    error GameNotStarted();

    /// @notice error if the round is not found
    error RoundNotFound(uint256 id);

    /// @notice error if the game is not pending
    error GameNotPending();

    /// @notice error if the game is not paused
    error GameNotPaused();

    /// @notice error if the game is not live
    error GameNotLive();

    /// @notice error if the round id is invalid
    error InvalidRoundID(uint256 id);

    /// @notice error if try to start a new round but the last round is not resolved
    error LastRoundNotResolved();

    /// @notice cannot use a token for the next round of the game
    error InvalidTokenForBattle(address token);

    /// @notice error if the signature is invalid
    error InvalidSigner(address signer);

    /// @notice error if the seq is not found in Game queue
    error SeqNotFound(uint256 seq);

    /// @notice error if not implemented yet
    error NotImplemented();

    /// @notice error a token is already in the game
    error TokenAlreadyInGame(address token);

    /// @notice error if a call reverted but without any data
    error CallReverted();

    /// @notice error if creating token is disabled
    error PermissionlessCreateDisabled();

    /// @notice error if trading is disabled
    error TradeDisabled();

    /// @notice error if the circuit breakers are off
    error ProtocolDisabled();

    /// @notice error if the game supply threshold is not valid
    error InvalidGameSupplyThreshold();

    /// @notice error if the dex supply threshold is not valid
    error InvalidDEXSupplyThreshold();

    /// @notice error if the proof does not match the msg.sender
    error MismatchedAddressInProof(address expected, address actual);

    /// @notice error if the whitlist creator cannot create more tokens
    error NoQuotaForCreator(uint256 created, uint256 max);

    /// @notice error if the piggyback lenght is not valid
    error InvalidPiggybackLength(uint256 expected, uint256 actual);

    /// @notice error if the feature is disabled
    error FeatureDisabled();

    /// @notice error if the dex threshold type is invalid
    error InvalidDexThresholdType(DexThreshType threshold);

    /// @notice error if the quote token is not allowed
    error QuoteTokenNotAllowed(address quoteToken);

    /// @notice error if a native to quote swap is required but not supported
    /// native to quote swap: i.e, swap the input token to the desired quote token
    error NativeToQuoteSwapNotSupported();

    /// @notice error if the native to quote swap v3 fee type is not supported
    /// @param NativeToQuoteSwapType The unsupported native to quote swap type
    error NativeToQuoteSwapFeeTierNotSupported(uint8 NativeToQuoteSwapType);

    //
    // Dex Related
    //

    /// @notice error if sqrPriceA is gte than sqrtPriceB
    error PriceAMustLTPriceB(uint160 sqrtPriceA, uint160 sqrtPriceB);

    /// @notice error if the actual amount is more than the expected amount
    error ActualAmountMustLTEAmount(uint256 actualAmount, uint256 amount1);

    /// @notice error if the msg.sender is not a Uniswap V3 pool
    error NotUniswapV3Pool(address sender);

    /// @notice error if the uniswap v2 pool's liquidity is not zero
    error UniswapV2PoolNotZero(address pool, uint256 liquidity);

    /// @notice error if the required token amount for adding Uniswap v2 liquidity is more than the remaining token
    error RequiredTokenMustLTE(uint256 requiredToken, uint256 reserveToken);

    /// @notice revert when calling slot0 of a Uniswap V3 pool failed
    error UniswapV3Slot0Failed();

    /// @notice error if a non-position NFT is received
    error NonPositionNFTReceived(address collection);

    /// @notice error if the provided dex threshold is invalid
    error InvalidDexThreshold(uint256 threshold);

    //
    // staking related
    //

    /// @notice error if the locks are invalid
    error InvalidLocks();

    /// @notice error if staking feature is not enabled
    error StakingDisabled();

    /// @notice error if the operator does not have the roller role
    error NotRoller();

    // operation related

    /// @notice error if the user cannot check in yet
    /// @param next The timestamp when the user can check in again
    error cannotCheckInUntil(uint256 next);

    // misc

    /// @notice error if another token has the same meta
    error MetaAlreadyUsedByOtherToken(string meta);

    /// @notice error if the creation fee is insufficient
    error InsufficientCreationFee(uint256 required, uint256 provided);

    /// @notice error if the curve type is invalid
    /// @param curveType The invalid curve type
    error InvalidCurveType(CurveType curveType);

    /// @notice error if the provided ETH is insufficient to cover the required fee
    /// @param required The required fee amount
    /// @param provided The provided ETH amount
    error InsufficientFee(uint256 required, uint256 provided);

    /// @notice error if the vanity address requirement is not met
    /// @param token The generated token address
    error VanityAddressRequirementNotMet(address token);

    /// @notice error if the token is not in DEX status
    error TokenNotInDEXStatus(address token);

    /// @notice error if the caller is not the token's beneficiary
    error CallerNotBeneficiary(address caller, address expected);

    /// @notice error if no locks are available for the token
    error NoLocksAvailable(address token);

    /// @notice error if the provided ETH is insufficient to cover the required input amount
    /// @param provided The provided ETH amount
    /// @param required The required ETH amount
    error InsufficientEth(uint256 provided, uint256 required);

    /// @notice error if the provided tax bps is invalid
    /// @param tax The provided tax bps
    error InvalidTaxBps(uint256 tax);

    /// @notice error if the transferFrom call failed
    /// @param token The address of the token
    /// @param from The address from which the tokens were to be transferred
    /// @param amount The amount of tokens that were to be transferred
    error TransferFromFailed(address token, address from, uint256 amount);

    /// @notice error if the migrator type is invalid
    error InvalidMigratorType();

    /// @notice error if the quote token is not native but not using PortalTradeV2
    error QuoteTokenNotNativeButNotUsingTradeV2();

    /// @notice error if the msg.value is less than expected value when creating
    /// a tax token using an ERC20 (e.g: USDC) token as the quote token.
    /// @dev For the tax token's tax splitter to work properly, we need approximately 1gwei due to our
    /// implemenation of the tax splitter.
    error InsufficientValueForTaxTokenCreation(uint256 expected, uint256 provided);

    /// @notice error if the caller is not a guardian or admin
    /// @param caller The address of the caller
    error NotGuardian(address caller);
}

/// @title IPortalLauncher Interface
/// @notice Handles token creation and related operations
interface IPortalLauncher is IPortalTypes {
    /// @notice Create a new meme token (duel is deprecated, this is an alias to newTokenNoDuel)
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta  The metadata URI of the token
    /// @dev if msg.value is not zero, the caller would be the initial buyer of the token
    function newToken(string calldata name, string calldata symbol, string calldata meta)
        external
        payable
        returns (address token);

    /// @notice Create a new meme token without duel
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta  The metadata URI of the token
    /// @dev if msg.value is not zero, the caller would be the initial buyer of the token
    function newTokenNoDuel(string calldata name, string calldata symbol, string calldata meta)
        external
        payable
        returns (address token);

    /// @notice Create a new token with customized dex supply threshold
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta  The metadata URI of the token
    /// @param supplyTresh The circulating supply threshold for adding the token to the DEX
    /// @dev if msg.value is not zero, the caller would be the initial buyer of the token
    function newTokenWithDexSupplyThresh(
        string calldata name,
        string calldata symbol,
        string calldata meta,
        DexThreshType supplyTresh
    ) external payable returns (address token);

    /// @notice Create a new vanity token
    /// @param name The name of the token
    /// @param symbol The symbol of the token
    /// @param meta The metadata URI of the token
    /// @param salt The salt for deterministic deployment
    /// @param beneficiary The address of the beneficiary
    /// @return token The address of the created token
    function newVanityToken(
        string calldata name,
        string calldata symbol,
        string calldata meta,
        bytes32 salt,
        address beneficiary
    ) external payable returns (address token);

    /// @notice Create a new vanity token with a custom DEX supply threshold
    /// @param name The name of the token
    /// @param symbol The symbol of the token
    /// @param meta The metadata URI of the token
    /// @param supplyThresh The DEX supply threshold
    /// @param salt The salt for deterministic deployment
    /// @param beneficiary The address of the beneficiary
    /// @return token The address of the created token
    function newVanityTokenWithDexSupplyThresh(
        string calldata name,
        string calldata symbol,
        string calldata meta,
        DexThreshType supplyThresh,
        bytes32 salt,
        address beneficiary
    ) external payable returns (address token);

    /// @notice Create a new tax-enabled vanity token
    /// @param name The name of the token
    /// @param symbol The symbol of the token
    /// @param meta The metadata URI of the token
    /// @param salt The salt for deterministic deployment
    /// @param beneficiary The address of the beneficiary (and tax splitter)
    /// @param tax The tax rate in basis points (1/100 of a percent)
    /// @return token The address of the created token
    function newTaxToken(
        string calldata name,
        string calldata symbol,
        string calldata meta,
        bytes32 salt,
        address beneficiary,
        uint16 tax
    ) external payable returns (address token);

    /// @notice Create a new token (V2) with flexible parameters
    /// @param params The parameters for the new token
    /// @return token The address of the created
    /// @dev due to the implementation limit, when creating a tax token and using an ERC20 token as the quote token,
    /// You need to pay an extra 1gwei native gas token (i.e msg.value = 1 gwei), or you will encounter an InsufficientValueForTaxTokenCreation error
    function newTokenV2(NewTokenV2Params calldata params) external payable returns (address token);

    /// @notice Get the current nonce of the portal
    function nonce() external view returns (uint256);

    /// @notice Get token state
    /// @param token  The address of the token
    /// @return state  The state of the token
    function getTokenV2(address token) external view returns (TokenStateV2 memory state);
    /// @notice Get token state (V3)
    /// @param token  The address of the token
    /// @return state  The state of the token (V3)
    function getTokenV3(address token) external view returns (TokenStateV3 memory state);

    /// @notice Set the configuration for a quote token
    /// @dev Only callable by the default admin
    /// @param quoteToken The address of the quote token
    /// @param config The configuration struct for the quote token
    function setQuoteTokenConfiguration(address quoteToken, QuoteTokenConfiguration calldata config) external;
}

/// @title IPortalTrade Interface
/// @notice Handles token trading and redemption
interface IPortalTrade is IPortalTypes {
    /// @notice Buy token with ETH on creation
    /// @param token  The address of the token to buy
    /// @param recipient  The address to send the token to
    /// @param inputAmount The amount of ETH to spend
    ///
    /// @dev  This function is mainly for internal use (be delegated called from the portal contract)
    ///       The msg.value can be greater than inputAmount, the excess ETH will not be
    ///       refunded to the caller. They will be charged as a fee.
    ///
    ///       Note: the slippage is not checked in this function.
    ///
    function buyOnCreation(address token, address recipient, uint256 inputAmount)
        external
        payable
        returns (uint256 amount);

    /// @notice Buy token with ETH
    /// @param token  The address of the token to buy
    /// @param recipient  The address to send the token to
    /// @param minAmount  The minimum amount of tokens to buy
    function buy(address token, address recipient, uint256 minAmount) external payable returns (uint256 amount);

    /// @notice Sell token for ETH
    /// @param token  The address of the token to sell
    /// @param amount The amount of tokens to sell
    /// @param minEth The minimum amount of ETH to receive
    function sell(address token, uint256 amount, uint256 minEth) external returns (uint256 eth);

    /// @notice Redeem a killed token for another token
    /// @param srcToken The address of the token to redeem
    /// @param dstToken The address of the token to receive
    /// @param srcAmount The amount of srcToken to redeem
    /// @return dstAmount The amount of dstToken to receive
    function redeem(address srcToken, address dstToken, uint256 srcAmount) external returns (uint256 dstAmount);

    /// @notice Preview the amount of tokens to buy with ETH
    /// @param token  The address of the token to buy
    /// @param eth  The amount of ETH to spend
    /// @return amount  The amount of tokens to buy
    function previewBuy(address token, uint256 eth) external view returns (uint256 amount);

    /// @notice Preview the amount of ETH to receive for selling tokens
    /// @param token  The address of the token to sell
    /// @param amount  The amount of tokens to sell
    /// @return eth  The amount of ETH to receive
    function previewSell(address token, uint256 amount) external view returns (uint256 eth);

    /// @notice Preview redeem
    /// @param srcToken The address of the token to redeem
    /// @param dstToken The address of the token to receive
    /// @param srcAmount The amount of srcToken to redeem
    /// @return dstAmount The amount of dstToken to receive
    function previewRedeem(address srcToken, address dstToken, uint256 srcAmount)
        external
        view
        returns (uint256 dstAmount);
}

/// @title IPortalTradeV2 Interface
/// @notice Handles unified token swaps and quoting
interface IPortalTradeV2 is IPortalTypes {
    /// @notice Parameters for swapping exact input amount for output token
    struct ExactInputParams {
        /// @notice The address of the input token (use address(0) for native asset)
        address inputToken;
        /// @notice The address of the output token (use address(0) for native asset)
        address outputToken;
        /// @notice The amount of input token to swap (in input token decimals)
        uint256 inputAmount;
        /// @notice The minimum amount of output token to receive
        uint256 minOutputAmount;
        /// @notice Optional permit data for the input token (can be empty)
        bytes permitData;
    }

    /// @notice Parameters for quoting the output amount for a given input
    struct QuoteExactInputParams {
        /// @notice The address of the input token (use address(0) for native asset)
        address inputToken;
        /// @notice The address of the output token (use address(0) for native asset)
        address outputToken;
        /// @notice The amount of input token to swap (in input token decimals)
        uint256 inputAmount;
    }
    /// @notice Swap exact input amount for output token
    /// @param params The swap parameters
    /// @return outputAmount The amount of output token received
    /// @dev Here are some possible scenarios:
    ///   If the token's reserve is BNB or ETH (i.e: the quote token is the native gas token):
    ///      - BUY: input token is address(0), output token is the token address
    ///      - SELL: input token is the token address, output token is address(0)
    ///   If the token's reserve is another ERC20 token (eg. USD*, i.e, the quote token is an ERC20 token):
    ///      - BUY with USD*: input token is the USD* address, output token is the token address
    ///      - SELL for USD*: input token is the token address, output token is the USD* address
    ///      - BUY with BNB or ETH: input token is address(0), output token is the token address.
    ///        (Note: this requires an internal swap to convert BNB/ETH to USD*, nativeToQuoteSwap must be anabled for this quote token)
    /// Note: Currently, this method only supports trading tokens that are still in the bonding curve state.
    ///       However, in the future, we may also support trading tokens that are already in DEX state.

    function swapExactInput(ExactInputParams calldata params) external payable returns (uint256 outputAmount);
    /// @notice Quote the output amount for a given input
    /// @param params The quote parameters
    /// @return outputAmount The quoted output amount
    /// @dev refer to the swapExactInput method for the scenarios
    function quoteExactInput(QuoteExactInputParams calldata params) external returns (uint256 outputAmount);
}

/// @title IPortalCore Interface
/// @notice Combines IPortalLauncher and IPortalTrade
interface IPortalCore is IPortalLauncher, IPortalTrade, IPortalTradeV2 {}

/// @title IPortalMigrator Interface
/// @notice Add liquidity from the bonding curve to DEX
/// @dev this is not a public interface of the portal.
///      All the functions of this interface are either called from the portal
///      or from the UniswapV3Pool contract.
interface IPortalMigrator {
    /// @notice Add liquidity to DEX
    /// @param token The address of the token
    /// @dev This is an internal function
    ///      Any dispatch to this function should be checked in portal contract
    ///      This function may be dellegated called from a payable function.
    function luanchToDEX(address token) external payable;
}

/// @title IRoller Interface
/// @notice This acts as the glue between the portal and the flap staking contract
interface IRoller {
    /// @notice The lock the token is using
    enum LockType {
        INVALID_LOCK, // Invalid lock
        UNCX_LOCK, // The UNCX lock
        GOPLUS_UNIV3_LOCK, // The Goplus UNIv3 lock
        TOSHI_LP_LOCK, // The Toshi LP lock
        IZI_LP_LOCK // The IziSwap LP locker

    }

    /// @notice get the locks by token address
    /// @param token The address of the token
    /// @return locks The lock ids of the token
    function getLocks(address token) external view returns (uint256[] memory locks);

    /// @dev deprecated
    function rollv2(bytes calldata packedParams) external;

    /// @notice Revenue Share: Claim LP fees for a vanity token
    /// @param token The address of the token
    /// @return tokenAmount The amount of the token claimed
    /// @return ethAmount The amount of ETH claimed
    /// @dev Only the beneficiary of the token can call this function.
    function claim(address token) external returns (uint256 tokenAmount, uint256 ethAmount);

    /// @notice Allows the default admin to change the beneficiary of a token
    /// @param token The address of the token
    /// @param newBeneficiary The new beneficiary address
    function setTokenBeneficiary(address token, address newBeneficiary) external;

    /// @notice Allows a roller or default admin to claim LP fees on behalf of the beneficiary
    /// @param token The address of the token
    /// @return tokenAmount The amount of the token claimed
    /// @return quoteAmount The amount of quote token (or ETH) claimed
    /// @dev Only the roller or default admin can call this function.
    /// The claimed fee will be sent to the beneficiary of the token.
    function delegateClaim(address token) external returns (uint256 tokenAmount, uint256 quoteAmount);
}

/// @title Portal Interface
/// @notice This interface combines the core and game interfaces
interface IPortal is IPortalCore, IAccessControlUpgradeable, IRoller {
    /// @notice Get the version of the portal
    /// @return The version string
    function version() external view returns (string memory);

    /// @notice Change the protocol bit flags
    /// @dev Can only be called with DEFAULT_ADMIN_ROLE
    /// @param flags The new flags
    function setBitFlags(uint256 flags) external;

    /// @notice Can only be called by the guardian role or the default admin role
    /// @dev This function is used to pause the protocol
    function halt() external;
}
