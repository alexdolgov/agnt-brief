// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

// slice of interface to interact with Dot Dot Depositor contract
interface IDotDotDepositor {
  // allows to deposit (stake) an LP token via the depositor
  function deposit(
    address user,
    address token,
    uint256 amount
  ) external;

  // allows to withdraw (unstake) an LP token via the depositor
  function withdraw(
    address user,
    address token,
    uint256 amount
  ) external;

  // claim rewards from LP staking
  function claim(
    address receiver,
    address[] calldata tokens,
    uint256 maxBondAmount
  ) external;

  // return the stake token associated to an LP token
  function depositTokens(address lpToken)
    external
    view
    returns (address stakeToken);
}
