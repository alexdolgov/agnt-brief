// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Interface of reward pool used for extra rewards in the Aura Protocol.
interface IVirtualBalanceRewardPool {
    /// @dev returns the address of the stash token associated with this virtual balance reward pool.
    function rewardToken() external view returns (address);
    function getReward() external;
}
