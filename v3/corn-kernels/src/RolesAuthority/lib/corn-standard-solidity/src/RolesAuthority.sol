// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.17;

import {Auth, Authority} from "solmate/auth/Auth.sol";
import {EnumerableSet} from "./dependencies/EnumerableSet.sol";
import {IRolesAuthority} from "./interfaces/IRolesAuthority.sol";

/// @notice Role based Authority that supports up to 256 roles.
/// @author BadgerDAO expanded with capability burning and enumeration of role holders and targets
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/authorities/RolesAuthority.sol)
/// @author Modified from Dappsys (https://github.com/dapphub/ds-roles/blob/master/src/roles.sol)
contract RolesAuthority is IRolesAuthority, Auth, Authority {
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using EnumerableSet for EnumerableSet.AddressSet;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner, Authority _authority) Auth(_owner, _authority) {}

    /*//////////////////////////////////////////////////////////////
                            ROLE/USER STORAGE
    //////////////////////////////////////////////////////////////*/

    EnumerableSet.AddressSet internal users;
    EnumerableSet.AddressSet internal targets;
    mapping(address => EnumerableSet.Bytes32Set) internal enabledFunctionSigsByTarget;

    EnumerableSet.Bytes32Set internal enabledFunctionSigsPublic;

    mapping(address => bytes32) public getUserRoles;

    mapping(address => mapping(bytes4 => CapabilityFlag)) public capabilityFlag;

    mapping(address => mapping(bytes4 => bytes32)) public getRolesWithCapability;

    /// @notice Checks if a user has a specific role.
    /// @param user The address of the user to check.
    /// @param role The role to check for.
    /// @return bool True if the user has the role, false otherwise.
    function doesUserHaveRole(address user, uint8 role) public view virtual returns (bool) {
        return (uint256(getUserRoles[user]) >> role) & 1 != 0;
    }

    /// @notice Checks if a role has the capability to call a specific function on a target contract.
    /// @param role The role to check the capability for.
    /// @param target The address of the target contract.
    /// @param functionSig The function signature to check the capability for.
    /// @return bool True if the role has the capability, false otherwise.
    function doesRoleHaveCapability(uint8 role, address target, bytes4 functionSig)
        public
        view
        virtual
        returns (bool)
    {
        return (uint256(getRolesWithCapability[target][functionSig]) >> role) & 1 != 0;
    }

    /// @notice Checks if a function on a target contract is publicly accessible.
    /// @param target The address of the target contract.
    /// @param functionSig The function signature to check.
    /// @return bool True if the function is public, false otherwise.
    function isPublicCapability(address target, bytes4 functionSig) public view returns (bool) {
        return capabilityFlag[target][functionSig] == CapabilityFlag.Public;
    }

    /*//////////////////////////////////////////////////////////////
                           AUTHORIZATION LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @notice Checks if a user has the authorization to call a specific function on a target contract.
    /// @notice Authorization is granted if the function's capability is set to public, or if the user possesses a role with the required capability, provided the capability has not been burned.
    /// @param user The address of the user attempting to call the function.
    /// @param target The address of the contract containing the function.
    /// @param functionSig The function signature being called.
    /// @return bool Returns true if the user is authorized to call the function, false otherwise.
    function canCall(address user, address target, bytes4 functionSig) public view virtual override returns (bool) {
        CapabilityFlag flag = capabilityFlag[target][functionSig];

        if (flag == CapabilityFlag.Burned) {
            return false;
        } else if (flag == CapabilityFlag.Public) {
            return true;
        } else {
            return bytes32(0) != getUserRoles[user] & getRolesWithCapability[target][functionSig];
        }
    }

    /*//////////////////////////////////////////////////////////////
                   ROLE CAPABILITY CONFIGURATION LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @notice Enables or disables public access to a specific function signature on a target contract.
    /// @dev Checks to ensure the capability has not been previously burned before allowing modification.
    /// @param target The contract address whose function signature's capability is being modified.
    /// @param functionSig The function signature whose capability flag is being set.
    /// @param enabled A boolean indicating whether to enable (true) or disable (false) public access.
    function setPublicCapability(address target, bytes4 functionSig, bool enabled) public virtual requiresAuth {
        require(capabilityFlag[target][functionSig] != CapabilityFlag.Burned, "RolesAuthority: Capability Burned");

        if (enabled) {
            capabilityFlag[target][functionSig] = CapabilityFlag.Public;
        } else {
            capabilityFlag[target][functionSig] = CapabilityFlag.None;
        }

        emit PublicCapabilityUpdated(target, functionSig, enabled);
    }

    /// @notice Grants or revokes a specified role's ability to call a function on a target.
    /// @notice If the capability is already public or has been burned, this function will have no effect.
    /// @param role The role ID to update the capability for.
    /// @param target The address of the contract where the function signature resides.
    /// @param functionSig The function signature to update the capability for.
    /// @param enabled True to grant the capability, false to revoke it.
    function setRoleCapability(uint8 role, address target, bytes4 functionSig, bool enabled)
        public
        virtual
        requiresAuth
    {
        if (enabled) {
            // Grant the role the capability to call the function signature on the target.
            getRolesWithCapability[target][functionSig] |= bytes32(1 << role);
            enabledFunctionSigsByTarget[target].add(bytes32(functionSig));

            if (!targets.contains(target)) {
                targets.add(target);
            }
        } else {
            // Revoke the role's capability to call the function signature on the target.
            getRolesWithCapability[target][functionSig] &= ~bytes32(1 << role);

            // If no roles are left with the capability to call the function signature, remove it from the list of enabled function signatures for the target.
            if (getRolesWithCapability[target][functionSig] == bytes32(0)) {
                enabledFunctionSigsByTarget[target].remove(bytes32(functionSig));
            }

            // If no function signatures are left enabled for the target, remove the target.
            if (enabledFunctionSigsByTarget[target].length() == 0) {
                targets.remove(target);
            }
        }

        emit RoleCapabilityUpdated(role, target, functionSig, enabled);
    }

    /// @notice Permanently burns a capability for a target, preventing it from being called in the future.
    /// @dev Intended for use to renounce a capability of a governance entity.
    /// @param target The address of the contract where the capability is being burned.
    /// @param functionSig The function signature of the capability being burned.
    function burnCapability(address target, bytes4 functionSig) public virtual requiresAuth {
        require(capabilityFlag[target][functionSig] != CapabilityFlag.Burned, "RolesAuthority: Capability Burned");
        capabilityFlag[target][functionSig] = CapabilityFlag.Burned;

        emit CapabilityBurned(target, functionSig);
    }

    /*//////////////////////////////////////////////////////////////
                       USER ROLE ASSIGNMENT LOGIC
    //////////////////////////////////////////////////////////////*/
    /// @notice Assigns or removes a role for an address.
    /// @param user The address of the user to assign/remove the role to/from.
    /// @param role The role ID to assign/remove.
    /// @param enabled True to assign the role, false to remove it.
    function setUserRole(address user, uint8 role, bool enabled) public virtual requiresAuth {
        if (enabled) {
            getUserRoles[user] |= bytes32(1 << role);

            if (!users.contains(user)) {
                users.add(user);
            }
        } else {
            getUserRoles[user] &= ~bytes32(1 << role);

            // Remove user if no more roles
            if (getUserRoles[user] == bytes32(0)) {
                users.remove(user);
            }
        }

        emit UserRoleUpdated(user, role, enabled);
    }
}
