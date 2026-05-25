// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IStakingPool {
    event PoolInitialized(address _lockingPool, address _l1Token, address _stakingPoolManager, address _rewardRecipient);
    event SequencerBound(address _signer, uint256 _amount, bytes _signerPubKey, uint256 _sequencerId);
    event StakingAmountIncreased(uint256 _amount);
    event RewardsClaimed(uint256 _amount);

    function bindSequencer(address _signer, uint256 _amount, bytes calldata _signerPubKey) external;

    function increaseStakingAmount(uint256 _amount) external;

    function claimRewards(uint32 _l2GasLimit) external payable;

    function stakingAmount() external view returns (uint256);

    function canStake(uint256 _amount) external view returns (bool);

    function rewardRecipient() external view returns (address);

    function getRewards() external view returns (uint256);
}