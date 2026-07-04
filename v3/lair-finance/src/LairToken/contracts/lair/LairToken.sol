// SPDX-License-Identifier: Bughole
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";

contract LairToken is ERC20, Ownable, AccessControl, ERC20Burnable, ERC20Pausable {
    bytes32 public constant BLOCK_ROLE = keccak256("BLOCK_ROLE");
    bytes32 public constant BLOCK_ROLE_MANAGER = keccak256("BLOCK_ROLE_MANAGER");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant SUPPLY_ROLE = keccak256("SUPPLY_ROLE");
    uint256 public MAX_SUPPLY = 1_000_000_000 * 10**18;

    constructor(string memory _name, string memory _symbol, address _owner) Ownable(_owner) ERC20(_name, _symbol) {
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        _grantRole(MINTER_ROLE, _owner);
    }

    /**
      * @dev Creates `amount` new tokens for `to`.
      *
      * See {ERC20-_mint}.
      *
      * Requirements:
      *
      * - the caller must have the `MINTER_ROLE`.
      */
    function mint(address _to, uint256 _amount) external onlyRole(MINTER_ROLE) {
        require(totalSupply() + _amount <= MAX_SUPPLY, "LairToken::mint: exceeds max supply");
        _mint(_to, _amount);
    }

    function setMaxSupply(uint256 _amount) external onlyRole(SUPPLY_ROLE) {
        require(totalSupply() <= _amount, "LairToken::mint: exceeds max supply");
        MAX_SUPPLY = _amount;
    }

    /**
      * @dev Pauses all token transfers.
      */
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /**
      * @dev Unpauses the token.
      */
    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    function _update(address from, address to, uint256 amount) internal override(ERC20, ERC20Pausable) {
        require(!hasRole(BLOCK_ROLE, from), "Blocked address cannot transfer tokens");
        require(!hasRole(BLOCK_ROLE, to), "Cannot transfer to a blocked address");
        super._update(from, to, amount);
    }

    /**
     * @dev addBlockRole
     * @param account account
     */
    function addBlockRole(address account) public onlyRole(BLOCK_ROLE_MANAGER) {
        require(!hasRole(DEFAULT_ADMIN_ROLE, account), "ADMIN cannot be blocked");
        _grantRole(BLOCK_ROLE, account);
    }

    /**
     * @dev removeBlockRole
     * @param account account
     */
    function removeBlockRole(address account) public onlyRole(BLOCK_ROLE_MANAGER) {
        _revokeRole(BLOCK_ROLE, account);
    }

    /**
     * @dev Set role abd Throws if called by any account other than the admin.
     * @param role The name of the role keccak256
     * @param account account
     */
    function addRole(bytes32 role, address account) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(role != DEFAULT_ADMIN_ROLE || (role == DEFAULT_ADMIN_ROLE && _msgSender() != account), "VaultService:: invalid role");
        _grantRole(role, account);
    }

    /**
     * @dev remove role.
      * @param role The name of the role by keccak256.
      * @param account The address of the account.
      */
    function removeRole(bytes32 role, address account) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            !(hasRole(DEFAULT_ADMIN_ROLE, account) && account == _msgSender()),
            "Admin cannot revoke own admin role"
        );

        _revokeRole(role, account);
    }

    /**
      * @dev grantRole
      * @param role role
      * @param account account
      */
    function grantRole(bytes32 role, address account) public override onlyRole(getRoleAdmin(role)) {
        revert("grantRole is disabled");
    }

    /**
      * @dev renounce ownership
      */
    // solhint-disable-next-line func-mutability
    function renounceOwnership() public override onlyOwner {
        revert("ownership cannot be renounced");
    }

    /**
      * @dev transferOwnership
      * @param newOwner The address of the new owner
      */
    function transferOwnership(address newOwner) public override onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        super.transferOwnership(newOwner);
    }

    /**
      * @dev grantRole
      * @param role role
      */
    // solhint-disable-next-line func-mutability
    function revokeRole(bytes32 role, address) public override onlyRole(getRoleAdmin(role)) {
        revert("revokeRole is disabled");
    }

    /**
      * @dev renounceRole
      */
    // solhint-disable-next-line func-mutability
    function renounceRole(bytes32, address) public override {
        revert("renounceRole is disabled");
    }
}