// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';

contract OLOAN is
  Initializable,
  ERC20Upgradeable,
  PausableUpgradeable,
  AccessControlUpgradeable,
  ERC20PermitUpgradeable,
  UUPSUpgradeable
{
  uint256 private _holderCount;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(uint256 _totalSupply) public initializer {
    require(_totalSupply > 0, 'OLOAN: total supply is zero');
    __ERC20_init('OLOAN', 'OLOAN');
    __Pausable_init();
    __AccessControl_init();
    __ERC20Permit_init('OLOAN');
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _mint(msg.sender, _totalSupply);
  }

  function decimals() public view virtual override returns (uint8) {
    return 6;
  }

  /**
   * @dev Pauses all token transfers.
   *
   * See {ERC20Pausable} and {Pausable-_pause}.
   *
   * Requirements:
   *
   * - the caller must have the `DEFAULT_ADMIN_ROLE`.
   */
  function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
    _pause();
  }

  /**
   * @dev Unpauses all token transfers.
   *
   * See {ERC20Pausable} and {Pausable-_unpause}.
   *
   * Requirements:
   *
   * - the caller must have the `DEFAULT_ADMIN_ROLE`.
   */
  function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
  }

  /**
   * @dev See {ERC20-_beforeTokenTransfer}.
   *
   * Requirements:
   *
   * - the contract must not be paused.
   */
  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  ) internal override whenNotPaused {
    super._beforeTokenTransfer(from, to, amount);
    if (amount > 0) {
      if (from != address(0) && balanceOf(from) == amount) {
        _holderCount--;
      }

      if (to != address(0) && balanceOf(to) == 0) {
        _holderCount++;
      }
    }
  }

  /**
   * @dev Returns the number of holders.
   * @return The number of holders.
   */
  function holders() public view returns (uint256) {
    return _holderCount;
  }

  function transferOwnership(address newOwner) public onlyRole(DEFAULT_ADMIN_ROLE) {
    _grantRole(DEFAULT_ADMIN_ROLE, newOwner);
    _revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
