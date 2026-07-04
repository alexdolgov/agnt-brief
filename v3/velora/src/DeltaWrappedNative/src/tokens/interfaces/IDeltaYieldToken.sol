// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

/// @title Delta Yield Token Interface
/// @notice Interface for tracking user positions in ERC-4626 yield strategies
/// @dev Defines the interface for strategy position tracking:
///      - Strategy management (add/remove approved strategies)
///      - Deposit/withdraw/redeem from strategies with yield tracking
///      - Principal tracking for accurate yield calculation
///      Note: Implementations are ERC20 compatible (balanceOf, transfer, etc.)
interface IDeltaYieldToken {
    /*//////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when the zero address is provided as a parameter
    error ZeroAddress();

    /// @notice Thrown when caller is not authorized
    error Unauthorized();

    /// @notice Thrown when attempting to set an invalid fee
    error InvalidFeeBps();

    /// @notice Thrown when attempting to add strategy with incorrect asset
    error AssetMismatch();

    /// @notice Thrown when attempting to add already added strategy
    error StrategyAlreadyAdded();

    /// @notice Thrown when attempting to remove non added strategy
    error StrategyNotAdded();

    /// @notice Thrown when attempting to withdraw/redeem from a strategy with no shares
    error NoSharesInStrategy();

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when yield fee is collected from a withdrawal/redemption
    /// @param token The underlying token address (e.g., WETH for native ETH)
    /// @param user The user whose yield generated the fee
    /// @param yieldAmount The total yield amount before fee
    /// @param feeAmount The fee amount collected
    /// @param feeBps The fee percentage in basis points
    event YieldFeeCollected(
        address indexed token, address indexed user, uint256 yieldAmount, uint256 feeAmount, uint16 feeBps
    );

    /// @notice Emitted when a strategy is added
    /// @param strategy The ERC-4626 strategy address
    event StrategyAdded(address indexed strategy);

    /// @notice Emitted when a strategy is removed
    /// @param strategy The ERC-4626 strategy address
    event StrategyRemoved(address indexed strategy);

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    struct UserAccounting {
        /// @dev User shares
        uint128 shares;
        /// @dev User principal (cost basis) for yield calculation
        uint128 principal;
    }

    /*//////////////////////////////////////////////////////////////
                                 GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the Delta adapter address authorized to transfer tokens without user approval
    /// @return The address of the Delta adapter
    function DELTA_ADAPTER() external view returns (address);

    /// @notice Returns the underlying ERC20 token that strategies accept
    /// @return The underlying token address that can be deposited to strategies
    function UNDERLYING() external view returns (address);

    /// @notice Gets the current protocol yield fee (basis points)
    function getProtocolYieldFee() external view returns (uint16);

    /// @notice Returns only the ERC20 portion of balance (excludes strategy positions)
    /// @dev Use this instead of balanceOf() when checking withdrawable/burnable amount
    /// @param owner The address to check
    /// @return The transferable ERC20 balance
    function transferableBalance(address owner) external view returns (uint256);

    /*//////////////////////////////////////////////////////////////
                        STRATEGY MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /// @notice Add an ERC-4626 strategy that users can deposit into
    /// @dev Only callable by Delta adapter. Strategy's asset must match underlying token.
    /// @param strategy The address of the ERC-4626 vault to add
    function addStrategy(address strategy) external;

    /// @notice Remove an ERC-4626 strategy from the approved list
    /// @dev Only callable by Delta adapter. Existing positions are NOT affected.
    ///      Users with positions in removed strategies can still withdraw.
    /// @param strategy The address of the ERC-4626 vault to remove
    function removeStrategy(address strategy) external;

    /*//////////////////////////////////////////////////////////////
                      STRATEGY DEPOSIT / WITHDRAW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit underlying tokens directly to an ERC-4626 strategy
    /// @param assets The amount of underlying tokens to deposit
    /// @param strategy The ERC-4626 strategy to deposit into
    /// @param receiver The address that will own the strategy position
    function depositToStrategy(uint256 assets, address strategy, address receiver) external;

    /// @notice Deposit tokens that are already in this contract to a strategy
    /// @dev Only callable by the adapter. Tokens must be transferred to this contract first.
    /// @param assets The amount of underlying tokens to deposit (must already be in this contract)
    /// @param strategy The ERC-4626 strategy to deposit into
    /// @param receiver The address that will own the strategy position
    function depositToStrategyDirect(uint256 assets, address strategy, address receiver) external;

    /// @notice Withdraw exact assets from strategy
    /// @param assets The amount of underlying assets to withdraw
    /// @param strategy The strategy to withdraw from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of the assets
    /// @return netAssets The net amount of assets transferred to receiver (after yield fee)
    function withdrawFromStrategy(
        uint256 assets,
        address strategy,
        address owner,
        address receiver
    )
        external
        returns (uint256 netAssets);

    /// @notice Redeem shares from strategy
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of the assets
    /// @return assets The net amount of assets transferred (after yield fee)
    function redeemFromStrategy(
        uint256 shares,
        address strategy,
        address owner,
        address receiver
    )
        external
        returns (uint256 assets);

    /*//////////////////////////////////////////////////////////////
                              YIELD FEES
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the protocol yield fee percentage
    /// @dev Only callable by the Delta adapter. Fee is applied to yield only, not principal.
    /// @param feeBps The fee in basis points (100 = 1%, max 10000 = 100%)
    function setProtocolYieldFee(uint16 feeBps) external;

    /// @notice Returns user's principal (total deposited) for a strategy
    function userPrincipal(address strategy, address user) external view returns (uint256);

    /// @notice Returns user's shares for a strategy
    function strategyShares(address strategy, address user) external view returns (uint256);

    /*//////////////////////////////////////////////////////////////
                          PREVIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Preview how many shares would be minted for a deposit
    /// @param assets The amount of underlying assets to deposit
    /// @param strategy The strategy to deposit into
    /// @return shares The number of shares that would be minted
    function previewDepositToStrategy(uint256 assets, address strategy) external view returns (uint256 shares);

    /// @notice Preview how many shares would be burned for a withdrawal
    /// @param assets The amount of assets to withdraw
    /// @param strategy The strategy to withdraw from
    /// @return shares The number of shares that would be burned
    function previewWithdrawFromStrategy(uint256 assets, address strategy) external view returns (uint256 shares);

    /// @notice Convert a principal amount to proportional shares
    /// @dev Calculates how many shares correspond to a specific principal
    ///      deposit amount based on the user's position ratio
    /// @param principalAmount The principal amount to convert to shares
    /// @param strategy The strategy the principal was deposited to
    /// @param owner The owner of the position
    /// @return shares The proportional shares for this principal amount
    function convertToShares(
        uint256 principalAmount,
        address strategy,
        address owner
    )
        external
        view
        returns (uint256 shares);

    /// @notice Preview redemption: gross assets, yield fee, and net assets
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @return grossAssets The total assets before fee
    /// @return yieldFee The yield fee that would be charged
    /// @return netAssets The net assets after fee
    function previewRedeemFromStrategy(
        uint256 shares,
        address strategy,
        address owner
    )
        external
        view
        returns (uint256 grossAssets, uint256 yieldFee, uint256 netAssets);
}
