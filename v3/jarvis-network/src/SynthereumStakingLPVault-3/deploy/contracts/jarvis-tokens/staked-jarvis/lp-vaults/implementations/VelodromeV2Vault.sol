// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../../core/interfaces/IFinder.sol';
import {ILPVaultImplementation} from '../interfaces/ILPVaultImplementation.sol';
import {IVelodromeV2Router, IGaugeV2, IFactory} from '../interfaces/IVelodromeV2Router.sol';
import {IVoter, IPair} from '../interfaces/IVelodromeRouter.sol';
import {IERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SynthereumInterfaces} from '../../../../core/Constants.sol';
import {PreciseUnitMath} from '../../../../base/utils/PreciseUnitMath.sol';
import {SafeERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {Address} from '../../../../../@openzeppelin/contracts/utils/Address.sol';

contract VelodromeV2Vault is ILPVaultImplementation {
  using SafeERC20 for IERC20;
  using Address for address;
  using Address for address payable;
  using PreciseUnitMath for uint256;

  // abi encoded input args for stake call
  struct StakeArgs {
    address pair;
    uint256[2] inputAmounts;
    uint256[2] minAmounts;
    uint256 deadline;
  }

  // abi encoded input args for unstake call
  struct UnstakeArgs {
    bool useNative;
    address pair;
    uint256[2] minAmounts;
    uint256 deadline;
  }

  struct ClaimArgs {
    address pair;
    address recipient;
  }

  struct RemoveLiqCache {
    address tokenA;
    address tokenB;
    uint256 amountToken;
    uint256 amountNative;
  }

  struct AddLiqCache {
    address tokenA;
    address tokenB;
    uint256 amountInTokenA;
    uint256 amountInTokenB;
    uint256 nonNativeInputAmount;
    uint256 nonNativeMinAmount;
    uint256 nativeMinAmount;
    address[2] depositTokens;
    address jarvisToken;
    bool isJarvisSupported;
    bool useNative;
  }

  ISynthereumFinder public immutable synthereumFinder;
  address immutable router;
  address immutable voter;
  address immutable NATIVE;

  constructor(
    ISynthereumFinder _finder,
    address _router,
    address _voter,
    address _nativeTokenAddress
  ) {
    synthereumFinder = _finder;
    voter = _voter;
    router = _router;
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
      uint256[] memory refundAmounts,
      address stakeToken,
      uint256 jarvisAmount
    )
  {
    // unpack user args
    StakeArgs memory stakeArgs = abi.decode(userArgs, (StakeArgs));

    // add liquidity into pool - receive lp token here
    (stakeTokenAmountOut, refundAmounts, jarvisAmount) = _addLiquidity(
      stakeArgs,
      msgSender
    );

    // stake in gauge - output is 1:1 with input amount
    stakeToken = _gaugeStake(stakeArgs.pair, stakeTokenAmountOut);
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

    // unpack user args
    UnstakeArgs memory unstakeArgs = abi.decode(userArgs, (UnstakeArgs));
    address lpToken = unstakeArgs.pair;

    // unstake from gauge
    stakeTokenUsed = _gaugeUnstake(lpToken, lpTokenAmount);

    (tokensOut, amountsOut, jarvisAmountOut) = _removeLiquidity(
      lpToken,
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
    _revertWrongPool(claimArgs.pair);
    address gauge = _getGauge(claimArgs.pair);
    tokenAddresses = new address[](1);
    amounts = new uint256[](1);
    tokenAddresses[0] = IGaugeV2(gauge).rewardToken();

    uint256 balancesBefore = IERC20(tokenAddresses[0]).balanceOf(address(this));

    // claim rewards and receive tokens here

    IGaugeV2(gauge).getReward(address(this));

    // get token balance after
    uint256 balanceAfter = IERC20(tokenAddresses[0]).balanceOf(address(this));

    uint256 actualReward = balanceAfter - balancesBefore;

    if (actualReward > 0) {
      // transfer reward commission to dao address
      uint256 daoCommission = actualReward.mul(daoCommissionPercentage);

      if (daoCommission > 0) {
        address stakingRewardsReceiver = synthereumFinder
          .getImplementationAddress(
          SynthereumInterfaces.StakingRewardsReceiver
        );
        IERC20(tokenAddresses[0]).safeTransfer(
          stakingRewardsReceiver,
          daoCommission
        );
      }

      // transfer rewards to user
      uint256 userReward = actualReward - daoCommission;
      IERC20(tokenAddresses[0]).safeTransfer(claimArgs.recipient, userReward);

      // set return value
      amounts[0] = userReward;
    }
  }

  function _addLiquidity(StakeArgs memory stakeArgs, address msgSender)
    internal
    returns (
      uint256 lpTokenOut,
      uint256[] memory refundAmounts,
      uint256 jarvisAmount
    )
  {
    AddLiqCache memory cache;

    _revertWrongPool(stakeArgs.pair);

    (cache.tokenA, cache.tokenB) = IPair(stakeArgs.pair).tokens();
    cache.depositTokens = [cache.tokenA, cache.tokenB];

    // transfer tokens to deposit and approve pool
    // we need to avoid pulling WETH when user is sending ETH
    cache.jarvisToken = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    cache.useNative = msg.value > 0;
    for (uint256 i; i < 2; ) {
      if (!(cache.useNative && cache.depositTokens[i] == NATIVE)) {
        if (
          cache.depositTokens[i] == cache.jarvisToken &&
          !cache.isJarvisSupported
        ) {
          cache.isJarvisSupported = true;
        }
        // pull WETH only if useETH is false
        // pull any other ERC20 in any case
        if (stakeArgs.inputAmounts[i] > 0) {
          IERC20(cache.depositTokens[i]).safeTransferFrom(
            msgSender,
            address(this),
            stakeArgs.inputAmounts[i]
          );
          IERC20(cache.depositTokens[i]).safeIncreaseAllowance(
            router,
            stakeArgs.inputAmounts[i]
          );
        }
      }
      unchecked {
        i++;
      }
    }

    refundAmounts = new uint256[](2);
    if (cache.useNative && (cache.tokenA == NATIVE || cache.tokenB == NATIVE)) {
      bool isTokenANative = cache.tokenA == NATIVE;
      if (isTokenANative) {
        cache.nonNativeInputAmount = stakeArgs.inputAmounts[1];
        cache.nonNativeMinAmount = stakeArgs.minAmounts[1];
        cache.nativeMinAmount = stakeArgs.minAmounts[0];
      } else {
        cache.nonNativeInputAmount = stakeArgs.inputAmounts[0];
        cache.nonNativeMinAmount = stakeArgs.minAmounts[0];
        cache.nativeMinAmount = stakeArgs.minAmounts[1];
      }
      // add liquidity ETH
      (
        cache.amountInTokenA,
        cache.amountInTokenB,
        lpTokenOut
      ) = IVelodromeV2Router(router).addLiquidityETH{value: msg.value}(
        isTokenANative ? cache.tokenB : cache.tokenA,
        IPair(stakeArgs.pair).stable(),
        cache.nonNativeInputAmount,
        cache.nonNativeMinAmount,
        cache.nativeMinAmount,
        address(this),
        stakeArgs.deadline
      );

      // refund ETH
      if (cache.amountInTokenB < msg.value) {
        uint256 refundAmountEth = msg.value - cache.amountInTokenB;
        payable(msgSender).sendValue(refundAmountEth);
        uint256 indexNative = isTokenANative ? 0 : 1;
        refundAmounts[indexNative] = refundAmountEth;
      }

      // refund token ERC20
      jarvisAmount = cache.amountInTokenA;
      if (jarvisAmount < cache.nonNativeInputAmount) {
        uint256 refundAmount = cache.nonNativeInputAmount - jarvisAmount;
        IERC20 token = isTokenANative
          ? IERC20(cache.tokenB)
          : IERC20(cache.tokenA);

        token.safeTransfer(msgSender, refundAmount);

        uint256 indexNonNative = isTokenANative ? 1 : 0;
        refundAmounts[indexNonNative] = refundAmount;

        // reset allowance
        token.safeApprove(router, 0);
      }
    } else {
      // add liquidity tokens
      (
        cache.amountInTokenA,
        cache.amountInTokenB,
        lpTokenOut
      ) = IVelodromeV2Router(router).addLiquidity(
        cache.tokenA,
        cache.tokenB,
        IPair(stakeArgs.pair).stable(),
        stakeArgs.inputAmounts[0],
        stakeArgs.inputAmounts[1],
        stakeArgs.minAmounts[0],
        stakeArgs.minAmounts[1],
        address(this),
        stakeArgs.deadline
      );

      jarvisAmount = cache.tokenA == cache.jarvisToken
        ? cache.amountInTokenA
        : cache.amountInTokenB;

      // refund tokenA ERC20s
      if (cache.amountInTokenA < stakeArgs.inputAmounts[0]) {
        uint256 refundAmountA = stakeArgs.inputAmounts[0] -
          cache.amountInTokenA;
        IERC20 token = IERC20(cache.tokenA);

        token.safeTransfer(msgSender, refundAmountA);
        refundAmounts[0] = refundAmountA;

        // reset allowance
        token.safeApprove(router, 0);
      }

      // refund tokenB ERC20
      if (cache.amountInTokenB < stakeArgs.inputAmounts[1]) {
        uint256 refundAmountB = stakeArgs.inputAmounts[1] -
          cache.amountInTokenB;
        IERC20 token = IERC20(cache.tokenB);

        token.safeTransfer(msgSender, refundAmountB);
        refundAmounts[1] = refundAmountB;

        // reset allowance
        token.safeApprove(router, 0);
      }
    }
    require(
      cache.isJarvisSupported && jarvisAmount > 0,
      'No Jarvis token supported by the pool'
    );
    require(lpTokenOut > 0, 'No LP token output');
  }

  function _removeLiquidity(
    address lpToken,
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
    RemoveLiqCache memory cache;

    _revertWrongPool(unstakeArgs.pair);

    (cache.tokenA, cache.tokenB) = IPair(unstakeArgs.pair).tokens();

    tokensOut = new address[](2);
    amountsOut = new uint256[](2);

    // remove liquidity from pool and send to user
    IERC20(lpToken).safeIncreaseAllowance(router, lpTokenAmount);

    if (
      unstakeArgs.useNative &&
      (cache.tokenA == NATIVE || cache.tokenB == NATIVE)
    ) {
      bool isTokenANative = cache.tokenA == NATIVE;
      (cache.amountToken, cache.amountNative) = IVelodromeV2Router(router)
        .removeLiquidityETH(
        isTokenANative ? cache.tokenB : cache.tokenA,
        IPair(unstakeArgs.pair).stable(),
        lpTokenAmount,
        isTokenANative ? unstakeArgs.minAmounts[1] : unstakeArgs.minAmounts[0],
        isTokenANative ? unstakeArgs.minAmounts[0] : unstakeArgs.minAmounts[1],
        recipient,
        unstakeArgs.deadline
      );
      if (isTokenANative) {
        tokensOut[0] = address(0);
        tokensOut[1] = cache.tokenB;
        amountsOut[0] = cache.amountNative;
        amountsOut[1] = cache.amountToken;
      } else {
        tokensOut[0] = cache.tokenA;
        tokensOut[1] = address(0);
        amountsOut[0] = cache.amountToken;
        amountsOut[1] = cache.amountNative;
      }
    } else {
      tokensOut[0] = cache.tokenA;
      tokensOut[1] = cache.tokenB;
      (amountsOut[0], amountsOut[1]) = IVelodromeV2Router(router)
        .removeLiquidity(
        cache.tokenA,
        cache.tokenB,
        IPair(unstakeArgs.pair).stable(),
        lpTokenAmount,
        unstakeArgs.minAmounts[0],
        unstakeArgs.minAmounts[1],
        recipient,
        unstakeArgs.deadline
      );
    }

    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    if (tokensOut[0] == JARVIS) {
      jarvisAmountOut = amountsOut[0];
    } else if (tokensOut[1] == JARVIS) {
      jarvisAmountOut = amountsOut[1];
    }
  }

  // stake lp token in velodrome gauge
  function _gaugeStake(address lpToken, uint256 lpTokenAmount)
    internal
    returns (address gauge)
  {
    gauge = _getGauge(lpToken);
    IERC20(lpToken).safeIncreaseAllowance(gauge, lpTokenAmount);
    IGaugeV2(gauge).deposit(lpTokenAmount);
  }

  function _gaugeUnstake(address lpToken, uint256 lpTokenAmount)
    internal
    returns (address gauge)
  {
    gauge = _getGauge(lpToken);
    IGaugeV2(gauge).withdraw(lpTokenAmount);
  }

  function _getGauge(address pair) internal view returns (address gauge) {
    gauge = IVoter(voter).gauges(pair);
    require(gauge != address(0), 'Gauge not supported');
  }

  function _revertWrongPool(address pair) internal view {
    IFactory factory = IFactory(IVelodromeV2Router(router).defaultFactory());
    require(factory.isPool(pair), 'Wrong pool');
  }
}
