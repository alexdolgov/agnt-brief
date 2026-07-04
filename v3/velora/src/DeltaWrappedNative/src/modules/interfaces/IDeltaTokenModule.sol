// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

// Types
import { OrderWithSig } from "@types/Order.sol";
import { ProductiveOrderWithSig } from "@types/ProductiveOrder.sol";

/// @title IDeltaTokenModule
/// @notice Interface for the Delta Token Module
/// @dev Provides user-facing functions for:
///      - Depositing/withdrawing native ETH via DeltaWrappedNative
///      - Depositing to ERC-4626 yield strategies
///      - Cancelling/expiring orders and recovering funds
///      - Managing DeltaToken registry (admin)
interface IDeltaTokenModule {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    // Native ETH deposit events
    /// @notice Emitted when native ETH is deposited (wrapped to DeltaWrappedNative)
    event DepositNative(address indexed user, uint256 amount);

    /// @notice Emitted when native ETH is deposited and order is presigned
    event DepositNativeAndPreSign(address indexed user, uint256 amount, bytes32 indexed orderHash);

    /// @notice Emitted when native ETH is deposited to a yield strategy
    event DepositNativeToStrategy(address indexed user, address indexed strategy, uint256 amount);

    /// @notice Emitted when native ETH is deposited to a yield strategy and order is presigned
    event DepositNativeToStrategyAndPreSign(
        address indexed user, address indexed strategy, uint256 amount, bytes32 orderHash
    );

    // ERC20 deposit events
    /// @notice Emitted when tokens are deposited to a yield strategy
    event DepositToStrategy(address indexed user, address indexed token, address indexed strategy, uint256 amount);

    /// @notice Emitted when tokens are deposited to a yield strategy and order is presigned
    event DepositToStrategyAndPreSign(
        address indexed user, address indexed token, address indexed strategy, uint256 amount, bytes32 orderHash
    );

    // Native ETH withdraw events
    /// @notice Emitted when wrapped native tokens are withdrawn
    event WithdrawNative(address indexed user, uint256 amount);

    /// @notice Emitted when native ETH is withdrawn from a yield strategy
    event WithdrawNativeFromStrategy(address indexed user, address indexed strategy, uint256 amount);

    // ERC20 withdraw events
    /// @notice Emitted when tokens are withdrawn from a yield strategy
    event WithdrawFromStrategy(address indexed user, address indexed token, address indexed strategy, uint256 amount);

    /// @notice Emitted when an order is cancelled and wrapped tokens are unwrapped
    event OrderCancelled(address indexed owner, bytes32 indexed orderHash, uint256 amount);

    /// @notice Emitted when an order expires and wrapped tokens are unwrapped
    event OrderExpired(address indexed owner, bytes32 indexed orderHash, uint256 amount);

    /// @notice Emitted when a productive order is cancelled and assets are withdrawn from strategy
    event ProductiveOrderCancelled(
        address indexed owner, bytes32 indexed orderHash, address indexed strategy, uint256 amount
    );

    /// @notice Emitted when a productive order expires and assets are withdrawn from strategy
    event ProductiveOrderExpired(
        address indexed owner, bytes32 indexed orderHash, address indexed strategy, uint256 amount
    );

    // Admin events
    /// @notice Emitted when a DeltaToken is registered for an underlying token
    event DeltaTokenRegistered(address indexed underlying, address indexed deltaToken);

    /*//////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when deposit amount is zero
    error InvalidDepositAmount();

    /// @notice Thrown when order's srcToken is not native ETH
    error InvalidSrcToken();

    /// @notice Thrown when caller is not authorized
    error Unauthorized();

    /// @notice Thrown when order deadline has not passed yet (for expireAndWithdraw)
    error OrderNotExpired();

    /// @notice Thrown when productive order has no strategy
    error InvalidStrategy();

    /// @notice Thrown when user has no shares to withdraw from strategy
    error NoSharesToWithdraw();

    /// @notice Thrown when attempting to cancel/expire an order whose nonce is already used
    error NonceAlreadyUsed();

    /// @notice Thrown when array parameters have mismatched lengths
    error ArrayLengthMismatch();

    /*//////////////////////////////////////////////////////////////
                        NATIVE ETH DEPOSIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit native ETH and wrap to Delta Wrapped Native for msg.sender
    /// @dev Users can then use the wrapped tokens for orders with srcToken = 0xEeeee...
    function depositNative() external payable;

    /// @notice Deposit native ETH and presign an order hash in a single transaction
    /// @param orderHash The hash of the order to presign
    function depositNativeAndPreSign(bytes32 orderHash) external payable;

    /// @notice Deposit native ETH to an ERC-4626 yield strategy
    /// @dev Wraps ETH to WETH, deposits to DeltaWrappedNative, then deposits to strategy.
    ///      User earns yield while waiting for their productive order to execute.
    /// @param strategy The ERC-4626 vault address to deposit into
    function depositNativeToStrategy(address strategy) external payable;

    /// @notice Deposit native ETH to a yield strategy and presign an order hash
    /// @param strategy The ERC-4626 vault address to deposit into
    /// @param orderHash The hash of the order to presign
    function depositNativeToStrategyAndPreSign(address strategy, bytes32 orderHash) external payable;

    /*//////////////////////////////////////////////////////////////
                          DEPOSIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit tokens to an ERC-4626 yield strategy
    /// @dev Transfers tokens from msg.sender via DeltaYieldToken, then deposits to strategy.
    ///      User must have approved the DeltaYieldToken contract for the token.
    /// @param token The token to deposit
    /// @param amount The amount of tokens to deposit
    /// @param strategy The ERC-4626 vault address to deposit into
    function depositToStrategy(address token, uint256 amount, address strategy) external;

    /// @notice Deposit tokens to a yield strategy and presign an order hash
    /// @param token The token to deposit
    /// @param amount The amount of tokens to deposit
    /// @param strategy The ERC-4626 vault address to deposit into
    /// @param orderHash The hash of the order to presign
    function depositToStrategyAndPreSign(address token, uint256 amount, address strategy, bytes32 orderHash) external;

    /// @notice Deposit tokens to a yield strategy using permit for approval
    /// @dev User signs permit to approve this module, then module transfers and deposits.
    ///      Supports EIP-2612, DAI-style permits, and Permit2.
    /// @param token The token to deposit
    /// @param amount The amount of tokens to deposit
    /// @param strategy The ERC-4626 vault address to deposit into
    /// @param permit The permit signature data (user must permit this module)
    function depositToStrategyWithPermit(
        address token,
        uint256 amount,
        address strategy,
        bytes calldata permit
    )
        external;

    /// @notice Deposit tokens to a yield strategy and presign an order hash using permit
    /// @dev User signs permit to approve this module, then module transfers and deposits.
    ///      Supports EIP-2612, DAI-style permits, and Permit2.
    /// @param token The token to deposit
    /// @param amount The amount of tokens to deposit
    /// @param strategy The ERC-4626 vault address to deposit into
    /// @param orderHash The hash of the order to presign
    /// @param permit The permit signature data (user must permit this module)
    function depositToStrategyAndPreSignWithPermit(
        address token,
        uint256 amount,
        address strategy,
        bytes32 orderHash,
        bytes calldata permit
    )
        external;

    /*//////////////////////////////////////////////////////////////
                         NATIVE ETH WITHDRAW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Withdraw native tokens by unwrapping Delta Wrapped Native tokens
    /// @param amount The amount of Delta Wrapped Native to unwrap
    /// @dev Burns Delta Wrapped Native from msg.sender and sends native tokens back to msg.sender
    function withdrawNative(uint256 amount) external;

    /// @notice Withdraw assets from a native ETH yield strategy
    /// @param strategy The ERC-4626 vault address to withdraw from
    /// @param amount The amount of assets to withdraw (use type(uint256).max for all)
    /// @dev Withdraws exact assets and sends native ETH to msg.sender
    function withdrawNativeFromStrategy(address strategy, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                          WITHDRAW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Withdraw assets from a yield strategy
    /// @param strategy The ERC-4626 vault address to withdraw from
    /// @param amount The amount of assets to withdraw (use type(uint256).max for all)
    /// @dev Derives underlying token from strategy.asset() and sends to msg.sender
    function withdrawFromStrategy(address strategy, uint256 amount) external;

    /// @notice Cancel an order and unwrap tokens back to native ETH
    /// @dev Validates order via signature/presignature, checks srcToken is native ETH, invalidates nonce, unwraps
    /// tokens if available. Can only be called by the order owner. Uses graceful degradation: unwraps whatever balance
    /// is available
    ///      (min of owner's wrapped balance and required amount). For fillable orders, unwraps unfilled amount.
    /// @param orderWithSig The order to cancel with signature (signature can be empty for presigned orders)
    /// @param isFillable Whether the order is a fillable order (uses FillableOrderHashLib for hash computation)
    function cancelAndWithdraw(OrderWithSig calldata orderWithSig, bool isFillable) external;

    /// @notice Cancel an order with signature authorization (allows third-party execution)
    /// @dev Similar to cancelAndWithdraw but allows anyone to cancel the order with the owner's signature.
    ///      The owner must sign a message authorizing the cancellation with the specific orderHash.
    ///      Validates order via signature/presignature, checks srcToken is native ETH, invalidates nonce.
    ///      Uses graceful degradation: unwraps whatever balance is available (min of owner's wrapped balance and
    /// required amount).
    /// @param orderWithSig The order to cancel with its order signature (signature can be empty for presigned orders)
    /// @param isFillable Whether the order is a fillable order (uses FillableOrderHashLib for hash computation)
    /// @param cancellationSignature The owner's signature authorizing the cancellation of this specific order
    function cancelAndWithdrawWithSignature(
        OrderWithSig calldata orderWithSig,
        bool isFillable,
        bytes calldata cancellationSignature
    )
        external;

    /// @notice Expire an order past its deadline and unwrap tokens back to native ETH
    /// @dev Validates order via signature/presignature, checks srcToken is native ETH, verifies deadline has passed.
    ///      Can be called by anyone after deadline expires. Uses graceful degradation: unwraps whatever balance
    ///      is available (min of owner's wrapped balance and required amount). For fillable orders, unwraps unfilled
    /// amount. Note: Nonce is NOT invalidated since the order is already unexecutable.
    /// @param orderWithSig The order to expire with signature (signature can be empty for presigned orders)
    /// @param isFillable Whether the order is a fillable order (uses FillableOrderHashLib for hash computation)
    function expireAndWithdraw(OrderWithSig calldata orderWithSig, bool isFillable) external;

    /// @notice Set the Delta Wrapped Native token address (admin only)
    /// @param wrappedNative The address of the Delta Wrapped Native token
    function setWrappedNative(address wrappedNative) external;

    /// @notice Set the DeltaToken address for an underlying token (admin only)
    /// @param underlying The underlying token address
    /// @param deltaToken The DeltaToken contract for this underlying
    function setDeltaToken(address underlying, address deltaToken) external;

    /// @notice Add a strategy to a DeltaToken (admin only)
    /// @param deltaToken The DeltaToken contract address
    /// @param strategy The ERC-4626 strategy to add
    function addStrategyForToken(address deltaToken, address strategy) external;

    /// @notice Remove a strategy from a DeltaToken (admin only)
    /// @param deltaToken The DeltaToken contract address
    /// @param strategy The ERC-4626 strategy to remove
    function removeStrategyForToken(address deltaToken, address strategy) external;

    /*//////////////////////////////////////////////////////////////
                              YIELD FEES
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the yield fee for multiple DeltaTokens in a single transaction (admin only)
    /// @param deltaTokens Array of DeltaToken contract addresses
    /// @param feesBps Array of yield fees in basis points (100 = 1%)
    /// @dev Arrays must have the same length. For single updates, pass arrays of length 1.
    function setProtocolYieldFees(address[] calldata deltaTokens, uint16[] calldata feesBps) external;

    /// @notice Get the yield fee for a specific DeltaToken
    /// @param deltaToken The DeltaToken contract address
    /// @return The yield fee in basis points
    function getProtocolYieldFee(address deltaToken) external view returns (uint16);

    /// @notice Called by DeltaTokens to transfer yield fees to the adapter
    /// @dev Only callable by registered DeltaToken contracts
    /// @param token The underlying token address (the token being transferred)
    /// @param amount The fee amount to pull
    function pullYieldFee(address token, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                      PRODUCTIVE ORDER CANCELLATION
    //////////////////////////////////////////////////////////////*/

    /// @notice Cancel a productive order and withdraw from yield strategy
    /// @dev Validates order via signature, invalidates nonce, withdraws from strategy.
    ///      Can only be called by the order owner.
    /// @param orderWithSig The productive order to cancel with signature
    function cancelProductiveAndWithdraw(ProductiveOrderWithSig calldata orderWithSig) external;

    /// @notice Cancel a productive order with signature authorization (allows third-party execution)
    /// @dev Similar to cancelProductiveAndWithdraw but allows anyone to cancel with the owner's signature.
    /// @param orderWithSig The productive order to cancel with its signature
    /// @param cancellationSignature The owner's signature authorizing the cancellation
    function cancelProductiveAndWithdrawWithSignature(
        ProductiveOrderWithSig calldata orderWithSig,
        bytes calldata cancellationSignature
    )
        external;

    /// @notice Expire a productive order past its deadline and withdraw from yield strategy
    /// @dev Validates order via signature, verifies deadline has passed, withdraws from strategy.
    ///      Can be called by anyone after deadline expires.
    /// @param orderWithSig The productive order to expire with signature
    function expireProductiveAndWithdraw(ProductiveOrderWithSig calldata orderWithSig) external;

    /*//////////////////////////////////////////////////////////////
                                  VIEW
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the wrapped native token address
    /// @return The address of the Delta Wrapped Native token
    function getWrappedNative() external view returns (address);

    /// @notice Returns the DeltaToken address for a given underlying token
    /// @param token The underlying token address (ETH_ADDRESS for native, ERC20 address otherwise)
    /// @return The DeltaToken contract address
    function getDeltaToken(address token) external view returns (address);

    /// @notice Returns the Delta Wrapped Native token balance of a user
    /// @param user The address to check the balance for
    /// @return The Delta Wrapped Native token balance of the user
    function balanceOf(address user) external view returns (uint256);
}

