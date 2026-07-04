// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import './MultiAccount.sol';

contract MultiAccountV2 is MultiAccount {
  mapping(address => address) public referrals; // user -> referrer

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Sets multiple referrals for users. Only callable by an account with the SETTER_ROLE.
   * @param _referrals An array of Referral structs containing user and referrer addresses.
   */
  function setReferrals(Referral[] calldata _referrals) external onlyRole(SETTER_ROLE) {
    // This function is kept for backward compatibility and does not perform any action.
    for (uint256 i = 0; i < _referrals.length; i++) {
      referrals[_referrals[i].user] = _referrals[i].referrer;
      emit SetReferral(_referrals[i].user, _referrals[i].referrer);
    }
  }

  /**
   * @dev Adds a new account for the caller with the specified name and links the creator to his referrer.
   * @param name The name of the new account.
   * @param referrer The address of the referrer.
   */
  function addAccountWithReferral(string memory name, address referrer) external whenNotPaused {
    require(referrals[msg.sender] == address(0), 'MultiAccount: Referral already set');
    referrals[msg.sender] = referrer;
    emit SetReferral(msg.sender, referrer);

    this.addAccount(name);
  }

  /**
   * @dev Adds a new account for the caller with the specified name, links the creator to his referrer, deposits and allocates the specified amount.
   * @param name The name of the new account.
   * @param referrer The address of the referrer.
   * @param amount The amount to deposit and allocate.
   */
  function addAccountWithReferralAndDepositAndAllocate(string memory name, address referrer, uint256 amount) external whenNotPaused {
    this.addAccountWithReferral(name, referrer);
    this.depositAndAllocateForAccount(accounts[msg.sender][accounts[msg.sender].length - 1].accountAddress, amount);
  }
}
