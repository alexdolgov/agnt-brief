// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import './interfaces/vaults/IVault.sol';
import './interfaces/vaults/IBaseVault.sol';
import './interfaces/IVaultRegistry.sol';
import './interfaces/priceOracles/IPriceOracle.sol';
import './libraries/SystemRoles.sol';
import './interfaces/access/IRegistry.sol';
import './interfaces/IZeDP.sol';

/**
 * @title Vault Registry
 * @author ZeUSD Protocol Team
 * @notice Manages vault configurations and deposit validations for the ZeUSD protocol
 * @dev Implements UUPS upgradeable pattern with ERC7201 storage pattern
 *
 * The VaultRegistry serves as the central coordinator for all vaults in the ZeUSD protocol,
 * managing vault configurations, registrations, and validating deposit operations. It integrates
 * with the price oracle system to enable accurate valuation of assets within vaults.
 *
 * Core Functionality:
 * - Vault registration and configuration management
 * - Loan-to-Value (LTV) ratio management per vault
 * - Deposit validation and parameter verification
 * - Price calculations for minting ZeUSD tokens
 * - Active/inactive status tracking for vaults
 *
 * Risk Parameters:
 * - Configurable LTV ratios per vault
 * - Slippage tolerance settings
 * - Stable/unstable asset designation
 * - Vault activation/deactivation controls
 *
 * Storage Architecture:
 * - Uses ERC7201 storage pattern for upgrade safety
 * - VAULT_REGISTRY_STORAGE_LOCATION for deterministic storage slot
 * - Storage struct containing all state variables
 *
 * Integration Points:
 * - Price Oracle: For asset valuations and price feeds
 * - System Registry: For contract reference resolution
 * - Vaults: For asset management and deposit processing
 *
 * @custom:roles-and-capabilities
 * ORCHESTRATOR_ROLE:
 * - Register and unregister vaults
 * - Configure vault parameters (LTV, status, etc.)
 * - Update vault configurations
 *
 * GUARDIAN_ROLE:
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Role-based access control for all administrative functions
 * - Input validation for all configuration parameters
 * - LTV ratio constraints to maintain protocol solvency
 * - Proper validation of vault configurations
 * - Storage layout preservation for upgrades
 *
 * @custom:security-contact tech@zoth.io
 */
contract VaultRegistry is
    IVaultRegistry,
    UUPSUpgradeable,
    AccessManagedUpgradeable,
    ReentrancyGuardUpgradeable
{
    using EnumerableSet for EnumerableSet.AddressSet;
    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("vault.registry.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant VAULT_REGISTRY_STORAGE_LOCATION =
        0x63f38b145d50642a555c10a376d3dec4e972053676d456839cfc760e77860400;

    /**
     * @notice Main storage structure for the vault registry
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct Storage {
        EnumerableSet.AddressSet registeredRWAs;
        IRegistry registry;
        mapping(address => DataTypes.Vaults) vaults;
    }

    /**
     * @notice Retrieves storage pointer for ERC7201 storage
     * @dev Uses assembly for consistent storage slot access
     * @return $ Storage pointer to Storage struct
     * @custom:security Critical for storage access - do not modify
     */
    function _getStorage() private pure returns (Storage storage $) {
        bytes32 position = VAULT_REGISTRY_STORAGE_LOCATION;
        assembly {
            $.slot := position
        }
    }

    /**
     * @notice Validates address is not zero
     * @dev Used for input validation
     * @param address_ Address to validate
     * @custom:security Prevents zero address operations
     */
    modifier validAddress(address address_) {
        if (address_ == address(0)) {
            revert VaultRegistryInvalidAddress(address_);
        }
        _;
    }

    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the vault contract
     * @dev Sets up initial contract references
     * @param registry Address of the registry contract
     * @param _accessManager Address of the access manager
     * @custom:security Only callable once
     */
    function initialize(address registry, address _accessManager) external initializer {
        __UUPSUpgradeable_init();
        __AccessManaged_init(_accessManager);
        __ReentrancyGuard_init();

        if (registry == address(0)) revert VaultRegistryInvalidAddress(registry);
        if (_accessManager == address(0)) revert VaultRegistryInvalidAddress(_accessManager);

        Storage storage $ = _getStorage();
        $.registry = IRegistry(registry);
    }

    /**
     * @notice Gets the access manager
     * @return The access manager contract interface
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Registers a new subvault configuration
     * @dev Validates and stores subvault configuration with collateral details
     * @param vaultName Name of the vault
     * @param rwaAddress Address of the RWA token
     * @param vaultAddress Address of the vault
     * @param ltv Loan to value ratio (1-1000000)
     * @param isActive Whether the vault is active
     * @param isStable Whether the collateral is stable
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function registerVault(
        string calldata vaultName,
        address rwaAddress,
        address vaultAddress,
        uint256 ltv,
        bool isActive,
        bool isStable
    ) external nonReentrant restricted {
        // Input validation
        if (bytes(vaultName).length == 0) revert VaultRegistryInvalidParameters('Empty vault name');
        if (rwaAddress == address(0)) revert VaultRegistryInvalidAddress(rwaAddress);
        if (vaultAddress == address(0)) revert VaultRegistryInvalidAddress(vaultAddress);
        if (ltv == 0 || ltv > 1000000) revert VaultRegistryInvalidLTV();

        Storage storage $ = _getStorage();

        // Check if the RWA is already registered with a different vault
        if ($.vaults[rwaAddress].vaultAddress != address(0)) {
            revert VaultRegistryVaultAlreadyRegistered(
                rwaAddress,
                $.vaults[rwaAddress].vaultAddress
            );
        }

        // Read slippage directly from the vault contract to ensure consistency
        uint256 slippage = IBaseVault(vaultAddress).getMaxSlippage();

        // Register the new vault
        $.vaults[rwaAddress] = DataTypes.Vaults({
            vaultName: vaultName,
            rwaAddress: rwaAddress,
            vaultAddress: vaultAddress,
            ltv: ltv,
            isActive: isActive,
            registeredAt: block.timestamp,
            lastUpdatedAt: block.timestamp,
            isStable: isStable,
            slippage: slippage
        });

        // Add to registeredRWAs set - O(1) operation
        $.registeredRWAs.add(rwaAddress);

        emit VaultRegistryVaultRegistered(
            rwaAddress,
            vaultAddress,
            vaultName,
            ltv,
            isActive,
            isStable,
            slippage
        );
    }

    /**
     * @notice Unregisters a vault from the system
     * @param rwaAddress The RWA asset address of the vault to unregister
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function unRegisterVault(address rwaAddress) external nonReentrant restricted {
        Storage storage $ = _getStorage();

        if ($.vaults[rwaAddress].vaultAddress == address(0)) {
            revert VaultRegistryVaultNotRegistered(rwaAddress);
        }

        address vaultAddress = $.vaults[rwaAddress].vaultAddress;

        // Remove from registeredRWAs set - O(1) operation
        $.registeredRWAs.remove(rwaAddress);

        delete $.vaults[rwaAddress];

        emit VaultRegistryVaultRemoved(rwaAddress, vaultAddress);
    }

    /**
     * @notice Updates specific parameters of a vault
     * @param rwaAddress Address of the RWA asset
     * @param params Update parameters structure
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function updateVaultConfig(
        address rwaAddress,
        DataTypes.VaultUpdateParams calldata params
    ) external nonReentrant restricted {
        Storage storage $ = _getStorage();

        DataTypes.Vaults storage vault = $.vaults[rwaAddress];
        if (vault.vaultAddress == address(0)) revert VaultRegistryVaultNotRegistered(rwaAddress);

        if (params.updateLTV) {
            if (params.ltv == 0 || params.ltv > 1000000) revert VaultRegistryInvalidLTV();
            vault.ltv = params.ltv;
        }

        if (params.updateActive) {
            vault.isActive = params.isActive;
        }

        if (params.updateVaultAddress) {
            if (params.vaultAddress == address(0))
                revert VaultRegistryInvalidAddress(params.vaultAddress);
            vault.vaultAddress = params.vaultAddress;
        }

        vault.lastUpdatedAt = block.timestamp;

        emit VaultRegistryVaultUpdated(
            rwaAddress,
            vault.vaultAddress,
            vault.ltv,
            vault.isActive,
            vault.lastUpdatedAt
        );
    }

    /**
     * @notice Calculates mint amount for given collateral
     * @dev Handles both stable and non-stable token calculations
     * @param rwaAddress RWA token address
     * @param assetAddress Asset token address
     * @param rwaAmount Amount of collateral
     * @return mintAmount Final mint amount
     */
    function calculateMintAmount(
        address rwaAddress,
        address assetAddress,
        uint256 rwaAmount
    ) public view override returns (uint256 mintAmount) {
        if (rwaAddress == address(0) || assetAddress == address(0))
            revert VaultRegistryInvalidAddress(rwaAddress);

        (DataTypes.Vaults memory vault, ) = _validateAssetAndGetPrice(rwaAddress, assetAddress);

        (uint256 rwaPrice, bool rwaSuccess) = IPriceOracle(
            _getStorage().registry.getContract(Constants.CONTRACT_PRICE_ORACLE)
        ).getOraclePrice(rwaAddress);
        if (!rwaSuccess) revert VaultRegistryPriceNotAvailable(rwaAddress);

        return _calculateMintAmount(rwaAmount, rwaPrice, vault.ltv);
    }

    /**
     * @notice Validates deposit parameters and prepares metadata
     * @param user Address of the depositing user
     * @param rwaAddress Address of RWA asset
     * @param assetAddress Address of the asset being deposited
     * @param assetAmount Amount being deposited
     * @param rwaAmount Amount of RWA tokens
     * @param tokenId NFT token ID of the deposit
     * @return metadata Deposit metadata structure
     * @custom:security Only callable by ROUTER when system is not paused
     */
    function validateAndPrepareDeposit(
        address user,
        address rwaAddress,
        address assetAddress,
        uint256 assetAmount,
        uint256 rwaAmount,
        uint256 tokenId
    ) external nonReentrant restricted returns (DataTypes.DepositMetadata memory metadata) {
        if (assetAmount == 0) revert VaultRegistryInvalidAmount();
        if (user == address(0)) revert VaultRegistryInvalidAddress(user);

        (DataTypes.Vaults memory vault, uint256 assetPrice) = _validateAssetAndGetPrice(
            rwaAddress,
            assetAddress
        );

        (uint256 rwaPrice, bool rwaSuccess) = IPriceOracle(
            _getStorage().registry.getContract(Constants.CONTRACT_PRICE_ORACLE)
        ).getOraclePrice(rwaAddress);
        if (!rwaSuccess) revert VaultRegistryPriceNotAvailable(rwaAddress);

        uint256 mintAmount = _calculateMintAmount(rwaAmount, rwaPrice, vault.ltv);

        return
            DataTypes.DepositMetadata({
                issuer: user,
                rwa: rwaAddress,
                assetDeposited: assetAddress,
                assetAmountDeposited: assetAmount,
                rwaAmount: rwaAmount,
                zeusdMinted: mintAmount,
                depositTimestamp: block.timestamp,
                tokenId: tokenId,
                rwaPrice: rwaPrice,
                assetPrice: assetPrice,
                vaultAddress: vault.vaultAddress,
                vaultName: vault.vaultName,
                isStable: vault.isStable,
                isWithdrawInitiated: false,
                isLiquidated: false
            });
    }

    /**
     * @notice Validates asset and vault, and gets asset price
     * @dev Internal helper for deposit validation and mint calculation
     * @param rwaAddress RWA token address
     * @param assetAddress Asset token address
     * @return vault Vault configuration
     * @return assetPrice Price of the asset
     */
    function _validateAssetAndGetPrice(
        address rwaAddress,
        address assetAddress
    ) internal view returns (DataTypes.Vaults storage vault, uint256) {
        Storage storage $ = _getStorage();
        vault = $.vaults[rwaAddress];

        if (!vault.isActive || vault.vaultAddress == address(0)) {
            revert VaultRegistryUnauthorizedVault(vault.vaultAddress);
        }

        if (!IVault(vault.vaultAddress).isAssetSupported(assetAddress)) {
            revert VaultRegistryAssetNotSupported(assetAddress);
        }

        (uint256 assetPrice, bool success) = IPriceOracle(
            $.registry.getContract(Constants.CONTRACT_PRICE_ORACLE)
        ).getOraclePrice(assetAddress);
        if (!success) revert VaultRegistryPriceNotAvailable(assetAddress);

        return (vault, assetPrice);
    }

    /**
     * @notice Calculates mint amount with overflow protection
     * @dev Uses assembly for gas-efficient overflow checks
     * @param amount Amount of collateral
     * @param price Price of collateral
     * @param ltv Loan to value ratio (1-1000000)
     * @return mintAmount Amount to mint
     */
    function _calculateMintAmount(
        uint256 amount,
        uint256 price,
        uint256 ltv
    ) internal pure returns (uint256 mintAmount) {
        return (amount * price * ltv) / 100;
    }

    /**
     * @notice Returns all registered vaults and their details
     * @dev Returns arrays of equal length containing vault data
     * @return rwaAddresses Array of RWA token addresses
     * @return vaultDetails Array of corresponding vault details
     */
    function getAllVaults()
        external
        view
        returns (address[] memory rwaAddresses, DataTypes.Vaults[] memory vaultDetails)
    {
        Storage storage $ = _getStorage();
        uint256 length = $.registeredRWAs.length();

        // Get all RWA addresses from the EnumerableSet
        rwaAddresses = new address[](length);
        vaultDetails = new DataTypes.Vaults[](length);

        for (uint256 i = 0; i < length; i++) {
            rwaAddresses[i] = $.registeredRWAs.at(i);
            vaultDetails[i] = $.vaults[rwaAddresses[i]];
        }

        return (rwaAddresses, vaultDetails);
    }

    /**
     * @notice Returns all active subvaults and their details
     * @dev Iterates once through all vaults filtering for active ones
     * @return rwaAddresses Array of active RWA token addresses
     * @return vaultDetails Array of corresponding vault details
     */
    function getActiveVaults()
        external
        view
        returns (address[] memory rwaAddresses, DataTypes.Vaults[] memory vaultDetails)
    {
        Storage storage $ = _getStorage();
        uint256 length = $.registeredRWAs.length();

        // Pre-allocate maximum possible size arrays
        address[] memory tempAddresses = new address[](length);
        DataTypes.Vaults[] memory tempDetails = new DataTypes.Vaults[](length);

        // Single pass to collect active vaults
        uint256 activeCount = 0;
        for (uint256 i = 0; i < length; i++) {
            address rwa = $.registeredRWAs.at(i);
            if ($.vaults[rwa].isActive) {
                tempAddresses[activeCount] = rwa;
                tempDetails[activeCount] = $.vaults[rwa];
                activeCount++;
            }
        }

        // Create properly sized result arrays
        rwaAddresses = new address[](activeCount);
        vaultDetails = new DataTypes.Vaults[](activeCount);

        // Copy only the active entries
        for (uint256 i = 0; i < activeCount; i++) {
            rwaAddresses[i] = tempAddresses[i];
            vaultDetails[i] = tempDetails[i];
        }

        return (rwaAddresses, vaultDetails);
    }

    /**
     * @notice Gets subvault address for a collateral asset
     * @dev Reverts if subvault is not active
     * @param rwaAddress Address of the RWA token
     * @return vaultAddress Address of the corresponding vault
     */
    function getVaultAddress(address rwaAddress) external view returns (address) {
        return _getStorage().vaults[rwaAddress].vaultAddress;
    }

    /**
     * @notice Gets all details for a collateral asset's vault
     * @dev Returns full vault configuration details
     * @param rwaAddress Address of the RWA token
     * @return Full vault configuration details
     */
    function getVaultDetails(address rwaAddress) external view returns (DataTypes.Vaults memory) {
        return _getStorage().vaults[rwaAddress];
    }

    /**
     * @notice Gets all registered RWA addresses
     * @dev Converts EnumerableSet to array
     * @return Array of registered RWA addresses
     */
    function getRegisteredRWAs() external view returns (address[] memory) {
        Storage storage $ = _getStorage();
        uint256 length = $.registeredRWAs.length();

        address[] memory result = new address[](length);
        for (uint256 i = 0; i < length; i++) {
            result[i] = $.registeredRWAs.at(i);
        }

        return result;
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}
}
