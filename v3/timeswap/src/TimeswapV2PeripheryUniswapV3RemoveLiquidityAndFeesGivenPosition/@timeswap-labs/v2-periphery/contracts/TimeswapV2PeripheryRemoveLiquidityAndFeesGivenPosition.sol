// SPDX-License-Identifier: MIT
pragma solidity =0.8.8;

import {ERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Receiver.sol";

import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";
import {StrikeConversion} from "@timeswap-labs/v2-library/contracts/StrikeConversion.sol";

import {ITimeswapV2Option} from "@timeswap-labs/v2-option/contracts/interfaces/ITimeswapV2Option.sol";

import {TimeswapV2OptionBurnParam} from "@timeswap-labs/v2-option/contracts/structs/Param.sol";
import {TimeswapV2OptionBurnCallbackParam} from "@timeswap-labs/v2-option/contracts/structs/CallbackParam.sol";

import {TimeswapV2OptionBurn} from "@timeswap-labs/v2-option/contracts/enums/Transaction.sol";
import {TimeswapV2OptionPosition} from "@timeswap-labs/v2-option/contracts/enums/Position.sol";

import {ITimeswapV2PoolFactory} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2PoolFactory.sol";
import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {TimeswapV2PoolBurnParam, TimeswapV2PoolCollectParam, TimeswapV2PoolAddFeesParam} from "@timeswap-labs/v2-pool/contracts/structs/Param.sol";
import {TimeswapV2PoolBurnChoiceCallbackParam, TimeswapV2PoolBurnCallbackParam, TimeswapV2PoolAddFeesCallbackParam} from "@timeswap-labs/v2-pool/contracts/structs/CallbackParam.sol";

import {TimeswapV2PoolBurn} from "@timeswap-labs/v2-pool/contracts/enums/Transaction.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2LiquidityTokenBurnParam, TimeswapV2LiquidityTokenCollectParam, TimeswapV2LiquidityTokenAddFeesParam} from "@timeswap-labs/v2-token/contracts/structs/Param.sol";

import {ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition} from "./interfaces/ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition.sol";

import {TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionParam, FeesDelta} from "./structs/Param.sol";
import {TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternalParam} from "./structs/InternalParam.sol";

import {TimeswapV2LiquidityTokenPosition} from "@timeswap-labs/v2-token/contracts/structs/Position.sol";
import {TimeswapV2LiquidityTokenAddFeesCallbackParam} from "@timeswap-labs/v2-token/contracts/structs/CallbackParam.sol";

import {Verify} from "./libraries/Verify.sol";

/// @title Abstract contract which specifies functions that are required for  remove liquidity which are to be inherited for a specific DEX/Aggregator implementation
abstract contract TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition is
  ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition,
  ERC1155Receiver
{
  using Math for uint256;

  /* ===== MODEL ===== */
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition
  address public immutable override optionFactory;
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition
  address public immutable override poolFactory;
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition
  address public immutable override liquidityTokens;

  /* ===== INIT ===== */

  constructor(address chosenOptionFactory, address chosenPoolFactory, address chosenLiquidityTokens) {
    optionFactory = chosenOptionFactory;
    poolFactory = chosenPoolFactory;
    liquidityTokens = chosenLiquidityTokens;
  }

  /// @notice the abstract implementation for remove liquidity function
  /// @param param params for  removeLiquidity as mentioned in the TimeswapV2PeripheryRemoveLiquidityGivenPositionParam struct
  /// @return token0Amount the resulting token0Amount
  /// @return token1Amount the resulting token1Amount
  /// @return feesDelta Delta of fees
  /// @return data data passed as bytes in the param
  function removeLiquidityAndFeesGivenPosition(
    TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionParam memory param
  ) internal returns (uint256 token0Amount, uint256 token1Amount, FeesDelta memory feesDelta, bytes memory data) {
    (address optionPair, address poolPair) = PoolFactoryLibrary.getWithCheck(
      optionFactory,
      poolFactory,
      param.token0,
      param.token1
    );

    ITimeswapV2LiquidityToken(liquidityTokens).burn(
      TimeswapV2LiquidityTokenBurnParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        maturity: param.maturity,
        to: address(this),
        liquidityAmount: param.liquidityAmount,
        data: bytes("")
      })
    );

    (feesDelta.long0Fees, feesDelta.long1Fees, feesDelta.shortFees) = ITimeswapV2LiquidityToken(liquidityTokens)
      .feesEarnedOf(
        msg.sender,
        TimeswapV2LiquidityTokenPosition({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity
        })
      );

    data = abi.encode(
      param.token0,
      param.token1,
      feesDelta.long0Fees,
      feesDelta.long1Fees,
      feesDelta.shortFees,
      param.data
    );

    uint256 token0AmountFromPool;
    uint256 token1AmountFromPool;
    uint256 shortAmountFromPool;
    (, token0AmountFromPool, token1AmountFromPool, shortAmountFromPool, data) = ITimeswapV2Pool(poolPair).burn(
      TimeswapV2PoolBurnParam({
        strike: param.strike,
        maturity: param.maturity,
        long0To: address(this),
        long1To: address(this),
        shortTo: address(this),
        transaction: TimeswapV2PoolBurn.GivenLiquidity,
        delta: param.liquidityAmount,
        data: data
      })
    );

    (token0Amount, token1Amount, data) = abi.decode(data, (uint256, uint256, bytes));

    data = abi.encode(
      CacheForTimeswapV2OptionBurnCallback(
        param.token0,
        param.token1,
        msg.sender,
        token0AmountFromPool,
        token1AmountFromPool,
        shortAmountFromPool
      ),
      data
    );

    (, , , data) = ITimeswapV2Option(optionPair).burn(
      TimeswapV2OptionBurnParam({
        strike: param.strike,
        maturity: param.maturity,
        token0To: param.token0To,
        token1To: param.token1To,
        transaction: TimeswapV2OptionBurn.GivenTokensAndLongs,
        amount0: token0Amount,
        amount1: token1Amount,
        data: data
      })
    );

    (feesDelta, data) = abi.decode(data, (FeesDelta, bytes));
  }

  /// @notice the implementation which is to be overriden for DEX/Aggregator specific logic for TimeswapV2PoolBurnChoiceCallback
  /// @param param params for calling the implementation specfic poolBurnChoiceCallback to be overriden
  /// @return long0Amount resulting long0 amount
  /// @return long1Amount resulting long1 amount
  /// @return data data passed in bytes in the param passed back
  function timeswapV2PoolBurnChoiceCallback(
    TimeswapV2PoolBurnChoiceCallbackParam calldata param
  ) external returns (uint256 long0Amount, uint256 long1Amount, bytes memory data) {
    address token0;
    address token1;
    uint256 long0Fees;
    uint256 long1Fees;
    uint256 shortFees;
    (token0, token1, data) = abi.decode(param.data, (address, address, bytes));

    Verify.timeswapV2Pool(optionFactory, poolFactory, token0, token1);

    uint256 token0AmountWithdraw;
    uint256 token1AmountWithdraw;

    uint256 tokenAmountWithdraw = (param.shortAmount + shortFees).min(
      param.longAmount + StrikeConversion.combine(long0Fees, long1Fees, param.strike, true)
    );
    (
      long0Amount,
      long1Amount,
      token0AmountWithdraw,
      token1AmountWithdraw,
      data
    ) = timeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternal(
      TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternalParam({
        token0: token0,
        token1: token1,
        strike: param.strike,
        maturity: param.maturity,
        token0Balance: param.long0Balance,
        token1Balance: param.long1Balance,
        token0Fees: long0Fees,
        token1Fees: long1Fees,
        tokenAmountFromPool: param.longAmount,
        tokenAmountWithdraw: tokenAmountWithdraw,
        data: data
      })
    );

    data = abi.encode(token0AmountWithdraw, token1AmountWithdraw, data);
  }

  function timeswapV2PoolBurnCallback(
    TimeswapV2PoolBurnCallbackParam calldata param
  ) external pure override returns (bytes memory data) {
    data = param.data;
  }

  struct CacheForTimeswapV2OptionBurnCallback {
    address token0;
    address token1;
    address msgSender;
    uint256 long0Amount;
    uint256 long1Amount;
    uint256 shortAmount;
  }

  function timeswapV2OptionBurnCallback(
    TimeswapV2OptionBurnCallbackParam calldata param
  ) external override returns (bytes memory data) {
    CacheForTimeswapV2OptionBurnCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2OptionBurnCallback, bytes));

    Verify.timeswapV2Option(optionFactory, cache.token0, cache.token1);

    bool isWithdrawLong0Fees = param.token0AndLong0Amount >= cache.long0Amount;
    bool isWithdrawLong1Fees = param.token1AndLong1Amount >= cache.long1Amount;
    bool isWithdrawShortFees = param.shortAmount >= cache.shortAmount;

    cache.long0Amount = isWithdrawLong0Fees
      ? param.token0AndLong0Amount.unsafeSub(cache.long0Amount)
      : cache.long0Amount.unsafeSub(param.token0AndLong0Amount);
    cache.long1Amount = isWithdrawLong1Fees
      ? param.token1AndLong1Amount.unsafeSub(cache.long1Amount)
      : cache.long1Amount.unsafeSub(param.token1AndLong1Amount);
    cache.shortAmount = isWithdrawShortFees
      ? param.shortAmount.unsafeSub(cache.shortAmount)
      : cache.shortAmount.unsafeSub(param.shortAmount);

    address poolPair = ITimeswapV2PoolFactory(poolFactory).get(msg.sender);

    if (
      (isWithdrawLong0Fees && cache.long0Amount != 0) ||
      (isWithdrawLong1Fees && cache.long1Amount != 0) ||
      (isWithdrawShortFees && cache.shortAmount != 0)
    ) {
      ITimeswapV2LiquidityToken(liquidityTokens).collect(
        TimeswapV2LiquidityTokenCollectParam({
          token0: cache.token0,
          token1: cache.token1,
          strike: param.strike,
          maturity: param.maturity,
          to: address(this),
          long0FeesDesired: isWithdrawLong0Fees ? cache.long0Amount : 0,
          long1FeesDesired: isWithdrawLong1Fees ? cache.long1Amount : 0,
          shortFeesDesired: isWithdrawShortFees ? cache.shortAmount : 0,
          data: bytes("")
        })
      );

      ITimeswapV2Pool(poolPair).collectTransactionFees(
        TimeswapV2PoolCollectParam({
          strike: param.strike,
          maturity: param.maturity,
          long0To: address(this),
          long1To: address(this),
          shortTo: address(this),
          long0Requested: isWithdrawLong0Fees ? cache.long0Amount : 0,
          long1Requested: isWithdrawLong1Fees ? cache.long1Amount : 0,
          shortRequested: isWithdrawShortFees ? cache.shortAmount : 0
        })
      );
    }

    if (
      (!isWithdrawLong0Fees && cache.long0Amount != 0) ||
      (!isWithdrawLong1Fees && cache.long1Amount != 0) ||
      (!isWithdrawShortFees && cache.shortAmount != 0)
    )
      ITimeswapV2LiquidityToken(liquidityTokens).addFees(
        TimeswapV2LiquidityTokenAddFeesParam({
          token0: cache.token0,
          token1: cache.token1,
          strike: param.strike,
          maturity: param.maturity,
          to: cache.msgSender,
          long0Fees: isWithdrawLong0Fees ? 0 : cache.long0Amount,
          long1Fees: isWithdrawLong1Fees ? 0 : cache.long1Amount,
          shortFees: isWithdrawShortFees ? 0 : cache.shortAmount,
          data: bytes("")
        })
      );

    data = abi.encode(
      FeesDelta(
        isWithdrawLong0Fees,
        isWithdrawLong1Fees,
        isWithdrawShortFees,
        cache.long0Amount,
        cache.long1Amount,
        cache.shortAmount
      ),
      data
    );
  }

  function timeswapV2LiquidityTokenAddFeesCallback(
    TimeswapV2LiquidityTokenAddFeesCallbackParam calldata param
  ) external returns (bytes memory data) {
    Verify.timeswapV2LiquidityToken(liquidityTokens);

    (, address poolPair) = PoolFactoryLibrary.get(optionFactory, poolFactory, param.token0, param.token1);

    ITimeswapV2Pool(poolPair).addFees(
      TimeswapV2PoolAddFeesParam({
        strike: param.strike,
        maturity: param.maturity,
        to: msg.sender,
        long0Fees: param.long0Fees,
        long1Fees: param.long1Fees,
        shortFees: param.shortFees,
        data: abi.encode(param.token0, param.token1)
      })
    );

    data = bytes("");
  }

  /// @notice the abstract implementation for TimeswapV2PoolAddFeesCallback
  /// @param param params for addFeesCallback from TimeswapV2Pool
  /// @return data data passed in bytes in the param passed back
  function timeswapV2PoolAddFeesCallback(
    TimeswapV2PoolAddFeesCallbackParam calldata param
  ) external override returns (bytes memory data) {
    (address token0, address token1) = abi.decode(param.data, (address, address));

    address optionPair = Verify.timeswapV2Pool(optionFactory, poolFactory, token0, token1);

    if (param.long0Fees != 0)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Long0,
        param.long0Fees
      );

    if (param.long1Fees != 0)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Long1,
        param.long1Fees
      );

    if (param.shortFees != 0)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Short,
        param.shortFees
      );

    data = bytes("");
  }

  function timeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternal(
    TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternalParam memory param
  )
    internal
    virtual
    returns (
      uint256 token0AmountFromPool,
      uint256 token1AmountFromPool,
      uint256 token0AmountWithdraw,
      uint256 token1AmountWithdraw,
      bytes memory data
    );
}
