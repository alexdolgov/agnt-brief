// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import '../interfaces/access/IRegistry.sol';
import '../interfaces/errors/ISystemErrors.sol';
import '../interfaces/events/ISystemEvents.sol';

/**
 * @title Registry Contract
 * @author ZeUSD Protocol Team
 * @notice Core registry for managing protocol contract addresses and versions
 * @dev Implements UUPS upgradeable pattern and ERC7201 storage pattern
 *
 * This contract serves as the central registry for the ZeUSD protocol, tracking
 * all contract addresses, versions, and update history. It acts as a source of truth
 * for the protocol's components.
 *
 * Key Features:
 * - Contract version management - tracks versioning for all protocol components
 * - Access controlled updates - ensures only authorized roles can modify registry
 * - Contract status tracking - maintains update history with timestamps
 * - ERC7201 compliant storage - isolated storage pattern for upgradeable contracts
 *
 * Architecture:
 * - Registry uses a mapping of bytes32 IDs to ContractInfo structures
 * - Each ContractInfo contains address, version, and timestamp data
 * - Updates are permissioned through the AccessManager integration
 * - Follows the UUPS (Universal Upgradeable Proxy Standard) for upgradeability
 *
 * Security Considerations:
 * - Only roles with appropriate permissions can register/update contracts
 * - Protected upgrade mechanism through access control
 * - Version control to prevent downgrades and track history
 * - Storage isolation to prevent storage collision in upgrades
 *
 * @custom:security-contact tech@zoth.io
 */
contract Registry is
    IRegistry,
    ISystemErrors,
    ISystemEvents,
    AccessManagedUpgradeable,
    UUPSUpgradeable
{
    /**
     * @dev ERC7201 storage pattern for registry data
     * @custom:storage-location erc7201:registry.storage
     */
    struct RegistryStorage {
        /// @notice Maps contract ID to contract info
        mapping(bytes32 => ContractInfo) contracts;
    }

    /**
     * @notice Contract information structure
     * @dev Stores contract details and metadata for each registered component
     * @param addr Contract address - location of the deployed implementation
     * @param version Contract version - numeric version identifier
     * @param lastUpdated Last update timestamp - Unix timestamp of last modification
     */
    struct ContractInfo {
        address addr;
        uint256 version;
        uint256 lastUpdated;
    }

    /**
     * @dev Storage location constant derived from ERC7201 specification
     * Computed as: keccak256(abi.encode(uint256(keccak256("zeusd.registry.storage")) - 1)) & ~bytes32(uint256(0xff))
     */
    bytes32 private constant STORAGE_LOCATION =
        0x38c507d038a917f65443573dbf54b12f4be51c6586ac9316374820df72271500;

    /**
     * @dev Gets storage pointer using ERC7201 pattern
     * @return $ Storage pointer to RegistryStorage
     */
    function _getStorage() private pure returns (RegistryStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }

    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the registry
     * @dev Sets up access control and initial state for the upgradeable contract
     * @param _accessManager Address of the AccessManager contract that will govern this registry
     * @custom:security Validates access manager address to prevent null address initialization
     */
    function initialize(address _accessManager) external initializer {
        if (_accessManager == address(0)) revert InvalidAddressError(address(0));

        __UUPSUpgradeable_init();
        __AccessManaged_init(_accessManager);
    }

    /**
     * @notice Gets the access manager interface
     * @dev Provides a type-safe interface to the access manager
     * @return The access manager contract instance with full interface
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Registers a new contract in the registry
     * @dev Adds a new contract entry with address, version and current timestamp
     * @param id Contract identifier - unique bytes32 identifier for the contract
     * @param addr Contract address - address of the implementation contract
     * @param version Contract version - must be greater than zero
     * @custom:security Only callable by accounts with GATEKEEPER_ROLE
     * @custom:emits ContractRegistered when registration is successful
     */
    function registerContract(
        bytes32 id,
        address addr,
        uint256 version
    ) external override restricted {
        if (addr == address(0)) revert InvalidAddressError(addr);
        if (version == 0) revert InvalidVersionError(1, 0);

        RegistryStorage storage $ = _getStorage();
        if ($.contracts[id].addr != address(0)) revert ContractExistsError(id);

        $.contracts[id] = ContractInfo({
            addr: addr,
            version: version,
            lastUpdated: block.timestamp
        });

        emit SystemContractRegistered(id, addr, version);
    }

    /**
     * @notice Updates an existing contract version in the registry
     * @dev Modifies an existing contract entry with new version number
     * @param id Contract identifier - must exist in the registry
     * @param newVersion New contract version - must be greater than current version
     * @custom:security Only callable by accounts with GATEKEEPER_ROLE
     * @custom:emits SystemContractVersionUpdated when update is successful
     */
    function updateContract(bytes32 id, uint256 newVersion) external override restricted {
        if (newVersion == 0) revert InvalidVersionError(1, 0);

        RegistryStorage storage $ = _getStorage();
        ContractInfo storage contractInfo = $.contracts[id];
        if (contractInfo.addr == address(0)) revert ContractNotFoundError(id);

        uint256 currentVersion = contractInfo.version;
        if (newVersion <= currentVersion)
            revert InvalidVersionError(currentVersion + 1, newVersion);

        contractInfo.version = newVersion;
        contractInfo.lastUpdated = block.timestamp;

        emit SystemContractVersionUpdated(id, currentVersion, newVersion);
    }

    /**
     * @notice Removes a contract from the registry
     * @dev Deletes a contract entry from the registry storage
     * @param id Contract identifier - must exist in the registry
     * @custom:security Only callable by accounts with GATEKEEPER_ROLE
     * @custom:emits SystemContractRemoved when removal is successful
     */
    function removeContract(bytes32 id) external override restricted {
        RegistryStorage storage $ = _getStorage();
        ContractInfo storage contractInfo = $.contracts[id];
        if (contractInfo.addr == address(0)) revert ContractNotFoundError(id);

        address removedAddr = contractInfo.addr;
        uint256 removedVersion = contractInfo.version;

        delete $.contracts[id];

        emit SystemContractRemoved(id, removedAddr, removedVersion);
    }

    /**
     * @notice Gets contract address for a given identifier
     * @dev Returns just the address for lightweight queries
     * @param id Contract identifier to look up
     * @return addr Contract address if found
     * @custom:security No access control required, public view function
     */
    function getContract(bytes32 id) external view override returns (address addr) {
        ContractInfo storage contractInfo = _getStorage().contracts[id];
        if (contractInfo.addr == address(0)) revert ContractNotFoundError(id);
        return contractInfo.addr;
    }

    /**
     * @notice Gets the version number for a given contract identifier
     * @dev Returns the current version of the contract
     * @param id Contract identifier to look up
     * @return version Current version of the contract
     */
    function lastVersion(bytes32 id) external view override returns (uint256 version) {
        ContractInfo storage contractInfo = _getStorage().contracts[id];
        if (contractInfo.addr == address(0)) revert ContractNotFoundError(id);
        return contractInfo.version;
    }

    /**
     * @notice Gets complete contract information for a given identifier
     * @dev Returns the address and version for the contract
     * @param id Contract identifier to look up
     * @return addr Contract address
     * @return version Contract version number
     * @custom:security No access control required, public view function
     */
    function getContractInfo(
        bytes32 id
    ) external view override returns (address addr, uint256 version) {
        ContractInfo storage contractInfo = _getStorage().contracts[id];
        if (contractInfo.addr == address(0)) revert ContractNotFoundError(id);

        return (contractInfo.addr, contractInfo.version);
    }

    /**
     * @notice Authorizes contract upgrades through UUPS pattern
     * @dev Internal function that enforces access control for upgrades
     * @param newImplementation Address of the new implementation contract
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}
}
