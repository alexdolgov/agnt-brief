//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./IERC4626.sol";
import "./ILYTPoolServiceConfiguration.sol";

import "./IPoolBase.sol";

import "../controllers/interfaces/ILYTPoolController.sol";
import "../interfaces/ILYTPoolAccessControl.sol";
import "../interfaces/ILYTPoolStructures.sol";

/**
 * @title The interface for liquidity pools.
 */
interface ILYTPool is IPoolBase {
  event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

  event Withdraw(
    address indexed sender,
    address indexed receiver,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );
  function treasuryWalletAddr() external view returns (address);

  function transferToTreasuryWallet(uint256 assets) external;
  function depositOffChain(uint256 assets, address lender,     bytes32 transferTxHash) external returns (uint256 shares);
  function depositFromTransfer(
    uint256 assets,
    address lender,
    bytes32 transferTxHash
  ) external returns (uint256 shares);
  /**
   * @dev The PoolController contract
   */
  function lytPoolController() external view returns (ILYTPoolController);

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (ILYTPoolConfigurableSettings calldata settings);
  function setIndicativeAndCollateralRates(uint256 _indicativeInterestRate, uint256 _collateralRate) external;
  function setExchangeRate(
    uint256 _exchangeRate,
    uint256 interestRate,
    uint256 typeDependantChangeParam,
    uint256 exchangeRateMaturityDay
  ) external;
  function assetBalanceOf(address lender) external view returns (uint256);
  function addAdjustmentAmount(address lender, uint256 debit, uint256 credit) external;
  function totalAssets() external view returns (uint256);
  function requestRedeem(uint256 shares) external returns (uint256 assets);
  function changeRedemptionDestination(address lender, bytes32 uuid, address fundsDestination) external;
}