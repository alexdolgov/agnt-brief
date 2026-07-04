// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/access/AccessControlUpgradeable.sol";

/**
 * @dev This interface exists for Magic Eden collection ownership support.
 * It provides standard ownership functionality for collections on the Magic Eden marketplace.
 */
abstract contract AccessControlOwnable is AccessControlUpgradeable {
    error OwnerCannotBeZeroAddress();
    error NotSupported();
    error AtLeastOneAdminRequired();
    error OwnerMustHaveAdminRole(address owner);

    /**
     * @dev Emitted when ownership is transferred.
     */
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Storage structure for Ownable data.
     * Contains the owner address.
     */
    /// @custom:storage-location erc7201:doma.storage.Ownable
    struct OwnableStorage {
        address owner;
        address[] admins;
    }

    // Storage slot for Ownable storage
    bytes32 private constant _OWNABLE_STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256(bytes("doma.storage.Ownable"))) - 1)) &
            ~bytes32(uint256(0xff));

    /// @notice Returns the address of the current owner
    /// @return The owner address
    function owner() public view virtual returns (address) {
        return _ownableStorage().owner;
    }

    /// @notice Renounces ownership (not supported - always reverts)
    /// @dev Kept for compatibility with OpenZeppelin's Ownable
    function renounceOwnership() public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        revert NotSupported();
    }

    /// @notice Transfers ownership to a new owner (admin role only)
    /// @dev New owner must have the DEFAULT_ADMIN_ROLE
    /// @param newOwner Address of the new owner
    function transferOwnership(address newOwner) public virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!hasRole(DEFAULT_ADMIN_ROLE, newOwner)) {
            revert OwnerMustHaveAdminRole(newOwner);
        }

        OwnableStorage storage s = _ownableStorage();
        emit OwnershipTransferred(s.owner, newOwner);
        s.owner = newOwner;
    }

    /**
     * @dev Returns the storage struct for Ownable
     */
    function _ownableStorage() internal pure returns (OwnableStorage storage storageStruct) {
        bytes32 slot = _OWNABLE_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            storageStruct.slot := slot
        }
    }

    function _grantRole(bytes32 role, address account) internal virtual override {
        super._grantRole(role, account);

        if (role == DEFAULT_ADMIN_ROLE) {
            OwnableStorage storage s = _ownableStorage();

            if (s.owner == address(0)) {
                s.owner = account;
                emit OwnershipTransferred(address(0), account);
            }

            bool isAdminAlreadyExists = false;
            for (uint256 i = 0; i < s.admins.length; i++) {
                if (s.admins[i] == account) {
                    isAdminAlreadyExists = true;
                    break;
                }
            }

            if (!isAdminAlreadyExists) {
                s.admins.push(account);
            }
        }
    }

    function _revokeRole(bytes32 role, address account) internal virtual override {
        super._revokeRole(role, account);

        if (role == DEFAULT_ADMIN_ROLE) {
            OwnableStorage storage s = _ownableStorage();
            if (s.admins.length <= 1) {
                revert AtLeastOneAdminRequired();
            }

            for (uint256 i = 0; i < s.admins.length; i++) {
                if (s.admins[i] == account) {
                    // Move the last element into the place to delete and pop
                    s.admins[i] = s.admins[s.admins.length - 1];
                    s.admins.pop();

                    break;
                }
            }

            if (s.owner == account) {
                // If the owner is being revoked, set the first admin as the new owner
                address newAdmin = s.admins[0];
                s.owner = newAdmin;
                emit OwnershipTransferred(account, newAdmin);
            }
        }
    }
}
