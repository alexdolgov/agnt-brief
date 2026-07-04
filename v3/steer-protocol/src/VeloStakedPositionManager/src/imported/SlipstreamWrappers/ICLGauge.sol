// SPDX-License-Identifier: MIT
pragma solidity >=0.8.27;


interface ICLGauge {
    event NotifyReward(address indexed from, uint256 amount);
    event Deposit(address indexed user, uint256 indexed tokenId, uint128 indexed liquidityToStake);
    event Withdraw(address indexed user, uint256 indexed tokenId, uint128 indexed liquidityToStake);
    event ClaimFees(address indexed from, uint256 claimed0, uint256 claimed1);
    event ClaimRewards(address indexed from, uint256 amount);

    /// @notice Address of the FeesVotingReward contract linked to the gauge
    function feesVotingReward() external view returns (address);

    /// @notice Timestamp end of current rewards period
    function periodFinish() external view returns (uint256);

    /// @notice Current reward rate of rewardToken to distribute per second
    function rewardRate() external view returns (uint256);

    /// @notice Claimable rewards by tokenId
    function rewards(uint256 tokenId) external view returns (uint256);

    /// @notice Most recent timestamp tokenId called updateRewards
    function lastUpdateTime(uint256 tokenId) external view returns (uint256);

    /// @notice View to see the rewardRate given the timestamp of the start of the epoch
    function rewardRateByEpoch(uint256) external view returns (uint256);

    /// @notice Cached amount of fees generated from the Pool linked to the Gauge of token0
    function fees0() external view returns (uint256);

    /// @notice Cached amount of fees generated from the Pool linked to the Gauge of token1
    function fees1() external view returns (uint256);

    /// @notice Cached address of WETH9
    function WETH9() external view returns (address);

    /// @notice Cached address of token0, corresponding to token0 of the pool
    function token0() external view returns (address);

    /// @notice Cached address of token1, corresponding to token1 of the pool
    function token1() external view returns (address);

    /// @notice Cached tick spacing of the pool.
    function tickSpacing() external view returns (int24);

    /// @notice Address of the emissions token
    function rewardToken() external view returns (address);

    /// @notice Returns the claimable rewards for a given account and tokenId
    /// @dev Throws if account is not the position owner
    /// @dev pool.updateRewardsGrowthGlobal() needs to be called first, to return the correct claimable rewards
    /// @param account The address of the user
    /// @param tokenId The tokenId of the position
    /// @return The amount of claimable reward
    function earned(address account, uint256 tokenId) external view returns (uint256);

    /// @notice Retrieve rewards for all tokens owned by an account
    /// @dev Throws if not called by the voter
    /// @param account The account of the user
    function getReward(address account) external;

    /// @notice Retrieve rewards for a tokenId
    /// @dev Throws if not called by the position owner
    /// @param tokenId The tokenId of the position
    function getReward(uint256 tokenId) external;

    /// @notice Notifies gauge of gauge rewards.
    /// @param amount Amount of gauge rewards (emissions) to notify. Must be greater than 604_800.
    function notifyRewardAmount(uint256 amount) external;

    /// @dev Notifies gauge of gauge rewards without distributing its fees.
    ///      Assumes gauge reward tokens is 18 decimals.
    ///      If not 18 decimals, rewardRate may have rounding issues.
    /// @param amount Amount of gauge rewards (emissions) to notify. Must be greater than 604_800.
    function notifyRewardWithoutClaim(uint256 amount) external;

    /// @notice Used to deposit a CL position into the gauge
    /// @notice Allows the user to receive emissions instead of fees
    /// @param tokenId The tokenId of the position
    function deposit(uint256 tokenId) external;

    /// @notice Used to withdraw a CL position from the gauge
    /// @notice Allows the user to receive fees instead of emissions
    /// @notice Outstanding emissions will be collected on withdrawal
    /// @param tokenId The tokenId of the position
    function withdraw(uint256 tokenId) external;

}
