// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Error} from '@src/lib/Error.sol';

import {AccessControlUpgradeable} from '@ozu/access/AccessControlUpgradeable.sol';

contract ATM is AccessControlUpgradeable {
  bytes32 public constant CHILD_ROLE = keccak256('CHILD_ROLE');

  constructor() initializer {}

  function initialize(address owner) public initializer {
    __AccessControl_init();

    _setupRole(DEFAULT_ADMIN_ROLE, owner);
  }

  receive() external payable {}

  function deposit() external payable {
    require(msg.value > 0, 'ATM: deposit amount must be greater than 0');
  }

  function borrow(uint256 amount) external onlyRole(CHILD_ROLE) {
    (bool ok, bytes memory ret) = payable(msg.sender).call{value: amount}('');
    if (!ok) {
      revert Error.EthTransferFailed(amount, ret);
    }
  }
}
