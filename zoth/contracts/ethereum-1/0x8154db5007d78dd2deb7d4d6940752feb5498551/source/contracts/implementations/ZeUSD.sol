// ZeUSD.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import '../interfaces/IZeUSD.sol';

/**
 * @title ZeUSD Token Implementation
 * @author ZeUSD Protocol Team
 * @notice Implementation of the ZeUSD stablecoin with upgradeability and access control
 * @dev Implements UUPS upgradeable pattern and ERC7201 storage pattern
 *
 * The ZeUSD token is the core stablecoin of the protocol, implementing the ERC20 standard
 * with additional features for compliance, access control, and upgradability. It includes
 * blacklisting functionality to handle regulatory requirements and security incidents.
 *
 * Core Functionality:
 * - Standard ERC20 token operations (transfer, approve, etc.)
 * - Minting of new tokens by authorized routers
 * - Burning capabilities for redemption processes
 * - Blacklisting system for compliance requirements
 *
 * Token Properties:
 * - 6 decimal places (USDC-compatible)
 * - Burnable extension for redemption mechanics
 * - Detailed compliance controls
 *
 * Storage Architecture:
 * - Uses ERC7201 namespaced storage pattern for upgrade safety
 * - Storage struct containing blacklist mapping
 * - Constant storage slot to prevent collisions
 *
 * @custom:roles-and-capabilities
 * ROUTER_ROLE:
 * - Mint new tokens during deposit operations
 * - Burn tokens during redemption processes
 *
 * GATEKEEPER_ROLE:
 * - Manage blacklist status for compliance purposes
 *
 * GUARDIAN_ROLE:
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Role-based access control for all administrative functions
 * - Blacklist enforcement on all transfer operations
 * - Transfer blocking for compliance and security
 * - Proper initialization of the upgradeability pattern
 * - Validation of critical addresses during initialization
 *
 * @custom:security-contact tech@zoth.io
 */
contract ZeUSD is
    IZeUSD,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    AccessManagedUpgradeable,
    UUPSUpgradeable
{
    /**
     * @notice Main storage structure for the token
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct ZeUSDStorage {
        mapping(address => bool) blacklist;
    }

    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.token.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant ZeUSDStorageLocation =
        0xb3a4c3d2d9ad7c20fb0a684aa6981e22a1d94d1081a74796b2844a91aa41a700;

    /**
     * @notice Retrieves storage pointer for ERC7201 storage
     * @dev Uses assembly for consistent storage slot access
     * @return $ Storage pointer to Storage struct
     * @custom:security Critical for storage access - do not modify
     */
    function _getZeUSDStorage() private pure returns (ZeUSDStorage storage $) {
        assembly {
            $.slot := ZeUSDStorageLocation
        }
    }

    /**
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the ZeUSD token
     * @dev Sets up initial state of the contract
     * @param tokenName Name of the token
     * @param tokenSymbol Symbol of the token
     * @param _accessManager Address of the AccessManager contract
     * @custom:security Critical initialization function - can only be called once
     */
    function initialize(
        string memory tokenName,
        string memory tokenSymbol,
        address _accessManager
    ) external initializer {
        if (_accessManager == address(0)) revert ZeUSD_InvalidAccessManagerAddress();

        __ERC20_init(tokenName, tokenSymbol);
        __ERC20Burnable_init();
        __AccessManaged_init(_accessManager);
        __UUPSUpgradeable_init();
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @notice Gets the access manager interface
     * @return The access manager contract instance
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Mints new tokens
     * @param to Recipient of the minted tokens
     * @param amount Amount of tokens to mint
     * @custom:security Only callable by ROUTER
     */
    function mint(address to, uint256 amount) public override restricted {
        _mint(to, amount);
    }

    /**
     * @notice Burns tokens from caller
     * @param amount Amount of tokens to burn
     * @custom:security Only callable by ROUTER
     */
    function burn(
        uint256 amount
    ) public virtual override(IZeUSD, ERC20BurnableUpgradeable) restricted {
        _burn(msg.sender, amount);
    }

    /**
     * @notice Burns tokens from specified account
     * @param account Address to burn from
     * @param amount Amount of tokens to burn
     * @custom:security Only callable by ROUTER
     */
    function burnFrom(
        address account,
        uint256 amount
    ) public virtual override(IZeUSD, ERC20BurnableUpgradeable) restricted {
        _spendAllowance(account, msg.sender, amount);
        _burn(account, amount);
    }

    /**
     * @notice Updates token balances
     * @dev Internal override of ERC20 _update
     * @param from Address tokens are transferred from
     * @param to Address tokens are transferred to
     * @param amount Amount of tokens to transfer
     * @custom:security Core transfer functionality
     */
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal override notBlacklisted(from, to) {
        super._update(from, to, amount);
    }

    /**
     * @notice Sets the blacklist status for an account
     * @param account Address to update blacklist status for
     * @param status New blacklist status (true = blacklisted)
     * @custom:security Only callable by GATEKEEPER_ROLE
     */
    function setBlacklistStatus(address account, bool status) external override restricted {
        ZeUSDStorage storage $ = _getZeUSDStorage();
        $.blacklist[account] = status;
        emit ZeUSDBlacklisted(account, status);
    }

    /**
     * @notice Checks if an account is blacklisted
     * @dev Public view function to check blacklist status
     * @param account Address to check
     * @return bool True if account is blacklisted, false otherwise
     * @custom:security Critical for compliance checks
     */
    function isBlacklisted(address account) public view override returns (bool) {
        ZeUSDStorage storage $ = _getZeUSDStorage();
        return $.blacklist[account];
    }

    /**
     * @notice Prevents blacklisted addresses from transferring tokens
     * @dev Checks both sender and receiver addresses
     * @param from Address sending tokens
     * @param to Address receiving tokens
     * @custom:security Critical modifier for enforcing compliance
     */
    modifier notBlacklisted(address from, address to) {
        ZeUSDStorage storage $ = _getZeUSDStorage();
        if ($.blacklist[from] || $.blacklist[to])
            revert ZeUSD_Unauthorized('ZeUSD: from or to user is blacklisted');
        _;
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}
}
