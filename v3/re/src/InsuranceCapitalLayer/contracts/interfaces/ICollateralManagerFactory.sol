// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface ICollateralManagerFactory {
  /**
   * @dev Emitted when a new CollateralManager is created
   * @param collateralManager Address of the newly created CollateralManager
   * @param depositTokenRegistry Address of the DepositTokenRegistry used
   * @param poolRegistry Address of the PoolRegistry used
   * @param collateralAdmin Address that will have COLLATERAL_ADMIN role
   * @param collateralTokenHandler Address of the CollateralTokenHandler used
   */
  event CollateralManagerCreated(
    address indexed collateralManager,
    address indexed depositTokenRegistry,
    address indexed poolRegistry,
    address collateralAdmin,
    address collateralTokenHandler
  );

  /**
   * @dev Creates a new CollateralManager instance
   * @param depositTokenRegistry Address of the DepositTokenRegistry
   * @param poolRegistry Address of the PoolRegistry
   * @param collateralAdmin Address that will have COLLATERAL_ADMIN role
   * @param collateralTokenHandler Address of the CollateralTokenHandler
   * @return The address of the newly created CollateralManager
   */
  function createCollateralManager(
    address initialAdmin,
    address depositTokenRegistry,
    address poolRegistry,
    address collateralAdmin,
    address collateralTokenHandler
  ) external returns (address);
}
