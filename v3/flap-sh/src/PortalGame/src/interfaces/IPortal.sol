// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IAccessControl} from "@openzeppelin/access/IAccessControl.sol";
import {IUniswapV3MintCallback} from "uni-v3-core/interfaces/callback/IUniswapV3MintCallback.sol";
import {IPancakeV3MintCallback} from "pancake-v3-core/interfaces/callback/IPancakeV3MintCallback.sol";

/// @title Types and Structs
/// @notice This interface defines the types and structs used in the portal
///
/// How the duel works:
///
///    - When the supply of a token reaches the GAME_SUPPLY_THRESHOLD,
///      the token will be automatically added to the game queue.
///      When adding a token to the game queue, the token is assigned with a sequence number.
///      The sequence number is an auto-increment number starting from 0.
///
///    - For each round of the game, two tokens will be put into a duel.
///       - one token is the last winner
///       - the other token is the next token that has not been in a duel yet from the game queue.
///
///    - When the duel starts, for the two tokens in the duel, you can only buy but not sell.
///
///    - When the duel ends, the winner will be determined by the increase in the reserve during the duel.
///      The token with the larger increase in reserve will be the winner. s
///      All the reserve of the loser will be used to buy the winner's token. The bought winner tokens are temporarily
///      saved in the portal contract. The loser token holder can later redeem the loser token for the winner token.
//
interface IPortalTypes {
    //
    // public constants
    //

    /// @notice the role of the guardian
    function GUARDIAN_ROLE() external pure returns (bytes32);
    /// @notice the role of the whiltelist signer
    function WHITELIST_SIGNER_ROLE() external pure returns (bytes32);

    //
    // Types and Structs
    //

    /// @notice enum:  the status of the game
    ///   - The game must be manually start by the contract owner before it can be live
    ///   - The game can be paused by the contract owner if something goes wrong
    enum GameStatus {
        Pending, // the game is disabled
        Paused, // the game is paused
        Live // the game is live

    }

    /// @notice the status of a round in a game
    /// Each round of the game has 3 phases:
    ///    - Duel: Two meme coins are in a ballte, the two tokens can only be bought but not sold.
    ///    - Resolving: Battle phase ends, but the result is not resolved yet.
    ///    - Resolved: The result of the battle is resolved.
    enum RoundStatus {
        Invalid, // The round does not exist
        Duel,
        Resolving, // only used in view returns
        Resolved
    }

    /// @notice the status of a token
    /// The token has 4 statuses:
    //    - Tradable: The token can be traded(buy/sell)
    //    - InDuel:  The token is in a battle, it can only be bought but not sold.
    //    - Killed:  The token is killed, it can not be traded anymore. Can only be redeemed for another token.
    //    - DEX: The token has been added to the DEX
    enum TokenStatus {
        Invalid, // The token does not exist
        Tradable,
        InDuel,
        Killed,
        DEX
    }

    /// @notice The mode of a token
    ///  - MODE_DEX_LISTING_AFTER_DUEL: The token can only be listed on DEX after winning one ore more duels
    ///  - MODE_NO_DUEL: the token will not go to the duel but directly be listed on DEX after reaching the threshold
    enum TokenMode {
        MODE_DEX_LISTING_AFTER_DUEL,
        MODE_NO_DUEL
    }

    /// @notice the state of a Round
    struct RoundState {
        uint256 id; // the id of the round
        RoundStatus status; // the status of the round
        address tokenA; // the tokenA in the battle
        address tokenB; // the tokenB in the battle
        uint256 deltaReserveA; // The increase in reserve of tokenA in the battle
        uint256 deltaReserveB; // The increase in reserve of tokenB in the battle
        // time parameters
        uint256 startBlock; // The block number when the round starts
        uint256 endBlock; // The block number when the round ends
    }

    /// @notice the state of the game
    struct GameState {
        GameStatus status; // the status of the game
        uint256 currentRound; // only valid when the status > Pending
        // The current champion, which is being challenged in the current round, or the next round (when no chanllengers available yet)
        //  - it could be the winner of the last round
        //  - or, if the winner of last round has been added to the DEX, this is the next token in the game
        //  - or, if no rounds can be started, this is zero address
        address champion;
        uint256 nextSeq; // The sequence of the token to be involved in the next coming round
        uint256 total; // Total number of tokens in the game
        // day info
        //  - for each day, duels start at the fixed time
        //  - for each day, the maximum new tokens that can be put into a duel is limited
        uint256 todayStartTimestamp; // The timestamp of the start of the lastest day
        uint256 todayEndSeq; // only the tokens in the queue before this seq can be put into duels today
    }

    /// @notice the state of a token
    struct TokenState {
        TokenStatus status; // the status of the token
        uint256 reserve; // the reserve of the token
        uint256 supply; // the supply of the token
        uint256 price; // the price of the token
        bool inGame; // is the token in the game
        uint256 seqInGame; // the sequence of the token in the game (only valid when inGame is true)
    }

    /// @notice the state of a token (with an extra mode field)
    struct TokenStateEx {
        TokenStatus status; // the status of the token
        uint256 reserve; // the reserve of the token
        uint256 supply; // the supply of the token
        uint256 price; // the price of the token
        bool inGame; // is the token in the game
        uint256 seqInGame; // the sequence of the token in the game (only valid when inGame is true)
        TokenMode mode; // the mode of the token
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

    /// emitted when the mode of a token changes
    /// @dev Note: The default mode of a token is MODE_DEX_LISTING_AFTER_DUEL when no such event is emitted
    /// @param token The address of the token
    /// @param mode The new mode of the token
    event TokenModeChanged(address token, TokenMode mode);

    //
    // events
    //

    // game related

    /// @notice emitted when a new token has been added to the game
    /// @param id The id of the token
    /// @param seq The sequence of the token in the game
    event GameJoined(uint256 id, uint256 seq);

    /// @notice emitted when the game started
    event GameStarted();

    /// @notice emitted when the game resumes
    event GameResumed();

    /// @notice emitted when the game pauses
    event GamePaused();

    /// @notice emitted when a new game day started
    /// @param startTs The timestamp of the start of the day
    /// @param startSeq The start sequence of the tokens that can be put into duels today
    /// @param endSeq The end sequence (not included) of the tokens that can be put into duels today
    event GameDayStarted(uint256 startTs, uint256 startSeq, uint256 endSeq);

    /// @notice emitted when a round in the game started
    ///         For each round, two tokens will be in a duel
    /// @param ts The timestamp of the event
    /// @param roundID The id of the round
    /// @param tokenA The address of the first token in the round
    /// @param tokenB The address of the second token in the round
    /// @param endBlock The block number when the round ends
    /// @param nextSeq The next sequence of the token in the game (after this round)
    event RoundStarted(uint256 ts, uint256 roundID, address tokenA, address tokenB, uint256 endBlock, uint256 nextSeq);

    /// @notice emitted when a round resolved
    /// @param ts The timestamp of the event
    /// @param roundID The id of the round
    /// @param winner The address of the winner
    /// @param loser The address of the loser
    /// @param rate The rate for redeeming loser coin for winner
    /// @param eth The amount of ETH used to pump the winner (i.e, the loser's reserve)
    /// @param amount The amount of winner token bought by the losers
    /// @param postPrice The price of the winner after the duel is resolved
    event RoundResultResolved(
        uint256 ts,
        uint256 roundID,
        address winner,
        address loser,
        uint256 rate,
        uint256 eth,
        uint256 amount,
        uint256 postPrice
    );

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

    /// @notice emitted when the thresholds are changed
    /// @param newGameSupplyThreshold The new game supply threshold
    /// @param newDEXSupplyThreshold The new DEX supply threshold
    event ThresholdsChanged(uint256 newGameSupplyThreshold, uint256 newDEXSupplyThreshold);

    /// @notice emitted when adding liquidity to DEX
    /// @param token The address of the token
    /// @param pool The address of the pool
    /// @param amount The amount of token added
    /// @param eth The amount of ETH added
    event LaunchedToDEX(address token, address pool, uint256 amount, uint256 eth);

    // operation related
    // should remove later

    /// @notice emitted when a users successfully checked in
    /// @param user The address of the user
    event CheckedIn(address user);

    //
    // Custom Errors
    //

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

    /// @notice error if try to add a token with mode MODE_NO_DUEL into the game
    error InvalidTokenModeForGame(address token, TokenMode mode);

    /// @notice error if the transition of the mode of the token is not allowed
    error InvalidTokenModeTransition(address token, TokenMode from, TokenMode to);

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

    // operation related

    /// @notice error if the user cannot check in yet
    /// @param next The timestamp when the user can check in again
    error cannotCheckInUntil(uint256 next);
}

/// @title Game Logic Interface
/// @notice This interface defines the game logic
interface IPortalGame is IPortalTypes {
    //
    // state mutating functions
    //

    /// @notice add one or more tokens to the game queue regardless of its supply
    /// @dev This should be rarely used. Can only called by the DEFAULT_ADMIN_ROLE
    ///      Most of the time, tokens should be added to the game queue automatically.
    /// @param ids The ids of the tokens to add
    function addGameTokens(uint256[] calldata ids) external;

    /// @notice Start the game, changing the status to Live
    /// @dev Can only be called by the DEFAULT_ADMIN_ROLE
    /// @dev revert if the game has already started
    function startGame() external;

    /// @notice Pause the game, changing the status to Paused
    /// @dev Can be called by the GUARDIAN_ROLE
    /// @dev revert if the game is not live
    function pauseGame() external;

    /// @notice Resume the game, changing the status to Live
    /// @dev Can be called by the GUARDIAN_ROLE
    /// @dev revert if the game is not paused
    function resumeGame() external;

    /// @notice try to transit the Game State
    function transitGameState() external payable;

    /// @notice only the DEFAULT_ADMIN_ROLE can change the Thresholds
    function setThresholds(uint256 gameSupplyThreshold, uint256 dexSupplyThreshold) external;

    //
    // View Functions
    //

    /// @notice Get the Latest Round
    /// @return state  The state of the round
    /// @dev a sugar function for getRound(getGame().currentRound)
    function getLatestRound() external view returns (RoundState memory state);

    /// @notice Get the Round state
    /// @param id  The id of the round
    /// @return state  The state of the round
    function getRound(uint256 id) external view returns (RoundState memory state);

    /// @notice Get game state
    /// @return state  The state of the game
    function getGame() external view returns (GameState memory state);

    /// @notice Get token in the Game queue by seq
    /// @param seq  The sequence of the token
    function getGameQueue(uint256 seq) external view returns (address token);

    /// @notice return the supply threshold for a token to be added to the game
    function GAME_SUPPLY_THRESHOLD() external view returns (uint256);

    /// @notice return the supply threshold for a winner token in game to be added to the DEX
    function DEX_SUPPLY_THRESHOLD() external view returns (uint256);

    /// @notice The orgnizer Role.
    /// When the orgnizer role calls the `transitGameState` function, and if all the duels the protocol
    /// would try to check if we have enough tokens in the game queue which can be scheduled in
    /// the next day. If so, the game would transit to the next day.
}

/// @title  Portal Interface
/// @author The Flap Team
/// @notice
interface IPortalCore is IPortalTypes {
    //
    // State Mutating Functions
    //

    /// @notice Create a new meme token  (The token can only be listed on DEX after winning at least one duel)
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta  The metadata URI of the token
    /// @dev if msg.value is not zero, the caller would be the initial buyer of the token
    function newToken(string calldata name, string calldata symbol, string calldata meta)
        external
        payable
        returns (address token);

    /// @notice Create a new meme token without duel (The token will be listed on DEX directly after reaching the DEX threshold)
    /// The token would never go into the duel
    /// @param name  The name of the token
    /// @param symbol  The symbol of the token
    /// @param meta  The metadata URI of the token
    /// @dev if msg.value is not zero, the caller would be the initial buyer of the token
    function newTokenNoDuel(string calldata name, string calldata symbol, string calldata meta)
        external
        payable
        returns (address token);

    /// @notice Buy token with ETH
    /// @param token  The address of the token to buy
    /// @param recipient  The address to send the token to
    /// @param minAmount  The minimum amount of tokens to buy
    function buy(address token, address recipient, uint256 minAmount) external payable returns (uint256 amount);

    /// @param token  The address of the token to sell
    /// @param amount The amount of tokens to sell
    /// @param minEth The minimum amount of ETH to receive
    function sell(address token, uint256 amount, uint256 minEth) external returns (uint256 eth);

    /// @notice If tokenA is killed in a battle by tokenB, redeem tokenA for tokenB
    /// @dev But this interface is more general, it may be used to redeem any killed token for another token.
    ///      However, it would revert if the pair is not valid.
    ///
    /// @param srcToken The address of the token to redeem
    /// @param dstToken The address of the token to receive
    /// @param srcAmount The amount of srcToken to redeem
    /// @return dstAmount The amount of dstToken to receive
    function redeem(address srcToken, address dstToken, uint256 srcAmount) external returns (uint256 dstAmount);

    // administration

    /// @notice change the protocol bit flags
    /// @dev can only be called with DEFAULT_ADMIN_ROLE
    /// @param flags The new flags
    function setBitFlags(uint256 flags) external;

    /// @notice change the mode of a token
    /// @dev
    ///    - from MODE_DEX_LISTING_AFTER_DUEL to MODE_NO_DUEL
    ///       - the token must be tradable
    ///       - the token must not be inGame already
    ///    - from MODE_NO_DUEL to MODE_DEX_LISTING_AFTER_DUEL
    ///       - the token must be tradable
    ///
    /// Can only be called by the DEFAULT_ADMIN_ROLE
    /// @param token The address of the token
    /// @param mode The new mode of the token
    function changeTokenMode(address token, TokenMode mode) external;

    // misc

    /// @notice check in (to earn airdrop points)
    /// everyday, a user can check in once to earn airdrop points
    function checkIn() external;

    //
    // View Funcitions
    //

    /// @notice Preview the amount of tokens to buy with ETH
    /// @param token  The address of the token to buy
    /// @param eth  The amount of ETH to spend
    /// @return amount  The amount of tokens to buy
    function previewBuy(address token, uint256 eth) external view returns (uint256 amount);

    /// @notice preview the amount of ETH to receive for selling tokens
    /// @param token  The address of the token to sell
    /// @param amount  The amount of tokens to sell
    /// @return eth  The amount of ETH to receive
    function previewSell(address token, uint256 amount) external view returns (uint256 eth);

    /// @notice Get the current nonce of the portal
    function nonce() external view returns (uint256);

    /// @notice preview redeem
    /// @param srcToken The address of the token to redeem
    /// @param dstToken The address of the token to receive
    /// @param srcAmount The amount of srcToken to redeem
    /// @return dstAmount The amount of dstToken to receive
    function previewRedeem(address srcToken, address dstToken, uint256 srcAmount)
        external
        view
        returns (uint256 dstAmount);

    /// @notice Get Token State
    /// @param token  The address of the token
    /// @return state  The state of the token
    function getToken(address token) external view returns (TokenState memory state);

    /// @notice Get Token State (with mode)
    /// @param token  The address of the token
    /// @return state  The state of the token
    function getTokenEx(address token) external view returns (TokenStateEx memory state);

    /// @notice get last check in timestamp of the user
    function lastCheckIn(address user) external view returns (uint256);
}

/// @title IDexLauncher Interface
/// @notice Add liquidity from the bonding curve to DEX
/// @dev this is not a public interface of the portal.
///      All the functions of this interface are either called from the portal
///      or from the UniswapV3Pool contract.
interface IDexLauncher is IUniswapV3MintCallback, IPancakeV3MintCallback {
    /// @notice Add liquidity to DEX
    /// @param token The address of the token
    /// @dev This is an internal function
    ///      Any dispatch to this function should be checked in portal contract
    ///      This function may be dellegated called from a payable function.
    function luanchToDEX(address token) external payable;
}

/// @title Portal Interface
/// @notice This interface combines the core and game interfaces
interface IPortal is IPortalCore, IPortalGame, IAccessControl {}
