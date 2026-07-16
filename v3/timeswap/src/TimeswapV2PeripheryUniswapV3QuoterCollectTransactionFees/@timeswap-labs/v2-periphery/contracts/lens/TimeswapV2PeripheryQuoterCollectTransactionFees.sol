// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {StrikeConversion} from "@timeswap-labs/v2-library/contracts/StrikeConversion.sol";
import {Error} from "@timeswap-labs/v2-library/contracts/Error.sol";
import {CatchError} from "@timeswap-labs/v2-library/contracts/CatchError.sol";

import {ITimeswapV2OptionFactory} from "@timeswap-labs/v2-option/contracts/interfaces/ITimeswapV2OptionFactory.sol";
import {ITimeswapV2Option} from "@timeswap-labs/v2-option/contracts/interfaces/ITimeswapV2Option.sol";
import {TimeswapV2OptionBurnParam} from "@timeswap-labs/v2-option/contracts/structs/Param.sol";

import {OptionFactoryLibrary} from "@timeswap-labs/v2-option/contracts/libraries/OptionFactory.sol";

import {TimeswapV2OptionBurn} from "@timeswap-labs/v2-option/contracts/enums/Transaction.sol";
import {TimeswapV2OptionPosition} from "@timeswap-labs/v2-option/contracts/enums/Position.sol";

import {ITimeswapV2PoolFactory} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2PoolFactory.sol";
import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {TimeswapV2PoolCollectParam} from "@timeswap-labs/v2-pool/contracts/structs/Param.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2Token} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2Token.sol";
import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2TokenMintParam, TimeswapV2LiquidityTokenCollectParam} from "@timeswap-labs/v2-token/contracts/structs/Param.sol";
import {TimeswapV2TokenMintCallbackParam, TimeswapV2LiquidityTokenCollectCallbackParam} from "@timeswap-labs/v2-token/contracts/structs/CallbackParam.sol";

import {ITimeswapV2PeripheryQuoterCollectTransactionFees} from "../interfaces/lens/ITimeswapV2PeripheryQuoterCollectTransactionFees.sol";

import {TimeswapV2PeripheryCollectTransactionFeesParam} from "../structs/Param.sol";
import {TimeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternalParam} from "../structs/InternalParam.sol";

import {Verify} from "../libraries/Verify.sol";
import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

import {TimeswapV2LiquidityTokenPosition} from "@timeswap-labs/v2-token/contracts/structs/Position.sol";
import {TimeswapV2OptionBurnCallbackParam} from "@timeswap-labs/v2-option/contracts/structs/CallbackParam.sol";

abstract contract TimeswapV2PeripheryQuoterCollectTransactionFees is ITimeswapV2PeripheryQuoterCollectTransactionFees {
  using Math for uint256;
  using CatchError for bytes;
  /* ===== MODEL ===== */
  /// @inheritdoc ITimeswapV2PeripheryQuoterCollectTransactionFees
  address public immutable override optionFactory;
  /// @inheritdoc ITimeswapV2PeripheryQuoterCollectTransactionFees
  address public immutable override poolFactory;
  /// @inheritdoc ITimeswapV2PeripheryQuoterCollectTransactionFees
  address public immutable override tokens;
  /// @inheritdoc ITimeswapV2PeripheryQuoterCollectTransactionFees
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

  function collectTransactionFees(
    TimeswapV2PeripheryCollectTransactionFeesParam memory param
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
    (, address poolPair) = PoolFactoryLibrary.getWithCheck(optionFactory, poolFactory, param.token0, param.token1);

    ITimeswapV2Pool(poolPair).update(param.strike, param.maturity);

    uint256 shortAmount;
    (token0Amount, token1Amount, shortAmount) = ITimeswapV2LiquidityToken(liquidityTokens).feesEarnedOf(
      msg.sender,
      TimeswapV2LiquidityTokenPosition(param.token0, param.token1, param.strike, param.maturity)
    );

    token0Amount = token0Amount.min(param.long0Requested);
    token1Amount = token1Amount.min(param.long1Requested);
    shortAmount = shortAmount.min(param.shortRequested);

    uint256 longAmount = StrikeConversion.combine(token0Amount, token1Amount, param.strike, true);

    if (shortAmount >= longAmount) {
      excessShortAmount = shortAmount.unsafeSub(longAmount);

      data = param.data;
    } else {
      excessLong0Amount = token0Amount;
      excessLong1Amount = token1Amount;

      (token0Amount, token1Amount, data) = timeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternal(
        TimeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternalParam({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity,
          token0Balance: token0Amount,
          token1Balance: token1Amount,
          tokenAmount: shortAmount,
          data: param.data
        })
      );

      address optionPair = OptionFactoryLibrary.getWithCheck(optionFactory, param.token0, param.token1);

      uint256 shortAmountBurnt;
      try
        ITimeswapV2Option(optionPair).burn(
          TimeswapV2OptionBurnParam({
            strike: param.strike,
            maturity: param.maturity,
            token0To: param.token0To,
            token1To: param.token1To,
            transaction: TimeswapV2OptionBurn.GivenTokensAndLongs,
            amount0: token0Amount,
            amount1: token1Amount,
            data: bytes("")
          })
        )
      {} catch (bytes memory reason) {
        data = reason.catchError(PassOptionBurnCallbackInfo.selector);
        (shortAmountBurnt, data) = abi.decode(data, (uint256, bytes));
      }

      Error.checkEnough(shortAmountBurnt, shortAmount);

      excessLong0Amount -= token0Amount;
      excessLong1Amount -= token1Amount;
    }
  }

  function timeswapV2OptionBurnCallback(
    TimeswapV2OptionBurnCallbackParam calldata param
  ) external view returns (bytes memory data) {
    address token0;
    address token1;
    (token0, token1, data) = abi.decode(param.data, (address, address, bytes));

    Verify.timeswapV2Option(optionFactory, token0, token1);

    revert PassOptionBurnCallbackInfo(param.shortAmount, data);
  }

  function timeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternal(
    TimeswapV2PeripheryCollectTransactionFeesExcessLongChoiceInternalParam memory param
  ) internal virtual returns (uint256 token0Amount, uint256 token1Amount, bytes memory data);
}
