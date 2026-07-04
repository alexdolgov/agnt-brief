// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '../DocumentHashRegistry.sol';
import '../utils/ExtendedAccessControl.sol';

contract TestExtendedERC20v2 is
  Initializable,
  ERC20Upgradeable,
  ERC20PausableUpgradeable,
  ExtendedAccessControl,
  DocumentHashRegistry,
  UUPSUpgradeable
{
  bytes32 public constant UPGRADER_ROLE = keccak256('UPGRADER_ROLE');
  bytes32 public constant PAUSER_ROLE = keccak256('PAUSER_ROLE');
  bytes32 public constant MINTER_ROLE = keccak256('MINTER_ROLE');
  bytes32 public constant WIPER_ROLE = keccak256('WIPER_ROLE');
  bytes32 public constant KYC_ROLE = keccak256('KYC_ROLE');
  bytes32 public constant BLACKLISTED_ROLE = keccak256('BLACKLISTED_ROLE');
  bool private _isKYCable;
  bool private _isBlacklistable;
  uint8 private _decimals;

  event KYCableStatusChanged(bool enabled);
  event BlacklistableStatusChanged(bool enabled);

  error KYCableStatusUnchanged(bool currentStatus);
  error BlacklistableStatusUnchanged(bool currentStatus);
  error BlacklistedError(address account);
  error KYCNotApprovedError(address account);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    string memory name_,
    string memory symbol_,
    uint256 premintAmount,
    bool isKYCable_,
    bool isBlacklistable_,
    uint8 decimals_
  ) public virtual initializer {
    __ERC20_init(name_, symbol_);
    __ERC20Pausable_init();
    __DocumentHashRegistry_init();
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(PAUSER_ROLE, msg.sender);
    _grantRole(MINTER_ROLE, msg.sender);
    _grantRole(WIPER_ROLE, msg.sender);
    _grantRole(KYC_ROLE, msg.sender);
    _grantRole(UPGRADER_ROLE, msg.sender);

    if (premintAmount > 0) {
      _mint(msg.sender, premintAmount);
    }
    _isKYCable = isKYCable_;
    _isBlacklistable = isBlacklistable_;
    _decimals = decimals_;
  }

  function decimals() public view virtual override returns (uint8) {
    return _decimals;
  }

  function isKYCable() public view virtual returns (bool) {
    return _isKYCable;
  }

  function isBlacklistable() public view virtual returns (bool) {
    return _isBlacklistable;
  }

  function setKYCableStatus(bool enabled) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (_isKYCable == enabled) {
      revert KYCableStatusUnchanged(enabled);
    }
    _isKYCable = enabled;
    emit KYCableStatusChanged(enabled);
  }

  function setBlacklistableStatus(bool enabled) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (_isBlacklistable == enabled) {
      revert BlacklistableStatusUnchanged(enabled);
    }
    _isBlacklistable = enabled;
    emit BlacklistableStatusChanged(enabled);
  }

  function pause() public onlyRole(PAUSER_ROLE) {
    _pause();
  }

  function unpause() public onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  function transfer(address to, uint256 amount) public virtual override returns (bool) {
    _canTransfer(_msgSender(), to);
    return super.transfer(to, amount);
  }

  function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
    _canTransfer(from, to);
    return super.transferFrom(from, to, amount);
  }

  /**
   * @dev Destroys `amount` tokens from the caller.
   *
   * See {ERC20-_burn}.
   */
  function burn(uint256 amount) public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
    _burn(_msgSender(), amount);
  }

  function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
    if (_isBlacklistable && hasRole(BLACKLISTED_ROLE, to)) {
      revert BlacklistedError(to);
    }

    if (_isKYCable && !hasRole(KYC_ROLE, to)) {
      revert KYCNotApprovedError(to);
    }

    _mint(to, amount);
  }

  /**
   * @dev Wipes the provided amount of tokens from the specified account.
   * This transaction does not delete tokens from the treasury account.
   * Wiping an account's tokens burns the tokens and decreases the total supply.
   *
   * See {ERC20-_burn}.
   */
  function wipe(address from, uint256 amount) public onlyRole(WIPER_ROLE) {
    _burn(from, amount);
  }

  /**
   * @dev Changes the owner of the contract.
   * This function revokes all roles from the current owner and grants them to the new owner.
   * The function can only be called by an account with the DEFAULT_ADMIN_ROLE.
   *
   * @param newOwnerAddress The address of the new owner to whom all roles will be granted.
   */
  function changeOwner(address newOwnerAddress) public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
    _revokeRole(DEFAULT_ADMIN_ROLE, _msgSender());
    _revokeRole(PAUSER_ROLE, _msgSender());
    _revokeRole(MINTER_ROLE, _msgSender());
    _revokeRole(WIPER_ROLE, _msgSender());
    _revokeRole(KYC_ROLE, _msgSender());
    _grantRole(DEFAULT_ADMIN_ROLE, newOwnerAddress);
    _grantRole(PAUSER_ROLE, newOwnerAddress);
    _grantRole(MINTER_ROLE, newOwnerAddress);
    _grantRole(WIPER_ROLE, newOwnerAddress);
    _grantRole(KYC_ROLE, newOwnerAddress);
  }

  function _checkBlacklistStatus(address account) internal view {
    if (_isBlacklistable && hasRole(BLACKLISTED_ROLE, account)) {
      revert BlacklistedError(account);
    }
  }

  function _checkKYCStatus(address account) internal view {
    if (_isKYCable && !hasRole(KYC_ROLE, account)) {
      revert KYCNotApprovedError(account);
    }
  }

  function _canTransfer(address from, address to) internal view {
    _checkBlacklistStatus(from);
    _checkBlacklistStatus(to);
    _checkKYCStatus(from);
    _checkKYCStatus(to);
  }

  // The following functions are overrides required by Solidity.

  function _update(
    address from,
    address to,
    uint256 value
  ) internal override(ERC20Upgradeable, ERC20PausableUpgradeable) {
    super._update(from, to, value);
  }

  // UUPS upgrade authorization
  function _authorizeUpgrade(address newImplementation) internal virtual override onlyRole(UPGRADER_ROLE) {}

  function version() public pure returns (string memory) {
    return 'v2';
  }
}
