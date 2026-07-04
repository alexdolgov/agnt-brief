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

  // abi encoded input userArgs for unstake call
  struct StakeArgs {
    bytes32 poolId;
    uint256[] inputAmounts;
    uint256 minBPTOut;
    bool useGauge;
  }

  // abi encoded input userArgs for unstake call
  struct UnstakeArgs {
    bool useNative;
    bytes32 poolId;
    uint256[] minAmountsOut;
    bool useGauge;
  }

  // abi encoded input userArgs for claim rewards call
  struct ClaimArgs {
    bytes32 poolId;
    address recipient;
  }

  // struct to cache data in remove liquidity
  struct RemoveLiqCache {
    uint8 poolType;
    address[] depositTokens;
    uint256[] minAmounts;
  }

  struct GetTokensCache {
    uint256 tokensLen;
    uint256 userLen;
    address token;
    bool isNative;
  }

  ISynthereumFinder public immutable synthereumFinder;
  address public immutable router;
  address public immutable gaugeFactory;
  address immutable NATIVE;

  constructor(
    ISynthereumFinder _finder,
    address _router,
    address _gaugeFactory,
    address _nativeTokenAddress
  ) {
    synthereumFinder = _finder;
    router = _router;
    gaugeFactory = _gaugeFactory;
    NATIVE = _nativeTokenAddress;
  }

  receive() external payable {}

  // deposit liquidity into pool and stake liquidity in gauge
  function depositAndStakeLiquidity(
    bytes calldata,
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
    // unpack user userArgs
    StakeArgs memory stakeArgs = abi.decode(userArgs, (StakeArgs));

    // add liquidity into pool - receive lp token here
    address lpToken;
    (stakeTokenAmountOut, lpToken, jarvisAmount) = _addLiquidity(
      stakeArgs,
      msgSender
    );

    // stake in gauge if useGauge true - output is 1:1 with input amount
    stakeToken = stakeArgs.useGauge
      ? _gaugeStake(lpToken, stakeTokenAmountOut)
      : lpToken;
  }

  // unstake liquidity from gauge and remove liquidity from pool or return lp token
  function unstakeAndWithdraw(
    uint256 lpTokenAmount,
    address recipient,
    bytes calldata,
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
    require(lpTokenAmount > 0, 'No withdraw token input');

    // unpack user userArgs
    UnstakeArgs memory unstakeArgs = abi.decode(userArgs, (UnstakeArgs));
    address pool = address(uint160(bytes20(unstakeArgs.poolId)));

    // unstake from gauge if useGauge true
    stakeTokenUsed = unstakeArgs.useGauge
      ? _gaugeUnstake(pool, lpTokenAmount)
      : pool;

    // remove liquidity
    (tokensOut, amountsOut, jarvisAmountOut) = _removeLiquidity(
      pool,
      lpTokenAmount,
      recipient,
      unstakeArgs
    );
  }

  function claimRewards(bytes calldata vaultArgs, bytes calldata userArgs)
    external
    override
    returns (address[] memory tokenAddresses, uint256[] memory amounts)
  {
    uint64 daoCommissionPercentage = abi.decode(vaultArgs, (uint64));

    // check dao commission % is correctly set
    require(
      daoCommissionPercentage < PreciseUnitMath.PRECISE_UNIT,
      'Dao commission must be less than 100%'
    );

    ClaimArgs memory claimArgs = abi.decode(userArgs, (ClaimArgs));

    _revertWrongPool(claimArgs.poolId);
    address pool = address(uint160(bytes20(claimArgs.poolId)));
    address gauge = IGaugeFactory(gaugeFactory).getPoolGauge(pool);
    require(gauge != address(0), 'No gauge contract');

    address rewardStreamer = IGaugeFactory(gaugeFactory).getPoolStreamer(pool);
    require(rewardStreamer != address(0), 'No reward streamer contract');

    uint256 numTokens = IChildChainStreamer(rewardStreamer).reward_count();
    tokenAddresses = new address[](numTokens);
    amounts = new uint256[](numTokens);

    address token;
    for (uint256 i; i < numTokens; ) {
      // get claimable amounts
      token = IChildChainStreamer(rewardStreamer).reward_tokens(i);
      tokenAddresses[i] = token;
      amounts[i] = IBalancerGauge(gauge).claimable_reward(address(this), token);
      unchecked {
        i++;
      }
    }

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
        uint256 daoCommission = actualReward.mul(daoCommissionPercentage);

        if (daoCommission > 0) {
          rewToken.safeTransfer(stakingRewardsReceiver, daoCommission);
        }

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

  function _addLiquidity(StakeArgs memory stakeArgs, address msgSender)
    internal
    returns (
      uint256 lpTokenOut,
      address pool,
      uint256 jarvisAmount
    )
  {
    bytes32 poolId = stakeArgs.poolId;

    // check pool is valid
    _revertWrongPool(poolId);

    uint256[] memory amounts = stakeArgs.inputAmounts;
    address[] memory depositTokens;
    pool = address(uint160(bytes20(poolId)));

    bytes memory userData = abi.encode(
      IBalancerRouter.JoinKind.EXACT_TOKENS_IN_FOR_BPT_OUT,
      amounts,
      stakeArgs.minBPTOut
    );

    bool useNative = msg.value > 0;
    (depositTokens, amounts, , ) = _getPoolTokens(
      poolId,
      pool,
      address(this),
      amounts,
      false,
      useNative
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
      if (address(token) != pool && address(token) != address(0)) {
        tokenAmount = amounts[i];
        if (address(token) == JARVIS && !isJarvisSupported) {
          jarvisAmount = tokenAmount;
          isJarvisSupported = true;
        }
        if (tokenAmount > 0) {
          token.safeTransferFrom(msgSender, address(this), tokenAmount);
          token.safeIncreaseAllowance(router, tokenAmount);
        }
      }
      unchecked {
        i++;
      }
    }
    require(
      isJarvisSupported && jarvisAmount > 0,
      'No Jarvis token supported by the pool'
    );

    IBalancerRouter.JoinPoolRequest memory req = IBalancerRouter
      .JoinPoolRequest(depositTokens, amounts, userData, false);

    IBalancerRouter(router).joinPool{value: msg.value}(
      poolId,
      address(this),
      address(this),
      req
    );

    uint256 lpBalAfter = IERC20(pool).balanceOf(address(this));

    lpTokenOut = lpBalAfter - lpBalBefore;

    require(lpTokenOut > 0, 'No LP token output');
  }

  function _removeLiquidity(
    address pool,
    uint256 lpTokenAmount,
    address recipient,
    UnstakeArgs memory unstakeArgs
  )
    internal
    returns (
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    )
  {
    bytes32 poolId = unstakeArgs.poolId;

    RemoveLiqCache memory cache;

    // check pool is valid
    cache.poolType = _revertWrongPool(poolId);
    (
      cache.depositTokens,
      cache.minAmounts,
      tokensOut,
      amountsOut
    ) = _getPoolTokens(
      poolId,
      pool,
      recipient,
      unstakeArgs.minAmountsOut,
      true,
      unstakeArgs.useNative
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
    IBalancerRouter(router).exitPool(poolId, address(this), recipient, req);

    // get balances after to determine output amount
    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    uint256 len = tokensOut.length;
    bool isJarvisAmountSet;
    for (uint256 i; i < len; ) {
      amountsOut[i] = tokensOut[i] == address(0)
        ? recipient.balance - amountsOut[i]
        : IERC20(tokensOut[i]).balanceOf(recipient) - amountsOut[i];
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
  function _gaugeStake(address pool, uint256 lpTokenAmount)
    internal
    returns (address gauge)
  {
    // retrieve pool gauge
    gauge = IGaugeFactory(gaugeFactory).getPoolGauge(pool);
    require(gauge != address(0), 'Gauge not supported');
    IERC20(pool).safeIncreaseAllowance(gauge, lpTokenAmount);
    IBalancerGauge(gauge).deposit(lpTokenAmount, address(this), false);
  }

  // stake lp token in balancer gauge if present
  function _gaugeUnstake(address pool, uint256 lpTokenAmount)
    internal
    returns (address gauge)
  {
    // retrieve pool gauge
    gauge = IGaugeFactory(gaugeFactory).getPoolGauge(pool);
    require(gauge != address(0), 'Gauge not supported');
    IBalancerGauge(gauge).withdraw(lpTokenAmount, false);
  }

  // if the pool has a gauge associated, one of the tokens returned is the LP pool token
  // that needs to be mapped to an amount of value 0 when depositing/withdrawing
  function _getPoolTokens(
    bytes32 poolId,
    address pool,
    address recipient,
    uint256[] memory amounts,
    bool isRemoveLiquidity,
    bool useNative
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
    (IERC20[] memory tokens, , ) = IBalancerRouter(router).getPoolTokens(
      poolId
    );

    GetTokensCache memory cache;
    cache.tokensLen = tokens.length;
    cache.userLen = amounts.length;

    require(
      cache.userLen == cache.tokensLen || cache.userLen == cache.tokensLen - 1,
      'Bad token array'
    );

    uint256 j;
    tokenAddresses = new address[](cache.tokensLen);
    newAmounts = new uint256[](cache.tokensLen);
    userBalanceBefore = new uint256[](cache.userLen);
    tokensOut = new address[](cache.userLen);

    for (uint256 i; i < cache.tokensLen; ) {
      cache.token = address(tokens[i]);
      tokenAddresses[i] = cache.token;

      if (cache.token != pool) {
        cache.isNative = cache.token == NATIVE && useNative;
        if (cache.isNative) {
          tokenAddresses[i] = address(0);
        }
        if (isRemoveLiquidity) {
          userBalanceBefore[j] = cache.isNative
            ? recipient.balance
            : IERC20(cache.token).balanceOf(recipient);
          tokensOut[j] = cache.isNative ? address(0) : cache.token;
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

  function _revertWrongPool(bytes32 poolId)
    internal
    view
    returns (uint8 poolType)
  {
    // this one reverts if pool id is invalid
    (, poolType) = IBalancerRouter(router).getPool(poolId);
  }
}
