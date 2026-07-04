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
import {IFeeManager} from "../interface/IFeeManager.sol";
import {IBridge} from "../interface/IBridge.sol";
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
import {IERC7540Vault} from "../interface/IERC7540Vault.sol";

/// @title Withdraw
/// @author Bundie Team
/// @notice Handles withdrawal operations from yield strategies
/// @dev Abstract contract providing withdrawal functionality for Account.
///      Manages both local vault module withdrawals and cross-chain withdrawals via bridge modules.
///      Uses CEI pattern and records asset balance before withdrawal for accurate confirmation.
///
///      ## Withdrawal safety goals
///      - Users should always be able to exit positions (even if strategy disabled).
///      - Cross-chain operations must be confirmable by validator without getting stuck on fee collection.
///      - Local operations must enforce slippage via preview-based bounds.
///
///      ## Why we snapshot `assetBalanceBefore`
///      For local withdrawals it allows computing `assetsReceived` precisely.
///      For cross-chain withdrawals it gives an objective reference when validator confirms assets arrived.
///
///      ## Asset locking during pending withdrawals
///      We track `pendingWithdrawalCountByAssetToken[assetToken]` so the user cannot withdraw the asset
///      out of the account while a cross-chain withdrawal confirmation might need that liquidity (fees/accounting).
///
/// @custom:invariant Withdrawals always allowed even from disabled strategies (users must be able to exit)
/// @custom:invariant Fee charging is non-reverting — cannot block cross-chain confirmations
/// @custom:invariant Fee config resolved at operation initiation time (atTimestamp), not confirmation time
/// @custom:invariant Asset token locked while any cross-chain withdrawal of that token is pending
/// @custom:trust Validator is trusted to confirm withdrawals with accurate receivedAssets amounts
/// @custom:trust FeeManager is trusted to charge fees correctly but designed to never revert
abstract contract Withdraw is AccountStorage {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using ArrayHelpers for Types.Position[];

    // ========================== Internal Withdrawal Functions ==========================
    //
    // ## Overview
    // Withdrawals can be:
    // - **Local sync** (e.g., ERC-4626): Redeem shares via vault module on the same chain. Instant completion.
    // - **Local async** (e.g., ERC-7540): Vault module requests redeem. Returns operationId. Wait for validator.
    // - **Cross-chain**: Bridge shares to destination chain, redeem there, bridge assets back.
    //   Returns a GUID; position updates after validator confirmation.
    //
    // ## Key invariants
    // - Position shares are only reduced AFTER successful completion (local) or confirmation (cross-chain).
    // - For cross-chain, we snapshot `assetBalanceBefore` to detect actual receipt on confirmation.
    // - User cannot withdraw asset tokens while pending cross-chain withdrawals exist for that token
    //   (prevents race conditions with fee payment).
    //

    /// @notice Withdraw from a specific strategy position
    /// @dev For cross-chain: creates pending withdrawal awaiting validator confirmation.
    ///      For local: updates position immediately. Full withdrawal removes position.
    ///
    /// ## Partial vs Full Withdrawal
    /// - Partial (amount < position.amount): Reduces position shares, keeps position
    /// - Full (amount == position.amount): Removes position entirely via swap-and-pop
    ///
    /// ## Cross-chain Flow
    /// 1. This function validates and delegates to _executeWithdrawal
    /// 2. Router bridges shares to destination chain
    /// 3. Destination redeems shares for assets
    /// 4. Assets bridged back to this account
    /// 5. Validator calls confirmWithdrawal with actual received amount
    ///
    /// @param positionIndex Index of position to withdraw from (0-based)
    /// @param amount Amount of shares to withdraw (must be > 0 and <= position.amount)
    /// @param bridgeExecutionParams Encoded bridge parameters for cross-chain execution
    /// @return msgGuid Bridge message GUID (bytes32(0) for local withdrawals)
    function _withdrawStrategy(uint256 positionIndex, uint256 amount, bytes calldata bridgeExecutionParams)
        internal
        returns (bytes32 msgGuid)
    {
        // VALIDATION: Check position exists at the given index
        require(positionIndex < positions.length, Errors.PositionNotFound());
        // VALIDATION: Amount must be positive (use _withdrawStrategyAll for full withdrawal)
        require(amount > 0, Errors.ZeroAmount());

        // Delegate to internal execution logic
        return _executeWithdrawal(positionIndex, amount, bridgeExecutionParams);
    }

    /// @notice Withdraw entire position from a strategy
    /// @dev Convenience function that withdraws all shares from a position.
    ///      Reads the current position.amount and passes it to _executeWithdrawal.
    /// @param positionIndex Index of position to withdraw from (0-based)
    /// @param bridgeExecutionParams Encoded bridge parameters for cross-chain execution
    /// @return msgGuid Bridge message GUID (bytes32(0) for local withdrawals)
    function _withdrawStrategyAll(uint256 positionIndex, bytes calldata bridgeExecutionParams)
        internal
        returns (bytes32 msgGuid)
    {
        require(positionIndex < positions.length, Errors.PositionNotFound());
        uint256 amount = positions[positionIndex].amount;
        require(amount > 0, Errors.PositionNotFound());

        return _executeWithdrawal(positionIndex, amount, bridgeExecutionParams);
    }

    // ========================== Validator Confirmation Functions ==========================

    /// @notice Mark pending withdrawal as failed
    /// @dev Called by validator when asset tokens never arrived in account.
    ///      Resets allocation status to ACTIVE so user can retry after claiming refund.
    ///      Shares remain locked in OVaultComposer until refund is claimed.
    ///
    /// ## Failure Scenarios
    /// Cross-chain withdrawals can fail due to:
    /// - Bridge message failure (DVN issues, gas exhaustion)
    /// - Destination chain revert (slippage exceeded, vault paused)
    /// - Compose execution failure on destination
    ///
    /// ## Recovery Flow
    /// 1. Validator detects failure and calls this function
    /// 2. User sees withdrawal marked as failed
    /// 3. Validator retries the compose on the destination chain
    /// 4. Shares are bridged back to user's account
    /// 5. Validator calls settleFailedWithdrawal() to clean up pending state
    ///
    /// ## Why NOT cleanup here?
    /// We preserve pending withdrawal state so settleFailedWithdrawal() can:
    /// - Access original withdrawal data for events
    /// - Properly decrement pendingWithdrawalCountByAssetToken
    ///
    /// @param msgGuid Bridge message GUID from the failed withdrawal
    function _markWithdrawalFailed(bytes32 msgGuid) internal {
        // Validate pending withdrawal exists
        Types.PendingWithdrawal storage withdrawal = pendingWithdrawals[msgGuid];
        require(withdrawal.msgGuid == msgGuid, Errors.PendingWithdrawalNotFound(msgGuid));

        // Verify this is the correct account
        require(withdrawal.user == user, Errors.UnauthorizedUser(withdrawal.user, user));

        emit Events.WithdrawalFailed(withdrawal.user, withdrawal.strategyId, withdrawal.amount, msgGuid);

        // INTENTIONALLY DO NOT cleanup pending withdrawal state here.
        // State is preserved for settleFailedWithdrawal() which needs:
        // - Access to strategyId, amount for events
        // - pendingWithdrawalAssetToken mapping for cleanup
        // Cleanup happens in settleFailedWithdrawal() after compose retry is confirmed.
    }

    /// @notice Confirm pending withdrawal completed successfully
    /// @dev Called by validator after verifying asset tokens arrived in account.
    ///      Validates slippage protection and updates/removes position.
    ///
    /// ## Confirmation Flow
    /// 1. Validator observes asset tokens arrived in account
    /// 2. Validator calls this with the actual received amount
    /// 3. We verify slippage bounds were met
    /// 4. We charge fees (performance + management)
    /// 5. We update/remove the position
    /// 6. We clean up all pending state
    ///
    /// ## Position Lookup by ID
    /// We use positionId (stable) instead of array index because:
    /// - Array indices change when positions are removed (swap-and-pop)
    /// - Cross-chain confirmations may arrive in different order than initiated
    ///
    /// ## Fee Timing
    /// The `withdrawal.timestamp` (initiation time) is passed as `atTimestamp` to
    /// FeeManager. This ensures fees are calculated using the rates that were
    /// active when user initiated, not when confirmation arrived (protects from hikes).
    ///
    /// @param msgGuid Bridge message GUID from the withdrawal
    /// @param receivedAssets Actual assets received for this withdrawal (provided by the validator)
    function _confirmWithdrawal(bytes32 msgGuid, uint256 receivedAssets) internal {
        // ===== VALIDATION =====
        Types.PendingWithdrawal storage withdrawal = pendingWithdrawals[msgGuid];
        require(withdrawal.msgGuid == msgGuid, Errors.InvalidMessageId());
        require(withdrawal.user == user, Errors.UnauthorizedUser(withdrawal.user, user));

        // Validator must report non-zero assets received
        require(receivedAssets > 0, Errors.NoFundsReceived());

        // SLIPPAGE ENFORCEMENT: Validates the vault's redemption output BEFORE bridge fee deduction.
        // minAssetExpected protects against vault exchange rate slippage (variable, unpredictable).
        // The bridge fee is a known, deterministic flat cost — not slippage — and is deducted separately below.
        require(
            receivedAssets >= withdrawal.minAssetExpected,
            Errors.InsufficientAssetsReceived(receivedAssets, withdrawal.minAssetExpected)
        );

        // ===== POSITION LOOKUP =====
        // Use positionId for stable reference (array indices change on removal)
        (uint256 positionIndex, bool found) = positions.findPositionById(withdrawal.positionId);
        require(found, Errors.PositionNotFound());

        Types.Position storage position = positions[positionIndex];

        // Double-check strategyId matches (defensive against storage corruption)
        require(position.strategyId == withdrawal.strategyId, Errors.PositionNotFound());

        // Get the asset token for this withdrawal
        address assetToken = pendingWithdrawalAssetToken[msgGuid];
        require(assetToken != address(0), Errors.InvalidAddress());

        // ===== BRIDGE FEE DEDUCTION (cross-chain withdrawal confirmation) =====
        // Deduct the flat bridge fee from received assets before charging performance/management fees.
        // The relayer fronted ETH at withdrawal initiation time; we collect the ERC-20 fee now.
        // Non-reverting: if received assets are insufficient or transfer fails, skip fee collection.
        // Fee info is resolved through the strategy's bridge module (not AccountManager).
        {
            address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, withdrawal.strategyId);
            IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, withdrawal.strategyId);

            if (strategy.bridgeModule != address(0) && !pendingWithdrawalNativeFeesPaid[msgGuid]) {
                (uint256 bridgeFee, address feeRecipient) = IBridge(strategy.bridgeModule).getBridgeFeeInfo(assetToken);
                if (bridgeFee > 0 && receivedAssets > 0) {
                    // Charge the lesser of bridgeFee and receivedAssets.
                    // This prevents dust withdrawals from consuming relayer ETH without
                    // paying back the ERC-20 fee (users get 0 assets if receivedAssets <= bridgeFee).
                    uint256 feeToCharge = bridgeFee < receivedAssets ? bridgeFee : receivedAssets;
                    // Non-reverting + non-standard token safe: self-call wraps safeTransfer
                    // in try-catch so blacklisted recipients or token quirks can't block confirmations.
                    try this.transferBridgeFee(assetToken, feeRecipient, feeToCharge) {
                        receivedAssets -= feeToCharge;
                        emit Events.BridgeFeeDeducted(withdrawal.user, assetToken, feeToCharge, feeRecipient);
                    } catch {
                        emit Events.BridgeFeeSkipped(withdrawal.user, assetToken, feeToCharge, receivedAssets);
                    }
                }
            }
        }

        // ===== FEE CHARGING =====
        // CRITICAL: Pass withdrawal.timestamp as atTimestamp for fee resolution.
        // This uses the fee config that was active when user initiated withdrawal,
        // not the current config. Prevents "in-flight fee hike" attacks.
        _chargeFees(
            position,
            withdrawal.strategyId,
            assetToken,
            withdrawal.amount,
            receivedAssets,
            withdrawal.timestamp,
            msgGuid
        );

        // ===== POSITION UPDATE =====
        bool isFullWithdrawal = (withdrawal.amount == position.amount);

        if (isFullWithdrawal) {
            // Remove position entirely via swap-and-pop (O(1) removal)
            positions[positionIndex] = positions[positions.length - 1];
            positions.pop();
        } else {
            // Reduce position's share count
            position.amount -= withdrawal.amount;
        }

        emit Events.WithdrawalConfirmed(withdrawal.user, withdrawal.strategyId, withdrawal.amount, msgGuid);

        // ===== CLEANUP =====
        // Decrement pending withdrawal count for this asset token
        uint256 n = pendingWithdrawalCountByAssetToken[assetToken];
        if (n > 0) pendingWithdrawalCountByAssetToken[assetToken] = n - 1;

        // Clear all pending state for this GUID
        delete pendingWithdrawalAssetToken[msgGuid];
        delete pendingWithdrawalNativeFeesPaid[msgGuid];
        _removePendingWithdrawalGuid(msgGuid);
    }

    /// @notice Settle a failed withdrawal by cleaning up pending state
    /// @dev Called by validator after compose retry delivered tokens back to source chain.
    ///      Emits WithdrawalRefunded event, unlocks asset token, and removes pending state.
    /// @param msgGuid Bridge message GUID of the failed withdrawal
    function _settleFailedWithdrawal(bytes32 msgGuid) internal {
        Types.PendingWithdrawal storage withdrawal = pendingWithdrawals[msgGuid];
        require(withdrawal.msgGuid == msgGuid, Errors.PendingWithdrawalNotFound(msgGuid));
        require(withdrawal.user == user, Errors.UnauthorizedUser(withdrawal.user, user));

        emit Events.WithdrawalRefunded(withdrawal.user, withdrawal.strategyId, withdrawal.amount, msgGuid);

        address assetToken = pendingWithdrawalAssetToken[msgGuid];
        if (assetToken != address(0)) {
            uint256 n = pendingWithdrawalCountByAssetToken[assetToken];
            if (n > 0) pendingWithdrawalCountByAssetToken[assetToken] = n - 1;
            delete pendingWithdrawalAssetToken[msgGuid];
        }
        delete pendingWithdrawalNativeFeesPaid[msgGuid];

        // Cleanup pending withdrawal tracking now that settlement is complete
        // Position remains unchanged - shares are back in account after settlement
        _removePendingWithdrawalGuid(msgGuid);
    }

    /// @notice Cancel a pending ERC-7540 redeem request
    /// @dev Called by validator when the redeem request should be cancelled (e.g., slippage
    ///      bounds won't be met, or vault conditions changed). The vault must support
    ///      cancelRedeemRequest (optional per ERC-7540 spec).
    ///      After cancellation, shares are returned to the Account by the vault.
    ///
    ///      ## Fungible requestId handling
    ///      ERC-7540 vaults may return the same requestId for multiple requests from the
    ///      same controller (e.g., Centrifuge always returns 0). cancelRedeemRequest() at
    ///      the vault level is scoped to (requestId, controller), so it cancels ALL pending
    ///      shares for that pair. After the vault cancel, this function finds and cleans up
    ///      every pending withdrawal that shares the same underlying requestId, not just the
    ///      one identified by msgGuid.
    ///
    /// @param msgGuid The pending withdrawal GUID (operationId from requestRedeem)
    function _cancelERC7540RedeemRequest(bytes32 msgGuid) internal {
        Types.PendingWithdrawal storage withdrawal = pendingWithdrawals[msgGuid];
        require(withdrawal.msgGuid == msgGuid, Errors.InvalidMessageId());
        require(withdrawal.user == user, Errors.UnauthorizedUser(withdrawal.user, user));

        // Resolve strategy to get vault address
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, withdrawal.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, withdrawal.strategyId);

        // Retrieve original requestId from vault module and call cancel on the vault
        uint256 requestId = IVault(strategy.vaultModule).originalRequestId(msgGuid);
        try IERC7540Vault(strategy.vaultAddress).cancelRedeemRequest(requestId, address(this)) {
            // Success — vault will return shares to this Account
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // The vault cancel affected ALL redeem requests with this (requestId, controller).
        // Use the per-account withdrawal reverse mapping to find all withdrawal operationIds
        // sharing this requestId, then clean up each one.
        bytes32[] memory sharedOperationIds =
            IVault(strategy.vaultModule).getWithdrawalOperationIds(address(this), requestId);

        for (uint256 i = 0; i < sharedOperationIds.length; i++) {
            bytes32 guid = sharedOperationIds[i];
            Types.PendingWithdrawal storage pw = pendingWithdrawals[guid];
            // Skip operationIds that aren't pending withdrawals on this account
            if (pw.msgGuid != guid) continue;

            emit Events.WithdrawalFailed(pw.user, pw.strategyId, pw.amount, guid);

            address assetToken = pendingWithdrawalAssetToken[guid];
            if (assetToken != address(0)) {
                uint256 n = pendingWithdrawalCountByAssetToken[assetToken];
                if (n > 0) pendingWithdrawalCountByAssetToken[assetToken] = n - 1;
                delete pendingWithdrawalAssetToken[guid];
            }
            delete pendingWithdrawalNativeFeesPaid[guid];
            _removePendingWithdrawalGuid(guid);
        }

        // Clean up the withdrawal reverse mapping — cancel affects all withdrawal ops for this (account, requestId)
        IVault(strategy.vaultModule).clearWithdrawalOperationIds(requestId);
    }

    /// @notice Settle a pending ERC-7540 withdrawal by claiming assets from the vault
    /// @dev Called by validator after the ERC-7540 vault operator has fulfilled the redeem request.
    ///      The Account (as controller) calls redeem(shares, receiver, controller) on the vault
    ///      to claim assets, then charges fees and updates/removes the position.
    ///
    ///      ## Flow
    ///      1. Validator detects that the ERC-7540 vault has fulfilled the redeem request
    ///      2. Validator calls settleERC7540Withdrawal(msgGuid) on the Account
    ///      3. Account queries claimableRedeemRequest() to get claimable shares
    ///      4. Account calls redeem(claimableShares, self, self) on the vault to claim assets
    ///      5. Account measures assets received via balance delta
    ///      6. Account enforces slippage, charges fees, updates/removes position
    ///
    /// @param msgGuid The pending withdrawal GUID (operationId from requestRedeem)
    function _settleERC7540Withdrawal(bytes32 msgGuid) internal {
        // ===== VALIDATION =====
        Types.PendingWithdrawal storage withdrawal = pendingWithdrawals[msgGuid];
        require(withdrawal.msgGuid == msgGuid, Errors.InvalidMessageId());
        require(withdrawal.user == user, Errors.UnauthorizedUser(withdrawal.user, user));

        // ===== POSITION LOOKUP =====
        (uint256 positionIndex, bool found) = positions.findPositionById(withdrawal.positionId);
        require(found, Errors.PositionNotFound());

        Types.Position storage position = positions[positionIndex];
        require(position.strategyId == withdrawal.strategyId, Errors.PositionNotFound());

        // Resolve strategy to get vault address and tokens
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, withdrawal.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, withdrawal.strategyId);

        // Retrieve the original requestId from the vault module
        uint256 requestId = IVault(strategy.vaultModule).originalRequestId(msgGuid);
        uint256 claimableShares =
            IERC7540Vault(strategy.vaultAddress).claimableRedeemRequest(requestId, address(this));
        require(claimableShares > 0, Errors.NoFundsReceived());

        // Cap shares to redeem at this withdrawal's amount.
        // claimableRedeemRequest() returns the TOTAL claimable across all requests for
        // the same (requestId, controller) pair. If multiple withdrawals share a requestId
        // (e.g., Centrifuge returns 0 for all requests), redeeming the full claimable
        // amount would drain other pending withdrawals and leave them permanently stuck.
        // Using min() also handles fee-on-transfer share tokens where the vault received
        // fewer shares than withdrawal.amount.
        uint256 sharesToRedeem = claimableShares < withdrawal.amount ? claimableShares : withdrawal.amount;

        // Snapshot asset balance before claiming
        uint256 assetBalanceBefore = IERC20(strategy.assetToken).balanceOf(address(this));

        // Claim assets from the ERC-7540 vault
        try IERC7540Vault(strategy.vaultAddress).redeem(sharesToRedeem, address(this), address(this)) returns (
            uint256
        ) {
            // success - assets received
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // Measure assets received via balance delta
        uint256 assetBalanceAfter = IERC20(strategy.assetToken).balanceOf(address(this));
        uint256 assetsReceived = assetBalanceAfter - assetBalanceBefore;
        require(assetsReceived > 0, Errors.NoFundsReceived());

        // SLIPPAGE ENFORCEMENT
        require(
            assetsReceived >= withdrawal.minAssetExpected,
            Errors.InsufficientAssetsReceived(assetsReceived, withdrawal.minAssetExpected)
        );

        // Get the asset token for fee charging
        address assetToken = pendingWithdrawalAssetToken[msgGuid];
        if (assetToken == address(0)) assetToken = strategy.assetToken;

        // ===== FEE CHARGING =====
        _chargeFees(
            position,
            withdrawal.strategyId,
            assetToken,
            withdrawal.amount,
            assetsReceived,
            withdrawal.timestamp,
            msgGuid
        );

        // ===== POSITION UPDATE =====
        bool isFullWithdrawal = (withdrawal.amount == position.amount);

        if (isFullWithdrawal) {
            positions[positionIndex] = positions[positions.length - 1];
            positions.pop();
        } else {
            position.amount -= withdrawal.amount;
        }

        emit Events.WithdrawalConfirmed(withdrawal.user, withdrawal.strategyId, withdrawal.amount, msgGuid);

        // ===== CLEANUP =====
        // Remove this operationId from the vault module's per-account withdrawal reverse mapping
        IVault(strategy.vaultModule).removeWithdrawalOperationId(requestId, msgGuid);
        if (assetToken != address(0)) {
            uint256 n = pendingWithdrawalCountByAssetToken[assetToken];
            if (n > 0) pendingWithdrawalCountByAssetToken[assetToken] = n - 1;
        }
        delete pendingWithdrawalAssetToken[msgGuid];
        delete pendingWithdrawalNativeFeesPaid[msgGuid];
        _removePendingWithdrawalGuid(msgGuid);
    }

    // ========================== Internal Helpers ==========================

    /// @notice Remove pending withdrawal from storage
    /// @dev Deletes the pending withdrawal mapping entry and removes from unified GUID array
    /// @param msgGuid GUID to remove
    function _removePendingWithdrawalGuid(bytes32 msgGuid) internal {
        delete pendingWithdrawals[msgGuid];
        _pendingOperationGuids.remove(msgGuid);
    }

    /// @notice Withdraw asset tokens from account to a recipient
    /// @dev Transfers unallocated tokens from account to the specified recipient. Only whitelisted tokens allowed.
    /// @param assetToken Token address to withdraw
    /// @param amount Amount to withdraw
    /// @param recipient Address to receive the withdrawn tokens
    function _withdraw(address assetToken, uint256 amount, address recipient) internal {
        require(recipient != address(0), Errors.InvalidAddress());
        require(IAccountManager(FACTORY).isTokenWhitelisted(assetToken), Errors.TokenNotWhitelisted(assetToken));
        require(pendingWithdrawalCountByAssetToken[assetToken] == 0, Errors.AssetLockedByPendingWithdrawal(assetToken));

        uint256 available = IERC20(assetToken).balanceOf(address(this));
        require(amount <= available, Errors.InsufficientVaultBalance(amount, available));

        IERC20(assetToken).safeTransfer(recipient, amount);
        emit Events.AssetWithdrawal(msg.sender, assetToken, amount, recipient);
    }

    // ========================== Fee Helpers ==========================

    /// @notice Charge performance + management fees on a withdrawal
    /// @dev Shared by local and cross-chain withdrawal paths. Approves FeeManager,
    ///      calls applyAndChargeFees, and updates position principal/accrual state.
    /// @param position Storage pointer to the position being withdrawn from
    /// @param strategyId Strategy identifier for fee tracking
    /// @param assetToken Asset token address used for fee payment
    /// @param sharesWithdrawn Number of shares being withdrawn
    /// @param assetsReceived Actual assets received from the withdrawal
    /// @param atTimestamp Fee config resolution timestamp (block.timestamp for local, initiation time for cross-chain)
    /// @param msgGuid Cross-chain GUID (bytes32(0) for local operations)
    function _chargeFees(
        Types.Position storage position,
        bytes32 strategyId,
        address assetToken,
        uint256 sharesWithdrawn,
        uint256 assetsReceived,
        uint48 atTimestamp,
        bytes32 msgGuid
    ) private {
        address fm = IAccountManager(FACTORY).feeManager();
        if (fm == address(0) || position.principal == 0) return;

        IERC20(assetToken).forceApprove(fm, assetsReceived);

        // Non-reverting: wrap in try-catch so token-level reverts (e.g., fee recipient
        // blacklisted by USDC/USDT) cannot block withdrawal confirmations.
        try IFeeManager(fm)
            .applyAndChargeFees(
                user,
                strategyId,
                assetToken,
                position.id,
                position.principal,
                position.amount, // sharesBefore
                sharesWithdrawn,
                assetsReceived,
                position.lastFeeAccrual,
                uint48(block.timestamp), // nowTimestamp
                atTimestamp,
                msgGuid
            ) returns (
            uint256 principalAfter, uint48 lastAccrualAfter
        ) {
            position.principal = principalAfter;
            position.lastFeeAccrual = lastAccrualAfter;
        } catch {
            emit Events.FeeChargeFailed(user, strategyId, assetToken, msgGuid);
        }

        // Revoke any remaining approval
        IERC20(assetToken).forceApprove(fm, 0);
    }

    // ========================== Bridge Fee Helper ==========================

    /// @notice Transfer bridge fee using SafeERC20 — called via `try this.transferBridgeFee()`
    /// @dev External self-call pattern: safeTransfer handles non-standard tokens (USDT),
    ///      while the try-catch in the caller provides non-reverting behavior.
    ///      Restricted to self-calls only to prevent external abuse.
    /// @param token ERC-20 token to transfer
    /// @param to Fee recipient (relayer)
    /// @param amount Fee amount
    function transferBridgeFee(address token, address to, uint256 amount) external {
        require(msg.sender == address(this), Errors.UnauthorizedCaller(msg.sender));
        IERC20(token).safeTransfer(to, amount);
    }

    // ========================== Private Functions ==========================

    /// @notice Internal execution of withdrawal logic
    /// @dev Shared implementation for _withdrawStrategy and _withdrawStrategyAll.
    ///
    /// ## Flow summary
    /// 1. Validate position exists and has sufficient shares
    /// 2. Approve router to spend share tokens
    /// 3. Snapshot asset balance BEFORE execution (for delta calculation)
    /// 4. For local: calculate preview BEFORE redemption (vault balance affects rate)
    /// 5. Execute via router (local vault module redeem or cross-chain bridge)
    /// 6. Local: verify slippage, charge fees, update/remove position
    /// 7. Cross-chain: store pending withdrawal for validator confirmation
    function _executeWithdrawal(uint256 positionIndex, uint256 amount, bytes calldata bridgeExecutionParams)
        private
        returns (bytes32 msgGuid)
    {
        Types.Position storage position = positions[positionIndex];
        require(position.amount > 0, Errors.PositionNotFound());
        require(amount <= position.amount, Errors.AccountInsufficientBalance());

        uint256 withdrawAmount = amount;

        // Resolve strategy via router registry
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, position.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, position.strategyId);

        // Grant router permission to transfer our share tokens
        IERC20(strategy.shareToken).forceApprove(router, withdrawAmount);

        // CRITICAL: Snapshot asset balance BEFORE withdrawal executes.
        // Used to calculate actual assets received via balance delta.
        // This handles fee-on-transfer tokens and any other balance changes.
        uint256 assetBalanceBefore = IERC20(strategy.assetToken).balanceOf(address(this));

        // NOTE: For local withdrawals, slippage enforcement is now the VaultModule's
        // responsibility. The module handles preview + slippage checks internally during withdrawal.

        // Execute withdrawal on router
        // Value passed for cross-chain bridge gas if needed
        msgGuid = IRouter(router).executeStrategy{value: msg.value}(
            position.strategyId, withdrawAmount, bridgeExecutionParams, IRouter.Operation.WITHDRAWAL
        );

        // CRITICAL: Capture values BEFORE any branch may swap-and-pop the position.
        // After removal, the storage pointer `position` refers to the swapped-in element.
        bytes32 strategyId = position.strategyId;
        uint256 positionId = position.id;

        // ===== DIVERGE: LOCAL vs CROSS-CHAIN =====
        // Router returns bytes32(0) for local operations, non-zero GUID for cross-chain.
        if (msgGuid != bytes32(0)) {
            // --- CROSS-CHAIN PATH ---
            // Shares have been bridged to destination chain. We must wait for validator
            // to confirm that assets were redeemed and bridged back to this account.

            // CRITICAL: Ensure this GUID isn't already in use (prevents overwrites)
            _requireUnusedPendingGuid(msgGuid);

            // Extract user's slippage tolerance.
            // Routes to bridge module (cross-chain) or vault module (local async) decoder.
            uint256 effectiveMinAmount = SlippageHelpers.extractMinAmountOut(strategy, bridgeExecutionParams);

            // MINIMUM WITHDRAWAL CHECK: For cross-chain strategies with a bridge fee,
            // the user's expected minimum must exceed the bridge fee. This prevents dust
            // withdrawals that consume relayer ETH without generating enough assets to
            // cover the ERC-20 fee.
            if (strategy.bridgeModule != address(0)) {
                (uint256 bridgeFee,) = IBridge(strategy.bridgeModule).getBridgeFeeInfo(strategy.assetToken);
                if (bridgeFee > 0) {
                    require(
                        effectiveMinAmount > bridgeFee, Errors.BridgeFeeExceedsAmount(bridgeFee, effectiveMinAmount)
                    );
                }
            }

            // LOCK asset token withdrawals: user can't pull assets while we're waiting
            // for cross-chain confirmation. This prevents race conditions where user
            // withdraws assets that are needed to pay fees on confirmation.
            pendingWithdrawalAssetToken[msgGuid] = strategy.assetToken;
            pendingWithdrawalCountByAssetToken[strategy.assetToken] += 1;

            // Track if user paid bridge fees with native ETH to prevent double-charging
            if (msg.value > 0) {
                pendingWithdrawalNativeFeesPaid[msgGuid] = true;
            }

            // Store all data needed for confirmation
            pendingWithdrawals[msgGuid] = Types.PendingWithdrawal({
                strategyId: strategyId,
                msgGuid: msgGuid,
                user: user,
                timestamp: uint48(block.timestamp), // For fee calculation (atTimestamp)
                positionId: positionId, // Stable reference (array indices can change)
                amount: withdrawAmount,
                minAssetExpected: effectiveMinAmount,
                assetBalanceBefore: assetBalanceBefore // For detecting actual receipt
            });
            _pendingOperationGuids.add(msgGuid);
        } else {
            // --- LOCAL PATH ---
            // Vault module redemption completed synchronously. Update position now.

            // Calculate actual assets received via balance delta
            uint256 assetBalanceAfter = IERC20(strategy.assetToken).balanceOf(address(this));
            uint256 assetsReceived = assetBalanceAfter - assetBalanceBefore;
            require(assetsReceived > 0, Errors.NoFundsReceived());

            // NOTE: Slippage enforcement is now the VaultModule's responsibility.
            // The module handles preview + slippage checks internally during withdrawal.

            // ===== FEE CHARGING =====
            // atTimestamp = nowTimestamp = block.timestamp for local (no delay)
            _chargeFees(
                position,
                strategyId,
                strategy.assetToken,
                withdrawAmount,
                assetsReceived,
                uint48(block.timestamp),
                bytes32(0)
            );

            // ===== UPDATE POSITION =====
            bool isFullWithdrawal = (withdrawAmount == position.amount);

            if (isFullWithdrawal) {
                // Remove via swap-and-pop (O(1) removal)
                positions[positionIndex] = positions[positions.length - 1];
                positions.pop();

                emit Events.PositionFullyWithdrawn(msg.sender, strategyId);
            } else {
                // Partial: just reduce share count
                position.amount -= withdrawAmount;
                emit Events.PositionPartiallyWithdrawn(msg.sender, strategyId, withdrawAmount);
            }
        }

        emit Events.StrategyWithdrawal(user, strategyId, router, withdrawAmount, msgGuid, positionId);

        return msgGuid;
    }
}
