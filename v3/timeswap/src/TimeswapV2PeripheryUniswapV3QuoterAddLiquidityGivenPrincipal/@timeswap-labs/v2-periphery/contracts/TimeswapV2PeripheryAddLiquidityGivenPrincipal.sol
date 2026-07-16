// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";
import {StrikeConversion} from "@timeswap-labs/v2-library/contracts/StrikeConversion.sol";

import {ITimeswapV2Option} from "@timeswap-labs/v2-option/contracts/interfaces/ITimeswapV2Option.sol";

import {OptionFactoryLibrary} from "@timeswap-labs/v2-option/contracts/libraries/OptionFactory.sol";

import {TimeswapV2OptionMintParam} from "@timeswap-labs/v2-option/contracts/structs/Param.sol";
import {TimeswapV2OptionMintCallbackParam} from "@timeswap-labs/v2-option/contracts/structs/CallbackParam.sol";

import {TimeswapV2OptionMint} from "@timeswap-labs/v2-option/contracts/enums/Transaction.sol";
import {TimeswapV2OptionPosition} from "@timeswap-labs/v2-option/contracts/enums/Position.sol";

import {TimeswapV2PoolMintParam} from "@timeswap-labs/v2-pool/contracts/structs/Param.sol";
import {TimeswapV2PoolMintChoiceCallbackParam, TimeswapV2PoolMintCallbackParam} from "@timeswap-labs/v2-pool/contracts/structs/CallbackParam.sol";

import {TimeswapV2PoolMint} from "@timeswap-labs/v2-pool/contracts/enums/Transaction.sol";

import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2Token} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2Token.sol";
import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2TokenMintParam, TimeswapV2LiquidityTokenMintParam} from "@timeswap-labs/v2-token/contracts/structs/Param.sol";
import {TimeswapV2TokenMintCallbackParam, TimeswapV2LiquidityTokenMintCallbackParam} from "@timeswap-labs/v2-token/contracts/structs/CallbackParam.sol";

import {ITimeswapV2PeripheryAddLiquidityGivenPrincipal} from "./interfaces/ITimeswapV2PeripheryAddLiquidityGivenPrincipal.sol";

import {TimeswapV2PeripheryAddLiquidityGivenPrincipalParam} from "./structs/Param.sol";
import {TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam} from "./structs/InternalParam.sol";

import {Verify} from "./libraries/Verify.sol";

/// @title Abstract contract which specifies functions that are required for liquidity provision which are to be inherited for a specific DEX/Aggregator implementation
abstract contract TimeswapV2PeripheryAddLiquidityGivenPrincipal is ITimeswapV2PeripheryAddLiquidityGivenPrincipal {
  using Math for uint256;

  /* ===== MODEL ===== */

  /// @inheritdoc ITimeswapV2PeripheryAddLiquidityGivenPrincipal
  address public immutable override optionFactory;
  /// @inheritdoc ITimeswapV2PeripheryAddLiquidityGivenPrincipal
  address public immutable override poolFactory;
  /// @inheritdoc ITimeswapV2PeripheryAddLiquidityGivenPrincipal
  address public immutable override tokens;
  /// @inheritdoc ITimeswapV2PeripheryAddLiquidityGivenPrincipal
  address public immutable override liquidityTokens;
  ///@dev represents return value of mintChoiceCallback
  struct CacheForTimeswapV2PoolMintChoiceCallback {
    address token0;
    address token1;
    address liquidityTo;
    address excessLong0To;
    address excessLong1To;
    address excessShortTo;
    bool preferLong0Excess;
    uint256 token0Amount;
    uint256 token1Amount;
  }
  ///@dev represents return value of mintCallback
  struct CacheForTimeswapV2PoolMintCallback {
    address token0;
    address token1;
    address liquidityTo;
    address excessLong0To;
    address excessLong1To;
    address excessShortTo;
    uint256 token0Amount;
    uint256 token1Amount;
  }
  ///@dev represents return value of optionMintCallback
  struct CacheForTimeswapV2OptionMintCallback {
    address token0;
    address token1;
    address excessLong0To;
    address excessLong1To;
    address excessShortTo;
    uint256 liquidityAmount;
    uint256 excessLong0Amount;
    uint256 excessLong1Amount;
    uint256 excessShortAmount;
  }

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

  /// @notice the abstract implementation for addLiquidity function
  /// @param param params for  addLiquidity as mentioned in the TimeswapV2PeripheryAddLiquidityGivenPrincipalParam struct
  /// @return liquidityAmount amount of liquidity in the pool
  /// @return excessLong0Amount amount os excessLong0Amount while liquidity was minted if any
  /// @return excessLong1Amount amount os excessLong1Amount while liquidity was minted if any
  /// @return excessShortAmount amount os shortAmount while liquidity was minted if any
  /// @return data data passed as bytes in the param
  function addLiquidityGivenPrincipal(
    TimeswapV2PeripheryAddLiquidityGivenPrincipalParam memory param
  )
    internal
    returns (
      uint160 liquidityAmount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      bytes memory data
    )
  {
    (, address poolPair) = PoolFactoryLibrary.getWithCheck(optionFactory, poolFactory, param.token0, param.token1);

    data = abi.encode(
      CacheForTimeswapV2PoolMintChoiceCallback(
        param.token0,
        param.token1,
        param.liquidityTo,
        param.excessLong0To,
        param.excessLong1To,
        param.excessShortTo,
        param.preferLong0Excess,
        param.token0Amount,
        param.token1Amount
      ),
      param.data
    );

    (liquidityAmount, , , , data) = ITimeswapV2Pool(poolPair).mint(
      TimeswapV2PoolMintParam({
        strike: param.strike,
        maturity: param.maturity,
        to: address(this),
        transaction: TimeswapV2PoolMint.GivenLarger,
        delta: StrikeConversion.combine(param.token0Amount, param.token1Amount, param.strike, false),
        data: data
      })
    );

    (excessLong0Amount, excessLong1Amount, excessShortAmount) = abi.decode(data, (uint256, uint256, uint256));
  }

  /// @notice the abstract implementation for TimeswapV2PoolMintChoiceCallback
  /// @param param params for mintChoiceCallBack from TimeswapV2Pool
  /// @return long0Amount long0AMount chosen to be minted
  /// @return long1Amount chosen to be minted
  /// @return data data passed in bytes in the param passed back
  function timeswapV2PoolMintChoiceCallback(
    TimeswapV2PoolMintChoiceCallbackParam calldata param
  ) external view returns (uint256 long0Amount, uint256 long1Amount, bytes memory data) {
    CacheForTimeswapV2PoolMintChoiceCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2PoolMintChoiceCallback, bytes));

    Verify.timeswapV2Pool(optionFactory, poolFactory, cache.token0, cache.token1);

    long0Amount = cache.token0Amount;
    long1Amount = cache.token1Amount;

    if (param.shortAmount > param.longAmount) {
      uint256 longAmount = StrikeConversion.turn(param.longAmount, param.strike, cache.preferLong0Excess, true).min(
        cache.preferLong0Excess ? long1Amount : long0Amount
      );

      uint256 preferredLongAmount = StrikeConversion.dif(
        param.longAmount,
        longAmount,
        param.strike,
        !cache.preferLong0Excess,
        true
      );

      long0Amount = cache.preferLong0Excess ? preferredLongAmount : longAmount;
      long1Amount = cache.preferLong0Excess ? longAmount : preferredLongAmount;
    }

    data = abi.encode(
      CacheForTimeswapV2PoolMintCallback(
        cache.token0,
        cache.token1,
        cache.liquidityTo,
        cache.excessLong0To,
        cache.excessLong1To,
        cache.excessShortTo,
        cache.token0Amount,
        cache.token1Amount
      ),
      data
    );
  }

  /// @notice the abstract implementation for TimeswapV2PoolMintCallback
  /// @param param params for mintCallBack from TimeswapV2Pool
  /// @return data data passed in bytes in the param passed back
  function timeswapV2PoolMintCallback(
    TimeswapV2PoolMintCallbackParam calldata param
  ) external returns (bytes memory data) {
    CacheForTimeswapV2PoolMintCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2PoolMintCallback, bytes));

    address optionPair = Verify.timeswapV2Pool(optionFactory, poolFactory, cache.token0, cache.token1);

    ITimeswapV2LiquidityToken(liquidityTokens).mint(
      TimeswapV2LiquidityTokenMintParam({
        token0: cache.token0,
        token1: cache.token1,
        strike: param.strike,
        maturity: param.maturity,
        to: cache.liquidityTo,
        liquidityAmount: param.liquidityAmount,
        data: bytes("")
      })
    );

    uint256 longAmount = StrikeConversion.combine(param.long0Amount, param.long1Amount, param.strike, false);
    uint256 excessLong0Amount = longAmount > param.shortAmount ? 0 : cache.token0Amount.unsafeSub(param.long0Amount);
    uint256 excessLong1Amount = longAmount > param.shortAmount ? 0 : cache.token1Amount.unsafeSub(param.long1Amount);
    uint256 excessShortAmount = longAmount > param.shortAmount ? longAmount.unsafeSub(param.shortAmount) : 0;

    data = abi.encode(
      CacheForTimeswapV2OptionMintCallback(
        cache.token0,
        cache.token1,
        cache.excessLong0To,
        cache.excessLong1To,
        cache.excessShortTo,
        param.liquidityAmount,
        excessLong0Amount,
        excessLong1Amount,
        excessShortAmount
      ),
      data
    );

    (, , , data) = ITimeswapV2Option(optionPair).mint(
      TimeswapV2OptionMintParam({
        strike: param.strike,
        maturity: param.maturity,
        long0To: longAmount > param.shortAmount ? msg.sender : address(this),
        long1To: longAmount > param.shortAmount ? msg.sender : address(this),
        shortTo: longAmount > param.shortAmount ? address(this) : msg.sender,
        transaction: TimeswapV2OptionMint.GivenTokensAndLongs,
        amount0: cache.token0Amount,
        amount1: cache.token1Amount,
        data: data
      })
    );

    if (longAmount > param.shortAmount)
      ITimeswapV2Option(optionPair).transferPosition(
        param.strike,
        param.maturity,
        msg.sender,
        TimeswapV2OptionPosition.Short,
        param.shortAmount
      );
    else {
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
    }

    data = abi.encode(excessLong0Amount, excessLong1Amount, excessShortAmount);
  }

  /// @notice the abstract implementation for TimeswapV2OptionMintCallback
  /// @param param params for mintCallBack from TimeswapV2Option
  /// @return data data passed in bytes in the param passed back
  function timeswapV2OptionMintCallback(
    TimeswapV2OptionMintCallbackParam memory param
  ) external override returns (bytes memory data) {
    CacheForTimeswapV2OptionMintCallback memory cache;
    (cache, data) = abi.decode(param.data, (CacheForTimeswapV2OptionMintCallback, bytes));

    Verify.timeswapV2Option(optionFactory, cache.token0, cache.token1);

    if (cache.excessLong0Amount != 0 || cache.excessLong1Amount != 0 || cache.excessShortAmount != 0)
      ITimeswapV2Token(tokens).mint(
        TimeswapV2TokenMintParam({
          token0: cache.token0,
          token1: cache.token1,
          strike: param.strike,
          maturity: param.maturity,
          long0To: cache.excessLong0Amount == 0 ? address(this) : cache.excessLong0To,
          long1To: cache.excessLong1Amount == 0 ? address(this) : cache.excessLong1To,
          shortTo: cache.excessShortAmount == 0 ? address(this) : cache.excessShortTo,
          long0Amount: cache.excessLong0Amount,
          long1Amount: cache.excessLong1Amount,
          shortAmount: cache.excessShortAmount,
          data: bytes("")
        })
      );

    data = timeswapV2PeripheryAddLiquidityGivenPrincipalInternal(
      TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam({
        optionPair: msg.sender,
        token0: cache.token0,
        token1: cache.token1,
        strike: param.strike,
        maturity: param.maturity,
        token0Amount: param.token0AndLong0Amount,
        token1Amount: param.token1AndLong1Amount,
        liquidityAmount: cache.liquidityAmount,
        excessLong0Amount: cache.excessLong0Amount,
        excessLong1Amount: cache.excessLong1Amount,
        excessShortAmount: cache.excessShortAmount,
        data: data
      })
    );
  }

  /// @notice the abstract implementation for TimeswapV2TokenMintCallback
  /// @param param params for mintCallBack from TimeswapV2Token
  /// @return data data passed in bytes in the param passed back
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

  /// @notice the abstract implementation for TimeswapV2LiquidityTokenMintCallback
  /// @param param params for mintCallBack from TimeswapV2LiquidityToken
  /// @return data data passed in bytes in the param passed back
  function timeswapV2LiquidityTokenMintCallback(
    TimeswapV2LiquidityTokenMintCallbackParam calldata param
  ) external returns (bytes memory data) {
    Verify.timeswapV2LiquidityToken(liquidityTokens);

    (, address poolPair) = PoolFactoryLibrary.get(optionFactory, poolFactory, param.token0, param.token1);

    ITimeswapV2Pool(poolPair).transferLiquidity(param.strike, param.maturity, msg.sender, param.liquidityAmount);

    data = bytes("");
  }

  /// @notice the implementation which is to be overriden for DEX/Aggregator specific logic for TimeswapV2AddLiquidity
  /// @param param params for calling the implementation specfic addLiquidity to be overriden
  /// @return data data passed in bytes in the param passed back
  function timeswapV2PeripheryAddLiquidityGivenPrincipalInternal(
    TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam memory param
  ) internal virtual returns (bytes memory data);
}
