// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../controller/Controllable.sol";
import "../../interfaces/IDebtsManager.sol";

/// @notice Storage for any DebtsManager variables
///         A debt = the company's debt to the worker
///         1 request - 1 debt - 1..N payments
/// @author dvpublic
abstract contract DebtsManagerStorage is Initializable, Controllable, IDebtsManager {

  // don't change names or ordering!

  // *****************************************************
  // ************* Constants *****************************
  // *****************************************************

  /// @notice Version of the contract
  /// @dev Should be incremented when contract changed
  string constant public VERSION = "1.0.0";


  // *****************************************************
  // ************ Members ********************************
  // *****************************************************
  /// @notice The initial value of current epoch at the contract deploy-solution
  EpochType public firstEpoch;

  /// @dev Greater then 0
  EpochType public currentEpoch;

  /// @notice A counter to generate DebtUid - unique uids for new debts
  DebtUid public debtUidCounter;

  /// @notice Max role-value used in roleDebts
  /// @dev List of roles can be changed in companyManager - number of the roles can increase or decrease
  ///      But we always need a way to enumerate all values inside DepartmentDebts.roleToDebts
  ///      so we need to know max role value
  RoleUid public maxRoleValueInAllTimes;


  /// @notice All departments for which we have any debts (paid or unpaid)
  ///         New departments are always added to the end of the array
  ///         The array allows us to enumerate all registered departments if necessary.
  ///         Each department must be registered here once and only once.
  /// @dev registeredDepartments allows to check if the department is already registered
  DepartmentUid[] public departments;

  /// @notice The value is an index of the corresponded department in departments-array
  /// @dev Allow to check if the department is already registered in departments-array
  mapping(DepartmentUid => NullableValue64) public registeredDepartments;

  /// @notice Info about debts registered for (department, role) - total count, index of last unpaid debt and so on
  mapping(DepartmentUid => mapping(RoleUid => RoleDebts)) public roleDebts;
  /// @notice List of debts registered for (department, role, firstUnpaidDebtIndex0 + 1)
  mapping(DepartmentUid => mapping(RoleUid => mapping(NullableValue64 => DebtUid))) public roleDebtsList;


  /// @notice All registered requests - approved and not approved
  mapping(RequestUid => RequestData) public requestsData;
  /// @notice All requests with registered debts
  mapping(RequestUid => DebtUid) public requestsToDebts;

  /// @notice All registered debts
  mapping(DebtUid => RequestUid) public debtsToRequests;
  /// @notice Currently unpaid amount [USD] for each debt
  mapping(DebtUid => AmountUSD) public unpaidAmountsUSD;


  /// @notice Statistic by workers
  ///         The statistics is updated when a debt is created/revoked
  mapping(WorkerUid => WorkerStat) public statForWorkers;

  /// @notice Address of previously used PayrollClerk (from tetu-contract project)
  ///         Initial workers stat is migrated from it
  address public predecessor;

  // *****************************************************
  // ***** Payment details for the current epoch *********
  // When new epoch is started, you get possibility to pay
  // all debts of the previous epochs. Following data
  // fixes the week budget details for such payments.
  // *****************************************************

  /// @notice The salary token used to make any payments during current epoch
  ///         The values weekBudgetST and weekBudgetLimitsForRolesST are calculated using this token.
  /// @dev This is a copy of the CompanyManager.salaryToken made at startEpoch call
  address public weekSalaryToken;

  /// @notice Permissions to pay to department in the current epoch
  ///         I.e. we have changed epoch 11 to 12
  ///         Current epoch is 12 now and we can pay debts for epoch 11 (and less)
  ///         We ask week cm.getWeekBudgetsST and get list of departments and related sums
  ///         For each department we store here a pair (department => 12)
  ///         At the same time we initialize weekBudgetST[department] by amount valid for the current epoch.
  ///         So, we can enumerate full list of departments
  ///         and make payments only for departments with stored [currentEpoch] here.
  mapping(DepartmentUid => EpochType) public weekDepartmentUidsToPay;

  /// @notice Week budget in salary tokens for each department
  ///         These values are fixed at the moment of startEpoch
  /// @dev Sum of all values is equal to total week budget [ST] passed to startEpoch
  mapping(DepartmentUid => AmountST) public weekBudgetST;

  /// @notice What amounts [salary tokens] are allowed to pay debts in the period up to the end of the current epoch.
  ///         Each array contains max allowed amounts for the roles.
  /// @dev The amounts are reduced after each pay.
  ///      The amounts are completely reinitialized on the start of a new epoch
  mapping(DepartmentUid => AmountST[]) public weekBudgetLimitsForRolesST;

  // *****************************************************
  // ************* Custom errors *************************
  // *****************************************************

  /// @notice Try to reduce the debts on the amount
  ///         that exceeds the total available budget for the pair (department, role)
  error ErrorTooBigAmount();

  /// @notice The debt was already created for the request
  error ErrorDebtAlreadyRegistered(RequestUid requestUid);

  /// @notice Attempt to revoke a debt of not-current epoch
  error ErrorDebtIsNotRevocable(DebtUid debtUid);

  /// @notice THere is no registered debt for the request
  error ErrorRequestHasNoDebt();

  /// @notice This function can be called by requests manager only
  error ErrorOnlyRequestsManager();


  // *****************************************************
  // ************* Events ********************************
  // *****************************************************

  event OnCreateDebt(DebtUid indexed debtUid, WorkerUid workerUid);
  event OnRevokeDebt(DebtUid indexed debtUid, WorkerUid workerUid);
  event OnStartEpoch(EpochType indexed newEpoch, bool paySalaryImmediatelly);
  event OnPayDebt(DebtUid indexed debtUid, WorkerUid workerUid, bool partialPay);

  event OnPayForDepartment(DepartmentUid indexed departmentUid);
  event OnPayForRole(DepartmentUid indexed departmentUid, RoleUid role);
  event OnPay();


  // *****************************************************
  // ************* Lengths and getters *******************
  // *****************************************************
  function lengthDepartments() external view returns (uint) {
    return departments.length;
  }

  function lengthWeekBudgetLimitsForRolesST(DepartmentUid departmentUid) external view returns (uint) {
    return weekBudgetLimitsForRolesST[departmentUid].length;
  }

  //slither-disable-next-line unused-state
  uint[50] private ______gap;
}
