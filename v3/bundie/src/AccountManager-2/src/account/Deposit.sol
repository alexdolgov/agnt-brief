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

import {Errors} from "../lib/Errors.sol";
import {Events} from "../lib/Events.sol";
import {IRouter} from "../interface/IRouter.sol";
import {IAccountManager} from "../interface/IAccountManager.sol";
import {IVault} from "../interface/IVault.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {Types} from "../lib/Types.sol";
import {AccountStorage} from "./base/AccountStorage.sol";
import {EnumerableSet} from "lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";
import {ArrayHelpers} from "../lib/ArrayHelpers.sol";
import {RouterHelpers} from "../lib/RouterHelpers.sol";
import {BridgeHelpers} from "../lib/BridgeHelpers.sol";
import {SlippageHelpers} from "../lib/SlippageHelpers.sol";
import {IBridge} from "../interface/IBridge.sol";
import {IWETH} from "../interface/IWETH.sol";
import {IFeeManager} from "../interface/IFeeManager.sol";
import {IERC7540Vault} from "../interface/IERC7540Vault.sol";

/// @title Deposit
/// @author Bundie Team
/// @notice Handles deposit operations to yield strategies
/// @dev Abstract contract providing deposit functionality for Account.
///      Manages both local vault module deposits and cross-chain deposits via bridge modules.
///      Uses CEI pattern and validates token whitelist before deposits.
///
///      ## Deposit surface area (what can go wrong)
///      Deposits touch multiple moving parts:
///      - strategy registry lookup (RouterManager → Router → Strategy config)
///      - token transfers/approvals
///      - local vault module interactions (sync or async depending on vault type)
///      - cross-chain bridge execution (returns a GUID)
///      - async confirmation (validator) that mints/credits share tokens
///
///      ## Invariants enforced here
///      - `amount > 0`
///      - deposits/allocations can be paused globally (factory circuit breaker)
///      - strategy’s `assetToken` must be whitelisted
///      - GUIDs must be unique across pending deposit/withdraw flows (prevents overwrite/dup enumeration)
///      - sync local deposits: slippage enforced by vault module internally
///      - async local deposits: slippage stored and enforced at confirmation time
///
///      ## Local vs cross-chain
///      - Local sync deposit (e.g., ERC-4626): router returns `bytes32(0)`, position created immediately.
///      - Local async deposit (e.g., ERC-7540): router returns non-zero operationId; pending entry awaits validator.
///      - Cross-chain deposit: router returns non-zero GUID; we store a pending entry and wait for validator confirmation.
///
/// @custom:invariant Deposits revert if allocationsPaused is true (global emergency brake)
/// @custom:invariant Each share token can only have one position per account (aggregated on re-deposit)
/// @custom:invariant Cross-chain deposit GUIDs are unique (checked against both pending sets)
/// @custom:trust Validator is trusted to confirm deposits with accurate receivedShares amounts
/// @custom:trust Router is trusted to execute deposit mechanics and return valid GUIDs
abstract contract Deposit is AccountStorage {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using ArrayHelpers for Types.Position[];

    // ========================== Internal Deposit Functions ==========================
    //
    // ## How deposits work
    // 1. User calls depositStrategy() with a strategyId, amount, and bridge params.
    // 2. We validate: amount > 0, strategy enabled, token whitelisted.
    // 3. Router executes the deposit:
    //    - LOCAL SYNC (e.g., ERC-4626): Vault module deposits directly. Shares arrive immediately.
    //    - LOCAL ASYNC (e.g., ERC-7540): Vault module requests deposit. Returns operationId. Wait for validator.
    //    - CROSS-CHAIN: Bridge tokens to destination. Returns GUID. Wait for validator.
    // 4. For async/cross-chain, validator calls confirmDeposit() with actual shares received.
    //
    // ## Position ID uniqueness
    // Each position gets a unique `id` via `positionNonce`. This is critical because:
    // - Array indices change on swap-and-pop deletion
    // - Cross-chain confirmations need stable references
    // - Same strategy can't have duplicate positions (share tokens are fungible)
    //

    /// @notice Execute deposit to a single strategy atomically
    /// @dev Implements CEI pattern. Auto-initializes allocation on first deposit.
    ///      For cross-chain: creates pending deposit awaiting validator confirmation.
    ///      For local: creates position immediately.
    ///
    /// ## Security Checks (in order)
    /// 1. amount > 0 (prevent zero-value spam)
    /// 2. allocations not paused (emergency brake check)
    /// 3. strategy exists (registered in RouterManager)
    /// 4. asset token whitelisted (coarse safety filter)
    ///
    /// ## Approval Pattern
    /// We approve the router to spend `amount` before calling executeStrategy.
    /// The router pulls tokens, executes the operation, and any unused approval
    /// is revoked implicitly (we don't approve more than needed).
    ///
    /// @param strategyId Strategy to deposit into
    /// @param amount Amount of asset tokens to deposit
    /// @param bridgeExecutionParams Encoded bridge parameters (minAmountOut, lzComposeGas, etc.)
    /// @return msgGuid Bridge message GUID (bytes32(0) for local deposits)
    function _depositStrategy(bytes32 strategyId, uint256 amount, bytes calldata bridgeExecutionParams)
        internal
        returns (bytes32 msgGuid)
    {
        // ===== VALIDATION PHASE =====
        // Reject zero amounts early (gas saver + prevent spam)
        require(amount > 0, Errors.ZeroAmount());

        // Check global pause - allows protocol to halt new deposits in emergency
        require(!IAccountManager(FACTORY).allocationsPaused(), Errors.AllocationsPaused());

        // Resolve strategy's router from the registry
        // Reverts with StrategyNotFound if strategyId is unregistered
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, strategyId);

        // Fetch full strategy configuration (vault address, tokens, bridge, etc.)
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, strategyId);

        // WHITELIST CHECK: Ensure the deposit token is approved by protocol governance.
        // This prevents users from accidentally depositing unsupported tokens that
        // might have decimals issues, missing bridge support, etc.
        require(
            IAccountManager(FACTORY).isTokenWhitelisted(strategy.assetToken),
            Errors.TokenNotWhitelisted(strategy.assetToken)
        );

        // PENDING WITHDRAWAL CHECK: Block deposits when there are pending cross-chain
        // withdrawals for the same asset token. This prevents users from front-running
        // the validator's confirmWithdrawal by depositing received assets into a strategy,
        // which would drain the account balance and cause transferBridgeFee to fail silently.
        require(
            pendingWithdrawalCountByAssetToken[strategy.assetToken] == 0,
            Errors.AssetLockedByPendingWithdrawal(strategy.assetToken)
        );

        // ===== SETUP PHASE =====
        bool isLocal = strategy.bridgeModule == address(0);
        // Grant router permission to pull our tokens
        IERC20(strategy.assetToken).forceApprove(router, amount);

        // For LOCAL deposits: snapshot share balance to measure received shares later
        // For cross-chain: not needed as we track via pending deposit confirmation
        uint256 shareBalanceBefore = 0;
        if (isLocal) {
            shareBalanceBefore = IERC20(strategy.shareToken).balanceOf(address(this));
        }

        // ===== EXECUTION PHASE =====
        // Router handles the actual deposit mechanics:
        // - Local: vault module deposit (sync or async depending on vault type)
        // - Cross-chain: Bridge tokens to destination, return GUID
        // msg.value forwards any ETH needed for cross-chain gas fees
        msgGuid = IRouter(router).executeStrategy{value: msg.value}(
            strategyId, amount, bridgeExecutionParams, IRouter.Operation.DEPOSIT
        );

        // ===== DIVERGE: LOCAL vs CROSS-CHAIN =====
        // Router returns bytes32(0) for local, non-zero GUID for cross-chain.
        if (msgGuid != bytes32(0)) {
            // --- CROSS-CHAIN PATH ---
            // Tokens have been bridged. Must wait for validator to confirm shares arrived.

            // CRITICAL: Ensure GUID is unique to prevent storage overwrites.
            // A duplicate GUID would corrupt position tracking.
            _requireUnusedPendingGuid(msgGuid);

            // Extract user's slippage tolerance for the share token side.
            // Routes to bridge module (cross-chain) or vault module (local async) decoder.
            uint256 effectiveMinShares = SlippageHelpers.extractMinAmountOut(strategy, bridgeExecutionParams);

            // Compute actual principal: bridge may deduct a fee from the deposit amount.
            // When msg.value > 0, user paid LZ fee in ETH — bridge may still deduct ERC-20 fee
            //   only if the bridge's native path doesn't skip fee deduction.
            // When msg.value == 0, bridge deducts fee from deposit (ERC-20 relayer path).
            // Only applies to cross-chain strategies (local async strategies have no bridge fee).
            uint256 actualPrincipal = amount;
            if (!isLocal && msg.value == 0) {
                (uint256 bridgeFee,) = IBridge(strategy.bridgeModule).getBridgeFeeInfo(strategy.assetToken);
                if (bridgeFee > 0 && amount > bridgeFee) {
                    actualPrincipal = amount - bridgeFee;
                }
            }

            // Store pending deposit data for validator confirmation
            pendingDeposits[msgGuid] = Types.PendingDeposit({
                strategyId: strategyId,
                msgGuid: msgGuid,
                user: user,
                timestamp: uint48(block.timestamp), // Used for fee resolution (atTimestamp)
                amount: actualPrincipal, // Actual invested amount after bridge fee deduction
                minSharesExpected: effectiveMinShares // Slippage bound
            });
            _pendingOperationGuids.add(msgGuid);
        } else {
            // --- LOCAL PATH ---
            // Vault module deposit completed synchronously. Create/update position now.

            // Calculate shares received via balance delta
            uint256 shareBalanceAfter = IERC20(strategy.shareToken).balanceOf(address(this));
            uint256 sharesReceived = shareBalanceAfter - shareBalanceBefore;
            require(sharesReceived > 0, Errors.NoFundsReceived());

            // NOTE: Slippage enforcement is now the VaultModule's responsibility.
            // The module handles preview + slippage checks internally during deposit.

            // ===== POSITION UPDATE/CREATION =====
            _createOrUpdatePosition(
                strategyId, strategy.shareToken, strategy.chainId, sharesReceived, amount, strategy.assetToken
            );

            emit Events.DepositConfirmed(user, strategyId, sharesReceived, bytes32(0));
        }

        emit Events.StrategyDeposit(user, strategyId, router, amount, msgGuid);

        return msgGuid;
    }

    /// @notice Deposit asset tokens to account for later allocation
    /// @dev Handles both ERC-20 transfers and native ETH auto-wrapping to WETH.
    ///      This function is PERMISSIONLESS (no onlyUser modifier) to support:
    ///      - Smart wallet deposits
    ///      - Relayer deposits on behalf of users
    ///      - Any address funding the account
    ///
    /// ## ERC-20 Path
    /// Tokens are pulled from msg.sender via safeTransferFrom.
    ///
    /// ## Native ETH Path
    /// When msg.value > 0, ETH is auto-wrapped to WETH and stored in the account.
    /// The assetToken parameter must be the canonical WETH address on this chain.
    /// This provides a uniform flow: depositAsset (fund) → depositStrategy (allocate).
    ///
    /// @param assetToken Asset token address (must be whitelisted; must be WETH for native ETH)
    /// @param amount Amount of asset tokens to deposit (must match msg.value for native ETH)
    function _deposit(address assetToken, uint256 amount) internal {
        // Validate amount is positive
        require(amount > 0, Errors.ZeroAmount());
        // Check global pause state - emergency brake
        require(!IAccountManager(FACTORY).allocationsPaused(), Errors.AllocationsPaused());

        if (msg.value > 0) {
            // === NATIVE ETH PATH: wrap to WETH ===
            address wethAddr = IAccountManager(FACTORY).weth();
            require(wethAddr != address(0), Errors.ZeroAddress());
            require(assetToken == wethAddr, Errors.TokenNotWhitelisted(assetToken));
            require(IAccountManager(FACTORY).isTokenWhitelisted(wethAddr), Errors.TokenNotWhitelisted(wethAddr));
            require(msg.value == amount, Errors.InsufficientBalance(amount, msg.value));

            IWETH(wethAddr).deposit{value: amount}();
            emit Events.AssetDeposit(msg.sender, wethAddr, amount);
        } else {
            // === ERC-20 PATH ===
            require(assetToken != address(0), Errors.ZeroAddress());
            require(IAccountManager(FACTORY).isTokenWhitelisted(assetToken), Errors.TokenNotWhitelisted(assetToken));

            SafeERC20.safeTransferFrom(IERC20(assetToken), msg.sender, address(this), amount);
            emit Events.AssetDeposit(msg.sender, assetToken, amount);
        }
    }

    // ========================== Validator Confirmation Functions ==========================

    /// @notice Confirm pending deposit completed successfully
    /// @dev Called by validator after verifying share tokens arrived in account.
    ///      Validates slippage protection and creates/updates position.
    ///
    /// ## Validator Role
    /// The validator is an off-chain service that:
    /// 1. Monitors cross-chain bridge completions
    /// 2. Verifies share tokens actually arrived in the account
    /// 3. Calls this function with the actual received amount
    ///
    /// ## Why validator provides receivedShares?
    /// We can't always reliably measure share token balance deltas because:
    /// - ShareOFTs may have rebasing mechanics
    /// - Multiple deposits could arrive in same block
    /// - Validator has off-chain visibility into bridge receipts
    ///
    /// @param msgGuid Bridge message GUID from the deposit
    /// @param receivedShares Actual shares received for this deposit (provided by the validator)
    function _confirmDeposit(bytes32 msgGuid, uint256 receivedShares) internal {
        // Load pending deposit and validate it exists
        Types.PendingDeposit storage deposit = pendingDeposits[msgGuid];
        require(deposit.msgGuid == msgGuid, Errors.InvalidMessageId());

        // Security: ensure this account is the correct one for this deposit
        require(deposit.user == user, Errors.UnauthorizedUser(deposit.user, user));

        // Resolve strategy to get share token address
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, deposit.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, deposit.strategyId);

        // Validator must report non-zero shares received
        require(receivedShares > 0, Errors.NoShareOFTReceived());

        // SLIPPAGE ENFORCEMENT: Verify user's minimum was met.
        // Cross-chain transfers have variable timing; exchange rates can change.
        // User's minSharesExpected was set at deposit initiation time.
        require(
            receivedShares >= deposit.minSharesExpected,
            Errors.InsufficientSharesReceived(receivedShares, deposit.minSharesExpected)
        );

        // ===== POSITION UPDATE/CREATION =====
        _createOrUpdatePosition(
            deposit.strategyId,
            strategy.shareToken,
            strategy.chainId,
            receivedShares,
            deposit.amount,
            strategy.assetToken
        );

        emit Events.DepositConfirmed(deposit.user, deposit.strategyId, receivedShares, msgGuid);

        // ===== CLEANUP =====
        // Remove from tracking arrays and delete storage
        _removePendingDepositGuid(msgGuid);
    }

    /// @notice Mark pending deposit as failed
    /// @dev Called by validator when share tokens never arrived in account.
    ///      Resets allocation status to ACTIVE so user can retry after claiming refund.
    ///      Assets remain locked in OVaultComposer until refund is claimed.
    ///
    /// ## Failure Scenarios
    /// Cross-chain deposits can fail due to:
    /// - Bridge message failure (DVN issues, gas exhaustion)
    /// - Destination chain revert (slippage exceeded, vault paused)
    /// - Compose execution failure on destination
    ///
    /// ## Recovery Flow
    /// 1. Validator detects failure and calls this function
    /// 2. User sees deposit marked as failed
    /// 3. Validator retries the compose on the destination chain
    /// 4. After retry succeeds, validator calls settleFailedDeposit() to clean up pending state
    ///
    /// ## Why NOT cleanup here?
    /// We preserve pending deposit state so settleFailedDeposit() can:
    /// - Access original deposit data (strategyId, amount) for events
    /// - Properly clean up all pending state
    /// Cleanup happens in settleFailedDeposit() after compose retry is confirmed.
    ///
    /// @param msgGuid Bridge message GUID from the failed deposit
    function _markDepositFailed(bytes32 msgGuid) internal {
        Types.PendingDeposit storage deposit = pendingDeposits[msgGuid];
        require(deposit.msgGuid == msgGuid, Errors.PendingDepositNotFound(msgGuid));
        require(deposit.user == user, Errors.UnauthorizedUser(deposit.user, user));

        emit Events.DepositFailed(deposit.user, deposit.strategyId, deposit.amount, msgGuid);

        // INTENTIONALLY DO NOT cleanup pending deposit state here.
        // State is preserved for settleFailedDeposit() which needs access to:
        // - strategyId, amount for events
        // Cleanup happens in settleFailedDeposit() after compose retry is confirmed.
    }

    /// @notice Settle a failed deposit by cleaning up pending state
    /// @dev Called by validator after compose retry delivered tokens back to source chain.
    ///      Emits DepositRefunded event and removes the pending deposit tracking.
    /// @param msgGuid Bridge message GUID of the failed deposit
    function _settleFailedDeposit(bytes32 msgGuid) internal {
        Types.PendingDeposit storage deposit = pendingDeposits[msgGuid];
        require(deposit.msgGuid == msgGuid, Errors.PendingDepositNotFound(msgGuid));
        require(deposit.user == user, Errors.UnauthorizedUser(deposit.user, user));

        // Emit refund confirmation event with preserved deposit data
        emit Events.DepositRefunded(deposit.user, deposit.strategyId, deposit.amount, msgGuid);

        // Cleanup pending deposit tracking now that settlement is complete
        _removePendingDepositGuid(msgGuid);
    }

    /// @notice Settle a pending ERC-7540 deposit by claiming shares from the vault
    /// @dev Called by validator after the ERC-7540 vault operator has fulfilled the deposit request.
    ///      The Account (as controller) calls the ERC-7540 overloaded deposit(assets, receiver, controller)
    ///      on the vault to claim shares, then processes like confirmDeposit: enforces slippage,
    ///      creates/updates position, and cleans up pending state.
    ///
    ///      ## Why this exists
    ///      ERC-7540 requires the controller to call deposit(assets, receiver, controller) on the vault
    ///      to actually claim shares after the operator fulfills a requestDeposit(). The Account is
    ///      the controller, so only it can call deposit(). confirmDeposit() only updates internal
    ///      accounting — this function handles the actual vault interaction.
    ///
    ///      ## Flow
    ///      1. Validator detects that the ERC-7540 vault has fulfilled the deposit request
    ///      2. Validator calls settleERC7540Deposit(msgGuid) on the Account
    ///      3. Account queries claimableDepositRequest() to get claimable amount
    ///      4. Account calls deposit(claimableAssets, self, self) on the vault to claim shares
    ///      5. Account measures shares received via balance delta
    ///      6. Account enforces slippage, creates/updates position, cleans up
    ///
    /// @param msgGuid The pending deposit GUID (operationId from requestDeposit, cast to bytes32)
    function _settleERC7540Deposit(bytes32 msgGuid) internal {
        // Load pending deposit and validate it exists
        Types.PendingDeposit storage deposit_ = pendingDeposits[msgGuid];
        require(deposit_.msgGuid == msgGuid, Errors.InvalidMessageId());

        // Security: ensure this account is the correct one for this deposit
        require(deposit_.user == user, Errors.UnauthorizedUser(deposit_.user, user));

        // Resolve strategy to get vault address and share token
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, deposit_.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, deposit_.strategyId);

        // Retrieve the original requestId from the vault module.
        // The operationId (msgGuid) is keccak256(vault, requestId) for namespace safety —
        // not reversible, so we query the vault module which stored the mapping at deposit time.
        uint256 requestId = IVault(strategy.vaultModule).originalRequestId(msgGuid);
        uint256 claimableAssets = IERC7540Vault(strategy.vaultAddress).claimableDepositRequest(requestId, address(this));
        require(claimableAssets > 0, Errors.NoFundsReceived());

        // Cap assets to claim at this deposit's amount.
        // claimableDepositRequest() returns the TOTAL claimable across all requests for
        // the same (requestId, controller) pair. If multiple deposits share a requestId
        // (e.g., Centrifuge returns 0 for all requests), claiming the full claimable
        // amount would drain other pending deposits and leave them permanently stuck.
        uint256 assetsToClaim = claimableAssets < deposit_.amount ? claimableAssets : deposit_.amount;

        // Snapshot share balance before claiming
        uint256 shareBalanceBefore = IERC20(strategy.shareToken).balanceOf(address(this));

        // Claim shares from the ERC-7540 vault
        // The Account is the controller, so it can call deposit(assets, receiver, controller) directly.
        // receiver = address(this) so shares go to this Account.
        // controller = address(this) since the Account initiated the requestDeposit.
        try IERC7540Vault(strategy.vaultAddress).deposit(assetsToClaim, address(this), address(this)) returns (
            uint256
        ) {
        // success - shares received
        }
        catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // Measure shares received via balance delta
        uint256 shareBalanceAfter = IERC20(strategy.shareToken).balanceOf(address(this));
        uint256 sharesReceived = shareBalanceAfter - shareBalanceBefore;
        require(sharesReceived > 0, Errors.NoShareOFTReceived());

        // SLIPPAGE ENFORCEMENT: Verify user's minimum was met
        require(
            sharesReceived >= deposit_.minSharesExpected,
            Errors.InsufficientSharesReceived(sharesReceived, deposit_.minSharesExpected)
        );

        // ===== POSITION UPDATE/CREATION =====
        _createOrUpdatePosition(
            deposit_.strategyId,
            strategy.shareToken,
            strategy.chainId,
            sharesReceived,
            deposit_.amount,
            strategy.assetToken
        );

        emit Events.DepositConfirmed(deposit_.user, deposit_.strategyId, sharesReceived, msgGuid);

        // ===== CLEANUP =====
        // Remove this operationId from the vault module's per-account deposit reverse mapping
        IVault(strategy.vaultModule).removeDepositOperationId(requestId, msgGuid);
        _removePendingDepositGuid(msgGuid);
    }

    /// @notice Cancel a pending ERC-7540 deposit request
    /// @dev Called by validator when the deposit request should be cancelled (e.g., slippage
    ///      bounds won't be met, or vault conditions changed). The vault must support
    ///      cancelDepositRequest (optional per ERC-7540 spec).
    ///      After cancellation, assets are returned to the Account by the vault.
    /// @param msgGuid The pending deposit GUID
    function _cancelERC7540DepositRequest(bytes32 msgGuid) internal {
        Types.PendingDeposit storage deposit_ = pendingDeposits[msgGuid];
        require(deposit_.msgGuid == msgGuid, Errors.InvalidMessageId());
        require(deposit_.user == user, Errors.UnauthorizedUser(deposit_.user, user));

        // Resolve strategy to get vault address
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, deposit_.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, deposit_.strategyId);

        // Retrieve original requestId from vault module and call cancel on the vault
        uint256 requestId = IVault(strategy.vaultModule).originalRequestId(msgGuid);
        try IERC7540Vault(strategy.vaultAddress).cancelDepositRequest(requestId, address(this)) {
        // Success — vault will return assets to this Account
        }
        catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // The vault cancel affected ALL deposit requests with this (requestId, controller).
        // Use the per-account deposit reverse mapping to find all deposit operationIds sharing
        // this requestId, then clean up each one.
        bytes32[] memory sharedOperationIds =
            IVault(strategy.vaultModule).getDepositOperationIds(address(this), requestId);

        for (uint256 i = 0; i < sharedOperationIds.length; i++) {
            bytes32 guid = sharedOperationIds[i];
            Types.PendingDeposit storage pd = pendingDeposits[guid];
            // Skip operationIds that aren't pending deposits on this account
            if (pd.msgGuid != guid) continue;

            emit Events.DepositFailed(pd.user, pd.strategyId, pd.amount, guid);
            _removePendingDepositGuid(guid);
        }

        // Clean up the deposit reverse mapping — cancel affects all deposit ops for this (account, requestId)
        IVault(strategy.vaultModule).clearDepositOperationIds(requestId);
    }

    // ========================== Internal Helpers ==========================

    /// @notice Create a new position or aggregate into an existing one for the given strategy
    /// @dev Shared by local deposit and cross-chain confirmation paths.
    ///      If no position exists for the strategy, validates share-token uniqueness and creates one.
    ///      When aggregating into an existing position, accrued management fees are collected first
    ///      to prevent users from resetting the fee timer via dust deposits.
    /// @param strategyId Strategy identifier
    /// @param shareToken Share token address for the strategy
    /// @param chainId Source chain ID for the position
    /// @param sharesReceived Number of shares received from the deposit
    /// @param principalAmount Asset amount deposited (cost basis for fee calculation)
    /// @param assetToken Asset token address for fee collection on re-deposit
    function _createOrUpdatePosition(
        bytes32 strategyId,
        address shareToken,
        uint256 chainId,
        uint256 sharesReceived,
        uint256 principalAmount,
        address assetToken
    ) internal {
        (uint256 existingPositionIndex, bool positionExists) = positions.findPositionByStrategy(strategyId);

        if (positionExists) {
            // Collect accrued management fees BEFORE resetting lastFeeAccrual.
            // Without this, users could reset the fee timer by making dust deposits,
            // avoiding management fees on their existing principal.
            _collectAccruedFeesOnDeposit(positions[existingPositionIndex], strategyId, assetToken);

            // AGGREGATE: Add shares and principal to existing position
            positions[existingPositionIndex].amount += sharesReceived;
            positions[existingPositionIndex].principal += principalAmount;
            positions[existingPositionIndex].lastFeeAccrual = uint48(block.timestamp);
        } else {
            // UNIQUENESS CHECK: Ensure no other position uses this share token.
            // Share tokens are fungible - if two positions used same share token,
            // we couldn't distinguish which position's shares are which.
            for (uint256 i = 0; i < positions.length; i++) {
                if (positions[i].shareToken == shareToken) {
                    revert Errors.ShareTokenAlreadyInUse(shareToken);
                }
            }

            // CREATE: New position with unique ID
            uint256 newPositionId = ++positionNonce;
            positions.push(
                Types.Position({
                    shareToken: shareToken,
                    amount: sharesReceived,
                    strategyId: strategyId,
                    sourceChain: uint32(chainId),
                    timestamp: block.timestamp,
                    id: newPositionId,
                    principal: principalAmount,
                    lastFeeAccrual: uint48(block.timestamp)
                })
            );
        }
    }

    /// @notice Collect accrued management fees on an existing position before a re-deposit
    /// @dev Non-reverting: wrapped in try-catch so fee failures cannot block deposits.
    ///      Mirrors the pattern used in collectFees() (AccountBase) and _chargeFees() (Withdraw).
    ///      Passes sharesWithdrawn=0 and assetsReceived=0 to trigger management-fee-only collection.
    /// @param position Storage pointer to the existing position
    /// @param strategyId Strategy identifier for fee tracking
    /// @param assetToken Asset token address used for fee payment
    function _collectAccruedFeesOnDeposit(Types.Position storage position, bytes32 strategyId, address assetToken)
        private
    {
        address fm = IAccountManager(FACTORY).feeManager();
        if (fm == address(0) || position.principal == 0) return;

        IERC20(assetToken).forceApprove(fm, type(uint256).max);

        // Non-reverting: wrap in try-catch so token-level reverts (e.g., fee recipient
        // blacklisted by USDC/USDT) cannot block deposit operations.
        try IFeeManager(fm)
            .applyAndChargeFees(
                user,
                strategyId,
                assetToken,
                position.id,
                position.principal,
                position.amount, // sharesBefore
                0, // sharesWithdrawn = 0 (management fee only, no perf fee)
                0, // assetsReceived = 0 (no withdrawal)
                position.lastFeeAccrual,
                uint48(block.timestamp), // nowTimestamp
                uint48(block.timestamp), // atTimestamp (same for local fee collection)
                bytes32(0) // local operation
            ) returns (
            uint256 principalAfter, uint48 lastAccrualAfter
        ) {
            position.principal = principalAfter;
            position.lastFeeAccrual = lastAccrualAfter;
        } catch {
            emit Events.FeeChargeFailed(user, strategyId, assetToken, bytes32(0));
        }

        // Reset approval after use
        IERC20(assetToken).forceApprove(fm, 0);
    }

    /// @notice Remove pending deposit from storage
    /// @dev Deletes the pending deposit mapping entry and removes from unified GUID array
    /// @param msgGuid GUID to remove
    function _removePendingDepositGuid(bytes32 msgGuid) internal {
        delete pendingDeposits[msgGuid];
        _pendingOperationGuids.remove(msgGuid);
    }
}
