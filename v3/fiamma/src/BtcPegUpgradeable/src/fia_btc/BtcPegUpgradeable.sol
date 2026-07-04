// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./interface/IMintableBurnable.sol";

/**
 * @title BtcPegUpgradeable - An upgradeable contract for pegged BTC tokens
 * @notice This contract manages the minting and burning of BTC-pegged tokens with role-based access control
 * @dev Implements ERC20 standard with additional bridge and LayerZero OFT functionality
 * @custom:security-contact security@fiammalabs.io
 */
contract BtcPegUpgradeable is
    IMintableBurnable,
    ERC20Upgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    /// @notice Role for addresses authorized to mint tokens (Bridge contracts, OFT adapters, etc.)
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice Role for addresses authorized to burn tokens (Bridge contracts, OFT adapters, etc.)
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /// @dev Custom errors for better gas efficiency and clarity
    error InvalidAddress();
    error InvalidAmount();

    /// @notice Emitted when minter role is granted to an address
    event MinterRoleGranted(address indexed minter);

    /// @notice Emitted when burner role is granted to an address
    event BurnerRoleGranted(address indexed burner);

    /// @notice Emitted when minter role is revoked from an address
    event MinterRoleRevoked(address indexed minter);

    /// @notice Emitted when burner role is revoked from an address
    event BurnerRoleRevoked(address indexed burner);

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
        if (_admin == address(0)) revert InvalidAddress();

        __ERC20_init(_name, _symbol);
        __AccessControl_init();
        __ReentrancyGuard_init();

        // Grant admin role to the specified admin address
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /**
     * @notice Returns the number of decimals used to get its user representation
     * @dev BTC uses 8 decimal places, so we maintain the same precision
     * @return The number of decimals (8)
     */
    function decimals() public pure override returns (uint8) {
        return 8;
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
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) nonReentrant {
        if (amount == 0) revert InvalidAmount();
        _mint(to, amount);
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
    function burn(address from, uint256 amount) external onlyRole(BURNER_ROLE) nonReentrant {
        if (amount == 0) revert InvalidAmount();
        _burn(from, amount);
    }

    /**
     * @notice Grants minter role to an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param minter Address to grant the minter role to (Bridge, OFT Adapter, etc.)
     */
    function grantMinterRole(address minter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (minter == address(0)) revert InvalidAddress();
        _grantRole(MINTER_ROLE, minter);
        emit MinterRoleGranted(minter);
    }

    /**
     * @notice Grants burner role to an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param burner Address to grant the burner role to (Bridge, OFT Adapter, etc.)
     */
    function grantBurnerRole(address burner) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (burner == address(0)) revert InvalidAddress();
        _grantRole(BURNER_ROLE, burner);
        emit BurnerRoleGranted(burner);
    }

    /**
     * @notice Revokes minter role from an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param minter Address to revoke the minter role from
     */
    function revokeMinterRole(address minter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(MINTER_ROLE, minter);
        emit MinterRoleRevoked(minter);
    }

    /**
     * @notice Revokes burner role from an address
     * @dev Only callable by addresses with DEFAULT_ADMIN_ROLE
     * @param burner Address to revoke the burner role from
     */
    function revokeBurnerRole(address burner) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(BURNER_ROLE, burner);
        emit BurnerRoleRevoked(burner);
    }

    /**
     * @notice Convenience function to grant both minter and burner roles to an address
     * @dev Useful for Bridge contracts and OFT adapters that need both permissions
     * @param account Address to grant both roles to
     */
    function grantMinterBurnerRoles(address account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (account == address(0)) revert InvalidAddress();
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
        _revokeRole(MINTER_ROLE, account);
        _revokeRole(BURNER_ROLE, account);
        emit MinterRoleRevoked(account);
        emit BurnerRoleRevoked(account);
    }

    /**
     * @dev Reserved storage space to allow for layout changes in future versions.
     *      This ensures that storage layout changes in future upgrades don't corrupt existing data.
     */
    uint256[50] private __gap;
}
