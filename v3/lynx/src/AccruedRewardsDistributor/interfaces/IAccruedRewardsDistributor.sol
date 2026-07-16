// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

interface IAccruedRewardsDistributor {
    event AddRewards(
        address indexed from,
        uint8 group,
        uint256 amount,
        address[] users,
        uint256[] amounts
    );

    event WithdrawRewards(address indexed from, uint8 group, uint256 amount);

    event ClaimRewards(address indexed from, uint8 group, uint256 amount);

    function rewards(uint8 group) external view returns (uint256);

    function rewardsPerUser(uint8 group, address user)
        external
        view
        returns (uint256);

    /// @notice Set asset for specific group that users can claim
    /// @param group Set asset for the specified group.
    /// @param asset Asset address.
    function addAsset(uint8 group, address asset) external;

    /// @notice Prepare rewards for users to claim
    /// @param group Add rewards for the specified group.
    /// @param users An array of user addresses to receive rewards.
    /// @param amounts An array of reward amounts corresponding to each user.
    function addRewards(
        uint8 group,
        address[] calldata users,
        uint256[] calldata amounts
    ) external;

    /// @notice Withdraw unclaimed rewards
    /// @param group Withdraw unclaimed rewards for the specified group.
    /// @param users An array of user addresses to remove remaining rewards.
    function withdrawRewards(uint8 group, address[] calldata users) external;

    /// @notice Claim rewards
    /// @param group Claim rewards for the specified group.
    function claimRewards(uint8 group) external;
}
