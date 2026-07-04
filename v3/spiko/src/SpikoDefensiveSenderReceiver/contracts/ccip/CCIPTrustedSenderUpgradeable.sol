// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ICCIPTrustedSenderUpgradeable} from "../interfaces/ICCIPTrustedSenderUpgradeable.sol";
import {CCIPSender} from "./CCIPSender.sol";

/**
 * @title CCIPTrustedSenderUpgradeable Contract
 * @dev The base contract for all CCIP sender contracts.
 * It provides the ability to send messages to the CCIP router using the `ccipSend` function.
 * Each message can contain zero, one, or multiple (token, amount) pairs.
 * Each chain can have zero or one receiver.
 *
 * The contract uses the EIP-7201 to prevent storage collisions.
 */
abstract contract CCIPTrustedSenderUpgradeable is
    CCIPSender,
    AccessControlUpgradeable,
    ICCIPTrustedSenderUpgradeable
{
    using SafeERC20 for IERC20;

    /* @custom:storage-location erc7201:ccip-csr.storage.CCIPTrustedSender */
    struct CCIPTrustedSenderStorage {
        mapping(uint64 destChainSelector => bytes receiver) receivers;
    }

    // keccak256(abi.encode(uint256(keccak256("ccip-csr.storage.CCIPTrustedSender")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant CCIPTrustedSenderStorageLocation =
        0x0c7e84f56285f1b5532fe17ac0ab4310ac3914a71fe91e1c6ec35a7f3d15de00;

    function _getCCIPTrustedSenderStorage() private pure returns (CCIPTrustedSenderStorage storage $) {
        assembly ("memory-safe") {
            $.slot := CCIPTrustedSenderStorageLocation
        }
    }

    function __CCIPTrustedSender_init() internal onlyInitializing {}

    function __CCIPTrustedSender_init_unchained() internal onlyInitializing {}

    /**
     * @dev Returns the receiver for the destination chain selector.
     */
    function getReceiver(uint64 destChainSelector) public view virtual override returns (bytes memory) {
        return _getCCIPTrustedSenderStorage().receivers[destChainSelector];
    }

    /**
     * @dev Sets the receiver for the destination chain selector.
     * If the destination chain is an EVM chain, the receiver should be encoded using `abi.encode(address)`.
     *
     * Requirements:
     *
     * - `msg.sender` must have the `DEFAULT_ADMIN_ROLE`.
     *
     * Emits a {ReceiverSet} event.
     */
    function setReceiver(uint64 destChainSelector, bytes memory receiver)
        public
        virtual
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setReceiver(destChainSelector, receiver);
    }

    /**
     * @dev Sets the receiver for the destination chain selector.
     * If the destination chain is an EVM chain, the receiver should be encoded using `abi.encode(address)`.
     *
     * Emits a {ReceiverSet} event.
     */
    function _setReceiver(uint64 destChainSelector, bytes memory receiver) internal virtual {
        CCIPTrustedSenderStorage storage $ = _getCCIPTrustedSenderStorage();

        $.receivers[destChainSelector] = receiver;

        emit ReceiverSet(destChainSelector, receiver);
    }

    /**
     * @dev Sends a message to the CCIP router.
     * This function will calculate the exact fee required for the message and send it to the router.
     * The fee can be paid in LINK or native token.
     * It is not necessary to approve the ccip router before calling this function.
     * The function will return the message ID and the actual fee paid.
     *
     * Requirements:
     *
     * - `tokenAmounts` must contain at least one element.
     * - `tokenAmounts` must not contain any elements with zero amount or zero token address.
     * - `destChainSelector` must be a supported chain.
     * - `maxFee` must be greater than or equal to the fee for the message.
     * - if `payInLink` is `true`, `msg.sender` must have approved the contract to transfer `maxFee` of LINK. Else,
     *   `msg.value` must be greater than or equal to the fee for the message.
     */
    function _ccipSend(
        uint64 destChainSelector,
        Client.EVMTokenAmount[] memory tokenAmounts,
        bool payInLink,
        uint256 maxFee,
        bytes memory extraArgs,
        bytes memory data
    ) internal virtual returns (bytes32, uint256) {
        bytes memory receiver = getReceiver(destChainSelector);
        if (receiver.length == 0) revert CCIPTrustedSenderUnsupportedChain(destChainSelector);

        return _ccipSendTo(destChainSelector, msg.sender, receiver, tokenAmounts, payInLink, maxFee, extraArgs, data);
    }
}
