// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagerUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '../libraries/SystemRoles.sol';
import '../interfaces/access/IRegistry.sol';
import '../interfaces/IZeUSD.sol';
import '../interfaces/IZeDP.sol';
import '../interfaces/IWithdrawalSystem.sol';
import '../interfaces/IVaultRegistry.sol';
import '../interfaces/priceOracles/IPriceOracle.sol';
import '../interfaces/vaults/IBaseVault.sol';
import '../interfaces/IZeUSDRouterV2.sol';

/**
 * @title Access Manager
 * @author ZeUSD Protocol Team
 * @notice Centralized access control system for the ZeUSD protocol
 * @dev Extends OpenZeppelin's AccessManagerUpgradeable to provide role-based access control
 * with a granular permission model for protocol functions.
 *
 * # Core Functionality
 * - Manages role assignments and admin relationships across the protocol
 * - Controls which addresses can perform specific functions on protocol contracts
 * - Supports bulk configuration of function permissions via the Registry
 * - Provides role labeling for improved discoverability in UIs
 *
 * # Storage Architecture
 * Uses OpenZeppelin's upgradeable access management pattern with:
 * - Role mappings for tracking which addresses have which roles
 * - Admin role hierarchies establishing who can grant/revoke roles
 * - Function permissions mapping specific functions to required roles
 *
 * # Roles and Capabilities
 * - ADMIN_ROLE: Ultimate authority, can configure all aspects of access control
 * - GATEKEEPER_ROLE: Manages registry configuration and token blacklisting
 * - ORCHESTRATOR_ROLE: Controls vault configurations, asset management, and price oracle settings
 * - GUARDIAN_ROLE: Emergency security operations, upgrades, pause/unpause capabilities
 * - TREASURY_ROLE: Manages withdrawal processing and request handling
 * - ROUTER_ROLE: Core token operations including minting, burning, and deposit handling
 *
 * # Security Considerations
 * - Role hierarchies enforce appropriate separation of duties
 * - All privileged functions across the protocol are secured through this contract
 * - Initialization ensures proper admin setup, preventing privilege escalation
 * - Each role has a dedicated admin role for granular permission management
 *
 * @custom:security-contact tech@zoth.io
 */
contract AccessManager is AccessManagerUpgradeable, UUPSUpgradeable {
    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the access manager with roles and admin hierarchies
     * @dev Sets up all protocol roles with appropriate admin relationships and custom addresses
     * @param initialAdmin The initial admin address that will have ADMIN_ROLE
     * @param gatekeeperAdmin Address for GATEKEEPER_ADMIN_ROLE
     * @param orchestratorAdmin Address for ORCHESTRATOR_ADMIN_ROLE
     * @param guardianAdmin Address for GUARDIAN_ADMIN_ROLE
     * @param treasuryAdmin Address for TREASURY_ADMIN_ROLE
     * @param gatekeeper Address for GATEKEEPER_ROLE
     * @param orchestrator Address for ORCHESTRATOR_ROLE
     * @param guardian Address for GUARDIAN_ROLE
     * @param treasury Address for TREASURY_ROLE
     */
    function initialize(
        address initialAdmin,
        address gatekeeperAdmin,
        address orchestratorAdmin,
        address guardianAdmin,
        address treasuryAdmin,
        address gatekeeper,
        address orchestrator,
        address guardian,
        address treasury,
        address whitelister
    ) external initializer {
        if (initialAdmin == address(0)) revert('Invalid admin address');

        // Initialize the base contract
        __AccessManager_init(initialAdmin);
        __UUPSUpgradeable_init();

        // Setup core administrative roles with specific addresses
        grantRole(SystemRoles.GATEKEEPER_ADMIN_ROLE, gatekeeperAdmin, 0);
        grantRole(SystemRoles.ORCHESTRATOR_ADMIN_ROLE, orchestratorAdmin, 0);
        grantRole(SystemRoles.GUARDIAN_ADMIN_ROLE, guardianAdmin, 0);
        grantRole(SystemRoles.TREASURY_ADMIN_ROLE, treasuryAdmin, 0);

        // Setup system roles with specific addresses
        grantRole(SystemRoles.GATEKEEPER_ROLE, gatekeeper, 0);
        grantRole(SystemRoles.ORCHESTRATOR_ROLE, orchestrator, 0);
        grantRole(SystemRoles.GUARDIAN_ROLE, guardian, 0);
        grantRole(SystemRoles.TREASURY_ROLE, treasury, 0);
        grantRole(SystemRoles.WHITELISTER_ROLE, whitelister, 0);
        // Setup role admin relationships
        _setRoleAdmin(SystemRoles.GATEKEEPER_ROLE, SystemRoles.GATEKEEPER_ADMIN_ROLE);
        _setRoleAdmin(SystemRoles.ORCHESTRATOR_ROLE, SystemRoles.ORCHESTRATOR_ADMIN_ROLE);
        _setRoleAdmin(SystemRoles.GUARDIAN_ROLE, SystemRoles.GUARDIAN_ADMIN_ROLE);
        _setRoleAdmin(SystemRoles.TREASURY_ROLE, SystemRoles.TREASURY_ADMIN_ROLE);
    }

    /**
     * @notice Configures function access control for all protocol contracts
     * @dev Maps protocol functions to their required roles according to the security model
     *
     * This function reads contract addresses from the Registry and assigns proper roles:
     * - GATEKEEPER_ROLE: Controls registry configuration and token operations
     * - ORCHESTRATOR_ROLE: Manages vault settings, asset configurations
     * - GUARDIAN_ROLE: Handles emergency operations, upgrades, and pause functionality
     * - TREASURY_ROLE: Processes withdrawal requests and batches
     * - ROUTER_ROLE: Executes core protocol operations like deposits and token minting
     *
     * Each contract function is mapped to exactly one role, ensuring clear ownership
     * and appropriate access restrictions throughout the protocol.
     *
     * @param registryAddress Address of the Registry contract to resolve other contract addresses
     * @custom:security Only callable by ADMIN_ROLE
     */
    function configureFunctionRoles(address registryAddress) external {
        // Ensure caller has admin role - extract the bool from the tuple returned by hasRole
        (bool isAdmin, ) = hasRole(0, msg.sender);
        if (!isAdmin) revert('Not admin');

        IRegistry registry = IRegistry(registryAddress);

        // Resolve contract addresses from registry
        address routerAddr = registry.getContract(Constants.CONTRACT_ROUTER);
        address zeUSDAddr = registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN);
        address zeUSDCdpAddr = registry.getContract(Constants.CONTRACT_ZEUSD_CDP);
        address withdrawalSystemAddr = registry.getContract(Constants.CONTRACT_WITHDRAWAL_SYSTEM);
        address vaultRegistryAddr = registry.getContract(Constants.CONTRACT_VAULT_REGISTRY);
        address priceOracleAddr = registry.getContract(Constants.CONTRACT_PRICE_ORACLE);
        address usycVaultAddr = registry.getContract(Constants.CONTRACT_USYC_VAULT);

        grantRole(SystemRoles.ROUTER_ROLE, routerAddr, 0);
        grantRole(SystemRoles.ROUTER_ROLE, withdrawalSystemAddr, 0);

        // Configure Registry functions (GATEKEEPER_ROLE)
        _setTargetFunctionRole(
            registryAddress,
            IRegistry.registerContract.selector,
            SystemRoles.GATEKEEPER_ROLE
        );
        _setTargetFunctionRole(
            registryAddress,
            IRegistry.updateContract.selector,
            SystemRoles.GATEKEEPER_ROLE
        );

        _setTargetFunctionRole(
            registryAddress,
            IRegistry.removeContract.selector,
            SystemRoles.GATEKEEPER_ROLE
        );

        // Configure ZeUSD Token functions
        // Token gatekeeper functions
        _setTargetFunctionRole(
            zeUSDAddr,
            IZeUSD.setBlacklistStatus.selector,
            SystemRoles.GATEKEEPER_ROLE
        );

        // Configure Router functions
        _setTargetFunctionRole(
            routerAddr,
            IZeUSDRouterV2.setWhitelistStatus.selector,
            SystemRoles.WHITELISTER_ROLE
        );

        // Token router functions
        _setTargetFunctionRole(zeUSDAddr, IZeUSD.mint.selector, SystemRoles.ROUTER_ROLE);
        _setTargetFunctionRole(zeUSDAddr, IZeUSD.burn.selector, SystemRoles.ROUTER_ROLE);
        _setTargetFunctionRole(zeUSDAddr, IZeUSD.burnFrom.selector, SystemRoles.ROUTER_ROLE);

        // Configure ZeUSD_CDP (NFT) functions
        // NFT gatekeeper functions
        _setTargetFunctionRole(
            zeUSDCdpAddr,
            IZeDP.setBaseURI.selector,
            SystemRoles.GATEKEEPER_ROLE
        );
        _setTargetFunctionRole(
            zeUSDCdpAddr,
            IZeDP.updateDepositMetadata.selector,
            SystemRoles.GATEKEEPER_ROLE
        );

        // NFT router functions
        _setTargetFunctionRole(zeUSDCdpAddr, IZeDP.mint.selector, SystemRoles.ROUTER_ROLE);
        _setTargetFunctionRole(
            zeUSDCdpAddr,
            IZeDP.updateWithdrawalStatus.selector,
            SystemRoles.ROUTER_ROLE
        );
        _setTargetFunctionRole(zeUSDCdpAddr, IZeDP.burn.selector, SystemRoles.ROUTER_ROLE);

        // Configure Router functions (GUARDIAN_ROLE)
        _setTargetFunctionRole(routerAddr, bytes4(keccak256('pause()')), SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(
            routerAddr,
            bytes4(keccak256('unpause()')),
            SystemRoles.GUARDIAN_ROLE
        );
        _setTargetFunctionRole(
            routerAddr,
            bytes4(keccak256('updateMerkleRoot(bytes32)')),
            SystemRoles.GUARDIAN_ROLE
        );

        // Configure Vault Registry functions
        // VaultRegistry orchestrator functions
        _setTargetFunctionRole(
            vaultRegistryAddr,
            IVaultRegistry.registerVault.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );
        _setTargetFunctionRole(
            vaultRegistryAddr,
            IVaultRegistry.unRegisterVault.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );
        _setTargetFunctionRole(
            vaultRegistryAddr,
            IVaultRegistry.updateVaultConfig.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );

        // VaultRegistry router functions
        _setTargetFunctionRole(
            vaultRegistryAddr,
            IVaultRegistry.validateAndPrepareDeposit.selector,
            SystemRoles.ROUTER_ROLE
        );

        // Configure BaseVault functions
        // BaseVault guardian functions
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.enableEmergencyMode.selector,
            SystemRoles.GUARDIAN_ROLE
        );
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.disableEmergencyMode.selector,
            SystemRoles.GUARDIAN_ROLE
        );
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.withdrawEmergency.selector,
            SystemRoles.GUARDIAN_ROLE
        );
        _setTargetFunctionRole(usycVaultAddr, IBaseVault.pause.selector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.unpause.selector,
            SystemRoles.GUARDIAN_ROLE
        );

        // BaseVault orchestrator functions
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.setMaxSlippage.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.addAsset.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.removeAsset.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );
        _setTargetFunctionRole(
            usycVaultAddr,
            IBaseVault.setupInitialApproval.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );

        // Configure WithdrawalSystem functions
        // WithdrawalSystem router functions
        _setTargetFunctionRole(
            withdrawalSystemAddr,
            IWithdrawalSystem.initiateWithdrawal.selector,
            SystemRoles.ROUTER_ROLE
        );

        // WithdrawalSystem treasury functions
        _setTargetFunctionRole(
            withdrawalSystemAddr,
            IWithdrawalSystem.processBatch.selector,
            SystemRoles.TREASURY_ROLE
        );
        _setTargetFunctionRole(
            withdrawalSystemAddr,
            IWithdrawalSystem.processRequest.selector,
            SystemRoles.TREASURY_ROLE
        );
        _setTargetFunctionRole(
            withdrawalSystemAddr,
            IWithdrawalSystem.updateRequest.selector,
            SystemRoles.TREASURY_ROLE
        );

        // Configure PriceOracle functions
        // PriceOracle orchestrator functions
        _setTargetFunctionRole(
            priceOracleAddr,
            IPriceOracle.setAssetOracleAndThreshold.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );
        _setTargetFunctionRole(
            priceOracleAddr,
            IPriceOracle.setDefaultStalenessThreshold.selector,
            SystemRoles.ORCHESTRATOR_ROLE
        );

        // Configure _authorizeUpgrade for all upgradeable contracts (GUARDIAN_ROLE)
        bytes4 upgradeSelector = bytes4(keccak256('_authorizeUpgrade(address)'));

        // Configure Router treasury functions
        _setTargetFunctionRole(
            routerAddr,
            IZeUSDRouterV2.setMigrationTreasury.selector,
            SystemRoles.TREASURY_ROLE
        );

        // Set upgrade permissions for all contracts
        _setTargetFunctionRole(routerAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(registryAddress, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(priceOracleAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(vaultRegistryAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(withdrawalSystemAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(zeUSDCdpAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(zeUSDAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
        _setTargetFunctionRole(usycVaultAddr, upgradeSelector, SystemRoles.GUARDIAN_ROLE);
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address) internal view override {
        (bool isGuardian, ) = hasRole(SystemRoles.GUARDIAN_ROLE, msg.sender);
        if (!isGuardian) revert('Not guardian');
    }
}
