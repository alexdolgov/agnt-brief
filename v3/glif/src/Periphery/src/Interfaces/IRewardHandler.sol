// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IRewardHandler
 * @dev Interface for managing reward distributions
 */
interface IRewardHandler {
    /// @notice Emitted when rewards are pulled from the msg.sender to hold in this contract
    /// @param amount The amount of rewards pulled
    event RewardsPulled(uint256 amount);

    /// @notice Emitted when emergency withdrawals are made
    /// @param amount The amount of assets withdrawn
    event EmergencyWithdrawal(uint256 amount);

    function initialize(address _initialOwner, IERC20 _asset) external;

    function pullRewards(uint256 amount) external;

    function asset() external view returns (IERC20);

    function setAsset(IERC20 newAsset) external;

    function totalAssets() external view returns (uint256);

    function emergencyWithdraw() external;
}
