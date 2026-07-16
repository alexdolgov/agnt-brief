// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./utils/Errors.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

contract MultisigWallet is AccessControlEnumerable {
  bytes32 public constant APPROVED_ROLE = keccak256("APPROVED_ROLE");
  bytes32 public constant SIGNER_ROLE = keccak256("SIGNER_ROLE");

  // Events
  event Deposit(address indexed sender, uint amount, uint balance);
  event SubmitTransaction(
    address indexed owner,
    uint indexed txIndex,
    address[] targets,
    uint[] values,
    bytes[] data
  );
  event ConfirmTransaction(address indexed owner, uint indexed txIndex);
  event RevokeConfirmation(address indexed owner, uint indexed txIndex);
  event ExecuteTransaction(
    address indexed owner,
    uint indexed txIndex,
    bytes[] results
  );

  // Number of confirmations required to execute a transaction
  uint8 public numConfirmationsRequired;

  // Tx object
  struct Transaction {
    address[] targets;
    uint[] values;
    bytes[] data;
    bool executed;
    uint8 numConfirmations;
  }

  // mapping from tx index => owner => bool
  // use this to check if some transaction is confirmed by some person
  mapping(uint => mapping(address => bool)) public isConfirmed;

  // List of all tracked transactions
  Transaction[] public transactions;

  modifier onlySelf() {
    _require(msg.sender == address(this), Errors.NOT_AUTHORIZED);
    _;
  }

  modifier txExists(uint _txIndex) {
    _require(_txIndex < transactions.length, Errors.TX_NOT_EXIST);
    _;
  }

  modifier notExecuted(uint _txIndex) {
    _require(!transactions[_txIndex].executed, Errors.TX_ALREADY_EXECUTED);
    _;
  }

  modifier notConfirmed(uint _txIndex) {
    _require(!isConfirmed[_txIndex][msg.sender], Errors.TX_ALREADY_CONFIRMED);
    _;
  }

  constructor(address[] memory _signers, uint8 _numConfirmationsRequired) {
    _require(_signers.length > 0, Errors.ZERO_OWNERS);
    _require(
      _numConfirmationsRequired > 0 &&
        _numConfirmationsRequired <= _signers.length,
      Errors.INVALID_NUM_CONFIRMATIONS
    );

    for (uint i = 0; i < _signers.length; i++) {
      address owner = _signers[i];

      _require(owner != address(0), Errors.ZERO_ADDRESS);
      _require(!hasRole(SIGNER_ROLE, owner), Errors.NOT_AUTHORIZED);

      _grantRole(SIGNER_ROLE, owner);
    }

    numConfirmationsRequired = _numConfirmationsRequired;
  }

  receive() external payable {
    emit Deposit(msg.sender, msg.value, address(this).balance);
  }

  function isApproved(address target) external view returns (bool) {
    return target == address(this) || hasRole(APPROVED_ROLE, target);
  }

  function grantRole(
    bytes32 role,
    address target
  ) public override(AccessControl, IAccessControl) onlySelf {
    _require(target != address(0), Errors.ZERO_ADDRESS);
    if (role == SIGNER_ROLE) {
      _require(!hasRole(SIGNER_ROLE, target), Errors.NOT_AUTHORIZED);
    }
    _grantRole(role, target);
  }

  function revokeRole(
    bytes32 role,
    address target
  ) public override(AccessControl, IAccessControl) onlySelf {
    _require(target != address(0), Errors.ZERO_ADDRESS);
    if (role == SIGNER_ROLE) {
      _require(
        getRoleMemberCount(SIGNER_ROLE) > numConfirmationsRequired,
        Errors.INVALID_NUM_CONFIRMATIONS
      );
    }
    _revokeRole(role, target);
  }

  function submitTransaction(
    address[] calldata _targets,
    uint[] calldata _values,
    bytes[] calldata _data
  ) external onlyRole(SIGNER_ROLE) {
    _require(_targets.length == _values.length, Errors.INPUT_LENGTH_MISMATCH);
    _require(_targets.length == _data.length, Errors.INPUT_LENGTH_MISMATCH);

    uint txIndex = transactions.length;

    transactions.push(
      Transaction({
        targets: _targets,
        values: _values,
        data: _data,
        executed: false,
        numConfirmations: 1
      })
    );
    isConfirmed[txIndex][msg.sender] = true;

    emit SubmitTransaction(msg.sender, txIndex, _targets, _values, _data);
  }

  function confirmTransaction(
    uint _txIndex
  )
    external
    onlyRole(SIGNER_ROLE)
    txExists(_txIndex)
    notExecuted(_txIndex)
    notConfirmed(_txIndex)
  {
    Transaction storage transaction = transactions[_txIndex];
    transaction.numConfirmations += 1;
    isConfirmed[_txIndex][msg.sender] = true;

    emit ConfirmTransaction(msg.sender, _txIndex);
  }

  function executeTransaction(
    uint _txIndex
  ) external onlyRole(SIGNER_ROLE) txExists(_txIndex) notExecuted(_txIndex) {
    Transaction storage transaction = transactions[_txIndex];

    _require(
      transaction.numConfirmations >= numConfirmationsRequired,
      Errors.TX_CANNOT_EXECUTE
    );

    transaction.executed = true;

    bytes[] memory results = new bytes[](transaction.data.length);
    for (uint256 i; i < transaction.targets.length; ++i) {
      (bool success, bytes memory data) = transaction.targets[i].call{
        value: transaction.values[i]
      }(transaction.data[i]);
      if (!success) {
        _require(data.length > 0, Errors.TX_FAILED);
        assembly {
          revert(add(32, data), mload(data))
        }
      }
      results[i] = data;
    }
    emit ExecuteTransaction(msg.sender, _txIndex, results);
  }

  function revokeConfirmation(
    uint _txIndex
  ) external onlyRole(SIGNER_ROLE) txExists(_txIndex) notExecuted(_txIndex) {
    Transaction storage transaction = transactions[_txIndex];

    _require(isConfirmed[_txIndex][msg.sender], Errors.TX_NOT_CONFIRMED);

    transaction.numConfirmations -= 1;
    isConfirmed[_txIndex][msg.sender] = false;

    emit RevokeConfirmation(msg.sender, _txIndex);
  }

  function getTransactionCount() external view returns (uint) {
    return transactions.length;
  }

  function getTransaction(
    uint _txIndex
  )
    external
    view
    returns (
      address[] memory targets,
      uint[] memory values,
      bytes[] memory data,
      bool executed,
      uint8 numConfirmations
    )
  {
    Transaction storage transaction = transactions[_txIndex];

    return (
      transaction.targets,
      transaction.values,
      transaction.data,
      transaction.executed,
      transaction.numConfirmations
    );
  }
}
