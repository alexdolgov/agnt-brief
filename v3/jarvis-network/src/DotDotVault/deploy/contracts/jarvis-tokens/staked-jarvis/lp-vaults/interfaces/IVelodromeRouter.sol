// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

// slice of interface to interact with Velodrome protocol
// consult velodrome docs for more details
interface IGauge {
  // claim reward from gauge
  function getReward(address account, address[] memory rewardTokens) external;

  // deposit into gauge
  function deposit(uint256 pid, uint256 amount) external;

  // withdraw from gauge
  function withdraw(uint256 shares) external;
}

interface IVoter {
  // retrieve gauge address from pair (LP token)
  function gauges(address pair) external view returns (address);
}

interface IPair {
  // retrieve token addresses of a pair LP token
  function tokens() external view returns (address, address);

  // checks if a pair is a stable pair
  function stable() external view returns (bool);
}

interface IVelodromeRouter {
  struct Route {
    address from;
    address to;
    bool stable;
  }

  // add liquidity into a pool - erc20 tokens
  function addLiquidity(
    address tokenA,
    address tokenB,
    bool stable,
    uint256 amountADesired,
    uint256 amountBDesired,
    uint256 amountAMin,
    uint256 amountBMin,
    address to,
    uint256 deadline
  )
    external
    returns (
      uint256 amountA,
      uint256 amountB,
      uint256 liquidity
    );

  // add liquidity into a pool - eth/erc20
  function addLiquidityETH(
    address token,
    bool stable,
    uint256 amountTokenDesired,
    uint256 amountTokenMin,
    uint256 amountETHMin,
    address to,
    uint256 deadline
  )
    external
    payable
    returns (
      uint256 amountToken,
      uint256 amountETH,
      uint256 liquidity
    );

  // remove liquidity from a pool - erc20 tokens
  function removeLiquidity(
    address tokenA,
    address tokenB,
    bool stable,
    uint256 liquidity,
    uint256 amountAMin,
    uint256 amountBMin,
    address to,
    uint256 deadline
  ) external returns (uint256 amountA, uint256 amountB);

  // remove liquidity from a pool - eth/erc20
  function removeLiquidityETH(
    address token,
    bool stable,
    uint256 liquidity,
    uint256 amountTokenMin,
    uint256 amountETHMin,
    address to,
    uint256 deadline
  ) external returns (uint256 amountToken, uint256 amountETH);

  // swap exact eth for erc20
  function swapExactETHForTokens(
    uint256 amountOutMin,
    Route[] calldata routes,
    address to,
    uint256 deadline
  ) external payable returns (uint256[] memory amounts);

  // checks if an address is an actual pair in the protocol
  function isPair(address pair) external view returns (bool);
}
