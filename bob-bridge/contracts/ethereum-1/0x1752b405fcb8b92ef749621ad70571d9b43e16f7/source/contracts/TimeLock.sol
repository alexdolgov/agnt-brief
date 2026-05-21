// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./ITimeLock.sol";
import "./utils/Errors.sol";
import "./utils/ERC20Fixed.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

contract TimeLock is
  ITimeLock,
  ReentrancyGuardUpgradeable,
  OwnableUpgradeable,
  AccessControlUpgradeable,
  PausableUpgradeable
{
  using ERC20Fixed for ERC20;

  bytes32 public constant APPROVED_ROLE = keccak256("APPROVED_ROLE");
  bytes32 public constant EMERGENCY_ADMIN_ROLE =
    keccak256("EMERGENCY_ADMIN_ROLE");

  address public restoreAddress;
  uint48 public releaseDelay;
  uint256 public agreementCount;
  mapping(uint256 => Agreement) public agreements;
  mapping(address => mapping(TimeLockDataTypes.AgreementContext => mapping(address => mapping(bytes => uint)))) // user => agreementContext => asset => payload => agreementId
    public agreementsByUser;
  mapping(TimeLockDataTypes.AgreementContext => uint48)
    public releaseDelayPerContext;

  event AgreementCreatedEvent(
    uint256 indexed agreementId,
    address indexed beneficiary,
    TimeLockDataTypes.AgreementContext agreementContext,
    address indexed asset,
    bytes payload,
    uint256 amount,
    uint48 releaseTime
  );

  event AgreementUpdatedEvent(
    uint256 indexed agreementId,
    address indexed beneficiary,
    TimeLockDataTypes.AgreementContext agreementContext,
    address indexed asset,
    bytes payload,
    uint256 amount,
    uint48 releaseTime
  );

  event AgreementClaimedEvent(
    uint256 indexed agreementId,
    address indexed beneficiary,
    TimeLockDataTypes.AgreementContext agreementContext,
    address indexed asset,
    bytes payload,
    uint256 amount,
    uint48 releaseTime
  );

  event AgreementFulfilledEvent(
    uint256 indexed agreementId,
    address indexed beneficiary,
    TimeLockDataTypes.AgreementContext agreementContext,
    address indexed asset,
    bytes payload,
    uint256 amount,
    uint48 releaseTime
  );

  event AgreementRestoredEvent(
    uint256 indexed agreementId,
    address indexed beneficiary,
    TimeLockDataTypes.AgreementContext agreementContext,
    address indexed asset,
    bytes payload,
    uint256 amount,
    uint48 releaseTime
  );

  event AgreementFrozenEvent(uint256 indexed agreementId, bool value);

  event SetReleaseDelayEvent(
    TimeLockDataTypes.AgreementContext agreementContext,
    uint48 releaseDelay
  );

  event SetRestoreAddressEvent(address restoreAddress);

  event FreezeAll(bool value);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    address _owner,
    uint48 _releaseDelay,
    address _restoreAddress
  ) public initializer {
    __AccessControl_init();
    __Ownable_init();
    __ReentrancyGuard_init();
    __Pausable_init();

    _transferOwnership(_owner);
    _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    _grantRole(EMERGENCY_ADMIN_ROLE, _owner);

    releaseDelay = _releaseDelay;
    restoreAddress = _restoreAddress;
  }

  // governance functions

  function pause() external onlyOwner {
    _pause();
    emit FreezeAll(true);
  }

  function unpause() external onlyOwner {
    _unpause();
    emit FreezeAll(false);
  }

  function setReleaseDelay(
    TimeLockDataTypes.AgreementContext agreementContext,
    uint48 _releaseDelay
  ) external onlyOwner {
    releaseDelayPerContext[agreementContext] = _releaseDelay;
    emit SetReleaseDelayEvent(agreementContext, releaseDelay);
  }

  function setRestoreAddress(address _restoreAddress) external onlyOwner {
    restoreAddress = _restoreAddress;
    emit SetRestoreAddressEvent(restoreAddress);
  }

  function restore(
    uint256[] calldata agreementIds
  ) external nonReentrant onlyOwner {
    Agreement memory agreement;
    for (uint256 index = 0; index < agreementIds.length; ++index) {
      agreement = agreements[agreementIds[index]];
      _require(agreement.isFrozen, Errors.AGREEMENT_NOT_FROZEN);
      delete agreements[agreementIds[index]];
      delete agreementsByUser[agreement.beneficiary][
        agreement.agreementContext
      ][agreement.asset][agreement.payload];

      emit AgreementRestoredEvent(
        agreementIds[index],
        agreement.beneficiary,
        agreement.agreementContext,
        agreement.asset,
        agreement.payload,
        agreement.amount,
        agreement.releaseTime
      );

      ERC20(agreement.asset).transferFixed(restoreAddress, agreement.amount);
    }
  }

  // privileged functions

  function freezeAllAgreements() external onlyRole(EMERGENCY_ADMIN_ROLE) {
    _pause();
    emit FreezeAll(true);
  }

  function unfreezeAllAgreements() external onlyRole(EMERGENCY_ADMIN_ROLE) {
    _unpause();
    emit FreezeAll(false);
  }

  function createAgreement(
    address asset,
    uint256 amount,
    address beneficiary,
    bytes calldata payload,
    TimeLockDataTypes.AgreementContext agreementContext
  ) external nonReentrant onlyRole(APPROVED_ROLE) {
    _createAgreement(asset, amount, beneficiary, payload, agreementContext);
  }

  function fulfill(
    uint256[] calldata agreementIds
  ) external nonReentrant onlyOwner whenNotPaused {
    Agreement memory agreement;
    for (uint256 index = 0; index < agreementIds.length; ++index) {
      agreement = agreements[agreementIds[index]];
      if (agreement.amount > 0) {
        delete agreements[agreementIds[index]];
        delete agreementsByUser[agreement.beneficiary][
          agreement.agreementContext
        ][agreement.asset][agreement.payload];

        emit AgreementFulfilledEvent(
          agreementIds[index],
          agreement.beneficiary,
          agreement.agreementContext,
          agreement.asset,
          agreement.payload,
          agreement.amount,
          agreement.releaseTime
        );

        _executeUponFulfilled(agreement);
      }
    }
  }

  function freezeAgreement(
    uint256 agreementId
  ) external onlyRole(EMERGENCY_ADMIN_ROLE) {
    _freezeAgreement(agreementId);
  }

  function freezeAgreements(
    uint256[] calldata agreementIds
  ) external onlyRole(EMERGENCY_ADMIN_ROLE) {
    for (uint256 index = 0; index < agreementIds.length; ++index) {
      _freezeAgreement(agreementIds[index]);
    }
  }

  // external functions

  function claim(
    uint256[] calldata agreementIds
  ) external virtual nonReentrant whenNotPaused {
    for (uint256 index = 0; index < agreementIds.length; ++index) {
      Agreement memory agreement = _validateClaim(agreementIds[index]);
      _executeUponClaimed(agreement);
    }
  }

  // internal functions

  function _executeUponClaimed(Agreement memory agreement) internal virtual {
    ERC20(agreement.asset).transferFixed(
      agreement.beneficiary,
      agreement.amount
    );
  }

  function _executeUponFulfilled(Agreement memory agreement) internal virtual {
    _executeUponClaimed(agreement);
  }

  function _createAgreement(
    address asset,
    uint256 amount,
    address beneficiary,
    bytes memory payload,
    TimeLockDataTypes.AgreementContext agreementContext
  ) internal {
    _require(beneficiary != address(0), Errors.ZERO_ADDRESS);
    _require(amount > 0, Errors.INVALID_AMOUNT);

    uint48 _releaseDelay = releaseDelayPerContext[agreementContext];
    if (_releaseDelay == 0) {
      _releaseDelay = releaseDelay;
    }
    uint48 releaseTime = uint48(block.timestamp) + _releaseDelay;

    uint256 agreementId = agreementsByUser[beneficiary][agreementContext][
      asset
    ][payload];
    if (agreementId == 0) {
      agreementId = ++agreementCount;
      Agreement memory agreement = Agreement({
        agreementContext: agreementContext,
        asset: asset,
        payload: payload,
        amount: amount,
        beneficiary: beneficiary,
        releaseTime: releaseTime,
        isFrozen: false
      });

      ERC20(asset).transferFromFixed(msg.sender, address(this), amount);

      agreementsByUser[beneficiary][agreementContext][asset][
        payload
      ] = agreementId;
      agreements[agreementId] = agreement;

      emit AgreementCreatedEvent(
        agreementId,
        beneficiary,
        agreementContext,
        asset,
        payload,
        amount,
        releaseTime
      );
    } else {
      Agreement memory agreement = agreements[agreementId];
      agreement.amount += amount;
      agreement.releaseTime = releaseTime;

      ERC20(asset).transferFromFixed(msg.sender, address(this), amount);

      agreements[agreementId] = agreement;

      emit AgreementUpdatedEvent(
        agreementId,
        beneficiary,
        agreementContext,
        asset,
        payload,
        agreement.amount,
        releaseTime
      );
    }
  }

  function _validateClaim(
    uint256 agreementId
  ) internal returns (Agreement memory) {
    Agreement memory agreement = agreements[agreementId];
    _require(
      msg.sender == agreement.beneficiary,
      Errors.BENEFICIARY_SENDER_MISMATCH
    );
    _require(
      block.timestamp >= agreement.releaseTime,
      Errors.RELEASE_TIME_NOT_REACHED
    );
    _require(!agreement.isFrozen, Errors.AGREEMENT_FROZEN);
    delete agreements[agreementId];
    delete agreementsByUser[agreement.beneficiary][agreement.agreementContext][
      agreement.asset
    ][agreement.payload];

    emit AgreementClaimedEvent(
      agreementId,
      agreement.beneficiary,
      agreement.agreementContext,
      agreement.asset,
      agreement.payload,
      agreement.amount,
      agreement.releaseTime
    );

    return agreement;
  }

  function _freezeAgreement(uint256 agreementId) internal {
    agreements[agreementId].isFrozen = true;
    emit AgreementFrozenEvent(agreementId, true);
  }
}
