// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVotingRewardsFactory {
    event GovernanceRegistryChange(address indexed oldGovernanceRegistry, address indexed newGovernanceRegistry);
    error GovernanceRegistryAlreadySet();
    error InvalidGovernanceRegistry();

    /// @notice creates a BribeVotingReward and a FeesVotingReward contract for a gauge
    /// @param _rewards             Addresses of pool tokens to be used as valid rewards tokens
    /// @return feesVotingReward    Address of FeesVotingReward contract created
    /// @return bribeVotingReward   Address of BribeVotingReward contract created
    function createRewards(
        address[] memory _rewards
    ) external returns (address feesVotingReward, address bribeVotingReward);

    /// @notice Get the governance registry.
    /// @return The governance registry address
    function governanceRegistry() external view returns (address);

    /// @notice Set the governance registry.
    /// @param _governanceRegistry The governance registry address
    function setGovernanceRegistry(address _governanceRegistry) external;
}
