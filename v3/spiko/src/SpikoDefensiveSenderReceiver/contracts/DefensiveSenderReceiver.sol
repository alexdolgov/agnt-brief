// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {CCIPBase} from "./ccip/CCIPBase.sol";
import {AccessControlUpgradeable, CCIPDefensiveReceiverUpgradeable} from "./ccip/CCIPDefensiveReceiverUpgradeable.sol";
import {CCIPSender, CCIPTrustedSenderUpgradeable, Client} from "./ccip/CCIPTrustedSenderUpgradeable.sol";
import {ICCIPCallback} from "./interfaces/ICCIPCallback.sol";
import {IDefensiveSenderReceiver} from "./interfaces/IDefensiveSenderReceiver.sol";
import {TokenHelper} from "./libraries/TokenHelper.sol";
import {Utils} from "./libraries/Utils.sol";

/**
 * @title DefensiveSenderReceiver Contract
 * @dev A contract that implements the CCIPTrustedSender and CCIPDefensiveReceiver base contracts.
 * The TrustedSender makes sure that the tokens are sent to a trusted address, and the DefensiveReceiver
 * makes sure that the tokens are received from a trusted address. If the message fails on the destination chain,
 * the contract will store the failed message and allow anyone to retry it.
 * If for any reason, the message can't be retried, the contract allows the sender, the receiver or the admin to
 * return them to the original sender. If this also fails, the admin can recover the tokens from the failed messages and
 * manually send them back to the original sender.
 *
 * The contract uses the EIP-7201 to prevent storage collisions.
 */
abstract contract DefensiveSenderReceiver is
    CCIPDefensiveReceiverUpgradeable,
    CCIPTrustedSenderUpgradeable,
    IDefensiveSenderReceiver
{
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant override ALLOWED_TOKEN_ROLE = keccak256("ALLOWED_TOKEN_ROLE");

    /**
     * @dev Sets the immutable value for {LINK_TOKEN} and {CCIP_ROUTER} and the initial value for {allowedTokens} and {admin}.
     */
    constructor(address linkToken, address ccipRouter) CCIPSender(linkToken) CCIPBase(ccipRouter) {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract with the given parameters.
     * The contract is initialized with the given allowed tokens and admin.
     *
     * Requirements:
     *
     * - The contract must not have been initialized before.
     */
    function initialize(address[] memory allowedTokens, address admin) public override initializer {
        __CCIPTrustedSender_init();
        __CCIPDefensiveReceiver_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);

        for (uint256 i; i < allowedTokens.length; i++) {
            _grantRole(ALLOWED_TOKEN_ROLE, allowedTokens[i]);
        }
    }

    /**
     * @dev Returns the minimum gas required to call the `ccipReceive` function.
     * This value is used to ensure that the contract has enough gas to store the failed message hash
     * in case the message processing fails.
     * Adds 128 bytes to the data length to account for the sender, receiver, pointer, and length fields that are added
     * by this contract when encoding the data for cross-chain transfers.
     *
     * Requirements:
     *
     * - `tokenCount` must not be greater than {MAX_NUMBER_OF_TOKENS}.
     * - `dataLength` must not be greater than {MAX_DATA_LENGTH}.
     */
    function getMinCCIPReceiveGas(uint256 tokenCount, uint256 dataLength)
        public
        view
        override
        returns (uint256 minGas)
    {
        // 128 bytes are added by the SenderReceiver [sender][receiver][ptr][length] + [data]
        return super.getMinCCIPReceiveGas(tokenCount, dataLength + 128);
    }

    /**
     * @dev Returns whether the contract supports the given interface.
     * The contract supports the CCIPDefensiveReceiver and AccessControl interfaces.
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(AccessControlUpgradeable, CCIPDefensiveReceiverUpgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    /**
     * @dev Sends tokens to the destination chain.
     * The function checks if the token is allowed and if the sender has permission to send the token.
     * The function also checks if the gas limit is sufficient to process the message.
     * This function will refund any excess native tokens to the sender.
     *
     * Requirements:
     *
     * - `destinationChainSelector` must have a trusted sender.
     * - `message.tokenAmounts` must not be empty.
     * - `message.tokenAmounts[i].amount` must not be zero.
     * - `message.tokenAmounts[i].token` must be allowed.
     *
     * Emits a {TokensSent} event.
     */
    function ccipSend(uint64 destinationChainSelector, Client.EVM2AnyMessage calldata message)
        external
        payable
        override
        returns (bytes32 messageId)
    {
        if (message.tokenAmounts.length == 0) revert InvalidTokenAmounts();

        address receiver = Utils.bytesToAddress(message.receiver);

        uint256 length = message.tokenAmounts.length;
        for (uint256 i; i < length; i++) {
            address token = message.tokenAmounts[i].token;
            uint256 amount = message.tokenAmounts[i].amount;

            if (amount == 0) revert ZeroTokenAmount();
            if (!hasRole(ALLOWED_TOKEN_ROLE, token)) revert InvalidToken(token);

            _checkPermission(destinationChainSelector, token, msg.sender, receiver, amount, true);

            IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        }

        uint256 gasLimit = Utils.parseGasLimit(message.extraArgs);
        _checkGasLimit(gasLimit, message.tokenAmounts.length, message.data.length);

        (messageId,) = _ccipSend(
            destinationChainSelector,
            message.tokenAmounts,
            message.feeToken == LINK_TOKEN,
            type(uint256).max,
            message.extraArgs,
            Utils.encodeData(msg.sender, receiver, message.data)
        );

        emit TokensSent(destinationChainSelector, msg.sender, receiver, message.tokenAmounts, message.data, messageId);

        TokenHelper.refundExcessNative(msg.sender);
    }

    /**
     * @dev Returns tokens to the original sender.
     * The function checks if the sender is allowed to return the tokens and if the gas limit is sufficient to process the message.
     * This function will refund any excess native tokens to the sender.
     *
     * Requirements:
     *
     * - `message.sourceChainSelector` must have a trusted sender.
     * - The message must be marked as failed and not already returned.
     * - `message.destTokenAmounts` must not be empty.
     * - `message.destTokenAmounts[i].amount` must not be zero.
     * - `message.destTokenAmounts[i].token` must be allowed.
     *
     * Emits a {TokensReturned} event.
     */
    function returnTokens(
        Client.Any2EVMMessage calldata message,
        bool payInLink,
        uint256 maxFee,
        bytes calldata extraArgs
    ) external payable override returns (bytes32 messageId) {
        (address sender, address receiver,) = Utils.decodeData(message.data);

        if (sender == address(0)) revert ReturnCycleNotAllowed();
        if (msg.sender != sender && msg.sender != receiver && !hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert UnauthorizedSender(msg.sender);
        }

        uint256 gasLimit = Utils.parseGasLimit(extraArgs);
        _checkGasLimit(gasLimit, message.destTokenAmounts.length, 0);
        _verifyAndMarkFailedMessage(message);

        (messageId,) = _ccipSend(
            message.sourceChainSelector,
            message.destTokenAmounts,
            payInLink,
            maxFee,
            extraArgs,
            // Set the receiver as the original sender
            // Set the sender as address(0) in order to differentiate between returning tokens and sending tokens
            Utils.encodeData(address(0), sender, new bytes(0))
        );

        bytes32 initialMessageId = message.messageId; // Prevent StackTooDeep error

        emit TokensReturned(
            message.sourceChainSelector,
            sender,
            receiver,
            msg.sender,
            message.destTokenAmounts,
            new bytes(0),
            initialMessageId,
            messageId
        );

        TokenHelper.refundExcessNative(msg.sender);
    }

    /**
     * @dev Checks if the gas limit is sufficient to process the message.
     *
     * Requirements:
     *
     * - The gas limit must be greater than or equal to the minimum gas required to process the message.
     */
    function _checkGasLimit(uint256 gasLimit, uint256 tokenCount, uint256 dataLength) internal view {
        uint256 minGas = getMinCCIPReceiveGas(tokenCount, dataLength);
        if (gasLimit < minGas) revert InsufficientGasLimit(gasLimit, minGas);
    }

    /**
     * @dev Processes the message received from the CCIP router.
     * The function checks if the sender is allowed to send the tokens and if the gas limit is sufficient to process the message.
     *
     * Requirements:
     *
     * - `message.sourceChainSelector` must have a trusted receiver.
     * - `message.destTokenAmounts` must not be empty.
     * - `message.destTokenAmounts[i].token` must be allowed.
     *
     * Emits a {TokensReceived} event.
     */
    function _processMessage(Client.Any2EVMMessage calldata message) internal override {
        (address sender, address receiver, bytes calldata extraData) = Utils.decodeData(message.data);

        emit TokensReceived(
            message.sourceChainSelector, sender, receiver, message.destTokenAmounts, extraData, message.messageId
        );

        uint256 length = message.destTokenAmounts.length;
        for (uint256 i; i < length; i++) {
            address token = message.destTokenAmounts[i].token;
            uint256 amount = message.destTokenAmounts[i].amount;

            // If the sender is address(0), it means that the tokens are being returned to the original sender
            // and we don't need to check the permission for the sender.
            if (sender != address(0)) {
                _checkPermission(message.sourceChainSelector, token, sender, receiver, amount, false);
            }

            if (!hasRole(ALLOWED_TOKEN_ROLE, token)) revert InvalidToken(token);

            IERC20(token).safeTransfer(receiver, amount);
        }

        if (extraData.length > 0) ICCIPCallback(receiver).onCCIPReceive(message);
    }

    /**
     * @dev Checks if the the cross-chain transfer is allowed.
     * Must be overridden by the derived contract to implement the permission checking logic.
     */
    function _checkPermission(
        uint64 chainSelector,
        address token,
        address sender,
        address receiver,
        uint256 amount,
        bool isSource
    ) internal virtual;
}
