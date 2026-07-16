// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {ERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Receiver.sol";
import {CatchError} from "@timeswap-labs/v2-library/contracts/CatchError.sol";

import {StrikeConversion} from "@timeswap-labs/v2-library/contracts/StrikeConversion.sol";

import {ITimeswapV2OptionFactory} from "@timeswap-labs/v2-option/contracts/interfaces/ITimeswapV2OptionFactory.sol";
import {ITimeswapV2Option} from "@timeswap-labs/v2-option/contracts/interfaces/ITimeswapV2Option.sol";

import {OptionFactoryLibrary} from "@timeswap-labs/v2-option/contracts/libraries/OptionFactory.sol";

import {TimeswapV2OptionBurnParam, TimeswapV2OptionSwapParam} from "@timeswap-labs/v2-option/contracts/structs/Param.sol";
import {TimeswapV2OptionSwapCallbackParam} from "@timeswap-labs/v2-option/contracts/structs/CallbackParam.sol";

import {TimeswapV2OptionBurn, TimeswapV2OptionSwap} from "@timeswap-labs/v2-option/contracts/enums/Transaction.sol";
import {TimeswapV2OptionPosition} from "@timeswap-labs/v2-option/contracts/enums/Position.sol";

import {ITimeswapV2PoolFactory} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2PoolFactory.sol";
import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {TimeswapV2PoolBurnParam} from "@timeswap-labs/v2-pool/contracts/structs/Param.sol";
import {TimeswapV2PoolBurnChoiceCallbackParam, TimeswapV2PoolBurnCallbackParam} from "@timeswap-labs/v2-pool/contracts/structs/CallbackParam.sol";

import {TimeswapV2PoolBurn} from "@timeswap-labs/v2-pool/contracts/enums/Transaction.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2Token} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2Token.sol";
import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2TokenMintParam, TimeswapV2LiquidityTokenBurnParam} from "@timeswap-labs/v2-token/contracts/structs/Param.sol";
import {TimeswapV2TokenMintCallbackParam} from "@timeswap-labs/v2-token/contracts/structs/CallbackParam.sol";

import {TimeswapV2LiquidityTokenBurnParam} from "@timeswap-labs/v2-token/contracts/structs/Param.sol";
import {TimeswapV2LiquidityTokenBurnCallbackParam} from "@timeswap-labs/v2-token/contracts/structs/CallbackParam.sol";

import {ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition} from "../interfaces/lens/ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition.sol";

import {TimeswapV2PeripheryRemoveLiquidityGivenPositionParam} from "../structs/Param.sol";
import {TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam} from "../structs/InternalParam.sol";

import {Verify} from "../libraries/Verify.sol";
import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

abstract contract TimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition is
  ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition,
  ERC1155Receiver
{
  using Math for uint256;
  using CatchError for bytes;

  /* ===== MODEL ===== */
  /// @inheritdoc ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition
  address public immutable override optionFactory;
  /// @inheritdoc ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition
  address public immutable override poolFactory;
  /// @inheritdoc ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition
  address public immutable override tokens;
  /// @inheritdoc ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition
  address public immutable override liquidityTokens;

  /* ===== INIT ===== */

  constructor(
    address chosenOptionFactory,
    address chosenPoolFactory,
    address chosenTokens,
    address chosenLiquidityTokens
  ) {
    optionFactory = chosenOptionFactory;
    poolFactory = chosenPoolFactory;
    tokens = chosenTokens;
    liquidityTokens = chosenLiquidityTokens;
  }

  function removeLiquidityGivenPosition(
    TimeswapV2PeripheryRemoveLiquidityGivenPositionParam memory param,
    uint96 durationForward
  )
    internal
    returns (
      uint256 token0Amount,
      uint256 token1Amount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      bytes memory data,
      uint160 timeswapV2LiquidityAfter
    )
  {
    data = abi.encode(
      param.token0To,
      param.token1To,
      param.excessLong0To,
      param.excessLong1To,
      param.excessShortTo,
      param.preferLong0Excess,
      durationForward,
      param.data
    );

    CallbackInfo memory callbackInfo;
    try
      ITimeswapV2LiquidityToken(liquidityTokens).burn(
        TimeswapV2LiquidityTokenBurnParam({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity,
          to: address(this),
          liquidityAmount: param.liquidityAmount,
          data: data
        })
      )
    {} catch (bytes memory reason) {
      data = reason.catchError(PassLiquidityTokenBurnCallbackInfo.selector);
      (callbackInfo, data) = abi.decode(data, (CallbackInfo, bytes));
    }

    token0Amount = callbackInfo.token0Amount;
    token1Amount = callbackInfo.token1Amount;
    excessLong0Amount = callbackInfo.excessLong0Amount;
    excessLong1Amount = callbackInfo.excessLong1Amount;
    excessShortAmount = callbackInfo.excessShortAmount;
    timeswapV2LiquidityAfter = callbackInfo.timeswapV2LiquidityAfter;
  }

  struct CacheForTimeswapV2LiquidityTokenBurnCallback {
    address token0To;
    address token1To;
    address excessLong0To;
    address excessLong1To;
    address excessShortTo;
    bool preferLong0Excess;
    uint96 durationForward;
  }

  struct CacheForPassPoolBurnCallbackInfo {
    uint160 timeswapV2LiquidityAfter;
    uint256 token0Amount;
    uint256 token1Amount;
    uint256 excessLong0Amount;
    uint256 excessLong1Amount;
    uint256 excessShortAmount;
  }

  function timeswapV2LiquidityTokenBurnCallback(
    TimeswapV2LiquidityTokenBurnCallbackParam calldata param
  ) external returns (bytes memory data) {
    CacheForTimeswapV2LiquidityTokenBurnCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2LiquidityTokenBurnCallback, bytes));

    (, address poolPair) = PoolFactoryLibrary.getWithCheck(optionFactory, poolFactory, param.token0, param.token1);

    data = abi.encode(
      param.token0,
      param.token1,
      cache.token0To,
      cache.token1To,
      cache.excessLong0To,
      cache.excessLong1To,
      cache.excessShortTo,
      cache.preferLong0Excess,
      data
    );

    CallbackInfo memory callbackInfo;
    try
      ITimeswapV2Pool(poolPair).burn(
        TimeswapV2PoolBurnParam({
          strike: param.strike,
          maturity: param.maturity,
          long0To: address(this),
          long1To: address(this),
          shortTo: address(this),
          transaction: TimeswapV2PoolBurn.GivenLiquidity,
          delta: param.liquidityAmount,
          data: data
        }),
        cache.durationForward
      )
    {} catch (bytes memory reason) {
      data = reason.catchError(PassPoolBurnCallbackInfo.selector);
      (callbackInfo, data) = abi.decode(data, (CallbackInfo, bytes));
    }

    revert PassLiquidityTokenBurnCallbackInfo(callbackInfo, data);
  }

  struct CacheForTimeswapV2PoolBurnChoiceCallback {
    address token0;
    address token1;
    address token0To;
    address token1To;
    address excessLong0To;
    address excessLong1To;
    address excessShortTo;
    bool preferLong0Excess;
  }

  function timeswapV2PoolBurnChoiceCallback(
    TimeswapV2PoolBurnChoiceCallbackParam calldata param
  ) external returns (uint256 long0Amount, uint256 long1Amount, bytes memory data) {
    CacheForTimeswapV2PoolBurnChoiceCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2PoolBurnChoiceCallback, bytes));

    Verify.timeswapV2Pool(optionFactory, poolFactory, cache.token0, cache.token1);

    if (param.shortAmount >= param.longAmount) {
      (long0Amount, long1Amount, data) = timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
        TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam({
          token0: cache.token0,
          token1: cache.token1,
          strike: param.strike,
          maturity: param.maturity,
          token0Balance: param.long0Balance,
          token1Balance: param.long1Balance,
          tokenAmount: param.longAmount,
          data: data
        })
      );

      data = abi.encode(
        CacheForTimeswapV2PoolBurnCallback(
          cache.token0,
          cache.token1,
          cache.token0To,
          cache.token1To,
          cache.excessLong0To,
          cache.excessLong1To,
          cache.excessShortTo,
          0,
          0,
          param.shortAmount.unsafeSub(param.longAmount)
        ),
        data
      );
    } else {
      uint256 tokenAmount = StrikeConversion.combine(
        cache.preferLong0Excess ? param.shortAmount : 0,
        cache.preferLong0Excess ? 0 : param.shortAmount,
        param.strike,
        true
      );

      uint256 preferredExcessLongAmount = StrikeConversion.turn(
        param.longAmount,
        param.strike,
        !cache.preferLong0Excess,
        false
      ) - StrikeConversion.turn(tokenAmount, param.strike, !cache.preferLong0Excess, false);
      uint256 excessLongAmount;

      if (preferredExcessLongAmount >= (cache.preferLong0Excess ? param.long0Balance : param.long1Balance)) {
        excessLongAmount = StrikeConversion.convert(
          preferredExcessLongAmount.unsafeSub(cache.preferLong0Excess ? param.long0Balance : param.long1Balance),
          param.strike,
          cache.preferLong0Excess,
          false
        );
        preferredExcessLongAmount = cache.preferLong0Excess ? param.long0Balance : param.long1Balance;
      }

      (long0Amount, long1Amount, data) = timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
        TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam({
          token0: cache.token0,
          token1: cache.token1,
          strike: param.strike,
          maturity: param.maturity,
          token0Balance: param.long0Balance - (cache.preferLong0Excess ? preferredExcessLongAmount : excessLongAmount),
          token1Balance: param.long1Balance - (cache.preferLong0Excess ? excessLongAmount : preferredExcessLongAmount),
          tokenAmount: tokenAmount,
          data: data
        })
      );

      long0Amount += (cache.preferLong0Excess ? preferredExcessLongAmount : excessLongAmount);
      long1Amount += (cache.preferLong0Excess ? excessLongAmount : preferredExcessLongAmount);

      data = abi.encode(
        CacheForTimeswapV2PoolBurnCallback(
          cache.token0,
          cache.token1,
          cache.token0To,
          cache.token1To,
          cache.excessLong0To,
          cache.excessLong1To,
          cache.excessShortTo,
          cache.preferLong0Excess ? preferredExcessLongAmount : excessLongAmount,
          cache.preferLong0Excess ? excessLongAmount : preferredExcessLongAmount,
          0
        ),
        data
      );
    }
  }

  struct CacheForTimeswapV2PoolBurnCallback {
    address token0;
    address token1;
    address token0To;
    address token1To;
    address excessLong0To;
    address excessLong1To;
    address excessShortTo;
    uint256 excessLong0Amount;
    uint256 excessLong1Amount;
    uint256 excessShortAmount;
  }

  function timeswapV2PoolBurnCallback(
    TimeswapV2PoolBurnCallbackParam calldata param
  ) external returns (bytes memory data) {
    CacheForTimeswapV2PoolBurnCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2PoolBurnCallback, bytes));

    address optionPair = OptionFactoryLibrary.getWithCheck(optionFactory, cache.token0, cache.token1);

    uint256 token0Amount = param.long0Amount - cache.excessLong0Amount;
    uint256 token1Amount = param.long1Amount - cache.excessLong1Amount;
    ITimeswapV2Option(optionPair).burn(
      TimeswapV2OptionBurnParam({
        strike: param.strike,
        maturity: param.maturity,
        token0To: cache.token0To,
        token1To: cache.token1To,
        transaction: TimeswapV2OptionBurn.GivenTokensAndLongs,
        amount0: token0Amount,
        amount1: token1Amount,
        data: bytes("")
      })
    );

    if (cache.excessLong0Amount != 0 || cache.excessLong1Amount != 0 || cache.excessShortAmount != 0)
      ITimeswapV2Token(tokens).mint(
        TimeswapV2TokenMintParam({
          token0: cache.token0,
          token1: cache.token1,
          strike: param.strike,
          maturity: param.maturity,
          long0To: cache.excessLong0To,
          long1To: cache.excessLong1To,
          shortTo: cache.excessShortTo,
          long0Amount: cache.excessLong0Amount,
          long1Amount: cache.excessLong1Amount,
          shortAmount: cache.excessShortAmount,
          data: bytes("")
        })
      );

    uint160 timeswapV2LiquidityAfter = ITimeswapV2Pool(msg.sender).totalLiquidity(param.strike, param.maturity);

    revert PassPoolBurnCallbackInfo(
      CallbackInfo(
        timeswapV2LiquidityAfter,
        token0Amount,
        token1Amount,
        cache.excessLong0Amount,
        cache.excessLong1Amount,
        cache.excessShortAmount
      ),
      data
    );
  }

  function timeswapV2TokenMintCallback(
    TimeswapV2TokenMintCallbackParam calldata param
  ) external returns (bytes memory data) {
    Verify.timeswapV2Token(tokens);

    address optionPair = OptionFactoryLibrary.get(optionFactory, param.token0, param.token1);

    if (param.long0Amount != 0)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Long0,
        param.long0Amount
      );

    if (param.long1Amount != 0)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Long1,
        param.long1Amount
      );

    if (param.shortAmount != 0)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Short,
        param.shortAmount
      );

    data = bytes("");
  }

  function timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
    TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam memory param
  ) internal virtual returns (uint256 token0Amount, uint256 token1Amount, bytes memory data);
}
