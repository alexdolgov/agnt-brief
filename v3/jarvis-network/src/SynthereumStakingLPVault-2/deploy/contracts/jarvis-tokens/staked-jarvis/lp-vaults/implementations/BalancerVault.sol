// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../../core/interfaces/IFinder.sol';
import {ILPVaultImplementation} from '../interfaces/ILPVaultImplementation.sol';
import {IBalancerRouter, IBalancerPool, IBalancerGauge, IChildChainStreamer, IGaugeFactory} from '../interfaces/IBalancerRouter.sol';
import {IERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SynthereumInterfaces} from '../../../../core/Constants.sol';
import {PreciseUnitMath} from '../../../../base/utils/PreciseUnitMath.sol';
import {SafeERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {Address} from '../../../../../@openzeppelin/contracts/utils/Address.sol';

contract BalancerVault is ILPVaultImplementation {
  using SafeERC20 for IERC20;
  using Address for address;
  using PreciseUnitMath for uint256;

  struct StorageData {
    address vaultAddress; // address of balancer vault contract
    address gaugeFactory; // address of balancer ChildChainLiquidityGaugeFactory to retrieve pool gauges
    address[] tokenRewards; // list of token addresses to claim as reward
    uint256 daoCommissionPercentage; // percentage of rewards that goes to dao address
  }

  // abi encoded input userArgs for unstake call
  struct StakeArgs {
    bytes32 poolId;
    uint256[] inputAmounts;
    uint256 minBPTOut;
  }

  // abi encoded input userArgs for unstake call
  struct UnstakeWithdrawArgs {
    bytes32 poolId;
    uint256[] minAmountsOut;
  }

  // abi encoded input userArgs for claim rewards call
  struct ClaimArgs {
    address pool;
    address recipient;
  }

  // struct to cache data in remove liquidity
  struct RemoveLiqCache {
    uint8 poolType;
    address[] depositTokens;
    uint256[] minAmounts;
  }

  ISynthereumFinder public immutable synthereumFinder;

  constructor(ISynthereumFinder _finder) {
    synthereumFinder = _finder;
  }

  receive() external payable {}

  // deposit liquidity into pool and stake liquidity in gauge
  function depositAndStakeLiquidity(
    bytes calldata vaultArgs,
    bytes calldata userArgs,
    address msgSender
  )
    external
    payable
    override
    returns (
      uint256 stakeTokenAmountOut,
      uint256[] memory,
      address stakeToken,
      uint256 jarvisAmount
    )
  {
    // unpack storage data from registry
    StorageData memory moduleArgs = abi.decode(vaultArgs, (StorageData));

    // unpack user userArgs
    StakeArgs memory stakeArgs = abi.decode(userArgs, (StakeArgs));

    // add liquidity into pool - receive lp token here
    address lpToken;
    (stakeTokenAmountOut, lpToken, jarvisAmount) = _addLiquidity(
      moduleArgs,
      stakeArgs,
      msgSender
    );

    // stake in gauge if present - output is 1:1 with input amount
    address gauge = _gaugeStake(
      moduleArgs.gaugeFactory,
      lpToken,
      stakeTokenAmountOut
    );

    stakeToken = gauge != address(0) ? gauge : lpToken;
  }

  // unstake liquidity from gauge and remove liquidity from pool or return lp token
  function unstakeAndWithdraw(
    uint256 lpTokenAmount,
    address recipient,
    bytes calldata vaultArgs,
    bytes calldata userArgs
  )
    external
    override
    returns (
      address stakeTokenUsed,
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    )
  {
    // unpack module args
    StorageData memory moduleArgs = abi.decode(vaultArgs, (StorageData));

    // unpack user userArgs
    UnstakeWithdrawArgs memory unstakeArgs = abi.decode(
      userArgs,
      (UnstakeWithdrawArgs)
    );
    address pool = address(uint160(bytes20(unstakeArgs.poolId)));

    // unstake from gauge
    stakeTokenUsed = _gaugeUnstake(
      moduleArgs.gaugeFactory,
      pool,
      lpTokenAmount
    );

    // remove liquidity
    (tokensOut, amountsOut, jarvisAmountOut) = _removeLiquidity(
      pool,
      lpTokenAmount,
      recipient,
      moduleArgs.vaultAddress,
      unstakeArgs
    );
  }

  function claimRewards(bytes calldata vaultArgs, bytes calldata userArgs)
    external
    override
    returns (address[] memory tokenAddresses, uint256[] memory amounts)
  {
    StorageData memory moduleArgs = abi.decode(vaultArgs, (StorageData));

    // check dao commission % is correctly set
    require(
      moduleArgs.daoCommissionPercentage < PreciseUnitMath.PRECISE_UNIT,
      'Dao commission must be less than 100%'
    );

    tokenAddresses = moduleArgs.tokenRewards;

    ClaimArgs memory claimArgs = abi.decode(userArgs, (ClaimArgs));

    address pool = claimArgs.pool;
    uint256 numTokens = tokenAddresses.length;
    amounts = new uint256[](numTokens);
    address gauge = IGaugeFactory(moduleArgs.gaugeFactory).getPoolGauge(pool);
    require(gauge != address(0), 'No gauge contract');

    for (uint256 i; i < numTokens; ) {
      // get claimable amounts
      amounts[i] = IBalancerGauge(gauge).claimable_reward(
        address(this),
        tokenAddresses[i]
      );
      unchecked {
        i++;
      }
    }

    address rewardStreamer = IGaugeFactory(moduleArgs.gaugeFactory)
      .getPoolStreamer(pool);

    require(rewardStreamer != address(0), 'No reward streamer contract');
    // claim rewards and receive tokens here
    IChildChainStreamer(rewardStreamer).get_reward();

    address recipient = claimArgs.recipient;
    // split rewards
    address stakingRewardsReceiver = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.StakingRewardsReceiver
    );
    for (uint256 i; i < numTokens; ) {
      uint256 actualReward = amounts[i];

      if (actualReward > 0) {
        IERC20 rewToken = IERC20(tokenAddresses[i]);

        // transfer reward commission to dao address
        uint256 daoCommission = actualReward.mul(
          moduleArgs.daoCommissionPercentage
        );

        rewToken.safeTransfer(stakingRewardsReceiver, daoCommission);

        // transfer rewards to user
        uint256 userReward = actualReward - daoCommission;
        rewToken.safeTransfer(recipient, userReward);
        amounts[i] = userReward;
      }

      unchecked {
        i++;
      }
    }
  }

  function _addLiquidity(
    StorageData memory moduleArgs,
    StakeArgs memory stakeArgs,
    address msgSender
  )
    internal
    returns (
      uint256 lpTokenOut,
      address pool,
      uint256 jarvisAmount
    )
  {
    address vaultAddress = moduleArgs.vaultAddress;
    bytes32 poolId = stakeArgs.poolId;

    // check pool is valid
    _revertWrongPool(vaultAddress, poolId);

    uint256[] memory amounts = stakeArgs.inputAmounts;
    address[] memory depositTokens;
    pool = address(uint160(bytes20(poolId)));

    bytes memory userData = abi.encode(
      IBalancerRouter.JoinKind.EXACT_TOKENS_IN_FOR_BPT_OUT,
      amounts,
      stakeArgs.minBPTOut
    );

    (depositTokens, amounts, , ) = _getPoolTokens(
      poolId,
      pool,
      vaultAddress,
      address(this),
      amounts,
      false
    );

    uint256 lpBalBefore = IERC20(pool).balanceOf(address(this));

    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    IERC20 token;
    uint256 tokenAmount;
    bool isJarvisSupported;
    // transfer tokens to deposit and approve router
    for (uint256 i; i < depositTokens.length; ) {
      token = IERC20(depositTokens[i]);
      if (address(token) != pool) {
        tokenAmount = amounts[i];
        if (address(token) == JARVIS && !isJarvisSupported) {
          jarvisAmount = tokenAmount;
          isJarvisSupported = true;
        }
        token.safeTransferFrom(msgSender, address(this), tokenAmount);
        token.safeIncreaseAllowance(vaultAddress, tokenAmount);
      }
      unchecked {
        i++;
      }
    }
    require(isJarvisSupported, 'No Jarvis token supported by the pool');

    IBalancerRouter.JoinPoolRequest memory req = IBalancerRouter
      .JoinPoolRequest(depositTokens, amounts, userData, false);

    IBalancerRouter(vaultAddress).joinPool{value: msg.value}(
      poolId,
      address(this),
      address(this),
      req
    );
    uint256 lpBalAfter = IERC20(pool).balanceOf(address(this));

    lpTokenOut = lpBalAfter - lpBalBefore;
  }

  function _removeLiquidity(
    address pool,
    uint256 lpTokenAmount,
    address recipient,
    address vaultAddress,
    UnstakeWithdrawArgs memory unstakeArgs
  )
    internal
    returns (
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    )
  {
    // address vaultAddress = moduleArgs.vaultAddress;
    bytes32 poolId = unstakeArgs.poolId;

    RemoveLiqCache memory cache;

    // check pool is valid
    cache.poolType = _revertWrongPool(vaultAddress, poolId);
    (
      cache.depositTokens,
      cache.minAmounts,
      tokensOut,
      amountsOut
    ) = _getPoolTokens(
      poolId,
      pool,
      vaultAddress,
      recipient,
      unstakeArgs.minAmountsOut,
      true
    );

    // get pool type to determine user data
    IBalancerRouter.ExitPoolRequest memory req;
    {
      bytes memory userData;
      if (cache.poolType == 0) {
        // stable pool
        userData = abi.encode(
          IBalancerRouter
            .ExitKindComposableStablePool
            .EXACT_BPT_IN_FOR_ALL_TOKENS_OUT,
          lpTokenAmount
        );
      } else {
        // weighted pool
        userData = abi.encode(
          IBalancerRouter.ExitKindWeightedPool.EXACT_BPT_IN_FOR_TOKENS_OUT,
          lpTokenAmount
        );
      }
      req = IBalancerRouter.ExitPoolRequest(
        cache.depositTokens,
        cache.minAmounts,
        userData,
        false
      );
    }

    // remove liquidity from pool and send to user
    IBalancerRouter(vaultAddress).exitPool(
      poolId,
      address(this),
      recipient,
      req
    );

    // get balances after to determine output amount
    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    uint256 len = tokensOut.length;
    bool isJarvisAmountSet;
    for (uint256 i; i < len; ) {
      amountsOut[i] = IERC20(tokensOut[i]).balanceOf(recipient) - amountsOut[i];
      if (tokensOut[i] == JARVIS && !isJarvisAmountSet) {
        jarvisAmountOut = amountsOut[i];
        isJarvisAmountSet = true;
      }
      unchecked {
        i++;
      }
    }
  }

  // stake lp token in balancer gauge if present
  function _gaugeStake(
    address gaugeFactory,
    address pool,
    uint256 lpTokenAmount
  ) internal returns (address gauge) {
    // retrieve pool gauge
    gauge = IGaugeFactory(gaugeFactory).getPoolGauge(pool);

    if (gauge != address(0)) {
      IERC20(pool).safeIncreaseAllowance(gauge, lpTokenAmount);
      IBalancerGauge(gauge).deposit(lpTokenAmount, address(this), false);
    }
  }

  // stake lp token in balancer gauge if present
  function _gaugeUnstake(
    address gaugeFactory,
    address pool,
    uint256 lpTokenAmount
  ) internal returns (address gauge) {
    // retrieve pool gauge
    gauge = IGaugeFactory(gaugeFactory).getPoolGauge(pool);

    if (gauge != address(0)) {
      IBalancerGauge(gauge).withdraw(lpTokenAmount, false);
    } else {
      gauge = pool;
    }
  }

  // if the pool has a gauge associated, one of the tokens returned is the LP pool token
  // that needs to be mapped to an amount of value 0 when depositing/withdrawing
  function _getPoolTokens(
    bytes32 poolId,
    address pool,
    address vault,
    address recipient,
    uint256[] memory amounts,
    bool isRemoveLiquidity
  )
    internal
    view
    returns (
      address[] memory tokenAddresses,
      uint256[] memory newAmounts,
      address[] memory tokensOut,
      uint256[] memory userBalanceBefore
    )
  {
    (IERC20[] memory tokens, , ) = IBalancerRouter(vault).getPoolTokens(poolId);

    uint256 tokensLen = tokens.length;
    uint256 userLen = amounts.length;

    require(
      userLen == tokensLen || userLen == tokensLen - 1,
      'Bad token array'
    );

    uint256 j = 0;
    tokenAddresses = new address[](tokensLen);
    newAmounts = new uint256[](tokensLen);
    userBalanceBefore = new uint256[](userLen);
    tokensOut = new address[](userLen);

    for (uint256 i; i < tokensLen; ) {
      address token = address(tokens[i]);
      tokenAddresses[i] = token;

      if (token == pool) {
        newAmounts[i] = 0;
      } else {
        if (isRemoveLiquidity) {
          userBalanceBefore[j] = IERC20(token).balanceOf(recipient);
          tokensOut[j] = token;
        }
        newAmounts[i] = amounts[j];
        unchecked {
          j++;
        }
      }

      unchecked {
        i++;
      }
    }
  }

  function _revertWrongPool(address vaultAddress, bytes32 poolId)
    internal
    view
    returns (uint8 poolType)
  {
    IBalancerRouter vault = IBalancerRouter(vaultAddress);
    // this one reverts if pool id is invalid
    (, poolType) = vault.getPool(poolId);
  }
}
