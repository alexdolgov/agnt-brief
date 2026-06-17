// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;
pragma abicoder v2;

interface IMultiFeeDistribution {
    /**
     * @notice Stake tokens to receive rewards
     * @param amount to stake
     * @param onBehalfOf address for staking
     */
    function stake(uint256 amount, address onBehalfOf) external;
}