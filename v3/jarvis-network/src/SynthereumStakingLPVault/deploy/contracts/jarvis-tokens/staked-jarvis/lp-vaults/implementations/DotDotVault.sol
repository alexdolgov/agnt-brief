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

  struct StorageData {
    address dotDotDepositorAddress; // address of dot dot depositor address
    address[] tokenRewards; // list of token addresses to claim as reward
    uint256 daoCommissionPercentage; // percentage of rewards that goes to dao address
  }

  struct StakeArgs {
    address ellipsisPoolAddress; // address of ellipsis pool to add/remove liquidity
    uint256[2] amounts;
    uint256 minLPTokenOut; // anti slippage
  }

  struct UnstakeArgs {
    bool useEth;
    address ellipsisPoolAddress; // address of ellipsis pool to add/remove liquidity
    uint256[2] minAmounts;
  }

  struct ClaimArgs {
    address[] pools;
    address recipient;
  }

  struct UnstakeAndWithdrawCache {
    StorageData moduleArgs;
    UnstakeArgs unstakeArgs;
    address lpToken;
  }

  ISynthereumFinder public immutable synthereumFinder;

  constructor(ISynthereumFinder _finder) {
    synthereumFinder = _finder;
  }

  receive() external payable {}

  // deposit liquidity into pool and stake it in dot dot
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

    // unpack user args
    StakeArgs memory stakeArgs = abi.decode(userArgs, (StakeArgs));

    // add liquidity
    (stakeTokenAmountOut, jarvisAmount) = _addLiquidity(stakeArgs, msgSender);

    // stake into dot dot - output is 1:1 with input amount
    address depositor = moduleArgs.dotDotDepositorAddress;
    address lpToken;
    (lpToken, stakeToken) = _getLpAndStakeToken(
      stakeArgs.ellipsisPoolAddress,
      depositor
    );

    _dotDotStake(stakeTokenAmountOut, depositor, lpToken);
  }

  // unstake liquidity from gauge and remove liquidity from pool
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
    UnstakeAndWithdrawCache memory cache;
    // unpack module args
    cache.moduleArgs = abi.decode(vaultArgs, (StorageData));

    // unpack user args
    cache.unstakeArgs = abi.decode(userArgs, (UnstakeArgs));

    (cache.lpToken, stakeTokenUsed) = _getLpAndStakeToken(
      cache.unstakeArgs.ellipsisPoolAddress,
      cache.moduleArgs.dotDotDepositorAddress
    );
    // unstake lp token from dot dot
    {
      IERC20(stakeTokenUsed).safeIncreaseAllowance(
        cache.moduleArgs.dotDotDepositorAddress,
        lpTokenAmount
      );
      IDotDotDepositor(cache.moduleArgs.dotDotDepositorAddress).withdraw(
        address(this),
        cache.lpToken,
        lpTokenAmount
      );
    }

    // remove liquidity from pool and send to user
    IERC20(cache.lpToken).safeIncreaseAllowance(
      cache.unstakeArgs.ellipsisPoolAddress,
      lpTokenAmount
    );

    (tokensOut, amountsOut, jarvisAmountOut) = _removeLiquidity(
      cache.unstakeArgs.ellipsisPoolAddress,
      lpTokenAmount,
      cache.unstakeArgs.minAmounts,
      cache.unstakeArgs.useEth,
      recipient
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

    IDotDotDepositor dotDotDepositor = IDotDotDepositor(
      moduleArgs.dotDotDepositorAddress
    );

    tokenAddresses = moduleArgs.tokenRewards;

    // get reward token balances
    uint256 numTokens = tokenAddresses.length;
    uint256[] memory balancesBefore = new uint256[](numTokens);
    for (uint256 i; i < numTokens; ) {
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
      (lpTokens[i], ) = _getLpAndStakeToken(
        claimArgs.pools[i],
        address(dotDotDepositor)
      );
      unchecked {
        i++;
      }
    }

    // claim rewards and receive tokens here
    dotDotDepositor.claim(address(this), lpTokens, 0);

    // calculate actual reward amounts
    amounts = new uint256[](numTokens);
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
    bool isEth = msg.value > 0;
    address JARVIS = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.JarvisToken
    );
    IERC20 token;
    uint256 tokenAmount;
    bool isJarvisSupported;
    for (uint256 i; i < (isEth ? 1 : 2); ) {
      token = IERC20(depositTokens[i]);
      tokenAmount = amounts[i];
      if (address(token) == JARVIS && !isJarvisSupported) {
        jarvisAmount = tokenAmount;
        isJarvisSupported = true;
      }
      token.safeTransferFrom(msgSender, address(this), tokenAmount);
      token.safeIncreaseAllowance(stakeArgs.ellipsisPoolAddress, tokenAmount);
      unchecked {
        i++;
      }
    }
    require(isJarvisSupported, 'No Jarvis token supported by the pool');

    // Deposiy liquidity into pool - receive here LP token
    lpTokenOut = IStableSwapPool(stakeArgs.ellipsisPoolAddress).add_liquidity{
      value: msg.value
    }(amounts, stakeArgs.minLPTokenOut, isEth);
  }

  function _removeLiquidity(
    address ellipsisPoolAddress,
    uint256 lpTokenAmount,
    uint256[2] memory minAmounts,
    bool useEth,
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

    // we assume native wrapped token is always at index 1
    amountsOut[0] = IERC20(tokensOut[0]).balanceOf(recipient);
    amountsOut[1] = useEth
      ? recipient.balance
      : IERC20(tokensOut[1]).balanceOf(recipient);

    pool.remove_liquidity(lpTokenAmount, minAmounts, useEth, recipient);

    // get balances after and store the difference
    amountsOut[0] = IERC20(tokensOut[0]).balanceOf(recipient) - amountsOut[0];
    amountsOut[1] = useEth
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
  function _dotDotStake(
    uint256 lpTokenAmount,
    address depositor,
    address lpToken
  ) internal {
    IERC20(lpToken).safeIncreaseAllowance(depositor, lpTokenAmount);
    IDotDotDepositor(depositor).deposit(address(this), lpToken, lpTokenAmount);
  }

  function _getLpAndStakeToken(address pool, address depositor)
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
