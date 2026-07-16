// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../controller/Controllable.sol";
import "../../interfaces/IClerkTypes.sol";
import "../../interfaces/ICompanyManager.sol";

/// @notice Storage for any CompanyManager variables
///         It contains types and variables to store following data:
///         - departments
///         - workers
///         - week budgets
/// @author dvpublic
abstract contract CompanyManagerStorage is Initializable
, Controllable
, ICompanyManager {

  // don't change names or ordering!

  // *****************************************************
  // ************* Constants *****************************
  // *****************************************************

  /// @notice Version of the contract
  /// @dev Should be incremented when contract changed
  string constant public VERSION = "1.0.0";

  HourRate constant public MAX_HOURLY_RATE = HourRate.wrap(200);
  /// @dev length of all names and titles must be less then following value
  uint constant public NAME_LEN_LIMIT = 20;
  /// @notice Total sum of shares of all departments
  uint constant public TOTAL_SUM_SHARES = 100;


  /// @notice All flags APPROVER_XXX contains this flag
  ///         to indicate that this approver kind is positive (this is approver)
  ///         Any flags NOT_APPROVER_XXX shouldn't contain 0x1
  uint constant public FLAG_IS_APPROVER = 0x1;

  /// @notice Approver is valid because he is a head of the worker's department
  ApproverKind constant public APPROVER_NATURE_HEAD_OF_DEPARTMENT = ApproverKind.wrap(FLAG_IS_APPROVER | 0x2);

  /// @notice Approver is valid because both approver and worker are heads of different departments
  ApproverKind constant public APPROVER_NATURE_BOTH_HEADS = ApproverKind.wrap(FLAG_IS_APPROVER | 0x4);

  /// @notice Approver is valid because
  ///         the approver and the worker work in the same department,
  ///         the approver has higher role and the option
  ///         approve-low-by-high is enabled for the department
  ApproverKind constant public APPROVER_NATURE_LOW_BY_HIGH = ApproverKind.wrap(FLAG_IS_APPROVER | 0x8);

  /// @notice Approver is NOT valid because the worker doesn't belong to any department
  ApproverKind constant public NOT_APPROVER_NATURE_NOT_WORKER = ApproverKind.wrap(0x2000);

  /// @notice Approver is NOT valid because he is a worker
  ApproverKind constant public NOT_APPROVER_NATURE_APPROVER_IS_WORKER = ApproverKind.wrap(0x4000);

  /// @notice Approver is NOT valid because the worker doesn't belong to any department
  ApproverKind constant public NOT_APPROVER = ApproverKind.wrap(0);

  // ****************************************************
  // ******** Department options flags ******************
  // ****************************************************

  /// @notice Automatic boosting of hour-rate is used in the department
  ///         When total number of hours worked reaches threshold, the
  ///         app suggests to increase hour rate to the worker. Exact
  ///         algo of rate-boosting is implemented in IBoostCalculator
  uint constant public FLAG_DEPARTMENT_OPTION_AUTO_BOOST_ENABLED = 0x1;

  /// @notice Flag to enable option Approve-low-by-high.
  ///         Allow to use following approving rules for the department:
  ///         any worker with higher role is able to approve
  ///         requests of any worker with lower role
  uint constant public FLAG_DEPARTMENT_OPTION_APPROVE_LOW_BY_HIGH = 0x2;


  // *****************************************************
  // ********************** Members **********************
  // *****************************************************

  /// @notice Salary token - the salary is paid using this token
  ///         All budgets are given in salary tokens (amountST)
  ///         All debts are nominated in USD (amountUSD)
  ///         PriceOracle is used to calculate price of 1 USD in ST
  ///         Salary token can be changed but only together with PriceOracle.
  address public salaryToken;

  /// @notice A counter to generate WorkerUid for newly registered workers
  WorkerUid internal _workerUidCounter;

  /// @notice Full list of registered departments
  DepartmentUid[] public departments;
  /// @notice Full list of registered workers
  WorkerUid[] public workers;

  /// @notice The department in which the worker works
  ///         The nomarch (if assigned) is always last here
  mapping(WorkerUid => DepartmentUid) public workerToDepartment;
  /// @notice Data of the registered departments
  mapping(DepartmentUid => Department) public departmentsData;
  /// @notice Optional features available for departments, see constants FLAG_DEPARTMENT_OPTION_XXX
  mapping(DepartmentUid => DepartmentOptionMask) public departmentOptions;
  /// @notice head to department
  mapping(address => DepartmentUid) public heads;
  mapping(DepartmentUid => WorkerUid[]) public departmentToWorkers;


  /// @notice Set of active worker wallets
  ///         For each worker it contains one and only one single record for the worker:
  ///             active worker wallet => workerUid
  mapping(address => WorkerUid) public activeWallets;
  mapping(WorkerUid => Worker) public workersData;

  /// @notice Budget of single salary payment in units [salary token]
  ///         Actually, the week budget is only protection against too low amount on the balance.
  ///
  ///         week budget is auto adjusted to available amount at the start of epoch.
  ///                  C = budget from CompanyManager, S - balance of salary tokens, P - week budget
  ///                  C > S: not enough money, revert
  ///                  C <= S: use all available money to pay salary, so P := S
  AmountST public weekBudgetST;
  /// @notice Budget shares info: list of departments
  DepartmentUid[] public departmentUidsShares;
  /// @notice Budget shares info: list of share values
  ///         Each value belongs to interval [0...TOTAL_SUM_SHARES]
  ///         Total sum by all departments from departmentUidsShares
  ///         is always equal to TOTAL_SUM_SHARES
  mapping (DepartmentUid => uint) public departmentShares;

  /// @notice Budget shares info: list of limits (in percents) for each role in each department
  ///         If there is no data for the department, then default values are used
  ///              Default: each role has limit TOTAL_SUM_SHARES
  ///              It means, that all debts of the lowest role should be completely paid before
  ///              it would be possible to pay any debts for higher role.
  ///              If there is not enough money to pay debts of novices, other roles will receive nothing.
  ///         It's possible to set different limits. I.e. assume TOTAL_SUM_SHARES = 100
  ///              We set following values: Novices = 50, Educated = 25, Blessed = 15, Nomarch = 10
  ///              It means, that 50% of the budget should be used to pay debts of novices.
  ///              For Educated it's possible to use 25% of the budget + all amount remaining after paying novice debts.
  ///              For Blessed: 15% + all amount remianing after paying to novices and educated, and so on.
  ///              In this scheme, nomarchs will received at least 10% of the budget in any case.
  /// @dev The size of uint[] can be less then current countRoles
  ///      In that case, it's assumed that all missed roles have 0 values.
  mapping(DepartmentUid => uint[]) public roleShares;


  //TO DO add any vars here


  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  /// @notice how much roles are used
  mapping(RoleUid => RoleData) public rolesData;
  uint16 public countRoles;
  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  // Variable countRoles is LAST variable in the contract.
  // This fact is used in unit tests, see
  // ControllerTest.tst\upgradeProxyBatch
  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  // *****************************************************
  // ************* Events *********************************
  // *****************************************************

  /// @notice Hour rate of the worker is changed
  event WorkerRateUpdated(uint indexed worker, HourRate value);
  event WorkerNameUpdated(uint indexed worker, string value);
  event WorkerRoleUpdated(uint indexed worker, RoleUid value);
  event WorkerDepartmentUpdated(uint indexed worker, uint value);

  event OnInitRoles(string[] names, CountApprovals[] countApprovals);
  event OnAddDepartment(DepartmentUid indexed uid, string departmentTitle);
  event OnSetDepartmentHead(DepartmentUid indexed uid, address newHead);
  event OnSetDepartmentOption(DepartmentUid indexed uid, uint option, bool value);
  event OnAddWorker(WorkerUid indexed workerUid, address wallet, HourRate hourRate, string name, RoleUid roles);
  event OnChangeWallet(WorkerUid indexed workerUid, address newWallet);
  event OnSetWeekBudget(AmountST amountST, address salaryToken);
  event OnSetBudgetShares(DepartmentUid[] departmentUids, uint[] departmentShares);
  event OnSetRoleShares(DepartmentUid indexed departmentUid, uint[] roleShares);


  // *****************************************************
  // ************* Lengths for reading mappings **********
  // *****************************************************
  function lengthDepartments() external view override returns (uint) {
    return departments.length;
  }

  function lengthWorkers() external view override returns (uint) {
    return workers.length;
  }

  function lengthRoleShares(DepartmentUid uid) external view returns (uint) {
    return roleShares[uid].length;
  }

  function lengthRoles() external view override returns (uint) {
    return countRoles;
  }

  function lengthDepartmentToWorkers(DepartmentUid uid) external view returns (uint) {
    return departmentToWorkers[uid].length;
  }

  //slither-disable-next-line unused-state
  uint[50] private ______gap;

}
