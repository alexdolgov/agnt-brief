// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./DebtsManagerStorage.sol";
import "../../interfaces/ICompanyManager.sol";
import "../../interfaces/IPaymentsManager.sol";
import "../../interfaces/IRequestsManager.sol";
import "../../interfaces/IApprovalsManager.sol";
import "../../interfaces/IPriceOracle.sol";

/// @notice Manage list of epochs and company-debts
///         Controller registers debts on the base of provided requests.
///         Debts are stored in the list of debts.
///         There is separate list of debts for each pair (department, role).
///         All debts from the list are paid one by one in order of registration. A debt can be paid in several pays.
///         To pay salary, controller grabs as many as possible debts for each (department, role)
///         Tne number of debts allowed to be paid is limited by max total sum for (department, role).
/// @author dvpublic
contract DebtsManager is DebtsManagerStorage {

  // *****************************************************
  // *********** Initialization **************************
  // *****************************************************

  function initialize(address controller_, EpochType firstEpoch_) external initializer {
    Controllable.__Controllable_init(controller_);
    firstEpoch = firstEpoch_;
    currentEpoch = firstEpoch_;
  }

  // *****************************************************
  // **************** Requests ***************************
  // *****************************************************

  /// @notice Register new request with status "Registered"
  function addRequest(
      RequestUid requestUid_
    , WorkerUid workerUid_
    , uint32 countHours_
    , string calldata descriptionUrl_
  ) external
  override // IDebtsManager
  {
    _onlyRequestsManager();
    (HourRate hourRate, RoleUid role, DepartmentUid departmentUid,, )
      = ICompanyManager(IController(_controller()).companyManager())
          .getWorkerInfo(workerUid_); // revert if the worker is not found

    if (_equalTo(requestUid_, 0)) {
      revert ErrorZeroValueNotAllowed(1);
    }

    if (countHours_ == 0) {
      revert ErrorZeroValueNotAllowed(2);
    }

    //it's not allowed to update request params if there is registered debt for the request
    if (!_equalTo(requestsToDebts[requestUid_], 0)) {
      revert ErrorDebtAlreadyRegistered(requestUid_);
    }

    requestsData[requestUid_] = RequestData({
      worker: workerUid_
      , role: role
      , department: departmentUid
      , hourRate: hourRate
      , countHours: countHours_
      , descriptionUrl: descriptionUrl_
      , epoch: currentEpoch
    });

    RoleUid maxRole = maxRoleValueInAllTimes;
    if (RoleUid.unwrap(maxRole) < RoleUid.unwrap(role)) {
      maxRoleValueInAllTimes = role;
    }
  }


  // *****************************************************
  // *************** Debts *******************************
  // *****************************************************

  /// @notice Convert salary-amount of accepted request to company-debt
  ///         Amount of the debt is auto calculated using requests properties: countHours * hourRate
  function addDebt(
    RequestUid requestUid_
  ) external
  override // IDebtsManager
  {
    _onlyRequestsManager();

    RequestData storage rd = requestsData[requestUid_];

    if (WorkerUid.unwrap(rd.worker) == 0) {
      revert ErrorUnknownRequest(requestUid_); // we can check existence of the request by not 0 worker
    }

    if (DebtUid.unwrap(requestsToDebts[requestUid_]) != 0) {
      revert ErrorDebtAlreadyRegistered(requestUid_);
    }

    // generate new debt-uid
    debtUidCounter = DebtUid.wrap(DebtUid.unwrap(debtUidCounter) + 1);
    DebtUid debtUid = debtUidCounter;

    // calculate salary amount in USD
    AmountUSD amountUSD = getAmountUSD(uint64(HourRate.unwrap(rd.hourRate) * rd.countHours));

    // register new department if necessary (add it to departments-array)
    if (NullableValue64.unwrap(registeredDepartments[rd.department]) == 0) {
      registeredDepartments[rd.department] = _wrapToNullableValue64(uint64(departments.length));
      departments.push(rd.department);
    }

    // add the debt to the list of department's debts
    RoleDebts storage roleDebts = roleDebts[rd.department][rd.role];
    uint64 indexNewDebt = roleDebts.totalCountDebts;
    roleDebts.totalCountDebts = indexNewDebt + 1;
    roleDebts.amountUnpaidTotalUSD = addUSD(roleDebts.amountUnpaidTotalUSD, amountUSD);

    roleDebtsList[rd.department][rd.role][_wrapToNullableValue64(indexNewDebt)] = debtUid;

    debtsToRequests[debtUid] = requestUid_;
    requestsToDebts[requestUid_] = debtUid;
    unpaidAmountsUSD[debtUid] = amountUSD;

    WorkerStat storage ws = statForWorkers[rd.worker];
    ws.workedHours = ws.workedHours + rd.countHours;
    ws.earnedDollars = addUSD(ws.earnedDollars, amountUSD);

    emit OnCreateDebt(debtUid, rd.worker);
  }

  /// @notice Revoke previously created debt
  ///         As result, we can have holes in the sequence of registered debts
  function revokeDebtForRequest(
    RequestUid requestUid_
  ) external {
    _onlyRequestsManager();

    DebtUid debtUid = requestsToDebts[requestUid_];

    if (_equalTo(debtUid, 0)) {
      revert ErrorRequestHasNoDebt();
    }

    RequestData storage rd = requestsData[requestUid_];

    AmountUSD amountUSD = unpaidAmountsUSD[debtUid];

    if (! _equals(requestUid_
      , IRequestsManager(IController(_controller()).requestsManager()).getRequestUid(currentEpoch, rd.worker)
    )) {
      revert ErrorDebtIsNotRevocable(debtUid);
    }

    requestsToDebts[requestUid_] = DebtUid.wrap(0);
    debtsToRequests[debtUid] = RequestUid.wrap(0);
    unpaidAmountsUSD[debtUid] = getAmountUSD(0);

    RoleDebts storage rds = roleDebts[rd.department][rd.role];
    rds.amountUnpaidTotalUSD = subUSD(rds.amountUnpaidTotalUSD, amountUSD);

    WorkerStat storage ws = statForWorkers[rd.worker];
    statForWorkers[rd.worker] = WorkerStat({
      workedHours: ws.workedHours - rd.countHours,
      earnedDollars: subUSD(ws.earnedDollars, amountUSD)
    });

    emit OnRevokeDebt(debtUid, rd.worker);

    // we don't modify roleDebtsList
    // it will still contain index of the revoked debt
    // it's not a problem - such debt will be just ignored during paying
    // because the debt is actually unregistered in debtsToRequests
  }

  // *****************************************************
  // ************ Internal pay functions *****************
  // *****************************************************
  // Example, partial payment:
  //         For a pair (department, role) we have following debts:
  //             d1, d2, d3, d4, d5, d6
  //                 ^ first unpaid payment
  //         After the finish of the payment we should have:
  //             d1, d2, d3, d4, d5, d6
  //                             ^ first unpaid (incompletely paid) payment
  //         where
  //             sum(d2, d3, d4, d5*) = maxSumAmountUSD
  //             d5* < d5 (partial pay)
  //         output
  //             outCountItems = 4
  //             outWallets = [wallet2, wallet3, wallet4, wallet5, 0]
  //             outAmountsST = [d2, d3, d4, d5*, 0]
  //         The arrays has length 5 (count of initially unpaid payments),
  //         but only outCountItems values are valid
  // *****************************************************
  // *****************************************************
  // *****************************************************

  /// @param indexDebt0 An index of the debt in the range [RoleDebts.firstUnpaidDebtIndex0...RoleDebts.totalCountDebts)
  function _payDebt(
    AmountST priceUSD
  , DepartmentUid departmentUid
  , RoleUid role
  , uint64 indexDebt0
  ) internal {
    DebtUid debtUid = roleDebtsList[departmentUid][role][_wrapToNullableValue64(indexDebt0)];
    RequestUid requestUid = debtsToRequests[debtUid];
    WorkerUid workerUid = requestsData[requestUid].worker;
    RoleDebts storage rd = roleDebts[departmentUid][role];

    // it the pay is incomplete, we cannot move forward RoleDebts.firstUnpaidDebtIndex0
    bool partialPay;
    IController c = IController(_controller());

    if (_equalTo(requestUid, 0)
      || _equals(requestUid
        , IRequestsManager(c.requestsManager()).getRequestUid(currentEpoch, workerUid)
      )
    ) {
      // revoked debt, ignore
      // or the debt belongs to the currentEpoch, we cannot pay it until the epoch is not changed
    } else {
      // debt value - how much we should pay in salary tokens?
      AmountUSD amountToPayUSD = unpaidAmountsUSD[debtUid];
      AmountST amountToPayST = usdToST(amountToPayUSD, priceUSD);

      // how much we can pay (available amount for the role + amounts for all lower roles)
      AmountST availableAmountToPayST = _getAvailableAmountST(departmentUid, role, amountToPayST);

      partialPay = !_equals(availableAmountToPayST, amountToPayST);
      if (!_equalTo(availableAmountToPayST, 0)) {
        IPaymentsManager(c.paymentsManager()).pay(
          ICompanyManager(c.companyManager()).getWallet(workerUid)
          , AmountST.unwrap(availableAmountToPayST), weekSalaryToken
        );
        emit OnPayDebt(debtUid, workerUid, partialPay);

        // update amounts available for the roles of the department
        _reduceAvailableAmountST(departmentUid, role, availableAmountToPayST);

        // update debt status
        AmountUSD amountPaidUSD = stToUSD(availableAmountToPayST, priceUSD);
        rd.amountUnpaidTotalUSD = subUSD(rd.amountUnpaidTotalUSD, amountPaidUSD);
        unpaidAmountsUSD[debtUid] = subUSD(amountToPayUSD, amountPaidUSD);
      }

      // move forward RoleDebts.firstUnpaidDebtIndex0
      if (! partialPay && rd.firstUnpaidDebtIndex0 == indexDebt0) {
        rd.firstUnpaidDebtIndex0 += 1;
      }
    }
  }

  function _payForRole(AmountST priceUSD, DepartmentUid departmentUid, RoleUid role) internal {
    RoleDebts storage rd = roleDebts[departmentUid][role];
    uint64 totalCountDebts = rd.totalCountDebts;
    uint64 startIndex = rd.firstUnpaidDebtIndex0;

    for (uint64 i = startIndex; i < totalCountDebts; i = _uncheckedInc64(i)) {
      _payDebt(priceUSD, departmentUid, role, i);

      if (rd.firstUnpaidDebtIndex0 == i) {
        // firstUnpaidDebtIndex0 wasn't incremented
        // there are no more money to pay other debts..
        break;
      }
    }
  }

  /// @dev Number of the roles can be reduces, but we should pay debts for out-dated roles anyway
  ///      So, we use maxRoleValueInAllTimes in the for-cycle here.
  function _payForDepartment(AmountST priceUSD, DepartmentUid departmentUid) internal {
    uint16 countRoles = RoleUid.unwrap(maxRoleValueInAllTimes);
    for (uint16 i = 0; i < countRoles; i = _uncheckedInc16(i)) {
      _payForRole(priceUSD, departmentUid, _roleIndexToRole(i));
    }
  }

  /// @notice Pay salary to all departments
  function _paySalary() internal {
    AmountST priceUSD = getPrice(weekSalaryToken, IController(_controller()).priceOracle());
    uint lenDepartments = departments.length;
    for (uint i = 0; i < lenDepartments; i = _uncheckedInc(i)) {
      _payForDepartment(priceUSD, departments[i]);
    }
  }

  // *****************************************************
  // ************ External pay functions *****************
  // *****************************************************

  function payDebt (
    DepartmentUid departmentUid
  , RoleUid role
  , uint64 indexDebt0
  ) external {
    onlyGovernance();

    AmountST priceUSD = getPrice(weekSalaryToken, IController(_controller()).priceOracle());
    _payDebt(priceUSD, departmentUid, role, indexDebt0);
  }

  function payForRole(DepartmentUid departmentUid, RoleUid role)
  external
  override {
    onlyGovernance();

    AmountST priceUSD = getPrice(weekSalaryToken, IController(_controller()).priceOracle());
    _payForRole(priceUSD, departmentUid, role);

    emit OnPayForRole(departmentUid, role);
  }

  function payForDepartment(DepartmentUid departmentUid)
  external
  override {
    onlyGovernance();

    AmountST priceUSD = getPrice(weekSalaryToken, IController(_controller()).priceOracle());
    _payForDepartment(priceUSD, departmentUid);

    emit OnPayForDepartment(departmentUid);
  }

  function pay()
  external
  override {
    onlyGovernance();

    _paySalary();
    emit OnPay();
  }

  // *****************************************************
  // ************ Amounts USD available for pay **********
  // *****************************************************

  /// @notice Check what amount is available to be paid to a worker with the given role
  /// @param role If the number of the roles was reduced, this value can exceed the actual number of the roles.
  ///             But it shouldn't exceed maxRoleValueInAllTimes
  /// @return availableAmountST
  ///         if total available amount >= amountToPayUSD then return amountToPayUSD
  ///         if total available amount < amountToPayUSD then return amount
  function _getAvailableAmountST(
    DepartmentUid departmentUid
  , RoleUid role
  , AmountST amountToPayST
  ) internal
  view
  returns (AmountST availableAmountST) {
    // we cannot pay more then current total week budget for the department
    // we cannot pay any debts for any deprecated department (for which no week-budget was provided in startEpoch)
    AmountST budgetForDepartmentST = _equals(weekDepartmentUidsToPay[departmentUid], currentEpoch)
      ? weekBudgetST[departmentUid]
      : AmountST.wrap(0);

    if (!greaterOrEqualST(budgetForDepartmentST, amountToPayST)) {
      amountToPayST = budgetForDepartmentST;
    }

    AmountST[] storage depAmountsST = weekBudgetLimitsForRolesST[departmentUid];
    uint lenRoles = depAmountsST.length;

    uint16 roleIndex0 = _roleToIndex0(role);
    if (roleIndex0 < RoleUid.unwrap(maxRoleValueInAllTimes)) {
      if (roleIndex0 >= lenRoles) {
        // the role is outdated
        // it means that there were N roles but now their number is reduced to M < N
        // We should allow to pay debts for the roles [M...N) anyway
        // Let's pay that debts using limits of the highest role
        // The same logic is implemented in _reduceAvailableAmountST
        roleIndex0 = uint16(lenRoles) - 1; // we assume that lenRoles > 0, it's not possible to set empty list of roles
      }
      for (uint16 i = roleIndex0 + 1; i > 0; i = _uncheckedDec16(i)) {
        if (i < roleIndex0 + 1
          &&  !_usdEqualTo(roleDebts[departmentUid][_roleIndexToRole(i - 1)].amountUnpaidTotalUSD, 0)) {
          // We can pay debts of higher role using the remaining amounts of lower roles
          // BUT only if the lower role (and more lower roles) have no unpaid debts
          // I.e.
          //   Debts  USD: Novice=0,    Educated=200, Blessed=0,   Nomarch=N
          //   Limits USD: Novice=1000, Educated=900, Blessed=800, Nomarch=700
          //   N = 2000: we can pay 700+800 only.
          // The restriction can be relaxed - we can allow to pay debts of higher-role by the amounts of lower roles
          // PARTLY (so that you can always be sure that the limits are enough to pay the debts of lower roles)
          // but it will complicated the code - probably we don't really need it.
          break;
        }

        availableAmountST = addST(availableAmountST, depAmountsST[i - 1]);
        if (greaterOrEqualST(availableAmountST, amountToPayST)) {
          return amountToPayST;
        }
      }
    }

    return availableAmountST;
  }

  /// @dev to be able to test _getAvailableAmountUSD
  function getAvailableAmountST (
    DepartmentUid departmentUid
  , RoleUid role
  , AmountST amountToPayST
  ) external
  view
  returns (AmountST availableAmountST) {
    return _getAvailableAmountST(departmentUid, role, amountToPayST);
  }

  /// @notice Fix values in limitAmountsUSD after successful paying of paidAmountUSD
  function _reduceAvailableAmountST(
    DepartmentUid departmentUid
  , RoleUid role
  , AmountST paidAmountST
  ) internal {
    AmountST budgetForDepartmentST = weekBudgetST[departmentUid];

    // ensure, that current total week budget >= paidAmountST
    if (_equalTo(paidAmountST, 0) ||  !greaterOrEqualST(budgetForDepartmentST, paidAmountST)) {
      revert ErrorIncorrectAmount();
    }

    // reduce total available budget for the department
    weekBudgetST[departmentUid] = subST(budgetForDepartmentST, paidAmountST);

    AmountST[] storage departmentAmountsST = weekBudgetLimitsForRolesST[departmentUid];
    uint lenRoles = departmentAmountsST.length;

    uint roleIndex0 = _roleToIndex0(role);

    if (roleIndex0 < RoleUid.unwrap(maxRoleValueInAllTimes)) {
      if (roleIndex0 >= lenRoles) {
        // the role is outdated
        // it means that there were N roles but now their number is reduced to M < N
        // We should allow to pay debts for the roles [M...N) anyway
        // Let's pay that debts using limits of the highest role
        // The same logic is implemented in _getAvailableAmountST
        roleIndex0 = uint16(lenRoles) - 1; // we assume that lenRoles > 0, it's not possible to set empty list of roles
      }
      for (uint i = roleIndex0 + 1; i > 0; i = _uncheckedDec(i)) {
        AmountST roleLimitST = departmentAmountsST[i - 1];
        if (! _equalTo(roleLimitST, 0)) {
          if (greaterOrEqualST(roleLimitST, paidAmountST)) {
            departmentAmountsST[i - 1] = subST(roleLimitST, paidAmountST);
            paidAmountST = AmountST.wrap(0);
            break;
          } else {
            departmentAmountsST[i - 1] = AmountST.wrap(0);
            paidAmountST = subST(paidAmountST, roleLimitST);
          }
        }
      }
    }

    if (AmountST.unwrap(paidAmountST) != 0) {
      revert ErrorTooBigAmount();
    }
  }

  /// @dev to be able to test reduceAvailableAmount
  function reduceAvailableAmountST(
    DepartmentUid departmentUid
  , RoleUid role
  , AmountST paidAmountST
  ) external {
    onlyGovernance();
    _reduceAvailableAmountST(departmentUid, role, paidAmountST);
  }

  /// @notice Get price of 1USD in [ST] from PriceOracle
  ///         Ensure, that price oracle uses same salary token as expected
  function getPrice(
    address salaryToken_
  , address priceOracle_
  ) public view returns (AmountST) {
    IPriceOracle p = IPriceOracle(priceOracle_);
    uint256 outPrice = p.getPrice(salaryToken_);
    return AmountST.wrap(outPrice);
  }

  // *****************************************************
  // ************ Start new epoch ************************
  // *****************************************************

  /// @notice Increment epoch counter.
  ///         Initialize week budget available for the payment of all exist debts.
  ///         After that it's possible to make payments for debts registered in the previous epochs
  /// @param paySalaryImmediately If true then call pay() immediately after starting new epoch
  function startEpoch(bool paySalaryImmediately)
  external {
    onlyGovernance();

    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());

    // move epoch counter forward
    EpochType newEpoch = EpochType.wrap(EpochType.unwrap(currentEpoch) + 1);
    currentEpoch = newEpoch;

    // it's possible to pay all exist debts now
    // we need to fix week budget for each department
    // and max allowed sums for each pair (department, role)
    (DepartmentUid[] memory departmentUids
      , AmountST[] memory weekAmountsST
      , address salaryToken
    ) = cm.getWeekDepartmentBudgetsST(
      AmountST.wrap(0) // auto calculate week budget
    );

    // get salary token that will be used on this week (current epoch) to pay debts of the previous epochs
    // all amountsST are calculated in terms of this token
    weekSalaryToken = salaryToken;

    uint lenDepartments = departmentUids.length;
    for (uint i = 0; i < lenDepartments; i = _uncheckedInc(i)) {
      DepartmentUid departmentUid = departmentUids[i];

      weekDepartmentUidsToPay[departmentUid] = newEpoch;
      weekBudgetST[departmentUid] = weekAmountsST[i];
      weekBudgetLimitsForRolesST[departmentUid] = cm.getMaxWeekBudgetForRolesST(weekAmountsST[i], departmentUid);
    }

    // pay salary
    if (paySalaryImmediately) {
      _paySalary();
    }

    emit OnStartEpoch(newEpoch, paySalaryImmediately);
  }

  // *****************************************************
  // ****************** Migration ************************
  // *****************************************************
  /// @notice Migrate workers statistics from previously used PayrollClerk
  function migrateWorkStat(
    address predecessor_
    , WorkerUid[] calldata workerUids
    , uint[] calldata workedHours
    , uint[] calldata earnedAmountsUSD
  ) external {
    onlyGovernance();

    uint lenWorkers = workerUids.length;
    if (
      workedHours.length != lenWorkers
      || earnedAmountsUSD.length != lenWorkers
    ) {
      revert ErrorArraysHaveDifferentLengths();
    }

    // don't allow second migration
    if (predecessor_ == address(0)) {
      revert ErrorZeroAddress(0);
    }
    if (predecessor != address(0)) {
      revert ErrorAlreadyInitialized();
    }
    predecessor = predecessor_;

    // copy data from old contract
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      statForWorkers[workerUids[i]].workedHours = uint32(workedHours[i]);
      statForWorkers[workerUids[i]].earnedDollars = AmountUSD.wrap(uint64(earnedAmountsUSD[i]));
    }
  }

  // *****************************************************
  // ************ View functions for readers *************
  // *****************************************************
  /// @notice Allow to check if there is already exist for the request
  function getDebt(
    RequestUid requestUid_
  ) external
  view
  returns (DebtUid) {
    return requestsToDebts[requestUid_];
  }

  function getRequestWorkerAndRole(RequestUid requestUid_) external view returns (WorkerUid worker, RoleUid role) {
    RequestData storage rd = requestsData[requestUid_];
    return(rd.worker, rd.role);
  }

  // *****************************************************
  // ******** Helper function for DebtUid ****************
  // *****************************************************

  function _equalTo(DebtUid uid1, uint64 uid2) internal pure returns (bool) {
    return DebtUid.unwrap(uid1) == uid2;
  }

  // *****************************************************
  // ******* Helper function for RequestUid **************
  // *****************************************************

  function _equals(RequestUid uid1, RequestUid uid2) internal pure returns (bool) {
    return RequestUid.unwrap(uid1) == RequestUid.unwrap(uid2);
  }
  function _equalTo(RequestUid uid1, uint uid2) internal pure returns (bool) {
    return RequestUid.unwrap(uid1) == uid2;
  }

  // *****************************************************
  // ******* Helper function for roles *******************
  // *****************************************************

  /// @notice Convert 1-base role value to 0-base role index
  function _roleToIndex0(RoleUid role) internal pure returns (uint16) {
    return RoleUid.unwrap(role) - 1;
  }
  function _roleIndexToRole(uint16 roleIndex) internal pure returns (RoleUid) {
    return RoleUid.wrap(roleIndex + 1);
  }

  // *****************************************************
  // ******* Helper function for EpochType ***************
  // *****************************************************

  function _equals(EpochType uid1, EpochType uid2) internal pure returns (bool) {
    return EpochType.unwrap(uid1) == EpochType.unwrap(uid2);
  }

  // *****************************************************
  // ********* NullableIndexKey64 ************************
  // *****************************************************

  /// @notice Generate NullableIndexKey64 for uin64
  ///         It allows us to use 0 as a key/value in mapping
  function wrapToNullableValue64(uint64 value) external pure returns (NullableValue64) {
    return _wrapToNullableValue64(value);
  }
  function _wrapToNullableValue64(uint64 value) internal pure returns (NullableValue64) {
    return NullableValue64.wrap(value + 1);
  }

  // *****************************************************
  // ********* Amounts conversion ************************
  // *****************************************************
  function usdToST(AmountUSD amountUSD, AmountST price) public pure returns (AmountST amountST) {
    amountST = AmountST.wrap(
      AmountUSD.unwrap(amountUSD) * AmountST.unwrap(price)
    );
  }
  function stToUSD(AmountST amountST, AmountST price) public pure returns (AmountUSD amountUSD) {
    amountUSD = AmountUSD.wrap(
      uint64(AmountST.unwrap(amountST) / AmountST.unwrap(price))
    );
  }
  function getAmountUSD(uint64 amountUSD_) public pure returns (AmountUSD amountUSD) {
    amountUSD = AmountUSD.wrap(amountUSD_);
  }
  function addUSD(AmountUSD a1, AmountUSD a2) public pure returns (AmountUSD) {
    return AmountUSD.wrap(AmountUSD.unwrap(a1) + AmountUSD.unwrap(a2));
  }
  function subUSD(AmountUSD a1, AmountUSD a2) public pure returns (AmountUSD) {
    return AmountUSD.wrap(AmountUSD.unwrap(a1) - AmountUSD.unwrap(a2));
  }
  /// @dev 0.8.9 doesn't allow to use name _equalTo here, _equalTo(AmountST a1.. is not compiled
  function _usdEqualTo(AmountUSD a1, uint64 a2) public pure returns (bool) {
    return AmountUSD.unwrap(a1) == a2;
  }
  function addST(AmountST a1, AmountST a2) public pure returns (AmountST) {
    return AmountST.wrap(AmountST.unwrap(a1) + AmountST.unwrap(a2));
  }
  function subST(AmountST a1, AmountST a2) public pure returns (AmountST) {
    return AmountST.wrap(AmountST.unwrap(a1) - AmountST.unwrap(a2));
  }
  function greaterOrEqualST(AmountST a1, AmountST a2) public pure returns (bool) {
    return AmountST.unwrap(a1) >= AmountST.unwrap(a2);
  }
  function _equalTo(AmountST a1, uint a2) public pure returns (bool) {
    return AmountST.unwrap(a1) == a2;
  }
  function _equals(AmountST a1, AmountST a2) public pure returns (bool) {
    return AmountST.unwrap(a1) == AmountST.unwrap(a2);
  }

  // *****************************************************
  // ********** Optimization - unchecked *****************
  // *****************************************************

  function _uncheckedInc(uint i) internal pure returns (uint) {
    unchecked {
      return i + 1;
    }
  }

  function _uncheckedInc64(uint64 i) internal pure returns (uint64) {
    unchecked {
      return i + 1;
    }
  }

  function _uncheckedInc16(uint16 i) internal pure returns (uint16) {
  unchecked {
    return i + 1;
  }
  }

  function _uncheckedDec(uint i) internal pure returns (uint) {
    unchecked {
      return i - 1;
    }
  }

  function _uncheckedDec16(uint16 i) internal pure returns (uint16) {
    unchecked {
      return i - 1;
    }
  }

  // *****************************************************
  // *********** Functions instead of modifiers **********
  // Hardhat sometime doesn't parse correctly custom errors,
  // generated inside modifiers.
  // To reproduce the problem see
  //      git: ac9e9769ea2263dfbb741df7c11b8b5e96b03a4b (31.05.2022)
  // So, modifiers are replaced by ordinal functions
  // *****************************************************
  function _onlyRequestsManager() internal view {
    if (msg.sender != address(IController(_controller()).requestsManager())) {
      revert ErrorOnlyRequestsManager();
    }
  }

}

