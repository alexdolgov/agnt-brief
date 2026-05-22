// SPDX-License-Identifier: UNLICENSED
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.24;

import {AccessControlDefaultAdminRulesUpgradeable} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title XSYBaseContract
 * @dev This is an abstract contract that implements the features that should be common to all contracts in the
 * project.
 */
abstract contract XSYBaseContract is Initializable, AccessControlDefaultAdminRulesUpgradeable, UUPSUpgradeable {
    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/upgrades-plugins/writing-upgradeable#storage-gaps
     */
    uint256[20] private __gap;

    error InvalidRoleAddress(address, bytes32 role);

    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event NewImplementation(address indexed implementation);

    /**
     * @custom:oz-upgrades-unsafe-allow constructor
     * @dev Security measure to guard against attacks. See
     * https://docs.openzeppelin.com/upgrades-plugins/1.x/writing-upgradeable#initializing_the_implementation_contract
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev acts as a constructor for upgradeable contracts since constructors are not supported for them.
     * @dev inheriting contracts must implement an initialize function and call this function from it.
     * @param defaultAdmin Account that will be granted the DEFAULT_ADMIN_ROLE, which manages all access roles.
     */
    function __XSYBaseContract_init(address defaultAdmin) internal onlyInitializing {
        if (defaultAdmin == address(0)) {
            revert InvalidRoleAddress(defaultAdmin, DEFAULT_ADMIN_ROLE);
        }
        __AccessControlDefaultAdminRules_init(0, defaultAdmin);
        __UUPSUpgradeable_init();
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    /**
     * @dev used by the upgrade mechanism to authorize upgrades
     * @param newImplementation address of the implementation to be upgraded to
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {
        emit NewImplementation(newImplementation);
    }
}
