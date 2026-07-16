// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {Order} from "../../interfaces/gmx/IGmxOrder.sol";
import {IGmxDataStore} from "../../interfaces/gmx/IGmxDataStore.sol";
import {IGmxRoleStore} from "../../interfaces/gmx/IGmxRoleStore.sol";
import {IGmxReader} from "../../interfaces/gmx/IGmxReader.sol";
import {IGmxMarket} from "../../interfaces/gmx/IGmxMarket.sol";
import {GmxClaimableCollateralTrackerLib} from "./GmxClaimableCollateralTrackerLib.sol";
import {DhedgeNftTrackerStorage} from "../../utils/tracker/DhedgeNftTrackerStorage.sol";
import {GmxAfterTxValidatorLib} from "./GmxAfterTxValidatorLib.sol";
import {GmxPriceLib} from "./GmxPriceLib.sol";
import {SlippageAccumulator} from "../../utils/SlippageAccumulator.sol";
import {IGmxExchangeRouterContractGuard} from "../../interfaces/gmx/IGmxExchangeRouterContractGuard.sol";
import {IPoolLogic} from "../../interfaces/IPoolLogic.sol";
import {GmxStructs} from "./GmxStructs.sol";
import {IGmxDepositOld} from "../../interfaces/gmx/IGmxDepositOld.sol";
import {IGmxWithdrawalOld} from "../../interfaces/gmx/IGmxWithdrawalOld.sol";
import {IGmxVirtualTokenResolver} from "../../interfaces/gmx/IGmxVirtualTokenResolver.sol";
import {GmxEventUtils} from "./GmxEventUtils.sol";
import {OrderOld} from "../../interfaces/gmx/IGmxOrderOld.sol";

library GmxAfterExcutionLib {
  using GmxEventUtils for GmxEventUtils.AddressItems;
  using GmxEventUtils for GmxEventUtils.UintItems;
  using GmxEventUtils for GmxEventUtils.IntItems;
  using GmxEventUtils for GmxEventUtils.BoolItems;
  using GmxEventUtils for GmxEventUtils.Bytes32Items;
  using GmxEventUtils for GmxEventUtils.BytesItems;
  using GmxEventUtils for GmxEventUtils.StringItems;

  bytes32 public constant CONTROLLER_ROLE_STORE_KEY = keccak256(abi.encode("CONTROLLER"));
  // @dev key for claimable collateral time divisor
  bytes32 public constant CLAIMABLE_COLLATERAL_TIME_DIVISOR =
    keccak256(abi.encode("CLAIMABLE_COLLATERAL_TIME_DIVISOR"));

  function trackClaimableCollateralAfterOrderExecution(
    DhedgeNftTrackerStorage nftTracker,
    address guardedContract,
    address exchangeRouterContractGuard,
    address market,
    address account
  ) internal {
    IGmxDataStore dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
    IGmxReader reader = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).reader();
    requireControllerRole(dataStore);

    // Duplicate GMX time key calculation logic.
    // https://github.com/gmx-io/gmx-synthetics/blob/5173cbeb196ed5596373acd71c75a5c7a60a98f5/contracts/market/MarketUtils.sol#L541
    uint256 timeKey = block.timestamp / dataStore.getUint(CLAIMABLE_COLLATERAL_TIME_DIVISOR);
    IGmxMarket.Props memory marketProps = reader.getMarket({_dataStore: dataStore, _market: market});

    handleClaimableCollateral({
      nftTracker: nftTracker,
      guardedContract: guardedContract,
      dataStore: dataStore,
      pool: account,
      market: market,
      token: marketProps.longToken,
      timeKey: timeKey
    });

    // Some GMX markets have identical long and short tokens. In that case, we need to avoid adding the same claimable collateral twice.
    if (marketProps.longToken != marketProps.shortToken) {
      handleClaimableCollateral({
        nftTracker: nftTracker,
        guardedContract: guardedContract,
        dataStore: dataStore,
        pool: account,
        market: market,
        token: marketProps.shortToken,
        timeKey: timeKey
      });
    }
  }

  function handleClaimableCollateral(
    DhedgeNftTrackerStorage nftTracker,
    address guardedContract,
    IGmxDataStore dataStore,
    address pool,
    address market,
    address token,
    uint256 timeKey
  ) internal {
    uint256 claimableCollateralAmount = dataStore.getUint(
      GmxClaimableCollateralTrackerLib.claimableCollateralAmountKey(
        GmxClaimableCollateralTrackerLib.ClaimableCollateralParams({
          market: market,
          token: token,
          timeKey: timeKey,
          account: pool
        })
      )
    );
    // if the negative impact threshold wasn't exceeded, we don't need to track the claimable collateral
    if (claimableCollateralAmount != 0) {
      GmxClaimableCollateralTrackerLib.addClaimableCollateralTimeKey({
        nftTracker: address(nftTracker),
        guardedContract: guardedContract,
        pool: pool,
        market: market,
        token: token,
        timeKey: timeKey
      });
    }
  }

  function requireControllerRole(IGmxDataStore dataStore) internal view {
    require(
      IGmxRoleStore(dataStore.roleStore()).hasRole({account: msg.sender, roleKey: CONTROLLER_ROLE_STORE_KEY}),
      "invalid handler" // make sure it's called by the gmx permissioned keepers
    );
  }

  function afterSwapOrderExecutionCallback(
    GmxAfterTxValidatorLib.GmxAfterSwapOrderData memory afterSwapOrderData,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) internal {
    GmxPriceLib.GmxPriceDependecies memory priceDeps;
    IGmxDataStore dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
    SlippageAccumulator slippageAccumulator;
    address poolManagerLogic;
    {
      requireControllerRole(dataStore);

      GmxStructs.PoolSetting memory poolSetting = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard)
        .dHedgePoolsWhitelist(afterSwapOrderData.account);
      require(poolSetting.poolLogic == afterSwapOrderData.account, "not gmx whitelisted");
      poolManagerLogic = IPoolLogic(poolSetting.poolLogic).poolManagerLogic();
      slippageAccumulator = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).slippageAccumulator();
      priceDeps = GmxPriceLib.GmxPriceDependecies({
        dataStore: dataStore,
        reader: IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).reader(),
        assetHandler: GmxAfterTxValidatorLib.getAssetHandler(poolManagerLogic),
        virtualTokenResolver: IGmxVirtualTokenResolver(exchangeRouterContractGuard)
      });
    }

    (uint256 inputTokensValue, uint256 outputTokensValue) = GmxAfterTxValidatorLib.getMaxSwapSlippageData(
      afterSwapOrderData,
      priceDeps,
      false,
      // https://github.com/gmx-io/gmx-synthetics/blob/main/contracts/order/SwapOrderUtils.sol#L78
      eventData.uintItems.items[0].value
    );
    slippageAccumulator.updateSlippageImpact(
      poolManagerLogic,
      to,
      SlippageAccumulator.SwapData({
        srcAsset: afterSwapOrderData.swapPath[0], // using USDPriceAggregator
        dstAsset: afterSwapOrderData.swapPath[0], // using USDPriceAggregator
        srcAmount: inputTokensValue,
        dstAmount: outputTokensValue
      })
    );
  }

  // v2.2 version
  function afterOrderExecutionCallback(
    GmxEventUtils.EventLogData memory orderData,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) public {
    Order.OrderType orderType = Order.OrderType(orderData.uintItems.get("orderType"));
    if (orderType == Order.OrderType.MarketDecrease) {
      address account = orderData.addressItems.get("account");
      address market = orderData.addressItems.get("market");
      DhedgeNftTrackerStorage nftTracker = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).nftTracker();
      GmxAfterExcutionLib.trackClaimableCollateralAfterOrderExecution({
        nftTracker: nftTracker,
        guardedContract: to,
        exchangeRouterContractGuard: address(this),
        market: market,
        account: account
      });
    } else if (orderType == Order.OrderType.MarketSwap) {
      GmxAfterExcutionLib.afterSwapOrderExecutionCallback({
        afterSwapOrderData: GmxAfterTxValidatorLib.GmxAfterSwapOrderData({
          account: orderData.addressItems.get("account"),
          swapPath: orderData.addressItems.getArray("swapPath"),
          initialCollateralToken: orderData.addressItems.get("initialCollateralToken"),
          minOutputAmount: orderData.uintItems.get("minOutputAmount"),
          initialCollateralDeltaAmount: orderData.uintItems.get("initialCollateralDeltaAmount")
        }),
        to: to,
        eventData: eventData,
        exchangeRouterContractGuard: address(this)
      });
    }
  }

  // v2.2 version
  function afterDepositExecutionCallback(
    GmxEventUtils.EventLogData memory depositData,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) public {
    GmxPriceLib.GmxPriceDependecies memory priceDeps;
    IGmxDataStore dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
    SlippageAccumulator slippageAccumulator;
    address poolManagerLogic;
    GmxAfterTxValidatorLib.GmxAfterDepositData memory afterDepositData;
    {
      afterDepositData.account = depositData.addressItems.get("account");
      afterDepositData.market = depositData.addressItems.get("market");
      afterDepositData.initialLongToken = depositData.addressItems.get("initialLongToken");
      afterDepositData.initialShortToken = depositData.addressItems.get("initialShortToken");
      afterDepositData.initialLongTokenAmount = depositData.uintItems.get("initialLongTokenAmount");
      afterDepositData.initialShortTokenAmount = depositData.uintItems.get("initialShortTokenAmount");
      afterDepositData.minMarketTokens = depositData.uintItems.get("minMarketTokens");
    }
    {
      dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
      requireControllerRole(dataStore);
      GmxStructs.PoolSetting memory poolSetting = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard)
        .dHedgePoolsWhitelist(afterDepositData.account);
      require(poolSetting.poolLogic == afterDepositData.account, "not gmx whitelisted");
      poolManagerLogic = IPoolLogic(poolSetting.poolLogic).poolManagerLogic();
      slippageAccumulator = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).slippageAccumulator();
      priceDeps = GmxPriceLib.GmxPriceDependecies({
        dataStore: dataStore,
        reader: IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).reader(),
        assetHandler: GmxAfterTxValidatorLib.getAssetHandler(poolManagerLogic),
        virtualTokenResolver: IGmxVirtualTokenResolver(exchangeRouterContractGuard)
      });
    }
    (uint256 inputTokensValue, uint256 outputTokensValue) = GmxAfterTxValidatorLib.getMaxDepositSlippageData({
      afterDepositData: afterDepositData,
      priceDependencies: priceDeps,
      isMinOutputAmountUsed: false,
      // https://github.com/gmx-io/gmx-synthetics/blob/main/contracts/deposit/ExecuteDepositUtils.sol#L279
      optionalOutputAmount: eventData.uintItems.items[0].value
    });
    slippageAccumulator.updateSlippageImpact(
      poolManagerLogic,
      to,
      SlippageAccumulator.SwapData({
        srcAsset: afterDepositData.market, // using USDPriceAggregator
        dstAsset: afterDepositData.market, // using USDPriceAggregator
        srcAmount: inputTokensValue,
        dstAmount: outputTokensValue
      })
    );
  }

  // v2.2 version
  function afterWithdrawalExecutionCallback(
    GmxEventUtils.EventLogData memory withdrawalData,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) public {
    GmxPriceLib.GmxPriceDependecies memory priceDeps;
    IGmxDataStore dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
    SlippageAccumulator slippageAccumulator;
    address poolManagerLogic;
    GmxAfterTxValidatorLib.GmxAfterWithdrawalData memory afterWithdrawalData;
    {
      afterWithdrawalData.account = withdrawalData.addressItems.get("account");
      afterWithdrawalData.market = withdrawalData.addressItems.get("market");
      afterWithdrawalData.marketTokenAmount = withdrawalData.uintItems.get("marketTokenAmount");
      afterWithdrawalData.minLongTokenAmount = withdrawalData.uintItems.get("minLongTokenAmount");
      afterWithdrawalData.minShortTokenAmount = withdrawalData.uintItems.get("minShortTokenAmount");
    }
    {
      dataStore = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).dataStore();
      requireControllerRole(dataStore);
      GmxStructs.PoolSetting memory poolSetting = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard)
        .dHedgePoolsWhitelist(afterWithdrawalData.account);
      require(poolSetting.poolLogic == afterWithdrawalData.account, "not gmx whitelisted");
      poolManagerLogic = IPoolLogic(poolSetting.poolLogic).poolManagerLogic();
      slippageAccumulator = IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).slippageAccumulator();
      priceDeps = GmxPriceLib.GmxPriceDependecies({
        dataStore: dataStore,
        reader: IGmxExchangeRouterContractGuard(exchangeRouterContractGuard).reader(),
        assetHandler: GmxAfterTxValidatorLib.getAssetHandler(poolManagerLogic),
        virtualTokenResolver: IGmxVirtualTokenResolver(exchangeRouterContractGuard)
      });
    }
    uint256 inputTokensValue;
    uint256 outputTokensValue;
    {
      // https://github.com/gmx-io/gmx-synthetics/blob/main/contracts/withdrawal/ExecuteWithdrawalUtils.sol#L148
      uint256 outputAmount = eventData.uintItems.items[0].value; // longToken
      uint256 secondaryOutputAmount = eventData.uintItems.items[1].value; // shortToken
      (inputTokensValue, outputTokensValue) = GmxAfterTxValidatorLib.getMaxWithdrawalSlippageData({
        afterWithdrawalData: afterWithdrawalData,
        priceDependencies: priceDeps,
        isMinOutputAmountUsed: false,
        optionalOutputLongTokenAmount: outputAmount,
        optionalOutputShortTokenAmount: secondaryOutputAmount
      });
    }

    slippageAccumulator.updateSlippageImpact(
      poolManagerLogic,
      to,
      SlippageAccumulator.SwapData({
        srcAsset: afterWithdrawalData.market, // using USDPriceAggregator
        dstAsset: afterWithdrawalData.market, // using USDPriceAggregator
        srcAmount: inputTokensValue,
        dstAmount: outputTokensValue
      })
    );
  }

  // v2.1 version
  // TODO remove after transition to v2.2
  function afterOrderExecutionCallback(
    OrderOld.Props memory order,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) external {
    GmxEventUtils.EventLogData memory orderData;
    orderData.addressItems.initItems(3);
    orderData.addressItems.setItem(0, "account", order.addresses.account);
    orderData.addressItems.setItem(1, "market", order.addresses.market);
    orderData.addressItems.setItem(2, "initialCollateralToken", order.addresses.initialCollateralToken);
    orderData.addressItems.initArrayItems(1);
    orderData.addressItems.setItem(0, "swapPath", order.addresses.swapPath);
    orderData.uintItems.initItems(3);
    orderData.uintItems.setItem(0, "orderType", uint256(order.numbers.orderType));
    orderData.uintItems.setItem(1, "initialCollateralDeltaAmount", order.numbers.initialCollateralDeltaAmount);
    orderData.uintItems.setItem(2, "minOutputAmount", order.numbers.minOutputAmount);

    afterOrderExecutionCallback({
      orderData: orderData,
      to: to,
      eventData: eventData,
      exchangeRouterContractGuard: exchangeRouterContractGuard
    });
  }

  // v2.1 version
  // TODO remove after transition to v2.2
  function afterDepositExecutionCallback(
    IGmxDepositOld.Props memory deposit,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) external {
    // Convert deposit to event log data
    GmxEventUtils.EventLogData memory depositData;
    depositData.addressItems.initItems(4);
    depositData.addressItems.setItem(0, "account", deposit.addresses.account);
    depositData.addressItems.setItem(1, "market", deposit.addresses.market);
    depositData.addressItems.setItem(2, "initialLongToken", deposit.addresses.initialLongToken);
    depositData.addressItems.setItem(3, "initialShortToken", deposit.addresses.initialShortToken);
    depositData.uintItems.initItems(3);
    depositData.uintItems.setItem(0, "initialLongTokenAmount", deposit.numbers.initialLongTokenAmount);
    depositData.uintItems.setItem(1, "initialShortTokenAmount", deposit.numbers.initialShortTokenAmount);
    depositData.uintItems.setItem(2, "minMarketTokens", deposit.numbers.minMarketTokens);
    afterDepositExecutionCallback({
      depositData: depositData,
      to: to,
      eventData: eventData,
      exchangeRouterContractGuard: exchangeRouterContractGuard
    });
  }

  // v2.1 version
  // TODO remove after transition to v2.2
  function afterWithdrawalExecutionCallback(
    IGmxWithdrawalOld.Props memory withdrawal,
    address to,
    GmxEventUtils.EventLogData memory eventData,
    address exchangeRouterContractGuard
  ) external {
    // Convert withdrawal to event log data
    GmxEventUtils.EventLogData memory withdrawalData;
    withdrawalData.addressItems.initItems(2);
    withdrawalData.addressItems.setItem(0, "account", withdrawal.addresses.account);
    withdrawalData.addressItems.setItem(1, "market", withdrawal.addresses.market);

    withdrawalData.uintItems.initItems(3);
    withdrawalData.uintItems.setItem(0, "marketTokenAmount", withdrawal.numbers.marketTokenAmount);
    withdrawalData.uintItems.setItem(1, "minLongTokenAmount", withdrawal.numbers.minLongTokenAmount);
    withdrawalData.uintItems.setItem(2, "minShortTokenAmount", withdrawal.numbers.minShortTokenAmount);
    afterWithdrawalExecutionCallback({
      withdrawalData: withdrawalData,
      to: to,
      eventData: eventData,
      exchangeRouterContractGuard: exchangeRouterContractGuard
    });
  }
}
