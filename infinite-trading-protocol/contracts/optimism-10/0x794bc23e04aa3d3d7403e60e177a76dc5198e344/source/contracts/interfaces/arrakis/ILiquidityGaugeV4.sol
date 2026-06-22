// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.6;

interface ILiquidityGaugeV4 {
  // solhint-disable-next-line func-name-mixedcase
  function reward_count() external view returns (uint256);

  // solhint-disable-next-line func-name-mixedcase
  function reward_tokens(uint256 index) external view returns (address);

  // solhint-disable-next-line func-name-mixedcase
  function reward_data(address token)
    external
    view
    returns (
      address,
      address,
      uint256,
      uint256,
      uint256,
      uint256
    );

  // solhint-disable-next-line func-name-mixedcase
  function claimable_reward(address user, address rewardToken) external view returns (uint256);

  // solhint-disable-next-line func-name-mixedcase
  function staking_token() external view returns (address);

  // solhint-disable-next-line func-name-mixedcase
  function claim_rewards() external;

  // solhint-disable-next-line func-name-mixedcase
  function claim_rewards(address user) external;

  // solhint-disable-next-line func-name-mixedcase
  function claim_rewards(address user, address receiver) external;
}
