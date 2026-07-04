// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./CollateralManager.sol";

contract CollateralManagerFactory is AccessControl {
  bytes32 public constant DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");

  event CollateralManagerCreated(
    address indexed collateralManager,
    address defaultAdmin,
    address indexed depositTokenRegistry,
    address indexed poolRegistry,
    address collateralAdmin,
    address collateralTokenHandler
  );

  constructor(address deployer) {
    require(deployer != address(0), "Invalid deployer address");
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(DEPLOYER_ROLE, deployer);
  }

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
  )
    external
    returns (
      // need to add onlyRole
      address
    )
  {
    // Create new CollateralManager instance
    CollateralManager collateralManager = new CollateralManager(
      initialAdmin,
      depositTokenRegistry,
      poolRegistry,
      collateralAdmin,
      collateralTokenHandler
    );

    // Emit creation event
    emit CollateralManagerCreated(
      address(collateralManager),
      initialAdmin,
      depositTokenRegistry,
      poolRegistry,
      collateralAdmin,
      collateralTokenHandler
    );

    return address(collateralManager);
  }
}
