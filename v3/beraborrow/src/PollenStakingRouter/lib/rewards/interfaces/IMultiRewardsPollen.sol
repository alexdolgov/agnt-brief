// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IMultiRewards} from "./IMultiRewards.sol";

interface IMultiRewardsPollen is IMultiRewards {
    /**
     * @notice Withdraws staked tokens from the contract for a specific user
     * @param amount The amount of tokens to withdraw
     * @param user The user to withdraw tokens for
     * @dev Transfers `amount` of staking tokens back to the user
     */
    function withdraw(uint256 amount, address user) external;
} 