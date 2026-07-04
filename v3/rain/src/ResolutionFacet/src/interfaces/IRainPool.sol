// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { ICancelOrder } from "../diamond/interfaces/ICancelOrder.sol";

import { IClaim } from "../diamond/interfaces/IClaim.sol";

import { IDispute } from "../diamond/interfaces/IDispute.sol";

import { IGetter } from "../diamond/interfaces/IGetter.sol";

import { IInfo } from "../diamond/interfaces/IInfo.sol";

import { IOracleFee } from "../diamond/interfaces/IOracleFee.sol";

import { IResolution } from "../diamond/interfaces/IResolution.sol";

import { ITrading } from "../diamond/interfaces/ITrading.sol";

import { Types } from "../diamond/shared/Types.sol";

import { IRainDeployer } from "./IRainDeployer.sol";

/**
 * @title IRainPool
 * @notice Interface for the RainPool contract.
 */
interface IRainPool is ICancelOrder, IClaim, IDispute, IGetter, IInfo, IOracleFee, IResolution, ITrading, Types {
    /* ============================= STRUCTS ====================================== */

    /**
     * @title Params
     * @dev Struct for the params of a rain pool.
     * @notice This struct holds all the necessary information for a rain pool.
     * @param initialLiquidity The initial liquidity amount deposited into the pool, distributed among options.
     * @param liquidityPercentages Percentage distribution of `initialLiquidity` among different options, must sum to 100.
     * @param isPublic Determines if the pool is public (`true`) or private (`false`).
     * @param resolverIsAI Determines if the owner of the pool is also the resolver of the pool.
     * @param deployerContract The address of the deployerContract that created the pool.
     * @param baseToken The address of the base token used in the pool for voting and liquidity contributions.
     * @param poolOwner The address of the owner who controls the pool.
     * @param platformAddress The address of the platform responsible for managing the pool.
     * @param resolver The address of the resolver responsible for selecting the winning option.
     * @param disputeResolver The address of the dispute resolver AI responsible for selecting the winning option
     *        for resolving disputed.
     * @param rainToken The address of the Rain token.
     * @param referrer The address of the referrer of the pool.
     * @param pathTokenWETH The uniswap-path router for swapping to get to RainToken.
     * @param baseTokenDecimals The number of decimals used for the base token.
     * @param startTime The timestamp when the pool becomes active.
     * @param endTime The timestamp when the pool ends.
     * @param numberOfOptions The total number of options available for voting.
     * @param platformFee The fee percentage taken by the platform (e.g., 2.5% is represented as 25).
     * @param liquidityFee The fee percentage allocated to liquidity providers (e.g., 1.2% is represented as 12).
     * @param creatorFee The fee percentage given to the pool creator (e.g., 1% is represented as 10).
     * @param resultResolverFee The fee percentage for resolving the pool results (e.g., 0.1% is represented as 1).
     * @param closingFee The fee percentage for closing the pool results (e.g., 0.2% is represented as 2).
     * @param oracleFixedFee The fixed fee charged for using an oracle.
     * @param oracleEndTime The timestamp when the oracle resolution period ends.
     * @param ipfsUri The IPFS URI storing metadata or additional pool-related information.
     */
    struct Params {
        uint256 initialLiquidity;
        uint256[] liquidityPercentages;
        bool isPublic;
        bool resolverIsAI;
        address deployerContract;
        address baseToken;
        address usdt;
        address poolOwner;
        address platformAddress;
        address resolver;
        address disputeResolver;
        address rainToken;
        address referrer;
        uint256 baseTokenDecimals;
        uint256 startTime;
        uint256 endTime;
        uint256 numberOfOptions;
        uint256 platformFee;
        uint256 liquidityFee;
        uint256 creatorFee;
        uint256 resultResolverFee;
        uint256 closingFee;
        uint256 oracleFixedFee;
        uint256 oracleEndTime;
        string ipfsUri;
        IRainDeployer.TokenData tokenData;
    }

    /// @notice Represents whether an order exists and its index in the linked list.
    struct OrderExists {
        /// @notice True if the order exists in the order book.
        bool exists;
        /// @notice Index of the order in the linked list.
        int256 index;
    }

    /* ============================= EVENTS ====================================== */

    /**
     * @dev Emitted when a user enters an option position.
     * @param option The identifier of the selected option.
     * @param baseAmount The amount of base asset used to enter the option.
     * @param optionAmount The amount of option asset received.
     * @param wallet The address of the user entering the option.
     */
    event EnterOption(uint256 option, uint256 baseAmount, uint256 optionAmount, address indexed wallet);

    /**
     * @dev Emitted when a user provides liquidity.
     * @param baseAmount The amount of base asset supplied as liquidity.
     * @param wallet The address of the user providing liquidity.
     */
    event EnterLiquidity(uint256 baseAmount, address indexed wallet);

    /**
     * @dev Emitted when vote synchronization occurs.
     * @param pair The identifier of the pair being synchronized.
     * @param optionVotes The number of votes for a specific option.
     * @param allVotes The total number of votes across all options.
     */
    event Sync(uint256 pair, uint256 optionVotes, uint256 allVotes);

    /**
     * @dev Emitted when the pool is closed or its status is updated.
     * @param poolStatus The new status of the pool (true if open, false if closed).
     */
    event ClosePool(bool poolStatus);

    /**
     * @notice Emitted when a winning option is finalized for the pool.
     * @param winnerOption The option number that has been chosen as the winner.
     * @param platformShare The amount of base tokens allocated to the platform.
     * @param liquidityShare The amount of base tokens allocated to liquidity providers.
     * @param winningShare The amount of base tokens distributed among users who voted for the winning option.
     */
    event ChooseWinner(uint256 winnerOption, uint256 platformShare, uint256 liquidityShare, uint256 winningShare);

    /**
     * @notice Emitted when a winning option is finalized for the pool a dispute.
     * @param winnerOption The option number that has been chosen as the winner.
     * @param platformShare The amount of base tokens allocated to the platform.
     * @param liquidityShare The amount of base tokens allocated to liquidity providers.
     * @param winningShare The amount of base tokens distributed among users who voted for the winning option.
     */
    event ChooseWinnerDispute(
        uint256 winnerOption,
        uint256 platformShare,
        uint256 liquidityShare,
        uint256 winningShare
    );

    /**
     * @notice Emitted when a winning option is finalized for the pool after an appeal.
     * @param winnerOption The option number that has been chosen as the winner.
     * @param platformShare The amount of base tokens allocated to the platform.
     * @param liquidityShare The amount of base tokens allocated to liquidity providers.
     * @param winningShare The amount of base tokens distributed among users who voted for the winning option.
     */
    event ChooseWinnerAppeal(uint256 winnerOption, uint256 platformShare, uint256 liquidityShare, uint256 winningShare);

    /**
     * @dev Emitted when a user claims their rewards.
     * @param wallet The address of the user claiming the rewards.
     * @param winnerOption The identifier of the winning option.
     * @param liquidityReward The portion of the reward allocated from liquidity.
     * @param reward The user's individual reward.
     * @param totalReward The total reward received, including all shares.
     */
    event Claim(
        address indexed wallet,
        uint256 winnerOption,
        uint256 liquidityReward,
        uint256 reward,
        uint256 totalReward
    );

    /**
     * @dev Emitted when a new oracle contract is created.
     * @param creatorContract The address of the contract that created the oracle.
     * @param createdContract The address of the newly created oracle contract.
     */
    event CreateOracle(address indexed creatorContract, address indexed createdContract);

    /**
     * @notice Emitted when the platform claims its share of the pool funds.
     * @param wallet The address of the platform wallet receiving the funds.
     * @param amount The amount claimed by the platform.
     */
    event PlatformClaim(address indexed wallet, uint256 amount);

    /**
     * @notice Emitted when the creator of the pool claims their share.
     * @param wallet The address of the pool creator.
     * @param amount The amount claimed by the creator.
     */
    event CreatorClaim(address indexed wallet, uint256 amount);

    /**
     * @notice Emitted when the `refferer` of the pool claims their share.
     * @param wallet The address of the pool ``referrer`.
     * @param amount The amount claimed by the ``referrer`.
     */
    event ReferrerClaim(address indexed wallet, uint256 amount);

    /**
     * @notice Emitted when the resolver claims their share for resolving the outcome.
     * @param wallet The address of the resolver.
     * @param amount The amount claimed by the resolver.
     */
    event ResolverClaim(address indexed wallet, uint256 amount);

    /**
     * @dev Emitted when a new oracle contract is created.
     * @param resolver The address of the resolver.
     */
    event ResolverSet(address indexed resolver);

    /**
     * @notice Emitted when a new sell order is placed.
     * @param orderOption The option the order is placed for.
     * @param orderPrice The price at which the option is being sold.
     * @param orderAmount The number of option tokens being sold.
     * @param orderID A unique identifier for the order.
     * @param maker The address of the user placing the order.
     */
    event PlaceSellOrder(
        uint256 orderOption,
        uint256 orderPrice,
        uint256 orderAmount,
        uint256 orderID,
        address indexed maker
    );

    /**
     * @notice Emitted when a new sell order is placed.
     * @param orderOption The option the order is placed for.
     * @param orderPrice The price at which the option is being bought.
     * @param orderAmount The number of option tokens being bought.
     * @param orderID A unique identifier for the order.
     * @param maker The address of the user placing the order.
     */
    event PlaceBuyOrder(
        uint256 orderOption,
        uint256 orderPrice,
        uint256 orderAmount,
        uint256 orderID,
        address indexed maker
    );

    /**
     * @notice Emitted when a sell order is fulfilled and the option tokens are bought.
     * @param orderOption The option being purchased.
     * @param orderPrice The price at which the order was fulfilled.
     * @param optionAmount The number of option tokens bought.
     * @param baseAmount The amount of base asset used to buy the option tokens.
     * @param orderID The unique identifier of the fulfilled order.
     * @param maker The address of the user who placed the sell order.
     * @param taker The address of the user who bought the option tokens.
     */
    event ExecuteSellOrder(
        uint256 orderOption,
        uint256 orderPrice,
        uint256 optionAmount,
        uint256 baseAmount,
        uint256 orderID,
        address indexed maker,
        address indexed taker
    );

    /**
     * @notice Emitted when a buy order is fulfilled and the option tokens are bought.
     * @param orderOption The option being purchased.
     * @param orderPrice The price at which the order was fulfilled.
     * @param optionAmount The number of option votes bought.
     * @param baseAmount The amount of base asset used to buy the option tokens.
     * @param orderID The unique identifier of the fulfilled order.
     * @param maker The address of the user who placed the buy order.
     * @param taker The address of the user who sold the option votes.
     */
    event ExecuteBuyOrder(
        uint256 orderOption,
        uint256 orderPrice,
        uint256 optionAmount,
        uint256 baseAmount,
        uint256 orderID,
        address indexed maker,
        address indexed taker
    );

    /**
     * @notice Emitted when a sell order is cancelled.
     * @param orderOption The option associated with the cancelled order.
     * @param orderAmount The number of shares that were listed in the cancelled order.
     * @param orderPrice The price at which the order was listed.
     * @param orderID The unique identifier for the cancelled order.
     * @param orderCreator The address of the user who created and cancelled the order.
     */
    event CancelSellOrder(
        uint256 orderOption,
        uint256 orderAmount,
        uint256 orderPrice,
        uint256 orderID,
        address indexed orderCreator
    );

    /**
     * @notice Emitted when a buy order is cancelled.
     * @param orderOption The option associated with the cancelled order.
     * @param orderAmount The number of base tokens that were listed in the cancelled order.
     * @param orderPrice The price at which the order was listed.
     * @param orderID The unique identifier for the cancelled order.
     * @param orderCreator The address of the user who created and cancelled the order.
     */
    event CancelBuyOrder(
        uint256 orderOption,
        uint256 orderAmount,
        uint256 orderPrice,
        uint256 orderID,
        address indexed orderCreator
    );

    /**
     * @dev Emittted when a Dispute is opened.
     * @param caller The address of the function caller.
     * @param currentWinner The current winner of the pool.
     * @param disputeFee The fee paid by the user if it's not the resolver for dispute.
     */
    event OpenDispute(address indexed caller, uint256 currentWinner, uint256 disputeFee);

    /**
     * @dev Emittted when an Appeal is opened.
     * @param caller The address of the function caller.
     * @param currentWinner The current winner of the pool.
     * @param appealFee The fee paid by the user if it's not the resolver for appeal.
     */
    event OpenAppeal(address indexed caller, uint256 currentWinner, uint256 appealFee);

    /**
     * @dev Emiited when rain tokens are burned.
     * @param amountBurned The amount of rain tokens burned.
     */
    event RainTokenBurned(uint256 amountBurned);

    /**
     * @dev Emitted when a resolution is proposed by a user.
     * @param resolutionProposer The address of the user proposing a resolution.
     * @param resolverBond The amount of base tokens escrowed as resolver bond.
     * @param proposedWinner The Winner proposed by the user incase of a manual resolution.
     */
    event ResolutionProposed(address indexed resolutionProposer, uint256 resolverBond, uint256 proposedWinner);

    /**
     * @dev Emitted when a resolution proposer is refunded their resolver bond.
     * @param resolutionProposer The address receiving the refund.
     * @param resolverBond The amount of base tokens refunded.
     * @param proposedWinner The Winner proposed by the user.
     */
    event ResolutionProposerRefund(address indexed resolutionProposer, uint256 resolverBond, uint256 proposedWinner);

    /**
     * @dev Emitted when a resolution is deemed too early and reverted.
     * @param resolutionProposer The address that proposed the resolution.
     * @param resolverBond The resolver bond that was burned.
     * @param proposedWinner The outcome that was proposed as the winner.
     */
    event TooEarly(address indexed resolutionProposer, uint256 resolverBond, uint256 proposedWinner);

    /**
     * @dev Emitted when a `disputeFee` is refunded to the `disputer`.
     * @param disputer The address of the disputer.
     * @param disputeFee The `disputeFee` escrowed by the disputer.
     * @param disputedWinner The winner before the dispute was opened.
     */
    event DisputeFeeRefunded(address indexed disputer, uint256 disputeFee, uint256 disputedWinner);

    /**
     * @dev Emitted when a `appealFee` is refunded to the `appealer`.
     * @param appealer The address of the appealer.
     * @param appealFee The `appealFee` escrowed by the appealer.
     * @param appealedWinner The winner before the appeal was opened.
     */
    event AppealFeeRefunded(address indexed appealer, uint256 appealFee, uint256 appealedWinner);

    /**
     * @dev Emitted when closing rewards are transferred to a resolver.
     * @param closer The address of the resolver claiming the closing reward.
     * @param closingShare The amount of base tokens transferred as closing reward.
     */
    event ClosingShareClaim(address indexed closer, uint256 closingShare);

    /* ========================== ERRORS ========================== */

    /**
     * @dev Error thrown when no token is set.
     */
    error NoTokenSet();

    /**
     * @dev Error thrown when no owner is set.
     */
    error NoOwnerSet();

    /**
     * @dev Error thrown when the start time of a sale has already ended.
     */
    error StartTimeEnded();

    /**
     * @dev Error thrown when the end time is less than the start time.
     */
    error EndTImeLessThanStartTime();

    /**
     * @dev Error thrown when fewer than `three` options are provided.
     */
    error MinimumOptionsShouldBeThree();

    /**
     * @dev Error thrown when the sale is not live.
     */
    error SaleNotLive();

    /**
     * @dev Error thrown when the sale is still live.
     */
    error SaleStillLive();

    /**
     * @dev Error thrown when no platform is set.
     */
    error NoPlatformSet();

    /**
     * @dev Error thrown when only the owner can perform the action.
     */
    error OnlyOwner();

    /**
     * @dev Error thrown when only authorized users can perform the action.
     */
    error OnlyAuthority();

    /**
     * @dev Error thrown when only resolver users can perform the action.
     */
    error OnlyResolver();

    /**
     * @dev Error thrown when the pool is closed.
     */
    error PoolClosed();

    /**
     * @dev Error thrown when the pool is open.
     */
    error PoolOpen();

    /**
     * @dev Error thrown when an action has already been claimed.
     */
    error AlreadyClaimed();

    /**
     * @dev Error thrown when the user is ineligible to claim.
     */
    error IneligibleToClaim();

    /**
     * @dev Error thrown when the pool is not yet closed.
     */
    error PoolNotClosed();

    /**
     * @dev Error thrown when the winner option is out of the valid range.
     */
    error WinnerOutOfBound();

    /**
     * @dev Error thrown when the liquidity percentage is invalid.
     */
    error InvalidLiquidityPercentage();

    /**
     * @dev Error thrown when the initial liquidity amount is invalid.
     */
    error InvalidInitialLiquidity();

    /**
     * @dev Error thrown when the amount is not sufficient.
     */
    error InsufficientAmount();

    /**
     * @dev Error thrown if the provided option is not valid.
     */
    error InvalidOption();

    /**
     * @dev Error thrown if the provided price is not within the allowed range or format.
     */
    error InvalidPrice();

    /**
     * @dev Error thrown if the provided amount is zero or otherwise considered invalid.
     */
    error InvalidAmount();

    /**
     * @dev Error thrown if the number of options exceeds the maximum allowed limit.
     */
    error MaximumOptionsExceeded();

    /**
     * @dev Thrown when the user does not have enough votes to complete the action.
     */
    error InsufficientUserVotes();

    /**
     * @dev Thrown when a caller tries to cancel an order they did not create.
     */
    error CallerNotOrderPlacer();

    /**
     * @dev Thrown when the caller is not the part of the pool.
     */
    error InvalidCaller();

    /**
     * @dev Thrown when a dispute is already opened.
     */
    error DisputeAlreadyOpened();

    /**
     * @dev Thrown when an order with the given ID does not exist in the system.
     */
    error OrderDoesNotExist();

    /**
     * @dev Thrown when trying to place an order that already exists with the given ID.
     */
    error OrderAlreadyExists();

    /**
     * @dev Thrown when trying to buy an order that does not exist or if the orderBook linked list is not initalized.
     */
    error LinkedListNotInitalized();

    /**
     * @dev Thrown when the array length does not match.
     */
    error ArrayLengthMismatch();

    /**
     * @dev Thrown when the winner has already been decided.
     */
    error WinnerAlreadyFinalized();

    /**
     * @dev Thrown when the user tries to claim their rewards with existing sell orders.
     */
    error UserSellOrderExist();

    /**
     * @dev Thrown when the user tries to claim their rewards with existing Buy orders.
     */
    error UserBuyOrderExist();

    /**
     * @dev Thrown when the pool is in an invalid state for the attempted operation.
     */
    error InvalidPoolState();

    /**
     * @dev Thrown when the specified end price is below the allowed minimum.
     */
    error EndPriceTooLow();

    /**
     * @dev Thrown when the specified end price exceeds the allowed maximum.
     */
    error EndPriceTooHigh();

    /**
     * @dev Thrown when the attempted increase is not necessary or is redundant.
     */
    error NoIncreaseNeeded();

    /**
     * @dev Thrown when a user tries to open a dispute after the dispute window has ended.
     */
    error DisputeWindowEnded();

    /**
     * @dev Thrown when a user tries to claim before the dispute window has ended for a public pool.
     */
    error DisputeWindowNotEnded();

    /**
     * @dev Error thrown when the oracle has not been finalized.
     */
    error OracleNotFinalized();

    /**
     * @dev Error thrown when the oracle has ended the voting and the winner is still `0`.
     */
    error VotingEnded();

    /**
     * @dev Error thrown when the oracle fixed fee is `0`.
     */
    error InvalidOracleFixedFee();

    /**
     * @dev Error thrown when the winner is not decided by the resolver.
     */
    error WinnerNotDecided();

    /**
     * @dev Thrown when user is at their `sell order` limit.
     */
    error UserSellOrderLimitReached();

    /**
     * @dev Thrown when user is at their `buy order` limit.
     */
    error UserBuyOrderLimitReached();

    /**
     * @dev Thrown when caller is not the `Pool Manager`.
     */
    error NotPoolManager();

    /**
     * @dev Thrown when an invalid function is called for the specific pool.
     */
    error InvalidCall();

    /**
     * @dev Thrown when the pool has already been initialized.
     */
    error AlreadyInitialized();
}
