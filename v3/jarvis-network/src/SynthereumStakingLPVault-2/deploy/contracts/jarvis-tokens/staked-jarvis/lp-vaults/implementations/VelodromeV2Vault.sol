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

  address immutable NATIVE;

  struct StorageData {
    address voterAddress; // address of the velodrome voter contract
    address routerAddress; // address of velodrome router to add/remove liquidity
    address[] tokenRewards; // list of token addresses to claim as reward
    uint256 daoCommissionPercentage; // percentage of rewards that goes to dao address
  }

  // abi encoded input args for unstake call
  struct StakeArgs {
    bool useEth;
    address pair;
    uint256[2] inputAmounts;
    uint256[2] minAmounts;
    uint256 deadline;
  }

  // abi encoded input args for unstake call
  struct UnstakeArgs {
    bool useEth;
    address pair;
    uint256[2] minAmounts;
    uint256 deadline;
  }

  struct ClaimArgs {
    address pair;
    address recipient;
  }

  // struct to cache data in remove liquidity
  struct RemoveLiqCache {
    address tokenA;
    address tokenB;
    uint256 amountToken;
    uint256 amountETH;
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
  }

  ISynthereumFinder public immutable synthereumFinder;

  constructor(ISynthereumFinder _finder, address _nativeTokenAddress) {
    synthereumFinder = _finder;
    NATIVE = _nativeTokenAddress;
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
      uint256[] memory refundAmounts,
      address stakeToken,
      uint256 jarvisAmount
    )
  {
    // unpack storage data from registry
    StorageData memory moduleArgs = abi.decode(vaultArgs, (StorageData));

    // unpack user args
    StakeArgs memory stakeArgs = abi.decode(userArgs, (StakeArgs));

    // add liquidity into pool - receive lp token here
    (stakeTokenAmountOut, refundAmounts, jarvisAmount) = _addLiquidity(
      moduleArgs,
      stakeArgs,
      msgSender
    );

    // stake in gauge - output is 1:1 with input amount
    address gauge = _gaugeStake(
      moduleArgs.voterAddress,
      stakeArgs.pair,
      stakeTokenAmountOut
    );

    stakeToken = gauge != address(0) ? gauge : stakeArgs.pair;
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

    // unpack user args
    UnstakeArgs memory unstakeArgs = abi.decode(userArgs, (UnstakeArgs));
    address lpToken = unstakeArgs.pair;

    // unstake from gauge
    stakeTokenUsed = _gaugeUnstake(
      moduleArgs.voterAddress,
      lpToken,
      lpTokenAmount
    );
    (tokensOut, amountsOut, jarvisAmountOut) = _removeLiquidity(
      lpToken,
      lpTokenAmount,
      recipient,
      moduleArgs,
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

    // get reward token balances
    uint256 numTokens = tokenAddresses.length;
    uint256[] memory balancesBefore = new uint256[](numTokens);
    amounts = new uint256[](numTokens);

    for (uint256 i; i < numTokens; ) {
      balancesBefore[i] = IERC20(tokenAddresses[i]).balanceOf(address(this));
      unchecked {
        i++;
      }
    }

    // claim rewards and receive tokens here
    ClaimArgs memory claimArgs = abi.decode(userArgs, (ClaimArgs));

    address gauge = _getGauge(moduleArgs.voterAddress, claimArgs.pair);
    require(gauge != address(0), 'Not rewarded pool');
    IGaugeV2(gauge).getReward(address(this));

    // calculate actual reward amounts
    address stakingRewardsReceiver = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.StakingRewardsReceiver
    );
    for (uint256 i; i < numTokens; ) {
      IERC20 rewToken = IERC20(tokenAddresses[i]);

      // get token balance after
      uint256 balanceAfter = rewToken.balanceOf(address(this));

      uint256 actualReward = balanceAfter - balancesBefore[i];

      if (actualReward > 0) {
        // transfer reward commission to dao address
        uint256 daoCommission = actualReward.mul(
          moduleArgs.daoCommissionPercentage
        );

        rewToken.safeTransfer(stakingRewardsReceiver, daoCommission);

        // transfer rewards to user
        uint256 userReward = actualReward - daoCommission;
        rewToken.safeTransfer(claimArgs.recipient, userReward);

        // set return value
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
      uint256[] memory refundAmounts,
      uint256 jarvisAmount
    )
  {
    AddLiqCache memory cache;

    _revertWrongPool(moduleArgs.routerAddress, stakeArgs.pair);

    (cache.tokenA, cache.tokenB) = IPair(stakeArgs.pair).tokens();
    cache.depositTokens = [cache.tokenA, cache.tokenB];

    // transfer tokens to deposit and approve pool
    // we need to avoid pulling WETH when user is sending ETH
    cache.jarvisToken = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    for (uint256 i; i < 2; ) {
      if (!(stakeArgs.useEth && cache.depositTokens[i] == NATIVE)) {
        if (
          cache.depositTokens[i] == cache.jarvisToken &&
          !cache.isJarvisSupported
        ) {
          cache.isJarvisSupported = true;
        }
        // pull WETH only if useETH is false
        // pull any other ERC20 in any case
        IERC20(cache.depositTokens[i]).safeTransferFrom(
          msgSender,
          address(this),
          stakeArgs.inputAmounts[i]
        );
        IERC20(cache.depositTokens[i]).safeIncreaseAllowance(
          moduleArgs.routerAddress,
          stakeArgs.inputAmounts[i]
        );
      }
      unchecked {
        i++;
      }
    }
    require(cache.isJarvisSupported, 'No Jarvis token supported by the pool');

    refundAmounts = new uint256[](2);
    if (
      stakeArgs.useEth && (cache.tokenA == NATIVE || cache.tokenB == NATIVE)
    ) {
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
      ) = IVelodromeV2Router(moduleArgs.routerAddress).addLiquidityETH{
        value: msg.value
      }(
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
        token.safeApprove(moduleArgs.routerAddress, 0);
      }
    } else {
      // add liquidity tokens
      (
        cache.amountInTokenA,
        cache.amountInTokenB,
        lpTokenOut
      ) = IVelodromeV2Router(moduleArgs.routerAddress).addLiquidity(
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

      // refund tokenB ERC20
      if (cache.amountInTokenB < stakeArgs.inputAmounts[1]) {
        uint256 refundAmountB = stakeArgs.inputAmounts[1] -
          cache.amountInTokenB;
        IERC20 token = IERC20(cache.tokenB);

        token.safeTransfer(msgSender, refundAmountB);
        refundAmounts[1] = refundAmountB;

        // reset allowance
        token.safeApprove(moduleArgs.routerAddress, 0);
      }

      // refund tokenA ERC20s
      if (cache.amountInTokenA < stakeArgs.inputAmounts[0]) {
        uint256 refundAmountA = stakeArgs.inputAmounts[0] -
          cache.amountInTokenA;
        IERC20 token = IERC20(cache.tokenA);

        token.safeTransfer(msgSender, refundAmountA);
        refundAmounts[0] = refundAmountA;

        // reset allowance
        token.safeApprove(moduleArgs.routerAddress, 0);
      }
    }
  }

  function _removeLiquidity(
    address lpToken,
    uint256 lpTokenAmount,
    address recipient,
    StorageData memory moduleArgs,
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

    _revertWrongPool(moduleArgs.routerAddress, unstakeArgs.pair);

    (cache.tokenA, cache.tokenB) = IPair(unstakeArgs.pair).tokens();

    tokensOut = new address[](2);
    amountsOut = new uint256[](2);

    tokensOut[0] = cache.tokenA;
    tokensOut[1] = cache.tokenB;

    // remove liquidity from pool and send to user
    IERC20(lpToken).safeIncreaseAllowance(
      moduleArgs.routerAddress,
      lpTokenAmount
    );

    if (
      unstakeArgs.useEth && (cache.tokenA == NATIVE || cache.tokenB == NATIVE)
    ) {
      bool isTokenANative = cache.tokenA == NATIVE;
      (cache.amountToken, cache.amountETH) = IVelodromeV2Router(
        moduleArgs.routerAddress
      ).removeLiquidityETH(
        isTokenANative ? cache.tokenB : cache.tokenA,
        IPair(unstakeArgs.pair).stable(),
        lpTokenAmount,
        isTokenANative ? unstakeArgs.minAmounts[1] : unstakeArgs.minAmounts[0],
        isTokenANative ? unstakeArgs.minAmounts[0] : unstakeArgs.minAmounts[1],
        recipient,
        unstakeArgs.deadline
      );
      if (isTokenANative) {
        amountsOut[0] = cache.amountETH;
        amountsOut[1] = cache.amountToken;
      } else {
        amountsOut[0] = cache.amountToken;
        amountsOut[1] = cache.amountETH;
      }
    } else {
      (amountsOut[0], amountsOut[1]) = IVelodromeV2Router(
        moduleArgs.routerAddress
      ).removeLiquidity(
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
  function _gaugeStake(
    address voter,
    address lpToken,
    uint256 lpTokenAmount
  ) internal returns (address gauge) {
    gauge = _getGauge(voter, lpToken);
    if (gauge != address(0)) {
      IERC20(lpToken).safeIncreaseAllowance(gauge, lpTokenAmount);
      IGaugeV2(gauge).deposit(lpTokenAmount);
    }
  }

  function _gaugeUnstake(
    address voter,
    address lpToken,
    uint256 lpTokenAmount
  ) internal returns (address gauge) {
    gauge = _getGauge(voter, lpToken);
    if (gauge != address(0)) {
      IGaugeV2(gauge).withdraw(lpTokenAmount);
    } else {
      gauge = lpToken;
    }
  }

  function _getGauge(address voter, address pair)
    internal
    view
    returns (address gauge)
  {
    gauge = IVoter(voter).gauges(pair);
  }

  function _revertWrongPool(address router, address pair) internal view {
    IFactory factory = IFactory(IVelodromeV2Router(router).defaultFactory());
    require(factory.isPair(pair), 'Wrong pool');
  }
}
