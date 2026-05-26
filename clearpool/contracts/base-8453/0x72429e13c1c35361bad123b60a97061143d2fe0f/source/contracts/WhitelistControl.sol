//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {IPoolFactoryLite} from './interfaces/IPoolFactory.sol';

/**
 * @title Smart contract for creating term pools;
 * @notice Credit Vaults Pool is a very flexible lending product that has higher lender APR,
 *  potentially high flexibility for lenders, and can be customized and used by any borrower type;
 */
contract WhitelistControl is Initializable {
  event ManagerSet(address indexed manager);
  event ManagerRemoved(address indexed manager);

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  error NotManager(address sender);
  error AlreadyManager(address sender);
  error NotAdmin(address sender);
  error ZeroAddress();

  address public admin;
  IPoolFactoryLite public poolFactory;

  mapping(address => bool) public managers;

  modifier onlyAdmin() {
    if (admin != msg.sender) revert NotAdmin(msg.sender);
    _;
  }

  modifier onlyManager() {
    if (!managers[msg.sender]) revert NotManager(msg.sender);
    _;
  }

  modifier nonZA(address addr) {
    if (addr == address(0)) revert ZeroAddress();
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Initializing all variables;
   */
  function initialize(
    address _admin,
    address _poolFactory
  ) external initializer nonZA(_admin) nonZA(_poolFactory) {
    admin = _admin;
    poolFactory = IPoolFactoryLite(_poolFactory);
  }

  /**
   * @notice Function for unblocking a blacklisted lenders:
   * @param _lenders - The list of addresses of the blacklisted lenders
   */
  function whitelistLenders(address[] calldata _lenders) external onlyManager {
    uint256 lendersCount = _lenders.length;
    for (uint256 i; i < lendersCount; i++) {
      whitelistLender(_lenders[i]);
    }
  }

  /**
   * @notice Function for unblocking a blacklisted lender:
   * @param _lender - The address of the blacklisted lender
   */
  function whitelistLender(address _lender) public onlyManager nonZA(_lender) {
    return poolFactory.whitelistLender(_lender);
  }

  /**
   * @notice Function for unblocking a blacklisted borrowers:
   * @param _borrowers - The list of addresses of the blacklisted borrowers
   */
  function whitelistBorrowers(address[] calldata _borrowers) external onlyManager {
    uint256 borrowersCount = _borrowers.length;
    for (uint256 i; i < borrowersCount; i++) {
      whitelistBorrower(_borrowers[i]);
    }
  }

  /**
   * @notice Function for unblocking a blacklisted borrower:
   * @param _borrower - The address of the blacklisted borrower
   */
  function whitelistBorrower(address _borrower) public onlyManager nonZA(_borrower) {
    return poolFactory.whitelistBorrower(_borrower);
  }

  /**
   * @notice Function for blocking the lenders:
   * @param _lenders - The list of addresses of the lenders
   */
  function blacklistLenders(address[] calldata _lenders) external onlyManager {
    uint256 lendersCount = _lenders.length;
    for (uint256 i; i < lendersCount; i++) {
      blacklistLender(_lenders[i]);
    }
  }

  /**
   * @notice Function for blocking the lender:
   * @param _lender - Address of the lender
   */
  function blacklistLender(address _lender) public onlyManager nonZA(_lender) {
    return poolFactory.blacklistLender(_lender);
  }

  /**
   * @notice Function for blocking the borrowers:
   * @param _borrowers - The list of addresses of the borrowers
   */
  function blacklistBorrowers(address[] calldata _borrowers) external onlyManager {
    uint256 borrowersCount = _borrowers.length;
    for (uint256 i; i < borrowersCount; i++) {
      blacklistBorrower(_borrowers[i]);
    }
  }

  /**
   * @notice Function for blocking the borrower:
   * @param _borrower - Address of the borrower
   */
  function blacklistBorrower(address _borrower) public onlyManager nonZA(_borrower) {
    return poolFactory.blacklistBorrower(_borrower);
  }

  /**
   * @notice Function to return if lender is whitelisted:
   * @param _lender - Address of the lender
   */
  function isLenderWhitelisted(address _lender) external view returns (bool) {
    return poolFactory.whitelistedLenders(_lender);
  }

  /**
   * @notice Function to return if borrower is whitelisted:
   * @param _borrower - Address of the borrower
   */
  function isBorrowerWhitelisted(address _borrower) external view returns (bool) {
    return poolFactory.whitelistedBorrowers(_borrower);
  }

  /**
   * @notice Function to add new manager address in the managers map
   * @param manager_ - Address of the new manager
   */
  function addManager(address manager_) external onlyAdmin nonZA(manager_) {
    if (managers[manager_]) revert AlreadyManager(manager_);
    managers[manager_] = true;
    emit ManagerSet(manager_);
  }

  /**
   * @notice Function to remove the manager address from the managers map
   * @param manager_ - Address of the manager
   */
  function removeManager(address manager_) external onlyAdmin nonZA(manager_) {
    if (!managers[manager_]) revert NotManager(manager_);
    managers[manager_] = false;
    emit ManagerRemoved(manager_);
  }

  /**
   * @notice Function to transfer ownership of the contract
   * @param newAdmin - Address of the new admin
   */
  function transferOwnership(address newAdmin) external onlyAdmin nonZA(newAdmin) {
    address previousAdmin = admin;
    admin = newAdmin;
    emit OwnershipTransferred(previousAdmin, newAdmin);
  }
}
