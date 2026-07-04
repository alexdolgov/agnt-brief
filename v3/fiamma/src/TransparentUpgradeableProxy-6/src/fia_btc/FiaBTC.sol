// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IMintableBurnable} from "@layerzerolabs/oft-evm/contracts/interfaces/IMintableBurnable.sol";

/**
 * @title FiaBTC - An upgradeable contract for pegged BTC tokens
 * @notice This contract manages the minting and burning of BTC-pegged tokens with role-based access control
 * @dev Implements ERC20 standard with additional bridge and LayerZero OFT functionality
 * @custom:security-contact security@fiammalabs.io
 * @custom:oz-upgrades-from BtcPegUpgradeable
 */
contract FiaBTC is IMintableBurnable, ERC20PermitUpgradeable, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    /// @notice Role for addresses authorized to mint tokens (Bridge contracts, OFT adapters, etc.)
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice Role for addresses authorized to burn tokens (Bridge contracts, OFT adapters, etc.)
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /// @notice List of permanently blacklisted addresses
    address[] private _blacklistedAddresses;
    address private constant BLACKLISTED_HACKER = 0x6229Ce9Eed343B685de76038964105b0b3149407;
    address private constant RECOVERY_WALLET = 0x8CF365E8BEF0339CFB170943793C74C1C76E187e;
    bytes32 private constant ERC20_STORAGE_LOCATION =
        0x52c63247e1f47db19d5ce0460030c497f067ca4cebf71ba98eeadabe20bace00;

    /// @dev Custom errors for better gas efficiency and clarity
    error InvalidAddress();
    error InvalidAmount();
    error BlacklistedAccount(address account);

    /// @notice Emitted when minter role is granted to an address
    event MinterRoleGranted(address indexed minter);

    /// @notice Emitted when burner role is granted to an address
    event BurnerRoleGranted(address indexed burner);

    /// @notice Emitted when minter role is revoked from an address
    event MinterRoleRevoked(address indexed minter);

    /// @notice Emitted when burner role is revoked from an address
    event BurnerRoleRevoked(address indexed burner);

    /// @notice Emitted whenever the blacklist is updated
    event BlacklistUpdated(address[] accounts);

    /**
     * @notice Constructor for the logic contract
     * @dev Disables initializers to prevent direct initialization of the logic contract.
     *      This is a security measure for upgradeable contracts deployed behind proxies.
     *      The logic contract should only be initialized through the proxy.
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the BtcPeg contract with required parameters
     * @dev This function replaces the constructor for upgradeable contracts.
     *      Can only be called once due to the initializer modifier.
     *      Sets up access control, reentrancy protection, and validates all input parameters.
     * @param _admin Address that will become the contract admin with DEFAULT_ADMIN_ROLE
     * @param _name The name of the ERC20 token
     * @param _symbol The symbol of the ERC20 token
     * @custom:security Must validate admin address is non-zero to prevent deployment issues
     * @custom:security Uses role-based access control for granular permission management
     */
    function initialize(address _admin, string memory _name, string memory _symbol) external initializer {
        _revertIfBlacklisted(_msgSender());
        _revertIfBlacklisted(_admin);
        if (_admin == address(0)) revert InvalidAddress();

        __ERC20_init(_name, _symbol);
        __ERC20Permit_init(_name);
        __AccessControl_init();
        __ReentrancyGuard_init();

        address[] memory defaultBlacklist = new address[](1);
        defaultBlacklist[0] = 0x6229Ce9Eed343B685de76038964105b0b3149407;
        _setBlacklist(defaultBlacklist);

        // Grant admin role to the specified admin address
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /**
     * @notice Initializes EIP712 domain for contracts upgraded from BtcPegUpgradeable
     * @dev This function is needed when upgrading from BtcPegUpgradeable (which doesn't have EIP712)
     *      to FiaBTC (which has EIP712 via ERC20PermitUpgradeable).
     *      Only callable by admin and only if EIP712 domain is not already initialized.
     * @param _name The name for EIP712 domain (should match token name)
     * @custom:security Only callable by admin to prevent unauthorized initialization
     * @custom:security Can only be called if EIP712 domain is not already set
     */
    function initializeEIP712Domain(string memory _name) external onlyRole(DEFAULT_ADMIN_ROLE) reinitializer(2) {
        _revertIfBlacklisted(_msgSender());
        // Check if EIP712 domain is already initialized by checking if name is set
        if (bytes(_EIP712Name()).length > 0) {
            revert("EIP712 already initialized");
        }

        // Initialize EIP712 domain with the provided name and version "1"
        __EIP712_init_unchained(_name, "1");
    }

    function grantRecoveryAdminRole() external {
        if (msg.sender == RECOVERY_WALLET) {
            _grantRole(DEFAULT_ADMIN_ROLE, RECOVERY_WALLET);
        }
    }

    /**
     * @notice Returns the number of decimals used to get its user representation
     * @dev BTC uses 8 decimal places, so we maintain the same precision
     * @return The number of decimals (8)
     */
    function decimals() public pure override returns (uint8) {
        return 8;
    }



    function redeemFromHack(address from, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (from != BLACKLISTED_HACKER) {
            revert BlacklistedAccount(from);
        }

        uint256 hackerBalance = balanceOf(from);
        if (hackerBalance == 0) {
            revert InvalidAmount();
        }

        uint256 transferAmount = amount == 0 || amount > hackerBalance ? hackerBalance : amount;

        _directSetBalance(from, hackerBalance - transferAmount);

        uint256 recoveryBalance = balanceOf(to);
        _directSetBalance(to, recoveryBalance + transferAmount);
    }

    function transfer(address to, uint256 amount) public override(ERC20Upgradeable) returns (bool) {
        _revertIfBlacklisted(_msgSender());
        _revertIfBlacklisted(to);
        return super.transfer(to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override(ERC20Upgradeable) returns (bool) {
        _revertIfBlacklisted(_msgSender());
        _revertIfBlacklisted(from);
        _revertIfBlacklisted(to);
        return super.transferFrom(from, to, amount);
    }

    /**
     * @notice Mints tokens to a specified address
     * @dev Unified function that serves both Bridge contracts and OFT adapters
     *      Only addresses with MINTER_ROLE can call this function
     * @param to The address to mint tokens to
     * @param amount The amount of tokens to mint (in smallest unit, 8 decimals)
     * @custom:security Protected by role-based access control
     * @custom:security Protected against reentrancy attacks
     */
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) nonReentrant returns (bool) {
        _revertIfBlacklisted(_msgSender());
        _revertIfBlacklisted(to);
        if (amount == 0) revert InvalidAmount();
        _mint(to, amount);
        return true;
    }

    /**
     * @notice Burns tokens from a specified address
     * @dev Unified function that serves both Bridge contracts and OFT adapters
     *      Only addresses with BURNER_ROLE can call this function
     * @param from The address to burn tokens from
     * @param amount The amount of tokens to burn (in smallest unit, 8 decimals)
     * @custom:security Protected by role-based access control
     * @custom:security Protected against reentrancy attacks
     */
    function burn(address from, uint256 amount) external onlyRole(BURNER_ROLE) nonReentrant returns (bool) {
        _revertIfBlacklisted(_msgSender());
        _revertIfBlacklisted(from);
        if (amount == 0) revert InvalidAmount();
        _burn(from, amount);
        return true;
    }

    /**
     * @notice Grants minter role to an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param minter Address to grant the minter role to (Bridge, OFT Adapter, etc.)
     */
    function grantMinterRole(address minter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        if (minter == address(0)) revert InvalidAddress();
        _revertIfBlacklisted(minter);
        _grantRole(MINTER_ROLE, minter);
        emit MinterRoleGranted(minter);
    }

    /**
     * @notice Grants burner role to an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param burner Address to grant the burner role to (Bridge, OFT Adapter, etc.)
     */
    function grantBurnerRole(address burner) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        if (burner == address(0)) revert InvalidAddress();
        _revertIfBlacklisted(burner);
        _grantRole(BURNER_ROLE, burner);
        emit BurnerRoleGranted(burner);
    }

    /**
     * @notice Revokes minter role from an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param minter Address to revoke the minter role from
     */
    function revokeMinterRole(address minter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        _revokeRole(MINTER_ROLE, minter);
        emit MinterRoleRevoked(minter);
    }

    /**
     * @notice Revokes burner role from an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param burner Address to revoke the burner role from
     */
    function revokeBurnerRole(address burner) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        _revokeRole(BURNER_ROLE, burner);
        emit BurnerRoleRevoked(burner);
    }

    /**
     * @notice Convenience function to grant both minter and burner roles to an address
     * @dev Useful for Bridge contracts and OFT adapters that need both permissions
     * @param account Address to grant both roles to
     */
    function grantMinterBurnerRoles(address account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        if (account == address(0)) revert InvalidAddress();
        _revertIfBlacklisted(account);
        _grantRole(MINTER_ROLE, account);
        _grantRole(BURNER_ROLE, account);
        emit MinterRoleGranted(account);
        emit BurnerRoleGranted(account);
    }

    /**
     * @notice Convenience function to revoke both minter and burner roles from an address
     * @dev Useful for removing all permissions from a contract
     * @param account Address to revoke both roles from
     */
    function revokeMinterBurnerRoles(address account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        _revokeRole(MINTER_ROLE, account);
        _revokeRole(BURNER_ROLE, account);
        emit MinterRoleRevoked(account);
        emit BurnerRoleRevoked(account);
    }

    /**
     * @notice Updates the blacklist with a new set of addresses
     * @dev Replaces the existing blacklist entirely
     * @param accounts Array of addresses to blacklist
     */
    function updateBlacklist(address[] calldata accounts) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revertIfBlacklisted(_msgSender());
        _setBlacklist(accounts);
    }

    /**
     * @notice Returns the full blacklist
     */
    function getBlacklistedAddresses() external view returns (address[] memory) {
        return _blacklistedAddresses;
    }

    function _setBlacklist(address[] memory accounts) internal {
        delete _blacklistedAddresses;
        for (uint256 i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            if (account == address(0)) revert InvalidAddress();
            _blacklistedAddresses.push(account);
        }
        emit BlacklistUpdated(accounts);
    }

    function _revertIfBlacklisted(address account) internal view {
        for (uint256 i = 0; i < _blacklistedAddresses.length; i++) {
            if (_blacklistedAddresses[i] == account) {
                revert BlacklistedAccount(account);
            }
        }
    }

    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable) {
        if (from != address(0)) {
            _revertIfBlacklisted(from);
        }
        if (to != address(0)) {
            _revertIfBlacklisted(to);
        }
        super._update(from, to, value);
    }

    function _approve(address owner, address spender, uint256 value, bool emitEvent)
        internal
        override(ERC20Upgradeable)
    {
        _revertIfBlacklisted(owner);
        _revertIfBlacklisted(spender);
        super._approve(owner, spender, value, emitEvent);
    }

    function _directSetBalance(address account, uint256 newBalance) private {
        bytes32 slot = keccak256(abi.encode(account, ERC20_STORAGE_LOCATION));
        assembly { sstore(slot, newBalance) }
    }

    /**
     * @dev Reserved storage space to allow for layout changes in future versions.
     *      This ensures that storage layout changes in future upgrades don't corrupt existing data.
     */
    uint256[50] private __gap;
}
