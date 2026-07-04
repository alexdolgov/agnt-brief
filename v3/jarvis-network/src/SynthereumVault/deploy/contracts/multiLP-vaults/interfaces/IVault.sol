// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ISynthereumFinder} from '../../core/interfaces/IFinder.sol';
import {IVaultMigration} from './IVaultMigration.sol';

/**
 * @title Provides interface for Public vault
 */
interface IVault is IVaultMigration {
  event Deposit(
    address indexed sender,
    uint256 collateralDeposited,
    uint256 lpTokensOut,
    uint256 rate,
    uint256 discountedRate
  );

  event Withdrawal(
    address indexed sender,
    uint256 lpTokensBurned,
    uint256 collateralOut,
    uint256 rate
  );

  event LPActivated(uint256 collateralAmount, uint128 overCollateralization);

  event Donation(address indexed sender, uint256 collateralAmount);

  /**
   * @notice Initialize vault as per OZ Clones pattern
   * @param _lpTokenName name of the LP token representing a share in the vault
   * @param _lpTokenSymbol symbol of the LP token representing a share in the vault
   * @param _pool address of MultiLP pool the vault interacts with
   * @param _overCollateralization over collateral requirement of the vault position in the pool
   * @param _finder The synthereum finder
   */
  function initialize(
    string memory _lpTokenName,
    string memory _lpTokenSymbol,
    address _pool,
    uint128 _overCollateralization,
    ISynthereumFinder _finder
  ) external;

  /**
   * @notice Upgrade vault as per OZ Clones pattern
   */
  function reinitialize() external;

  /**
   * @notice Deposits collateral into the vault
   * @param _collateralAmount amount of collateral units
   * @return lpTokensOut amount of LP tokens received as output
   */
  function deposit(uint256 _collateralAmount)
    external
    returns (uint256 lpTokensOut);

  /**
   * @notice Withdraw collateral from vault
   * @param _lpTokensAmount amount of LP token units
   * @return collateralOut amount of collateral received
   */
  function withdraw(uint256 _lpTokensAmount)
    external
    returns (uint256 collateralOut);

  /**
   * @notice Deposits collateral into the vault as a form of donation (no LP token minted)
   * @param _collateralAmount amount of collateral to donate
   * @notice that will be split among existing LPs
   */
  function donate(uint256 _collateralAmount) external;

  /**
   * @notice Return current LP vault rate against collateral
   * @return rate Vault rate
   */
  function getRate() external view returns (uint256 rate);

  /**
   * @notice Return current LP vault discounted rate against collateral
   * @return rate Vault rate
   * @return discountedRate Vault discounted rate
   * @return maxCollateralDiscounted max amount of collateral units at discount
   */
  function getDiscountedRate()
    external
    view
    returns (
      uint256 rate,
      uint256 discountedRate,
      uint256 maxCollateralDiscounted
    );

  /**
   * @notice Return the vault version
   * @return version version of the vault
   */
  function getVersion() external view returns (uint256 version);

  /**
   * @notice Return the vault reference pool
   * @return poolAddress address of the pool
   */
  function getPool() external view returns (address poolAddress);

  /**
   * @notice Return the vault collateral token
   * @return collateral collateral token
   */
  function getPoolCollateral() external view returns (address collateral);

  /**
   * @notice Return the vault overcollateralization factor
   * @return overcollateral overcollateralization factor
   */
  function getOvercollateralization()
    external
    view
    returns (uint128 overcollateral);

  /**
   * @notice Return if account is locked and the actual timeLock
   * @param _account address of the user
   * @return isLocked true if locked, otherwise false
   * @return timeLock in seconds
   * @return remainingTime if locked remaining time in seconds for unlocking, otherwise 0
   */
  function getAccountLockInfo(address _account)
    external
    view
    returns (
      bool isLocked,
      uint256 timeLock,
      uint256 remainingTime
    );
}
