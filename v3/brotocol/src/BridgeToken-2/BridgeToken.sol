// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import "../MultisigWallet.sol";
import "../utils/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @custom:security-contact security@alexgo.io
contract BridgeToken is
  ERC20,
  ERC20Capped,
  ERC20Burnable,
  ERC20Snapshot,
  Ownable,
  Pausable,
  AccessControl,
  ReentrancyGuard
{
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

  bool public transferrable;

  event SetTransferrableEvent(bool transferrable);
  event SetNameEvent(string name);
  event SetSymbolEvent(string symbol);

  constructor(
    address _owner,
    string memory name,
    string memory symbol,
    bool _transferrable,
    uint256 _cap
  ) ERC20(name, symbol) ERC20Capped(_cap) {
    _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    _transferOwnership(_owner);
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

  function _mint(
    address to,
    uint256 amount
  ) internal virtual override(ERC20, ERC20Capped) whenNotPaused {
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
  ) internal virtual override(ERC20, ERC20Snapshot) whenNotPaused {
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
