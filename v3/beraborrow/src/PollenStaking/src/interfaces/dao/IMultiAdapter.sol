/// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface IMultiAdapter {
    /// @notice Event emitted when tokens are deposited into the adapter.
    event Deposit(address indexed token, uint256 amount);
    /// @notice Event emitted when tokens are withdrawn from the adapter.
    event Withdraw(address indexed token, uint256 amount);
    /// @notice Event emitted when rewards are claimed.
    event RewardClaimed(address indexed token, uint256 amount);

    /// @notice Error emitted on an address(0) input.
    error ZeroAddress();
    /// @notice Error emitted when the caller is not the owner.
    error OnlyOwner(address caller);
    /// @notice Error emitted when the caller is not the PollenStaking contract.
    error OnlyStaking(address caller);
    /// @notice Error emitted when the caller is not the RewardDistributor contract.
    error OnlyRewardDistributor(address caller);

    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function claimRewards() external;
    function setStakingAddress(address newStakingAddress) external;
    function balanceOf(address account) external view returns (uint256);
    function getOwner() external view returns (address);
    function getStakingAddress() external view returns (address);
    function getStakingToken() external view returns (address);
    function getRewardDistributor() external view returns (address);
}