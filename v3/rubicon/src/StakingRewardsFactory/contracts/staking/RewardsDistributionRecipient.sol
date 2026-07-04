// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.5.16;

// Inheritance
import "./openzeppelin/Ownable.sol";

// https://docs.synthetix.io/contracts/source/contracts/rewardsdistributionrecipient
/// @dev Owned -> Ownable (1 step ownership transfer)
contract RewardsDistributionRecipient is Ownable {
    function notifyRewardAmount(uint256 reward) external;
}
