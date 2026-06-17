//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./interfaces/ILYTPoolAccessControl.sol";
import "./interfaces/ILYTPoolServiceConfiguration.sol";
// import "./interfaces/IToSAcceptanceRegistry.sol";
import "./interfaces/ILYTPool.sol";

import "./upgrades/BeaconImplementation.sol";

/**
 * @title The LYTPoolAccessControl contract
 * @dev Implementation of the {ILYTPoolAccessControl} interface.
 *
 * This implementation implements a basic Allow-List of addresses, which can
 * be managed only by the Pool Admin.
 */
contract LYTPoolAccessControl is ILYTPoolAccessControl, BeaconImplementation {
  /**
   * @dev Reference to the pool
   */
  ILYTPool private _pool;

  /**
   * @dev Reference to the ToS Acceptance Registry
   */
  // IToSAcceptanceRegistry private _tosRegistry;

  /**
   * @dev A mapping of addresses to whether they are allowed to lend or borrower in the pool.
   */
  mapping(address => bool) private _allowedParticipants;

  /**
   * @dev Emitted when an address is added from the participant allow list.
   */
  event ParticipantAllowed(address indexed addr);

  /**
   * @dev Emitted when an address is removed from the participant allow list.
   */
  event ParticipantRemoved(address indexed addr);

  /**
   * @dev Modifier that checks that the caller is the pool's admin.
   */
  modifier onlyIssuer() {
    require(msg.sender == _pool.issuerAddr(), "CALLER_NOT_ISSUER");
    _;
  }

  /**
   * @dev Modifier to restrict verification to users who have accepted the ToS
   */
  // modifier onlyTOSAccpeted() {
  //   require(_tosRegistry.hasAccepted(msg.sender), "MISSING_TOS_ACCEPTANCE");
  //   _;
  // }

  /**
   * @dev Modifier that requires the protocol not be paused.
   */
  modifier onlyNotPaused() {
    require(!_pool.serviceConfiguration().paused(), "LYTPoolAccessControl: Protocol paused");
    _;
  }

  /**
   * @dev The constructor for the LYTPoolAccessControl contract
   */
  function initialize(address pool) public initializer {
    _pool = ILYTPool(pool);
  }

  /**
   * @inheritdoc ILYTPoolAccessControl
   */
  function isAllowed(address addr) external view returns (bool) {
    return _allowedParticipants[addr];
  }

  /**
   * @dev Adds an address to the participant allow list.
   *
   * Emits an {ParticipantAllowed} event.
   */
  function allowParticipant(address addr) external onlyNotPaused onlyIssuer {
    _allowedParticipants[addr] = true;
    emit ParticipantAllowed(addr);
  }

  /**
   * @dev Removes an address from the participant allow list.
   *
   * Emits an {ParticipantRemoved} event.
   */
  function removeParticipant(address addr) external onlyNotPaused onlyIssuer {
    delete _allowedParticipants[addr];
    emit ParticipantRemoved(addr);
  }
}
