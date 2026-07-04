// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {IERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';

// slice of interface to interact with Balancer protocol
// consult Balancer documentation for more info
interface IBalancerRouter {
  enum JoinKind {
    INIT,
    EXACT_TOKENS_IN_FOR_BPT_OUT,
    TOKEN_IN_FOR_EXACT_BPT_OUT
  }

  enum ExitKindWeightedPool {
    EXACT_BPT_IN_FOR_ONE_TOKEN_OUT,
    EXACT_BPT_IN_FOR_TOKENS_OUT,
    BPT_IN_FOR_EXACT_TOKENS_OUT,
    MANAGEMENT_FEE_TOKENS_OUT
  }

  enum ExitKindComposableStablePoolOld {
    EXACT_BPT_IN_FOR_ONE_TOKEN_OUT,
    BPT_IN_FOR_EXACT_TOKENS_OUT
  }

  enum ExitKindComposableStablePool {
    EXACT_BPT_IN_FOR_ONE_TOKEN_OUT,
    BPT_IN_FOR_EXACT_TOKENS_OUT,
    EXACT_BPT_IN_FOR_ALL_TOKENS_OUT
  }

  enum SwapKind {
    GIVEN_IN,
    GIVEN_OUT
  }

  struct JoinPoolRequest {
    address[] assets;
    uint256[] maxAmountsIn;
    bytes userData;
    bool fromInternalBalance;
  }

  struct ExitPoolRequest {
    address[] assets;
    uint256[] minAmountsOut;
    bytes userData;
    bool toInternalBalance;
  }

  struct SingleSwap {
    bytes32 poolId;
    SwapKind kind;
    address assetIn;
    address assetOut;
    uint256 amount;
    bytes userData;
  }

  struct FundManagement {
    address sender;
    bool fromInternalBalance;
    address payable recipient;
    bool toInternalBalance;
  }

  function getPoolTokens(bytes32 poolId)
    external
    view
    returns (
      IERC20[] memory tokens,
      uint256[] memory balances,
      uint256 lastChangeBlock
    );

  function getPool(bytes32 poolId)
    external
    view
    returns (address pool, uint8 poolType);

  function joinPool(
    bytes32 poolId,
    address sender,
    address recipient,
    JoinPoolRequest memory request
  ) external payable;

  function exitPool(
    bytes32 poolId,
    address sender,
    address recipient,
    ExitPoolRequest memory request
  ) external;

  function swap(
    SingleSwap memory singleSwap,
    FundManagement memory funds,
    uint256 limit,
    uint256 deadline
  ) external returns (uint256 amountCalculated);
}

interface IBalancerPool {
  function getPoolId() external view returns (bytes32);
}

interface IBalancerGauge {
  // stake an LP token into gauge
  function deposit(
    uint256 lpTokenAmount,
    address sender,
    bool claim_rewards
  ) external;

  // withdraw an LP token from gauge
  function withdraw(uint256 lpAmount, bool claim_rewards) external;

  // get amount of claimable rewards
  function claimable_reward(address user, address token)
    external
    returns (uint256);
}

interface IChildChainStreamer {
  // claim rewards from gauges (on side chains)
  function get_reward() external;
}

interface IGaugeFactory {
  // for depositing/withdrawing to/from gauge - retrieve a pool associated gauge
  function getPoolGauge(address pool) external returns (address gauge);

  // for claiming reward - retrieve a pool associated reward streamer contract
  function getPoolStreamer(address pool)
    external
    returns (address rewardStreamer); // for claiming reward
}
