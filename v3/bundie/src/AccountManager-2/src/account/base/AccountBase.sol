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

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

// Import Bundie interfaces
import {Events} from "../../lib/Events.sol";
import {Errors} from "../../lib/Errors.sol";
import {IAccountManager} from "../../interface/IAccountManager.sol";
import {IFeeManager} from "../../interface/IFeeManager.sol";
import {RouterHelpers} from "../../lib/RouterHelpers.sol";
import {IRouter} from "../../interface/IRouter.sol";
import {IBridge} from "../../interface/IBridge.sol";
import {Types} from "../../lib/Types.sol";
import {Deposit} from "../Deposit.sol";
import {Withdraw} from "../Withdraw.sol";
import {AccountStorage} from "./AccountStorage.sol";

/// @title AccountBase
/// @author Bundie Team
/// @notice Personal portfolio account for managing cross-chain yield positions
/// @dev Base account implementation combining deposit, withdrawal, and recovery functionality.
///      Holds asset tokens (for deposits) and share tokens (positions in strategies).
///      Does NOT issue its own shares — users directly own the underlying receipt tokens.
///
/// ## Architecture Overview
/// - User deposits assets → account invests them in external strategies → user owns position shares
/// - Positions are tracked internally; no minting of account-level shares
/// - Supports both local (same-chain) and cross-chain yield strategies
///
/// ## Access Control
/// - `onlyUser`: The account's owner (set at initialization). Can deposit, withdraw, recover.
/// - `onlyValidator`: Factory's validator. Confirms cross-chain operations.
/// - Permissionless: `depositAsset()` allows anyone to fund the account (smart wallet support).
///
/// ## Cross-Chain Flow
/// 1. User calls depositStrategy/withdrawStrategy → returns GUID
/// 2. Bridge sends tokens cross-chain, executes action on destination
/// 3. Validator monitors completion, calls confirm*(GUID, amount)
/// 4. Position is created/updated/removed based on result
///
/// ## Fee Integration
/// - FeeManager is queried from factory
/// - Fees charged on withdrawal confirmations (local and cross-chain)
/// - collectFees() allows periodic management fee collection without withdrawal
///
/// ## Recovery
/// - recoverETH/recoverETHTo: Recover stranded ETH (from gas refunds, etc.)
/// - claimBridgeNativeRefund: Claim native refund credits from bridge modules
abstract contract AccountBase is Ownable, ReentrancyGuard, Deposit, Withdraw {
    using SafeERC20 for IERC20;

    // ========================== Constructor ==========================

    /// @notice Initialize the account base contract
    /// @param _routerManager RouterManager contract address
    /// @param _factory AccountManager (factory) contract address
    constructor(address _routerManager, address _factory) AccountStorage(_routerManager, _factory) Ownable(_factory) {}

    // ========================== Modifiers ==========================

    /// @notice Restricts actions to the account's configured `user`.
    /// @dev This is the primary access control for portfolio actions (strategy deposits/withdrawals, recoveries).
    modifier onlyUser() {
        require(msg.sender == user, Errors.UnauthorizedUser(msg.sender, user));
        _;
    }

    /// @notice Restricts actions to the factory's `validator`.
    /// @dev Validator confirms async cross-chain operations after off-chain verification.
    modifier onlyValidator() {
        address validatorAddr = IAccountManager(FACTORY).validator();
        require(msg.sender == validatorAddr, Errors.UnauthorizedCaller(msg.sender));
        _;
    }

    // ========================== Deposit Functions ==========================

    /// @notice Deposit asset tokens to account for later allocation
    /// @dev Intentionally permissionless: any caller can deposit their own tokens into any account.
    ///      This supports smart-wallet / relayer flows where the “payer” differs from the account `user`.
    ///      For ERC-20: tokens are pulled from msg.sender via safeTransferFrom.
    ///      For native ETH: msg.value is auto-wrapped to WETH and stored in the account.
    /// @param assetToken Asset token address to deposit (must be WETH address for native ETH)
    /// @param amount Amount of tokens to deposit in token decimals (must match msg.value for ETH)
    function depositAsset(address assetToken, uint256 amount) external payable nonReentrant {
        _deposit(assetToken, amount);
    }

    /// @notice Deposit to a yield strategy atomically
    /// @dev For local: delegates to vault module. Sync modules (e.g., ERC4626) create position immediately.
    ///      For cross-chain: bridges tokens, creates pending deposit awaiting validator confirmation.
    ///      Tokens must already be in the account (via depositAsset). msg.value is forwarded as LZ fee.
    /// @param strategyId Strategy identifier from router
    /// @param amount Amount of asset tokens to deposit
    /// @param bridgeExecutionParams ABI-encoded bridge parameters (see IBridge)
    /// @return msgGuid Message GUID for cross-chain tracking (bytes32(0) for local)
    function depositStrategy(bytes32 strategyId, uint256 amount, bytes calldata bridgeExecutionParams)
        external
        payable
        nonReentrant
        onlyUser
        returns (bytes32 msgGuid)
    {
        return _depositStrategy(strategyId, amount, bridgeExecutionParams);
    }

    /// @notice Confirm deposit completed successfully
    /// @dev Called by validator after verifying share tokens arrived in account.
    /// @param msgGuid Bridge message GUID from the deposit operation
    /// @param receivedShares Number of share tokens received from the cross-chain deposit
    function confirmDeposit(bytes32 msgGuid, uint256 receivedShares) external onlyValidator {
        _confirmDeposit(msgGuid, receivedShares);
    }

    /// @notice Mark deposit as failed
    /// @dev Called by validator when share tokens never arrived.
    ///      Resets allocation status so user can retry after claiming refund.
    ///      Assets remain locked in OVaultComposer until refund is claimed.
    /// @param msgGuid Bridge message GUID of the failed deposit
    function markDepositFailed(bytes32 msgGuid) external onlyValidator {
        _markDepositFailed(msgGuid);
    }

    /// @notice Settle a failed deposit by cleaning up pending state
    /// @dev Called by validator after compose retry delivered tokens back to source chain.
    ///      Emits DepositRefunded event and removes the pending deposit tracking.
    /// @param msgGuid Bridge message GUID of the failed deposit
    function settleFailedDeposit(bytes32 msgGuid) external onlyValidator {
        _settleFailedDeposit(msgGuid);
    }

    /// @notice Settle a pending ERC-7540 deposit by claiming shares from the vault
    /// @dev Called by validator after the ERC-7540 vault operator has fulfilled the deposit request.
    ///      The Account (as controller) calls deposit(assets, receiver, controller) on the vault
    ///      to claim shares, then enforces slippage and creates/updates the position.
    ///
    ///      This is necessary because ERC-7540 requires the controller (Account) to actively
    ///      claim shares after request fulfillment. Unlike cross-chain confirmDeposit() where
    ///      the validator reports received shares, here the Account interacts with the vault directly.
    ///
    /// @param msgGuid The pending deposit GUID (operationId from requestDeposit)
    function settleERC7540Deposit(bytes32 msgGuid) external nonReentrant onlyValidator {
        _settleERC7540Deposit(msgGuid);
    }

    /// @notice Cancel a pending ERC-7540 deposit request
    /// @dev Called by validator when the deposit request should be cancelled (e.g., slippage
    ///      bounds won't be met after fulfillment). Only works with ERC-7540 vaults that
    ///      support cancelDepositRequest (optional per spec).
    ///      After cancellation, assets are returned to the Account by the vault.
    /// @param msgGuid The pending deposit GUID (operationId from requestDeposit)
    function cancelERC7540DepositRequest(bytes32 msgGuid) external nonReentrant onlyValidator {
        _cancelERC7540DepositRequest(msgGuid);
    }

    // ========================== Withdrawal Functions ==========================
    //
    // Withdrawals have two phases:
    // 1. User initiates: calls withdrawAsset() for unallocated tokens, or withdrawStrategy() for positions
    // 2. Validator confirms: for cross-chain, validator calls confirmWithdrawal() when assets arrive
    //

    /// @notice Withdraw asset tokens from account to a recipient
    /// @dev Transfers unallocated tokens from account to the specified recipient. Only whitelisted tokens allowed.
    ///      CRITICAL: Cannot withdraw assets needed for pending cross-chain withdrawal confirmations.
    ///      This prevents draining liquidity needed for fee payments or accounting during confirmations.
    /// @param assetToken Token address to withdraw (must be whitelisted)
    /// @param amount Amount to withdraw in token decimals
    /// @param recipient Address to receive the withdrawn tokens
    function withdrawAsset(address assetToken, uint256 amount, address recipient) external nonReentrant onlyUser {
        // Delegate to internal implementation
        _withdraw(assetToken, amount, recipient);
    }

    /// @notice Withdraw from a position in a yield strategy
    /// @dev For local: delegates to vault module. Sync modules (e.g., ERC4626) update/remove position immediately.
    ///      For cross-chain: bridges share tokens, creates pending withdrawal awaiting validator confirmation.
    ///
    /// ## Local vs Cross-chain behavior
    /// - Local: Immediate execution, position updated, fees charged
    /// - Cross-chain: Creates pending withdrawal, position updated when confirmed
    ///
    /// ## Partial withdrawals
    /// User can withdraw any amount <= position.amount.
    /// Position is removed only when amount == position.amount (full withdrawal).
    ///
    /// @param positionIndex Index of position in positions array
    /// @param amount Amount of shares to withdraw (must be > 0)
    /// @param bridgeExecutionParams ABI-encoded bridge parameters (empty for local)
    /// @return msgGuid Message GUID for cross-chain tracking (bytes32(0) for local)
    function withdrawStrategy(uint256 positionIndex, uint256 amount, bytes calldata bridgeExecutionParams)
        external
        payable
        nonReentrant
        onlyUser
        returns (bytes32 msgGuid)
    {
        // Delegate to internal implementation
        return _withdrawStrategy(positionIndex, amount, bridgeExecutionParams);
    }

    /// @notice Withdraw entire position from a yield strategy
    /// @dev Convenience function that withdraws all shares from a position.
    ///      Equivalent to calling withdrawStrategy(index, position.amount, params).
    /// @param positionIndex Index of position in positions array
    /// @param bridgeExecutionParams ABI-encoded bridge parameters
    /// @return msgGuid Message GUID for cross-chain tracking (bytes32(0) for local)
    function withdrawStrategyAll(uint256 positionIndex, bytes calldata bridgeExecutionParams)
        external
        payable
        nonReentrant
        onlyUser
        returns (bytes32 msgGuid)
    {
        // Delegate to internal implementation which reads position.amount
        return _withdrawStrategyAll(positionIndex, bridgeExecutionParams);
    }

    /// @notice Confirm withdrawal completed successfully
    /// @dev Called by validator after verifying asset tokens arrived in account.
    ///      Updates position accounting and charges fees (performance + management).
    /// @param msgGuid Bridge message GUID from the withdrawal operation
    /// @param receivedAssets Actual assets received (for slippage verification and fee calculation)
    function confirmWithdrawal(bytes32 msgGuid, uint256 receivedAssets) external onlyValidator {
        // Delegate to internal implementation which handles fee charging and position updates
        _confirmWithdrawal(msgGuid, receivedAssets);
    }

    /// @notice Mark withdrawal as failed
    /// @dev Called by validator when asset tokens never arrived (bridge failure).
    ///      Position shares remain unchanged - they're still locked on destination.
    ///      Validator settles the failed withdrawal once tokens are returned.
    /// @param msgGuid Bridge message GUID of the failed withdrawal
    function markWithdrawalFailed(bytes32 msgGuid) external onlyValidator {
        // Delegate to internal implementation
        _markWithdrawalFailed(msgGuid);
    }

    /// @notice Settle a failed withdrawal by cleaning up pending state
    /// @dev Called by validator after compose retry delivered tokens back to source chain.
    ///      Emits WithdrawalRefunded event, unlocks asset token, and removes pending state.
    /// @param msgGuid Bridge message GUID of the failed withdrawal
    function settleFailedWithdrawal(bytes32 msgGuid) external onlyValidator {
        // Delegate to internal implementation
        _settleFailedWithdrawal(msgGuid);
    }

    /// @notice Settle a pending ERC-7540 withdrawal by claiming assets from the vault
    /// @dev Called by validator after the ERC-7540 vault operator has fulfilled the redeem request.
    ///      The Account (as controller) calls redeem(shares, receiver, controller) on the vault
    ///      to claim assets, then charges fees and updates/removes the position.
    /// @param msgGuid The pending withdrawal GUID (operationId from requestRedeem)
    function settleERC7540Withdrawal(bytes32 msgGuid) external nonReentrant onlyValidator {
        _settleERC7540Withdrawal(msgGuid);
    }

    /// @notice Cancel a pending ERC-7540 redeem request
    /// @dev Called by validator when the redeem request should be cancelled.
    ///      Only works with ERC-7540 vaults that support cancelRedeemRequest (optional per spec).
    ///      After cancellation, shares are returned to the Account by the vault.
    /// @param msgGuid The pending withdrawal GUID (operationId from requestRedeem)
    function cancelERC7540RedeemRequest(bytes32 msgGuid) external nonReentrant onlyValidator {
        _cancelERC7540RedeemRequest(msgGuid);
    }

    // ========================== Fee Collection ==========================

    /// @notice Collect accrued management fees for a position
    /// @dev Called by validator periodically to collect time-based management fees.
    ///      Performance fees are collected automatically on withdrawal.
    ///      Validator can batch this across multiple users and positions.
    ///
    /// ## Why separate fee collection?
    /// Management fees accrue continuously based on time × principal × rate.
    /// Without periodic collection:
    /// - Fees accumulate unbounded until withdrawal
    /// - Large positions could owe significant fees on exit
    /// - Protocol revenue is delayed
    ///
    /// ## Validator batching
    /// The validator can call this across many accounts/positions in a single
    /// multicall, efficiently collecting fees protocol-wide.
    ///
    /// ## Fee math
    /// By passing sharesWithdrawn=0 and assetsReceived=0, we trigger:
    /// - Management fee: charged for time since lastFeeAccrual
    /// - Performance fee: NOT charged (no withdrawal = no realized profit)
    ///
    /// ## Graceful degradation
    /// If account lacks liquid assets to pay fees, FeeManager will:
    /// - Skip charging and return original lastFeeAccrual
    /// - Fees can be collected later when account has balance
    ///
    /// @param positionIndex Index of position to collect fees from
    function collectFees(uint256 positionIndex) external nonReentrant onlyValidator {
        require(positionIndex < positions.length, Errors.PositionNotFound());

        Types.Position storage position = positions[positionIndex];

        // Early exit if no FeeManager configured or position has no principal
        address fm = IAccountManager(FACTORY).feeManager();
        if (fm == address(0) || position.principal == 0) return;

        // Resolve strategy to get asset token address
        address router = RouterHelpers.getRouterForStrategy(ROUTER_MANAGER, position.strategyId);
        IRouter.Strategy memory strategy = RouterHelpers.safeGetStrategy(router, position.strategyId);

        // Grant FeeManager max approval (will be reset to 0 after)
        // Using max avoids re-approving for each fee collection call
        IERC20(strategy.assetToken).forceApprove(fm, type(uint256).max);

        // Collect MANAGEMENT FEES ONLY (no withdrawal happening)
        // sharesWithdrawn = 0 means no performance fee calculation
        // assetsReceived = 0 means no withdrawal proceeds to consider
        (uint256 principalAfter, uint48 lastAccrualAfter) = IFeeManager(fm)
            .applyAndChargeFees(
                user,
                position.strategyId,
                strategy.assetToken,
                position.id,
                position.principal,
                position.amount,
                0, // sharesWithdrawn = 0 (management fee only, no perf fee)
                0, // assetsReceived = 0 (no withdrawal)
                position.lastFeeAccrual,
                uint48(block.timestamp), // nowTimestamp
                uint48(block.timestamp), // atTimestamp (same for local fee collection)
                bytes32(0) // local operation
            );

        // Update position's fee accounting state
        position.principal = principalAfter;
        position.lastFeeAccrual = lastAccrualAfter;

        // SECURITY: Reset approval to 0 after use
        // Prevents FeeManager from pulling additional tokens later
        IERC20(strategy.assetToken).forceApprove(fm, 0);
    }

    /// @notice Receive ETH for cross-chain gas payments
    receive() external payable {}

    // ========================== Recovery Functions ==========================

    /// @notice Rescue ERC-20 tokens stuck in account (e.g., user blacklisted by token issuer)
    /// @dev Only callable by the protocol owner (AccountManager owner). This is an emergency
    ///      recovery mechanism for tokens that cannot be transferred to the account's user.
    /// @param token ERC-20 token address to rescue
    /// @param to Recipient address for the rescued tokens
    /// @param amount Amount of tokens to rescue
    function rescueStuckTokens(address token, address to, uint256 amount) external nonReentrant {
        require(msg.sender == Ownable(FACTORY).owner(), Errors.UnauthorizedCaller(msg.sender));
        require(to != address(0), Errors.InvalidAddress());
        require(amount > 0, Errors.ZeroAmount());
        IERC20(token).safeTransfer(to, amount);
        emit Events.TokensRescued(token, to, amount);
    }

    /// @notice Recover ETH from account
    /// @dev Attempts to send all ETH balance to `user`.
    ///      If `user` cannot receive ETH (non-payable / reverting), the transfer will fail and an event is emitted.
    ///      Use `recoverETHTo()` to recover to an alternative recipient address.
    function recoverETH() external nonReentrant onlyUser returns (bool success) {
        return _recoverETHTo(user);
    }

    /// @notice Recover ETH from account to a specified recipient
    /// @dev Provides a recovery path for users whose `user` address cannot receive ETH.
    /// @param recipient Address to receive the recovered ETH
    /// @return success True if the transfer succeeded, false otherwise
    function recoverETHTo(address recipient) external nonReentrant onlyUser returns (bool success) {
        return _recoverETHTo(recipient);
    }

    /// @notice Internal helper to attempt sending the account's ETH balance to `recipient`.
    /// @dev Does NOT revert on transfer failure; emits an event instead so users can retry with another recipient.
    /// @param recipient Address to receive the ETH
    /// @return success True if the transfer succeeded, false otherwise
    function _recoverETHTo(address recipient) internal returns (bool success) {
        require(recipient != address(0), Errors.InvalidAddress());
        uint256 balance = address(this).balance;
        if (balance == 0) return true;

        // Don't revert if transfer fails - allows the user to retry with another recipient
        (success,) = recipient.call{value: balance}("");
        if (success) {
            emit Events.ETHRecovered(recipient, balance);
        } else {
            emit Events.ETHRecoveryFailed(recipient, balance);
        }
    }

    /// @notice Claim a native-fee refund credit from a bridge module and forward it to `to`
    /// @dev Used for bridges (e.g., LayerZero) that may credit refunds when `returnRecipient` can't receive ETH.
    ///      This account is typically used as `returnRecipient`, so it must perform the claim.
    /// @param bridgeModule Bridge module address (e.g., LayerZero)
    /// @param to Recipient address to receive the refunded native token
    /// @return amount Amount of native token claimed from the bridge module
    function claimBridgeNativeRefund(address bridgeModule, address to)
        external
        nonReentrant
        onlyUser
        returns (uint256 amount)
    {
        require(bridgeModule != address(0), Errors.InvalidAddress());
        require(to != address(0), Errors.InvalidAddress());

        try IBridge(bridgeModule).claimNativeRefund(to) returns (uint256 claimed) {
            return claimed;
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }
    }
}
