// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    SendParam,
    MessagingFee,
    MessagingReceipt,
    OFTReceipt
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";

import {
    SafeERC20,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import {
    VaultComposerParams,
    ComposerWithdrawalQueueEntry
} from "../../common/Types.sol";

import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { FactoryClient } from "../../factory/FactoryClient.sol";
import { IVaultComposer } from "../../interfaces/IVaultComposer.sol";
import { IUnderlyingOFT } from "../../interfaces/IUnderlyingOFT.sol";
import { VaultComposerSync } from "./VaultComposerSync.sol";

/**
 * @title VaultComposer
 * @notice Coordinates cross-chain vault share redemptions and withdrawals.
 * @dev Extends {VaultComposerSync} to reuse the deposit/redeem send logic and
 *      adds queueing, cancellation and fulfillment mechanics.
 * @dev Initialize through the factory using {VaultComposerParams}.
 
 */
contract VaultComposer is
    IVaultComposer,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    FactoryClient,
    Roles,
    VaultComposerSync
{
    using SafeERC20 for IERC20;

    /// @notice Emitted when a referral code is attached to a cross-chain send request.
    /// @param user Vault composer that submitted the send operation.
    /// @param referralCode Bytes32-encoded referral identifier supplied in the request.
    /// @param amount Amount of underlying (in local decimals) forwarded with the referral.
    event ReferralInfo(
        address indexed user,
        bytes32 indexed referralCode,
        uint256 amount
    );

    /**
     * @notice Emitted whenever a new withdrawal request is created.
     * @param index Identifier of the withdrawal entry.
     * @param initiator Address that submitted the request.
     * @param timestamp Block timestamp when the request was enqueued.
     */
    event WithdrawalRequest(
        uint256 indexed index,
        address indexed initiator,
        uint256 timestamp
    );

    /**
     * @notice Emitted after a queued withdrawal has been processed successfully.
     * @param index Identifier of the withdrawal entry.
     * @param initiator Address that submitted the request.
     * @param timestamp Block timestamp when the request was fulfilled.
     */
    event WithdrawalProcessed(
        uint256 indexed index,
        address indexed initiator,
        uint256 timestamp
    );

    /**
     * @notice Emitted when a pending withdrawal is canceled and funds are returned.
     * @param index Identifier of the withdrawal entry.
     * @param initiator Address that submitted the request.
     * @param timestamp Block timestamp when the cancellation was executed.
     */
    event WithdrawalCanceled(
        uint256 indexed index,
        address indexed initiator,
        uint256 timestamp
    );
    /**
     * @dev Storage bucket keeping the withdrawal queue for upgradeable deployments.
     * @param withdrawalQueue list of withdrawal request submitted by users.
     */
    struct VaultComposerStorage {
        ComposerWithdrawalQueueEntry[] withdrawalQueue;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.VaultComposer")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant VAULT_COMPOSER_STORAGE_LOCATION =
        0x7c094683e496c2018822e92f3a22381ba734092f848f08d2e13588f89ec7d300;

    function _getVaultComposerStorage()
        internal
        pure
        returns (VaultComposerStorage storage $)
    {
        assembly {
            $.slot := VAULT_COMPOSER_STORAGE_LOCATION
        }
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(
        VaultComposerParams calldata _params
    ) external initializer {
        __AccessControl_init();
        __VaultComposerSync_init(
            _params.vault,
            _params.underlyingOFT,
            _params.underlyingToken,
            _params.endpoint,
            _params.localEid
        );
        __FactoryClient_init(msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);
    }

    /// @notice Authorizes UUPS implementation upgrades.
    /// @dev Restricted to addresses with `UPGRADE_MANAGER`.
    /// @param newImplementation Address of the new implementation contract.
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    function depositAndSendWithPermit(
        uint256 _underlyingAmount,
        SendParam memory _sendParam,
        address _refundAddress,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    )
        external
        payable
        returns (MessagingReceipt memory receipt, OFTReceipt memory oftReceipt)
    {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();

        try
            IERC20Permit($.underlyingToken).permit(
                msg.sender,
                address(this),
                _underlyingAmount,
                _deadline,
                _v,
                _r,
                _s
            )
        {} catch {}
        return depositAndSend(_underlyingAmount, _sendParam, _refundAddress);
    }

    /**
     * @notice Deposits ERC20 underlying from the caller into the vault and sends them to the recipient
     * @param _underlyingAmount The number of ERC20 tokens to deposit and send
     * @param _sendParam Parameters on how to send the shares to the recipient
     * @param _refundAddress Address to receive excess `msg.value`
     */
    function depositAndSend(
        uint256 _underlyingAmount,
        SendParam memory _sendParam,
        address _refundAddress
    )
        public
        payable
        virtual
        override
        nonReentrant
        whenFactoryNotPaused
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        IERC20($.underlyingToken).safeTransferFrom(
            msg.sender,
            address(this),
            _underlyingAmount
        );
        IUnderlyingOFT($.underlyingOft).deposit(_underlyingAmount);

        (msgReceipt, oftReceipt) = _depositAndSend(
            OFTComposeMsgCodec.addressToBytes32(msg.sender),
            _underlyingAmount,
            _sendParam,
            _refundAddress
        );
        if (_sendParam.oftCmd.length == 32) {
            emit ReferralInfo(
                msg.sender,
                abi.decode(_sendParam.oftCmd, (bytes32)),
                oftReceipt.amountSentLD
            );
        }
    }

    /**
     * @notice create a redeem request for vault shares to send the resulting underlying to the user later on
     * @param _shareAmount The number of vault shares to redeem
     * @param _sendParam Parameter that defines how to send the underlying
     * @param _refundAddress Address to receive excess payment of the LZ fees
     */
    function redeemAndSend(
        uint256 _shareAmount,
        SendParam memory _sendParam,
        address _refundAddress
    ) external payable override nonReentrant whenFactoryNotPaused {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        VaultComposerStorage storage $$ = _getVaultComposerStorage();

        MessagingFee memory fee;
        if (_sendParam.dstEid != $.localEid) {
            fee = quoteSend(
                msg.sender,
                $.underlyingOft,
                _shareAmount,
                _sendParam
            );

            if (msg.value < fee.nativeFee)
                revert Errors.NotEnoughValueToPayFees();
        } else {
            if (fee.nativeFee != 0) revert Errors.FeeNonZero();
        }

        ComposerWithdrawalQueueEntry memory entry;
        entry.initiator = msg.sender;
        entry.shareAmount = _shareAmount;
        entry.sendParam = _sendParam;
        entry.fee = fee.nativeFee;
        entry.txFee = msg.value - fee.nativeFee;
        entry.refundAddress = _refundAddress;

        IERC20(address($.vault)).safeTransferFrom(
            msg.sender,
            address(this),
            _shareAmount
        );

        uint256 id = $$.withdrawalQueue.length;
        $$.withdrawalQueue.push(entry);
        emit WithdrawalRequest(id, msg.sender, block.timestamp);
    }

    /**
     * @notice Cancels a pending withdrawal and refunds the requester’s shares plus prepaid fees.
     * @dev Reverts if the caller is not the original initiator, or if the entry is already completed/canceled.
     * @param _id Index of the withdrawal entry inside the queue.
     */
    function cancelWithdrawal(
        uint256 _id
    ) external nonReentrant whenFactoryNotPaused {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        ComposerWithdrawalQueueEntry storage entry = _getVaultComposerStorage()
            .withdrawalQueue[_id];
        address initiator = entry.initiator;

        if (msg.sender != initiator) revert Errors.NotInitiatorRequest();
        if (entry.canceled) revert Errors.AlreadyCanceled();
        if (entry.fulfilled) revert Errors.AlreadyFulfilled();

        entry.canceled = true;

        IERC20(address($.vault)).safeTransfer(initiator, entry.shareAmount);
        (bool success, ) = payable(initiator).call{
            value: entry.fee + entry.txFee
        }("");
        if (!success) revert Errors.RefundFailed();

        emit WithdrawalCanceled(_id, initiator, block.timestamp);
    }

    /**
     * @notice Processes multiple queued withdrawals in a single transaction.
     * @dev Callable only by accounts with `WITHDRAWAL_MANAGER` role. More gas-efficient than calling
     *      `processWithdrawal` multiple times. The sum of all `_extraFees` must equal `msg.value`.
     *      Emits {WithdrawalProcessed} for each successfully processed withdrawal.
     * @param _ids Array of withdrawal entry indices to fulfill.
     * @param _extraFees Array of additional native fees for each withdrawal (must match _ids length).
     */
    function processWithdrawals(
        uint256[] calldata _ids,
        uint256[] calldata _extraFees
    )
        external
        payable
        nonReentrant
        onlyRole(WITHDRAWAL_MANAGER)
        whenFactoryNotPaused
    {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.EmptyArray();
        if (length != _extraFees.length) revert Errors.LengthMismatch();

        uint256 totalExtraFees;
        uint256 totalTxFees;

        for (uint256 i = 0; i < length; i++) {
            totalExtraFees += _extraFees[i];
        }

        if (msg.value != totalExtraFees)
            revert Errors.ExtraFeesNotMatchingMsgValue();

        VaultComposerStorage storage $$ = _getVaultComposerStorage();

        for (uint256 i = 0; i < length; i++) {
            uint256 id = _ids[i];
            uint256 extraFee = _extraFees[i];

            ComposerWithdrawalQueueEntry storage entry = $$.withdrawalQueue[id];

            if (entry.canceled) revert Errors.AlreadyCanceled();
            if (entry.fulfilled) revert Errors.AlreadyFulfilled();

            address initiator = entry.initiator;
            entry.fulfilled = true;

            // Accumulate txFees to refund later
            totalTxFees += entry.txFee;

            _redeemAndSend(
                OFTComposeMsgCodec.addressToBytes32(initiator),
                entry.shareAmount,
                entry.sendParam,
                entry.refundAddress,
                entry.fee + extraFee
            );

            emit WithdrawalProcessed(id, initiator, block.timestamp);
        }

        if (totalTxFees > 0) {
            // The keeper should always be able to receive the funds;
            // if not, the transaction should not fail because of it.
            (bool success, ) = payable(msg.sender).call{ value: totalTxFees }(
                ""
            );
            success;
        }
    }

    function getWithdrawalQueueLength() external view returns (uint256) {
        return _getVaultComposerStorage().withdrawalQueue.length;
    }

    function getWithdrawalQueueEntry(
        uint256 _index
    ) external view returns (ComposerWithdrawalQueueEntry memory) {
        return _getVaultComposerStorage().withdrawalQueue[_index];
    }
}
