//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./IERC4626.sol";
import "./IServiceConfiguration.sol";

import "./IPoolBase.sol";

import "../controllers/interfaces/IPoolControllerDynamic.sol";
import "../interfaces/IPoolAccessControl.sol";
import "../interfaces/IPoolDynamicStructures.sol";

/**
 * @title The interface for liquidity pools.
 */
interface IPoolDynamic is IPoolBase {
  event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

  event Withdraw(
    address indexed sender,
    address indexed receiver,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );
  function borrowerWalletAddr() external view returns (address);

  function transferToBorrowerWallet(uint256 assets) external;
  function depositOffChain(uint256 assets, address lender) external returns (uint256 shares);
  function depositFromTransfer(
    uint256 assets,
    address lender,
    bytes32 transferTxHash
  ) external returns (uint256 shares);
  /**
   * @dev The PoolController contract
   */
  function poolControllerDynamic() external view returns (IPoolControllerDynamic);

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (IPoolConfigurableSettingsDynamic calldata settings);
  function setIndicativeAndCollateralRates(uint256 _indicativeInterestRate, uint256 _collateralRate) external;
  function setExchangeRate(
    uint256 _exchangeRate,
    uint256 interestRate,
    uint256 typeDependantChangeParam,
    uint256 exchangeRateMaturityDay
  ) external;
  // function setExchangeRateDynamic(uint256 _exchangeRate) external;
  // function setExchangeRateLinear(uint256 _exchangeRate, uint256 exchangeRateChange, uint256 interestRate) external;
  // function setExchangeRateCompounding(
  //   uint256 _exchangeRate,
  //   uint256 exchangeRateCompoundingRate,
  //   uint256 interestRate
  // ) external;
  // function setExchangeRateAtMaturity(
  //   uint256 _exchangeRate,
  //   uint256 _exchangeRateAtMaturity,
  //   uint256 _exchangeRateMaturityDay,
  //   uint256 interestRate
  // ) external;

  function assetBalanceOf(address lender) external view returns (uint256);
  function addAdjustmentAmount(address lender, uint256 debit, uint256 credit) external;

  function totalAssets() external view returns (uint256);
  /**
   * @dev Submits a withdrawal request, incurring a fee.
   */
  function requestRedeem(uint256 shares) external returns (uint256 assets);
  function changeRedemptionDestination(address lender, bytes32 uuid, address fundsDestination) external;
}
