// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.30;

import {AccessControl} from "../common/access-control/AccessControl.sol";
import {IAccessControl} from "../common/access-control/interfaces/IAccessControl.sol";
import {StorageSlot} from "../common/libraries/StorageSlot.sol";
import {IBeacon} from "../common/interfaces/IBeacon.sol";
import {ContractType} from "../common/types/ContractType.sol";
import {IERC165} from "../common/interfaces/IERC165.sol";
import {IERC20WithRoles} from "../tokens/interfaces/erc20/IERC20WithRoles.sol";
import {IERC721TokenInit} from "../tokens/interfaces/erc721/IERC721TokenInit.sol";
import {IERC721SoulboundTokenInit} from "../tokens/interfaces/erc721Soulbound/IERC721SoulboundTokenInit.sol";
import {IOracleInit} from "../oracles/interfaces/IOracleInit.sol";

/**
 * @title Beacon
 * @author Mohammad Salim, WisdomTree Digital Assets
 * @notice Implementation of the Beacon contract to manage implementation addresses for proxy upgrades
 * @dev This contract serves as a beacon that stores implementation addresses for upgradeable proxy contracts.
 * It provides a centralized way to manage upgrades across multiple proxy instances. The beacon validates interface compatibility when upgrading implementations.
 * @custom:security-contact security@wisdomtree.com
 */
contract Beacon is IBeacon, IERC165, AccessControl {
    using StorageSlot for StorageSlot.AddressSlot;
    using StorageSlot for StorageSlot.Uint256Slot;
    using StorageSlot for StorageSlot.StringSlot;

    /// @notice The slot for the implementation address.
    bytes32 internal constant _IMPLEMENTATION_SLOT = keccak256("beacon.implementation");

    /// @notice The slot for the beacon name.
    bytes32 internal constant _BEACON_NAME_SLOT = keccak256("beacon.name");

    /// @notice The slot for the contract type.
    bytes32 internal constant _CONTRACT_TYPE_SLOT = keccak256("beacon.contract.type");

    /**
     * @dev Emitted when the beacon implementation is upgraded.
     * @param implementation The new implementation address.
     */
    event BeaconUpgraded(address indexed implementation);

    /**
     * @dev Indicates that the caller is not authorized to perform an admin operation.
     * @param caller Address attempting the admin operation.
     */
    error BeaconUnauthorizedCaller(address caller);

    /**
     * @dev Indicates an attempt to set an invalid implementation address.
     * @param implementation The invalid implementation address.
     */
    error BeaconInvalidImplementation(address implementation);

    /**
     * @dev Indicates that the implementation does not support required interfaces.
     * @param implementation The implementation address that failed interface validation.
     */
    error BeaconInvalidInterface(address implementation);

    /**
     * @dev Indicates that the contract type is not supported.
     * @param contractType The unsupported contract type value.
     */
    error BeaconUnsupportedContractType(uint8 contractType);

    /**
     * @dev Modifier to ensure the caller is an admin.
     * @notice The caller must have the DEFAULT_ADMIN_ROLE.
     */
    modifier onlyAdmin() {
        if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert BeaconUnauthorizedCaller(msg.sender);
        }
        _;
    }

    /**
     * @dev Constructor to initialize the beacon with an implementation address, owner, name, and contract type.
     * @param implementation_ The implementation address.
     * @param owner_ The owner address.
     * @param name_ The name for this beacon/logic pair.
     * @param contractType_ The contract type (1=ERC20Token, 2=ERC721Token, 3=ERC721SoulboundToken, 4=WhitelistComplianceOracle). NONE (0) is not allowed.
     */
    constructor(address implementation_, address owner_, string memory name_, ContractType contractType_) {
        // Validate contract type is supported by checking against known enum values (NONE is explicitly not allowed)
        if (contractType_ == ContractType.NONE ||
            (contractType_ != ContractType.ERC20Token && 
             contractType_ != ContractType.ERC721Token && 
             contractType_ != ContractType.ERC721SoulboundToken && 
             contractType_ != ContractType.WhitelistComplianceOracle)) {
            revert BeaconUnsupportedContractType(uint8(contractType_));
        }
        
        _setBeaconName(name_);
        _setContractType(contractType_);
        _setImplementation(implementation_);
        _grantRole(DEFAULT_ADMIN_ROLE, owner_);
    }

    /**
     * @notice Checks if the contract implements the specified interface
     * @dev Uses ERC-165 standard for interface detection
     * @param interfaceId The interface identifier to check
     * @return bool True if the contract implements the interface, false otherwise
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IBeacon).interfaceId || 
               interfaceId == type(IERC165).interfaceId ||
               interfaceId == type(IAccessControl).interfaceId;
    }

    /**
     * @notice Upgrades the beacon implementation to a new address
     * @dev Can only be called by addresses with admin role. Validates interface compatibility
     * @param newImplementation The address of the new implementation contract
     * 
     * Emits a {BeaconUpgraded} event.
     * 
     * Requirements:
     * - Caller must have admin role
     * - New implementation cannot be zero address
     * - New implementation must support required interfaces
     */
    function upgradeTo(address newImplementation) external onlyAdmin {
        _setImplementation(newImplementation);
    }

    /**
     * @notice Updates the beacon name for identification purposes
     * @dev Can only be called by addresses with admin role
     * @param newName The new name to assign to this beacon
     * 
     * Requirements:
     * - Caller must have admin role
     */
    function updateName(string calldata newName) external onlyAdmin {
        _setBeaconName(newName);
    }

    /**
     * @notice Returns the current implementation address
     * @dev This is the core function that proxies call to get the implementation
     * @return The address of the current implementation contract
     */
    function implementation() external view returns (address) {
        return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @notice Returns the beacon name for identification
     * @dev Useful for distinguishing between different beacon instances
     * @return The name assigned to this beacon
     */
    function name() external view returns (string memory) {
        return StorageSlot.getStringSlot(_BEACON_NAME_SLOT).value;
    }

    /**
     * @notice Returns the contract type this beacon manages
     * @dev Contract type determines which interfaces are required for implementations
     * @return ContractType The contract type enum (NONE, ERC20Token, ERC721Token, ERC721SoulboundToken, WhitelistComplianceOracle)
     */
    function contractType() external view returns (ContractType) {
        return ContractType(StorageSlot.getUint256Slot(_CONTRACT_TYPE_SLOT).value);
    }

    /**
     * @dev Internal function to set the implementation address with interface validation.
     * @param newImplementation The new implementation address.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation == address(0)) {
            revert BeaconInvalidImplementation(newImplementation);
        }

        // Validate that the implementation supports required interfaces
        if (!_validateImplementationInterface(newImplementation)) {
            revert BeaconInvalidInterface(newImplementation);
        }

        // Update storage
        StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
        
        emit BeaconUpgraded(newImplementation);
    }

    /**
     * @dev Internal function to set the beacon name.
     * @param name_ The beacon name.
     */
    function _setBeaconName(string memory name_) private {
        StorageSlot.getStringSlot(_BEACON_NAME_SLOT).value = name_;
    }

    /**
     * @dev Internal function to set the contract type.
     * @param contractType_ The contract type.
     */
    function _setContractType(ContractType contractType_) private {
        StorageSlot.getUint256Slot(_CONTRACT_TYPE_SLOT).value = uint256(contractType_);
    }

    /**
     * @dev Internal function to validate implementation interface support.
     * @param implementationAddr The implementation address to validate.
     * @return bool True if the implementation supports required interfaces.
     * 
     * @notice Due to intentional interface compatibility in the token system, fine-grained type validation
     * between IERC721Token and IERC721SoulboundToken is limited. Both implementations support the same
     * initialization interface IDs. This provides basic validation but allows compatible cross-type upgrades.
     */
    function _validateImplementationInterface(address implementationAddr) private view returns (bool) {
        // For upgrades, validate that the implementation has code
        if (implementationAddr.code.length == 0) {
            return false;
        }

        // Get the expected contract type for this beacon
        ContractType expectedType = ContractType(StorageSlot.getUint256Slot(_CONTRACT_TYPE_SLOT).value);
        
        // Reject NONE type explicitly
        if (expectedType == ContractType.NONE) {
            return false;
        }
        
        // Validate interface support based on contract type with try-catch for robustness
        if (expectedType == ContractType.ERC20Token) {
            // Use IERC20WithRoles which has a unique interface ID
            try IERC165(implementationAddr).supportsInterface(type(IERC20WithRoles).interfaceId) returns (bool supported) {
                return supported;
            } catch {
                // If the call fails, assume the implementation doesn't support ERC165 properly
                return false;
            }
        } else if (expectedType == ContractType.ERC721Token) {
            // For IERC721Token: must support IERC721TokenInit interface
            try IERC165(implementationAddr).supportsInterface(type(IERC721TokenInit).interfaceId) returns (bool supported) {
                return supported;
            } catch {
                return false;
            }
        } else if (expectedType == ContractType.ERC721SoulboundToken) {
            // For IERC721SoulboundToken: must support IERC721SoulboundTokenInit interface
            // Note: This has the same interface ID as IERC721TokenInit due to compatible design
            try IERC165(implementationAddr).supportsInterface(type(IERC721SoulboundTokenInit).interfaceId) returns (bool supported) {
                return supported;
            } catch {
                return false;
            }
        } else if (expectedType == ContractType.WhitelistComplianceOracle) {
            // Use IOracleInit which has a unique interface ID
            try IERC165(implementationAddr).supportsInterface(type(IOracleInit).interfaceId) returns (bool supported) {
                return supported;
            } catch {
                return false;
            }
        }       
        // If we reach here, the contract type is not supported
        return false;
    }
}
