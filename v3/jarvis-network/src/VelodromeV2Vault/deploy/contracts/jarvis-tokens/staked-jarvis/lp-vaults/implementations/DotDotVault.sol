// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../../core/interfaces/IFinder.sol';
import {ILPVaultImplementation} from '../interfaces/ILPVaultImplementation.sol';
import {IStableSwapPool} from '../interfaces/IStableSwapPool.sol';
import {IDotDotDepositor} from '../interfaces/IDotDotDepositor.sol';
import {IERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SynthereumInterfaces} from '../../../../core/Constants.sol';
import {PreciseUnitMath} from '../../../../base/utils/PreciseUnitMath.sol';
import {SafeERC20} from '../../../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {Address} from '../../../../../@openzeppelin/contracts/utils/Address.sol';

contract DotDotVault is ILPVaultImplementation {
  using SafeERC20 for IERC20;
  using Address for address;
  using PreciseUnitMath for uint256;

  struct StakeArgs {
    address ellipsisPoolAddress; // address of ellipsis pool to add/remove liquidity
    uint256[2] amounts;
    uint256 minLPTokenOut; // anti slippage
  }

  struct UnstakeArgs {
    bool useNative;
    address ellipsisPoolAddress; // address of ellipsis pool to add/remove liquidity
    uint256[2] minAmounts;
  }

  struct ClaimArgs {
    address[] pools;
    address recipient;
  }

  struct UnstakeAndWithdrawCache {
    UnstakeArgs unstakeArgs;
    address lpToken;
  }

  ISynthereumFinder public immutable synthereumFinder;
  address public immutable depositor;
  address public immutable poolRewardToken;
  address public immutable protocolRewardToken;
  address immutable NATIVE;

  constructor(
    ISynthereumFinder _finder,
    address _depositor,
    address _poolRewardToken,
    address _protocolRewardToken,
    address _nativeTokenAddress
  ) {
    synthereumFinder = _finder;
    depositor = _depositor;
    poolRewardToken = _poolRewardToken;
    protocolRewardToken = _protocolRewardToken;
    NATIVE = _nativeTokenAddress;
  }

  receive() external payable {}

  // deposit liquidity into pool and stake it in dot dot
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
    // unpack user args
    StakeArgs memory stakeArgs = abi.decode(userArgs, (StakeArgs));

    // add liquidity
    (stakeTokenAmountOut, jarvisAmount) = _addLiquidity(stakeArgs, msgSender);

    address lpToken;
    (lpToken, stakeToken) = _getLpAndStakeToken(stakeArgs.ellipsisPoolAddress);

    _stake(stakeTokenAmountOut, lpToken);
  }

  // unstake liquidity from gauge and remove liquidity from pool
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

    UnstakeAndWithdrawCache memory cache;

    // unpack user args
    cache.unstakeArgs = abi.decode(userArgs, (UnstakeArgs));

    (cache.lpToken, stakeTokenUsed) = _getLpAndStakeToken(
      cache.unstakeArgs.ellipsisPoolAddress
    );
    // unstake lp token from dot dot
    _unstake(stakeTokenUsed, lpTokenAmount, cache.lpToken);

    // remove liquidity from pool and send to user
    IERC20(cache.lpToken).safeIncreaseAllowance(
      cache.unstakeArgs.ellipsisPoolAddress,
      lpTokenAmount
    );

    (tokensOut, amountsOut, jarvisAmountOut) = _removeLiquidity(
      cache.unstakeArgs.ellipsisPoolAddress,
      lpTokenAmount,
      cache.unstakeArgs.minAmounts,
      cache.unstakeArgs.useNative,
      recipient
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

    tokenAddresses = new address[](2);
    tokenAddresses[0] = poolRewardToken;
    tokenAddresses[1] = protocolRewardToken;

    // get reward token balances
    uint256[] memory balancesBefore = new uint256[](2);
    for (uint256 i; i < 2; ) {
      balancesBefore[i] = IERC20(tokenAddresses[i]).balanceOf(address(this));
      unchecked {
        i++;
      }
    }
    ClaimArgs memory claimArgs = abi.decode(userArgs, (ClaimArgs));

    // check pools passed as input is valid - reverts internally in that case
    uint256 poolsLength = claimArgs.pools.length;
    address[] memory lpTokens = new address[](poolsLength);
    for (uint256 i; i < poolsLength; ) {
      (lpTokens[i], ) = _getLpAndStakeToken(claimArgs.pools[i]);
      unchecked {
        i++;
      }
    }

    // claim rewards and receive tokens here
    IDotDotDepositor(depositor).claim(address(this), lpTokens, 0);

    // calculate actual reward amounts
    amounts = new uint256[](2);
    address stakingRewardsReceiver = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.StakingRewardsReceiver
    );
    for (uint256 i; i < 2; ) {
      IERC20 rewToken = IERC20(tokenAddresses[i]);

      // get token balance after
      uint256 balanceAfter = rewToken.balanceOf(address(this));
      uint256 actualReward = balanceAfter - balancesBefore[i];

      if (actualReward > 0) {
        // transfer reward commission to dao address
        uint256 daoCommission = actualReward.mul(daoCommissionPercentage);

        if (daoCommission > 0) {
          rewToken.safeTransfer(stakingRewardsReceiver, daoCommission);
        }
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

  function _addLiquidity(StakeArgs memory stakeArgs, address msgSender)
    internal
    returns (uint256 lpTokenOut, uint256 jarvisAmount)
  {
    // unpack storage data from registry
    uint256[2] memory amounts = stakeArgs.amounts;

    address[2] memory depositTokens = _getDepositTokens(
      stakeArgs.ellipsisPoolAddress
    );

    // transfer tokens to deposit and approve pool
    bool useNative = msg.value > 0;
    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    IERC20 token;
    uint256 tokenAmount;
    bool isJarvisSupported;
    for (uint256 i; i < 2; ) {
      if (!(useNative && depositTokens[i] == NATIVE)) {
        token = IERC20(depositTokens[i]);
        tokenAmount = amounts[i];
        if (address(token) == JARVIS && !isJarvisSupported) {
          jarvisAmount = tokenAmount;
          isJarvisSupported = true;
        }
        if (tokenAmount > 0) {
          token.safeTransferFrom(msgSender, address(this), tokenAmount);
          token.safeIncreaseAllowance(
            stakeArgs.ellipsisPoolAddress,
            tokenAmount
          );
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

    // Deposiy liquidity into pool - receive here LP token
    lpTokenOut = IStableSwapPool(stakeArgs.ellipsisPoolAddress).add_liquidity{
      value: msg.value
    }(amounts, stakeArgs.minLPTokenOut, useNative);

    require(lpTokenOut > 0, 'No LP token output');
  }

  function _removeLiquidity(
    address ellipsisPoolAddress,
    uint256 lpTokenAmount,
    uint256[2] memory minAmounts,
    bool useNative,
    address recipient
  )
    internal
    returns (
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    )
  {
    IStableSwapPool pool = IStableSwapPool(ellipsisPoolAddress);

    tokensOut = new address[](2);
    tokensOut[0] = pool.coins(0);
    tokensOut[1] = pool.coins(1);

    // get balances before
    amountsOut = new uint256[](2);

    bool isToken0Native = useNative && (tokensOut[0] == NATIVE);
    bool isToken1Native = useNative && (tokensOut[1] == NATIVE);

    // we assume native wrapped token is always at index 1
    amountsOut[0] = isToken0Native
      ? recipient.balance
      : IERC20(tokensOut[0]).balanceOf(recipient);
    amountsOut[1] = isToken1Native
      ? recipient.balance
      : IERC20(tokensOut[1]).balanceOf(recipient);

    pool.remove_liquidity(lpTokenAmount, minAmounts, useNative, recipient);

    // get balances after and store the difference
    tokensOut[0] = isToken0Native ? address(0) : tokensOut[0];
    tokensOut[1] = isToken1Native ? address(0) : tokensOut[1];
    amountsOut[0] = isToken0Native
      ? recipient.balance - amountsOut[0]
      : IERC20(tokensOut[0]).balanceOf(recipient) - amountsOut[0];
    amountsOut[1] = isToken1Native
      ? recipient.balance - amountsOut[1]
      : IERC20(tokensOut[1]).balanceOf(recipient) - amountsOut[1];

    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    if (tokensOut[0] == JARVIS) {
      jarvisAmountOut = amountsOut[0];
    } else if (tokensOut[1] == JARVIS) {
      jarvisAmountOut = amountsOut[1];
    }
  }

  // stake LP token into dot dot - return token amount is 1:1 with input amount
  function _stake(uint256 lpTokenAmount, address lpToken) internal {
    IERC20(lpToken).safeIncreaseAllowance(depositor, lpTokenAmount);
    IDotDotDepositor(depositor).deposit(address(this), lpToken, lpTokenAmount);
  }

  function _unstake(
    address stakeToken,
    uint256 lpTokenAmount,
    address lpToken
  ) internal {
    IERC20(stakeToken).safeIncreaseAllowance(depositor, lpTokenAmount);
    IDotDotDepositor(depositor).withdraw(address(this), lpToken, lpTokenAmount);
  }

  function _getLpAndStakeToken(address pool)
    internal
    view
    returns (address lpToken, address stakeToken)
  {
    lpToken = IStableSwapPool(pool).token();
    stakeToken = IDotDotDepositor(depositor).depositTokens(lpToken);
    require(stakeToken != address(0), 'Bad pool address');
  }

  function _getDepositTokens(address pool)
    internal
    view
    returns (address[2] memory depositTokens)
  {
    depositTokens[0] = IStableSwapPool(pool).coins(0);
    depositTokens[1] = IStableSwapPool(pool).coins(1);
  }
}
