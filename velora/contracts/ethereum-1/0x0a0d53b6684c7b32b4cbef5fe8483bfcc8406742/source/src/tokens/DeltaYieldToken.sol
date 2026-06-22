// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import { ERC20 } from "@solady/tokens/ERC20.sol";
import { SafeTransferLib } from "@solady/utils/SafeTransferLib.sol";
import { FixedPointMathLib } from "@solady/utils/FixedPointMathLib.sol";
import { ReentrancyGuardTransient as ReentrancyGuard } from "@openzeppelin/utils/ReentrancyGuardTransient.sol";

import { IERC4626 } from "@openzeppelin/interfaces/IERC4626.sol";
import { IERC20Metadata } from "@openzeppelin/interfaces/IERC20Metadata.sol";
import { SafeCast } from "@openzeppelin/utils/math/SafeCast.sol";
import { IDeltaYieldToken } from "./interfaces/IDeltaYieldToken.sol";
import { IDeltaTokenModule } from "@modules/interfaces/IDeltaTokenModule.sol";
import { ERC20UtilsLib } from "@modules/libraries/ERC20UtilsLib.sol";

/// @title Delta Yield Token
/// @notice Base contract for tracking user positions in ERC-4626 yield strategies
/// @dev This contract serves as a strategy position tracker for productive orders.
///      Key features:
///      - Tracks user deposits into ERC-4626 yield strategies
///      - Calculates yield vs principal for fee collection
///      - Delegated access for Delta adapter (no approval needed for order execution)
///      - ERC20-compatible balanceOf() includes strategy positions for wallet display
///
///      Note: For ERC20 underlying tokens, this contract does NOT mint wrapped tokens.
///      Users deposit directly to strategies via depositToStrategy(). The ERC20 interface
///      is used for compatibility with wallets/UIs to display strategy position values.
///      Strategy positions are NOT transferable via transfer().
///
///      For native ETH, see DeltaWrappedNative which extends this with wrapping capabilities.
contract DeltaYieldToken is ERC20, ReentrancyGuard, IDeltaYieldToken {
    /*//////////////////////////////////////////////////////////////
                               LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using SafeTransferLib for address;
    using SafeCast for uint256;
    using ERC20UtilsLib for address;
    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The Delta adapter address authorized to transfer tokens without user approval
    /// @dev This address can call transferFrom() without requiring prior approve() calls,
    ///      enabling gasless order execution for users
    address public immutable DELTA_ADAPTER;

    /// @notice The token name (e.g., "Delta USDC", "Delta Ether")
    string private _name;

    /// @notice The token symbol (e.g., "dUSDC", "dETH")
    string private _symbol;

    /// @notice The token decimals (matches underlying token)
    uint8 private immutable _decimals;

    /// @notice The underlying ERC20 token that strategies accept
    /// @dev For DeltaWrappedNative, this is WETH
    address public immutable UNDERLYING;

    /// @notice Array of approved ERC-4626 strategies
    IERC4626[] public strategies;

    /// @notice Tracks user shares and principal (cost basis) per strategy for yield calculation
    /// @dev userAccounting[strategy][user].shares = number of vault shares owned
    ///      userAccounting[strategy][user].principal = total assets deposited (before yield)
    mapping(address strategy => mapping(address user => UserAccounting accounting)) public userAccounting;

    /// @notice Mapping to check if an address is an approved strategy
    mapping(address => bool) public isStrategy;

    /// @notice Protocol fee on generated yield (in basis points)
    uint16 private _protocolYieldFeeBps;

    /// @notice 100% in basis points
    uint256 private constant HUNDRED_PERCENT = 10_000;

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @notice Deploys the Delta Yield Token with a designated Delta adapter
    /// @param _deltaAdapter The address of the Delta adapter contract that can perform delegated transfers
    /// @param __name The name of the token (e.g., "Delta USDC")
    /// @param __symbol The symbol of the token (e.g., "dUSDC")
    /// @param _underlying The underlying ERC20 token address (e.g., USDC, or WETH for native)
    /// @dev Reverts if _deltaAdapter is the zero address
    constructor(address _deltaAdapter, string memory __name, string memory __symbol, address _underlying) {
        if (_deltaAdapter == address(0)) revert ZeroAddress();
        DELTA_ADAPTER = _deltaAdapter;
        _name = __name;
        _symbol = __symbol;
        UNDERLYING = _underlying;
        _decimals = IERC20Metadata(_underlying).decimals();

        // Pre-approve adapter for yield fee collection (pull-based)
        _underlying.safeApprove(_deltaAdapter, type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Authorizes the asset owner OR the Delta protocol
    /// @param owner The user whose assets are being accessed
    modifier onlyOwnerOrDelta(address owner) {
        if (msg.sender != owner && msg.sender != DELTA_ADAPTER) {
            revert Unauthorized();
        }
        _;
    }

    /// @notice Authorizes only the Delta protocol for admin operations
    modifier onlyDelta() {
        if (msg.sender != DELTA_ADAPTER) {
            revert Unauthorized();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            ERC20 METADATA
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the name of the token
    /// @return The token name
    function name() public view override returns (string memory) {
        return _name;
    }

    /// @notice Returns the symbol of the token
    /// @return The token symbol
    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    /// @notice Returns the decimals of the token
    /// @return The token decimals
    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    /*//////////////////////////////////////////////////////////////
                      USER ACCOUNTING VIEWS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the number of strategy shares owned by a user
    /// @param strategy The ERC-4626 strategy address
    /// @param user The user address
    /// @return The number of shares the user has in the strategy
    function strategyShares(address strategy, address user) external view returns (uint256) {
        return userAccounting[strategy][user].shares;
    }

    /// @notice Get the principal (cost basis) deposited by a user into a strategy
    /// @dev Used for yield calculation: yield = currentValue - principal
    /// @param strategy The ERC-4626 strategy address
    /// @param user The user address
    /// @return The principal amount in underlying tokens
    function userPrincipal(address strategy, address user) external view returns (uint256) {
        return userAccounting[strategy][user].principal;
    }

    /*//////////////////////////////////////////////////////////////
                          STRATEGY MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /// @notice Add an ERC-4626 strategy that users can deposit into
    /// @param strategy The address of the ERC-4626 vault to add
    /// @dev Only callable by owner. Strategy's asset must match underlying token.
    function addStrategy(address strategy) external onlyDelta {
        if (isStrategy[strategy]) {
            revert StrategyAlreadyAdded();
        }

        if (IERC4626(strategy).asset() != UNDERLYING) {
            revert AssetMismatch();
        }

        strategies.push(IERC4626(strategy));
        isStrategy[strategy] = true;

        emit StrategyAdded(strategy);
    }

    /// @notice Remove an ERC-4626 strategy from the approved list
    /// @param strategy The address of the ERC-4626 vault to remove
    /// @dev Only callable by owner. Existing positions are NOT affected.
    ///      Users with positions in removed strategies can still withdraw.
    function removeStrategy(address strategy) external onlyDelta {
        if (!isStrategy[strategy]) {
            revert StrategyNotAdded();
        }

        isStrategy[strategy] = false;

        for (uint256 i = 0; i < strategies.length; i++) {
            if (strategies[i] == IERC4626(strategy)) {
                // Swap places with the last strategy if not already last
                if (i != strategies.length - 1) {
                    IERC4626 lastStrategy = strategies[strategies.length - 1];
                    strategies[i] = lastStrategy;
                }
                // Remove last strategy from the list
                strategies.pop();
                break;
            }
        }

        emit StrategyRemoved(strategy);
    }

    /*//////////////////////////////////////////////////////////////
                        STRATEGY DEPOSIT / WITHDRAW
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposit underlying tokens directly to an ERC-4626 strategy
    /// @param assets The amount of underlying tokens to deposit
    /// @param strategy The ERC-4626 strategy to deposit into
    /// @param receiver The address that will own the strategy position
    function depositToStrategy(uint256 assets, address strategy, address receiver) external nonReentrant {
        if (receiver == address(0)) revert ZeroAddress();

        if (!isStrategy[strategy]) {
            revert StrategyNotAdded();
        }

        UNDERLYING.safeTransferFrom(msg.sender, address(this), assets);
        UNDERLYING.safeApprove(strategy, assets);

        // Cache user's state before any changes
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][receiver];

        uint256 shares = IERC4626(strategy).deposit(assets, address(this));

        // Update user's shares and principal
        userAccounting[strategy][receiver] = UserAccounting({
            shares: userStrategyAccounting.shares + shares.toUint128(),
            principal: userStrategyAccounting.principal + assets.toUint128()
        });
    }

    /// @notice Deposit tokens that are already in this contract to a strategy
    /// @dev Only callable by the adapter. Tokens must be transferred to this contract first.
    /// @param assets The amount of underlying tokens to deposit (must already be in this contract)
    /// @param strategy The ERC-4626 strategy to deposit into
    /// @param receiver The address that will own the strategy position
    function depositToStrategyDirect(
        uint256 assets,
        address strategy,
        address receiver
    )
        external
        nonReentrant
        onlyDelta
    {
        if (receiver == address(0)) revert ZeroAddress();
        if (!isStrategy[strategy]) revert StrategyNotAdded();

        UNDERLYING.safeApprove(strategy, assets);

        // Cache user's state before any changes
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][receiver];

        uint256 shares = IERC4626(strategy).deposit(assets, address(this));

        // Update user's shares and principal
        userAccounting[strategy][receiver] = UserAccounting({
            shares: userStrategyAccounting.shares + shares.toUint128(),
            principal: userStrategyAccounting.principal + assets.toUint128()
        });
    }

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
        onlyOwnerOrDelta(owner)
        nonReentrant
        returns (uint256 netAssets)
    {
        if (receiver == address(0)) revert ZeroAddress();

        // Cache user's state before any changes
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][owner];
        uint128 userShares = userStrategyAccounting.shares;
        uint128 principal = userStrategyAccounting.principal;

        // Defensive check: user must have shares to withdraw
        if (userShares == 0) revert NoSharesInStrategy();

        // Perform the actual withdraw (returns shares burned)
        uint256 shares = IERC4626(strategy).withdraw(assets, address(this), address(this));

        // Calculate proportional principal/yield split
        (uint256 principalPortion, uint256 yieldPortion) = _calculatePortions(shares, userShares, principal, assets);

        // Update user's shares and principal
        userAccounting[strategy][owner] = UserAccounting({
            shares: userShares - shares.toUint128(), principal: principal - principalPortion.toUint128()
        });

        // Accrue protocol fee on yield and transfer net assets to receiver
        uint256 yieldFee = _accrueYieldFee(owner, yieldPortion);
        netAssets = assets - yieldFee;
        UNDERLYING.safeTransfer(receiver, netAssets);
    }

    /// @notice Redeem shares from strategy
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of the assets
    /// @return assets The net amount of assets transferred to receiver (after yield fee)
    function redeemFromStrategy(
        uint256 shares,
        address strategy,
        address owner,
        address receiver
    )
        external
        onlyOwnerOrDelta(owner)
        nonReentrant
        returns (uint256 assets)
    {
        if (receiver == address(0)) revert ZeroAddress();

        // Cache user's state before any changes
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][owner];
        uint128 userShares = userStrategyAccounting.shares;
        uint128 principal = userStrategyAccounting.principal;

        // Defensive check: user must have shares to redeem
        if (userShares == 0) revert NoSharesInStrategy();

        // Perform the actual redeem
        uint256 grossAssets = IERC4626(strategy).redeem(shares, address(this), address(this));

        // Calculate proportional principal/yield split
        (uint256 principalPortion, uint256 yieldPortion) =
            _calculatePortions(shares, userStrategyAccounting.shares, userStrategyAccounting.principal, grossAssets);

        // Update user's shares and principal
        userAccounting[strategy][owner] = UserAccounting({
            shares: userShares - shares.toUint128(), principal: principal - principalPortion.toUint128()
        });

        // Accrue protocol fee on yield and transfer net assets to receiver
        uint256 yieldFee = _accrueYieldFee(owner, yieldPortion);
        assets = grossAssets - yieldFee;
        UNDERLYING.safeTransfer(receiver, assets);
    }

    /*//////////////////////////////////////////////////////////////
                              YIELD FEES
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the protocol yield fee percentage
    /// @dev Only callable by the adapter (via DeltaTokenModule).
    ///      Fee is applied to yield only, not principal.
    /// @param feeBps The fee in basis points (100 = 1%, max 10000 = 100%)
    function setProtocolYieldFee(uint16 feeBps) external onlyDelta {
        if (feeBps > HUNDRED_PERCENT) revert InvalidFeeBps();
        _protocolYieldFeeBps = feeBps;
    }

    /// @notice Get the current protocol yield fee percentage
    /// @return The fee in basis points (100 = 1%)
    function getProtocolYieldFee() external view returns (uint16) {
        return _protocolYieldFeeBps;
    }

    /*//////////////////////////////////////////////////////////////
                        YIELD CALCULATION
    //////////////////////////////////////////////////////////////*/

    /// @notice Calculate principal and yield portions for a withdrawal
    /// @dev Pure math - no external calls. Uses share ratio to determine proportional principal.
    /// @param shares The shares being redeemed/withdrawn
    /// @param userShares The user's total shares (before operation)
    /// @param principal The user's total principal (before operation)
    /// @param assets The actual assets received from the operation
    /// @return principalPortion The portion of assets that is principal
    /// @return yieldPortion The portion of assets that is yield
    function _calculatePortions(
        uint256 shares,
        uint256 userShares,
        uint256 principal,
        uint256 assets
    )
        internal
        pure
        returns (uint256 principalPortion, uint256 yieldPortion)
    {
        // Calculate proportional principal based on share ratio (round down)
        principalPortion = userShares > 0 ? principal.mulDiv(shares, userShares) : 0;

        // Yield is the excess assets beyond the proportional principal
        if (assets > principalPortion) {
            yieldPortion = assets - principalPortion;
        }
    }

    /// @notice Calculate yield fee amount (pure calculation, no state changes)
    /// @param yieldAmount The yield amount to calculate fee from
    /// @return fee The calculated fee amount
    function _calculateYieldFee(uint256 yieldAmount) internal view returns (uint256 fee) {
        if (yieldAmount == 0) return 0;
        uint16 feeBps = _protocolYieldFeeBps;
        if (feeBps == 0) return 0;
        fee = yieldAmount.mulDiv(feeBps, HUNDRED_PERCENT);
    }

    /// @notice Calculate and immediately transfer yield fee to adapter
    /// @param user The user whose yield generated the fee
    /// @param yieldAmount The total yield amount to calculate fee from
    /// @return fee The fee amount that was transferred to adapter
    function _accrueYieldFee(address user, uint256 yieldAmount) internal returns (uint256 fee) {
        fee = _calculateYieldFee(yieldAmount);
        if (fee > 0) {
            // Immediately transfer fee to adapter (pull-based: adapter pulls via pre-approval)
            IDeltaTokenModule(DELTA_ADAPTER).pullYieldFee(UNDERLYING, fee);

            emit YieldFeeCollected(UNDERLYING, user, yieldAmount, fee, _protocolYieldFeeBps);
        }
    }

    /*//////////////////////////////////////////////////////////////
                          PREVIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Preview how many shares would be minted for a deposit
    /// @param assets The amount of underlying assets to deposit
    /// @param strategy The strategy to deposit into
    /// @return shares The number of shares that would be minted
    function previewDepositToStrategy(uint256 assets, address strategy) external view returns (uint256 shares) {
        return IERC4626(strategy).previewDeposit(assets);
    }

    /// @notice Preview how many shares would be burned for a withdrawal
    /// @param assets The amount of assets to withdraw
    /// @param strategy The strategy to withdraw from
    /// @return shares The number of shares that would be burned
    function previewWithdrawFromStrategy(uint256 assets, address strategy) external view returns (uint256 shares) {
        return IERC4626(strategy).previewWithdraw(assets);
    }

    /// @notice Convert a principal amount to proportional shares
    /// @dev Calculates how many shares correspond to a specific principal
    ///      deposit amount based on the user's position ratio. Useful for
    ///      cancel/expire flows to exit the exact position including yield.
    ///      Rounds UP to ensure we redeem at least the expected srcAmount.
    /// @param principalAmount The principal amount to convert to shares
    /// @param strategy The strategy the principal was deposited to
    /// @param owner The owner of the position
    /// @return shares The proportional shares for this principal amount (rounded up)
    function convertToShares(
        uint256 principalAmount,
        address strategy,
        address owner
    )
        external
        view
        returns (uint256 shares)
    {
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][owner];

        if (userStrategyAccounting.principal == 0) return 0;

        // Round up to ensure we redeem at least the expected srcAmount
        return principalAmount.mulDivUp(userStrategyAccounting.shares, userStrategyAccounting.principal);
    }

    /// @notice Preview redemption: gross assets, yield fee, and net assets
    /// @dev Accounts for user's principal to calculate yield and fee
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @return grossAssets The total assets before fee
    /// @return yieldFee The yield fee that would be charged
    /// @return netAssets The net assets after fee (what receiver gets)
    function previewRedeemFromStrategy(
        uint256 shares,
        address strategy,
        address owner
    )
        external
        view
        returns (uint256 grossAssets, uint256 yieldFee, uint256 netAssets)
    {
        grossAssets = IERC4626(strategy).previewRedeem(shares);

        // Get user's current accounting
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][owner];

        // Calculate yield portion
        (, uint256 yieldPortion) =
            _calculatePortions(shares, userStrategyAccounting.shares, userStrategyAccounting.principal, grossAssets);

        // Calculate fee on yield (uses shared helper)
        yieldFee = _calculateYieldFee(yieldPortion);
        netAssets = grossAssets - yieldFee;
    }

    /*//////////////////////////////////////////////////////////////
                        OVERRIDDEN TRANSFERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the total balance including strategy positions
    /// @param owner The address to query balance for
    /// @return result The ERC20 balance plus value of all strategy positions
    /// @dev This includes both:
    ///      - ERC20 token balance (transferable, only non-zero for DeltaWrappedNative)
    ///      - Strategy position values (NOT transferable, for productive orders)
    ///      Wallets display this as the user's total holdings.
    ///      Note: Only the ERC20 portion can be transferred via transfer().
    function balanceOf(address owner) public view override returns (uint256 result) {
        result = super.balanceOf(owner);

        for (uint256 i = 0; i < strategies.length; i++) {
            IERC4626 strategy = strategies[i];
            uint256 shares = userAccounting[address(strategy)][owner].shares;

            if (shares != 0) {
                result += strategy.convertToAssets(shares);
            }
        }
    }

    /// @notice Returns only the transferable ERC20 balance (excludes strategy positions)
    /// @param owner The address to query balance for
    /// @return The ERC20 token balance that can be transferred
    /// @dev For DeltaYieldToken (ERC20 underlying), this is always 0.
    ///      For DeltaWrappedNative, this is the wrapped native token balance.
    function transferableBalance(address owner) external view returns (uint256) {
        return super.balanceOf(owner);
    }
}
