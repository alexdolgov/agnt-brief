// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title IVault
/// @author Bundie Team
/// @notice Interface for vault standard modules in the Bundie protocol
/// @dev Each vault standard (ERC-4626, ERC-7540, etc.) implements this interface.
///      VaultModules abstract away the specifics of how deposits/withdrawals work for
///      different vault standards, presenting a unified interface to the Router.
///
///      ## Architecture
///      - The Router delegates local deposit/withdrawal operations to the VaultModule
///        referenced by `strategy.vaultModule`.
///      - Each module handles its own slippage enforcement and vault interaction logic.
///      - Modules signal sync vs async completion via the `operationId` return value:
///        - `operationId == bytes32(0)` → synchronous (shares/assets received immediately)
///        - `operationId != bytes32(0)` → asynchronous (pending, await validator confirmation)
///
///      ## Sync vs Async Operations
///      - **Sync** (e.g., ERC-4626 deposit/redeem): Returns `(bytes32(0), receivedAmount)`.
///        The Router returns `bytes32(0)` as `msgGuid`, and the Account creates/updates
///        the position immediately.
///      - **Async** (e.g., ERC-7540 requestDeposit/requestRedeem): Returns
///        `(operationId, 0)`. The Router returns the `operationId` as `msgGuid`, and the
///        Account stores a pending operation for validator confirmation.
///
///      ## Security Considerations
///      - Always check `isActive()` before calling `deposit()` or `withdraw()`
///      - The Router approves the VaultModule to spend tokens before calling
///      - Slippage enforcement is the module's responsibility (not the Router's)
interface IVault {
    /// @notice Execute a deposit into a vault
    /// @dev The caller (Router) must approve this module to spend `amount` of `asset` before calling.
    ///      For sync modules: returns `(bytes32(0), sharesReceived)`.
    ///      For async modules: returns `(operationId, 0)` where operationId tracks the pending request.
    ///
    /// @param vault The vault/pool address to deposit into
    /// @param asset The asset token being deposited
    /// @param amount Amount of asset tokens to deposit
    /// @param receiver Address to receive shares (the Account)
    /// @param params Module-specific encoded parameters (e.g., slippage tolerance)
    /// @return operationId Unique identifier for async tracking (bytes32(0) for sync)
    /// @return sharesReceived Actual shares received (non-zero for sync, 0 for async)
    function deposit(address vault, address asset, uint256 amount, address receiver, bytes calldata params)
        external
        returns (bytes32 operationId, uint256 sharesReceived);

    /// @notice Execute a withdrawal from a vault
    /// @dev The caller (Router) must approve this module to spend `amount` of `share` before calling.
    ///      For sync modules: returns `(bytes32(0), assetsReceived)`.
    ///      For async modules: returns `(operationId, 0)` where operationId tracks the pending request.
    ///
    /// @param vault The vault/pool address to withdraw from
    /// @param share The share token being redeemed
    /// @param amount Amount of share tokens to redeem
    /// @param receiver Address to receive underlying assets (the Account)
    /// @param owner Address that owns the shares (typically the Router after transfer)
    /// @param params Module-specific encoded parameters (e.g., slippage tolerance)
    /// @return operationId Unique identifier for async tracking (bytes32(0) for sync)
    /// @return assetsReceived Actual assets received (non-zero for sync, 0 for async)
    function withdraw(
        address vault,
        address share,
        uint256 amount,
        address receiver,
        address owner,
        bytes calldata params
    ) external returns (bytes32 operationId, uint256 assetsReceived);

    /// @notice Preview expected shares from a deposit
    /// @dev Used by sync modules for slippage estimation.
    ///      Async modules should revert (no meaningful preview available).
    /// @param vault The vault address to query
    /// @param assets Amount of assets to simulate depositing
    /// @return shares Expected shares that would be minted
    function previewDeposit(address vault, uint256 assets) external returns (uint256 shares);

    /// @notice Preview expected assets from a redemption
    /// @dev Used by sync modules for slippage estimation.
    ///      Async modules should revert (no meaningful preview available).
    /// @param vault The vault address to query
    /// @param shares Amount of shares to simulate redeeming
    /// @return assets Expected assets that would be returned
    function previewRedeem(address vault, uint256 shares) external returns (uint256 assets);

    /// @notice Extract minAmountOut from module-specific encoded parameters
    /// @dev Each module defines its own parameter encoding format.
    ///      Used by Deposit.sol/Withdraw.sol for async operations to store slippage bounds.
    /// @param params Module-specific encoded parameters
    /// @return minAmountOut Minimum acceptable output amount (0 if not specified)
    function extractMinAmountOut(bytes calldata params) external pure returns (uint256 minAmountOut);

    /// @notice Returns the human-readable name of this vault module
    /// @dev Used for identification and logging
    /// @return name The module name (e.g., "ERC4626", "ERC7540")
    function moduleName() external view returns (string memory name);

    /// @notice Checks if this vault module is currently active and usable
    /// @dev Returns false if the module is paused or deprecated.
    ///      Always check this before calling `deposit()` or `withdraw()`.
    /// @return active True if the module is operational, false otherwise
    function isActive() external view returns (bool active);

    /// @notice Look up the original ERC-7540 requestId from a namespaced operationId
    /// @dev Only meaningful for async vault modules (ERC-7540). The operationId is a
    ///      hash that is not reversible, so the module stores the mapping at request time.
    ///      Used by Account settle/cancel functions to call the vault with the original requestId.
    /// @param operationId The namespaced operationId returned by deposit()/withdraw()
    /// @return requestId The original requestId from the ERC-7540 vault
    function originalRequestId(bytes32 operationId) external view returns (uint256 requestId);

    /// @notice Look up all deposit operationIds that share a given ERC-7540 requestId for a specific account
    /// @dev Reverse mapping populated at deposit request time, scoped per account (controller).
    ///      Used by cancel functions to find all pending deposit operations affected when a vault
    ///      cancel applies to all operations sharing the same (requestId, controller) pair.
    /// @param account The account (controller) address
    /// @param requestId The original ERC-7540 requestId
    /// @return operationIds Array of deposit operationIds mapped to this (account, requestId)
    function getDepositOperationIds(address account, uint256 requestId)
        external
        view
        returns (bytes32[] memory operationIds);

    /// @notice Look up all withdrawal operationIds that share a given ERC-7540 requestId for a specific account
    /// @dev Reverse mapping populated at redeem request time, scoped per account (controller).
    ///      Used by cancel functions to find all pending withdrawal operations affected when a vault
    ///      cancel applies to all operations sharing the same (requestId, controller) pair.
    /// @param account The account (controller) address
    /// @param requestId The original ERC-7540 requestId
    /// @return operationIds Array of withdrawal operationIds mapped to this (account, requestId)
    function getWithdrawalOperationIds(address account, uint256 requestId)
        external
        view
        returns (bytes32[] memory operationIds);

    /// @notice Remove a single deposit operationId from the per-account reverse mapping
    /// @dev Called by Account after settling an individual ERC-7540 deposit.
    ///      Uses swap-and-pop for O(1) removal. Access-controlled: uses msg.sender as account.
    /// @param requestId The original ERC-7540 requestId
    /// @param operationId The operationId to remove
    function removeDepositOperationId(uint256 requestId, bytes32 operationId) external;

    /// @notice Remove a single withdrawal operationId from the per-account reverse mapping
    /// @dev Called by Account after settling an individual ERC-7540 withdrawal.
    ///      Uses swap-and-pop for O(1) removal. Access-controlled: uses msg.sender as account.
    /// @param requestId The original ERC-7540 requestId
    /// @param operationId The operationId to remove
    function removeWithdrawalOperationId(uint256 requestId, bytes32 operationId) external;

    /// @notice Delete all deposit operationIds for an account's requestId
    /// @dev Called by Account after cancelling an ERC-7540 deposit request, since cancel
    ///      affects ALL deposit operations sharing the same (requestId, controller) pair.
    ///      Access-controlled: uses msg.sender as account.
    /// @param requestId The original ERC-7540 requestId
    function clearDepositOperationIds(uint256 requestId) external;

    /// @notice Delete all withdrawal operationIds for an account's requestId
    /// @dev Called by Account after cancelling an ERC-7540 redeem request, since cancel
    ///      affects ALL withdrawal operations sharing the same (requestId, controller) pair.
    ///      Access-controlled: uses msg.sender as account.
    /// @param requestId The original ERC-7540 requestId
    function clearWithdrawalOperationIds(uint256 requestId) external;
}
