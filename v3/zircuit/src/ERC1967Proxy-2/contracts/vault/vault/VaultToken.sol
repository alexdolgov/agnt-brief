// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    SendParam,
    OFTReceipt,
    MessagingReceipt,
    MessagingFee
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import { VaultTokenParams, WithdrawalQueueEntry } from "../../common/Types.sol";
import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { FactoryClient } from "../../factory/FactoryClient.sol";
import { OFTUpgradeable } from "../../common/layer-zero/OFTUpgradeable.sol";
import { OFTCoreUpgradeable } from "../../common/layer-zero/OFTCoreUpgradeable.sol";
import { IVaultToken } from "../../interfaces/IVaultToken.sol";
import { IFactory } from "../../interfaces/IFactory.sol";

/**
 * @title VaultToken
 * @notice Omnichain share token that queues withdrawal requests for the vault composer.
 * @dev Initialize through the factory using {VaultTokenParams}.
 */
contract VaultToken is
    IVaultToken,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuard,
    FactoryClient,
    OFTUpgradeable,
    Roles
{
    uint8 constant DEFAULT_SHARED_DECIMALS = 6;

    /**
     * @notice Emitted when a user queues a withdrawal.
     * @param index Position in the withdrawal queue.
     * @param initiator Address that created the withdrawal request.
     * @param timestamp Block timestamp when the request was queued.
     */
    event WithdrawalRequest(
        uint256 indexed index,
        address indexed initiator,
        uint256 timestamp
    );

    /**
     * @notice Emitted once a withdrawal request has been processed.
     * @param index Position in the withdrawal queue.
     * @param initiator Address that created the withdrawal request.
     * @param timestamp Block timestamp when the request was processed.
     */
    event WithdrawalProcessed(
        uint256 indexed index,
        address indexed initiator,
        uint256 timestamp
    );

    /**
     * @notice Emitted when a pending withdrawal is canceled.
     * @param index Position in the withdrawal queue.
     * @param initiator Address that created the withdrawal request.
     * @param timestamp Block timestamp when the request was canceled.
     */
    event WithdrawalCanceled(
        uint256 indexed index,
        address indexed initiator,
        uint256 timestamp
    );

    /**
     * @notice Storage layout for upgradeable deployments.
     * @param vaultComposer Bytes32-encoded vault composer contract address.
     * @param vaultComposerEid LayerZero endpoint id for the vault composer chain.
     * @param withdrawalQueue Pending withdrawal requests.
     */
    struct VaultTokenStorage {
        bytes32 vaultComposer;
        uint32 vaultComposerEid;
        address tmpComposeFrom;
        WithdrawalQueueEntry[] withdrawalQueue;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.VaultToken")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant VAULT_TOKEN_STORAGE_LOCATION =
        0xe0913ae125bb6bd87bc7d157a02ebd350d4fb7b6de4f250370254c3648545400;

    function _getVaultTokenStorage()
        internal
        pure
        returns (VaultTokenStorage storage $)
    {
        assembly {
            $.slot := VAULT_TOKEN_STORAGE_LOCATION
        }
    }

    /// @notice Initializes the implementation with the given LayerZero endpoint.
    /// @dev `_lzEndpoint` is immutable within the implementation; proxies call {initialize} for state setup.
    /// @param _lzEndpoint The address of the LayerZero endpoint contract.
    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @notice Initializes a proxied instance.
     * @param _params Deployment settings. See {VaultTokenParams} for field descriptions.
     */
    function initialize(VaultTokenParams calldata _params) public initializer {
        __Ownable_init(_params.oAppOwner);
        __OFT_init(
            _params.name,
            _params.symbol,
            decimals(), // default 18 decimals
            DEFAULT_SHARED_DECIMALS, // default 6 decimals
            _params.oAppDelegate
        );
        __AccessControl_init();
        __FactoryClient_init(msg.sender);

        VaultTokenStorage storage $ = _getVaultTokenStorage();
        $.vaultComposer = _params.vaultComposer;
        $.vaultComposerEid = _params.vaultComposerEid;

        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);
    }

    /// @notice Authorizes UUPS implementation upgrades.
    /// @dev Restricted to addresses with `UPGRADE_MANAGER`.
    /// @param newImplementation Address of the new implementation contract.
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    /// @inheritdoc OFTCoreUpgradeable
    /// @dev Stores withdrawal requests when the destination matches the configured vault composer.
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    )
        external
        payable
        override
        nonReentrant
        whenFactoryNotPaused
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        VaultTokenStorage storage $ = _getVaultTokenStorage();
        if (
            _sendParam.to == $.vaultComposer &&
            _sendParam.dstEid == $.vaultComposerEid &&
            msg.sender != address(this)
        ) {
            _validateFees(_sendParam, _fee);

            uint256 amount = _toLD(_toSD(_sendParam.amountLD));
            _transfer(msg.sender, address(this), amount);

            if (amount == 0) revert Errors.WithdrawalUnderThreshold();
            if (_sendParam.minAmountLD > amount)
                revert Errors.MinAmountNotMet();

            uint256 id = $.withdrawalQueue.length;

            WithdrawalQueueEntry memory entry;
            entry.initiator = msg.sender;
            entry.sendParam = _sendParam;
            entry.fee = _fee;
            entry.refundAddress = _refundAddress;
            entry.txFee = msg.value - _fee.nativeFee;
            entry.sendParam.amountLD = amount;

            $.withdrawalQueue.push(entry);

            emit WithdrawalRequest(id, msg.sender, block.timestamp);
        } else {
            return _send(_sendParam, _fee, _refundAddress);
        }
    }

    /**
     * @notice Cancels a withdrawal request and refunds the original caller.
     * @param _id Position of the withdrawal entry in the queue.
     */
    function cancelWithdrawal(
        uint256 _id
    ) external nonReentrant whenFactoryNotPaused {
        WithdrawalQueueEntry storage entry = _getVaultTokenStorage()
            .withdrawalQueue[_id];
        address initiator = entry.initiator;

        if (msg.sender != initiator) revert Errors.NotInitiatorRequest();
        if (entry.canceled) revert Errors.AlreadyCanceled();
        if (entry.fulfilled) revert Errors.AlreadyFulfilled();

        entry.canceled = true;
        _transfer(address(this), initiator, entry.sendParam.amountLD);
        (bool success, ) = payable(entry.initiator).call{
            value: entry.fee.nativeFee + entry.txFee
        }("");
        if (!success) revert Errors.RefundFailed();

        emit WithdrawalCanceled(_id, initiator, block.timestamp);
    }

    /**
     * @notice Processes multiple queued withdrawals by forwarding funds through the vault composer.
     * @dev Restricted to addresses with `WITHDRAWAL_MANAGER`. More gas-efficient than processing
     *      withdrawals individually. The sum of all `_extraFees` must equal `msg.value`.
     *      Each withdrawal's receipts are stored in its queue entry.
     * @param _ids Array of withdrawal entry indices to process.
     * @param _extraFees Array of additional native fees for each withdrawal (must match _ids length).
     */
    function processWithdrawals(
        uint256[] calldata _ids,
        uint256[] calldata _extraFees
    )
        external
        payable
        onlyRole(WITHDRAWAL_MANAGER)
        whenFactoryNotPaused
        returns (
            MessagingReceipt[] memory msgReceipts,
            OFTReceipt[] memory oftReceipts
        )
    {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.EmptyArray();
        if (length != _extraFees.length) revert Errors.LengthMismatch();

        // Initialize return arrays
        msgReceipts = new MessagingReceipt[](length);
        oftReceipts = new OFTReceipt[](length);

        uint256 totalExtraFees;
        uint256 totalTxFees;

        for (uint256 i = 0; i < length; i++) {
            totalExtraFees += _extraFees[i];
        }

        if (msg.value != totalExtraFees)
            revert Errors.ExtraFeesNotMatchingMsgValue();

        VaultTokenStorage storage $ = _getVaultTokenStorage();

        uint256 txFee;
        for (uint256 i = 0; i < length; i++) {
            uint256 id = _ids[i];

            (txFee, msgReceipts[i], oftReceipts[i]) = _processWithdrawal(
                id,
                $.withdrawalQueue[id],
                _extraFees[i]
            );
            totalTxFees += txFee;
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

    /**
     * @notice Executes a queued withdrawal by forwarding funds and composing from the initiator.
     * @dev Reverts if the withdrawal was canceled or already fulfilled. Wraps `send` so the
     *      VaultComposer observes the original initiator as the `composeFrom`.
     * @param _id Index of the withdrawal in the queue.
     * @param _entry Storage pointer to the withdrawal queue entry.
     * @param _extraFee Additional native fee supplied by the caller of `processWithdrawals`.
     * @return txFee transaction fee that should be refunded to the withdrawal manager.
     * @return msgReceipt Messaging receipt returned by the LayerZero send.
     * @return oftReceipt OFT receipt returned by the LayerZero send.
     */
    function _processWithdrawal(
        uint256 _id,
        WithdrawalQueueEntry storage _entry,
        uint256 _extraFee
    )
        internal
        composeFromOverride(_entry.initiator)
        returns (
            uint256 txFee,
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        if (_entry.fulfilled) revert Errors.AlreadyFulfilled();
        if (!_entry.canceled) {
            MessagingFee memory fee = MessagingFee({
                nativeFee: _entry.fee.nativeFee + _extraFee,
                lzTokenFee: 0
            });

            _entry.fulfilled = true;

            (msgReceipt, oftReceipt) = this.send{ value: fee.nativeFee }(
                _entry.sendParam,
                fee,
                _entry.refundAddress
            );

            _entry.msgReceipt = msgReceipt;
            _entry.oftReceipt = oftReceipt;
            txFee = _entry.txFee;

            emit WithdrawalProcessed(_id, _entry.initiator, block.timestamp);
        }
    }

    /**
     * @notice Temporarily overrides the composeFrom with the queued withdrawal initiator.
     * @dev Sets `composeFromOverride` before executing the wrapped logic and clears it afterward so
     *      LayerZero compose payloads reflect the original caller rather than the contract itself.
     *      `$.composeFromOverride` is later handled by `OFTCoreUpgradeable` to replace the composeFrom.
     *      This is a necessary step so that the VaultComposer can refund the asset to the initiator and
     *      not to this contract.
     * @param _initiator Address withdrawing funds.
     */
    modifier composeFromOverride(address _initiator) {
        OFTCoreStorage storage $ = _getOFTCoreStorage();
        // Save the current composeFromOverride value to prevent potential nested calls.
        // This situation should never occur since this function is intended to be used
        // only during withdrawals from the VaultToken. This is a safeguard against
        // possible misuse in future updates.
        address oldComposeFromOverride = $.composeFromOverride;
        $.composeFromOverride = _initiator;
        _;
        $.composeFromOverride = oldComposeFromOverride;
    }

    function _validateFees(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee
    ) internal view {
        if (_fee.lzTokenFee != 0) revert Errors.OnlyNative();
        MessagingFee memory minFee = this.quoteSend(_sendParam, false);

        if (_fee.nativeFee < minFee.nativeFee) {
            revert Errors.NotEnoughFee();
        }

        if (msg.value < _fee.nativeFee) revert Errors.NotEnoughNative();

        // Decode the compose (second hop) payload: (SendParam, uint256)
        (SendParam memory secondHop, uint256 secondHopNativeFee) = abi.decode(
            _sendParam.composeMsg,
            (SendParam, uint256)
        );

        uint256 minSecondHopNativeFee;

        if (secondHop.dstEid == _sendParam.dstEid) {
            if (secondHopNativeFee != 0) revert Errors.SecondHopFeeNonZero();
        } else {
            minSecondHopNativeFee = _getWithdrawalMinFee(
                _sendParam.dstEid,
                secondHop.dstEid
            );
            if (secondHopNativeFee < minSecondHopNativeFee) {
                revert Errors.NotEnoughSecondHopFee();
            }
        }
    }

    function getWithdrawalQueueLength() external view returns (uint256) {
        return _getVaultTokenStorage().withdrawalQueue.length;
    }

    function getWithdrawalQueueEntry(
        uint256 _index
    ) external view returns (WithdrawalQueueEntry memory) {
        return _getVaultTokenStorage().withdrawalQueue[_index];
    }
}
