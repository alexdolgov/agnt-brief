// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

library GmxStructs {
  struct PoolSetting {
    address poolLogic;
    address withdrawalAsset;
  }

  struct VirtualTokenOracleSetting {
    address virtualToken;
    address underlyingToken;
  }

  struct DepositOrWithdrawalCommonParams {
    address receiver;
    address callbackContract;
    address[] longTokenSwapPath;
    address[] shortTokenSwapPath;
    bool shouldUnwrapNativeToken;
    address uiFeeReceiver;
  }

  struct GmxContractGuardConfig {
    address gmxExchangeRouter;
    address feeReceiver;
    address dataStore;
    address reader;
    address referralStorage;
  }
}
