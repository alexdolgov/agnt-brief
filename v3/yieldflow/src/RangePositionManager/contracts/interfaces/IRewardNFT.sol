// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// interface for the RewardNFT
interface IRewardNFT {
    function setNFTsInUse(address _user, uint256 _requiredAmount) external;
    function setNFTsUnused(address _user) external;
}
