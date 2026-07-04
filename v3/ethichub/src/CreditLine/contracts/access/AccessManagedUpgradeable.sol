// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {DEFAULT_ADMIN_ROLE} from "../Roles.sol";

abstract contract AccessManagedUpgradeable is Initializable {
    /// @custom:storage-location erc7201:ethichub.storage.AccessManagedUpgradeable
    struct AccessManagedUpgradeableStorage {
        IAccessControl _accessControl;
    }

    bytes32 private constant STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256("ethichub.storage.AccessManagedUpgradeable")) - 1)) & ~bytes32(uint256(0xff));

    function _getAccessManagedUpgradeableStorage() private pure returns (AccessManagedUpgradeableStorage storage $) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }

    event AccessManagerUpdated(address indexed newAddressManager);

    error MissingRole();
    error IsNotAccessControl();

    modifier onlyRole(bytes32 role) {
        if (!_hasRole(role, msg.sender)) revert MissingRole();
        _;
    }

    function __AccessManaged_init(address manager) internal initializer {
        AccessManagedUpgradeableStorage storage $ = _getAccessManagedUpgradeableStorage();
        if (!IERC165(manager).supportsInterface(type(IAccessControl).interfaceId)) revert IsNotAccessControl();
        $._accessControl = IAccessControl(manager);
        emit AccessManagerUpdated(manager);
    }

    function setAccessManager(
        address newManager
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        AccessManagedUpgradeableStorage storage $ = _getAccessManagedUpgradeableStorage();
        $._accessControl = IAccessControl(newManager);
        emit AccessManagerUpdated(newManager);
    }

    function _hasRole(
        bytes32 role,
        address account
    ) internal view returns (bool) {
        AccessManagedUpgradeableStorage storage $ = _getAccessManagedUpgradeableStorage();
        return $._accessControl.hasRole(role, account);
    }

    function _grantRole(bytes32 role, address account) internal {
        AccessManagedUpgradeableStorage storage $ = _getAccessManagedUpgradeableStorage();
        $._accessControl.grantRole(role, account);
    }

    function _revokeRole(bytes32 role, address account) internal {
        AccessManagedUpgradeableStorage storage $ = _getAccessManagedUpgradeableStorage();
        $._accessControl.revokeRole(role, account);
    }
}
