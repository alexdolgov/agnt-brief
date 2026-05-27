// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {UUPSUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {IGatewayAccessControl} from "src/interfaces/IGatewayAccessControl.sol";
import "src/utils/Constant.sol";

abstract contract LibreUUPSUpgradeable is UUPSUpgradeable {
    struct LibreUUPSUpgradeableStorage {
        IGatewayAccessControl gatewayAccessControl;
    }

    // keccak256(abi.encode(uint256(keccak256("LibreUUPSUpgradeable.storage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant LIBRE_UUPS_UPGRADEABLE_STORAGE_SLOT =
        0xcdbb07bfbe9691010bcc707118fc6e0295327dd3cad2d2cfe1e7cd4f1b0be700;

    /**
     * @notice Initializes Libre UUPS Upgradeable contract
     * @param _gatewayAccessControl Address of gateway access control contract
     */
    function __LibreUUPSUpgradeable_init(address _gatewayAccessControl) internal onlyInitializing {
        __UUPSUpgradeable_init();
        LibreUUPSUpgradeableStorage storage luus = _getLibreUUPSUpgradeableStorage();
        luus.gatewayAccessControl = IGatewayAccessControl(_gatewayAccessControl);
    }

    /**
     * @notice Retrieves gateway access control address
     * @return The address of gateway access control
     */
    function gatewayAccessControl() external view returns (address) {
        LibreUUPSUpgradeableStorage storage luus = _getLibreUUPSUpgradeableStorage();
        return address(luus.gatewayAccessControl);
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account` is missing `role`.
     * @param role Expected role
     * @param account Address of the account
     */
    function _checkRole(bytes32 role, address account) internal view {
        LibreUUPSUpgradeableStorage storage luus = _getLibreUUPSUpgradeableStorage();
        luus.gatewayAccessControl.checkRole(role, account);
    }

    /**
     * @notice Checks the role granted to an account.
     * @param role The role to be checked
     * @param account The address of the account to be checked
     * @return bool Returns `true` if `account` has been granted `role`
     */
    function _hasRole(bytes32 role, address account) internal view returns (bool) {
        LibreUUPSUpgradeableStorage storage luus = _getLibreUUPSUpgradeableStorage();
        return luus.gatewayAccessControl.hasRoleAccess(role, account);
    }

    /**
     * @notice Internal function to authorize an upgrade
     * @dev Only ADMIN_ROLE holder can update the implementation
     */
    function _authorizeUpgrade(address) internal view virtual override {
        _checkRole(ADMIN_ROLE, msg.sender);
    }

    /**
     * @notice Retrieves the storage slot for the `LibreUUPSUpgradeableStorage` structure.
     * @return luus A reference to the `LibreUUPSUpgradeableStorage` located at the predefined storage slot.
     */
    function _getLibreUUPSUpgradeableStorage() internal pure returns (LibreUUPSUpgradeableStorage storage luus) {
        assembly {
            luus.slot := LIBRE_UUPS_UPGRADEABLE_STORAGE_SLOT
        }
    }
}
