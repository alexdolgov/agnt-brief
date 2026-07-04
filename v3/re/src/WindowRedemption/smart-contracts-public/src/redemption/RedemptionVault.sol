// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title RedemptionVault
 * @notice Custodies payout tokens and supports reserved balances for windowed redemptions.
 * @dev The vault keeps lightweight internal accounting (`balances`, `reservedPerAsset`) but always
 * relies on on-chain token balances to avoid token trapping or ledger drift. Only authorized
 * modules can withdraw or reserve.
 *
 * **Security**
 * - Non-reentrant.
 * - `restricted` access via {AccessManaged} for all state-changing operations.
 */
contract RedemptionVault is AccessManaged, ReentrancyGuard {
    using SafeERC20 for IERC20;
    // Custom errors

    error InvalidAsset();
    error InvalidRecipient();
    error InvalidAddress();
    error ZeroAmount();
    error InsufficientBalance();

    // Functions in this contract are restricted based on AccessManager configuration
    // Expected roles:
    // - Admin functions: deposit
    // - Redeemer functions: withdraw, withdrawReserved, reserveForWindow, releaseFromWindow
    // - Guardian functions: emergencyWithdraw

    mapping(address => uint256) public balances;
    mapping(address => uint256) public reservedPerAsset; // Window redemption reservations per asset

    event Deposited(address indexed asset, address indexed from, uint256 amount);
    event Withdrawn(address indexed asset, address indexed to, uint256 amount);
    event WindowFundsReserved(address indexed asset, uint256 amount);
    event WindowFundsReleased(address indexed asset, uint256 amount);

    /// @param accessManager Address of the AccessManager contract
    constructor(address accessManager) AccessManaged(accessManager) {
        if (accessManager == address(0)) revert InvalidAddress();
    }

    /// @notice Deposit assets into the vault
    /// @dev Restricted to admin role to prevent manipulation of vault balances
    /// @param asset Address of the asset to deposit
    /// @param amount Amount to deposit
    function deposit(address asset, uint256 amount) external restricted {
        if (asset == address(0)) revert InvalidAsset();
        if (amount == 0) revert ZeroAmount();

        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        balances[asset] += amount;

        emit Deposited(asset, msg.sender, amount);
    }

    /// @notice Withdraw unreserved assets from the vault
    /// @param asset Address of the asset to withdraw
    /// @param to Recipient address
    /// @param amount Amount to withdraw
    function withdraw(address asset, address to, uint256 amount) external restricted nonReentrant {
        if (asset == address(0)) revert InvalidAsset();
        if (to == address(0)) revert InvalidRecipient();
        if (amount == 0) revert ZeroAmount();

        // Check available balance (on-chain balance minus reservations)
        uint256 available = _availableBalance(asset);
        if (available < amount) revert InsufficientBalance();

        // Update ledger if possible (for accounting, but don't let it block withdrawals)
        if (balances[asset] >= amount) {
            balances[asset] -= amount;
        } else {
            // If ledger is insufficient, set to 0 (tokens came from outside deposit)
            balances[asset] = 0;
        }

        IERC20(asset).safeTransfer(to, amount);

        emit Withdrawn(asset, to, amount);
    }

    /// @notice Withdraw from reserved funds (for window redemption claims)
    /// @param asset Address of the asset to withdraw
    /// @param to Recipient address
    /// @param amount Amount to withdraw from reserved funds
    function withdrawReserved(address asset, address to, uint256 amount)
        external
        restricted
        nonReentrant
    {
        if (asset == address(0)) revert InvalidAsset();
        if (to == address(0)) revert InvalidRecipient();
        if (amount == 0) revert ZeroAmount();

        // Check that we have enough reserved funds
        if (reservedPerAsset[asset] < amount) revert InsufficientBalance();

        // Check we have actual tokens (prevent over-reservation bugs)
        uint256 onChainBalance = IERC20(asset).balanceOf(address(this));
        if (onChainBalance < amount) revert InsufficientBalance();

        // Deduct from reserved tracking
        reservedPerAsset[asset] -= amount;

        // Update ledger if possible (don't let it underflow)
        if (balances[asset] >= amount) {
            balances[asset] -= amount;
        } else {
            balances[asset] = 0;
        }

        // Transfer the tokens
        IERC20(asset).safeTransfer(to, amount);

        emit Withdrawn(asset, to, amount);
    }

    /// @notice Get available balance of an asset (excluding window reservations)
    /// @param asset Address of the asset
    /// @return Available balance not reserved for redemption windows
    function availableBalance(address asset) external view returns (uint256) {
        return _availableBalance(asset);
    }

    /// @dev Internal helper to calculate available balance
    /// @dev Uses actual on-chain balance to prevent token trapping
    function _availableBalance(address asset) internal view returns (uint256) {
        // Use actual on-chain balance minus reservations
        // This prevents trapped tokens from direct transfers/airdrops
        uint256 onChainBalance = IERC20(asset).balanceOf(address(this));
        return
            onChainBalance > reservedPerAsset[asset] ? onChainBalance - reservedPerAsset[asset] : 0;
    }

    /// @notice Get total balance held by vault
    /// @param asset Address of the asset
    /// @return Total balance held by vault
    function totalBalance(address asset) external view returns (uint256) {
        return IERC20(asset).balanceOf(address(this));
    }

    /// @notice Reserve funds for a redemption window
    /// @param asset Address of the asset to reserve
    /// @param amount Amount to reserve for the window
    function reserveForWindow(address asset, uint256 amount) external restricted {
        if (asset == address(0)) revert InvalidAsset();
        // Check we have enough unreserved funds available
        uint256 available = _availableBalance(asset);
        if (available < amount) revert InsufficientBalance();

        // Increase the reservation
        reservedPerAsset[asset] += amount;
        emit WindowFundsReserved(asset, amount);
    }

    /// @notice Release window reservation (after claim period expires)
    /// @param asset Address of the asset to release
    /// @param amount Amount to release from window reservation
    function releaseFromWindow(address asset, uint256 amount) external restricted {
        if (asset == address(0)) revert InvalidAsset();
        if (reservedPerAsset[asset] < amount) revert InsufficientBalance();

        reservedPerAsset[asset] -= amount;
        emit WindowFundsReleased(asset, amount);
    }

    /// @notice Emergency withdrawal by guardian (break-glass)
    /// @dev Restricted function for emergency use - can withdraw even reserved funds
    /// @param asset Address of the asset
    /// @param to Recipient address
    /// @param amount Amount to withdraw
    function emergencyWithdraw(address asset, address to, uint256 amount)
        external
        restricted
        nonReentrant
    {
        if (asset == address(0)) revert InvalidAsset();
        if (to == address(0)) revert InvalidRecipient();
        if (amount == 0) revert ZeroAmount();

        // Use actual on-chain balance and cap the requested withdrawal to what is available
        uint256 onChainBalance = IERC20(asset).balanceOf(address(this));
        uint256 withdrawAmount = amount > onChainBalance ? onChainBalance : amount;
        if (withdrawAmount == 0) revert InsufficientBalance();

        // Update ledger if possible
        if (balances[asset] >= withdrawAmount) {
            balances[asset] -= withdrawAmount;
        } else {
            balances[asset] = 0;
        }

        // Adjust window reservations if necessary, ensuring reservations never exceed remaining on-chain balance
        uint256 remainingBalance = onChainBalance - withdrawAmount;
        if (reservedPerAsset[asset] > remainingBalance) {
            reservedPerAsset[asset] = remainingBalance;
        }

        IERC20(asset).safeTransfer(to, withdrawAmount);
        emit Withdrawn(asset, to, withdrawAmount);
    }
}
