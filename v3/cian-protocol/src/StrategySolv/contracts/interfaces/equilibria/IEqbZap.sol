// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IEqbZap {
    function claimRewards(uint256[] calldata _pids) external;
}
