// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ICCIPSender} from "./ICCIPSender.sol";

interface ICCIPTrustedSenderUpgradeable is ICCIPSender {
    error CCIPTrustedSenderUnsupportedChain(uint64 destChainSelector);
    error CCIPTrustedSenderZeroTokenAmounts();
    error CCIPTrustedSenderZeroAmounts();
    error CCIPTrustedSenderZeroAddress();

    event ReceiverSet(uint64 indexed destChainSelector, bytes receiver);

    function getReceiver(uint64 destChainSelector) external view returns (bytes memory);
    function setReceiver(uint64 destChainSelector, bytes memory receiver) external;
}
