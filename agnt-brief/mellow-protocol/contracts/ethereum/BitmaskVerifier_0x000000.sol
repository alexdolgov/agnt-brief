// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (access/IAccessControl.sol)

pragma solidity ^0.8.20;

/**
 * @dev External interface of AccessControl declared to support ERC-165 detection.
 */
interface IAccessControl {
    /**
     * @dev The `account` is missing a role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);

    /**
     * @dev The caller of a function is not the expected one.
     *
     * NOTE: Don't confuse with {AccessControlUnauthorizedAccount}.
     */
    error AccessControlBadConfirmation();

    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted to signal this.
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call. This account bears the admin role (for the granted role).
     * Expected in cases where the role was granted using the internal {AccessControl-_grantRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// ============================================================
// FILE: src/interfaces/permissions/ICustomVerifier.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

/// @notice Interface for external/custom verification logic
/// @dev Allows plug-in modules to define arbitrary logic for verifying function calls.
///      Used with `VerificationType.CUSTOM_VERIFIER` in the main Verifier contract.
interface ICustomVerifier {
    /// @notice Verifies whether the given call is permitted using custom logic
    /// @param who               Address attempting the call
    /// @param where             Target contract the call is directed to
    /// @param value             ETH value sent with the call
    /// @param callData          Full calldata of the intended call
    /// @param verificationData  Extra data provided by the caller to support verification logic
    /// @return isValid          True if the call is considered valid, false otherwise
    function verifyCall(
        address who,
        address where,
        uint256 value,
        bytes calldata callData,
        bytes calldata verificationData
    ) external view returns (bool);
}

// ============================================================
// FILE: src/permissions/BitmaskVerifier.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import "../interfaces/permissions/ICustomVerifier.sol";
import "@openzeppelin/contracts/access/IAccessControl.sol";

/// @title BitmaskVerifier
/// @notice Verifier contract implementing selective calldata hashing using bitmasking rules.
/// @dev Enables flexible permissioning by allowing dynamic verification of transaction intent through partial data matching.
contract BitmaskVerifier is ICustomVerifier {
    /// @notice Computes a hash of a call using selective masking over its fields.
    /// @dev The hash is computed in the following sequence:
    /// 1. Hashing `who` using `bitmask[0:32]`
    /// 2. Hashing `where` using `bitmask[32:64]`
    /// 3. Hashing `value` using `bitmask[64:96]`
    /// 4. Iteratively hashing each byte of `data` masked with `bitmask[i + 96]`
    ///
    /// This allows whitelisting specific parts of calldata or sender/target/value.
    ///
    /// @param bitmask A byte array encoding which bytes should be included in the hash.
    ///        - [0:32]    Mask for `who` (caller)
    ///        - [32:64]   Mask for `where` (target contract)
    ///        - [64:96]   Mask for `value` (ETH sent)
    ///        - [96:]     Mask for each byte of `data` (calldata)
    /// @param who Caller address.
    /// @param where Target contract address.
    /// @param value ETH value to be sent with the call.
    /// @param data Full calldata of the call.
    /// @return Hash of the masked components using `keccak256`.
    function calculateHash(bytes calldata bitmask, address who, address where, uint256 value, bytes calldata data)
        public
        pure
        returns (bytes32)
    {
        bytes32 hash_;
        hash_ = keccak256(bytes.concat(hash_, bytes32(bitmask[0:32]) & bytes32(bytes20(who))));
        hash_ = keccak256(bytes.concat(hash_, bytes32(bitmask[32:64]) & bytes32(bytes20(where))));
        hash_ = keccak256(bytes.concat(hash_, bytes32(bitmask[64:96]) & bytes32(value)));
        for (uint256 i = 0; i < data.length; i++) {
            hash_ = keccak256(bytes.concat(hash_, (data[i] & bitmask[i + 96])));
        }
        return hash_;
    }

    /// @notice Verifies whether the provided call matches a pre-approved hash using a given bitmask.
    /// @dev The expected hash and bitmask are ABI-encoded in `verificationData`.
    /// - `verificationData = abi.encode(expectedHash, bitmask)`
    /// - Function reverts to false if bitmask length does not match (data.length + 96).
    ///
    /// @param who Caller address of the original call.
    /// @param where Target contract address.
    /// @param value ETH value to be sent.
    /// @param data Calldata for the function call.
    /// @param verificationData ABI-encoded data containing:
    ///        - bytes32 expectedHash
    ///        - bytes bitmask (variable length)
    /// @return True if the calculated masked hash matches the expected hash, false otherwise.
    function verifyCall(address who, address where, uint256 value, bytes calldata data, bytes calldata verificationData)
        public
        pure
        returns (bool)
    {
        bytes32 verificationHash_;
        bytes calldata bitmask;
        assembly {
            verificationHash_ := calldataload(verificationData.offset)
            let temp := add(verificationData.offset, calldataload(add(verificationData.offset, 0x20)))
            bitmask.offset := add(temp, 0x20)
            bitmask.length := calldataload(temp)
        }
        if (data.length + 0x60 != bitmask.length) {
            return false;
        }
        return verificationHash_ == calculateHash(bitmask, who, where, value, data);
    }
}
