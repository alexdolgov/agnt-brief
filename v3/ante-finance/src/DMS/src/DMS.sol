// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

import { ICustomCondition } from "./interfaces/ICustomCondition.sol";
import { Enum } from "@safe-global/safe-smart-account/common/Enum.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IDMS } from "./interfaces/IDMS.sol";

contract DMS is IDMS, ICustomCondition, OwnableUpgradeable {
  /// @notice The check-in interval
  uint256 public checkInInterval;

  /// @notice The last time the owner checked in
  uint256 public lastCheckIn;

  /// @param _owner Address of the owner
  /// @param _checkInInterval Check-in interval in seconds that should be required for owner to check in
  /// @dev A check-in interval equal to 0 means this module is disabled
  constructor(address _owner, uint256 _checkInInterval) {
    bytes memory initParams = abi.encode(_owner, _checkInInterval);
    setUp(initParams);
  }

  function setUp(bytes memory initParams) public initializer {
    (address _owner, uint256 _checkInInterval) = abi.decode(initParams, (address, uint256));
    if (_owner == address(0)) revert InvalidOwner();

    _transferOwnership(_owner);
    checkInInterval = _checkInInterval;

    // Initialize the check in. Otherwise this will start from a dead state
    lastCheckIn = block.timestamp;

    emit DMSSetup(msg.sender, _owner);
    emit CheckInIntervalSet(_checkInInterval);
  }

  /// @inheritdoc IDMS
  function setCheckInInterval(uint256 _checkInInterval) public onlyOwner {
    checkInInterval = _checkInInterval;
    emit CheckInIntervalSet(_checkInInterval);
  }

  /// @inheritdoc IDMS
  function checkIn() public onlyOwner {
    lastCheckIn = block.timestamp;
    emit CheckedIn();
  }

  /// @inheritdoc IDMS
  function isDead() public view returns (bool) {
    return block.timestamp - lastCheckIn > checkInInterval;
  }

  /// @inheritdoc ICustomCondition
  function check(
    address,
    uint256,
    bytes calldata,
    Enum.Operation,
    uint256,
    uint256,
    bytes12
  ) external view override returns (bool success, bytes32 reason) {
    if (isDead()) {
      return (true, bytes32(0));
    }
    // keccak256("NotDead()")
    return (false, bytes32(uint256(0x951f0bd2)));
  }
}
