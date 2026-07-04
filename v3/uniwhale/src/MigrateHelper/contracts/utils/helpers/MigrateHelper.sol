// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.9;

import "../../libs/Errors.sol";
import "../../libs/ERC20Fixed.sol";
import "../../libs/math/FixedPoint.sol";
import "../../interfaces/IBurnable.sol";
import "../../interfaces/IMintable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

/// @custom:security-contact security@uniwhale.co
contract MigrateHelper is
  OwnableUpgradeable,
  ReentrancyGuardUpgradeable,
  PausableUpgradeable
{
  using FixedPoint for uint256;

  address uniwhaleToken;
  address esUniwhaleClassic;
  address esUniwhale;
  uint256 public conversionRate;

  uint256 public burnRate;
  mapping(address => uint256) public noBurnClaimLimit;
  uint256 public migrateLimitTimestamp;
  uint256 public claimLimitTimestamp;

  event MigrateEvent(address indexed user, uint256 burnt, uint256 minted);
  event ClaimEvent(address indexed user, uint256 burnt, uint256 minted);
  event SetMigrateLimitTimestampEvent(uint256 migrateLimitTimestamp);
  event SetClaimLimitTimestampEvent(uint256 claimLimitTimestamp);

  function initialize(
    address _owner,
    address _uniwhaleToken,
    address _esUniwhaleClassic,
    address _esUniwhale,
    uint256 _conversionRate,
    uint256 _burnRate
  ) external initializer {
    __Ownable_init();
    __ReentrancyGuard_init();
    __Pausable_init();
    _transferOwnership(_owner);

    uniwhaleToken = _uniwhaleToken;
    esUniwhaleClassic = _esUniwhaleClassic;
    esUniwhale = _esUniwhale;
    conversionRate = _conversionRate;
    burnRate = _burnRate;

    migrateLimitTimestamp = type(uint256).max;
    claimLimitTimestamp = type(uint256).max;

    _pause();
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function pause() external onlyOwner {
    _pause();
  }

  function unpause() external onlyOwner {
    _unpause();
  }

  function setNoBurnClaimLimit(
    address[] calldata users,
    uint256[] calldata noBurnClaimLimits
  ) external onlyOwner {
    _require(
      users.length == noBurnClaimLimits.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    uint256 size = users.length;
    for (uint256 i = 0; i < size; ++i) {
      noBurnClaimLimit[users[i]] = noBurnClaimLimits[i];
    }
  }

  function setMigrateLimitTimestamp(
    uint256 _migrateLimitTimestamp
  ) external onlyOwner {
    migrateLimitTimestamp = _migrateLimitTimestamp;
    emit SetMigrateLimitTimestampEvent(migrateLimitTimestamp);
  }

  function setClaimLimitTimestamp(
    uint256 _claimLimitTimestamp
  ) external onlyOwner {
    claimLimitTimestamp = _claimLimitTimestamp;
    emit SetClaimLimitTimestampEvent(claimLimitTimestamp);
  }

  function migrate(uint256 amount) external nonReentrant whenNotPaused {
    _require(amount > 0, Errors.INVALID_AMOUNT);
    _require(block.timestamp < migrateLimitTimestamp, Errors.INVALID_TIMESTAMP);
    IBurnable(esUniwhaleClassic).burnFrom(msg.sender, amount);
    IMintable(esUniwhale).mint(msg.sender, amount.divDown(conversionRate));
    emit MigrateEvent(msg.sender, amount, amount.divDown(conversionRate));
  }

  function claim(uint256 amount) external nonReentrant whenNotPaused {
    _require(amount > 0, Errors.INVALID_AMOUNT);
    _require(block.timestamp < claimLimitTimestamp, Errors.INVALID_TIMESTAMP);
    uint256 claimed = 0;
    uint256 limit = noBurnClaimLimit[msg.sender];
    if (limit > 0) {
      claimed += Math.min(amount, limit);
      noBurnClaimLimit[msg.sender] -= claimed;
    }
    claimed += burnRate.mulDown(amount - claimed);
    IBurnable(esUniwhaleClassic).burnFrom(msg.sender, amount);
    IMintable(uniwhaleToken).mint(msg.sender, claimed);
    emit ClaimEvent(msg.sender, amount, claimed);
  }
}
