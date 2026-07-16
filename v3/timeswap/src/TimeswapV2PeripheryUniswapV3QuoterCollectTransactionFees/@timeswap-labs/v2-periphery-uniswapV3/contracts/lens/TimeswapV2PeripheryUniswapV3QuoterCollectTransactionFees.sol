// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {Error} from "@timeswap-labs/v2-library/contracts/Error.sol";

import {StrikeConversion} from "@timeswap-labs/v2-library/contracts/StrikeConversion.sol";

import {TimeswapV2LiquidityTokenPosition} from "@timeswap-labs/v2-token/contracts/structs/Position.sol";

import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2PeripheryQuoterCollectTransactionFees} from "@timeswap-labs/v2-periphery/contracts/lens/TimeswapV2PeripheryQuoterCollectTransactionFees.sol";

import {TimeswapV2PeripheryCollectTransactionFeesParam} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";
import {TimeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternalParam} from "@timeswap-labs/v2-periphery/contracts/structs/InternalParam.sol";

import {UniswapV3FactoryLibrary} from "../libraries/UniswapV3Factory.sol";
import {UniswapV3PoolLibrary} from "../libraries/UniswapV3Pool.sol";

import {ITimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees} from "../interfaces/lens/ITimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees.sol";

import {Verify} from "../libraries/Verify.sol";

import {TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFeesParam, UniswapV3SwapQuoterParam} from "../structs/lens/QuoterParam.sol";
import {UniswapV3CalculateSwapGivenBalanceLimitParam} from "../structs/SwapParam.sol";

import {UniswapImmutableState, UniswapV3Callback} from "../base/UniswapV3SwapCallback.sol";
import {SwapCalculatorGivenBalanceLimit} from "../base/SwapCalculator.sol";
import {SwapQuoterGetTotalToken} from "../base/lens/SwapCalculatorQuoter.sol";
import {Multicall} from "../base/Multicall.sol";
import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

contract TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees is
  ITimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees,
  TimeswapV2PeripheryQuoterCollectTransactionFees,
  UniswapV3Callback,
  SwapCalculatorGivenBalanceLimit,
  SwapQuoterGetTotalToken,
  Multicall
{
  using UniswapV3PoolLibrary for address;
  using Math for uint256;

  constructor(
    address chosenOptionFactory,
    address chosenPoolFactory,
    address chosenTokens,
    address chosenLiquidityTokens,
    address chosenUniswapV3Factory
  )
    TimeswapV2PeripheryQuoterCollectTransactionFees(
      chosenOptionFactory,
      chosenPoolFactory,
      chosenTokens,
      chosenLiquidityTokens
    )
    UniswapImmutableState(chosenUniswapV3Factory)
  {}

  function collectTransactionFees(
    TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFeesParam calldata param
  )
    external
    returns (
      uint256 tokenAmount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      uint160 uniswapV3SqrtPriceAfter
    )
  {
    bytes memory data = abi.encode(param.uniswapV3Fee, param.isToken0);

    uint256 token0Amount;
    uint256 token1Amount;
    (
      token0Amount,
      token1Amount,
      excessLong0Amount,
      excessLong1Amount,
      excessShortAmount,
      data
    ) = collectTransactionFees(
      TimeswapV2PeripheryCollectTransactionFeesParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        maturity: param.maturity,
        token0To: param.isToken0 ? param.tokenTo : address(this),
        token1To: param.isToken0 ? address(this) : param.tokenTo,
        excessLong0To: param.excessLong0To,
        excessLong1To: param.excessLong1To,
        excessShortTo: param.excessShortTo,
        long0Requested: param.long0Requested,
        long1Requested: param.long1Requested,
        shortRequested: param.shortRequested,
        data: data
      })
    );

    (tokenAmount, uniswapV3SqrtPriceAfter) = quoteSwapGetTotalToken(
      param.token0,
      param.token1,
      param.strike,
      param.uniswapV3Fee,
      param.tokenTo,
      param.isToken0,
      token0Amount,
      token1Amount,
      (excessLong0Amount == 0 && excessLong1Amount == 0) ? false : abi.decode(data, (bool))
    );
  }

  function timeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternal(
    TimeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternalParam memory param
  ) internal override returns (uint256 token0Amount, uint256 token1Amount, bytes memory data) {
    (uint24 uniswapV3Fee, bool isToken0) = abi.decode(param.data, (uint24, bool));

    bool removeStrikeLimit;
    (removeStrikeLimit, token0Amount, token1Amount) = calculateSwapGivenBalanceLimit(
      UniswapV3CalculateSwapGivenBalanceLimitParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        uniswapV3Fee: uniswapV3Fee,
        isToken0: isToken0,
        token0Balance: param.token0Balance,
        token1Balance: param.token1Balance,
        tokenAmount: param.tokenAmount
      })
    );

    data = abi.encode(removeStrikeLimit);
  }
}
