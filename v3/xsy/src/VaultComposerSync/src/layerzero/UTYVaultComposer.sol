// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {VaultComposerSync} from "./lib/VaultComposerSyncPatched.sol";
import {
    SendParam,
    OFTComposeMsgCodec,
    IOFT,
    ERC4626,
    MessagingFee
} from "@layerzerolabs/ovault-evm/contracts/VaultComposerSync.sol";
import {MessagingReceipt} from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";
import {IUTYAsyncVault} from "../interfaces/IUTYAsyncVaultV1.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @dev Minimal interface to check vault pause state (cannot add to IUTYAsyncVaultV1
/// because PausableUpgradeable.paused() is public, creating a visibility conflict)
interface IPausable {
    function paused() external view returns (bool);
}

/**
 * @title UTYVaultComposer
 * @dev A LayerZero Vault Composer for cross-chain UTY Async Vaults.
 *
 * This contract is a modified version of LayerZero's {VaultComposerSync}, with
 * - added support for Async Vault operations (cross-chain deposits and asynchronous redemptions)
 * - sponsoring of LayerZero protocol fees
 * - only allows one trusted sender per spoke chain ID
 *
 * Deploy on hub chain ONLY!
 * This composer is NOT compatible with LayerZero's OVault standard and utilizes a slightly different message format.
 * Instead it's meant to be used together with {UTYVaultInterface} on spoke chains, which creates and sends the message.
 *
 * Note: It's built upon a slightly modified version of LayerZero's {VaultComposerSync} to allow overriding {handleCompose}.
 */
contract UTYVaultComposer is VaultComposerSync, Ownable2Step {
    using OFTComposeMsgCodec for bytes;
    using OFTComposeMsgCodec for bytes32;
    using Address for address payable;
    using SafeERC20 for IERC20;

    event RedeemRequested(
        bytes32 sender, bytes32 controller, uint32 dstEid, uint256 shareAmt, uint256 assetAmt, uint256 requestId
    );
    event RefundPending(bytes32 indexed id, address token, uint256 amount, bytes32 indexed recipient, uint32 dstEid);
    event RefundCompleted(bytes32 indexed id);
    event ERC20Recovered(address indexed token, uint256 amount, address indexed to);
    event GasTankFunded(address indexed sender, uint256 amount, uint256 remainingBalance);
    event GasTankDebited(
        bytes32 indexed guid, uint256 nativeFee, address indexed oft, uint8 operationType, uint256 remainingBalance
    );
    event GasTokensRecovered(address indexed to, uint256 amount, uint256 remainingBalance);
    event TrustedRemoteUpdated(uint32 indexed eid, address indexed oldRemote, address indexed newRemote);

    error NotTrustedRemote(address remote, uint32 eid);
    error InsufficientFunds(uint256 availableFunds, uint256 requiredFunds);
    error FunctionNotSupported();
    error OperationNotAllowed();
    error NoPendingRefund();
    error InvalidFee(uint256 minRequired, uint256 actual);
    error VaultPaused();
    error InvalidZeroAddress();

    /// @dev Operation type constants for GasTankDebited events.
    /// SHARE_OFT in _sendRemote = deposit return, ASSET_OFT = claim return.
    uint8 internal constant OP_DEPOSIT = 1;
    uint8 internal constant OP_CLAIM = 3;

    /// @dev Storage for failed refunds that can be retried later
    struct PendingRefund {
        address token;
        uint256 amount;
        bytes32 recipient;
        address refundAddress;
        uint32 dstEid;
        bytes extraOptions;
    }

    /// @dev Must be a UTYAsyncVault
    IUTYAsyncVault internal immutable ASYNC_VAULT;
    /// @dev Mapping of trusted remote {UTYVaultInterface} addresses for each source chain ID
    mapping(uint32 => address) internal trustedRemotes;
    /// @dev Mapping of pending refunds that failed to send cross-chain
    mapping(bytes32 => PendingRefund) public pendingRefunds;
    /// @dev Nonce to prevent refund ID collision when same params occur in same block
    uint256 private _refundNonce;
    /// @dev Total pending refund amounts per token (prevents recoverERC20 from stealing refund funds)
    mapping(address => uint256) public totalPendingByToken;

    /// @dev Initializes the parent VaultComposerSync contract, and sets the async vault instance.
    /// @notice see also {VaultComposerSync-constructor}
    constructor(address _vault, address _assetOFT, address _shareOFT, address _initialOwner)
        VaultComposerSync(_vault, _assetOFT, _shareOFT)
        Ownable(_initialOwner)
    {
        ASYNC_VAULT = IUTYAsyncVault(_vault);
    }

    /// @dev Allows the contract to receive gas tokens for sponsored LayerZero transactions.
    /// Note: forced ETH via selfdestruct/coinbase bypasses receive() — gas tank balance
    /// remains accurate, only event tracking underreports.
    receive() external payable virtual {
        if (msg.value > 0) {
            emit GasTankFunded(msg.sender, msg.value, address(this).balance);
        }
    }

    /// @dev Overrides the {VaultComposerSync-lzCompose} function to include trusted remote verification.
    function lzCompose(
        address _composeSender,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) public payable virtual override {
        // check if composeFrom is trusted
        address from = OFTComposeMsgCodec.bytes32ToAddress(_message.composeFrom());
        uint32 srcEid = _message.srcEid();
        if (trustedRemotes[srcEid] != from) {
            revert NotTrustedRemote(from, srcEid);
        }

        super.lzCompose(_composeSender, _guid, _message, _executor, _extraData);
    }

    /// @dev Overrides the {VaultComposerSync-handleCompose} function to support async operations.
    function handleCompose(
        address _oftIn,
        bytes32,
        /*_composeFrom*/
        bytes memory _composeMsg,
        uint256 _amount
    )
        external
        payable
        virtual
        override
    {
        /// @dev Can only be called by self
        if (msg.sender != address(this)) revert OnlySelf(msg.sender);

        /// @dev SendParam defines how the composer will handle the user's funds
        (SendParam memory sendParam, address originalSender) = abi.decode(_composeMsg, (SendParam, address));
        bytes32 senderBytes = OFTComposeMsgCodec.addressToBytes32(originalSender);

        if (_oftIn == SHARE_OFT) {
            if (_amount > 0) {
                // async redemption request, no further hops needed
                _requestRedeem(senderBytes, _amount, sendParam);
                return;
            }

            // async redeem claim after lockup period, redeem unlocked shares
            // no tokens are incoming here, shares were already transferred during requestRedeem
            uint256 shareAmount = sendParam.amountLD;
            _redeemAndSend(senderBytes, shareAmount, sendParam, tx.origin, 0);
        } else {
            // sync deposit
            _depositAndSend(senderBytes, _amount, sendParam, tx.origin, 0);
        }
    }

    /// @dev Block renounceOwnership to prevent accidental ownership loss.
    function renounceOwnership() public virtual override onlyOwner {
        revert OperationNotAllowed();
    }

    /// @dev Returns the trusted remote {UTYVaultInterface} address for a given LayerZero endpoint ID.
    function getTrustedRemote(uint32 eid) external view returns (address) {
        return trustedRemotes[eid];
    }

    /// @dev Sets the trusted remote {UTYVaultInterface} address for a given LayerZero chain ID.
    /// @notice Reverts if vault is paused (defense-in-depth).
    function setTrustedRemote(address remote, uint32 eid) external virtual onlyOwner {
        if (remote == address(0)) revert InvalidZeroAddress();
        if (IPausable(address(ASYNC_VAULT)).paused()) revert VaultPaused();
        address oldRemote = trustedRemotes[eid];
        trustedRemotes[eid] = remote;
        emit TrustedRemoteUpdated(eid, oldRemote, remote);
    }

    /// @dev Allows the owner to recover leftover gas tokens from the contract.
    function recoverGasTokens(uint256 amount, address payable to) external virtual onlyOwner {
        if (to == address(0)) revert InvalidZeroAddress();
        Address.sendValue(to, amount);
        emit GasTokensRecovered(to, amount, address(this).balance);
    }

    /// @dev Internal function to handle async redemption requests (no immediate asset transfer).
    function _requestRedeem(bytes32 _redeemer, uint256 _shareAmount, SendParam memory _sendParam)
        internal
        virtual
        returns (uint256 requestId)
    {
        // UTY vault locks in conversion rate at request time
        uint256 assetAmount = ASYNC_VAULT.previewRequestRedeem(_shareAmount);
        _assertSlippage(assetAmount, _sendParam.minAmountLD);

        // Async redemption request transfers shares to vault, but not the assets
        requestId =
            ASYNC_VAULT.requestRedeem(_shareAmount, OFTComposeMsgCodec.bytes32ToAddress(_sendParam.to), address(this));

        emit RedeemRequested(_redeemer, _sendParam.to, _sendParam.dstEid, _shareAmount, assetAmount, requestId);
    }

    /// @dev Block public depositAndSend entrypoint - only lzCompose calls are allowed (XSYL-3/XSYL-5)
    function depositAndSend(uint256, SendParam memory, address) external payable override {
        revert FunctionNotSupported();
    }

    /// @dev Block public redeemAndSend entrypoint - only lzCompose calls are allowed (XSYL-3/XSYL-5)
    function redeemAndSend(uint256, SendParam memory, address) external payable override {
        revert FunctionNotSupported();
    }

    function _redeem(bytes32 _redeemer, uint256 _shareAmount) internal virtual override returns (uint256 assetAmount) {
        // claim assets of the redeemer (controller) using operator permissions, with the composer as receiver
        assetAmount = ASYNC_VAULT.redeem(_shareAmount, address(this), OFTComposeMsgCodec.bytes32ToAddress(_redeemer));
    }

    /// @dev Overrides the {VaultComposerSync-_sendRemote} function to include async vault logic.
    /// Sponsors LayerZero fees from the gas tank and emits GasTankDebited for monitoring.
    function _sendRemote(
        address _oft,
        SendParam memory _sendParam,
        address _refundAddress,
        uint256 /*_msgValue*/
    )
        internal
        virtual
        override
    {
        MessagingFee memory fee = IOFT(_oft).quoteSend(_sendParam, false);
        (MessagingReceipt memory receipt,) = IOFT(_oft).send{value: fee.nativeFee}(_sendParam, fee, _refundAddress);
        // SHARE_OFT = deposit return (shares back to user), ASSET_OFT = claim return (assets back to user).
        // These are the only two OFTs that reach _sendRemote — _depositAndSend hardcodes SHARE_OFT,
        // _redeemAndSend hardcodes ASSET_OFT. _requestRedeem returns before reaching _send/_sendRemote.
        uint8 opType = _oft == SHARE_OFT ? OP_DEPOSIT : OP_CLAIM;
        emit GasTankDebited(receipt.guid, fee.nativeFee, _oft, opType, address(this).balance);
    }

    /// @dev Overrides the {VaultComposerSync-quoteSend} function to account for async vault logic.
    function quoteSend(address _from, address _targetOFT, uint256 _vaultInAmount, SendParam memory _sendParam)
        external
        view
        virtual
        override
        returns (MessagingFee memory)
    {
        // When quoting the asset OFT, if the input is shares, SendParam.amountLD must be assets (and vice versa)
        if (_targetOFT == ASSET_OFT) {
            // async redemption, redeem after lockup period
            uint256 maxShares = ASYNC_VAULT.maxRedeem(_from); // returns only already unlocked shares of sender
            if (_vaultInAmount > maxShares) {
                revert ERC4626.ERC4626ExceededMaxRedeem(_from, _vaultInAmount, maxShares);
            }

            _sendParam.amountLD = ASYNC_VAULT.previewRequestRedeem(_vaultInAmount);
        } else {
            // sync deposit
            uint256 maxDeposit = ASYNC_VAULT.maxDeposit(_from); // vault global max deposit limit
            if (_vaultInAmount > maxDeposit) {
                revert ERC4626.ERC4626ExceededMaxDeposit(_from, _vaultInAmount, maxDeposit);
            }

            _sendParam.amountLD = ASYNC_VAULT.previewDeposit(_vaultInAmount);
        }

        return IOFT(_targetOFT).quoteSend(_sendParam, false);
    }

    /*//////////////////////////////////////////////////////////////
        Refund Logic (XSYL-1 + XSYL-2)
    //////////////////////////////////////////////////////////////*/

    /// @dev Override {VaultComposerSync-_refund} to:
    /// - XSYL-1: Decode original sender from compose message (not composeFrom which is UTYVaultInterface)
    /// - XSYL-8: Always store to pendingRefunds (no sponsored auto-refund)
    ///
    /// @notice When the zero-amount guard triggers (claim path sends amountLD=0), the base class
    /// VaultComposerSyncPatched.lzCompose() still emits the Refunded(_guid) event before calling
    /// _refund(). This means the indexer will see a Refunded event without a corresponding
    /// RefundPending for claim-path compose failures. This is expected behavior.
    function _refund(address _oft, bytes calldata _message, uint256 _amount, address _refundAddress, uint256 _msgValue)
        internal
        virtual
        override
    {
        // _msgValue is unused after XSYL-8 — executor-forwarded ETH stays in gas tank.
        // Parameter retained because signature is inherited from VaultComposerSync._refund().
        // Accumulated ETH is recoverable via recoverGasTokens().

        // Guard: claim path sends amountLD=0; no tokens to refund
        if (_amount == 0) return;

        // XSYL-1 FIX: Decode original sender from compose message
        bytes memory composeMsg = OFTComposeMsgCodec.composeMsg(_message);
        (SendParam memory hop2SendParam, address originalSender) = abi.decode(composeMsg, (SendParam, address));

        SendParam memory refundSendParam;
        refundSendParam.dstEid = OFTComposeMsgCodec.srcEid(_message);
        refundSendParam.to = OFTComposeMsgCodec.addressToBytes32(originalSender);
        refundSendParam.amountLD = _amount;
        refundSendParam.extraOptions = hop2SendParam.extraOptions;

        // XSYL-8 FIX: Always store for user-initiated recovery via retryRefund()
        _refundNonce += 1;
        bytes32 id = keccak256(abi.encode(block.timestamp, _oft, _amount, refundSendParam.to, _refundNonce));
        pendingRefunds[id] = PendingRefund({
            token: _oft,
            amount: _amount,
            recipient: refundSendParam.to,
            refundAddress: _refundAddress,
            dstEid: refundSendParam.dstEid,
            extraOptions: refundSendParam.extraOptions
        });
        totalPendingByToken[_oft] += _amount;
        emit RefundPending(id, _oft, _amount, refundSendParam.to, refundSendParam.dstEid);
    }

    /// @dev Permissionless recovery function to retry failed refunds. Caller pays via msg.value.
    /// @notice CRITICAL: Does NOT use _sendRemote (which pays from gas tank). Caller pays exact fee.
    /// Any excess msg.value beyond the quoted fee stays in the Composer's gas tank and is
    /// recoverable by the owner via recoverGasTokens(). Use quoteRetryRefund() to get the
    /// exact fee before calling.
    /// @param id The pending refund ID
    function retryRefund(bytes32 id) external payable nonReentrant {
        PendingRefund memory refund = pendingRefunds[id];
        if (refund.amount == 0) revert NoPendingRefund();

        // Effects BEFORE interactions (CEI pattern)
        totalPendingByToken[refund.token] -= refund.amount;
        delete pendingRefunds[id];

        // Build sendParam from memory copy (refund was already copied to memory)
        SendParam memory sendParam;
        sendParam.dstEid = refund.dstEid;
        sendParam.to = refund.recipient;
        sendParam.amountLD = refund.amount;
        sendParam.extraOptions = refund.extraOptions;

        MessagingFee memory fee = IOFT(refund.token).quoteSend(sendParam, false);
        if (msg.value < fee.nativeFee) revert InvalidFee(fee.nativeFee, msg.value);

        // Interaction last
        IOFT(refund.token).send{value: fee.nativeFee}(sendParam, fee, refund.refundAddress);
        emit RefundCompleted(id);
        // Any excess msg.value stays in Composer (recoverable via recoverGasTokens)
    }

    /// @dev View function to quote the fee for retrying a pending refund (uses stored extraOptions)
    /// @param id The pending refund ID
    function quoteRetryRefund(bytes32 id) external view returns (MessagingFee memory) {
        PendingRefund memory refund = pendingRefunds[id];
        if (refund.amount == 0) revert NoPendingRefund();

        SendParam memory sendParam;
        sendParam.dstEid = refund.dstEid;
        sendParam.to = refund.recipient;
        sendParam.amountLD = refund.amount;
        sendParam.extraOptions = refund.extraOptions;

        return IOFT(refund.token).quoteSend(sendParam, false);
    }

    /// @dev Last-resort ERC20 token recovery. Respects totalPendingByToken to protect refund funds.
    /// @notice totalPendingByToken is keyed by OFT adapter address, but admin may call with
    /// the underlying ERC20 address. Cross-reference both to prevent sweeping reserved funds.
    function recoverERC20(address token, uint256 amount, address to) external onlyOwner {
        if (to == address(0)) revert InvalidZeroAddress();
        uint256 balance = IERC20(token).balanceOf(address(this));

        // Check totalPendingByToken for both the direct token key AND the
        // case where token is the underlying ERC20 of a tracked OFT adapter
        uint256 reserved = totalPendingByToken[token];
        if (token == ASSET_ERC20) reserved += totalPendingByToken[ASSET_OFT];
        if (token == SHARE_ERC20) reserved += totalPendingByToken[SHARE_OFT];

        uint256 available = balance > reserved ? balance - reserved : 0;
        if (amount > available) revert InsufficientFunds(available, amount);
        IERC20(token).safeTransfer(to, amount);
        emit ERC20Recovered(token, amount, to);
    }
}
