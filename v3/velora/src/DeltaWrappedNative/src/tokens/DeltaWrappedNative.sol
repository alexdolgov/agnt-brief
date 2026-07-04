// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import { DeltaYieldToken } from "@tokens/DeltaYieldToken.sol";
import { IDeltaWrappedNative } from "@tokens/interfaces/IDeltaWrappedNative.sol";
import { IWETH } from "@interfaces/util/IWETH.sol";
import { SafeTransferLib } from "@solady/utils/SafeTransferLib.sol";
import { SafeCast } from "@openzeppelin/utils/math/SafeCast.sol";
import { IERC4626 } from "@openzeppelin/interfaces/IERC4626.sol";

/// @title Delta Wrapped Native Token
/// @notice Wrapped native token (ETH/MATIC/BNB) for PortikusV2 Delta adapter integration
/// @dev Extends DeltaYieldToken with native token wrapping capabilities.
///      Key features:
///      - Native token wrapping/unwrapping (depositNative/withdrawNative)
///      - Direct deposits to yield strategies (depositNativeToStrategy)
///      - Delegated access for Delta adapter (no approval needed)
///      - receive() function for direct ETH deposits
///
///      Two types of balances:
///      - ERC20 balance (from depositNative): Transferable via transfer()
///      - Strategy positions (from depositNativeToStrategy): NOT transferable
///
///      The balanceOf() function returns both combined for wallet display.
///      Use transferableBalance() to see only the transferable portion.
contract DeltaWrappedNative is DeltaYieldToken, IDeltaWrappedNative {
    /*//////////////////////////////////////////////////////////////
                               LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using SafeTransferLib for address;
    using SafeCast for uint256;

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @notice Deploys the Delta Wrapped Native token with a designated Delta adapter
    /// @param _deltaAdapter The address of the Delta adapter contract that can perform delegated transfers
    /// @param __name The name of the token (e.g., "Delta Ether")
    /// @param __symbol The symbol of the token (e.g., "dETH")
    /// @param _wrappedNative The WETH contract address for this chain
    /// @dev Reverts if _deltaAdapter is the zero address
    constructor(
        address _deltaAdapter,
        string memory __name,
        string memory __symbol,
        address _wrappedNative
    )
        DeltaYieldToken(_deltaAdapter, __name, __symbol, _wrappedNative)
    { }

    /*//////////////////////////////////////////////////////////////
                      DEPOSIT / WITHDRAW NATIVE
    //////////////////////////////////////////////////////////////*/

    /// @notice Wrap native tokens (ETH) into transferable dETH
    /// @param receiver The address to receive the wrapped tokens
    /// @dev Mints dETH 1:1 with msg.value. These tokens ARE transferable.
    ///      For non-productive orders that need ERC20 compatibility.
    function depositNative(address receiver) external payable {
        if (receiver == address(0)) revert ZeroAddress();

        _mint(receiver, msg.value);
    }

    /// @notice Deposit native tokens directly into a yield strategy
    /// @param strategy The ERC-4626 strategy to deposit into
    /// @param receiver The address that will own the strategy position
    /// @dev Wraps ETH to WETH, deposits to strategy, tracks shares/principal.
    ///      Does NOT mint any dETH tokens - position is tracked in strategyShares.
    ///      For productive orders that earn yield while waiting to execute.
    // slither-disable-next-line reentrancy-eth,reentrancy-no-eth
    function depositNativeToStrategy(address strategy, address receiver) external payable nonReentrant {
        if (receiver == address(0)) revert ZeroAddress();

        if (!isStrategy[strategy]) {
            revert StrategyNotAdded();
        }

        // Wrap native to WETH
        IWETH(UNDERLYING).deposit{ value: msg.value }();
        UNDERLYING.safeApprove(strategy, msg.value);

        // Cache user's state before any changes
        UserAccounting memory userStrategyAccounting = userAccounting[strategy][receiver];

        uint256 shares = IERC4626(strategy).deposit(msg.value, address(this));

        // Update user's shares and principal
        userAccounting[strategy][receiver] = UserAccounting({
            shares: userStrategyAccounting.shares + shares.toUint128(),
            principal: userStrategyAccounting.principal + msg.value.toUint128()
        });
    }

    /// @notice Unwrap dETH back to native tokens (ETH)
    /// @param amount The amount of dETH to unwrap
    /// @param owner The owner of the dETH tokens
    /// @param receiver The address to receive native tokens
    /// @dev Burns dETH and sends native ETH to receiver.
    ///      Only works on ERC20 balance (from depositNative), not strategy positions.
    function withdrawNative(uint256 amount, address owner, address receiver) external onlyOwnerOrDelta(owner) {
        if (receiver == address(0)) revert ZeroAddress();
        _burn(owner, amount);
        receiver.safeTransferETH(amount);
    }

    /// @notice Withdraw exact native assets from strategy
    /// @param assets The amount of native assets to withdraw
    /// @param strategy The strategy to withdraw from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of native tokens
    /// @return netAssets The net amount of native assets transferred to receiver (after yield fee)
    function withdrawNativeFromStrategy(
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

        // Withdraw WETH to this contract
        uint256 shares = IERC4626(strategy).withdraw(assets, address(this), address(this));

        // Calculate proportional principal/yield split
        (uint256 principalPortion, uint256 yieldPortion) = _calculatePortions(shares, userShares, principal, assets);

        // Update user's shares and principal
        userAccounting[strategy][owner] = UserAccounting({
            shares: userShares - shares.toUint128(), principal: principal - principalPortion.toUint128()
        });

        // Accrue protocol fee on yield (fee is pulled as WETH by adapter)
        uint256 yieldFee = _accrueYieldFee(owner, yieldPortion);
        netAssets = assets - yieldFee;

        // Withdraw native (only the net amount after fee was pulled)
        IWETH(UNDERLYING).withdraw(netAssets);
        // Transfer native to the receiver
        receiver.safeTransferETH(netAssets);
    }

    /// @notice Redeem shares from strategy as native tokens
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @param receiver The recipient of native tokens
    /// @return assets The net amount of native assets transferred to receiver (after yield fee)
    function redeemNativeFromStrategy(
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

        // Redeem WETH to this contract
        uint256 grossAssets = IERC4626(strategy).redeem(shares, address(this), address(this));

        // Calculate proportional principal/yield split
        (uint256 principalPortion, uint256 yieldPortion) =
            _calculatePortions(shares, userShares, principal, grossAssets);

        // Update user's shares and principal
        userAccounting[strategy][owner] = UserAccounting({
            shares: userShares - shares.toUint128(), principal: principal - principalPortion.toUint128()
        });

        // Accrue protocol fee on yield (fee is pulled as WETH by adapter)
        uint256 yieldFee = _accrueYieldFee(owner, yieldPortion);
        assets = grossAssets - yieldFee;

        // Withdraw native (only the net amount after fee was pulled)
        IWETH(UNDERLYING).withdraw(assets);
        // Transfer native to the receiver
        receiver.safeTransferETH(assets);
    }

    /*//////////////////////////////////////////////////////////////
                          PREVIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Preview how many shares would be minted for a native deposit to strategy
    /// @dev Same as previewDepositToStrategy since WETH and native ETH are 1:1
    /// @param nativeAmount The amount of native tokens to deposit
    /// @param strategy The strategy to deposit into
    /// @return shares The number of shares that would be minted
    function previewDepositNativeToStrategy(
        uint256 nativeAmount,
        address strategy
    )
        external
        view
        returns (uint256 shares)
    {
        return IERC4626(strategy).previewDeposit(nativeAmount);
    }

    /// @notice Preview how many shares would be burned for a native withdrawal
    /// @dev Same as previewWithdrawFromStrategy since WETH and native ETH are 1:1
    /// @param nativeAmount The amount of native tokens to withdraw
    /// @param strategy The strategy to withdraw from
    /// @return shares The number of shares that would be burned
    function previewWithdrawNativeFromStrategy(
        uint256 nativeAmount,
        address strategy
    )
        external
        view
        returns (uint256 shares)
    {
        return IERC4626(strategy).previewWithdraw(nativeAmount);
    }

    /// @notice Preview native redemption: gross amount, yield fee, and net amount
    /// @dev Accounts for user's principal to calculate yield and fee
    /// @param shares The number of shares to redeem
    /// @param strategy The strategy to redeem from
    /// @param owner The owner of the shares
    /// @return grossNative The total native before fee
    /// @return yieldFee The yield fee that would be charged (in native)
    /// @return netNative The net native after fee (what receiver gets)
    function previewRedeemNativeFromStrategy(
        uint256 shares,
        address strategy,
        address owner
    )
        external
        view
        returns (uint256 grossNative, uint256 yieldFee, uint256 netNative)
    {
        // Delegate to parent - values are in WETH which equals native 1:1
        (grossNative, yieldFee, netNative) = this.previewRedeemFromStrategy(shares, strategy, owner);
    }

    /*//////////////////////////////////////////////////////////////
                              FALLBACK
    //////////////////////////////////////////////////////////////*/

    /// @notice Allow the contract to receive native tokens directly and wrap them for the sender
    /// @dev Automatically wraps native tokens 1:1 for any native tokens sent directly to the contract.
    ///      When receiving ETH from WETH withdrawal (msg.sender == UNDERLYING), we skip minting
    ///      since this is part of the unwrapping flow, not a new deposit.
    receive() external payable {
        // Don't mint when receiving ETH from WETH withdrawal
        if (msg.sender == UNDERLYING) return;

        _mint(msg.sender, msg.value);
    }
}
