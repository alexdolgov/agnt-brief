// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.10;

// Timelock related data types
library TimeLockDataTypes {
  enum AgreementContext {
    BRIDGE_ENDPOINT
  }
}

interface ITimeLock {
  struct Agreement {
    uint256 amount;
    TimeLockDataTypes.AgreementContext agreementContext;
    bool isFrozen;
    address asset;
    address beneficiary;
    bytes payload;
    uint48 releaseTime;
  }

  function createAgreement(
    address asset,
    uint256 amount,
    address beneficiary,
    bytes calldata payload,
    TimeLockDataTypes.AgreementContext agreementContext
  ) external;
}
