// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../controller/Controllable.sol";
import "../../interfaces/IClerkTypes.sol";
import "../../interfaces/IControllerWritable.sol";

/// @title Eternal storage + getters and setters pattern
/// @notice Each variable has a key = keccak256(abi.encodePacked(variableName)
///         UpdateXXX events send keys instead variable-names
/// @author dvpublic
abstract contract ControllerStorage is Initializable
, IControllerWritable
, IControllable
, IClerkTypes
{

  /// @notice Version of the contract
  /// @dev Should be incremented when contract is changed
  string public constant VERSION = "1.0.0";

  bytes32 public immutable approvalsManagerKey;
  bytes32 public immutable requestsManagerKey;
  bytes32 public immutable debtsManagerKey;
  bytes32 public immutable companyManagerKey;
  bytes32 public immutable paymentsManagerKey;
  bytes32 public immutable priceOracleKey;
  bytes32 public immutable governanceKey;
  bytes32 public immutable batchReaderKey;

  /// @notice map: keccak256(abi.encodePacked(XXX)) => XXX
  mapping(bytes32 => address) private addressStorage;
  //mapping(bytes32 => uint256) private uintStorage;

  /// @notice Address changed the variable with the given key
  event UpdatedAddressSlot(bytes32 indexed key, address oldValue, address newValue);

  /// @notice Value changed the variable with given key
  event UpdatedUint256Slot(bytes32 indexed key, uint256 oldValue, uint256 newValue);

  /// @notice Logic contract of the {target} proxy was updated from {oldLogic} to {newLogic}
  event ProxyUpgraded(address target, address oldLogic, address newLogic);

  constructor() {
    approvalsManagerKey = keccak256(abi.encodePacked("ApprovalsManger"));
    requestsManagerKey = keccak256(abi.encodePacked("RequestsManger"));
    debtsManagerKey = keccak256(abi.encodePacked("DebtsManager"));
    companyManagerKey = keccak256(abi.encodePacked("CompanyManger"));
    paymentsManagerKey = keccak256(abi.encodePacked("PaymentsManger"));
    priceOracleKey = keccak256(abi.encodePacked("PriceOracle"));
    governanceKey = keccak256(abi.encodePacked("governance"));
    batchReaderKey = keccak256(abi.encodePacked("BatchReader"));
  }

  /// @notice Initialize contract after setup it as proxy implementation
  /// @dev Use it only once after first logic setup
  /// @param governance_ Governance address
  function initializeControllerStorage(
    address governance_
  ) public initializer {
    _setGovernance(governance_);
  }

  // *****************************************************
  // ******************** Governance *********************
  // *****************************************************

  function _setGovernance(address address_) internal {
    _setAddressStorage(governanceKey, address_);
  }

  /// @notice Return governance address
  function governance() external view override returns (address) {
    return _governance();
  }

  function _governance() internal view returns (address) {
    return addressStorage[governanceKey];
  }

  // *****************************************************
  // ***************** Company Manager *******************
  // *****************************************************

  /// @notice Return address of CompanyManager-instance
  function companyManager() external view override returns (address) {
    return addressStorage[companyManagerKey];
  }

  function _setCompanyManager(address companyManager_) internal {
    _setAddressStorage(companyManagerKey, companyManager_);
  }

  // *****************************************************
  // ***************** Requests Manager ******************
  // *****************************************************

  /// @notice Return address of RequestsManager-instance
  function requestsManager() external view override returns (address) {
    return addressStorage[requestsManagerKey];
  }

  function _setRequestsManager(address requestsManager_) internal {
    _setAddressStorage(requestsManagerKey, requestsManager_);
  }

  // *****************************************************
  // ***************** Debts Manager *********************
  // *****************************************************

  /// @notice Return address of ApprovalsManager-instance
  function debtsManager() external view override returns (address) {
    return addressStorage[debtsManagerKey];
  }

  function _setDebtsManager(address debtsManager_) internal {
    _setAddressStorage(debtsManagerKey, debtsManager_);
  }

  // *****************************************************
  // ***************** Price Oracle **********************
  // *****************************************************

  /// @notice Return address of ApprovalsManager-instance
  function priceOracle() external view override returns (address) {
    return addressStorage[priceOracleKey];
  }

  function _setPriceOracle(address priceOracle_) internal {
    _setAddressStorage(priceOracleKey, priceOracle_);
  }

  // *****************************************************
  // ***************** Payments Manager ******************
  // *****************************************************

  /// @notice Return address of PaymentsManager-instance
  function paymentsManager() external view override returns (address) {
    return addressStorage[paymentsManagerKey];
  }

  function _setPaymentsManager(address paymentsManager_) internal {
    _setAddressStorage(paymentsManagerKey, paymentsManager_);
  }

  // *****************************************************
  // ***************** Approvals Manager *****************
  // *****************************************************

  /// @notice Return address of ApprovalsManager-instance
  function approvalsManager() external view override returns (address) {
    return addressStorage[approvalsManagerKey];
  }

  function _setApprovalsManager(address approvalsManager_) internal {
    _setAddressStorage(approvalsManagerKey, approvalsManager_);
  }

  // *****************************************************
  // ***************** Batch Reader **********************
  // *****************************************************

  /// @notice Return address of BatchReader-instance
  function batchReader() external view override returns (address) {
    return addressStorage[batchReaderKey];
  }

  function _setBatchReader(address batchReader_) internal {
    _setAddressStorage(batchReaderKey, batchReader_);
  }

  // *****************************************************
  // ***************** Helper functions ******************
  // *****************************************************

  function _setAddressStorage(bytes32 key, address address_) internal {
    if (address_ == address(0)) {
      revert ErrorZeroAddress(uint256(key));
    }

    emit UpdatedAddressSlot(key, addressStorage[key], address_);
    addressStorage[key] = address_;
  }



  // Since OpenZeppelin contracts are used by inheritance, user-defined variables
  // will be placed by the compiler after OpenZeppelin’s ones.
  // If, in a newer version, new variables are added by the library,
  // the storage layouts would be incompatible, and an upgrade would not be possible.
  // The gap is a workaround to that issue: by leaving a 50-slot gap, we’re able to increase the contract’s storage
  // by that amount (provided we also remove the same slots from the gap) with no clashing issues.
  //slither-disable-next-line unused-state
  uint[50] private ______gap;
}
