// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

/**
 * @title ISwapPoolEvents
 * @notice Event definitions for SwapPool contract
 * @dev Extracted to reduce main contract size while maintaining observability
 */
interface ISwapPoolEvents {
    /// @notice Emitted when tokens are deposited into the treasury
    event TokenDeposited(address indexed token, uint256 amount, uint256 newBalance);

    /// @notice Emitted when tokens are deposited with custody context
    event TokenDepositedV2(
        address indexed token,
        uint256 amount,
        uint256 newBalance,
        bool heldInContract
    );

    /// @notice Emitted once during initialization to capture key custody configuration
    event SwapPoolInitialized(
        address indexed owner,
        address indexed treasuryAddr,
        bool heldInContract
    );

    /// @notice Emitted when tokens are withdrawn from the treasury
    event TokenWithdrawn(address indexed token, uint256 amount, uint256 newBalance);

    /// @notice Emitted when a new token is registered for swapping
    event TokenRegistered(address indexed token, uint8 decimals);

    /// @notice Emitted when a token is unregistered (removed from the pool)
    event TokenUnregistered(address indexed token);

    /// @notice Emitted when a token pair is authorized for swapping
    event TokenPairAuthorized(
        address indexed tokenA,
        address indexed tokenB,
        bytes32 indexed tokenPairHash
    );

    /// @notice Emitted when a token pair is deauthorized (trading disabled)
    event TokenPairDeauthorized(
        address indexed tokenA,
        address indexed tokenB,
        bytes32 indexed tokenPairHash
    );

    /// @notice Emitted when a trader is authorized for a specific token pair
    event TraderAuthorized(address indexed trader, bytes32 indexed tokenPairHash);

    /// @notice Emitted when a trader is deauthorized for a specific token pair
    event TraderDeauthorized(address indexed trader, bytes32 indexed tokenPairHash);

    /// @notice Emitted when swapFrom authorization is granted (destination locked at auth time)
    event SwapFromAuthorized(
        address indexed sourceWallet,
        address indexed delegate,
        address destination
    );

    /// @notice Emitted when swapFrom authorization is revoked
    event SwapFromDeauthorized(address indexed sourceWallet, address indexed delegate);

    /// @notice Emitted when swapFrom is executed
    event SwapFromExecuted(
        address indexed sourceWallet,
        address indexed destination,
        address fromToken,
        address toToken,
        uint256 amount
    );

    /// @notice Emitted when a token's support status changes
    event UnsupportedTokenUpdated(address indexed token, bool unsupported);

    /// @notice Emitted when a destination override approval is created or updated
    event DestinationOverrideApprovalUpdated(
        address indexed trader,
        address indexed fromToken,
        address indexed toToken,
        address destination,
        uint256 amount,
        uint256 deadline
    );

    /// @notice Emitted when a destination override approval is consumed
    event DestinationOverrideApprovalConsumed(
        address indexed trader,
        address indexed fromToken,
        address indexed toToken,
        address destination,
        uint256 amount,
        uint256 remaining
    );

    /// @notice Emitted when the treasury address is updated
    event TreasuryUpdated(address indexed oldTreasury, address indexed newTreasury);

    /// @notice Emitted when the withdrawOnlyWhenPaused flag is toggled
    event WithdrawOnlyWhenPausedUpdated(bool enabled);

    /// @notice Emitted when a swap is successfully executed
    event SwapExecuted(
        address indexed trader,
        address indexed fromToken,
        address indexed toToken,
        address destination,
        uint256 normalizedAmount,
        bool isMaker
    );

    /// @notice Emitted when the minimum swap amount for a token pair is updated
    event MinAmountInUpdated(address indexed fromToken, address indexed toToken, uint256 minAmount);

    /// @notice Emitted when a new treasury address is proposed
    event TreasuryProposed(address indexed currentTreasury, address indexed pendingTreasury);

    /// @notice Emitted when a swap uses a destination override
    event SwapDestination(
        address indexed trader,
        address indexed destination,
        address indexed fromToken,
        address toToken,
        uint256 amount
    );

    /// @notice Emitted when a swap is executed with extended details
    event SwapExecutedExtended(
        address indexed trader,
        address indexed fromToken,
        address indexed toToken,
        address destination,
        uint256 fromAmount,
        uint256 toAmount,
        uint256 normalizedAmount,
        bool isMaker
    );

    /// @notice Emitted when cumulative normalized volume is updated
    event CumulativeVolumeUpdated(uint256 newCumulativeNormalizedVolume);

    /// @notice Emitted when pool imbalance falls below configured threshold
    event PoolImbalanceLow(
        address indexed tokenA,
        address indexed tokenB,
        uint256 imbalanceRatio,
        uint8 imbalanceFactor
    );

    /// @notice Emitted when decimal normalization results in zero
    event NormalizationZero(
        address indexed fromToken,
        address indexed toToken,
        uint256 amount,
        uint8 fromTokenDecimals
    );

    /// @notice Emitted when pool imbalance factor is updated
    event PoolImbalanceFactorUpdated(uint8 factor);

    // NonStandardTokenAllowed event removed per TOB-FT-SWAPDIFF-2 long-term recommendation.

    /// @notice Emitted when requireContractTreasury flag changes
    event RequireContractTreasuryUpdated(bool enabled);

    /// @notice Emitted when EOA mode expiry block is updated
    event EOAModeExpiryUpdated(uint256 expiryBlock);

    /// @notice Emitted when per-token EOA max per tx is updated
    event EOAMaxPerTxUpdated(address indexed token, uint256 maxAmount);

    /// @notice Emitted when per-token EOA max per block is updated
    event EOAMaxPerBlockUpdated(address indexed token, uint256 maxAmount);

    /// @notice Emitted when Permit2 address is updated
    event Permit2Updated(address indexed permit2);

    /// @notice Emitted when EOA per-block aggregate is updated
    event EOAInTxAggregate(address indexed token, uint256 newAggregate, uint256 perTxCap);

    /// @notice Emitted when token custody mode changes
    event TokenCustodyModeUpdated(address indexed token, bool heldInContract);

    /// @notice Emitted when contractHeldTreasury flag changes
    event ContractHeldTreasuryUpdated(bool enabled);

    // DepositFromAuthorized and DepositFromDeauthorized REMOVED — depositFrom is deprecated (TOB-FT-SWAPDIFF-1).

    /// @notice Emitted when a per-direction minimum swap amount is updated (TOB-FT-SWAPDIFF-3)
    event MinAmountInByDirectionUpdated(
        address indexed fromToken,
        address indexed toToken,
        uint256 minAmount
    );
}
