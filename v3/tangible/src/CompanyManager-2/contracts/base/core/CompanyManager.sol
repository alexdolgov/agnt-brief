// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./CompanyManagerStorage.sol";
import "../../interfaces/ICompanyManager.sol";
import "../../interfaces/IApprovalsManager.sol";
import "../../interfaces/IPaymentsManager.sol";

/// @notice Control week budgets, workers, departments
/// @author dvpublic
contract CompanyManager is CompanyManagerStorage {

  // *****************************************************
  // *********** Initialization **************************
  // *****************************************************
  function initialize(
    address controller_
    , address salaryToken_
) external initializer {
    Controllable.__Controllable_init(controller_);

    if (salaryToken_ == address(0)) {
      revert ErrorZeroAddress(0);
    }
    salaryToken = salaryToken_;
  }

  // *****************************************************
  // ***************** Roles *****************************
  // *****************************************************
  /// @notice Set roles. Total number of roles is equal to the length of names array.
  function initRoles(
    string[] memory names_
  , CountApprovals[] memory countApprovals_
  ) external override {
    onlyGovernance();

    if (names_.length != countApprovals_.length) {
      revert ErrorArraysHaveDifferentLengths();
    }
    if (names_.length == 0) {
      revert ErrorEmptyArrayNotAllowed();
    }

    //delete old data
    uint16 oldCountRoles = countRoles;
    if (oldCountRoles != 0) {
      for (uint16 i = 0; i < oldCountRoles; i = _uncheckedInc16(i)) {
        delete rolesData[_getRoleByIndex(i)];
      }
    }

    uint16 newCountRoles = uint16(names_.length);
    for (uint16 i = 0; i < newCountRoles; i = _uncheckedInc16(i)) {
      RoleUid role = _getRoleByIndex(i);

      _validateString(bytes(names_[i]).length, NAME_LEN_LIMIT);

      if (CountApprovals.unwrap(countApprovals_[i]) == 0) {
        revert ErrorZeroValueNotAllowed(1);
      }

      rolesData[role] = RoleData({
        role: role
        , title: names_[i]
        , countApprovals: countApprovals_[i]
      });
    }

    countRoles = newCountRoles;
    emit OnInitRoles(names_, countApprovals_);
  }

  // *****************************************************
  // *********** Departments *****************************
  // *****************************************************

  /// @notice Create new department without head
  /// @param uid Arbitrary custom unique id > 0
  function addDepartment(
    DepartmentUid uid
  , string calldata departmentTitle
  ) external override {
    onlyGovernance();

    if (_equalTo(uid, 0)) {
      revert ErrorZeroValueNotAllowed(2);
    }
    if (!_equalTo(departmentsData[uid].uid, 0)) {
      revert ErrorDepartmentAlreadyRegistered(uid);
    }

    _validateString(bytes(departmentTitle).length, NAME_LEN_LIMIT);

    departmentsData[uid] = Department({uid: uid, head: address(0), title: departmentTitle});
    departments.push(uid);

    emit OnAddDepartment(uid, departmentTitle);
  }

  /// @return head UID of the department head
  /// @return departmentTitle Title of the department
  function getDepartment(DepartmentUid uid)
  external
  view
  override
  returns (address head, string memory departmentTitle) {
    Department storage d = departmentsData[uid];
    if (_equalTo(uid, 0) || !_equals(d.uid, uid)) {
      revert ErrorUnknownDepartment(uid);
    }

    head = d.head;
    departmentTitle = d.title;
  }

  /// @notice Move selected workers to the department
  /// @param workers_ The workers cannot be heads of other departments
  function moveWorkersToDepartment(
    WorkerUid[] calldata workers_
    , DepartmentUid departmentUid_
  ) external override {
    onlyGovernance();

    if (_equalTo(departmentUid_, 0) || !_equals(departmentsData[departmentUid_].uid, departmentUid_)) {
      revert ErrorUnknownDepartment(departmentUid_);
    }

    uint lenWorkers = workers_.length;
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      Worker storage worker = workersData[workers_[i]];

      DepartmentUid departmentHeadedBy = heads[worker.wallet];
      if (!_equalTo(departmentHeadedBy, 0) && !_equals(departmentHeadedBy, departmentUid_)) {
        revert ErrorCannotMoveHeadToAnotherDepartment();
      }

      if (_equalTo(worker.uid, 0)) {
        revert ErrorWorkerNotFound(workers_[i]);
      }
      if (_equals(workerToDepartment[workers_[i]], departmentUid_)) {
        revert ErrorActionIsAlreadyDone();
      }
      DepartmentUid prevDepartmentUid = workerToDepartment[workers_[i]];
      if (!_equalTo(prevDepartmentUid, 0)) {
        // remove the worker from previous department
        uint lenWorkersPrev = departmentToWorkers[prevDepartmentUid].length;
        for (uint j = 0; j < lenWorkersPrev; j = _uncheckedInc(j)) {
          if (_equals(departmentToWorkers[prevDepartmentUid][j], workers_[i])) {
            if (j < lenWorkersPrev - 1) {
              departmentToWorkers[prevDepartmentUid][j] = departmentToWorkers[prevDepartmentUid][lenWorkersPrev - 1];
              departmentToWorkers[prevDepartmentUid].pop();
              break;
            }
          }
        }
      }

      // add the worker to new department
      departmentToWorkers[departmentUid_].push(workers_[i]);
      workerToDepartment[workers_[i]] = departmentUid_;

      emit WorkerDepartmentUpdated(WorkerUid.unwrap(workers_[i]), DepartmentUid.unwrap(departmentUid_));
    }
  }

  /// @notice Set a worker as the head of the given department
  /// @dev Replace exist head by new one
  /// @param head_ can be 0 to unset the head
  function setDepartmentHead(
    DepartmentUid departmentUid_
  , address head_
  ) external override {
    onlyGovernance();
    Department storage d = departmentsData[departmentUid_];

    if (!_equals(d.uid, departmentUid_)) {
      revert ErrorUnknownDepartment(departmentUid_);
    }
    if (!_equalTo(heads[head_], 0)) {
      revert ErrorAlreadyHead(heads[head_]);
    }

    if (head_ != address(0)) {
      heads[head_] = departmentUid_;
    }
    if (d.head != address(0)) {
      heads[d.head] = DepartmentUid.wrap(0);
    }
    d.head = head_;

    emit OnSetDepartmentHead(departmentUid_, head_);
  }

  /// @notice Enable or disable option Approve-low-by-high
  /// @param optionFlag_ One of following values: CompanyManagerStorage.FLAG_DEPARTMENT_OPTION_XXX
  function setDepartmentOption(
      DepartmentUid departmentUid_
    , uint optionFlag_
    , bool value_
  ) external {
    _onlyGovernanceOrDepartmentHead(departmentUid_);

    if (!_equals(departmentsData[departmentUid_].uid, departmentUid_)) {
      revert ErrorUnknownDepartment(departmentUid_);
    }

    departmentOptions[departmentUid_] = setOption(
      departmentOptions[departmentUid_]
      , optionFlag_
      , value_
    );

    emit OnSetDepartmentOption(departmentUid_, optionFlag_, value_);
  }

  function getDepartmentOption(DepartmentUid departmentUid, uint optionFlag) external view returns (bool) {
    return isOptionEnabled(departmentOptions[departmentUid], optionFlag);
  }

  function renameDepartment(DepartmentUid departmentUid_, string memory departmentTitle_) external {
    _onlyGovernanceOrDepartmentHead(departmentUid_);

    if (!_equals(departmentsData[departmentUid_].uid, departmentUid_)) {
      revert ErrorUnknownDepartment(departmentUid_);
    }
    _validateString(bytes(departmentTitle_).length, NAME_LEN_LIMIT);

    departmentsData[departmentUid_].title = departmentTitle_;
  }

  // The department can be removed, but it's soft delete - ID of the department shouldn't be reused
  // to avoid any collisions in DebtsManager


  // *****************************************************
  // *********** Workers *********************************
  // *****************************************************

  /// @notice Create several workers, return auto-generated unique IDs of the workers
  function addWorkers(
    address[] calldata wallets_,
    HourRate[] calldata rates,
    string[] calldata names,
    RoleUid[] calldata roles
  ) external override {
    onlyGovernance();
    if (
      wallets_.length != rates.length
      || wallets_.length != names.length
      || wallets_.length != roles.length
    ) {
      revert ErrorArraysHaveDifferentLengths();
    }
    uint len = wallets_.length;
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      _addWorker(wallets_[i], rates[i], names[i], roles[i]);
    }
  }

  /// @notice Create new worker, return auto-generate UID of the new worker
  /// @param name_ Max length = NAME_LEN_LIMIT
  function addWorker(
    address wallet_,
    HourRate hourRate_,
    string calldata name_,
    RoleUid roles_
  ) external override {
    onlyGovernance();
    _addWorker(wallet_, hourRate_, name_, roles_);
  }

  /// @notice Create new worker, return auto-generate UID of the new worker
  /// @param name_ Max length = NAME_LEN_LIMIT
  function _addWorker(
    address wallet_,
    HourRate hourRate_,
    string calldata name_,
    RoleUid roles_
  ) internal {
    if (!_equalTo(activeWallets[wallet_], 0)) {
      revert ErrorWalletIsAlreadyUsedByOtherWorker();
    }

    _workerUidCounter = WorkerUid.wrap(WorkerUid.unwrap(_workerUidCounter) + 1);
    WorkerUid workerUid = _workerUidCounter;
    workersData[workerUid] = _createWorkerInstance(
      workerUid
    , wallet_
    , hourRate_
    , name_
    , roles_
    );
    workers.push(workerUid);
    activeWallets[wallet_] = workerUid;

    emit OnAddWorker(workerUid, wallet_, hourRate_, name_, roles_);
  }

  /// @notice Check values, generate new instance of Worker
  function _createWorkerInstance(
    WorkerUid workerUid_,
    address wallet_,
    HourRate hourRate_,
    string memory name_,
    RoleUid role_
  ) internal
  view
  returns
  (Worker memory) {
    _validateString(bytes(name_).length, NAME_LEN_LIMIT);

    if (_equalTo(hourRate_, 0) || !_greaterOrEqual(MAX_HOURLY_RATE, hourRate_)) {
      revert ErrorIncorrectRate(hourRate_);
    }

    _ensureRoleIsValid(role_, countRoles);

    //we don't check unknown roles
    //it's possible, but can be costly - do we really need it?

    return Worker({
      uid: workerUid_,
      wallet: wallet_,
      hourRate: hourRate_,
      name: name_,
      role: role_,
      workerFlags: WorkerFlags.wrap(0)
    });
  }

  function setWorkerName(WorkerUid workerUid, string calldata name_) external override {
    _onlyGovernanceOrDepartmentHead(workerUid);
    Worker storage workerData = workersData[workerUid];

    if (!_equals(workerData.uid, workerUid)) {
      revert ErrorWorkerNotFound(workerUid);
    }

    workersData[workerUid] = _createWorkerInstance(
      workerUid
      , workerData.wallet
      , workerData.hourRate
      , name_
      , workerData.role
    );
    emit WorkerNameUpdated(WorkerUid.unwrap(workerUid), name_);
  }

  /// @notice Replace set of roles by new one
  function setWorkerRole(WorkerUid workerUid, RoleUid role_) external override {
    _onlyGovernanceOrDepartmentHead(workerUid);
    Worker storage workerData = workersData[workerUid];

    if (!_equals(workerData.uid, workerUid)) {
      revert ErrorWorkerNotFound(workerUid);
    }
    if (_equals(workerData.role, role_)) {
      revert ErrorDataNotChanged();
    }
    _ensureRoleIsValid(role_, countRoles);

    workersData[workerUid] = _createWorkerInstance(
      workerUid
      , workerData.wallet
      , workerData.hourRate
      , workerData.name
      , role_
    );
    emit WorkerRoleUpdated(WorkerUid.unwrap(workerUid), role_);
  }

  function setHourlyRate(WorkerUid workerUid, HourRate rate_) external override {
    _onlyGovernanceOrDepartmentHead(workerUid);
    Worker storage workerData = workersData[workerUid];

    if (!_equals(workerData.uid, workerUid)) {
      revert ErrorWorkerNotFound(workerUid);
    }

    if (_equals(workerData.hourRate, rate_)) {
      revert ErrorDataNotChanged();
    }

    workersData[workerUid] = _createWorkerInstance(
      workerUid
      , workerData.wallet
      , rate_
      , workerData.name
      , workerData.role
    );
    emit WorkerRateUpdated(WorkerUid.unwrap(workerUid), rate_);
  }

  /// @notice Replace active worker wallet by new one
  /// @dev workerUid is not changed, it's always equal to the initially assigned worker wallet
  function changeWallet(WorkerUid worker_, address newWallet) external override {
    _onlyGovernanceOrDepartmentHead(worker_);
    Worker storage workerData = workersData[worker_];

    if (newWallet == address(0)) {
      revert ErrorZeroAddress(3);
    }
    if (workerData.wallet == newWallet) {
      revert ErrorDataNotChanged();
    }

    WorkerUid workerUid = activeWallets[newWallet];
    if (!_equalTo(workerUid, 0) && !_equals(workerUid, worker_)) {
      revert ErrorWalletIsAlreadyUsedByOtherWorker();
    }

    IApprovalsManager am = IApprovalsManager(IController(_controller()).approvalsManager());
    if (am.isRegisteredApprover(newWallet, worker_)) {
      revert ErrorNewWalletIsUsedByApprover();
    }

    if (_equalTo(workerData.uid, 0)) {
      revert ErrorWorkerNotFound(worker_);
    }

    // modify active activeWallets, it should have only single record: for active wallet
    activeWallets[workerData.wallet] = WorkerUid.wrap(0);
    activeWallets[newWallet] = worker_;
    workerData.wallet = newWallet;

    emit OnChangeWallet(worker_, newWallet);
  }


  // *****************************************************
  // *********** Set week budgets ************************
  // *****************************************************

  /// @notice Set total max amount for single salary payment [salary tokens]
  ///         and optionally change active salary token
  /// @param salaryToken_ New salary token. If 0 then continue to use previous salary token.
  function setWeekBudget(AmountST amountST_, address salaryToken_) external override {
    onlyGovernance();

    weekBudgetST = amountST_;
    if (salaryToken_ != address(0)) {
      salaryToken = salaryToken_;
    }

    emit OnSetWeekBudget(amountST_, salaryToken_);
  }

  /// @notice Set budget shares for each department
  ///         departmentUids must contain all active departments.
  ///         all missed departments will have share = 0%
  /// @param departmentUids_ Unique ids of all active departments.
  /// @param departmentShares_ Budget shares of the departments
  ///        Total sum of all items must be equal to TOTAL_SUM_SHARES.
  ///        Budget share is calculated as i-share/TOTAL_SUM_SHARES
  ///        Zero value is not allowed. If you need to set share = 0,
  ///        remove the department from departmentUids
  function setBudgetShares(
      DepartmentUid[] calldata departmentUids_
    , uint[] calldata departmentShares_
  ) external override {
    onlyGovernance();

    if (departmentUids_.length != departmentShares_.length) {
      revert ErrorArraysHaveDifferentLengths();
    }
    if (departmentUids_.length == 0) {
      revert ErrorEmptyArrayNotAllowed();
    }

    uint sumToCheck = 0;
    uint len = departmentUids_.length;
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      if (departmentShares_[i] == 0) {
        revert ErrorZeroDepartmentBudgetShare();
      }
      if (_equalTo(departmentsData[departmentUids_[i]].uid, 0)) {
        revert ErrorUnknownDepartment(departmentUids_[i]);
      }
      sumToCheck += departmentShares_[i];
      departmentShares[departmentUids_[i]] = departmentShares_[i];
    }

    if (sumToCheck != TOTAL_SUM_SHARES) {
      revert ErrorIncorrectSharesSum(sumToCheck, TOTAL_SUM_SHARES);
    }

    departmentUidsShares = departmentUids_;
    emit OnSetBudgetShares(departmentUids_, departmentShares_);
  }

  /// @notice Set roles shares for given department. See explanation to roleShares
  /// @dev If you need to clear-up array, you should pass empty roleShares for the department
  function setRoleShares(
    DepartmentUid departmentUid_,
    uint[] memory roleShares_
  ) external override {
    onlyGovernance();

    if (_equalTo(departmentsData[departmentUid_].uid, 0)) {
      revert ErrorUnknownDepartment(departmentUid_);
    }

    uint lenRoles = roleShares_.length;
    if (lenRoles == 0) {
      delete roleShares[departmentUid_];
    } else {
      if (lenRoles != countRoles) {
        revert ErrorIncorrectRoles();
      }
      roleShares[departmentUid_] = roleShares_;
    }

    emit OnSetRoleShares(departmentUid_, roleShares_);
  }

  // *****************************************************
  // *********** Get week budgets ************************
  // *****************************************************

  /// @notice Get budget shared for each departments
  ///         Budget share for i-th department is equal to (departmentShares[i] / sumShares)
  function getBudgetShares()
  external
  view
  override
  returns (
    DepartmentUid[] memory outDepartmentUids
  , uint[] memory outDepartmentShares
  , uint outSumShares
  ) {
    uint lenDepartments = departmentUidsShares.length;
    uint[] memory shares = new uint[](lenDepartments);
    for (uint i = 0; i < lenDepartments; i = _uncheckedInc(i)) {
      shares[i] = departmentShares[departmentUidsShares[i]];
    }
    return (departmentUidsShares, shares, TOTAL_SUM_SHARES);
  }


  /// @notice Get max allowed amount [salary token]
  ///         that can be paid for each role of the department
  /// @return outAmountST Result amounts for all roles
  ///         The length of array is equal to companyManager.countRoles
  function getMaxWeekBudgetForRolesST(AmountST departmentWeekBudgetST, DepartmentUid departmentUid)
  external
  view
  override
  returns (
    AmountST[] memory outAmountST
  ) {
    uint[] memory shares = roleShares[departmentUid];
    uint lenShares = shares.length;

    outAmountST = new AmountST[](countRoles);
    for (uint i = 0; i < countRoles; i = _uncheckedInc(i)) {
      outAmountST[i] = lenShares == 0
        ? departmentWeekBudgetST // Default situation: all roles have max limit
        : lenShares <= i
          ? AmountST.wrap(0) // There is no share for the role
          : AmountST.wrap(
              AmountST.unwrap(departmentWeekBudgetST) * shares[i] / TOTAL_SUM_SHARES // use specified share for the role
          );
    }
  }

  /// @notice Get week budgets for the company
  ///         week budget is auto adjusted to available amount at the start of epoch.
  ///                  C = budget from CompanyManager, S - balance of salary tokens, P - week budget
  ///                  C > S: not enough money, revert
  ///                  C <= S: use all available money to pay salary, so P := S
  function _getWeekBudgetST() internal view returns (AmountST) {
    AmountST budgetST = weekBudgetST;

    if (_equalTo(budgetST, 0)) {
      revert ErrorZeroWeekBudget();
    }

    IPaymentsManager pm = IPaymentsManager(IController(_controller()).paymentsManager());
    AmountST availableAmountST = AmountST.wrap(pm.balance(salaryToken));

    if (_greaterOrEqual(availableAmountST, budgetST)) {
      budgetST = availableAmountST;
    } else {
      revert ErrorNotEnoughFund();
    }

    return budgetST;
  }

  function getWeekBudgetST() external view returns (AmountST) {
    return _getWeekBudgetST();
  }

  /// @notice Get week budgets for all departments [in salary token]
  ///         week budget is auto adjusted to available amount at the start of epoch.
  ///                  C = budget from CompanyManager, S - balance of salary tokens, P - week budget
  ///                  C > S: not enough money, revert
  ///                  C <= S: use all available money to pay salary, so P := S
  /// @return outDepartmentUids List of departments with not-zero week budget
  /// @return outAmountsST Week budget for each department
  /// @return outSalaryToken Currently used salary token, week budget is set using it.
  function getWeekDepartmentBudgetsST(AmountST weekBudgetST_)
  external
  view
  override
  returns (
    DepartmentUid[] memory outDepartmentUids
  , AmountST[] memory outAmountsST
  , address outSalaryToken
  ) {
    outDepartmentUids = departmentUidsShares;
    uint lenDepartments = outDepartmentUids.length;
    if (lenDepartments == 0) {
      revert ErrorUnknownBudgetShares();
    }

    outSalaryToken = salaryToken;
    outAmountsST = new AmountST[](lenDepartments);

    AmountST budgetST = _equalTo(weekBudgetST_, 0)
      ? _getWeekBudgetST()
      : weekBudgetST_;

    for (uint i = 0; i < lenDepartments; i = _uncheckedInc(i)) {
      outAmountsST[i] = AmountST.wrap(
        AmountST.unwrap(budgetST) * departmentShares[outDepartmentUids[i]] / TOTAL_SUM_SHARES
      );
    }
  }


  // *******************************************************
  // ****************** Approving by nature ****************
  // *******************************************************

  /// @notice Check if approver is allowed to approve requests of the worker "by nature"
  ///         i.e. without any manually-set approving-permissions.
  ///         The approver is allowed to approve worker's request "by nature" if one of the following
  ///         conditions is true:
  ///         1) the approver is a head of the worker's department (and worker != approver)
  ///         2) if the option approve-low-by-high is enabled for the department
  ///            both approver and worker belong to the same department
  ///            and the approver has higher role then the worker
  function isNatureApprover(address approver_, WorkerUid worker_) external view override returns (ApproverKind) {
    DepartmentUid departmentUid = workerToDepartment[worker_];
    if (_equalTo(departmentUid, 0)) {
      return NOT_APPROVER_NATURE_NOT_WORKER; // the worker doesn't belong to any department
    } else {
      if (departmentsData[departmentUid].head == approver_) {
        // if the approver is a head of the worker's department
        // he is always allowed to approve any requests of his workers
        // (but not his own request)
        if (_equals(activeWallets[approver_], worker_)) {
          return NOT_APPROVER_NATURE_APPROVER_IS_WORKER;
        } else {
          return APPROVER_NATURE_HEAD_OF_DEPARTMENT;
        }
      }
    }

    // it is allowed to approve the request of
    // a worker with lower role from the same department
    // but only if this option is enabled for the department
    if (isOptionEnabled(
      departmentOptions[departmentUid]
      , FLAG_DEPARTMENT_OPTION_APPROVE_LOW_BY_HIGH
    )) {
      WorkerUid approverUid = activeWallets[approver_];
      if (_equals(departmentUid, workerToDepartment[approverUid])) {
        if (RoleUid.unwrap(workersData[approverUid].role) > RoleUid.unwrap(workersData[worker_].role)) {
          return APPROVER_NATURE_LOW_BY_HIGH;
        }
      }
    }

    // if both approver and worker are heads of any departments
    // they are allowed to approve requests of each other
    if (!_equalTo(heads[workersData[worker_].wallet], 0) && !_equalTo(heads[approver_], 0)) {
      return APPROVER_NATURE_BOTH_HEADS;
    }

    return NOT_APPROVER;
  }

  // *******************************************************
  // ************ ICompanyManager implementation ***********
  // *******************************************************

  function getCountRequiredApprovals(RoleUid role) external view returns (CountApprovals) {
    if (_equalTo(rolesData[role].role, 0)) {
      revert ErrorRoleNotFound(role);
    }
    return rolesData[role].countApprovals;
  }

  ///  @notice Get active wallet for the given worker
  function getWallet(WorkerUid workerId_) external view returns (address) {
    return workersData[workerId_].wallet;
  }


  /// @notice Provide info required by RequestManager at the point of request registration
  ///         Return the role of worker. It is taken into account in salary payment algo.
  ///         If the worker has several roles, the role with highest permissions
  ///         will be return (i.e. NOMARCH + EDUCATED => NOMARCH)
  function getWorkerInfo(WorkerUid worker_)
  external
  view
  override // ICompanyManager
  returns (
    HourRate hourRate,
    RoleUid role,
    DepartmentUid departmentUid,
    string memory name,
    address wallet
  ) {
    Worker storage workerData = workersData[worker_];
    if (_equalTo(workerData.uid, 0)) {
      revert ErrorWorkerNotFound(worker_);
    }

    hourRate = workerData.hourRate;
    departmentUid = workerToDepartment[worker_];
    name = workerData.name;
    wallet = workerData.wallet;
    role = workerData.role;
  }

  function getWorkerByWallet(address wallet) external view returns (WorkerUid) {
    return activeWallets[wallet];
  }

  /// @notice Return true if the worker is registered in workersData
  function isWorkerValid(WorkerUid worker_) external view returns (bool) {
    return _equals(workersData[worker_].uid, worker_);
  }

  // *****************************************************
  // ********* Helper function for string ****************
  // *****************************************************
  /// @notice Ensure that len is not 0 and len doesn't exceed max allowed value
  function _validateString(uint len, uint maxLen) internal pure {
    if (len >= maxLen) {
      revert ErrorTooLongString(len, maxLen);
    }
    if (len == 0) {
      revert ErrorEmptyString();
    }
  }


  // *****************************************************
  // ********* Helper function for WorkerUid *************
  // *****************************************************

  function _equals(WorkerUid uid1, WorkerUid uid2) internal pure returns (bool) {
    return WorkerUid.unwrap(uid1) == WorkerUid.unwrap(uid2);
  }
  function _equalTo(WorkerUid uid1, uint64 uid2) internal pure returns (bool) {
    return WorkerUid.unwrap(uid1) == uid2;
  }

  // *****************************************************
  // ********** Helper function for DepartmentUid ********
  // *****************************************************
  function _equals(DepartmentUid uid1, DepartmentUid uid2) internal pure returns (bool) {
    return DepartmentUid.unwrap(uid1) == DepartmentUid.unwrap(uid2);
  }
  function _equalTo(DepartmentUid uid1, uint16 uid2) internal pure returns (bool) {
    return DepartmentUid.unwrap(uid1) == uid2;
  }

  // *****************************************************
  // ********* Helper function for AmountST **************
  // *****************************************************
  function _greaterOrEqual(AmountST a1, AmountST a2) internal pure returns (bool) {
    return AmountST.unwrap(a1) >= AmountST.unwrap(a2);
  }
  function _equalTo(AmountST a1, uint a2) internal pure returns (bool) {
    return AmountST.unwrap(a1) == a2;
  }

  // *****************************************************
  // ********* Helper function for HourRate **************
  // *****************************************************
  function _equals(HourRate uid1, HourRate uid2) internal pure returns (bool) {
    return HourRate.unwrap(uid1) == HourRate.unwrap(uid2);
  }
  function _equalTo(HourRate uid1, uint32 uid2) internal pure returns (bool) {
    return HourRate.unwrap(uid1) == uid2;
  }
  function _greaterOrEqual(HourRate uid1, HourRate uid2) internal pure returns (bool) {
    return HourRate.unwrap(uid1) >= HourRate.unwrap(uid2);
  }

  // *****************************************************
  // ********* Helper function for RoleUid ***************
  // *****************************************************
  function _equals(RoleUid uid1, RoleUid uid2) internal pure returns (bool) {
    return RoleUid.unwrap(uid1) == RoleUid.unwrap(uid2);
  }
  function _equalTo(RoleUid uid1, uint uid2) internal pure returns (bool) {
    return RoleUid.unwrap(uid1) == uid2;
  }
  function _ensureRoleIsValid(RoleUid role_, uint countRoles_) internal pure {
    if (RoleUid.unwrap(role_) == 0 || RoleUid.unwrap(role_) > countRoles_) {
      revert ErrorRoleNotFound(role_);
    }
  }

  function getRoleByIndex(uint16 index0) external pure returns (RoleUid){
    return _getRoleByIndex(index0);
  }
  function _getRoleByIndex(uint16 index0) internal pure returns (RoleUid){
    return RoleUid.wrap(index0 + 1);
  }

  // *****************************************************
  // ****************** Optimization - unchecked *********
  // *****************************************************

  function _uncheckedInc(uint i) internal pure returns (uint) {
    unchecked {
      return i + 1;
    }
  }

  function _uncheckedInc16(uint16 i) internal pure returns (uint16) {
    unchecked {
      return i + 1;
    }
  }

  // *****************************************************
  // ***** Helper functions for DepartmentOptionMask *****
  // *****************************************************
  function isOptionEnabled(DepartmentOptionMask mask, uint flag) public pure returns (bool) {
    return (DepartmentOptionMask.unwrap(mask) & flag) != 0;
  }

  /// @dev flag_ is uint, not DepartmentOptionMask - not to confuse flags and masks
  function setOption(
    DepartmentOptionMask mask_
    , uint flag_
    , bool value
  ) public pure returns (DepartmentOptionMask) {
    uint mask = DepartmentOptionMask.unwrap(mask_);

    return value
      ? DepartmentOptionMask.wrap(mask | flag_)
      : ((mask & flag_) == 0)
        ? mask_
        : DepartmentOptionMask.wrap(mask ^ flag_);
  }


  // *****************************************************
  // *********** Functions instead of modifiers **********
  // Hardhat sometime doesn't parse correctly custom errors,
  // generated inside modifiers.
  // To reproduce the problem see
  //      git: ac9e9769ea2263dfbb741df7c11b8b5e96b03a4b (31.05.2022)
  // So, modifiers are replaced by ordinal functions
  // *****************************************************
  function isDepartmentHead(address wallet, WorkerUid workerUid) external view override returns (bool){
    return _isDepartmentHead(wallet, workerToDepartment[workerUid]);
  }

  function _isDepartmentHead(address wallet, DepartmentUid departmentUid) internal view returns (bool) {
    DepartmentUid d = heads[wallet];
    return !_equalTo(d, 0) && _equals(d, departmentUid);
  }

  function _onlyGovernanceOrDepartmentHead(WorkerUid workerUid) internal view {
    if (! _isGovernance(msg.sender)) {
      if (!_isDepartmentHead(msg.sender, workerToDepartment[workerUid])) {
        revert ErrorGovernanceOrDepartmentHeadOnly();
      }
    }
  }

  function _onlyGovernanceOrDepartmentHead(DepartmentUid departmentUid) internal view {
    if (! _isGovernance(msg.sender)) {
      if (!_isDepartmentHead(msg.sender, departmentUid)) {
        revert ErrorGovernanceOrDepartmentHeadOnly();
      }
    }
  }

}