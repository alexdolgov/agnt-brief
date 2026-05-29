// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface DepositBox {
    function deposit(
        address l1Recipient,
        address l2Token,
        uint256 amount,
        uint64 slowRelayFeePct,
        uint64 instantRelayFeePct,
        uint64 quoteTimestamp
    ) external payable;
}
