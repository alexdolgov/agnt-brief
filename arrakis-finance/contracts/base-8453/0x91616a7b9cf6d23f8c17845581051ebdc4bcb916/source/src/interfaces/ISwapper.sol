// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {IRelayFactory} from "interfaces/IRelayFactory.sol";

/// @title ISwapper
/// @notice Handles token swapping operations for relay contracts through registered routers
/// @dev Provides atomic sweep, swap, and return operations for AutoCompounder and AutoConverter relays.
///      Manages router registration and tracks token earnings for AutoConverters.
///      The Swapper can perform swaps on behalf of relay contracts through registered keepers and by
///      using set UniversalRouters.
interface ISwapper {
    /// @dev Emitted when a router is registered
    /// @param router Address of the registered router
    event RouterRegistered(address indexed router);

    /// @dev Emitted when a router is deregistered
    /// @param router Address of the deregistered router
    event RouterDeregistered(address indexed router);

    /// @notice Emitted after performing a swap to the target token via Universal Router
    /// @param relayer the address of the relayer contract
    /// @param token The address of the input token being swapped
    /// @param router The address of the UniversalRouter used to execute the swap
    /// @param amountOut The amount of output tokens received from the swap
    /// @param commands The commands executed by the router
    /// @param inputs The set of inputs for each command
    /// @dev The `commands` and `inputs` parameters are supplied by a trusted keeper role.
    /// The keeper is responsible for providing accurate values to guarantee correct
    /// and secure swap execution.
    event SwapToTargetToken(
        address indexed relayer,
        address indexed router,
        address indexed token,
        uint256 amountOut,
        bytes commands,
        bytes[] inputs
    );

    /// @dev Error thrown when the initial owner is a zero address
    error Swapper_InitialOwnerZeroAddress();

    /// @dev Error thrown when the factory is a zero address
    error Swapper_FactoryZeroAddress();

    /// @dev Error thrown when calling a swap with a minimum amount out of zero
    error Swapper_MinAmountOutZero();

    /// @dev Error thrown when the caller is not a keeper
    error Swapper_NotKeeper();

    /// @dev Error thrown when calling a swap with an input token that is the same as the target token of the relay
    error Swapper_InputTokenIsTargetToken();

    /// @dev Error thrown when a zero address is provided during router registration.
    error Swapper_RouterZeroAddress();

    /// @dev Error thrown when trying to register a router that is already registered.
    error Swapper_RouterAlreadyRegistered();

    /// @dev Error thrown when trying to deregister a router that is not registered.
    error Swapper_RouterNotRegistered();

    /// @dev Error thrown when calling a swap with an invalid relay
    error Swapper_RelayNotApproved();

    /// @dev Error thrown when calling a swap with an unauthorized router
    error Swapper_RouterUnauthorized();

    /// @dev Error thrown when calling a swap with an insufficient output amount
    error Swapper_InsufficientAmountOut();

    /// @dev Error thrown when a swap is attempted within the first hour of an epoch.
    error Swapper_TooSoon();

    /// @dev Set of router addresses authorized for relay swaps
    function routers() external view returns (address[] memory);

    /// @dev Factory for creating auto converter contracts
    function autoConverterFactory() external view returns (IRelayFactory);

    /// @dev Factory for creating auto compounder contracts
    function autoCompounderFactory() external view returns (IRelayFactory);

    /// @notice Sweeps tokens from a relay, executes a swap with the relay as recipient, and returns the remaining input tokens
    /// @dev This function performs an atomic operation: sweep → swap → return
    ///      The function handles different relay types (AutoCompounder vs AutoConverter) differently:
    ///      - AutoCompounder: Sweeps entire token balance and must convert to VELO
    ///      - AutoConverter: Sweeps specific amount and converts to the relay's target token
    ///      The Swapper must have DEFAULT_ADMIN_ROLE on the relay to perform sweep operations
    ///      All operations happen in a single transaction with no permanent custody
    ///      Only callable by relay factory keeper
    /// @param _relay The address of the relay contract (AutoCompounder or AutoConverter)
    /// @param _isAutoCompounder True for AutoCompounder, false for AutoConverter
    /// @param _router The address of the UniversalRouter to use for the swap
    /// @param _inputToken The address of the input token to swap. This cannot be the same as the target token of the relay.
    /// @param _minAmountOut The minimum amount of output tokens expected from the swap
    /// @param _commands The commands executed by the router
    /// @param _inputs The set of inputs for each command
    function swapToTargetToken(
        address _relay,
        bool _isAutoCompounder,
        address _router,
        address _inputToken,
        uint256 _minAmountOut,
        bytes calldata _commands,
        bytes[] calldata _inputs
    ) external;

    /// @notice Registers a router for use in relay swaps
    /// @param _router Address of the router to register
    /// @dev only called by owner
    function registerRouter(address _router) external;

    /// @notice Deregisters a router
    /// @param _router Address of the router to deregister
    /// @dev only called by owner
    function deregisterRouter(address _router) external;

    /// @notice Returns whether a router is registered
    /// @param _router Address of the router to check
    /// @return isRegistered Whether the router is registered
    function isRouter(address _router) external view returns (bool);

    /// @notice Returns the amount of tokens earned that were swapped through the swapper contract by a given AutoConverter for a specific epoch
    /// @dev This function should only be called for AutoConverters. For AutoCompounders, the canonical value is tracked in their own internal state
    /// @dev when the ui queries this value, it should be the aggregation between the amount returned for a relay and epoch of the swapper and the amount queried to the AutoConverter relay contract
    /// @param _autoConverter The address of the AutoConverter relay
    /// @param _epoch The epoch identifier
    /// @return amountEarned The amount of tokens earned by the given AutoConverter during the specified epoch
    function amountTokenEarned(address _autoConverter, uint256 _epoch) external view returns (uint256);
}
