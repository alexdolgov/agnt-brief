// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {ERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Receiver.sol";

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

import {ITimeswapV2PeripheryRemoveLiquidityGivenPosition} from "./interfaces/ITimeswapV2PeripheryRemoveLiquidityGivenPosition.sol";

import {TimeswapV2PeripheryRemoveLiquidityGivenPositionParam} from "./structs/Param.sol";
import {TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam} from "./structs/InternalParam.sol";

import {Verify} from "./libraries/Verify.sol";
import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

/// @title Abstract contract which specifies functions that are required for  remove liquidity which are to be inherited for a specific DEX/Aggregator implementation
abstract contract TimeswapV2PeripheryRemoveLiquidityGivenPosition is
  ITimeswapV2PeripheryRemoveLiquidityGivenPosition,
  ERC1155Receiver
{
  using Math for uint256;
  /* ===== MODEL ===== */
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityGivenPosition
  address public immutable override optionFactory;
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityGivenPosition
  address public immutable override poolFactory;
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityGivenPosition
  address public immutable override tokens;
  /// @inheritdoc ITimeswapV2PeripheryRemoveLiquidityGivenPosition
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

  /// @notice the abstract implementation for remove liquidity function
  /// @param param params for  removeLiquidity as mentioned in the TimeswapV2PeripheryRemoveLiquidityGivenPositionParam struct
  /// @return token0Amount the resulting token0Amount
  /// @return token1Amount the resulting token1Amount
  /// @return excessLong0Amount the resulting exceessLong0Amount
  /// @return excessLong1Amount the resulting excessLong1Amount
  /// @return excessShortAmount the resulting excessShortAmount
  /// @return data data passed as bytes in the param
  function removeLiquidityGivenPosition(
    TimeswapV2PeripheryRemoveLiquidityGivenPositionParam memory param
  )
    internal
    returns (
      uint256 token0Amount,
      uint256 token1Amount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      bytes memory data
    )
  {
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

    data = abi.encode(param.token0, param.token1, param.preferLong0Excess, param.data);

    (, token0Amount, token1Amount, , data) = ITimeswapV2Pool(poolPair).burn(
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

    (excessLong0Amount, excessLong1Amount, excessShortAmount, data) = abi.decode(
      data,
      (uint256, uint256, uint256, bytes)
    );

    ITimeswapV2Option(optionPair).burn(
      TimeswapV2OptionBurnParam({
        strike: param.strike,
        maturity: param.maturity,
        token0To: param.token0To,
        token1To: param.token1To,
        transaction: TimeswapV2OptionBurn.GivenTokensAndLongs,
        amount0: token0Amount -= excessLong0Amount,
        amount1: token1Amount -= excessLong1Amount,
        data: bytes("")
      })
    );

    if (excessLong0Amount != 0 || excessLong1Amount != 0 || excessShortAmount != 0)
      ITimeswapV2Token(tokens).mint(
        TimeswapV2TokenMintParam({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity,
          long0To: param.excessLong0To,
          long1To: param.excessLong1To,
          shortTo: param.excessShortTo,
          long0Amount: excessLong0Amount,
          long1Amount: excessLong1Amount,
          shortAmount: excessShortAmount,
          data: bytes("")
        })
      );
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
    bool preferLong0Excess;
    (token0, token1, preferLong0Excess, data) = abi.decode(param.data, (address, address, bool, bytes));

    Verify.timeswapV2Pool(optionFactory, poolFactory, token0, token1);

    if (param.shortAmount >= param.longAmount) {
      (long0Amount, long1Amount, data) = timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
        TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam({
          token0: token0,
          token1: token1,
          strike: param.strike,
          maturity: param.maturity,
          token0Balance: param.long0Balance,
          token1Balance: param.long1Balance,
          tokenAmount: param.longAmount,
          data: data
        })
      );

      data = abi.encode(0, 0, param.shortAmount.unsafeSub(param.longAmount), data);
    } else {
      uint256 tokenAmount = StrikeConversion.combine(
        preferLong0Excess ? param.shortAmount : 0,
        preferLong0Excess ? 0 : param.shortAmount,
        param.strike,
        true
      );

      uint256 preferredExcessLongAmount = StrikeConversion.turn(
        param.longAmount,
        param.strike,
        !preferLong0Excess,
        false
      ) - StrikeConversion.turn(tokenAmount, param.strike, !preferLong0Excess, false);
      uint256 excessLongAmount;

      if (preferredExcessLongAmount >= (preferLong0Excess ? param.long0Balance : param.long1Balance)) {
        excessLongAmount = StrikeConversion.convert(
          preferredExcessLongAmount.unsafeSub(preferLong0Excess ? param.long0Balance : param.long1Balance),
          param.strike,
          preferLong0Excess,
          false
        );
        preferredExcessLongAmount = preferLong0Excess ? param.long0Balance : param.long1Balance;
      }

      (long0Amount, long1Amount, data) = timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
        TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam({
          token0: token0,
          token1: token1,
          strike: param.strike,
          maturity: param.maturity,
          token0Balance: param.long0Balance - (preferLong0Excess ? preferredExcessLongAmount : excessLongAmount),
          token1Balance: param.long1Balance - (preferLong0Excess ? excessLongAmount : preferredExcessLongAmount),
          tokenAmount: tokenAmount,
          data: data
        })
      );

      long0Amount += (preferLong0Excess ? preferredExcessLongAmount : excessLongAmount);
      long1Amount += (preferLong0Excess ? excessLongAmount : preferredExcessLongAmount);

      data = abi.encode(
        preferLong0Excess ? preferredExcessLongAmount : excessLongAmount,
        preferLong0Excess ? excessLongAmount : preferredExcessLongAmount,
        0,
        data
      );
    }
  }

  function timeswapV2PoolBurnCallback(
    TimeswapV2PoolBurnCallbackParam calldata param
  ) external pure returns (bytes memory data) {
    data = param.data;
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

  /// @notice the implementation which is to be overriden for DEX/Aggregator specific logic for TimeswapV2RemoveLiquidityExcessLongChoice
  /// @param param params for calling the implementation specfic removeLiquidityExcessLongChoice to be overriden
  /// @return token0Amount resulting token0 amount
  /// @return token1Amount resulting token1 amount
  /// @return data data passed in bytes in the param passed back
  function timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
    TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam memory param
  ) internal virtual returns (uint256 token0Amount, uint256 token1Amount, bytes memory data);
}
