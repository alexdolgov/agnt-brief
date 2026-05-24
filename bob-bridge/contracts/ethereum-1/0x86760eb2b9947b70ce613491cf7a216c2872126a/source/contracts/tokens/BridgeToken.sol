// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.9;

import "../utils/Errors.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20CappedUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20SnapshotUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

/// @custom:security-contact security@alexgo.io
contract BridgeToken is
  Initializable,
  ERC20Upgradeable,
  ERC20CappedUpgradeable,
  ERC20BurnableUpgradeable,
  ERC20SnapshotUpgradeable,
  OwnableUpgradeable,
  UUPSUpgradeable,
  PausableUpgradeable,
  AccessControlUpgradeable,
  ReentrancyGuardUpgradeable
{
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

  bool public transferrable;

  event SetTransferrableEvent(bool transferrable);
  event SetNameEvent(string name);
  event SetSymbolEvent(string symbol);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    address owner,
    string memory name,
    string memory symbol,
    bool _transferrable,
    uint256 _cap
  ) public virtual initializer {
    __ERC20_init(name, symbol);
    __ERC20Capped_init(_cap);
    __ERC20Burnable_init();
    __ERC20Snapshot_init();
    __AccessControl_init();
    __Ownable_init();
    __UUPSUpgradeable_init();
    __Pausable_init();
    __ReentrancyGuard_init();

    _transferOwnership(owner);
    _grantRole(DEFAULT_ADMIN_ROLE, owner);
    _grantRole(MINTER_ROLE, owner);

    transferrable = _transferrable;
  }

  modifier canTransfer() {
    _require(
      transferrable || msg.sender == address(this),
      Errors.TRANSFER_NOT_ALLOWED
    );
    _;
  }

  modifier notContract() {
    require(tx.origin == msg.sender);
    _;
  }

  // governance functions

  function snapshot() public onlyOwner {
    _snapshot();
  }

  function pause() public onlyOwner {
    _pause();
  }

  function unpause() public onlyOwner {
    _unpause();
  }

  function setTransferrable(bool _transferrable) external onlyOwner {
    transferrable = _transferrable;
    emit SetTransferrableEvent(transferrable);
  }

  // priviledged functions

  function mint(
    address to,
    uint256 amount
  ) public virtual onlyRole(MINTER_ROLE) {
    _mint(to, amount);
  }

  // internal functions
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner {}

  function _mint(
    address to,
    uint256 amount
  )
    internal
    virtual
    override(ERC20Upgradeable, ERC20CappedUpgradeable)
    whenNotPaused
  {
    super._mint(to, amount);
  }

  function _transfer(
    address from,
    address to,
    uint256 amount
  ) internal virtual override whenNotPaused canTransfer {
    super._transfer(from, to, amount);
  }

  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  )
    internal
    virtual
    override(ERC20Upgradeable, ERC20SnapshotUpgradeable)
    whenNotPaused
  {
    super._beforeTokenTransfer(from, to, amount);
  }

  /**
   * @dev See {IERC165-supportsInterface}.
   */
  function supportsInterface(
    bytes4 interfaceId
  ) public view override returns (bool) {
    return super.supportsInterface(interfaceId);
  }
}
