//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IPoolBase.sol";
import "../interfaces/IPoolFlexStructures.sol";
// import "./IERC4626.sol";
// import "./IServiceConfigurationV3.sol";
// import "./IRequestWithdrawable.sol";
import "../controllers/interfaces/IPoolControllerFlex.sol";
import "../controllers/interfaces/IWithdrawDepositControllerFlex.sol";

// import "../interfaces/IPoolAccessControl.sol";
import "../interfaces/IBusinessDayRegistry.sol";

/**
 * @title The interface for liquidity pools.
 */
interface IPoolFlex is IPoolBase {
  /**
   * @dev Emitted when tokens are deposited into the vault via the mint and deposit methods.
   */
  event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

  /**
   * @dev Emitted when shares are withdrawn from the vault by a depositor in the redeem or withdraw methods.
   */
  event Withdraw(
    address indexed sender,
    address indexed receiver,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );

  /**W
   * @dev The PoolController contract
   */
  function poolController() external view returns (IPoolControllerFlex);

  /**
   * @dev The WithdrawController contract
   */
  function withdrawDepositController() external view returns (IWithdrawDepositControllerFlex);

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (IPoolConfigurableSettingsFlex calldata settings);

  /**
   * @dev The current pool state.
   */
  function state() external view returns (IPoolLifeCycleStateFlex);

  function borrowerVaultAddr() external view returns (address);

  /**
   * @dev The pool accounting variables;
   */
  function accountings() external view returns (IPoolAccountingsFlex memory);

  function closeOfWithdrawTime() external view returns (uint256);

  function closeOfDepositTime() external view returns (uint256);

  function transferInDays() external view returns (uint256);

  function transferOutDays() external view returns (uint256);

  function businessDayRegistry() external view returns (IBusinessDayRegistry);

  /**
   * @dev Callback from the pool controller when the pool is activated
   */
  function onActivated() external;

  function setDailyInterestRate(uint256 _interestRate, uint256 _estimatedDailyRate) external;

  function dailyInterestAccural() external;

  function applyDailyRate(uint256 principal) external returns (uint256);

  function annualAPRToDailyRate(
    uint256 annualAPR,
    uint256 _estimatedDailyRate
  ) external view returns (uint256 _dailyInterestRate);

  function interestRate() external view returns (uint256 assets);

  function exchangeRate() external view returns (uint256 _exchangeRate);

  function getPoolConfiguration() external view returns (IPoolConfigurationStateFlex memory);

  function getPoolOverview() external view returns (IPoolOverviewStateFlex memory);

  function getPoolAccountState(address accountAddr) external view returns (IPoolAccountStateFlex memory);

  /**
   * @dev Calculate the total amount of underlying assets held by the vault,
   * excluding any assets due for withdrawal.
   */
  function totalAvailableAssets() external view returns (uint256);

  /**
   * @dev The total available supply that is not marked for withdrawal
   */
  function totalAvailableSupply() external view returns (uint256);

  function convertToShares(uint256 assets) external view returns (uint256 shares);

  function convertToAssets(uint256 shares) external view returns (uint256 assets);

  function deposit(uint256 assets, address lender) external returns (uint256 shares, uint256 transferInDayTimestamp);

  function totalAssetsDueForWithdraws() external view returns (uint256);

  function feesPaidDown(uint256 paidAmount) external;

  function withdrawEvents() external view returns (IPoolLenderWithdrawEvent[] memory);

  function releaseWithdrawal(uint256 eventId) external returns (IPoolLenderWithdrawEvent memory ev);

  function repayLoans(uint256 assets, uint256 eventId) external;

  function nonBusinessDays() external view returns (uint64[] memory);

  function updateNonBusinessDays(uint64[] memory _timestamps) external;

  function topOffSharesDueToExchangeRateDecrease(address lender, uint256 catchupShares) external;
}
