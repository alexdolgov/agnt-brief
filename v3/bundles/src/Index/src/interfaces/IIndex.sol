// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @title IIndex - Interface for the Index Contract
/// @notice Defines the interface for a weighted token index contract
interface IIndex {
    /// @notice Generic struct for transition settings
    struct Transition {
        uint256 startValue; // Starting value of the transition
        uint256 endValue; // Ending value of the transition
        uint256 startTime; // Start timestamp of the transition
        uint256 endTime; // End timestamp of the transition
    }

    // Events
    /// @notice Emitted when liquidity is minted in the pool
    /// @param to Address receiving the minted liquidity
    /// @param amount Amount of liquidity minted
    /// @param managerFeeAmount Amount of liquidity minted to the manager
    /// @param amountsIn Actual amounts of each token provided
    event Mint(
        address indexed to,
        uint256 amount,
        uint256 managerFeeAmount,
        uint256[] amountsIn
    );

    /// @notice Emitted when liquidity is burned in the pool
    /// @param from Address burning the liquidity
    /// @param amount Amount of liquidity burned
    /// @param managerFeeAmount Amount of liquidity minted to the manager
    /// @param amountsOut Actual amounts of each token received
    event Burn(
        address indexed from,
        uint256 amount,
        uint256 managerFeeAmount,
        uint256[] amountsOut
    );

    /// @notice Emitted when a settings update is requested
    /// @param nonce The nonce of the request
    /// @param hash The hash of the request
    /// @param updateTimelock Timestamp when the update can be executed
    /// @param swapFee The new swap fee
    /// @param mintAndBurnFee The new mint and burn fee
    /// @param managerShareFee The new manager share fee
    event SettingsUpdateRequested(
        uint16 nonce,
        bytes32 hash,
        uint40 updateTimelock,
        uint256 swapFee,
        uint8 mintAndBurnFee,
        uint8 managerShareFee,
        uint256[] newWeights,
        uint256 transitionPeriod
    );

    /// @notice Emitted when a settings update is executed
    /// @param nonce The nonce of the request
    /// @param swapFee The new swap fee
    /// @param mintAndBurnFee The new mint and burn fee
    /// @param managerShareFee The new manager share fee
    event SettingsUpdated(
        uint16 nonce,
        uint256 swapFee,
        uint8 mintAndBurnFee,
        uint8 managerShareFee,
        uint256[] newWeights,
        uint256 transitionPeriod
    );

    /// @notice Emitted when a rebalancing operation occurs in the pool
    /// @param tokenIn Token being swapped in
    /// @param amountIn Amount of tokenIn being swapped (excluding fees for protocol token)
    /// @param tokenOut Token being swapped out
    /// @param amountOut Amount of tokenOut received (excluding fees for protocol token)
    /// @param fee Raw protocol token fee collected (before burn)
    event Rebalanced(
        address indexed tokenIn,
        uint256 amountIn,
        address indexed tokenOut,
        uint256 amountOut,
        uint256 fee
    );

    /// @notice Emitted when the owner claims the reserve tokens
    /// @param to Address receiving the claimed tokens (if zero address, sends to owner)
    /// @param amount Amount of reserve tokens claimed
    event ReserveClaimed(address indexed to, uint256 amount);

    /// @notice Emitted when the reserve tokens are burned
    /// @param amount Amount of reserve tokens burned
    event ReserveBurned(uint256 amount);

    /// @notice Emitted when rebalancing functions are locked or unlocked
    event RebalanceLocked(bool locked);

    // Errors
    /// @notice Triggered when the weight transition period is out of the valid range
    error Index__TransitionOutOfRange();

    /// @notice Triggered when the settings update delay is too short
    error Index__DelayTooShort();

    /// @notice Triggered when the transition period is not valid
    error Index__InvalidTransitionPeriod();

    /// @notice Triggered when the settings update delay is not passed
    error Index__DelayNotPassed();

    /// @notice Triggered when the hash of the settings update is invalid
    error Index__InvalidHash();

    /// @notice Triggered when the caller is unauthorized
    error Index__Unauthorized();

    /// @notice Triggered when a zero address is used
    error Index__ZeroAddress();

    /// @notice Triggered when mathematical approximations fail
    error Index__MathApprox();

    /// @notice Triggered when the input amount exceeds the limit
    error Index__LimitIn();

    /// @notice Triggered when the output amount is below the limit
    error Index__LimitOut();

    /// @notice Triggered when the fee is out of the valid range
    error Index__FeeOutOfRange();

    /// @notice Triggered when a token's weight is out of the valid range
    error Index__WeightOutOfRange();

    /// @notice Triggered when the fee is insufficient
    error Index__InsufficientFee();

    /// @notice Triggered when the constant product condition is violated
    error Index__ReservesViolation();

    /// @notice Triggered when the constant product condition is violated
    error Index__SameWeightReservesViolation();

    /// @notice Triggered when the token is the same as the token in
    error Index__SameToken();

    /// @notice Triggered when setting a weight for a non-existing token
    error Index__NotAllowed();

    /// @notice Triggered when the pool supply must increase for token in
    error Index__PoolSupplyMustIncrease();

    /// @notice Triggered when the pool supply must decrease for token out
    error Index__PoolSupplyMustDecrease();

    /// @notice Triggered when the pool supply change requires balance change
    error Index__PoolSupplyChangeRequiresBalanceChange();

    /// @notice Triggered when the invariant check fails for token in
    error Index__InsufficientTokenIn();

    /// @notice Triggered when the invariant check fails for token out
    error Index__ExcessiveTokenOut();

    /// @notice Triggered when a zero balance is encountered in an invalid context
    error Index__InvalidZeroBalance();

    /// @notice Triggered when the total weight is zero
    error Index__InvalidTotalWeight();

    /// @notice Triggered when the liquidity change direction is invalid
    error Index__InvalidLiquidityDirection();

    /// @notice Triggered when a requested token weight update is not in the index
    error Index__TokenNotInIndex();

    /// @notice Triggered when a requested token status is invalid
    error Index__InvalidTokenUpdateStatus();

    /// @notice Triggered there is are enough tokens in the pool to remove one
    error Index__InsufficientPoolTokens();

    /// @notice Triggered when the fee token weight is invalid
    error Index__InvalidProtocolTokenWeight();

    /// @notice Triggered when the update parameters arrays are not the same length
    error Index__InvalidWeightsArray();

    /// @notice Triggered when the initial token fee is lower than its final fee
    error Index__InitialFeeLowerThanFinalFee();

    /// @notice Triggered when a requested update is already pending
    error Index__PendingUpdateExists();

    /// @notice Triggered when a duplicate token is updated
    error Index__DuplicateToken();

    /// @notice Triggered when rebalancing operations are locked
    error Index__RebalancingLocked();

    /// @notice Triggered when the lock is already in the same state
    error Index__RebalanceLockedAlreadySet();

    /// @notice Triggered when a token has no weight
    error Index__TokenNotListed();

    // External state-changing functions
    /// @notice Mints liquidity tokens for the caller
    /// @param amount Amount of liquidity to mint
    /// @param maxAmountsIn Maximum amounts of each token to provide
    function mint(uint256 amount, uint256[] memory maxAmountsIn) external;

    /// @notice Mints liquidity tokens for a specific address
    /// @param amount Amount of liquidity to mint
    /// @param maxAmountsIn Maximum amounts of each token to provide
    /// @param to Address to receive the minted liquidity tokens
    function mint(uint256 amount, uint256[] memory maxAmountsIn, address to)
        external;

    /// @notice Burns liquidity tokens from the caller and specifies minimum output amounts
    /// @param amount Amount of liquidity to burn
    /// @param minAmountsOut Minimum amounts of each token to receive
    function burn(uint256 amount, uint256[] memory minAmountsOut) external;

    /// @notice Burns liquidity tokens from the caller and sends tokens to a specific address
    /// @param amount Amount of liquidity to burn
    /// @param minAmountsOut Minimum amounts of each token to receive
    /// @param to Address to receive the tokens
    function burn(uint256 amount, uint256[] memory minAmountsOut, address to)
        external;

    /// @notice Requests an update to the fee settings with a Timelock delay
    /// @param swapFee New swap fee for the index
    /// @param mintAndBurnFee New fee for minting and burning operations
    /// @param managerShareFee New fee share for the manager
    /// @param delay Timelock delay before the update can be executed
    function updateFees(
        uint256 swapFee,
        uint8 mintAndBurnFee,
        uint8 managerShareFee,
        uint32 delay
    ) external;

    /// @notice Requests an update to token weights with a Timelock delay
    /// @param delay Timelock delay before the update can be executed
    /// @param newWeights Array of new weights for the tokens
    /// @param transitionPeriod Duration of the weight transition period
    function updateWeights(
        uint32 delay,
        uint256[] memory newWeights,
        uint256 transitionPeriod
    ) external;

    /// @notice Requests an update to all settings with a Timelock delay
    /// @param swapFee New swap fee for the index
    /// @param mintAndBurnFee New fee for minting and burning operations
    /// @param managerShareFee New fee share for the manager
    /// @param delay Timelock delay before the update can be executed
    /// @param newWeights Array of new weights for the tokens
    /// @param transitionPeriod Duration of the weight transition period
    function updateAllSettings(
        uint256 swapFee,
        uint8 mintAndBurnFee,
        uint8 managerShareFee,
        uint32 delay,
        uint256[] memory newWeights,
        uint256 transitionPeriod
    ) external;

    /// @notice Executes a settings update after the Timelock delay
    /// @param swapFee New swap fee for the index
    /// @param mintAndBurnFee New fee for minting and burning operations
    /// @param managerShareFee New fee share for the manager
    /// @param newWeights Array of new weights for the tokens
    /// @param transitionPeriod Duration of the weight transition period
    function executeSettingsUpdate(
        uint256 swapFee,
        uint8 mintAndBurnFee,
        uint8 managerShareFee,
        uint256[] memory newWeights,
        uint256 transitionPeriod
    ) external;

    /// @notice Claims the reserve tokens, sending a portion to the specified address and burning/returning the rest
    /// @param to Address to receive the claimed tokens (if zero address, sends to owner)
    function claimReserve(address to) external;

    /// @notice Burns the reserve tokens
    function burnReserve() external;

    /// @notice Rebalances the pool by swapping protocol token out for another token through an arbitrage contract
    /// @param amountOut Amount of protocol token to swap out
    /// @param fee Fee to be paid in protocol token
    /// @param tokenIn Token to receive in exchange
    /// @param to Address of the arbitrage contract
    /// @param data Arbitrary data to be passed to the arbitrage contract
    function rebalanceProtocolTokenOut(
        uint256 amountOut,
        uint256 fee,
        address tokenIn,
        address to,
        bytes calldata data
    ) external;

    /// @notice Rebalances the pool by swapping a token for protocol token through an arbitrage contract
    /// @param tokenOut Token to swap out
    /// @param amountOut Amount of token to swap out
    /// @param to Address of the arbitrage contract
    /// @param data Arbitrary data to be passed to the arbitrage contract
    function rebalanceProtocolTokenIn(
        address tokenOut,
        uint256 amountOut,
        address to,
        bytes calldata data
    ) external;

    /// @notice Rebalances the pool by swapping between two tokens through an arbitrage contract
    /// @param tokenOut Token to swap out
    /// @param amountOut Amount of token to swap out
    /// @param tokenIn Token to receive in exchange
    /// @param to Address of the arbitrage contract
    /// @param data Arbitrary data to be passed to the arbitrage contract
    function rebalance(
        address tokenOut,
        uint256 amountOut,
        address tokenIn,
        address to,
        bytes calldata data
    ) external;

    // View Functions - Mutable State
    function getFeeSettings() external view returns (Transition memory);

    /// @notice Retrieves the nonce of the settings update
    /// @return The nonce of the settings update
    function nonce() external view returns (uint16);

    /// @notice Retrieves the hash of the last requested settings update
    /// @return The hash of the last requested settings update
    function hash() external view returns (bytes32);

    /// @notice Retrieves the Timelock before the settings update can't be executed
    /// @return uint40 Timestamp when the update can be executed
    function updateTimelock() external view returns (uint40);

    /// @notice Retrieves the swap fee
    /// @return The swap fee
    function swapFee() external view returns (uint256);

    /// @notice Retrieves the mint and burn fee
    /// @return The mint and burn fee
    function mintAndBurnFee() external view returns (uint8);

    /// @notice Retrieves the manager share fee
    /// @return The manager share fee
    function managerShareFee() external view returns (uint8);

    /// @notice Retrieves the reserve amount
    /// @return Reserve amount
    function reserve() external view returns (uint256);

    /// @notice Retrieves the list of token addresses in the pool
    /// @return An array of token addresses
    function getTokens() external view returns (address[] memory);

    /// @notice Retrieves the balance of a specific token in the pool, accounting for reserves if it's the first token
    /// @param token Address of the token
    /// @return balance Current balance of the token
    function getBalance(address token)
        external
        view
        returns (uint256 balance);

    /// @notice Retrieves the current weight of a specific token, accounting for transitions
    /// @param token Address of the token
    /// @return Current weight of the token
    function getCurrentWeight(address token) external view returns (uint256);

    function getTokenWeightSettings(address token)
        external
        view
        returns (Transition memory);
}
