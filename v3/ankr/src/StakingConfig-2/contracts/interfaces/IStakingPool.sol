// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IStakingPool {

    event StakePending(address indexed staker, address provider, uint128 amount, uint128 totalStaked, uint256 shares);

    event StakedPool(address indexed provider, uint128 totalPending, uint128 totalStaked, uint128 toStake);

    event StakePushed(address indexed provider, bytes pubkey, bytes withdrawalCredentials, uint128 totalStaked, uint128 totalPending);

    function getStaker(address provider, address staker) external view returns (uint128, uint128);

    function getValidationReward(address provider, address staker) external view returns (uint256);

    function getTotalValidationReward(address staker) external view returns (uint256);

    function getProviderBalance(address provider) external view returns (uint128, uint128);

    function getProvidersBalance(address[] calldata providers) external view returns (uint128[] memory, uint128[] memory);

    function getStakesTo(address[] calldata providers) external view returns (uint128[] memory);

    function getAvailable(address provider) external view returns (uint128);

    // @dev method for gnosis staking, stake token should be mGNO
    function stakeGNO(address provider, uint128 amount) external;

    // @dev method for native ETH staking
    function stake(address provider) external payable;

    function depositToBeacon(address provider, bytes calldata pubkey, bytes calldata withdrawal_credentials, bytes calldata signature, bytes32 deposit_data_root) external;
}
