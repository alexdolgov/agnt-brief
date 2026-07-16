// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IRouterClient} from "@chainlink/contracts-ccip/contracts/interfaces/IRouterClient.sol";
import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ICCIPSender} from "../interfaces/ICCIPSender.sol";
import {CCIPBase} from "./CCIPBase.sol";

/**
 * @title CCIPSender Contract
 * @dev The base contract for all CCIP sender contracts.
 * It provides the ability to send messages to the CCIP router using the `ccipSend` function.
 * Each message can contain zero, one, or multiple (token, amount) pairs.
 */
abstract contract CCIPSender is CCIPBase, ICCIPSender {
    using SafeERC20 for IERC20;

    address public immutable override LINK_TOKEN;

    /**
     * @dev Sets the immutable value for {LINK_TOKEN}.
     */
    constructor(address linkToken) {
        if (linkToken == address(0)) revert CCIPSenderInvalidParameters();

        LINK_TOKEN = linkToken;
    }

    /**
     * @dev Sends a message to the CCIP router.
     * The message can contain zero, one, or multiple (token, amount) pairs.
     * This function will calculate the exact fee required for the message and forward it to the router.
     * The fee can be paid in LINK or native token.
     * The function will return the message ID and the actual fee paid.
     *
     * Requirements:
     *
     * - `receiver` must be a non-empty array.
     * - `maxFee` must be greater than or equal to the fee for the message.
     * - if `payInLink` is `true`, `msg.sender` must have approved the contract to transfer `maxFee` of LINK. Else,
     *   `msg.value` must be greater than or equal to the fee for the message.
     * - payer must have approved the contract to transfer the fee in LINK if `payInLink` is `true`, unless `payer` is
     *   the contract itself, in which case the contract must have enough LINK.
     */
    function _ccipSendTo(
        uint64 destChainSelector,
        address payer,
        bytes memory receiver,
        Client.EVMTokenAmount[] memory tokenAmounts,
        bool payInLink,
        uint256 maxFee,
        bytes memory extraArgs,
        bytes memory data
    ) internal virtual returns (bytes32 messageId, uint256 fee) {
        if (receiver.length == 0) revert CCIPSenderEmptyReceiver();

        uint256 length = tokenAmounts.length;
        for (uint256 i = 0; i < length; ++i) {
            address token = tokenAmounts[i].token;
            uint256 amount = tokenAmounts[i].amount;

            if (amount == 0 || token == address(0)) revert CCIPSenderInvalidTokenAmount();

            IERC20(token).safeIncreaseAllowance(CCIP_ROUTER, amount);
        }

        Client.EVM2AnyMessage memory message = Client.EVM2AnyMessage({
            receiver: receiver,
            data: data,
            tokenAmounts: tokenAmounts,
            feeToken: payInLink ? LINK_TOKEN : address(0),
            extraArgs: extraArgs
        });

        fee = IRouterClient(CCIP_ROUTER).getFee(destChainSelector, message);
        if (fee > maxFee) revert CCIPSenderExceedsMaxFee(fee, maxFee);

        uint256 nativeFee;
        if (payInLink) {
            nativeFee = 0;

            if (payer != address(this)) IERC20(LINK_TOKEN).safeTransferFrom(payer, address(this), fee);
            IERC20(LINK_TOKEN).safeIncreaseAllowance(CCIP_ROUTER, fee);
        } else {
            nativeFee = fee;
        }

        messageId = IRouterClient(CCIP_ROUTER).ccipSend{value: nativeFee}(destChainSelector, message);
    }
}
