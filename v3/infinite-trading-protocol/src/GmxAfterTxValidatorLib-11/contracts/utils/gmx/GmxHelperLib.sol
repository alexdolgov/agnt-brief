// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {IGmxMarket} from "../../interfaces/gmx/IGmxMarket.sol";
import {IHasSupportedAsset} from "../../interfaces/IHasSupportedAsset.sol";
import {IGmxExchangeRouterContractGuard} from "../../interfaces/gmx/IGmxExchangeRouterContractGuard.sol";
import {Order} from "../../interfaces/gmx/IGmxOrder.sol";
import {IGmxDataStore} from "../../interfaces/gmx/IGmxDataStore.sol";
import {GmxDataStoreLib} from "./GmxDataStoreLib.sol";
import {IGmxDeposit} from "../../interfaces/gmx/IGmxDeposit.sol";
import {GmxStructs} from "../../utils/gmx/GmxStructs.sol";
import {IGmxReader} from "../../interfaces/gmx/IGmxReader.sol";
import {BytesLib} from "@uniswap/v3-periphery/contracts/libraries/BytesLib.sol";
import {IGmxExchangeRouter} from "../../interfaces/gmx/IGmxExchangeRouter.sol";
import {IGmxDepositUtils} from "../../interfaces/gmx/IGmxDepositUtils.sol";
import {IGmxWithdrawalUtils} from "../../interfaces/gmx/IGmxWithdrawalUtils.sol";
import {IGmxBaseOrderUtils} from "../../interfaces/gmx/IGmxBaseOrderUtils.sol";
import {IPoolManagerLogic} from "../../interfaces/IPoolManagerLogic.sol";

library GmxHelperLib {
  using GmxDataStoreLib for IGmxDataStore;
  using BytesLib for bytes;

  function getMethod(bytes memory data) public pure returns (bytes4) {
    return read4left(data, 0);
  }

  function read4left(bytes memory data, uint256 offset) public pure returns (bytes4 o) {
    require(data.length >= offset + 4, "Reading bytes out of bounds");
    assembly {
      o := mload(add(data, add(32, offset)))
    }
  }

  function getParams(bytes memory data) public pure returns (bytes memory) {
    return data.slice(4, data.length - 4);
  }

  function checkMarketsAndTokensSupportedForClaiming(
    address exchangeRouterContractGuard,
    address poolManagerLogic,
    address[] memory tokens,
    address[] memory markets
  ) public view {
    require(tokens.length == markets.length, "invalid length");
    for (uint256 i; i < tokens.length; ++i) {
      require(IHasSupportedAsset(poolManagerLogic).isSupportedAsset(markets[i]), "invalid market");
      IGmxMarket.Props memory marketInfo = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard)
        .reader()
        .getMarket({
          _dataStore: IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore(),
          _market: markets[i]
        });
      require(IHasSupportedAsset(poolManagerLogic).isSupportedAsset(markets[i]), "invalid market");
      require(IHasSupportedAsset(poolManagerLogic).isSupportedAsset(tokens[i]), "unsupported token");
      require(tokens[i] == marketInfo.longToken || tokens[i] == marketInfo.shortToken, "invalid token");
    }
  }

  function validateCancelOrder(
    address exchangeRouterContractGuard,
    address poolManagerLogic,
    bytes memory params
  ) external view {
    IGmxDataStore dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
    bytes32 key = abi.decode(params, (bytes32));
    Order.Props memory order = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).reader().getOrder(
      dataStore,
      key
    );
    require(
      IHasSupportedAsset(poolManagerLogic).isSupportedAsset(order.addresses.initialCollateralToken),
      "unsupported token"
    );
    require(IHasSupportedAsset(poolManagerLogic).isSupportedAsset(dataStore.wnt()), "unsupported wnt");
  }

  function decodeCreateOrder(
    bytes[] memory multicallParams
  )
    public
    pure
    returns (
      bytes memory lastCallData,
      uint256 numOfCalls,
      IGmxBaseOrderUtils.CreateOrderParams memory createOrderParams
    )
  {
    numOfCalls = multicallParams.length;
    require(numOfCalls == 3 || numOfCalls == 2, "invalid multicall params length");

    lastCallData = multicallParams[numOfCalls - 1];
    bytes4 method = getMethod(lastCallData);
    bytes memory params = getParams(lastCallData);

    require(method == IGmxExchangeRouter.createOrder.selector, "invalid multicall params");
    createOrderParams = abi.decode(params, (IGmxBaseOrderUtils.CreateOrderParams));
  }

  function validateCancelDeposit(
    address exchangeRouterContractGuard,
    address poolManagerLogic,
    bytes memory params
  ) external view {
    IGmxDataStore dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
    bytes32 key = abi.decode(params, (bytes32));
    IGmxDeposit.Props memory deposit = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).reader().getDeposit(
      dataStore,
      key
    );
    require(
      IHasSupportedAsset(poolManagerLogic).isSupportedAsset(deposit.addresses.initialLongToken),
      "unsupported token"
    );
    require(
      IHasSupportedAsset(poolManagerLogic).isSupportedAsset(deposit.addresses.initialShortToken),
      "unsupported token"
    );
    require(IHasSupportedAsset(poolManagerLogic).isSupportedAsset(dataStore.wnt()), "unsupported wnt");
  }

  function validateDepositOrWithdrawalCommonParams(
    GmxStructs.DepositOrWithdrawalCommonParams memory _commonParams,
    address _poolLogic,
    address _feeReceiver
  ) public view {
    require(_commonParams.receiver == _poolLogic, "receiver not pool logic");
    require(_commonParams.callbackContract == address(this), "invalid callback contract");
    require(_commonParams.uiFeeReceiver == _feeReceiver, "invalid fee receiver");
    require(_commonParams.shouldUnwrapNativeToken == false, "cannot unwrap native token");
    require(_commonParams.longTokenSwapPath.length == 0, "invalid swap path");
    require(_commonParams.shortTokenSwapPath.length == 0, "invalid swap path");
  }

  function validateDepositMarketTokens(
    address _poolManagerLogic,
    address _market,
    address _initialLongToken,
    address _initialShortToken,
    IGmxReader reader,
    IGmxDataStore dataStore
  ) public view {
    IGmxMarket.Props memory marketInfo = reader.getMarket({_dataStore: dataStore, _market: _market});

    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(marketInfo.longToken), "unsupported longToken");
    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(marketInfo.shortToken), "unsupported shortToken");
    require(_initialLongToken == marketInfo.longToken, "invalid initialLongToken");
    require(_initialShortToken == marketInfo.shortToken, "invalid initialShortToken");
  }

  function validateWithdrawalMarketTokens(
    address _poolManagerLogic,
    address _market,
    IGmxReader reader,
    IGmxDataStore dataStore
  ) public view {
    IGmxMarket.Props memory marketInfo = reader.getMarket({_dataStore: dataStore, _market: _market});

    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(marketInfo.longToken), "unsupported longToken");
    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(marketInfo.shortToken), "unsupported shortToken");
  }

  function validateSendTokensTx(
    address _poolManagerLogic,
    bytes memory _subTxData,
    address _token,
    address _receiver
  ) public view {
    require(getMethod(_subTxData) == IGmxExchangeRouter.sendTokens.selector, "invalid sendTokens tx");
    (address token, address receiver) = abi.decode(getParams(_subTxData), (address, address));
    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(token), "invalid token");
    require(token == _token, "invalid token");
    require(receiver == _receiver, "invalid receiver");
  }

  function validateCreateDepositMulticall(
    address _poolManagerLogic,
    GmxStructs.PoolSetting memory _poolSetting,
    address _to,
    bytes[] memory _multicallParams,
    IGmxReader reader,
    IGmxDataStore dataStore,
    address feeReceiver
  ) external view {
    require(_multicallParams.length == 4, "invalid multicall");
    address wntAddress = dataStore.wnt();
    address depositVaultAddress = IGmxExchangeRouter(_to).depositHandler().depositVault();
    IGmxDepositUtils.CreateDepositParams memory createDepositParams = abi.decode(
      getParams(_multicallParams[3]),
      (IGmxDepositUtils.CreateDepositParams)
    );
    validateSendTokensTx(_poolManagerLogic, _multicallParams[0], wntAddress, depositVaultAddress);
    validateSendTokensTx(
      _poolManagerLogic,
      _multicallParams[1],
      createDepositParams.addresses.initialLongToken,
      depositVaultAddress
    );
    validateSendTokensTx(
      _poolManagerLogic,
      _multicallParams[2],
      createDepositParams.addresses.initialShortToken,
      depositVaultAddress
    );

    require(
      IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(createDepositParams.addresses.market),
      "unsupported market"
    );
    validateDepositOrWithdrawalCommonParams(
      GmxStructs.DepositOrWithdrawalCommonParams({
        receiver: createDepositParams.addresses.receiver,
        callbackContract: createDepositParams.addresses.callbackContract,
        uiFeeReceiver: createDepositParams.addresses.uiFeeReceiver,
        shouldUnwrapNativeToken: createDepositParams.shouldUnwrapNativeToken,
        longTokenSwapPath: createDepositParams.addresses.longTokenSwapPath,
        shortTokenSwapPath: createDepositParams.addresses.shortTokenSwapPath
      }),
      _poolSetting.poolLogic,
      feeReceiver
    );
    validateDepositMarketTokens(
      _poolManagerLogic,
      createDepositParams.addresses.market,
      createDepositParams.addresses.initialLongToken,
      createDepositParams.addresses.initialShortToken,
      reader,
      dataStore
    );
  }

  function validateCreateWithdrawalMulticall(
    address _poolManagerLogic,
    GmxStructs.PoolSetting memory _poolSetting,
    address _to,
    bytes[] memory _multicallParams,
    IGmxReader reader,
    IGmxDataStore dataStore,
    address feeReceiver
  ) internal view {
    require(_multicallParams.length == 3, "invalid multicall");
    address wntAddress = dataStore.wnt();
    address withdrawalVaultAddress = IGmxExchangeRouter(_to).withdrawalHandler().withdrawalVault();
    IGmxWithdrawalUtils.CreateWithdrawalParams memory createWithdrawalParams = abi.decode(
      getParams(_multicallParams[2]),
      (IGmxWithdrawalUtils.CreateWithdrawalParams)
    );
    validateSendTokensTx(_poolManagerLogic, _multicallParams[0], wntAddress, withdrawalVaultAddress);
    validateSendTokensTx(
      _poolManagerLogic,
      _multicallParams[1],
      createWithdrawalParams.addresses.market,
      withdrawalVaultAddress
    );
    validateDepositOrWithdrawalCommonParams(
      GmxStructs.DepositOrWithdrawalCommonParams({
        receiver: createWithdrawalParams.addresses.receiver,
        callbackContract: createWithdrawalParams.addresses.callbackContract,
        uiFeeReceiver: createWithdrawalParams.addresses.uiFeeReceiver,
        shouldUnwrapNativeToken: createWithdrawalParams.shouldUnwrapNativeToken,
        longTokenSwapPath: createWithdrawalParams.addresses.longTokenSwapPath,
        shortTokenSwapPath: createWithdrawalParams.addresses.shortTokenSwapPath
      }),
      _poolSetting.poolLogic,
      feeReceiver
    );
    validateWithdrawalMarketTokens(_poolManagerLogic, createWithdrawalParams.addresses.market, reader, dataStore);
  }

  function validateMarketTokens(
    address _poolManagerLogic,
    address _market,
    address _initialCollateralToken,
    IGmxReader reader,
    IGmxDataStore dataStore
  ) public view {
    IGmxMarket.Props memory marketInfo = reader.getMarket({_dataStore: dataStore, _market: _market});

    // decreaseOrder will receive pnlToken in the noSwap case
    // pnlToken can be either longToken or shortToken
    // https://github.com/gmx-io/gmx-synthetics/blob/main/contracts/position/DecreasePositionUtils.sol#L203
    // no need to check indexToken, as it may not be a token address;
    // https://github.com/gmx-io/gmx-interface/blob/master/src/config/static/markets.ts
    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(marketInfo.longToken), "unsupported longToken");
    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(marketInfo.shortToken), "unsupported shortToken");
    require(
      (_initialCollateralToken == marketInfo.longToken) || (_initialCollateralToken == marketInfo.shortToken),
      "invalid initialCollateralToken"
    );
  }

  function validateSwapPath(address _poolManagerLogic, address[] memory _swapPath) public view {
    require(_swapPath.length == 1, "invalid swap path");
    require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(_swapPath[0]), "unsupported market");
  }

  function validateCreateOrderTx(
    address _poolManagerLogic,
    GmxStructs.PoolSetting memory _poolSetting,
    bytes memory _subTxData,
    IGmxReader reader,
    IGmxDataStore dataStore,
    address feeReceiver
  ) internal view {
    bytes memory params = getParams(_subTxData);

    IGmxBaseOrderUtils.CreateOrderParams memory createOrderParams = abi.decode(
      params,
      (IGmxBaseOrderUtils.CreateOrderParams)
    );
    require(createOrderParams.addresses.receiver == _poolSetting.poolLogic, "invalid receiver");
    require(createOrderParams.addresses.cancellationReceiver == address(0), "invalid cancel receiver");
    require(createOrderParams.addresses.callbackContract == address(this), "invalid callback contract");
    require(createOrderParams.addresses.uiFeeReceiver == feeReceiver, "invalid fee receiver");
    require(
      IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(createOrderParams.addresses.initialCollateralToken),
      "unsupported collateral"
    );
    require(createOrderParams.decreasePositionSwapType == Order.DecreasePositionSwapType.NoSwap, "invalid swap type");
    require(createOrderParams.shouldUnwrapNativeToken == false, "cannot unwrap native token");
    //Order specific validations
    if (createOrderParams.orderType == Order.OrderType.MarketSwap) {
      // only 0 can be used at createOrderParams.addresses.market for swap
      require(createOrderParams.addresses.market == address(0), "invalid market");
      validateSwapPath(_poolManagerLogic, createOrderParams.addresses.swapPath);
      validateMarketTokens(
        _poolManagerLogic,
        createOrderParams.addresses.swapPath[0],
        createOrderParams.addresses.initialCollateralToken,
        reader,
        dataStore
      );
    } else {
      require(
        IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(createOrderParams.addresses.market),
        "unsupported market"
      );
      // swapPath not supported; swaps happen before-deposit for Increase types and after-withdraw for Decrease types;
      require(createOrderParams.addresses.swapPath.length == 0, "swap path not supported");
      validateMarketTokens(
        _poolManagerLogic,
        createOrderParams.addresses.market,
        createOrderParams.addresses.initialCollateralToken,
        reader,
        dataStore
      );
    }

    // no check for sizeDeltaUsd, initialCollateralDeltaAmount,executionFee, triggerPrice, acceptablePrice
    //  minOutputAmount, callbackGasLimit are checked in afterTxGuard
    // not supported limit / stop-loss / take-profit yet
  }

  function validateCreateOrderMulticall(
    address _poolManagerLogic,
    GmxStructs.PoolSetting memory _poolSetting,
    address _to,
    bytes[] memory _multicallParams,
    IGmxReader reader,
    IGmxDataStore dataStore,
    address feeReceiver
  ) internal view returns (bool isValidCreateOrder) {
    IGmxBaseOrderUtils.CreateOrderParams memory createOrderParams;
    uint256 numOfCalls;
    bytes memory lastCallData;
    // preliminary length check and decoding CreateOrderParams
    (lastCallData, numOfCalls, createOrderParams) = decodeCreateOrder(_multicallParams);
    address wntAddress = dataStore.wnt();
    address orderVaultAddress = IGmxExchangeRouter(_to).orderHandler().orderVault();
    if (createOrderParams.orderType == Order.OrderType.MarketDecrease) {
      // the Decrease order types: MarketDecrease
      require(numOfCalls == 2, "invalid multicall");
      validateSendTokensTx(_poolManagerLogic, _multicallParams[0], wntAddress, orderVaultAddress);
      validateCreateOrderTx(_poolManagerLogic, _poolSetting, lastCallData, reader, dataStore, feeReceiver);
      isValidCreateOrder = true;
    } else if (
      createOrderParams.orderType == Order.OrderType.MarketIncrease ||
      createOrderParams.orderType == Order.OrderType.MarketSwap
    ) {
      // the increase or swap order types: MarketIncrease or MarketSwap
      require(numOfCalls == 3, "invalid multicall");
      validateSendTokensTx(_poolManagerLogic, _multicallParams[0], wntAddress, orderVaultAddress);
      validateSendTokensTx(
        _poolManagerLogic,
        _multicallParams[1],
        createOrderParams.addresses.initialCollateralToken,
        orderVaultAddress
      );
      validateCreateOrderTx(_poolManagerLogic, _poolSetting, lastCallData, reader, dataStore, feeReceiver);
      isValidCreateOrder = true;
    }
  }

  function validateTxGuardParams(
    address exchangeRouterContractGuard,
    address poolManagerLogic,
    bytes memory data
  )
    public
    view
    returns (bytes4 method, bytes memory params, address poolLogic, GmxStructs.PoolSetting memory poolSetting)
  {
    poolLogic = IPoolManagerLogic(poolManagerLogic).poolLogic();
    require(msg.sender == poolLogic, "not pool logic");
    poolSetting = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dHedgePoolsWhitelist(poolLogic);
    require(poolSetting.poolLogic == poolLogic, "not gmx whitelisted");
    //Checking withdrawal and allowed collateral asset
    require(
      IHasSupportedAsset(poolManagerLogic).isSupportedAsset(poolSetting.withdrawalAsset),
      "unsupported withdrawal asset"
    );
    method = getMethod(data);
    params = getParams(data);
  }
}
