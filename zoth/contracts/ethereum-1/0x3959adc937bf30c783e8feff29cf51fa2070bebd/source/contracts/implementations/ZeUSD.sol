// ZeUSD.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '../interfaces/IZeUSD.sol';

/// @title ZeUSD Token Implementation
/// @notice Implementation of the ZeUSD stablecoin with upgradeability and access control
/// @dev Implements UUPS upgradeable pattern and OpenZeppelin standard token features
/// @custom:security-contact paras@zoth.io
contract ZeUSD is
    IZeUSD,
    Initializable,
    AccessControlUpgradeable,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    OwnableUpgradeable,
    UUPSUpgradeable
{
    /// @notice Role for admin access
    /// @dev Has authority to manage blacklist and other admin functions
    bytes32 public constant ADMIN_ROLE = keccak256('ADMIN_ROLE');

    /// @notice Router contract address with minting privileges
    /// @dev Critical for token minting control
    /// @custom:security Only trusted addresses should be set as router
    address public router;

    /// @notice Mapping to track blacklisted addresses
    /// @dev true = blacklisted, false = not blacklisted
    /// @custom:security This mapping is critical for compliance and security measures
    mapping(address => bool) private _blacklist;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the ZeUSD token
    /// @dev Sets up initial state of the contract
    /// @param tokenName Name of the token
    /// @param tokenSymbol Symbol of the token
    /// @param _admin Address of the initial admin
    /// @custom:security Critical initialization function - can only be called once
    function initialize(
        string memory tokenName,
        string memory tokenSymbol,
        address _admin
    ) public initializer {
        if (_admin == address(0)) revert InvalidAddress(_admin);
        __ERC20_init(tokenName, tokenSymbol);
        __Ownable_init(_admin);
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);
    }

    /// @notice Updates the router address
    /// @dev Only callable by admin
    /// @param newRouter Address of the new router
    /// @custom:security Router has minting privileges - verify carefully
    function setRouter(address newRouter) external override onlyRole(ADMIN_ROLE) {
        if (newRouter == address(0)) revert InvalidAddress(newRouter);
        router = newRouter;
        emit RouterUpdated(newRouter);
    }

    /// @notice Mints new tokens
    /// @dev Only callable by router
    /// @param to Recipient of the minted tokens
    /// @param amount Amount of tokens to mint
    /// @custom:security Critical function affecting total supply
    function mint(address to, uint256 amount) public override onlyRouter {
        _mint(to, amount);
    }

    /// @notice Burns tokens from caller
    /// @dev Only callable by router
    /// @param amount Amount of tokens to burn
    /// @custom:security Critical function affecting total supply
    function burn(
        uint256 amount
    ) public virtual override(IZeUSD, ERC20BurnableUpgradeable) onlyRouter {
        _burn(msg.sender, amount);
    }

    /// @notice Burns tokens from specified account
    /// @dev Only callable by router, requires approval
    /// @param account Address to burn from
    /// @param amount Amount of tokens to burn
    /// @custom:security Critical function affecting user balances
    function burnFrom(
        address account,
        uint256 amount
    ) public virtual override(IZeUSD, ERC20BurnableUpgradeable) onlyRouter {
        _spendAllowance(account, msg.sender, amount);
        _burn(account, amount);
    }

    /// @notice Updates token balances
    /// @dev Internal override of ERC20 _update
    /// @param from Address tokens are transferred from
    /// @param to Address tokens are transferred to
    /// @param amount Amount of tokens to transfer
    /// @custom:security Core transfer functionality
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal override notBlacklisted(from, to) {
        super._update(from, to, amount);
    }

    /// @notice Sets the blacklist status for an account
    /// @dev Only callable by admin role
    /// @param account Address to update blacklist status for
    /// @param status New blacklist status (true = blacklisted)
    /// @custom:security This function can significantly impact user access
    function setBlacklistStatus(address account, bool status) public override onlyRole(ADMIN_ROLE) {
        _blacklist[account] = status;
        emit Blacklisted(account, status);
    }

    /// @notice Checks if an account is blacklisted
    /// @dev Public view function to check blacklist status
    /// @param account Address to check
    /// @return bool True if account is blacklisted, false otherwise
    /// @custom:security Critical for compliance checks
    function isBlacklisted(address account) public view override returns (bool) {
        return _blacklist[account];
    }

    /// @notice Prevents blacklisted addresses from transferring tokens
    /// @dev Checks both sender and receiver addresses
    /// @param from Address sending tokens
    /// @param to Address receiving tokens
    /// @custom:security Critical modifier for enforcing compliance
    modifier notBlacklisted(address from, address to) {
        if (isBlacklisted(from) || isBlacklisted(to))
            revert Unauthorized('ZeUSD: from or to user is blacklisted');
        _;
    }

    /// @notice Restricts access to router address
    /// @dev Throws if router not set or caller is not the router
    /// @custom:security Core modifier for minting/burning functions
    modifier onlyRouter() {
        if (router == address(0)) revert RouterNotSet('ZeUSD: Router address is not set');
        if (msg.sender != router) revert NotRouter('ZeUSD: Only router can call this function');
        _;
    }

    /// @notice Internal function to authorize upgrades
    /// @dev Only callable by owner
    /// @param newImplementation Address of new implementation
    /// @custom:security Critical for contract upgrades
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
