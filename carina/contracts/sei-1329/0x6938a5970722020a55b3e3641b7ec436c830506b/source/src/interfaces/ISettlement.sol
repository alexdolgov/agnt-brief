// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IVaultRelayer} from "./IVaultRelayer.sol";

/// @title ISettlement
/// @notice Interface for the Settlement contract that handles batch auction-style token settlements
/// @dev The Settlement contract acts as a central hub for executing multiple token trades atomically.
/// It uses a batch auction mechanism where solvers can submit solutions that settle multiple orders
/// at uniform clearing prices. The contract ensures that all trades are executed fairly and efficiently
/// while maintaining security through proper access controls and validation.
///
/// Key features:
/// - Batch settlement of multiple orders at uniform clearing prices
/// - Support for arbitrary actions before, during, and after trade execution
/// - Integration with Permit2 for gasless token approvals
interface ISettlement {
    /// @notice Thrown when caller is not an authorized solver.
    error NotASolver();

    /// @notice Thrown when order has already been filled or invalidated.
    error OrderAlreadyFilledOrInvalidated();

    /// @notice Thrown when order has expired.
    error OrderExpired();

    /// @notice Thrown when fee amount is greater than or equal to input amount.
    error InvalidFeeAmount();

    /// @notice Thrown when the output amount is insufficient.
    error NotEnoughAmountOut();

    /// @notice Thrown when action target is the vault relayer.
    error CannotCallActionToVaultRelayer();

    /// @notice Thrown when action execution fails.
    error ExecuteActionFailed();

    /// @title Trade
    /// @notice Structure representing a trade to be executed in a settlement
    ///
    /// @param receiver The address that will receive the output tokens
    /// @param validTo The timestamp until which the trade is valid
    /// @param tokenInIndex Index of the input token in the tokens array
    /// @param tokenOutIndex Index of the output token in the tokens array
    /// @param amountIn The amount of input token to trade
    /// @param amountOut The expected amount of output token to receive
    /// @param minAmountOut The minimum amount of output token to receive
    /// @param feeAmount The fee amount to be deducted from the input tokens
    /// @param flags Packed flags containing signing scheme and transfer type information
    /// @param transferData Additional data for token transfer (e.g., permit data in the case of Permit2)
    /// @param signature The signature authorizing this trade
    struct Trade {
        address receiver;
        uint64 validTo;
        uint32 tokenInIndex;
        uint32 tokenOutIndex;
        uint256 amountIn;
        uint256 amountOut;
        uint256 minAmountOut;
        uint256 feeAmount;
        /// Flags format:
        /// [0-7]: reserved for signing scheme (see OrderSigning.SigningScheme)
        /// [8-15]: reserved for transfer type of tokenIn (see TransferHelper.TransferFromType)
        uint256 flags;
        bytes transferData;
        bytes signature;
    }

    /// @title Action
    /// @notice Structure representing an action to be executed during settlement
    ///
    /// @param target The target contract address to call
    /// @param value The amount of ETH to send with the call
    /// @param callData The encoded function call data
    struct Action {
        address target;
        uint256 value;
        bytes callData;
    }

    /// @title Order
    /// @notice Structure representing an order for token exchange
    ///
    /// @param receiver The address that will receive the output tokens
    /// @param validTo The timestamp until which the order is valid
    /// @param tokenIn The input token to be sold
    /// @param tokenOut The output token to be bought
    /// @param amountIn The amount of input token to sell
    /// @param amountOut The expected amount of output token to receive
    /// @param minAmountOut The minimum amount of output token to receive
    /// @param feeAmount The fee amount to be deducted from the input tokens
    struct Order {
        address receiver;
        uint64 validTo;
        IERC20 tokenIn;
        IERC20 tokenOut;
        uint256 amountIn;
        uint256 amountOut;
        uint256 minAmountOut;
        uint256 feeAmount;
    }

    /// @notice Event emitted when an order is filled
    /// @param orderId The unique identifier of the filled order
    /// @param owner The owner of the order
    /// @param tokenIn The input token that was sold
    /// @param tokenOut The output token that was bought
    /// @param amountIn The amount of input token sold
    /// @param amountOut The amount of output token received
    /// @param feeAmount The fee amount deducted from the input tokens
    event OrderFilled(
        bytes orderId,
        address indexed owner,
        IERC20 tokenIn,
        IERC20 tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 feeAmount
    );

    /// @notice Event emitted when an action is executed
    /// @param target The target contract that was called
    /// @param value The amount of ETH sent with the call
    /// @param selector The function selector that was called
    event ActionExecuted(address indexed target, uint256 value, bytes4 selector);

    /// @notice Event emitted when a settlement completes
    /// @param solver The address of the solver that executed the settlement
    event Settled(address indexed solver);

    /// @notice Event emitted when an order is invalidated
    /// @param owner The owner of the invalidated order
    /// @param orderId The unique identifier of the invalidated order
    event OrderInvalidated(address indexed owner, bytes orderId);

    /// @notice Returns the VaultRelayer contract instance used for token transfers
    /// @dev The VaultRelayer handles secure token transfers from user accounts.
    /// It acts as an intermediary that can pull tokens from users who have granted appropriate
    /// allowances, enabling gasless trading through signed permits.
    ///
    /// @return The IVaultRelayer contract instance
    /// forge-lint: disable-next-line(mixed-case-function)
    function VAULT_RELAYER() external view returns (IVaultRelayer);

    /// @notice Executes a batch settlement of multiple trades at uniform clearing prices
    /// @dev This is the core function that performs atomic settlement of multiple orders.
    /// Only authorized solvers can call this function.
    ///
    /// We don’t validate the clearing prices on-chain to ensure they match the quoted off-chain values.
    /// If a solver provides different clearing prices than those quoted, users may receive less favorable rates.
    /// However, the contract guarantees that each trade meets its minimum output requirement.
    /// For solvers submitting different clearing prices, the off-chain service will verify settlements
    /// to detect dishonest solvers and penalize them.
    ///
    /// In theory, only the necessary input tokens for executing trades will be transferred
    /// to the settlement contract. However, some leftover tokens from previous settlements may remain.
    /// Solvers may use any tokens held by the settlement contract and
    /// distribute any tokens from it, provided all trades are valid and
    /// each user receives at least their minimum expected amount.
    ///
    /// @param tokens Array of ERC20 tokens involved in the settlement
    /// @param clearingPrices Array of uniform clearing prices for each token (must match tokens array length)
    /// @param trades Array of trades to be executed in this settlement batch
    /// @param actions Three arrays of actions to be executed at different settlement phases:
    ///                - actions[0]: Pre-settlement actions (e.g., setup calls, permit approvals)
    ///                - actions[1]: Mid-settlement actions (e.g., liquidity operations)
    ///                - actions[2]: Post-settlement actions (e.g., cleanup calls)
    /// @dev Reverts if:
    /// - Caller is not an authorized solver
    /// - Any trade validation fails (expired, over-filled, price constraints)
    /// - Any action execution fails
    /// - Token transfer operations fail
    function settle(
        IERC20[] calldata tokens,
        uint256[] calldata clearingPrices,
        Trade[] calldata trades,
        Action[][3] calldata actions
    ) external;

    /// @notice Returns the filled amount for a specific order
    /// @dev This function allows checking how much of an order has been filled or if it has been invalidated.
    /// The returned value represents:
    /// - 0: Order has not been filled or does not exist
    /// - order.amountIn: Order has been completely filled
    /// - type(uint256).max: Order has been invalidated/cancelled
    ///
    /// @param orderId The unique identifier of the order to query
    /// @return The amount of the order that has been filled, or type(uint256).max if invalidated
    function orderFilledAmount(bytes calldata orderId) external view returns (uint256);

    /// @notice Invalidates an order, preventing it from being filled in future settlements
    /// @dev This function allows order owners to cancel their orders before they expire or get filled.
    /// Once invalidated, an order cannot be restored and will be permanently unusable.
    ///
    /// @param orderId The unique identifier of the order to invalidate
    /// @dev Reverts if:
    /// - Caller is not the order owner
    /// - Order has already been filled or invalidated
    function invalidateOrder(bytes calldata orderId) external;

    /// @notice Computes the EIP-712 typed data hash for external signature verification
    /// @dev This function exposes the internal EIP-712 hashing mechanism for external use.
    ///
    /// @param structHash The hash of the struct data to be signed (e.g., order hash)
    /// @return The complete EIP-712 typed data hash ready for signing
    function hashTypedDataV4(bytes32 structHash) external view returns (bytes32);
}
