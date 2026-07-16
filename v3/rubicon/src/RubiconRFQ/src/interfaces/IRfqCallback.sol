// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.19;

interface IRfqCallback {
    /// @param payload - constructed in 'RubiconRFQ' as:
    ///        type-safe abi.encodeCall(execute*, data...)
    function rfqCallback(
        bytes calldata payload
    ) external payable;
}
