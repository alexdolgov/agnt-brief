// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./IClerkTypes.sol";
import "./ICompanyManagerBase.sol";

/// @notice CompanyManager-functions to work with workers
interface ICompanyManagerWorkers is ICompanyManagerBase {
  function addWorker(
    address wallet_,
    HourRate hourRate_,
    string calldata name_,
    RoleUid roles_
  ) external;

  function addWorkers(
    address[] calldata wallets_,
    HourRate[] calldata rates,
    string[] calldata names,
    RoleUid[] calldata roles
  ) external;

  function setWorkerName(WorkerUid workerUid, string calldata name_) external;
  function setWorkerRole(WorkerUid workerUid, RoleUid role_) external;
  function setHourlyRate(WorkerUid workerUid, HourRate rate_) external;

  function changeWallet(WorkerUid worker_, address newWallet) external;
  function getWorkerByWallet(address wallet) external view returns (WorkerUid);

  /// @notice Provide info required by RequestManager at the point of request registration
  ///         Return the role of worker. It is taken into account in salary payment algo.
  ///         If the worker has several roles, the role with highest permissions
  ///         will be return (i.e. NOMARCH + EDUCATED => NOMARCH)
  ///
  ///         Revert if the worker is not found
  function getWorkerInfo(WorkerUid worker_)
  external
  view
  returns (
    HourRate hourRate,
    RoleUid role,
    DepartmentUid departmentUid,
    string memory name,
    address wallet
  );

  /// @notice Return true if the worker is registered in workersData
  function isWorkerValid(WorkerUid worker_) external view returns (bool);

  ///  @notice Get active wallet for the given worker
  function getWallet(WorkerUid workerId_) external view returns (address);

  function lengthWorkers() external view returns (uint);
}