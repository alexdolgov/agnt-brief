// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IWrapper {
    function stakedToken() external view returns (address);

    function rewardToken() external view returns (address);

    /*
    struct UserInfo {
        uint256 amount; // How many staked tokens the user has provided
        uint256 rewardDebt;
        uint256 boostMultiplier; // currently active multiplier
        uint256 boostedAmount; // combined boosted amount
        uint256 unsettledRewards; // rewards haven't been transferred to users but already accounted in rewardDebt
    }
    */

    function userInfo(address user)
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        );

    /// @notice Update user boost factor from boost contract.
    /// @param _userAddress The user address for boost factor updates.
    /// @param _newMultiplier The multiplier update to user.
    function updateBoostMultiplier(address _userAddress, uint256 _newMultiplier) external;
}
