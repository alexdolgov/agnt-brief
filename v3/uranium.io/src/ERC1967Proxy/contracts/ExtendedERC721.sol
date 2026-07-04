// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721BurnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';

import './DocumentHashRegistry.sol';
import './utils/ExtendedAccessControl.sol';

contract ExtendedERC721 is
  Initializable,
  ERC721Upgradeable,
  ERC721EnumerableUpgradeable,
  ERC721PausableUpgradeable,
  AccessControlUpgradeable,
  ERC721BurnableUpgradeable,
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
  uint256 private _nextTokenId;
  bool private _isKYCable;
  bool private _isBlacklistable;

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
    bool isKYCable_,
    bool isBlacklistable_
  ) public virtual initializer {
    __ERC721_init(name_, symbol_);
    __ERC721Enumerable_init();
    __ERC721Pausable_init();
    __AccessControl_init();
    __ERC721Burnable_init();
    __UUPSUpgradeable_init();

    _isKYCable = isKYCable_;
    _isBlacklistable = isBlacklistable_;

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(PAUSER_ROLE, msg.sender);
    _grantRole(MINTER_ROLE, msg.sender);
    _grantRole(WIPER_ROLE, msg.sender);
    _grantRole(KYC_ROLE, msg.sender);
    _grantRole(UPGRADER_ROLE, msg.sender);
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

  function safeMint(address to) public virtual onlyRole(MINTER_ROLE) {
    _checkBlacklistStatus(to);
    _checkKYCStatus(to);
    uint256 tokenId = _nextTokenId++;
    _safeMint(to, tokenId);
  }

  function transferFrom(address from, address to, uint256 tokenId) public virtual override(ERC721Upgradeable, IERC721) {
    _canTransfer(from, to);
    super.transferFrom(from, to, tokenId);
  }

  function safeTransferFrom(
    address from,
    address to,
    uint256 tokenId,
    bytes memory data
  ) public virtual override(ERC721Upgradeable, IERC721) {
    _canTransfer(from, to);
    super.safeTransferFrom(from, to, tokenId, data);
  }

  function burn(uint256 tokenId) public virtual override onlyRole(DEFAULT_ADMIN_ROLE) {
    address owner = ERC721Upgradeable.ownerOf(tokenId);
    _checkBlacklistStatus(owner);
    _checkKYCStatus(owner);
    super.burn(tokenId);
  }

  /**
   * @dev Wipes the provided Wipes the provided token with given tokenId.
   * Wiping an account's tokens burns the tokens and decreases the total supply.
   *
   * See {ERC721._burn}.
   */
  function wipe(uint256 tokenId) public virtual onlyRole(WIPER_ROLE) {
    _update(address(0), tokenId, address(0));
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
    address to,
    uint256 tokenId,
    address auth
  ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable, ERC721PausableUpgradeable) returns (address) {
    return super._update(to, tokenId, auth);
  }

  function _increaseBalance(
    address account,
    uint128 value
  ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
    super._increaseBalance(account, value);
  }

  function supportsInterface(
    bytes4 interfaceId
  ) public view override(ERC721Upgradeable, ERC721EnumerableUpgradeable, AccessControlUpgradeable) returns (bool) {
    return super.supportsInterface(interfaceId);
  }

  // UUPS upgrade authorization
  function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER_ROLE) {}
}
