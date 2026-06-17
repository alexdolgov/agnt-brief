//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "../../interfaces/ILYTPoolStructures.sol";

/**
 * @title A Pool's Admin controller
 * @dev Pool Admin's interact with the pool via the controller, including funding loans and adjusting
 * settings.
 */
interface ILYTPoolController {
  /**
   * @dev Emitted when pool settings are updated.
   */
  event PoolSettingsUpdated();

  /**
   * @dev Emitted when the pool transitions a lifecycle state.
   */
  event LifeCycleStateTransition(ILYTPoolLifeCycleState state);
  event DepositStateTransition(ILYTPoolDepositActiveState state);
  event WithdrawStateTransition(ILYTPoolWithdrawActiveState state);
  /**
   * @dev Emitted when a pool is marked as in DisruptionOrDefault.
   */
  event DisruptionOrDefault(address indexed pool);

  function serviceConfiguration() external view returns (address);

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (ILYTPoolConfigurableSettings memory);
  function state() external view returns (ILYTPoolLifeCycleState);
  function depositState() external view returns (ILYTPoolDepositActiveState);
  function withdrawState() external view returns (ILYTPoolWithdrawActiveState);

  function activatedAt() external view returns (uint256);
  function poolAdmin() external view returns (address);

  function issuer() external view returns (address);

  function treasuryWalletAddr() external view returns (address);

  function feeCollectorAddress() external view returns (address);

  function addAdjustmentAmount(address lender, uint256 debit, uint256 credit) external;

  function setExchangeRateDynamic(uint256 _exchangeRate) external;
  function setExchangeRateLinear(uint256 _exchangeRate, uint256 exchangeRateChange, uint256 interestRate) external;
  function setExchangeRateCompounding(
    uint256 _exchangeRate,
    uint256 exchangeRateCompoundingRate,
    uint256 interestRate
  ) external;
  function setExchangeRateAtMaturity(
    uint256 _exchangeRate,
    uint256 _exchangeRateAtMaturity,
    uint256 _exchangeRateMaturityDay,
    uint256 interestRate
  ) external;
  function setIndicativeAndCollateralRates(uint256 _indicativeInterestRate, uint256 _collateralRate) external;
  function pauseDeposits() external;

  function resumeDeposits() external;
}