// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IAnglesVault {
    function deposit() external payable;

    function withdrawalQueueMetadata()
        external
        view
        returns (
            uint128 queued,
            uint128 claimable,
            uint128 claimed,
            uint128 nextWithdrawalIndex
        );
}
