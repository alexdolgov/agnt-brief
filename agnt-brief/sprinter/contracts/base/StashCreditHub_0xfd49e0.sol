// ============================================================
// FILE: npm/@openzeppelin/contracts-upgradeable@5.6.1/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {ERC165Upgradeable} from "../utils/introspection/ERC165Upgradeable.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControl, ERC165Upgradeable {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;


    /// @custom:storage-location erc7201:openzeppelin.storage.AccessControl
    struct AccessControlStorage {
        mapping(bytes32 role => RoleData) _roles;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.AccessControl")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AccessControlStorageLocation = 0x02dd7bc7dec4dceedda775e58dd541e08a116c6c53815c0bd028192f7b626800;

    function _getAccessControlStorage() private pure returns (AccessControlStorage storage $) {
        assembly {
            $.slot := AccessControlStorageLocation
        }
    }

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        AccessControlStorage storage $ = _getAccessControlStorage();
        bytes32 previousAdminRole = getRoleAdmin(role);
        $._roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (!hasRole(role, account)) {
            $._roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` from `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (hasRole(role, account)) {
            $._roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts-upgradeable@5.6.1/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts-upgradeable@5.6.1/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165Upgradeable is Initializable, IERC165 {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts-upgradeable@5.6.1/utils/MulticallUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/Multicall.sol)

pragma solidity ^0.8.20;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ContextUpgradeable} from "./ContextUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

/**
 * @dev Provides a function to batch together multiple calls in a single external call.
 *
 * Consider any assumption about calldata validation performed by the sender may be violated if it's not especially
 * careful about sending transactions invoking {multicall}. For example, a relay address that filters function
 * selectors won't filter calls nested within a {multicall} operation.
 *
 * NOTE: Since 5.0.1 and 4.9.4, this contract identifies non-canonical contexts (i.e. `msg.sender` is not {Context-_msgSender}).
 * If a non-canonical context is identified, the following self `delegatecall` appends the last bytes of `msg.data`
 * to the subcall. This makes it safe to use with {ERC2771Context}. Contexts that don't affect the resolution of
 * {Context-_msgSender} are not propagated to subcalls.
 */
abstract contract MulticallUpgradeable is Initializable, ContextUpgradeable {
    function __Multicall_init() internal onlyInitializing {
    }

    function __Multicall_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Receives and executes a batch of function calls on this contract.
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function multicall(bytes[] calldata data) public virtual returns (bytes[] memory results) {
        bytes memory context = msg.sender == _msgSender()
            ? new bytes(0)
            : msg.data[msg.data.length - _contextSuffixLength():];

        results = new bytes[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            results[i] = Address.functionDelegateCall(address(this), bytes.concat(data[i], context));
        }
        return results;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/access/AccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "./IAccessControl.sol";
import {Context} from "../utils/Context.sol";
import {ERC165} from "../utils/introspection/ERC165.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    mapping(bytes32 role => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /// @inheritdoc ERC165
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        return _roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        if (!hasRole(role, account)) {
            _roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` from `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        if (hasRole(role, account)) {
            _roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (access/IAccessControl.sol)

pragma solidity >=0.8.4;

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
// FILE: npm/@openzeppelin/contracts@5.6.1/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (interfaces/draft-IERC6093.sol)

pragma solidity >=0.8.4;

/**
 * @dev Standard ERC-20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC-721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in ERC-721.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC-1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC1271.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1271.sol)

pragma solidity >=0.5.0;

/**
 * @dev Interface of the ERC-1271 standard signature validation method for
 * contracts as defined in https://eips.ethereum.org/EIPS/eip-1271[ERC-1271].
 */
interface IERC1271 {
    /**
     * @dev Should return whether the signature provided is valid for the provided data
     * @param hash      Hash of the data to be signed
     * @param signature Signature byte array associated with `hash`
     */
    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4 magicValue);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC1363.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1363.sol)

pragma solidity >=0.6.2;

import {IERC20} from "./IERC20.sol";
import {IERC165} from "./IERC165.sol";

/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC165.sol)

pragma solidity >=0.4.16;

import {IERC165} from "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC1967.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1967.sol)

pragma solidity >=0.4.11;

/**
 * @dev ERC-1967: Proxy Storage Slots. This interface contains the events defined in the ERC.
 */
interface IERC1967 {
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC20.sol)

pragma solidity >=0.4.16;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (interfaces/IERC4626.sol)

pragma solidity >=0.6.2;

import {IERC20} from "../token/ERC20/IERC20.sol";
import {IERC20Metadata} from "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC-4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Deposit `assets` underlying tokens and send the corresponding number of vault shares (`shares`) to `receiver`.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly `shares` vault shares to `receiver` in exchange for `assets` underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC5267.sol)

pragma solidity >=0.4.16;

interface IERC5267 {
    /**
     * @dev MAY be emitted to signal that the domain could have changed.
     */
    event EIP712DomainChanged();

    /**
     * @dev returns the fields and values that describe the domain separator used by this contract for EIP-712
     * signature.
     */
    function eip712Domain()
        external
        view
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        );
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/interfaces/IERC7913.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC7913.sol)

pragma solidity >=0.5.0;

/**
 * @dev Signature verifier interface.
 */
interface IERC7913SignatureVerifier {
    /**
     * @dev Verifies `signature` as a valid signature of `hash` by `key`.
     *
     * MUST return the bytes4 magic value IERC7913SignatureVerifier.verify.selector if the signature is valid.
     * SHOULD return 0xffffffff or revert if the signature is not valid.
     * SHOULD return 0xffffffff or revert if the key is empty
     */
    function verify(bytes calldata key, bytes32 hash, bytes calldata signature) external view returns (bytes4);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (proxy/beacon/IBeacon.sol)

pragma solidity >=0.4.16;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/ERC1967/ERC1967Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (proxy/ERC1967/ERC1967Proxy.sol)

pragma solidity ^0.8.22;

import {Proxy} from "../Proxy.sol";
import {ERC1967Utils} from "./ERC1967Utils.sol";

/**
 * @dev This contract implements an upgradeable proxy. It is upgradeable because calls are delegated to an
 * implementation address that can be changed. This address is stored in storage in the location specified by
 * https://eips.ethereum.org/EIPS/eip-1967[ERC-1967], so that it doesn't conflict with the storage layout of the
 * implementation behind the proxy.
 */
contract ERC1967Proxy is Proxy {
    /**
     * @dev The proxy is left uninitialized.
     */
    error ERC1967ProxyUninitialized();

    /**
     * @dev Initializes the upgradeable proxy with an initial implementation specified by `implementation`.
     *
     * Provided `_data` is passed in a delegate call to `implementation`. This will typically be an encoded function
     * call, and allows initializing the storage of the proxy like a Solidity constructor. By default construction
     * will fail if `_data` is empty. This behavior can be overridden using a custom {_unsafeAllowUninitialized} that
     * returns true. In that case, empty `_data` is ignored and no delegate call to the implementation is performed
     * during construction.
     *
     * Requirements:
     *
     * - If `data` is empty, `msg.value` must be zero.
     */
    constructor(address implementation, bytes memory _data) payable {
        if (!_unsafeAllowUninitialized() && _data.length == 0) {
            revert ERC1967ProxyUninitialized();
        }
        ERC1967Utils.upgradeToAndCall(implementation, _data);
    }

    /**
     * @dev Returns the current implementation address.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by ERC-1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`
     */
    function _implementation() internal view virtual override returns (address) {
        return ERC1967Utils.getImplementation();
    }

    /**
     * @dev Returns whether the proxy can be left uninitialized.
     *
     * NOTE: Override this function to allow the proxy to be left uninitialized.
     * Consider uninitialized proxies might be susceptible to man-in-the-middle threats
     * where the proxy is replaced with a malicious one.
     */
    function _unsafeAllowUninitialized() internal pure virtual returns (bool) {
        return false;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/ERC1967/ERC1967Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.21;

import {IBeacon} from "../beacon/IBeacon.sol";
import {IERC1967} from "../../interfaces/IERC1967.sol";
import {Address} from "../../utils/Address.sol";
import {StorageSlot} from "../../utils/StorageSlot.sol";

/**
 * @dev This library provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[ERC-1967] slots.
 */
library ERC1967Utils {
    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev The `implementation` of the proxy is invalid.
     */
    error ERC1967InvalidImplementation(address implementation);

    /**
     * @dev The `admin` of the proxy is invalid.
     */
    error ERC1967InvalidAdmin(address admin);

    /**
     * @dev The `beacon` of the proxy is invalid.
     */
    error ERC1967InvalidBeacon(address beacon);

    /**
     * @dev An upgrade function sees `msg.value > 0` that may be lost.
     */
    error ERC1967NonPayable();

    /**
     * @dev Returns the current implementation address.
     */
    function getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the ERC-1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(newImplementation);
        }
        StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Performs implementation upgrade with additional setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) internal {
        _setImplementation(newImplementation);
        emit IERC1967.Upgraded(newImplementation);

        if (data.length > 0) {
            Address.functionDelegateCall(newImplementation, data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by ERC-1967) using
     * the https://ethereum.org/developers/docs/apis/json-rpc/#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the ERC-1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) {
            revert ERC1967InvalidAdmin(address(0));
        }
        StorageSlot.getAddressSlot(ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {IERC1967-AdminChanged} event.
     */
    function changeAdmin(address newAdmin) internal {
        emit IERC1967.AdminChanged(getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is the keccak-256 hash of "eip1967.proxy.beacon" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the ERC-1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        if (newBeacon.code.length == 0) {
            revert ERC1967InvalidBeacon(newBeacon);
        }

        StorageSlot.getAddressSlot(BEACON_SLOT).value = newBeacon;

        address beaconImplementation = IBeacon(newBeacon).implementation();
        if (beaconImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(beaconImplementation);
        }
    }

    /**
     * @dev Change the beacon and trigger a setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-BeaconUpgraded} event.
     *
     * CAUTION: Invoking this function has no effect on an instance of {BeaconProxy} since v5, since
     * it uses an immutable beacon without looking at the value of the ERC-1967 beacon slot for
     * efficiency.
     */
    function upgradeBeaconToAndCall(address newBeacon, bytes memory data) internal {
        _setBeacon(newBeacon);
        emit IERC1967.BeaconUpgraded(newBeacon);

        if (data.length > 0) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Reverts if `msg.value` is not zero. It can be used to avoid `msg.value` stuck in the contract
     * if an upgrade doesn't perform an initialization call.
     */
    function _checkNonPayable() private {
        if (msg.value > 0) {
            revert ERC1967NonPayable();
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (proxy/Proxy.sol)

pragma solidity ^0.8.20;

/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0x00, 0x00, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0x00, calldatasize(), 0x00, 0x00)

            // Copy the returned data.
            returndatacopy(0x00, 0x00, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0x00, returndatasize())
            }
            default {
                return(0x00, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback
     * function and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/transparent/ProxyAdmin.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.2.0) (proxy/transparent/ProxyAdmin.sol)

pragma solidity ^0.8.22;

import {ITransparentUpgradeableProxy} from "./TransparentUpgradeableProxy.sol";
import {Ownable} from "../../access/Ownable.sol";

/**
 * @dev This is an auxiliary contract meant to be assigned as the admin of a {TransparentUpgradeableProxy}. For an
 * explanation of why you would want to use this see the documentation for {TransparentUpgradeableProxy}.
 */
contract ProxyAdmin is Ownable {
    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgrade(address,address)`
     * and `upgradeAndCall(address,address,bytes)` are present, and `upgrade` must be used if no function should be called,
     * while `upgradeAndCall` will invoke the `receive` function if the third argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeAndCall(address,address,bytes)` is present, and the third argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev Sets the initial owner who can perform upgrades.
     */
    constructor(address initialOwner) Ownable(initialOwner) {}

    /**
     * @dev Upgrades `proxy` to `implementation` and calls a function on the new implementation.
     * See {TransparentUpgradeableProxy-_dispatchUpgradeToAndCall}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     * - If `data` is empty, `msg.value` must be zero.
     */
    function upgradeAndCall(
        ITransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual onlyOwner {
        proxy.upgradeToAndCall{value: msg.value}(implementation, data);
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/transparent/TransparentUpgradeableProxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (proxy/transparent/TransparentUpgradeableProxy.sol)

pragma solidity ^0.8.22;

import {ERC1967Utils} from "../ERC1967/ERC1967Utils.sol";
import {ERC1967Proxy} from "../ERC1967/ERC1967Proxy.sol";
import {IERC1967} from "../../interfaces/IERC1967.sol";
import {ProxyAdmin} from "./ProxyAdmin.sol";

/**
 * @dev Interface for {TransparentUpgradeableProxy}. In order to implement transparency, {TransparentUpgradeableProxy}
 * does not implement this interface directly, and its upgradeability mechanism is implemented by an internal dispatch
 * mechanism. The compiler is unaware that these functions are implemented by {TransparentUpgradeableProxy} and will not
 * include them in the ABI so this interface must be used to interact with it.
 */
interface ITransparentUpgradeableProxy is IERC1967 {
    /// @dev See {UUPSUpgradeable-upgradeToAndCall}
    function upgradeToAndCall(address newImplementation, bytes calldata data) external payable;
}

/**
 * @dev This contract implements a proxy that is upgradeable through an associated {ProxyAdmin} instance.
 *
 * To avoid https://medium.com/nomic-labs-blog/malicious-backdoors-in-ethereum-proxies-62629adf3357[proxy selector
 * clashing], which can potentially be used in an attack, this contract uses the
 * https://blog.openzeppelin.com/the-transparent-proxy-pattern/[transparent proxy pattern]. This pattern implies two
 * things that go hand in hand:
 *
 * 1. If any account other than the admin calls the proxy, the call will be forwarded to the implementation, even if
 * that call matches the {ITransparentUpgradeableProxy-upgradeToAndCall} function exposed by the proxy itself.
 * 2. If the admin calls the proxy, it can call the `upgradeToAndCall` function, but any other call won't be forwarded to
 * the implementation. If the admin tries to call a function on the implementation it will fail with an error indicating
 * the proxy admin cannot fallback to the target implementation.
 *
 * These properties mean that the admin account can only be used for upgrading the proxy, so it's best if it's a
 * dedicated account that is not used for anything else. This will avoid headaches due to sudden errors when trying to
 * call a function from the proxy implementation. For this reason, the proxy deploys an instance of {ProxyAdmin} and
 * allows upgrades only if they come through it. You should think of the `ProxyAdmin` instance as the administrative
 * interface of the proxy, including the ability to change who can trigger upgrades by transferring ownership.
 *
 * NOTE: The real interface of this proxy is that defined in `ITransparentUpgradeableProxy`. This contract does not
 * inherit from that interface, and instead `upgradeToAndCall` is implicitly implemented using a custom dispatch
 * mechanism in `_fallback`. Consequently, the compiler will not produce an ABI for this contract. This is necessary to
 * fully implement transparency without decoding reverts caused by selector clashes between the proxy and the
 * implementation.
 *
 * NOTE: This proxy does not inherit from {Context} deliberately. The {ProxyAdmin} of this contract won't send a
 * meta-transaction in any way, and any other meta-transaction setup should be made in the implementation contract.
 *
 * IMPORTANT: This contract avoids unnecessary storage reads by setting the admin only during construction as an
 * immutable variable, preventing any changes thereafter. However, the admin slot defined in ERC-1967 can still be
 * overwritten by the implementation logic pointed to by this proxy. In such cases, the contract may end up in an
 * undesirable state where the admin slot is different from the actual admin. Relying on the value of the admin slot
 * is generally fine if the implementation is trusted.
 *
 * WARNING: It is not recommended to extend this contract to add additional external functions. If you do so, the
 * compiler will not check that there are no selector conflicts, due to the note above. A selector clash between any new
 * function and the functions declared in {ITransparentUpgradeableProxy} will be resolved in favor of the new one. This
 * could render the `upgradeToAndCall` function inaccessible, preventing upgradeability and compromising transparency.
 */
contract TransparentUpgradeableProxy is ERC1967Proxy {
    // An immutable address for the admin to avoid unnecessary SLOADs before each call
    // at the expense of removing the ability to change the admin once it's set.
    // This is acceptable if the admin is always a ProxyAdmin instance or similar contract
    // with its own ability to transfer the permissions to another account.
    address private immutable _admin;

    /**
     * @dev The proxy caller is the current admin, and can't fallback to the proxy target.
     */
    error ProxyDeniedAdminAccess();

    /**
     * @dev Initializes an upgradeable proxy managed by an instance of a {ProxyAdmin} with an `initialOwner`,
     * backed by the implementation at `_logic`, and optionally initialized with `_data` as explained in
     * {ERC1967Proxy-constructor}.
     */
    constructor(address _logic, address initialOwner, bytes memory _data) payable ERC1967Proxy(_logic, _data) {
        _admin = address(new ProxyAdmin(initialOwner));
        // Set the storage value and emit an event for ERC-1967 compatibility
        ERC1967Utils.changeAdmin(_proxyAdmin());
    }

    /**
     * @dev Returns the admin of this proxy.
     */
    function _proxyAdmin() internal view virtual returns (address) {
        return _admin;
    }

    /**
     * @dev If caller is the admin process the call internally, otherwise transparently fallback to the proxy behavior.
     */
    function _fallback() internal virtual override {
        if (msg.sender == _proxyAdmin()) {
            if (msg.sig != ITransparentUpgradeableProxy.upgradeToAndCall.selector) {
                revert ProxyDeniedAdminAccess();
            } else {
                _dispatchUpgradeToAndCall();
            }
        } else {
            super._fallback();
        }
    }

    /**
     * @dev Upgrade the implementation of the proxy. See {ERC1967Utils-upgradeToAndCall}.
     *
     * Requirements:
     *
     * - If `data` is empty, `msg.value` must be zero.
     */
    function _dispatchUpgradeToAndCall() private {
        (address newImplementation, bytes memory data) = abi.decode(msg.data[4:], (address, bytes));
        ERC1967Utils.upgradeToAndCall(newImplementation, data);
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reinitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Pointer to storage slot. Allows integrators to override it with a custom storage location.
     *
     * NOTE: Consider following the ERC-7201 formula to derive storage locations.
     */
    function _initializableStorageSlot() internal pure virtual returns (bytes32) {
        return INITIALIZABLE_STORAGE;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        bytes32 slot = _initializableStorageSlot();
        assembly {
            $.slot := slot
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC20Metadata} from "./extensions/IERC20Metadata.sol";
import {Context} from "../../utils/Context.sol";
import {IERC20Errors} from "../../interfaces/draft-IERC6093.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC-20
 * applications.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * Both values are immutable: they can only be set once during construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /// @inheritdoc IERC20
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /// @inheritdoc IERC20
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /// @inheritdoc IERC20
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Skips emitting an {Approval} event indicating an allowance update. This is not
     * required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner`'s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation sets the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the `transferFrom` operation can force the flag to
     * true using the following override:
     *
     * ```solidity
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner`'s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance < type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/extensions/ERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/extensions/ERC20Permit.sol)

pragma solidity ^0.8.24;

import {IERC20Permit} from "./IERC20Permit.sol";
import {ERC20} from "../ERC20.sol";
import {ECDSA} from "../../../utils/cryptography/ECDSA.sol";
import {EIP712} from "../../../utils/cryptography/EIP712.sol";
import {Nonces} from "../../../utils/Nonces.sol";

/**
 * @dev Implementation of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
abstract contract ERC20Permit is ERC20, IERC20Permit, EIP712, Nonces {
    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    /**
     * @dev Permit deadline has expired.
     */
    error ERC2612ExpiredSignature(uint256 deadline);

    /**
     * @dev Mismatched signature.
     */
    error ERC2612InvalidSigner(address signer, address owner);

    /**
     * @dev Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to `"1"`.
     *
     * It's a good idea to use the same `name` that is defined as the ERC-20 token name.
     */
    constructor(string memory name) EIP712(name, "1") {}

    /// @inheritdoc IERC20Permit
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        if (block.timestamp > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        bytes32 structHash = keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSA.recover(hash, v, r, s);
        if (signer != owner) {
            revert ERC2612InvalidSigner(signer, owner);
        }

        _approve(owner, spender, value);
    }

    /// @inheritdoc IERC20Permit
    function nonces(address owner) public view virtual override(IERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner);
    }

    /// @inheritdoc IERC20Permit
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/extensions/ERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (token/ERC20/extensions/ERC4626.sol)

pragma solidity ^0.8.24;

import {IERC20, IERC20Metadata, ERC20} from "../ERC20.sol";
import {SafeERC20} from "../utils/SafeERC20.sol";
import {IERC4626} from "../../../interfaces/IERC4626.sol";
import {LowLevelCall} from "../../../utils/LowLevelCall.sol";
import {Memory} from "../../../utils/Memory.sol";
import {Math} from "../../../utils/math/Math.sol";

/**
 * @dev Implementation of the ERC-4626 "Tokenized Vault Standard" as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 *
 * This extension allows the minting and burning of "shares" (represented using the ERC-20 inheritance) in exchange for
 * underlying "assets" through standardized {deposit}, {mint}, {redeem} and {burn} workflows. This contract extends
 * the ERC-20 standard. Any additional extensions included along it would affect the "shares" token represented by this
 * contract and not the "assets" token which is an independent contract.
 *
 * [CAUTION]
 * ====
 * In empty (or nearly empty) ERC-4626 vaults, deposits are at high risk of being stolen through frontrunning
 * with a "donation" to the vault that inflates the price of a share. This is variously known as a donation or inflation
 * attack and is essentially a problem of slippage. Vault deployers can protect against this attack by making an initial
 * deposit of a non-trivial amount of the asset, such that price manipulation becomes infeasible. Withdrawals may
 * similarly be affected by slippage. Users can protect against this attack as well as unexpected slippage in general by
 * verifying the amount received is as expected, using a wrapper that performs these checks such as
 * https://github.com/fei-protocol/ERC4626#erc4626router-and-base[ERC4626Router].
 *
 * Since v4.9, this implementation introduces configurable virtual assets and shares to help developers mitigate that risk.
 * The `_decimalsOffset()` corresponds to an offset in the decimal representation between the underlying asset's decimals
 * and the vault decimals. This offset also determines the rate of virtual shares to virtual assets in the vault, which
 * itself determines the initial exchange rate. While not fully preventing the attack, analysis shows that the default
 * offset (0) makes it non-profitable even if an attacker is able to capture value from multiple user deposits, as a result
 * of the value being captured by the virtual shares (out of the attacker's donation) matching the attacker's expected gains.
 * With a larger offset, the attack becomes orders of magnitude more expensive than it is profitable. More details about the
 * underlying math can be found xref:ROOT:erc4626.adoc#inflation-attack[here].
 *
 * The drawback of this approach is that the virtual shares do capture (a very small) part of the value being accrued
 * to the vault. Also, if the vault experiences losses, the users try to exit the vault, the virtual shares and assets
 * will cause the first user to exit to experience reduced losses in detriment to the last users that will experience
 * bigger losses. Developers willing to revert back to the pre-v4.9 behavior just need to override the
 * `_convertToShares` and `_convertToAssets` functions.
 *
 * To learn more, check out our xref:ROOT:erc4626.adoc[ERC-4626 guide].
 * ====
 *
 * [NOTE]
 * ====
 * When overriding this contract, some elements must be considered:
 *
 * * When overriding the behavior of the deposit or withdraw mechanisms, it is recommended to override the internal
 * functions. Overriding {_deposit} automatically affects both {deposit} and {mint}. Similarly, overriding {_withdraw}
 * automatically affects both {withdraw} and {redeem}. Overall it is not recommended to override the public facing
 * functions since that could lead to inconsistent behaviors between the {deposit} and {mint} or between {withdraw} and
 * {redeem}, which is documented to have led to loss of funds.
 *
 * * Overrides to the deposit or withdraw mechanism must be reflected in the preview functions as well.
 *
 * * {maxWithdraw} depends on {maxRedeem}. Therefore, overriding {maxRedeem} only is enough. On the other hand,
 * overriding {maxWithdraw} only would have no effect on {maxRedeem}, and could create an inconsistency between the two
 * functions.
 *
 * * If {previewRedeem} is overridden to revert, {maxWithdraw} must be overridden as necessary to ensure it
 * always return successfully.
 * ====
 */
abstract contract ERC4626 is ERC20, IERC4626 {
    using Math for uint256;

    IERC20 private immutable _asset;
    uint8 private immutable _underlyingDecimals;

    /**
     * @dev Attempted to deposit more assets than the max amount for `receiver`.
     */
    error ERC4626ExceededMaxDeposit(address receiver, uint256 assets, uint256 max);

    /**
     * @dev Attempted to mint more shares than the max amount for `receiver`.
     */
    error ERC4626ExceededMaxMint(address receiver, uint256 shares, uint256 max);

    /**
     * @dev Attempted to withdraw more assets than the max amount for `owner`.
     */
    error ERC4626ExceededMaxWithdraw(address owner, uint256 assets, uint256 max);

    /**
     * @dev Attempted to redeem more shares than the max amount for `owner`.
     */
    error ERC4626ExceededMaxRedeem(address owner, uint256 shares, uint256 max);

    /**
     * @dev Set the underlying asset contract. This must be an ERC20-compatible contract (ERC-20 or ERC-777).
     */
    constructor(IERC20 asset_) {
        (bool success, uint8 assetDecimals) = _tryGetAssetDecimals(asset_);
        _underlyingDecimals = success ? assetDecimals : 18;
        _asset = asset_;
    }

    /**
     * @dev Attempts to fetch the asset decimals. A return value of false indicates that the attempt failed in some way.
     */
    function _tryGetAssetDecimals(IERC20 asset_) private view returns (bool ok, uint8 assetDecimals) {
        Memory.Pointer ptr = Memory.getFreeMemoryPointer();
        (bool success, bytes32 returnedDecimals, ) = LowLevelCall.staticcallReturn64Bytes(
            address(asset_),
            abi.encodeCall(IERC20Metadata.decimals, ())
        );
        Memory.unsafeSetFreeMemoryPointer(ptr);

        return
            (success && LowLevelCall.returnDataSize() >= 32 && uint256(returnedDecimals) <= type(uint8).max)
                ? (true, uint8(uint256(returnedDecimals)))
                : (false, 0);
    }

    /**
     * @dev Decimals are computed by adding the decimal offset on top of the underlying asset's decimals. This
     * "original" value is cached during construction of the vault contract. If this read operation fails (e.g., the
     * asset has not been created yet), a default of 18 is used to represent the underlying asset's decimals.
     *
     * See {IERC20Metadata-decimals}.
     */
    function decimals() public view virtual override(IERC20Metadata, ERC20) returns (uint8) {
        return _underlyingDecimals + _decimalsOffset();
    }

    /// @inheritdoc IERC4626
    function asset() public view virtual returns (address) {
        return address(_asset);
    }

    /// @inheritdoc IERC4626
    function totalAssets() public view virtual returns (uint256) {
        return IERC20(asset()).balanceOf(address(this));
    }

    /// @inheritdoc IERC4626
    function convertToShares(uint256 assets) public view virtual returns (uint256) {
        return _convertToShares(assets, Math.Rounding.Floor);
    }

    /// @inheritdoc IERC4626
    function convertToAssets(uint256 shares) public view virtual returns (uint256) {
        return _convertToAssets(shares, Math.Rounding.Floor);
    }

    /// @inheritdoc IERC4626
    function maxDeposit(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    /// @inheritdoc IERC4626
    function maxMint(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    /// @inheritdoc IERC4626
    function maxWithdraw(address owner) public view virtual returns (uint256) {
        return previewRedeem(maxRedeem(owner));
    }

    /// @inheritdoc IERC4626
    function maxRedeem(address owner) public view virtual returns (uint256) {
        return balanceOf(owner);
    }

    /// @inheritdoc IERC4626
    function previewDeposit(uint256 assets) public view virtual returns (uint256) {
        return _convertToShares(assets, Math.Rounding.Floor);
    }

    /// @inheritdoc IERC4626
    function previewMint(uint256 shares) public view virtual returns (uint256) {
        return _convertToAssets(shares, Math.Rounding.Ceil);
    }

    /// @inheritdoc IERC4626
    function previewWithdraw(uint256 assets) public view virtual returns (uint256) {
        return _convertToShares(assets, Math.Rounding.Ceil);
    }

    /// @inheritdoc IERC4626
    function previewRedeem(uint256 shares) public view virtual returns (uint256) {
        return _convertToAssets(shares, Math.Rounding.Floor);
    }

    /// @inheritdoc IERC4626
    function deposit(uint256 assets, address receiver) public virtual returns (uint256) {
        uint256 maxAssets = maxDeposit(receiver);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(receiver, assets, maxAssets);
        }

        uint256 shares = previewDeposit(assets);
        _deposit(_msgSender(), receiver, assets, shares);

        return shares;
    }

    /// @inheritdoc IERC4626
    function mint(uint256 shares, address receiver) public virtual returns (uint256) {
        uint256 maxShares = maxMint(receiver);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxMint(receiver, shares, maxShares);
        }

        uint256 assets = previewMint(shares);
        _deposit(_msgSender(), receiver, assets, shares);

        return assets;
    }

    /// @inheritdoc IERC4626
    function withdraw(uint256 assets, address receiver, address owner) public virtual returns (uint256) {
        uint256 maxAssets = maxWithdraw(owner);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxWithdraw(owner, assets, maxAssets);
        }

        uint256 shares = previewWithdraw(assets);
        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return shares;
    }

    /// @inheritdoc IERC4626
    function redeem(uint256 shares, address receiver, address owner) public virtual returns (uint256) {
        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
        }

        uint256 assets = previewRedeem(shares);
        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return assets;
    }

    /**
     * @dev Internal conversion function (from assets to shares) with support for rounding direction.
     */
    function _convertToShares(uint256 assets, Math.Rounding rounding) internal view virtual returns (uint256) {
        return assets.mulDiv(totalSupply() + 10 ** _decimalsOffset(), totalAssets() + 1, rounding);
    }

    /**
     * @dev Internal conversion function (from shares to assets) with support for rounding direction.
     */
    function _convertToAssets(uint256 shares, Math.Rounding rounding) internal view virtual returns (uint256) {
        return shares.mulDiv(totalAssets() + 1, totalSupply() + 10 ** _decimalsOffset(), rounding);
    }

    /**
     * @dev Deposit/mint common workflow.
     */
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal virtual {
        // If asset() is ERC-777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth
        _transferIn(caller, assets);
        _mint(receiver, shares);

        emit Deposit(caller, receiver, assets, shares);
    }

    /**
     * @dev Withdraw/redeem common workflow.
     */
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual {
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        // If asset() is ERC-777, `transfer` can trigger a reentrancy AFTER the transfer happens through the
        // `tokensReceived` hook. On the other hand, the `tokensToSend` hook, that is triggered before the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer after the burn so that any reentrancy would happen after the
        // shares are burned and after the assets are transferred, which is a valid state.
        _burn(owner, shares);
        _transferOut(receiver, assets);

        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /// @dev Performs a transfer in of underlying assets. The default implementation uses `SafeERC20`. Used by {_deposit}.
    function _transferIn(address from, uint256 assets) internal virtual {
        SafeERC20.safeTransferFrom(IERC20(asset()), from, address(this), assets);
    }

    /// @dev Performs a transfer out of underlying assets. The default implementation uses `SafeERC20`. Used by {_withdraw}.
    function _transferOut(address to, uint256 assets) internal virtual {
        SafeERC20.safeTransfer(IERC20(asset()), to, assets);
    }

    function _decimalsOffset() internal view virtual returns (uint8) {
        return 0;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity >=0.6.2;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also applies here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC1363} from "../../../interfaces/IERC1363.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        if (!_safeTransfer(token, to, value, true)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        if (!_safeTransferFrom(token, from, to, value, true)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Variant of {safeTransfer} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransfer(IERC20 token, address to, uint256 value) internal returns (bool) {
        return _safeTransfer(token, to, value, false);
    }

    /**
     * @dev Variant of {safeTransferFrom} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransferFrom(IERC20 token, address from, address to, uint256 value) internal returns (bool) {
        return _safeTransferFrom(token, from, to, value, false);
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        if (!_safeApprove(token, spender, value, false)) {
            if (!_safeApprove(token, spender, 0, true)) revert SafeERC20FailedOperation(address(token));
            if (!_safeApprove(token, spender, value, true)) revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that relies on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that relies on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Oppositely, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity `token.transfer(to, value)` call, relaxing the requirement on the return value: the
     * return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param to The recipient of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeTransfer(IERC20 token, address to, uint256 value, bool bubble) private returns (bool success) {
        bytes4 selector = IERC20.transfer.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(to, shr(96, not(0))))
            mstore(0x24, value)
            success := call(gas(), token, 0, 0x00, 0x44, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
        }
    }

    /**
     * @dev Imitates a Solidity `token.transferFrom(from, to, value)` call, relaxing the requirement on the return
     * value: the return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param from The sender of the tokens
     * @param to The recipient of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value,
        bool bubble
    ) private returns (bool success) {
        bytes4 selector = IERC20.transferFrom.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(from, shr(96, not(0))))
            mstore(0x24, and(to, shr(96, not(0))))
            mstore(0x44, value)
            success := call(gas(), token, 0, 0x00, 0x64, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
            mstore(0x60, 0)
        }
    }

    /**
     * @dev Imitates a Solidity `token.approve(spender, value)` call, relaxing the requirement on the return value:
     * the return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param spender The spender of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeApprove(IERC20 token, address spender, uint256 value, bool bubble) private returns (bool success) {
        bytes4 selector = IERC20.approve.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(spender, shr(96, not(0))))
            mstore(0x24, value)
            success := call(gas(), token, 0, 0x00, 0x44, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/Address.sol)

pragma solidity ^0.8.20;

import {Errors} from "./Errors.sol";
import {LowLevelCall} from "./LowLevelCall.sol";

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert Errors.InsufficientBalance(address(this).balance, amount);
        }
        if (LowLevelCall.callNoReturn(recipient, amount, "")) {
            // call successful, nothing to do
            return;
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {Errors.FailedCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert Errors.InsufficientBalance(address(this).balance, value);
        }
        bool success = LowLevelCall.callNoReturn(target, value, data);
        if (success && (LowLevelCall.returnDataSize() > 0 || target.code.length > 0)) {
            return LowLevelCall.returnData();
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        bool success = LowLevelCall.staticcallNoReturn(target, data);
        if (success && (LowLevelCall.returnDataSize() > 0 || target.code.length > 0)) {
            return LowLevelCall.returnData();
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        bool success = LowLevelCall.delegatecallNoReturn(target, data);
        if (success && (LowLevelCall.returnDataSize() > 0 || target.code.length > 0)) {
            return LowLevelCall.returnData();
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (LowLevelCall.returnDataSize() > 0) {
            LowLevelCall.bubbleRevert();
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {Errors.FailedCall}) in case
     * of an unsuccessful call.
     *
     * NOTE: This function is DEPRECATED and may be removed in the next major release.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        // only check if target is a contract if the call was successful and the return data is empty
        // otherwise we already know that it was a contract
        if (success && (returndata.length > 0 || target.code.length > 0)) {
            return returndata;
        } else if (success) {
            revert AddressEmptyCode(target);
        } else if (returndata.length > 0) {
            LowLevelCall.bubbleRevert(returndata);
        } else {
            revert Errors.FailedCall();
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {Errors.FailedCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else if (returndata.length > 0) {
            LowLevelCall.bubbleRevert(returndata);
        } else {
            revert Errors.FailedCall();
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Arrays.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/Arrays.sol)
// This file was procedurally generated from scripts/generate/templates/Arrays.js.

pragma solidity ^0.8.24;

import {Comparators} from "./Comparators.sol";
import {SlotDerivation} from "./SlotDerivation.sol";
import {StorageSlot} from "./StorageSlot.sol";
import {Math} from "./math/Math.sol";

/**
 * @dev Collection of functions related to array types.
 */
library Arrays {
    using SlotDerivation for bytes32;
    using StorageSlot for bytes32;

    /**
     * @dev Sort an array of uint256 (in memory) following the provided comparator function.
     *
     * This function does the sorting "in place", meaning that it overrides the input. The object is returned for
     * convenience, but that returned value can be discarded safely if the caller has a memory pointer to the array.
     *
     * NOTE: this function's cost is `O(n · log(n))` in average and `O(n²)` in the worst case, with n the length of the
     * array. Using it in view functions that are executed through `eth_call` is safe, but one should be very careful
     * when executing this as part of a transaction. If the array being sorted is too large, the sort operation may
     * consume more gas than is available in a block, leading to potential DoS.
     *
     * IMPORTANT: Consider memory side-effects when using custom comparator functions that access memory in an unsafe way.
     */
    function sort(
        uint256[] memory array,
        function(uint256, uint256) pure returns (bool) comp
    ) internal pure returns (uint256[] memory) {
        _quickSort(_begin(array), _end(array), comp);
        return array;
    }

    /**
     * @dev Variant of {sort} that sorts an array of uint256 in increasing order.
     */
    function sort(uint256[] memory array) internal pure returns (uint256[] memory) {
        sort(array, Comparators.lt);
        return array;
    }

    /**
     * @dev Sort an array of address (in memory) following the provided comparator function.
     *
     * This function does the sorting "in place", meaning that it overrides the input. The object is returned for
     * convenience, but that returned value can be discarded safely if the caller has a memory pointer to the array.
     *
     * NOTE: this function's cost is `O(n · log(n))` in average and `O(n²)` in the worst case, with n the length of the
     * array. Using it in view functions that are executed through `eth_call` is safe, but one should be very careful
     * when executing this as part of a transaction. If the array being sorted is too large, the sort operation may
     * consume more gas than is available in a block, leading to potential DoS.
     *
     * IMPORTANT: Consider memory side-effects when using custom comparator functions that access memory in an unsafe way.
     */
    function sort(
        address[] memory array,
        function(address, address) pure returns (bool) comp
    ) internal pure returns (address[] memory) {
        sort(_castToUint256Array(array), _castToUint256Comp(comp));
        return array;
    }

    /**
     * @dev Variant of {sort} that sorts an array of address in increasing order.
     */
    function sort(address[] memory array) internal pure returns (address[] memory) {
        sort(_castToUint256Array(array), Comparators.lt);
        return array;
    }

    /**
     * @dev Sort an array of bytes32 (in memory) following the provided comparator function.
     *
     * This function does the sorting "in place", meaning that it overrides the input. The object is returned for
     * convenience, but that returned value can be discarded safely if the caller has a memory pointer to the array.
     *
     * NOTE: this function's cost is `O(n · log(n))` in average and `O(n²)` in the worst case, with n the length of the
     * array. Using it in view functions that are executed through `eth_call` is safe, but one should be very careful
     * when executing this as part of a transaction. If the array being sorted is too large, the sort operation may
     * consume more gas than is available in a block, leading to potential DoS.
     *
     * IMPORTANT: Consider memory side-effects when using custom comparator functions that access memory in an unsafe way.
     */
    function sort(
        bytes32[] memory array,
        function(bytes32, bytes32) pure returns (bool) comp
    ) internal pure returns (bytes32[] memory) {
        sort(_castToUint256Array(array), _castToUint256Comp(comp));
        return array;
    }

    /**
     * @dev Variant of {sort} that sorts an array of bytes32 in increasing order.
     */
    function sort(bytes32[] memory array) internal pure returns (bytes32[] memory) {
        sort(_castToUint256Array(array), Comparators.lt);
        return array;
    }

    /**
     * @dev Performs a quick sort of a segment of memory. The segment sorted starts at `begin` (inclusive), and stops
     * at end (exclusive). Sorting follows the `comp` comparator.
     *
     * Invariant: `begin <= end`. This is the case when initially called by {sort} and is preserved in subcalls.
     *
     * IMPORTANT: Memory locations between `begin` and `end` are not validated/zeroed. This function should
     * be used only if the limits are within a memory array.
     */
    function _quickSort(uint256 begin, uint256 end, function(uint256, uint256) pure returns (bool) comp) private pure {
        unchecked {
            if (end - begin < 0x40) return;

            // Use first element as pivot
            uint256 pivot = _mload(begin);
            // Position where the pivot should be at the end of the loop
            uint256 pos = begin;

            for (uint256 it = begin + 0x20; it < end; it += 0x20) {
                if (comp(_mload(it), pivot)) {
                    // If the value stored at the iterator's position comes before the pivot, we increment the
                    // position of the pivot and move the value there.
                    pos += 0x20;
                    _swap(pos, it);
                }
            }

            _swap(begin, pos); // Swap pivot into place
            _quickSort(begin, pos, comp); // Sort the left side of the pivot
            _quickSort(pos + 0x20, end, comp); // Sort the right side of the pivot
        }
    }

    /**
     * @dev Pointer to the memory location of the first element of `array`.
     */
    function _begin(uint256[] memory array) private pure returns (uint256 ptr) {
        assembly ("memory-safe") {
            ptr := add(array, 0x20)
        }
    }

    /**
     * @dev Pointer to the memory location of the first memory word (32bytes) after `array`. This is the memory word
     * that comes just after the last element of the array.
     */
    function _end(uint256[] memory array) private pure returns (uint256 ptr) {
        unchecked {
            return _begin(array) + array.length * 0x20;
        }
    }

    /**
     * @dev Load memory word (as a uint256) at location `ptr`.
     */
    function _mload(uint256 ptr) private pure returns (uint256 value) {
        assembly {
            value := mload(ptr)
        }
    }

    /**
     * @dev Swaps the elements memory location `ptr1` and `ptr2`.
     */
    function _swap(uint256 ptr1, uint256 ptr2) private pure {
        assembly {
            let value1 := mload(ptr1)
            let value2 := mload(ptr2)
            mstore(ptr1, value2)
            mstore(ptr2, value1)
        }
    }

    /// @dev Helper: low level cast address memory array to uint256 memory array
    function _castToUint256Array(address[] memory input) private pure returns (uint256[] memory output) {
        assembly {
            output := input
        }
    }

    /// @dev Helper: low level cast bytes32 memory array to uint256 memory array
    function _castToUint256Array(bytes32[] memory input) private pure returns (uint256[] memory output) {
        assembly {
            output := input
        }
    }

    /// @dev Helper: low level cast address comp function to uint256 comp function
    function _castToUint256Comp(
        function(address, address) pure returns (bool) input
    ) private pure returns (function(uint256, uint256) pure returns (bool) output) {
        assembly {
            output := input
        }
    }

    /// @dev Helper: low level cast bytes32 comp function to uint256 comp function
    function _castToUint256Comp(
        function(bytes32, bytes32) pure returns (bool) input
    ) private pure returns (function(uint256, uint256) pure returns (bool) output) {
        assembly {
            output := input
        }
    }

    /**
     * @dev Searches a sorted `array` and returns the first index that contains
     * a value greater or equal to `element`. If no such index exists (i.e. all
     * values in the array are strictly less than `element`), the array length is
     * returned. Time complexity O(log n).
     *
     * NOTE: The `array` is expected to be sorted in ascending order, and to
     * contain no repeated elements.
     *
     * IMPORTANT: Deprecated. This implementation behaves as {lowerBound} but lacks
     * support for repeated elements in the array. The {lowerBound} function should
     * be used instead.
     */
    function findUpperBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeAccess(array, mid).value > element) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }

        // At this point `low` is the exclusive upper bound. We will return the inclusive upper bound.
        if (low > 0 && unsafeAccess(array, low - 1).value == element) {
            return low - 1;
        } else {
            return low;
        }
    }

    /**
     * @dev Searches an `array` sorted in ascending order and returns the first
     * index that contains a value greater or equal than `element`. If no such index
     * exists (i.e. all values in the array are strictly less than `element`), the array
     * length is returned. Time complexity O(log n).
     *
     * See C++'s https://en.cppreference.com/w/cpp/algorithm/lower_bound[lower_bound].
     */
    function lowerBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeAccess(array, mid).value < element) {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            } else {
                high = mid;
            }
        }

        return low;
    }

    /**
     * @dev Searches an `array` sorted in ascending order and returns the first
     * index that contains a value strictly greater than `element`. If no such index
     * exists (i.e. all values in the array are strictly less than `element`), the array
     * length is returned. Time complexity O(log n).
     *
     * See C++'s https://en.cppreference.com/w/cpp/algorithm/upper_bound[upper_bound].
     */
    function upperBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeAccess(array, mid).value > element) {
                high = mid;
            } else {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            }
        }

        return low;
    }

    /**
     * @dev Same as {lowerBound}, but with an array in memory.
     */
    function lowerBoundMemory(uint256[] memory array, uint256 element) internal pure returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeMemoryAccess(array, mid) < element) {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            } else {
                high = mid;
            }
        }

        return low;
    }

    /**
     * @dev Same as {upperBound}, but with an array in memory.
     */
    function upperBoundMemory(uint256[] memory array, uint256 element) internal pure returns (uint256) {
        uint256 low = 0;
        uint256 high = array.length;

        if (high == 0) {
            return 0;
        }

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds towards zero (it does integer division with truncation).
            if (unsafeMemoryAccess(array, mid) > element) {
                high = mid;
            } else {
                // this cannot overflow because mid < high
                unchecked {
                    low = mid + 1;
                }
            }
        }

        return low;
    }

    /**
     * @dev Copies the content of `array`, from `start` (included) to the end of `array` into a new address array in
     * memory.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(address[] memory array, uint256 start) internal pure returns (address[] memory) {
        return slice(array, start, array.length);
    }

    /**
     * @dev Copies the content of `array`, from `start` (included) to `end` (excluded) into a new address array in
     * memory. The `end` argument is truncated to the length of the `array`.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(address[] memory array, uint256 start, uint256 end) internal pure returns (address[] memory) {
        // sanitize
        end = Math.min(end, array.length);
        start = Math.min(start, end);

        // allocate and copy
        address[] memory result = new address[](end - start);
        assembly ("memory-safe") {
            mcopy(add(result, 0x20), add(add(array, 0x20), mul(start, 0x20)), mul(sub(end, start), 0x20))
        }

        return result;
    }

    /**
     * @dev Copies the content of `array`, from `start` (included) to the end of `array` into a new bytes32 array in
     * memory.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(bytes32[] memory array, uint256 start) internal pure returns (bytes32[] memory) {
        return slice(array, start, array.length);
    }

    /**
     * @dev Copies the content of `array`, from `start` (included) to `end` (excluded) into a new bytes32 array in
     * memory. The `end` argument is truncated to the length of the `array`.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(bytes32[] memory array, uint256 start, uint256 end) internal pure returns (bytes32[] memory) {
        // sanitize
        end = Math.min(end, array.length);
        start = Math.min(start, end);

        // allocate and copy
        bytes32[] memory result = new bytes32[](end - start);
        assembly ("memory-safe") {
            mcopy(add(result, 0x20), add(add(array, 0x20), mul(start, 0x20)), mul(sub(end, start), 0x20))
        }

        return result;
    }

    /**
     * @dev Copies the content of `array`, from `start` (included) to the end of `array` into a new uint256 array in
     * memory.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(uint256[] memory array, uint256 start) internal pure returns (uint256[] memory) {
        return slice(array, start, array.length);
    }

    /**
     * @dev Copies the content of `array`, from `start` (included) to `end` (excluded) into a new uint256 array in
     * memory. The `end` argument is truncated to the length of the `array`.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(uint256[] memory array, uint256 start, uint256 end) internal pure returns (uint256[] memory) {
        // sanitize
        end = Math.min(end, array.length);
        start = Math.min(start, end);

        // allocate and copy
        uint256[] memory result = new uint256[](end - start);
        assembly ("memory-safe") {
            mcopy(add(result, 0x20), add(add(array, 0x20), mul(start, 0x20)), mul(sub(end, start), 0x20))
        }

        return result;
    }

    /**
     * @dev Moves the content of `array`, from `start` (included) to the end of `array` to the start of that array,
     * and shrinks the array length accordingly, effectively overwriting the array with array[start:].
     *
     * NOTE: This function modifies the provided array in place. If you need to preserve the original array, use {slice} instead.
     */
    function splice(address[] memory array, uint256 start) internal pure returns (address[] memory) {
        return splice(array, start, array.length);
    }

    /**
     * @dev Moves the content of `array`, from `start` (included) to `end` (excluded) to the start of that array,
     * and shrinks the array length accordingly, effectively overwriting the array with array[start:end]. The
     * `end` argument is truncated to the length of the `array`.
     *
     * NOTE: This function modifies the provided array in place. If you need to preserve the original array, use {slice} instead.
     */
    function splice(address[] memory array, uint256 start, uint256 end) internal pure returns (address[] memory) {
        // sanitize
        end = Math.min(end, array.length);
        start = Math.min(start, end);

        // move and resize
        assembly ("memory-safe") {
            mcopy(add(array, 0x20), add(add(array, 0x20), mul(start, 0x20)), mul(sub(end, start), 0x20))
            mstore(array, sub(end, start))
        }

        return array;
    }

    /**
     * @dev Replaces elements in `array` starting at `pos` with all elements from `replacement`.
     *
     * Parameters are clamped to valid ranges (e.g. `pos` is clamped to `[0, array.length]`).
     * If `pos >= array.length`, no replacement occurs and the array is returned unchanged.
     *
     * NOTE: This function modifies the provided array in place.
     */
    function replace(
        address[] memory array,
        uint256 pos,
        address[] memory replacement
    ) internal pure returns (address[] memory) {
        return replace(array, pos, replacement, 0, replacement.length);
    }

    /**
     * @dev Replaces elements in `array` starting at `pos` with elements from `replacement` starting at `offset`.
     * Copies at most `length` elements from `replacement` to `array`.
     *
     * Parameters are clamped to valid ranges (i.e. `pos` is clamped to `[0, array.length]`, `offset` is
     * clamped to `[0, replacement.length]`, and `length` is clamped to `min(length, replacement.length - offset,
     * array.length - pos)`). If `pos >= array.length` or `offset >= replacement.length`, no replacement occurs
     * and the array is returned unchanged.
     *
     * NOTE: This function modifies the provided array in place.
     */
    function replace(
        address[] memory array,
        uint256 pos,
        address[] memory replacement,
        uint256 offset,
        uint256 length
    ) internal pure returns (address[] memory) {
        // sanitize
        pos = Math.min(pos, array.length);
        offset = Math.min(offset, replacement.length);
        length = Math.min(length, Math.min(replacement.length - offset, array.length - pos));

        // replace
        assembly ("memory-safe") {
            mcopy(
                add(add(array, 0x20), mul(pos, 0x20)),
                add(add(replacement, 0x20), mul(offset, 0x20)),
                mul(length, 0x20)
            )
        }

        return array;
    }

    /**
     * @dev Moves the content of `array`, from `start` (included) to the end of `array` to the start of that array,
     * and shrinks the array length accordingly, effectively overwriting the array with array[start:].
     *
     * NOTE: This function modifies the provided array in place. If you need to preserve the original array, use {slice} instead.
     */
    function splice(bytes32[] memory array, uint256 start) internal pure returns (bytes32[] memory) {
        return splice(array, start, array.length);
    }

    /**
     * @dev Moves the content of `array`, from `start` (included) to `end` (excluded) to the start of that array,
     * and shrinks the array length accordingly, effectively overwriting the array with array[start:end]. The
     * `end` argument is truncated to the length of the `array`.
     *
     * NOTE: This function modifies the provided array in place. If you need to preserve the original array, use {slice} instead.
     */
    function splice(bytes32[] memory array, uint256 start, uint256 end) internal pure returns (bytes32[] memory) {
        // sanitize
        end = Math.min(end, array.length);
        start = Math.min(start, end);

        // move and resize
        assembly ("memory-safe") {
            mcopy(add(array, 0x20), add(add(array, 0x20), mul(start, 0x20)), mul(sub(end, start), 0x20))
            mstore(array, sub(end, start))
        }

        return array;
    }

    /**
     * @dev Replaces elements in `array` starting at `pos` with all elements from `replacement`.
     *
     * Parameters are clamped to valid ranges (e.g. `pos` is clamped to `[0, array.length]`).
     * If `pos >= array.length`, no replacement occurs and the array is returned unchanged.
     *
     * NOTE: This function modifies the provided array in place.
     */
    function replace(
        bytes32[] memory array,
        uint256 pos,
        bytes32[] memory replacement
    ) internal pure returns (bytes32[] memory) {
        return replace(array, pos, replacement, 0, replacement.length);
    }

    /**
     * @dev Replaces elements in `array` starting at `pos` with elements from `replacement` starting at `offset`.
     * Copies at most `length` elements from `replacement` to `array`.
     *
     * Parameters are clamped to valid ranges (i.e. `pos` is clamped to `[0, array.length]`, `offset` is
     * clamped to `[0, replacement.length]`, and `length` is clamped to `min(length, replacement.length - offset,
     * array.length - pos)`). If `pos >= array.length` or `offset >= replacement.length`, no replacement occurs
     * and the array is returned unchanged.
     *
     * NOTE: This function modifies the provided array in place.
     */
    function replace(
        bytes32[] memory array,
        uint256 pos,
        bytes32[] memory replacement,
        uint256 offset,
        uint256 length
    ) internal pure returns (bytes32[] memory) {
        // sanitize
        pos = Math.min(pos, array.length);
        offset = Math.min(offset, replacement.length);
        length = Math.min(length, Math.min(replacement.length - offset, array.length - pos));

        // replace
        assembly ("memory-safe") {
            mcopy(
                add(add(array, 0x20), mul(pos, 0x20)),
                add(add(replacement, 0x20), mul(offset, 0x20)),
                mul(length, 0x20)
            )
        }

        return array;
    }

    /**
     * @dev Moves the content of `array`, from `start` (included) to the end of `array` to the start of that array,
     * and shrinks the array length accordingly, effectively overwriting the array with array[start:].
     *
     * NOTE: This function modifies the provided array in place. If you need to preserve the original array, use {slice} instead.
     */
    function splice(uint256[] memory array, uint256 start) internal pure returns (uint256[] memory) {
        return splice(array, start, array.length);
    }

    /**
     * @dev Moves the content of `array`, from `start` (included) to `end` (excluded) to the start of that array,
     * and shrinks the array length accordingly, effectively overwriting the array with array[start:end]. The
     * `end` argument is truncated to the length of the `array`.
     *
     * NOTE: This function modifies the provided array in place. If you need to preserve the original array, use {slice} instead.
     */
    function splice(uint256[] memory array, uint256 start, uint256 end) internal pure returns (uint256[] memory) {
        // sanitize
        end = Math.min(end, array.length);
        start = Math.min(start, end);

        // move and resize
        assembly ("memory-safe") {
            mcopy(add(array, 0x20), add(add(array, 0x20), mul(start, 0x20)), mul(sub(end, start), 0x20))
            mstore(array, sub(end, start))
        }

        return array;
    }

    /**
     * @dev Replaces elements in `array` starting at `pos` with all elements from `replacement`.
     *
     * Parameters are clamped to valid ranges (e.g. `pos` is clamped to `[0, array.length]`).
     * If `pos >= array.length`, no replacement occurs and the array is returned unchanged.
     *
     * NOTE: This function modifies the provided array in place.
     */
    function replace(
        uint256[] memory array,
        uint256 pos,
        uint256[] memory replacement
    ) internal pure returns (uint256[] memory) {
        return replace(array, pos, replacement, 0, replacement.length);
    }

    /**
     * @dev Replaces elements in `array` starting at `pos` with elements from `replacement` starting at `offset`.
     * Copies at most `length` elements from `replacement` to `array`.
     *
     * Parameters are clamped to valid ranges (i.e. `pos` is clamped to `[0, array.length]`, `offset` is
     * clamped to `[0, replacement.length]`, and `length` is clamped to `min(length, replacement.length - offset,
     * array.length - pos)`). If `pos >= array.length` or `offset >= replacement.length`, no replacement occurs
     * and the array is returned unchanged.
     *
     * NOTE: This function modifies the provided array in place.
     */
    function replace(
        uint256[] memory array,
        uint256 pos,
        uint256[] memory replacement,
        uint256 offset,
        uint256 length
    ) internal pure returns (uint256[] memory) {
        // sanitize
        pos = Math.min(pos, array.length);
        offset = Math.min(offset, replacement.length);
        length = Math.min(length, Math.min(replacement.length - offset, array.length - pos));

        // replace
        assembly ("memory-safe") {
            mcopy(
                add(add(array, 0x20), mul(pos, 0x20)),
                add(add(replacement, 0x20), mul(offset, 0x20)),
                mul(length, 0x20)
            )
        }

        return array;
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(address[] storage arr, uint256 pos) internal pure returns (StorageSlot.AddressSlot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getAddressSlot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(bytes32[] storage arr, uint256 pos) internal pure returns (StorageSlot.Bytes32Slot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getBytes32Slot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(uint256[] storage arr, uint256 pos) internal pure returns (StorageSlot.Uint256Slot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getUint256Slot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(bytes[] storage arr, uint256 pos) internal pure returns (StorageSlot.BytesSlot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getBytesSlot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeAccess(string[] storage arr, uint256 pos) internal pure returns (StorageSlot.StringSlot storage) {
        bytes32 slot;
        assembly ("memory-safe") {
            slot := arr.slot
        }
        return slot.deriveArray().offset(pos).getStringSlot();
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(address[] memory arr, uint256 pos) internal pure returns (address res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(bytes32[] memory arr, uint256 pos) internal pure returns (bytes32 res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(uint256[] memory arr, uint256 pos) internal pure returns (uint256 res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(bytes[] memory arr, uint256 pos) internal pure returns (bytes memory res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Access an array in an "unsafe" way. Skips solidity "index-out-of-range" check.
     *
     * WARNING: Only use if you are certain `pos` is lower than the array length.
     */
    function unsafeMemoryAccess(string[] memory arr, uint256 pos) internal pure returns (string memory res) {
        assembly {
            res := mload(add(add(arr, 0x20), mul(pos, 0x20)))
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, or initialize elements if length is increased.
     */
    function unsafeSetLength(address[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, or initialize elements if length is increased.
     */
    function unsafeSetLength(bytes32[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, or initialize elements if length is increased.
     */
    function unsafeSetLength(uint256[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, or initialize elements if length is increased.
     */
    function unsafeSetLength(bytes[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }

    /**
     * @dev Helper to set the length of a dynamic array. Directly writing to `.length` is forbidden.
     *
     * WARNING: this does not clear elements if length is reduced, or initialize elements if length is increased.
     */
    function unsafeSetLength(string[] storage array, uint256 len) internal {
        assembly ("memory-safe") {
            sstore(array.slot, len)
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Bytes.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/Bytes.sol)

pragma solidity ^0.8.24;

import {Math} from "./math/Math.sol";

/**
 * @dev Bytes operations.
 */
library Bytes {
    /**
     * @dev Forward search for `s` in `buffer`
     * * If `s` is present in the buffer, returns the index of the first instance
     * * If `s` is not present in the buffer, returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf[Javascript's `Array.indexOf`]
     */
    function indexOf(bytes memory buffer, bytes1 s) internal pure returns (uint256) {
        return indexOf(buffer, s, 0);
    }

    /**
     * @dev Forward search for `s` in `buffer` starting at position `pos`
     * * If `s` is present in the buffer (at or after `pos`), returns the index of the next instance
     * * If `s` is not present in the buffer (at or after `pos`), returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf[Javascript's `Array.indexOf`]
     */
    function indexOf(bytes memory buffer, bytes1 s, uint256 pos) internal pure returns (uint256) {
        uint256 length = buffer.length;
        for (uint256 i = pos; i < length; ++i) {
            if (bytes1(_unsafeReadBytesOffset(buffer, i)) == s) {
                return i;
            }
        }
        return type(uint256).max;
    }

    /**
     * @dev Backward search for `s` in `buffer`
     * * If `s` is present in the buffer, returns the index of the last instance
     * * If `s` is not present in the buffer, returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf[Javascript's `Array.lastIndexOf`]
     */
    function lastIndexOf(bytes memory buffer, bytes1 s) internal pure returns (uint256) {
        return lastIndexOf(buffer, s, type(uint256).max);
    }

    /**
     * @dev Backward search for `s` in `buffer` starting at position `pos`
     * * If `s` is present in the buffer (at or before `pos`), returns the index of the previous instance
     * * If `s` is not present in the buffer (at or before `pos`), returns type(uint256).max
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/lastIndexOf[Javascript's `Array.lastIndexOf`]
     */
    function lastIndexOf(bytes memory buffer, bytes1 s, uint256 pos) internal pure returns (uint256) {
        unchecked {
            uint256 length = buffer.length;
            for (uint256 i = Math.min(Math.saturatingAdd(pos, 1), length); i > 0; --i) {
                if (bytes1(_unsafeReadBytesOffset(buffer, i - 1)) == s) {
                    return i - 1;
                }
            }
            return type(uint256).max;
        }
    }

    /**
     * @dev Copies the content of `buffer`, from `start` (included) to the end of `buffer` into a new bytes object in
     * memory.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(bytes memory buffer, uint256 start) internal pure returns (bytes memory) {
        return slice(buffer, start, buffer.length);
    }

    /**
     * @dev Copies the content of `buffer`, from `start` (included) to `end` (excluded) into a new bytes object in
     * memory. The `end` argument is truncated to the length of the `buffer`.
     *
     * NOTE: replicates the behavior of https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice[Javascript's `Array.slice`]
     */
    function slice(bytes memory buffer, uint256 start, uint256 end) internal pure returns (bytes memory) {
        // sanitize
        end = Math.min(end, buffer.length);
        start = Math.min(start, end);

        // allocate and copy
        bytes memory result = new bytes(end - start);
        assembly ("memory-safe") {
            mcopy(add(result, 0x20), add(add(buffer, 0x20), start), sub(end, start))
        }

        return result;
    }

    /**
     * @dev Moves the content of `buffer`, from `start` (included) to the end of `buffer` to the start of that buffer,
     * and shrinks the buffer length accordingly, effectively overriding the content of buffer with buffer[start:].
     *
     * NOTE: This function modifies the provided buffer in place. If you need to preserve the original buffer, use {slice} instead
     */
    function splice(bytes memory buffer, uint256 start) internal pure returns (bytes memory) {
        return splice(buffer, start, buffer.length);
    }

    /**
     * @dev Moves the content of `buffer`, from `start` (included) to `end` (excluded) to the start of that buffer,
     * and shrinks the buffer length accordingly, effectively overriding the content of buffer with buffer[start:end].
     * The `end` argument is truncated to the length of the `buffer`.
     *
     * NOTE: This function modifies the provided buffer in place. If you need to preserve the original buffer, use {slice} instead
     */
    function splice(bytes memory buffer, uint256 start, uint256 end) internal pure returns (bytes memory) {
        // sanitize
        end = Math.min(end, buffer.length);
        start = Math.min(start, end);

        // move and resize
        assembly ("memory-safe") {
            mcopy(add(buffer, 0x20), add(add(buffer, 0x20), start), sub(end, start))
            mstore(buffer, sub(end, start))
        }

        return buffer;
    }

    /**
     * @dev Replaces bytes in `buffer` starting at `pos` with all bytes from `replacement`.
     *
     * Parameters are clamped to valid ranges (i.e. `pos` is clamped to `[0, buffer.length]`).
     * If `pos >= buffer.length`, no replacement occurs and the buffer is returned unchanged.
     *
     * NOTE: This function modifies the provided buffer in place.
     */
    function replace(bytes memory buffer, uint256 pos, bytes memory replacement) internal pure returns (bytes memory) {
        return replace(buffer, pos, replacement, 0, replacement.length);
    }

    /**
     * @dev Replaces bytes in `buffer` starting at `pos` with bytes from `replacement` starting at `offset`.
     * Copies at most `length` bytes from `replacement` to `buffer`.
     *
     * Parameters are clamped to valid ranges (i.e. `pos` is clamped to `[0, buffer.length]`, `offset` is
     * clamped to `[0, replacement.length]`, and `length` is clamped to `min(length, replacement.length - offset,
     * buffer.length - pos))`. If `pos >= buffer.length` or `offset >= replacement.length`, no replacement occurs
     * and the buffer is returned unchanged.
     *
     * NOTE: This function modifies the provided buffer in place.
     */
    function replace(
        bytes memory buffer,
        uint256 pos,
        bytes memory replacement,
        uint256 offset,
        uint256 length
    ) internal pure returns (bytes memory) {
        // sanitize
        pos = Math.min(pos, buffer.length);
        offset = Math.min(offset, replacement.length);
        length = Math.min(length, Math.min(replacement.length - offset, buffer.length - pos));

        // replace
        assembly ("memory-safe") {
            mcopy(add(add(buffer, 0x20), pos), add(add(replacement, 0x20), offset), length)
        }

        return buffer;
    }

    /**
     * @dev Concatenate an array of bytes into a single bytes object.
     *
     * For fixed bytes types, we recommend using the solidity built-in `bytes.concat` or (equivalent)
     * `abi.encodePacked`.
     *
     * NOTE: this could be done in assembly with a single loop that expands starting at the FMP, but that would be
     * significantly less readable. It might be worth benchmarking the savings of the full-assembly approach.
     */
    function concat(bytes[] memory buffers) internal pure returns (bytes memory) {
        uint256 length = 0;
        for (uint256 i = 0; i < buffers.length; ++i) {
            length += buffers[i].length;
        }

        bytes memory result = new bytes(length);

        uint256 offset = 0x20;
        for (uint256 i = 0; i < buffers.length; ++i) {
            bytes memory input = buffers[i];
            assembly ("memory-safe") {
                mcopy(add(result, offset), add(input, 0x20), mload(input))
            }
            unchecked {
                offset += input.length;
            }
        }

        return result;
    }

    /**
     * @dev Split each byte in `input` into two nibbles (4 bits each)
     *
     * Example: hex"01234567" → hex"0001020304050607"
     */
    function toNibbles(bytes memory input) internal pure returns (bytes memory output) {
        assembly ("memory-safe") {
            let length := mload(input)
            output := mload(0x40)
            mstore(0x40, add(add(output, 0x20), mul(length, 2)))
            mstore(output, mul(length, 2))
            for {
                let i := 0
            } lt(i, length) {
                i := add(i, 0x10)
            } {
                let chunk := shr(128, mload(add(add(input, 0x20), i)))
                chunk := and(
                    0x0000000000000000ffffffffffffffff0000000000000000ffffffffffffffff,
                    or(shl(64, chunk), chunk)
                )
                chunk := and(
                    0x00000000ffffffff00000000ffffffff00000000ffffffff00000000ffffffff,
                    or(shl(32, chunk), chunk)
                )
                chunk := and(
                    0x0000ffff0000ffff0000ffff0000ffff0000ffff0000ffff0000ffff0000ffff,
                    or(shl(16, chunk), chunk)
                )
                chunk := and(
                    0x00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff00ff,
                    or(shl(8, chunk), chunk)
                )
                chunk := and(
                    0x0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f,
                    or(shl(4, chunk), chunk)
                )
                mstore(add(add(output, 0x20), mul(i, 2)), chunk)
            }
        }
    }

    /**
     * @dev Returns true if the two byte buffers are equal.
     */
    function equal(bytes memory a, bytes memory b) internal pure returns (bool) {
        return a.length == b.length && keccak256(a) == keccak256(b);
    }

    /**
     * @dev Reverses the byte order of a bytes32 value, converting between little-endian and big-endian.
     * Inspired by https://graphics.stanford.edu/~seander/bithacks.html#ReverseParallel[Reverse Parallel]
     */
    function reverseBytes32(bytes32 value) internal pure returns (bytes32) {
        value = // swap bytes
            ((value >> 8) & 0x00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF) |
            ((value & 0x00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF) << 8);
        value = // swap 2-byte long pairs
            ((value >> 16) & 0x0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF) |
            ((value & 0x0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF) << 16);
        value = // swap 4-byte long pairs
            ((value >> 32) & 0x00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF) |
            ((value & 0x00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF) << 32);
        value = // swap 8-byte long pairs
            ((value >> 64) & 0x0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF) |
            ((value & 0x0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF) << 64);
        return (value >> 128) | (value << 128); // swap 16-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 128-bit values.
    function reverseBytes16(bytes16 value) internal pure returns (bytes16) {
        value = // swap bytes
            ((value & 0xFF00FF00FF00FF00FF00FF00FF00FF00) >> 8) |
            ((value & 0x00FF00FF00FF00FF00FF00FF00FF00FF) << 8);
        value = // swap 2-byte long pairs
            ((value & 0xFFFF0000FFFF0000FFFF0000FFFF0000) >> 16) |
            ((value & 0x0000FFFF0000FFFF0000FFFF0000FFFF) << 16);
        value = // swap 4-byte long pairs
            ((value & 0xFFFFFFFF00000000FFFFFFFF00000000) >> 32) |
            ((value & 0x00000000FFFFFFFF00000000FFFFFFFF) << 32);
        return (value >> 64) | (value << 64); // swap 8-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 64-bit values.
    function reverseBytes8(bytes8 value) internal pure returns (bytes8) {
        value = ((value & 0xFF00FF00FF00FF00) >> 8) | ((value & 0x00FF00FF00FF00FF) << 8); // swap bytes
        value = ((value & 0xFFFF0000FFFF0000) >> 16) | ((value & 0x0000FFFF0000FFFF) << 16); // swap 2-byte long pairs
        return (value >> 32) | (value << 32); // swap 4-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 32-bit values.
    function reverseBytes4(bytes4 value) internal pure returns (bytes4) {
        value = ((value & 0xFF00FF00) >> 8) | ((value & 0x00FF00FF) << 8); // swap bytes
        return (value >> 16) | (value << 16); // swap 2-byte long pairs
    }

    /// @dev Same as {reverseBytes32} but optimized for 16-bit values.
    function reverseBytes2(bytes2 value) internal pure returns (bytes2) {
        return (value >> 8) | (value << 8);
    }

    /**
     * @dev Counts the number of leading zero bits a bytes array. Returns `8 * buffer.length`
     * if the buffer is all zeros.
     */
    function clz(bytes memory buffer) internal pure returns (uint256) {
        for (uint256 i = 0; i < buffer.length; i += 0x20) {
            bytes32 chunk = _unsafeReadBytesOffset(buffer, i);
            if (chunk != bytes32(0)) {
                return Math.min(8 * i + Math.clz(uint256(chunk)), 8 * buffer.length);
            }
        }
        return 8 * buffer.length;
    }

    /**
     * @dev Reads a bytes32 from a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeReadBytesOffset(bytes memory buffer, uint256 offset) private pure returns (bytes32 value) {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        assembly ("memory-safe") {
            value := mload(add(add(buffer, 0x20), offset))
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Comparators.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Comparators.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides a set of functions to compare values.
 *
 * _Available since v5.1._
 */
library Comparators {
    function lt(uint256 a, uint256 b) internal pure returns (bool) {
        return a < b;
    }

    function gt(uint256 a, uint256 b) internal pure returns (bool) {
        return a > b;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.20;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS
    }

    /**
     * @dev The signature is invalid.
     */
    error ECDSAInvalidSignature();

    /**
     * @dev The signature has an invalid length.
     */
    error ECDSAInvalidSignatureLength(uint256 length);

    /**
     * @dev The signature has an S value that is in the upper half order.
     */
    error ECDSAInvalidSignatureS(bytes32 s);

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with `signature` or an error. This will not
     * return address(0) without also returning an error description. Errors are documented using an enum (error type)
     * and a bytes32 providing additional information about the error.
     *
     * If no error is returned, then the address can be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * NOTE: This function only supports 65-byte signatures. ERC-2098 short signatures are rejected. This restriction
     * is DEPRECATED and will be removed in v6.0. Developers SHOULD NOT use signatures as unique identifiers; use hash
     * invalidation or nonces for replay protection.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     *
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function tryRecover(
        bytes32 hash,
        bytes memory signature
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            assembly ("memory-safe") {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Variant of {tryRecover} that takes a signature in calldata
     */
    function tryRecoverCalldata(
        bytes32 hash,
        bytes calldata signature
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, calldata slices would work here, but are
            // significantly more expensive (length check) than using calldataload in assembly.
            assembly ("memory-safe") {
                r := calldataload(signature.offset)
                s := calldataload(add(signature.offset, 0x20))
                v := byte(0, calldataload(add(signature.offset, 0x40)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * NOTE: This function only supports 65-byte signatures. ERC-2098 short signatures are rejected. This restriction
     * is DEPRECATED and will be removed in v6.0. Developers SHOULD NOT use signatures as unique identifiers; use hash
     * invalidation or nonces for replay protection.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Variant of {recover} that takes a signature in calldata
     */
    function recoverCalldata(bytes32 hash, bytes calldata signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecoverCalldata(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[ERC-2098 short signatures]
     */
    function tryRecover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        unchecked {
            bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            // We do not check for an overflow here since the shift operation results in 0 or 1.
            uint8 v = uint8((uint256(vs) >> 255) + 27);
            return tryRecover(hash, v, r, s);
        }
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r` and `vs` short-signature fields separately.
     */
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, r, vs);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS, s);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature, bytes32(0));
        }

        return (signer, RecoverError.NoError, bytes32(0));
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, v, r, s);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Parse a signature into its `v`, `r` and `s` components. Supports 65-byte and 64-byte (ERC-2098)
     * formats. Returns (0,0,0) for invalid signatures.
     *
     * For 64-byte signatures, `v` is automatically normalized to 27 or 28.
     * For 65-byte signatures, `v` is returned as-is and MUST already be 27 or 28 for use with ecrecover.
     *
     * Consider validating the result before use, or use {tryRecover}/{recover} which perform full validation.
     */
    function parse(bytes memory signature) internal pure returns (uint8 v, bytes32 r, bytes32 s) {
        assembly ("memory-safe") {
            // Check the signature length
            switch mload(signature)
            // - case 65: r,s,v signature (standard)
            case 65 {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098)
            case 64 {
                let vs := mload(add(signature, 0x40))
                r := mload(add(signature, 0x20))
                s := and(vs, shr(1, not(0)))
                v := add(shr(255, vs), 27)
            }
            default {
                r := 0
                s := 0
                v := 0
            }
        }
    }

    /**
     * @dev Variant of {parse} that takes a signature in calldata
     */
    function parseCalldata(bytes calldata signature) internal pure returns (uint8 v, bytes32 r, bytes32 s) {
        assembly ("memory-safe") {
            // Check the signature length
            switch signature.length
            // - case 65: r,s,v signature (standard)
            case 65 {
                r := calldataload(signature.offset)
                s := calldataload(add(signature.offset, 0x20))
                v := byte(0, calldataload(add(signature.offset, 0x40)))
            }
            // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098)
            case 64 {
                let vs := calldataload(add(signature.offset, 0x20))
                r := calldataload(signature.offset)
                s := and(vs, shr(1, not(0)))
                v := add(shr(255, vs), 27)
            }
            default {
                r := 0
                s := 0
                v := 0
            }
        }
    }

    /**
     * @dev Optionally reverts with the corresponding custom error according to the `error` argument provided.
     */
    function _throwError(RecoverError error, bytes32 errorArg) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert ECDSAInvalidSignature();
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert ECDSAInvalidSignatureLength(uint256(errorArg));
        } else if (error == RecoverError.InvalidSignatureS) {
            revert ECDSAInvalidSignatureS(errorArg);
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/cryptography/EIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/cryptography/EIP712.sol)

pragma solidity ^0.8.24;

import {MessageHashUtils} from "./MessageHashUtils.sol";
import {ShortStrings, ShortString} from "../ShortStrings.sol";
import {IERC5267} from "../../interfaces/IERC5267.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP-712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding scheme specified in the EIP requires a domain separator and a hash of the typed structured data, whose
 * encoding is very generic and therefore its implementation in Solidity is not feasible, thus this contract
 * does not implement the encoding itself. Protocols need to implement the type-specific encoding they need in order to
 * produce the hash of their typed data using a combination of `abi.encode` and `keccak256`.
 *
 * This contract implements the EIP-712 domain separator ({_domainSeparatorV4}) that is used as part of the encoding
 * scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA
 * ({_hashTypedDataV4}).
 *
 * The implementation of the domain separator was designed to be as efficient as possible while still properly updating
 * the chain id to protect against replay attacks on an eventual fork of the chain.
 *
 * NOTE: This contract implements the version of the encoding known as "v4", as implemented by the JSON RPC method
 * https://docs.metamask.io/guide/signing-data.html[`eth_signTypedDataV4` in MetaMask].
 *
 * NOTE: In the upgradeable version of this contract, the cached values will correspond to the address, and the domain
 * separator of the implementation contract. This will cause the {_domainSeparatorV4} function to always rebuild the
 * separator from the immutable values, which is cheaper than accessing a cached version in cold storage.
 *
 * @custom:oz-upgrades-unsafe-allow state-variable-immutable
 */
abstract contract EIP712 is IERC5267 {
    using ShortStrings for *;

    bytes32 private constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    // Cache the domain separator as an immutable value, but also store the chain id that it corresponds to, in order to
    // invalidate the cached domain separator if the chain id changes.
    bytes32 private immutable _cachedDomainSeparator;
    uint256 private immutable _cachedChainId;
    address private immutable _cachedThis;

    bytes32 private immutable _hashedName;
    bytes32 private immutable _hashedVersion;

    ShortString private immutable _name;
    ShortString private immutable _version;
    // slither-disable-next-line constable-states
    string private _nameFallback;
    // slither-disable-next-line constable-states
    string private _versionFallback;

    /**
     * @dev Initializes the domain separator and parameter caches.
     *
     * The meaning of `name` and `version` is specified in
     * https://eips.ethereum.org/EIPS/eip-712#definition-of-domainseparator[EIP-712]:
     *
     * - `name`: the user readable name of the signing domain, i.e. the name of the DApp or the protocol.
     * - `version`: the current major version of the signing domain.
     *
     * NOTE: These parameters cannot be changed except through a xref:learn::upgrading-smart-contracts.adoc[smart
     * contract upgrade].
     */
    constructor(string memory name, string memory version) {
        _name = name.toShortStringWithFallback(_nameFallback);
        _version = version.toShortStringWithFallback(_versionFallback);
        _hashedName = keccak256(bytes(name));
        _hashedVersion = keccak256(bytes(version));

        _cachedChainId = block.chainid;
        _cachedDomainSeparator = _buildDomainSeparator();
        _cachedThis = address(this);
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        if (address(this) == _cachedThis && block.chainid == _cachedChainId) {
            return _cachedDomainSeparator;
        } else {
            return _buildDomainSeparator();
        }
    }

    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, _hashedName, _hashedVersion, block.chainid, address(this)));
    }

    /**
     * @dev Given an already https://eips.ethereum.org/EIPS/eip-712#definition-of-hashstruct[hashed struct], this
     * function returns the hash of the fully encoded EIP712 message for this domain.
     *
     * This hash can be used together with {ECDSA-recover} to obtain the signer of a message. For example:
     *
     * ```solidity
     * bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
     *     keccak256("Mail(address to,string contents)"),
     *     mailTo,
     *     keccak256(bytes(mailContents))
     * )));
     * address signer = ECDSA.recover(digest, signature);
     * ```
     */
    function _hashTypedDataV4(bytes32 structHash) internal view virtual returns (bytes32) {
        return MessageHashUtils.toTypedDataHash(_domainSeparatorV4(), structHash);
    }

    /// @inheritdoc IERC5267
    function eip712Domain()
        public
        view
        virtual
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        )
    {
        return (
            hex"0f", // 01111
            _EIP712Name(),
            _EIP712Version(),
            block.chainid,
            address(this),
            bytes32(0),
            new uint256[](0)
        );
    }

    /**
     * @dev The name parameter for the EIP712 domain.
     *
     * NOTE: By default this function reads _name which is an immutable value.
     * It only reads from storage if necessary (in case the value is too large to fit in a ShortString).
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Name() internal view returns (string memory) {
        return _name.toStringWithFallback(_nameFallback);
    }

    /**
     * @dev The version parameter for the EIP712 domain.
     *
     * NOTE: By default this function reads _version which is an immutable value.
     * It only reads from storage if necessary (in case the value is too large to fit in a ShortString).
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Version() internal view returns (string memory) {
        return _version.toStringWithFallback(_versionFallback);
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/cryptography/MessageHashUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/cryptography/MessageHashUtils.sol)

pragma solidity ^0.8.24;

import {Strings} from "../Strings.sol";

/**
 * @dev Signature message hash utilities for producing digests to be consumed by {ECDSA} recovery or signing.
 *
 * The library provides methods for generating a hash of a message that conforms to the
 * https://eips.ethereum.org/EIPS/eip-191[ERC-191] and https://eips.ethereum.org/EIPS/eip-712[EIP 712]
 * specifications.
 */
library MessageHashUtils {
    error ERC5267ExtensionsNotSupported();

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing a bytes32 `messageHash` with
     * `"\x19Ethereum Signed Message:\n32"` and hashing the result. It corresponds with the
     * hash signed when using the https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * NOTE: The `messageHash` parameter is intended to be the result of hashing a raw message with
     * keccak256, although any bytes32 value can be safely used because the final digest will
     * be re-hashed.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes32 messageHash) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            mstore(0x00, "\x19Ethereum Signed Message:\n32") // 32 is the bytes-length of messageHash
            mstore(0x1c, messageHash) // 0x1c (28) is the length of the prefix
            digest := keccak256(0x00, 0x3c) // 0x3c is the length of the prefix (0x1c) + messageHash (0x20)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing an arbitrary `message` with
     * `"\x19Ethereum Signed Message:\n" + len(message)` and hashing the result. It corresponds with the
     * hash signed when using the https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes memory message) internal pure returns (bytes32) {
        return
            keccak256(bytes.concat("\x19Ethereum Signed Message:\n", bytes(Strings.toString(message.length)), message));
    }

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x00` (data with intended validator).
     *
     * The digest is calculated by prefixing an arbitrary `data` with `"\x19\x00"` and the intended
     * `validator` address. Then hashing the result.
     *
     * See {ECDSA-recover}.
     */
    function toDataWithIntendedValidatorHash(address validator, bytes memory data) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(hex"19_00", validator, data));
    }

    /**
     * @dev Variant of {toDataWithIntendedValidatorHash-address-bytes} optimized for cases where `data` is a bytes32.
     */
    function toDataWithIntendedValidatorHash(
        address validator,
        bytes32 messageHash
    ) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            mstore(0x00, hex"19_00")
            mstore(0x02, shl(96, validator))
            mstore(0x16, messageHash)
            digest := keccak256(0x00, 0x36)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-712 typed data (ERC-191 version `0x01`).
     *
     * The digest is calculated from a `domainSeparator` and a `structHash`, by prefixing them with
     * `\x19\x01` and hashing the result. It corresponds to the hash signed by the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`] JSON-RPC method as part of EIP-712.
     *
     * See {ECDSA-recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(ptr, hex"19_01")
            mstore(add(ptr, 0x02), domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            digest := keccak256(ptr, 0x42)
        }
    }

    /**
     * @dev Returns the EIP-712 domain separator constructed from an `eip712Domain`. See {IERC5267-eip712Domain}
     *
     * This function dynamically constructs the domain separator based on which fields are present in the
     * `fields` parameter. It contains flags that indicate which domain fields are present:
     *
     * * Bit 0 (0x01): name
     * * Bit 1 (0x02): version
     * * Bit 2 (0x04): chainId
     * * Bit 3 (0x08): verifyingContract
     * * Bit 4 (0x10): salt
     *
     * Arguments that correspond to fields which are not present in `fields` are ignored. For example, if `fields` is
     * `0x0f` (`0b01111`), then the `salt` parameter is ignored.
     */
    function toDomainSeparator(
        bytes1 fields,
        string memory name,
        string memory version,
        uint256 chainId,
        address verifyingContract,
        bytes32 salt
    ) internal pure returns (bytes32 hash) {
        return
            toDomainSeparator(
                fields,
                keccak256(bytes(name)),
                keccak256(bytes(version)),
                chainId,
                verifyingContract,
                salt
            );
    }

    /// @dev Variant of {toDomainSeparator-bytes1-string-string-uint256-address-bytes32} that uses hashed name and version.
    function toDomainSeparator(
        bytes1 fields,
        bytes32 nameHash,
        bytes32 versionHash,
        uint256 chainId,
        address verifyingContract,
        bytes32 salt
    ) internal pure returns (bytes32 hash) {
        bytes32 domainTypeHash = toDomainTypeHash(fields);

        assembly ("memory-safe") {
            // align fields to the right for easy processing
            fields := shr(248, fields)

            // FMP used as scratch space
            let fmp := mload(0x40)
            mstore(fmp, domainTypeHash)

            let ptr := add(fmp, 0x20)
            if and(fields, 0x01) {
                mstore(ptr, nameHash)
                ptr := add(ptr, 0x20)
            }
            if and(fields, 0x02) {
                mstore(ptr, versionHash)
                ptr := add(ptr, 0x20)
            }
            if and(fields, 0x04) {
                mstore(ptr, chainId)
                ptr := add(ptr, 0x20)
            }
            if and(fields, 0x08) {
                mstore(ptr, verifyingContract)
                ptr := add(ptr, 0x20)
            }
            if and(fields, 0x10) {
                mstore(ptr, salt)
                ptr := add(ptr, 0x20)
            }

            hash := keccak256(fmp, sub(ptr, fmp))
        }
    }

    /// @dev Builds an EIP-712 domain type hash depending on the `fields` provided, following https://eips.ethereum.org/EIPS/eip-5267[ERC-5267]
    function toDomainTypeHash(bytes1 fields) internal pure returns (bytes32 hash) {
        if (fields & 0x20 == 0x20) revert ERC5267ExtensionsNotSupported();

        assembly ("memory-safe") {
            // align fields to the right for easy processing
            fields := shr(248, fields)

            // FMP used as scratch space
            let fmp := mload(0x40)
            mstore(fmp, "EIP712Domain(")

            let ptr := add(fmp, 0x0d)
            // name field
            if and(fields, 0x01) {
                mstore(ptr, "string name,")
                ptr := add(ptr, 0x0c)
            }
            // version field
            if and(fields, 0x02) {
                mstore(ptr, "string version,")
                ptr := add(ptr, 0x0f)
            }
            // chainId field
            if and(fields, 0x04) {
                mstore(ptr, "uint256 chainId,")
                ptr := add(ptr, 0x10)
            }
            // verifyingContract field
            if and(fields, 0x08) {
                mstore(ptr, "address verifyingContract,")
                ptr := add(ptr, 0x1a)
            }
            // salt field
            if and(fields, 0x10) {
                mstore(ptr, "bytes32 salt,")
                ptr := add(ptr, 0x0d)
            }
            // if any field is enabled, remove the trailing comma
            ptr := sub(ptr, iszero(iszero(and(fields, 0x1f))))
            // add the closing brace
            mstore8(ptr, 0x29) // add closing brace
            ptr := add(ptr, 1)

            hash := keccak256(fmp, sub(ptr, fmp))
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/cryptography/SignatureChecker.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/cryptography/SignatureChecker.sol)

pragma solidity ^0.8.24;

import {ECDSA} from "./ECDSA.sol";
import {IERC1271} from "../../interfaces/IERC1271.sol";
import {IERC7913SignatureVerifier} from "../../interfaces/IERC7913.sol";
import {Bytes} from "../Bytes.sol";

/**
 * @dev Signature verification helper that can be used instead of `ECDSA.recover` to seamlessly support:
 *
 * * ECDSA signatures from externally owned accounts (EOAs)
 * * ERC-1271 signatures from smart contract wallets like Argent and Safe Wallet (previously Gnosis Safe)
 * * ERC-7913 signatures from keys that do not have an Ethereum address of their own
 *
 * See https://eips.ethereum.org/EIPS/eip-1271[ERC-1271] and https://eips.ethereum.org/EIPS/eip-7913[ERC-7913].
 */
library SignatureChecker {
    using Bytes for bytes;

    /**
     * @dev Checks if a signature is valid for a given signer and data hash. If the signer has code, the
     * signature is validated against it using ERC-1271, otherwise it's validated using `ECDSA.recover`.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     *
     * NOTE: For an extended version of this function that supports ERC-7913 signatures, see {isValidSignatureNow-bytes-bytes32-bytes-}.
     */
    function isValidSignatureNow(address signer, bytes32 hash, bytes memory signature) internal view returns (bool) {
        if (signer.code.length == 0) {
            (address recovered, ECDSA.RecoverError err, ) = ECDSA.tryRecover(hash, signature);
            return err == ECDSA.RecoverError.NoError && recovered == signer;
        } else {
            return isValidERC1271SignatureNow(signer, hash, signature);
        }
    }

    /**
     * @dev Variant of {isValidSignatureNow} that takes a signature in calldata
     */
    function isValidSignatureNowCalldata(
        address signer,
        bytes32 hash,
        bytes calldata signature
    ) internal view returns (bool) {
        if (signer.code.length == 0) {
            (address recovered, ECDSA.RecoverError err, ) = ECDSA.tryRecoverCalldata(hash, signature);
            return err == ECDSA.RecoverError.NoError && recovered == signer;
        } else {
            return isValidERC1271SignatureNowCalldata(signer, hash, signature);
        }
    }

    /**
     * @dev Checks if a signature is valid for a given signer and data hash. The signature is validated
     * against the signer smart contract using ERC-1271.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidERC1271SignatureNow(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool result) {
        bytes4 selector = IERC1271.isValidSignature.selector;
        uint256 length = signature.length;

        assembly ("memory-safe") {
            // Encoded calldata is :
            // [ 0x00 - 0x03 ] <selector>
            // [ 0x04 - 0x23 ] <hash>
            // [ 0x24 - 0x43 ] <signature offset> (0x40)
            // [ 0x44 - 0x63 ] <signature length>
            // [ 0x64 - ...  ] <signature data>
            let ptr := mload(0x40)
            mstore(ptr, selector)
            mstore(add(ptr, 0x04), hash)
            mstore(add(ptr, 0x24), 0x40)
            mcopy(add(ptr, 0x44), signature, add(length, 0x20))

            let success := staticcall(gas(), signer, ptr, add(length, 0x64), 0x00, 0x20)
            result := and(success, and(gt(returndatasize(), 0x1f), eq(mload(0x00), selector)))
        }
    }

    function isValidERC1271SignatureNowCalldata(
        address signer,
        bytes32 hash,
        bytes calldata signature
    ) internal view returns (bool result) {
        bytes4 selector = IERC1271.isValidSignature.selector;
        uint256 length = signature.length;

        assembly ("memory-safe") {
            // Encoded calldata is :
            // [ 0x00 - 0x03 ] <selector>
            // [ 0x04 - 0x23 ] <hash>
            // [ 0x24 - 0x43 ] <signature offset> (0x40)
            // [ 0x44 - 0x63 ] <signature length>
            // [ 0x64 - ...  ] <signature data>
            let ptr := mload(0x40)
            mstore(ptr, selector)
            mstore(add(ptr, 0x04), hash)
            mstore(add(ptr, 0x24), 0x40)
            mstore(add(ptr, 0x44), length)
            calldatacopy(add(ptr, 0x64), signature.offset, length)

            let success := staticcall(gas(), signer, ptr, add(length, 0x64), 0x00, 0x20)
            result := and(success, and(gt(returndatasize(), 0x1f), eq(mload(0x00), selector)))
        }
    }

    /**
     * @dev Verifies a signature for a given ERC-7913 signer and hash.
     *
     * The signer is a `bytes` object that is the concatenation of an address and optionally a key:
     * `verifier || key`. A signer must be at least 20 bytes long.
     *
     * Verification is done as follows:
     *
     * * If `signer.length < 20`: verification fails
     * * If `signer.length == 20`: verification is done using {isValidSignatureNow}
     * * Otherwise: verification is done using {IERC7913SignatureVerifier}
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidSignatureNow(
        bytes memory signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool) {
        if (signer.length < 20) {
            return false;
        } else if (signer.length == 20) {
            return isValidSignatureNow(address(bytes20(signer)), hash, signature);
        } else {
            (bool success, bytes memory result) = address(bytes20(signer)).staticcall(
                abi.encodeCall(IERC7913SignatureVerifier.verify, (signer.slice(20), hash, signature))
            );
            return (success &&
                result.length >= 32 &&
                abi.decode(result, (bytes32)) == bytes32(IERC7913SignatureVerifier.verify.selector));
        }
    }

    /**
     * @dev Verifies multiple ERC-7913 `signatures` for a given `hash` using a set of `signers`.
     * Returns `false` if the number of signers and signatures is not the same.
     *
     * The signers should be ordered by their `keccak256` hash to ensure efficient duplication check. Unordered
     * signers are supported, but the uniqueness check will be more expensive.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function areValidSignaturesNow(
        bytes32 hash,
        bytes[] memory signers,
        bytes[] memory signatures
    ) internal view returns (bool) {
        if (signers.length != signatures.length) return false;

        bytes32 lastId = bytes32(0);

        for (uint256 i = 0; i < signers.length; ++i) {
            bytes memory signer = signers[i];

            // If one of the signatures is invalid, reject the batch
            if (!isValidSignatureNow(signer, hash, signatures[i])) return false;

            bytes32 id = keccak256(signer);
            // If the current signer ID is greater than all previous IDs, then this is a new signer.
            if (lastId < id) {
                lastId = id;
            } else {
                // If this signer id is not greater than all the previous ones, verify that it is not a duplicate of a previous one
                // This loop is never executed if the signers are ordered by id.
                for (uint256 j = 0; j < i; ++j) {
                    if (id == keccak256(signers[j])) return false;
                }
            }
        }

        return true;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Errors.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of common custom errors used in multiple contracts
 *
 * IMPORTANT: Backwards compatibility is not guaranteed in future versions of the library.
 * It is recommended to avoid relying on the error API for critical functionality.
 *
 * _Available since v5.1._
 */
library Errors {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error InsufficientBalance(uint256 balance, uint256 needed);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedCall();

    /**
     * @dev The deployment failed.
     */
    error FailedDeployment();

    /**
     * @dev A necessary precompile is missing.
     */
    error MissingPrecompile(address);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165 is IERC165 {
    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/IERC165.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/LowLevelCall.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/LowLevelCall.sol)

pragma solidity ^0.8.20;

/**
 * @dev Library of low level call functions that implement different calling strategies to deal with the return data.
 *
 * WARNING: Using this library requires an advanced understanding of Solidity and how the EVM works. It is recommended
 * to use the {Address} library instead.
 */
library LowLevelCall {
    /// @dev Performs a Solidity function call using a low level `call` and ignoring the return data.
    function callNoReturn(address target, bytes memory data) internal returns (bool success) {
        return callNoReturn(target, 0, data);
    }

    /// @dev Same as {callNoReturn-address-bytes}, but allows specifying the value to be sent in the call.
    function callNoReturn(address target, uint256 value, bytes memory data) internal returns (bool success) {
        assembly ("memory-safe") {
            success := call(gas(), target, value, add(data, 0x20), mload(data), 0x00, 0x00)
        }
    }

    /// @dev Performs a Solidity function call using a low level `call` and returns the first 64 bytes of the result
    /// in the scratch space of memory. Useful for functions that return a tuple with two single-word values.
    ///
    /// WARNING: Do not assume that the results are zero if `success` is false. Memory can be already allocated
    /// and this function doesn't zero it out.
    function callReturn64Bytes(
        address target,
        bytes memory data
    ) internal returns (bool success, bytes32 result1, bytes32 result2) {
        return callReturn64Bytes(target, 0, data);
    }

    /// @dev Same as {callReturn64Bytes-address-bytes}, but allows specifying the value to be sent in the call.
    function callReturn64Bytes(
        address target,
        uint256 value,
        bytes memory data
    ) internal returns (bool success, bytes32 result1, bytes32 result2) {
        assembly ("memory-safe") {
            success := call(gas(), target, value, add(data, 0x20), mload(data), 0x00, 0x40)
            result1 := mload(0x00)
            result2 := mload(0x20)
        }
    }

    /// @dev Performs a Solidity function call using a low level `staticcall` and ignoring the return data.
    function staticcallNoReturn(address target, bytes memory data) internal view returns (bool success) {
        assembly ("memory-safe") {
            success := staticcall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x00)
        }
    }

    /// @dev Performs a Solidity function call using a low level `staticcall` and returns the first 64 bytes of the result
    /// in the scratch space of memory. Useful for functions that return a tuple with two single-word values.
    ///
    /// WARNING: Do not assume that the results are zero if `success` is false. Memory can be already allocated
    /// and this function doesn't zero it out.
    function staticcallReturn64Bytes(
        address target,
        bytes memory data
    ) internal view returns (bool success, bytes32 result1, bytes32 result2) {
        assembly ("memory-safe") {
            success := staticcall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x40)
            result1 := mload(0x00)
            result2 := mload(0x20)
        }
    }

    /// @dev Performs a Solidity function call using a low level `delegatecall` and ignoring the return data.
    function delegatecallNoReturn(address target, bytes memory data) internal returns (bool success) {
        assembly ("memory-safe") {
            success := delegatecall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x00)
        }
    }

    /// @dev Performs a Solidity function call using a low level `delegatecall` and returns the first 64 bytes of the result
    /// in the scratch space of memory. Useful for functions that return a tuple with two single-word values.
    ///
    /// WARNING: Do not assume that the results are zero if `success` is false. Memory can be already allocated
    /// and this function doesn't zero it out.
    function delegatecallReturn64Bytes(
        address target,
        bytes memory data
    ) internal returns (bool success, bytes32 result1, bytes32 result2) {
        assembly ("memory-safe") {
            success := delegatecall(gas(), target, add(data, 0x20), mload(data), 0x00, 0x40)
            result1 := mload(0x00)
            result2 := mload(0x20)
        }
    }

    /// @dev Returns the size of the return data buffer.
    function returnDataSize() internal pure returns (uint256 size) {
        assembly ("memory-safe") {
            size := returndatasize()
        }
    }

    /// @dev Returns a buffer containing the return data from the last call.
    function returnData() internal pure returns (bytes memory result) {
        assembly ("memory-safe") {
            result := mload(0x40)
            mstore(result, returndatasize())
            returndatacopy(add(result, 0x20), 0x00, returndatasize())
            mstore(0x40, add(result, add(0x20, returndatasize())))
        }
    }

    /// @dev Revert with the return data from the last call.
    function bubbleRevert() internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            returndatacopy(fmp, 0x00, returndatasize())
            revert(fmp, returndatasize())
        }
    }

    function bubbleRevert(bytes memory returndata) internal pure {
        assembly ("memory-safe") {
            revert(add(returndata, 0x20), mload(returndata))
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

import {Panic} from "../Panic.sol";
import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Return the 512-bit addition of two uint256.
     *
     * The result is stored in two 256 variables such that sum = high * 2²⁵⁶ + low.
     */
    function add512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        assembly ("memory-safe") {
            low := add(a, b)
            high := lt(low, a)
        }
    }

    /**
     * @dev Return the 512-bit multiplication of two uint256.
     *
     * The result is stored in two 256 variables such that product = high * 2²⁵⁶ + low.
     */
    function mul512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        // 512-bit multiply [high low] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
        // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = high * 2²⁵⁶ + low.
        assembly ("memory-safe") {
            let mm := mulmod(a, b, not(0))
            low := mul(a, b)
            high := sub(sub(mm, low), lt(mm, low))
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, with a success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            success = c >= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with a success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a - b;
            success = c <= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with a success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a * b;
            assembly ("memory-safe") {
                // Only true when the multiplication doesn't overflow
                // (c / a == b) || (a == 0)
                success := or(eq(div(c, a), b), iszero(a))
            }
            // equivalent to: success ? c : 0
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `DIV` opcode returns zero when the denominator is 0.
                result := div(a, b)
            }
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `MOD` opcode returns zero when the denominator is 0.
                result := mod(a, b)
            }
        }
    }

    /**
     * @dev Unsigned saturating addition, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryAdd(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Unsigned saturating subtraction, bounds to zero instead of overflowing.
     */
    function saturatingSub(uint256 a, uint256 b) internal pure returns (uint256) {
        (, uint256 result) = trySub(a, b);
        return result;
    }

    /**
     * @dev Unsigned saturating multiplication, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingMul(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryMul(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Branchless ternary evaluation for `condition ? a : b`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `condition ? a : b`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * SafeCast.toUint(condition));
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // (a + b) / 2 can overflow.
            return (a & b) + (a ^ b) / 2;
        }
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return SafeCast.toUint(a > 0) * ((a - 1) / b + 1);
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);

            // Handle non-overflow cases, 256 by 256 division.
            if (high == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return low / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= high) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [high low].
            uint256 remainder;
            assembly ("memory-safe") {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                high := sub(high, gt(remainder, low))
                low := sub(low, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly ("memory-safe") {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [high low] by twos.
                low := div(low, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from high into low.
            low |= high * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and high
            // is no longer required.
            result = low * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculates floor(x * y >> n) with full precision. Throws if result overflows a uint256.
     */
    function mulShr(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);
            if (high >= 1 << n) {
                Panic.panic(Panic.UNDER_OVERFLOW);
            }
            return (high << (256 - n)) | (low >> n);
        }
    }

    /**
     * @dev Calculates x * y >> n with full precision, following the selected rounding direction.
     */
    function mulShr(uint256 x, uint256 y, uint8 n, Rounding rounding) internal pure returns (uint256) {
        return mulShr(x, y, n) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, 1 << n) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, except 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Fermat's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`. See {invModPrime}.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return ternary(x < 0, n - uint256(-x), uint256(x)); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Variant of {invMod}. More efficient, but only works if `p` is known to be a prime greater than `2`.
     *
     * From https://en.wikipedia.org/wiki/Fermat%27s_little_theorem[Fermat's little theorem], we know that if p is
     * prime, then `a**(p-1) ≡ 1 mod p`. As a consequence, we have `a * a**(p-2) ≡ 1 mod p`, which means that
     * `a**(p-2)` is the modular multiplicative inverse of a in Fp.
     *
     * NOTE: this function does NOT check that `p` is a prime greater than `2`.
     */
    function invModPrime(uint256 a, uint256 p) internal view returns (uint256) {
        unchecked {
            return Math.modExp(a, p - 2, p);
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked as failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        assembly ("memory-safe") {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory buffer) private pure returns (bool) {
        uint256 chunk;
        for (uint256 i = 0; i < buffer.length; i += 0x20) {
            // See _unsafeReadBytesOffset from utils/Bytes.sol
            assembly ("memory-safe") {
                chunk := mload(add(add(buffer, 0x20), i))
            }
            if (chunk >> (8 * saturatingSub(i + 0x20, buffer.length)) != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // If upper 8 bits of 16-bit half set, add 8 to result
        r |= SafeCast.toUint((x >> r) > 0xff) << 3;
        // If upper 4 bits of 8-bit half set, add 4 to result
        r |= SafeCast.toUint((x >> r) > 0xf) << 2;

        // Shifts value right by the current result and use it as an index into this lookup table:
        //
        // | x (4 bits) |  index  | table[index] = MSB position |
        // |------------|---------|-----------------------------|
        // |    0000    |    0    |        table[0] = 0         |
        // |    0001    |    1    |        table[1] = 0         |
        // |    0010    |    2    |        table[2] = 1         |
        // |    0011    |    3    |        table[3] = 1         |
        // |    0100    |    4    |        table[4] = 2         |
        // |    0101    |    5    |        table[5] = 2         |
        // |    0110    |    6    |        table[6] = 2         |
        // |    0111    |    7    |        table[7] = 2         |
        // |    1000    |    8    |        table[8] = 3         |
        // |    1001    |    9    |        table[9] = 3         |
        // |    1010    |   10    |        table[10] = 3        |
        // |    1011    |   11    |        table[11] = 3        |
        // |    1100    |   12    |        table[12] = 3        |
        // |    1101    |   13    |        table[13] = 3        |
        // |    1110    |   14    |        table[14] = 3        |
        // |    1111    |   15    |        table[15] = 3        |
        //
        // The lookup table is represented as a 32-byte value with the MSB positions for 0-15 in the first 16 bytes (most significant half).
        assembly ("memory-safe") {
            r := or(r, byte(shr(r, x), 0x0000010102020202030303030303030300000000000000000000000000000000))
        }
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // Add 1 if upper 8 bits of 16-bit half set, and divide accumulated result by 8
        return (r >> 3) | SafeCast.toUint((x >> r) > 0xff);
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }

    /**
     * @dev Counts the number of leading zero bits in a uint256.
     */
    function clz(uint256 x) internal pure returns (uint256) {
        return ternary(x == 0, 256, 255 - log2(x));
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in a uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in a uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev A uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, int256 a, int256 b) internal pure returns (int256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * int256(SafeCast.toUint(condition)));
        }
    }

    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // Formula from the "Bit Twiddling Hacks" by Sean Eron Anderson.
            // Since `n` is a signed integer, the generated bytecode will use the SAR opcode to perform the right shift,
            // taking advantage of the most significant (or "sign" bit) in two's complement representation.
            // This opcode adds new most significant bits set to the value of the previous most significant bit. As a result,
            // the mask will either be `bytes32(0)` (if n is positive) or `~bytes32(0)` (if n is negative).
            int256 mask = n >> 255;

            // A `bytes32(0)` mask leaves the input unchanged, while a `~bytes32(0)` mask complements it.
            return uint256((n + mask) ^ mask);
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Memory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/Memory.sol)

pragma solidity ^0.8.24;

import {Panic} from "./Panic.sol";
import {Math} from "./math/Math.sol";

/**
 * @dev Utilities to manipulate memory.
 *
 * Memory is a contiguous and dynamic byte array in which Solidity stores non-primitive types.
 * This library provides functions to manipulate pointers to this dynamic array and work with slices of it.
 *
 * Slices provide a view into a portion of memory without copying data, enabling efficient substring operations.
 *
 * WARNING: When manipulating memory pointers or slices, make sure to follow the Solidity documentation
 * guidelines for https://docs.soliditylang.org/en/v0.8.20/assembly.html#memory-safety[Memory Safety].
 */
library Memory {
    type Pointer is bytes32;

    /// @dev Returns a `Pointer` to the current free `Pointer`.
    function getFreeMemoryPointer() internal pure returns (Pointer ptr) {
        assembly ("memory-safe") {
            ptr := mload(0x40)
        }
    }

    /**
     * @dev Sets the free `Pointer` to a specific value.
     *
     * The solidity memory layout requires that the FMP is never set to a value lower than 0x80. Setting the
     * FMP to a value lower than 0x80 may cause unexpected behavior. Deallocating all memory can be achieved by
     * setting the FMP to 0x80.
     *
     * WARNING: Everything after the pointer may be overwritten.
     **/
    function unsafeSetFreeMemoryPointer(Pointer ptr) internal pure {
        assembly ("memory-safe") {
            mstore(0x40, ptr)
        }
    }

    /// @dev Move a pointer forward by a given offset.
    function forward(Pointer ptr, uint256 offset) internal pure returns (Pointer) {
        return Pointer.wrap(bytes32(uint256(Pointer.unwrap(ptr)) + offset));
    }

    /// @dev Equality comparator for memory pointers.
    function equal(Pointer ptr1, Pointer ptr2) internal pure returns (bool) {
        return Pointer.unwrap(ptr1) == Pointer.unwrap(ptr2);
    }

    type Slice is bytes32;

    /// @dev Get a slice representation of a bytes object in memory
    function asSlice(bytes memory self) internal pure returns (Slice result) {
        assembly ("memory-safe") {
            result := or(shl(128, mload(self)), add(self, 0x20))
        }
    }

    /// @dev Returns the length of a given slice (equiv to self.length for calldata slices)
    function length(Slice self) internal pure returns (uint256 result) {
        assembly ("memory-safe") {
            result := shr(128, self)
        }
    }

    /// @dev Offset a memory slice (equivalent to self[offset:] for calldata slices)
    function slice(Slice self, uint256 offset) internal pure returns (Slice) {
        if (offset > length(self)) Panic.panic(Panic.ARRAY_OUT_OF_BOUNDS);
        return _asSlice(length(self) - offset, forward(_pointer(self), offset));
    }

    /// @dev Offset and cut a Slice (equivalent to self[offset:offset+len] for calldata slices)
    function slice(Slice self, uint256 offset, uint256 len) internal pure returns (Slice) {
        if (offset + len > length(self)) Panic.panic(Panic.ARRAY_OUT_OF_BOUNDS);
        return _asSlice(len, forward(_pointer(self), offset));
    }

    /**
     * @dev Read a bytes32 buffer from a given Slice at a specific offset
     *
     * NOTE: If offset > length(slice) - 0x20, part of the return value will be out of bound of the slice. These bytes are zeroed.
     */
    function load(Slice self, uint256 offset) internal pure returns (bytes32 value) {
        uint256 outOfBoundBytes = Math.saturatingSub(0x20 + offset, length(self));
        if (outOfBoundBytes > 0x1f) Panic.panic(Panic.ARRAY_OUT_OF_BOUNDS);

        assembly ("memory-safe") {
            value := and(mload(add(and(self, shr(128, not(0))), offset)), shl(mul(8, outOfBoundBytes), not(0)))
        }
    }

    /// @dev Extract the data corresponding to a Slice (allocate new memory)
    function toBytes(Slice self) internal pure returns (bytes memory result) {
        uint256 len = length(self);
        Memory.Pointer ptr = _pointer(self);
        assembly ("memory-safe") {
            result := mload(0x40)
            mstore(result, len)
            mcopy(add(result, 0x20), ptr, len)
            mstore(0x40, add(add(result, len), 0x20))
        }
    }

    /// @dev Returns true if the two slices contain the same data.
    function equal(Slice a, Slice b) internal pure returns (bool result) {
        Memory.Pointer ptrA = _pointer(a);
        Memory.Pointer ptrB = _pointer(b);
        uint256 lenA = length(a);
        uint256 lenB = length(b);
        assembly ("memory-safe") {
            result := eq(keccak256(ptrA, lenA), keccak256(ptrB, lenB))
        }
    }

    /// @dev Returns true if the memory occupied by the slice is reserved (i.e. before the free memory pointer)
    function isReserved(Slice self) internal pure returns (bool result) {
        Memory.Pointer fmp = getFreeMemoryPointer();
        Memory.Pointer end = forward(_pointer(self), length(self));
        assembly ("memory-safe") {
            result := iszero(lt(fmp, end)) // end <= fmp
        }
    }

    /**
     * @dev Private helper: create a slice from raw values (length and pointer)
     *
     * NOTE: this function MUST NOT be called with `len` or `ptr` that exceed `2**128-1`. This should never be
     * the case of slices produced by `asSlice(bytes)`, and function that reduce the scope of slices
     * (`slice(Slice,uint256)` and `slice(Slice,uint256, uint256)`) should not cause this issue if the parent slice is
     * correct.
     */
    function _asSlice(uint256 len, Memory.Pointer ptr) private pure returns (Slice result) {
        assembly ("memory-safe") {
            result := or(shl(128, len), ptr)
        }
    }

    /// @dev Returns the memory location of a given slice (equiv to self.offset for calldata slices)
    function _pointer(Slice self) private pure returns (Memory.Pointer result) {
        assembly ("memory-safe") {
            result := and(self, shr(128, not(0)))
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Multicall.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/Multicall.sol)

pragma solidity ^0.8.20;

import {Address} from "./Address.sol";
import {Context} from "./Context.sol";

/**
 * @dev Provides a function to batch together multiple calls in a single external call.
 *
 * Consider any assumption about calldata validation performed by the sender may be violated if it's not especially
 * careful about sending transactions invoking {multicall}. For example, a relay address that filters function
 * selectors won't filter calls nested within a {multicall} operation.
 *
 * NOTE: Since 5.0.1 and 4.9.4, this contract identifies non-canonical contexts (i.e. `msg.sender` is not {Context-_msgSender}).
 * If a non-canonical context is identified, the following self `delegatecall` appends the last bytes of `msg.data`
 * to the subcall. This makes it safe to use with {ERC2771Context}. Contexts that don't affect the resolution of
 * {Context-_msgSender} are not propagated to subcalls.
 */
abstract contract Multicall is Context {
    /**
     * @dev Receives and executes a batch of function calls on this contract.
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function multicall(bytes[] calldata data) public virtual returns (bytes[] memory results) {
        bytes memory context = msg.sender == _msgSender()
            ? new bytes(0)
            : msg.data[msg.data.length - _contextSuffixLength():];

        results = new bytes[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            results[i] = Address.functionDelegateCall(address(this), bytes.concat(data[i], context));
        }
        return results;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Nonces.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Nonces.sol)
pragma solidity ^0.8.20;

/**
 * @dev Provides tracking nonces for addresses. Nonces will only increment.
 */
abstract contract Nonces {
    /**
     * @dev The nonce used for an `account` is not the expected current nonce.
     */
    error InvalidAccountNonce(address account, uint256 currentNonce);

    mapping(address account => uint256) private _nonces;

    /**
     * @dev Returns the next unused nonce for an address.
     */
    function nonces(address owner) public view virtual returns (uint256) {
        return _nonces[owner];
    }

    /**
     * @dev Consumes a nonce.
     *
     * Returns the current value and increments nonce.
     */
    function _useNonce(address owner) internal virtual returns (uint256) {
        // For each account, the nonce has an initial value of 0, can only be incremented by one, and cannot be
        // decremented or reset. This guarantees that the nonce never overflows.
        unchecked {
            // It is important to do x++ and not ++x here.
            return _nonces[owner]++;
        }
    }

    /**
     * @dev Same as {_useNonce} but checking that `nonce` is the next valid for `owner`.
     */
    function _useCheckedNonce(address owner, uint256 nonce) internal virtual {
        uint256 current = _useNonce(owner);
        if (nonce != current) {
            revert InvalidAccountNonce(owner, current);
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Panic.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Panic.sol)

pragma solidity ^0.8.20;

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 *
 * _Available since v5.1._
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        assembly ("memory-safe") {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/ShortStrings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/ShortStrings.sol)

pragma solidity ^0.8.20;

import {StorageSlot} from "./StorageSlot.sol";

// | string  | 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA   |
// | length  | 0x                                                              BB |
type ShortString is bytes32;

/**
 * @dev This library provides functions to convert short memory strings
 * into a `ShortString` type that can be used as an immutable variable.
 *
 * Strings of arbitrary length can be optimized using this library if
 * they are short enough (up to 31 bytes) by packing them with their
 * length (1 byte) in a single EVM word (32 bytes). Additionally, a
 * fallback mechanism can be used for every other case.
 *
 * Usage example:
 *
 * ```solidity
 * contract Named {
 *     using ShortStrings for *;
 *
 *     ShortString private immutable _name;
 *     string private _nameFallback;
 *
 *     constructor(string memory contractName) {
 *         _name = contractName.toShortStringWithFallback(_nameFallback);
 *     }
 *
 *     function name() external view returns (string memory) {
 *         return _name.toStringWithFallback(_nameFallback);
 *     }
 * }
 * ```
 */
library ShortStrings {
    // Used as an identifier for strings longer than 31 bytes.
    bytes32 private constant FALLBACK_SENTINEL = 0x00000000000000000000000000000000000000000000000000000000000000FF;

    error StringTooLong(string str);
    error InvalidShortString();

    /**
     * @dev Encode a string of at most 31 chars into a `ShortString`.
     *
     * This will trigger a `StringTooLong` error is the input string is too long.
     */
    function toShortString(string memory str) internal pure returns (ShortString) {
        bytes memory bstr = bytes(str);
        if (bstr.length > 0x1f) {
            revert StringTooLong(str);
        }
        return ShortString.wrap(bytes32(uint256(bytes32(bstr)) | bstr.length));
    }

    /**
     * @dev Decode a `ShortString` back to a "normal" string.
     */
    function toString(ShortString sstr) internal pure returns (string memory) {
        uint256 len = byteLength(sstr);
        // using `new string(len)` would work locally but is not memory safe.
        string memory str = new string(0x20);
        assembly ("memory-safe") {
            mstore(str, len)
            mstore(add(str, 0x20), sstr)
        }
        return str;
    }

    /**
     * @dev Return the length of a `ShortString`.
     */
    function byteLength(ShortString sstr) internal pure returns (uint256) {
        uint256 result = uint256(ShortString.unwrap(sstr)) & 0xFF;
        if (result > 0x1f) {
            revert InvalidShortString();
        }
        return result;
    }

    /**
     * @dev Encode a string into a `ShortString`, or write it to storage if it is too long.
     */
    function toShortStringWithFallback(string memory value, string storage store) internal returns (ShortString) {
        if (bytes(value).length < 0x20) {
            return toShortString(value);
        } else {
            StorageSlot.getStringSlot(store).value = value;
            return ShortString.wrap(FALLBACK_SENTINEL);
        }
    }

    /**
     * @dev Decode a string that was encoded to `ShortString` or written to storage using {toShortStringWithFallback}.
     */
    function toStringWithFallback(ShortString value, string storage store) internal pure returns (string memory) {
        if (ShortString.unwrap(value) != FALLBACK_SENTINEL) {
            return toString(value);
        } else {
            return store;
        }
    }

    /**
     * @dev Return the length of a string that was encoded to `ShortString` or written to storage using
     * {toShortStringWithFallback}.
     *
     * WARNING: This will return the "byte length" of the string. This may not reflect the actual length in terms of
     * actual characters as the UTF-8 encoding of a single character can span over multiple bytes.
     */
    function byteLengthWithFallback(ShortString value, string storage store) internal view returns (uint256) {
        if (ShortString.unwrap(value) != FALLBACK_SENTINEL) {
            return byteLength(value);
        } else {
            return bytes(store).length;
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/SlotDerivation.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.5.0) (utils/SlotDerivation.sol)
// This file was procedurally generated from scripts/generate/templates/SlotDerivation.js.

pragma solidity ^0.8.20;

/**
 * @dev Library for computing storage (and transient storage) locations from namespaces and deriving slots
 * corresponding to standard patterns. The derivation method for array and mapping matches the storage layout used by
 * the solidity language / compiler.
 *
 * See https://docs.soliditylang.org/en/v0.8.20/internals/layout_in_storage.html#mappings-and-dynamic-arrays[Solidity docs for mappings and dynamic arrays.].
 *
 * Example usage:
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using StorageSlot for bytes32;
 *     using SlotDerivation for *;
 *
 *     // Declare a namespace
 *     string private constant _NAMESPACE = "<namespace>"; // eg. OpenZeppelin.Slot
 *
 *     function setValueInNamespace(uint256 key, address newValue) internal {
 *         _NAMESPACE.erc7201Slot().deriveMapping(key).getAddressSlot().value = newValue;
 *     }
 *
 *     function getValueInNamespace(uint256 key) internal view returns (address) {
 *         return _NAMESPACE.erc7201Slot().deriveMapping(key).getAddressSlot().value;
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {StorageSlot}.
 *
 * NOTE: This library provides a way to manipulate storage locations in a non-standard way. Tooling for checking
 * upgrade safety will ignore the slots accessed through this library.
 *
 * _Available since v5.1._
 */
library SlotDerivation {
    /**
     * @dev Derive an ERC-7201 slot from a string (namespace).
     */
    function erc7201Slot(string memory namespace) internal pure returns (bytes32 slot) {
        assembly ("memory-safe") {
            mstore(0x00, sub(keccak256(add(namespace, 0x20), mload(namespace)), 1))
            slot := and(keccak256(0x00, 0x20), not(0xff))
        }
    }

    /**
     * @dev Add an offset to a slot to get the n-th element of a structure or an array.
     */
    function offset(bytes32 slot, uint256 pos) internal pure returns (bytes32 result) {
        unchecked {
            return bytes32(uint256(slot) + pos);
        }
    }

    /**
     * @dev Derive the location of the first element in an array from the slot where the length is stored.
     */
    function deriveArray(bytes32 slot) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, slot)
            result := keccak256(0x00, 0x20)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, address key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, and(key, shr(96, not(0))))
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, bool key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, iszero(iszero(key)))
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, bytes32 key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, key)
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, uint256 key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, key)
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, int256 key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            mstore(0x00, key)
            mstore(0x20, slot)
            result := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, string memory key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            let length := mload(key)
            let begin := add(key, 0x20)
            let end := add(begin, length)
            let cache := mload(end)
            mstore(end, slot)
            result := keccak256(begin, add(length, 0x20))
            mstore(end, cache)
        }
    }

    /**
     * @dev Derive the location of a mapping element from the key.
     */
    function deriveMapping(bytes32 slot, bytes memory key) internal pure returns (bytes32 result) {
        assembly ("memory-safe") {
            let length := mload(key)
            let begin := add(key, 0x20)
            let end := add(begin, length)
            let cache := mload(end)
            mstore(end, slot)
            result := keccak256(begin, add(length, 0x20))
            mstore(end, cache)
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.20;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC-1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     // Define the slot. Alternatively, use the SlotDerivation library to derive the slot.
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {SlotDerivation}.
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct Int256Slot {
        int256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Int256Slot` with member `value` located at `slot`.
     */
    function getInt256Slot(bytes32 slot) internal pure returns (Int256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns a `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/Strings.sol)

pragma solidity ^0.8.24;

import {Math} from "./math/Math.sol";
import {SafeCast} from "./math/SafeCast.sol";
import {SignedMath} from "./math/SignedMath.sol";
import {Bytes} from "./Bytes.sol";

/**
 * @dev String operations.
 */
library Strings {
    using SafeCast for *;

    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;
    uint256 private constant SPECIAL_CHARS_LOOKUP =
        0xffffffff | // first 32 bits corresponding to the control characters (U+0000 to U+001F)
            (1 << 0x22) | // double quote
            (1 << 0x5c); // backslash

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

    /**
     * @dev The string being parsed contains characters that are not in scope of the given base.
     */
    error StringsInvalidChar();

    /**
     * @dev The string being parsed is not a properly formatted address.
     */
    error StringsInvalidAddressFormat();

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            assembly ("memory-safe") {
                ptr := add(add(buffer, 0x20), length)
            }
            while (true) {
                ptr--;
                assembly ("memory-safe") {
                    mstore8(ptr, byte(mod(value, 10), HEX_DIGITS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toStringSigned(int256 value) internal pure returns (string memory) {
        return string.concat(value < 0 ? "-" : "", toString(SignedMath.abs(value)));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        uint256 localValue = value;
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = HEX_DIGITS[localValue & 0xf];
            localValue >>= 4;
        }
        if (localValue != 0) {
            revert StringsInsufficientHexLength(value, length);
        }
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal
     * representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), ADDRESS_LENGTH);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its checksummed ASCII `string` hexadecimal
     * representation, according to EIP-55.
     */
    function toChecksumHexString(address addr) internal pure returns (string memory) {
        bytes memory buffer = bytes(toHexString(addr));

        // hash the hex part of buffer (skip length + 2 bytes, length 40)
        uint256 hashValue;
        assembly ("memory-safe") {
            hashValue := shr(96, keccak256(add(buffer, 0x22), 40))
        }

        for (uint256 i = 41; i > 1; --i) {
            // possible values for buffer[i] are 48 (0) to 57 (9) and 97 (a) to 102 (f)
            if (hashValue & 0xf > 7 && uint8(buffer[i]) > 96) {
                // case shift by xoring with 0x20
                buffer[i] ^= 0x20;
            }
            hashValue >>= 4;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `bytes` buffer to its ASCII `string` hexadecimal representation.
     */
    function toHexString(bytes memory input) internal pure returns (string memory) {
        unchecked {
            bytes memory buffer = new bytes(2 * input.length + 2);
            buffer[0] = "0";
            buffer[1] = "x";
            for (uint256 i = 0; i < input.length; ++i) {
                uint8 v = uint8(input[i]);
                buffer[2 * i + 2] = HEX_DIGITS[v >> 4];
                buffer[2 * i + 3] = HEX_DIGITS[v & 0xf];
            }
            return string(buffer);
        }
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return Bytes.equal(bytes(a), bytes(b));
    }

    /**
     * @dev Parse a decimal string and returns the value as a `uint256`.
     *
     * Requirements:
     * - The string must be formatted as `[0-9]*`
     * - The result must fit into an `uint256` type
     */
    function parseUint(string memory input) internal pure returns (uint256) {
        return parseUint(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseUint-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `[0-9]*`
     * - The result must fit into an `uint256` type
     */
    function parseUint(string memory input, uint256 begin, uint256 end) internal pure returns (uint256) {
        (bool success, uint256 value) = tryParseUint(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseUint-string} that returns false if the parsing fails because of an invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseUint(string memory input) internal pure returns (bool success, uint256 value) {
        return _tryParseUintUncheckedBounds(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseUint-string-uint256-uint256} that returns false if the parsing fails because of an invalid
     * character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseUint(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, uint256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseUintUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseUint-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseUintUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, uint256 value) {
        bytes memory buffer = bytes(input);

        uint256 result = 0;
        for (uint256 i = begin; i < end; ++i) {
            uint8 chr = _tryParseChr(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (chr > 9) return (false, 0);
            result *= 10;
            result += chr;
        }
        return (true, result);
    }

    /**
     * @dev Parse a decimal string and returns the value as a `int256`.
     *
     * Requirements:
     * - The string must be formatted as `[-+]?[0-9]*`
     * - The result must fit in an `int256` type.
     */
    function parseInt(string memory input) internal pure returns (int256) {
        return parseInt(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseInt-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `[-+]?[0-9]*`
     * - The result must fit in an `int256` type.
     */
    function parseInt(string memory input, uint256 begin, uint256 end) internal pure returns (int256) {
        (bool success, int256 value) = tryParseInt(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseInt-string} that returns false if the parsing fails because of an invalid character or if
     * the result does not fit in a `int256`.
     *
     * NOTE: This function will revert if the absolute value of the result does not fit in a `uint256`.
     */
    function tryParseInt(string memory input) internal pure returns (bool success, int256 value) {
        return _tryParseIntUncheckedBounds(input, 0, bytes(input).length);
    }

    uint256 private constant ABS_MIN_INT256 = 2 ** 255;

    /**
     * @dev Variant of {parseInt-string-uint256-uint256} that returns false if the parsing fails because of an invalid
     * character or if the result does not fit in a `int256`.
     *
     * NOTE: This function will revert if the absolute value of the result does not fit in a `uint256`.
     */
    function tryParseInt(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, int256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseIntUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseInt-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseIntUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, int256 value) {
        bytes memory buffer = bytes(input);

        // Check presence of a negative sign.
        bytes1 sign = begin == end ? bytes1(0) : bytes1(_unsafeReadBytesOffset(buffer, begin)); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        bool positiveSign = sign == bytes1("+");
        bool negativeSign = sign == bytes1("-");
        uint256 offset = (positiveSign || negativeSign).toUint();

        (bool absSuccess, uint256 absValue) = tryParseUint(input, begin + offset, end);

        if (absSuccess && absValue < ABS_MIN_INT256) {
            return (true, negativeSign ? -int256(absValue) : int256(absValue));
        } else if (absSuccess && negativeSign && absValue == ABS_MIN_INT256) {
            return (true, type(int256).min);
        } else return (false, 0);
    }

    /**
     * @dev Parse a hexadecimal string (with or without "0x" prefix), and returns the value as a `uint256`.
     *
     * Requirements:
     * - The string must be formatted as `(0x)?[0-9a-fA-F]*`
     * - The result must fit in an `uint256` type.
     */
    function parseHexUint(string memory input) internal pure returns (uint256) {
        return parseHexUint(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseHexUint-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `(0x)?[0-9a-fA-F]*`
     * - The result must fit in an `uint256` type.
     */
    function parseHexUint(string memory input, uint256 begin, uint256 end) internal pure returns (uint256) {
        (bool success, uint256 value) = tryParseHexUint(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseHexUint-string} that returns false if the parsing fails because of an invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseHexUint(string memory input) internal pure returns (bool success, uint256 value) {
        return _tryParseHexUintUncheckedBounds(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseHexUint-string-uint256-uint256} that returns false if the parsing fails because of an
     * invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseHexUint(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, uint256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseHexUintUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseHexUint-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseHexUintUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, uint256 value) {
        bytes memory buffer = bytes(input);

        // skip 0x prefix if present
        bool hasPrefix = (end > begin + 1) && bytes2(_unsafeReadBytesOffset(buffer, begin)) == bytes2("0x"); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        uint256 offset = hasPrefix.toUint() * 2;

        uint256 result = 0;
        for (uint256 i = begin + offset; i < end; ++i) {
            uint8 chr = _tryParseChr(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (chr > 15) return (false, 0);
            result *= 16;
            unchecked {
                // Multiplying by 16 is equivalent to a shift of 4 bits (with additional overflow check).
                // This guarantees that adding a value < 16 will not cause an overflow, hence the unchecked.
                result += chr;
            }
        }
        return (true, result);
    }

    /**
     * @dev Parse a hexadecimal string (with or without "0x" prefix), and returns the value as an `address`.
     *
     * Requirements:
     * - The string must be formatted as `(0x)?[0-9a-fA-F]{40}`
     */
    function parseAddress(string memory input) internal pure returns (address) {
        return parseAddress(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseAddress-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `(0x)?[0-9a-fA-F]{40}`
     */
    function parseAddress(string memory input, uint256 begin, uint256 end) internal pure returns (address) {
        (bool success, address value) = tryParseAddress(input, begin, end);
        if (!success) revert StringsInvalidAddressFormat();
        return value;
    }

    /**
     * @dev Variant of {parseAddress-string} that returns false if the parsing fails because the input is not a properly
     * formatted address. See {parseAddress-string} requirements.
     */
    function tryParseAddress(string memory input) internal pure returns (bool success, address value) {
        return tryParseAddress(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseAddress-string-uint256-uint256} that returns false if the parsing fails because input is not a properly
     * formatted address. See {parseAddress-string-uint256-uint256} requirements.
     */
    function tryParseAddress(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, address value) {
        if (end > bytes(input).length || begin > end) return (false, address(0));

        bool hasPrefix = (end > begin + 1) && bytes2(_unsafeReadBytesOffset(bytes(input), begin)) == bytes2("0x"); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        uint256 expectedLength = 40 + hasPrefix.toUint() * 2;

        // check that input is the correct length
        if (end - begin == expectedLength) {
            // length guarantees that this does not overflow, and value is at most type(uint160).max
            (bool s, uint256 v) = _tryParseHexUintUncheckedBounds(input, begin, end);
            return (s, address(uint160(v)));
        } else {
            return (false, address(0));
        }
    }

    function _tryParseChr(bytes1 chr) private pure returns (uint8) {
        uint8 value = uint8(chr);

        // Try to parse `chr`:
        // - Case 1: [0-9]
        // - Case 2: [a-f]
        // - Case 3: [A-F]
        // - otherwise not supported
        unchecked {
            if (value > 47 && value < 58) value -= 48;
            else if (value > 96 && value < 103) value -= 87;
            else if (value > 64 && value < 71) value -= 55;
            else return type(uint8).max;
        }

        return value;
    }

    /**
     * @dev Escape special characters in JSON strings. This can be useful to prevent JSON injection in NFT metadata.
     *
     * WARNING: This function should only be used in double quoted JSON strings. Single quotes are not escaped.
     *
     * NOTE: This function escapes backslashes (including those in \uXXXX sequences) and the characters in ranges
     * defined in section 2.5 of RFC-4627 (U+0000 to U+001F, U+0022 and U+005C). All control characters in U+0000
     * to U+001F are escaped (\b, \t, \n, \f, \r use short form; others use \u00XX). ECMAScript's `JSON.parse` does
     * recover escaped unicode characters that are not in this range, but other tooling may provide different results.
     */
    function escapeJSON(string memory input) internal pure returns (string memory) {
        bytes memory buffer = bytes(input);

        // Put output at the FMP. Memory will be reserved later when we figure out the actual length of the escaped
        // string. All write are done using _unsafeWriteBytesOffset, which avoid the (expensive) length checks for
        // each character written.
        bytes memory output;
        assembly ("memory-safe") {
            output := mload(0x40)
        }
        uint256 outputLength = 0;

        for (uint256 i = 0; i < buffer.length; ++i) {
            uint8 char = uint8(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (((SPECIAL_CHARS_LOOKUP & (1 << char)) != 0)) {
                _unsafeWriteBytesOffset(output, outputLength++, "\\");
                if (char == 0x08) _unsafeWriteBytesOffset(output, outputLength++, "b");
                else if (char == 0x09) _unsafeWriteBytesOffset(output, outputLength++, "t");
                else if (char == 0x0a) _unsafeWriteBytesOffset(output, outputLength++, "n");
                else if (char == 0x0c) _unsafeWriteBytesOffset(output, outputLength++, "f");
                else if (char == 0x0d) _unsafeWriteBytesOffset(output, outputLength++, "r");
                else if (char == 0x5c) _unsafeWriteBytesOffset(output, outputLength++, "\\");
                else if (char == 0x22) {
                    // solhint-disable-next-line quotes
                    _unsafeWriteBytesOffset(output, outputLength++, '"');
                } else {
                    // U+0000 to U+001F without short form: output \u00XX
                    _unsafeWriteBytesOffset(output, outputLength++, "u");
                    _unsafeWriteBytesOffset(output, outputLength++, "0");
                    _unsafeWriteBytesOffset(output, outputLength++, "0");
                    _unsafeWriteBytesOffset(output, outputLength++, HEX_DIGITS[char >> 4]);
                    _unsafeWriteBytesOffset(output, outputLength++, HEX_DIGITS[char & 0x0f]);
                }
            } else {
                _unsafeWriteBytesOffset(output, outputLength++, bytes1(char));
            }
        }
        // write the actual length and reserve memory
        assembly ("memory-safe") {
            mstore(output, outputLength)
            mstore(0x40, add(output, add(outputLength, 0x20)))
        }

        return string(output);
    }

    /**
     * @dev Reads a bytes32 from a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeReadBytesOffset(bytes memory buffer, uint256 offset) private pure returns (bytes32 value) {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        assembly ("memory-safe") {
            value := mload(add(add(buffer, 0x20), offset))
        }
    }

    /**
     * @dev Write a bytes1 to a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeWriteBytesOffset(bytes memory buffer, uint256 offset, bytes1 value) private pure {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        assembly ("memory-safe") {
            mstore8(add(add(buffer, 0x20), offset), shr(248, value))
        }
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/structs/BitMaps.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/structs/BitMaps.sol)
pragma solidity ^0.8.20;

/**
 * @dev Library for managing uint256 to bool mapping in a compact and efficient way, provided the keys are sequential.
 * Largely inspired by Uniswap's https://github.com/Uniswap/merkle-distributor/blob/master/contracts/MerkleDistributor.sol[merkle-distributor].
 *
 * BitMaps pack 256 booleans across each bit of a single 256-bit slot of `uint256` type.
 * Hence booleans corresponding to 256 _sequential_ indices would only consume a single slot,
 * unlike the regular `bool` which would consume an entire slot for a single value.
 *
 * This results in gas savings in two ways:
 *
 * - Setting a zero value to non-zero only once every 256 times
 * - Accessing the same warm slot for every 256 _sequential_ indices
 */
library BitMaps {
    struct BitMap {
        mapping(uint256 bucket => uint256) _data;
    }

    /**
     * @dev Returns whether the bit at `index` is set.
     */
    function get(BitMap storage bitmap, uint256 index) internal view returns (bool) {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        return bitmap._data[bucket] & mask != 0;
    }

    /**
     * @dev Sets the bit at `index` to the boolean `value`.
     */
    function setTo(BitMap storage bitmap, uint256 index, bool value) internal {
        if (value) {
            set(bitmap, index);
        } else {
            unset(bitmap, index);
        }
    }

    /**
     * @dev Sets the bit at `index`.
     */
    function set(BitMap storage bitmap, uint256 index) internal {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        bitmap._data[bucket] |= mask;
    }

    /**
     * @dev Unsets the bit at `index`.
     */
    function unset(BitMap storage bitmap, uint256 index) internal {
        uint256 bucket = index >> 8;
        uint256 mask = 1 << (index & 0xff);
        bitmap._data[bucket] &= ~mask;
    }
}

// ============================================================
// FILE: npm/@openzeppelin/contracts@5.6.1/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.6.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.24;

import {Arrays} from "../Arrays.sol";
import {Math} from "../math/Math.sol";

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 * - Set can be cleared (all elements removed) in O(n).
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * The following types are supported:
 *
 * - `bytes32` (`Bytes32Set`) since v3.3.0
 * - `address` (`AddressSet`) since v3.3.0
 * - `uint256` (`UintSet`) since v3.3.0
 * - `string` (`StringSet`) since v5.4.0
 * - `bytes` (`BytesSet`) since v5.4.0
 * - `bytes4` (`Bytes4Set`) since v5.6.0
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSet {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(bytes32 value => uint256) _positions;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._positions[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: This function has an unbounded cost that scales with set size. Developers should keep in mind that
     * using it may render the function uncallable if the set grows to the point where clearing it consumes too much
     * gas to fit in a block.
     */
    function _clear(Set storage set) private {
        uint256 len = _length(set);
        for (uint256 i = 0; i < len; ++i) {
            delete set._positions[set._values[i]];
        }
        Arrays.unsafeSetLength(set._values, 0);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._positions[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set, uint256 start, uint256 end) private view returns (bytes32[] memory) {
        unchecked {
            end = Math.min(end, _length(set));
            start = Math.min(start, end);

            uint256 len = end - start;
            bytes32[] memory result = new bytes32[](len);
            for (uint256 i = 0; i < len; ++i) {
                result[i] = Arrays.unsafeAccess(set._values, start + i).value;
            }
            return result;
        }
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(Bytes32Set storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set, uint256 start, uint256 end) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        bytes32[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    // Bytes4Set

    struct Bytes4Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes4Set storage set, bytes4 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes4Set storage set, bytes4 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(Bytes4Set storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes4Set storage set, bytes4 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes4Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes4Set storage set, uint256 index) internal view returns (bytes4) {
        return bytes4(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes4Set storage set) internal view returns (bytes4[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes4[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes4Set storage set, uint256 start, uint256 end) internal view returns (bytes4[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        bytes4[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(AddressSet storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set, uint256 start, uint256 end) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        address[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(UintSet storage set) internal {
        _clear(set._inner);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set, uint256 start, uint256 end) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner, start, end);
        uint256[] memory result;

        assembly ("memory-safe") {
            result := store
        }

        return result;
    }

    struct StringSet {
        // Storage of set values
        string[] _values;
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(string value => uint256) _positions;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(StringSet storage set, string memory value) internal returns (bool) {
        if (!contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._positions[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(StringSet storage set, string memory value) internal returns (bool) {
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                string memory lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(StringSet storage set) internal {
        uint256 len = length(set);
        for (uint256 i = 0; i < len; ++i) {
            delete set._positions[set._values[i]];
        }
        Arrays.unsafeSetLength(set._values, 0);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(StringSet storage set, string memory value) internal view returns (bool) {
        return set._positions[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function length(StringSet storage set) internal view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(StringSet storage set, uint256 index) internal view returns (string memory) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(StringSet storage set) internal view returns (string[] memory) {
        return set._values;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(StringSet storage set, uint256 start, uint256 end) internal view returns (string[] memory) {
        unchecked {
            end = Math.min(end, length(set));
            start = Math.min(start, end);

            uint256 len = end - start;
            string[] memory result = new string[](len);
            for (uint256 i = 0; i < len; ++i) {
                result[i] = Arrays.unsafeAccess(set._values, start + i).value;
            }
            return result;
        }
    }

    struct BytesSet {
        // Storage of set values
        bytes[] _values;
        // Position is the index of the value in the `values` array plus 1.
        // Position 0 is used to mean a value is not in the set.
        mapping(bytes value => uint256) _positions;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(BytesSet storage set, bytes memory value) internal returns (bool) {
        if (!contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._positions[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(BytesSet storage set, bytes memory value) internal returns (bool) {
        // We cache the value's position to prevent multiple reads from the same storage slot
        uint256 position = set._positions[value];

        if (position != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 valueIndex = position - 1;
            uint256 lastIndex = set._values.length - 1;

            if (valueIndex != lastIndex) {
                bytes memory lastValue = set._values[lastIndex];

                // Move the lastValue to the index where the value to delete is
                set._values[valueIndex] = lastValue;
                // Update the tracked position of the lastValue (that was just moved)
                set._positions[lastValue] = position;
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the tracked position for the deleted slot
            delete set._positions[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes all the values from a set. O(n).
     *
     * WARNING: Developers should keep in mind that this function has an unbounded cost and using it may render the
     * function uncallable if the set grows to the point where clearing it consumes too much gas to fit in a block.
     */
    function clear(BytesSet storage set) internal {
        uint256 len = length(set);
        for (uint256 i = 0; i < len; ++i) {
            delete set._positions[set._values[i]];
        }
        Arrays.unsafeSetLength(set._values, 0);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(BytesSet storage set, bytes memory value) internal view returns (bool) {
        return set._positions[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function length(BytesSet storage set) internal view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(BytesSet storage set, uint256 index) internal view returns (bytes memory) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(BytesSet storage set) internal view returns (bytes[] memory) {
        return set._values;
    }

    /**
     * @dev Return a slice of the set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(BytesSet storage set, uint256 start, uint256 end) internal view returns (bytes[] memory) {
        unchecked {
            end = Math.min(end, length(set));
            start = Math.min(start, end);

            uint256 len = end - start;
            bytes[] memory result = new bytes[](len);
            for (uint256 i = 0; i < len; ++i) {
                result[i] = Arrays.unsafeAccess(set._values, start + i).value;
            }
            return result;
        }
    }
}

// ============================================================
// FILE: project/contracts/ChainlinkOracle.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {IERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {IERC7540} from "./interfaces/IERC7540.sol";
import {AggregatorV3Interface} from "./interfaces/AggregatorV3Interface.sol";
import {Utils} from "./utils/Utils.sol";

/// @title Chainlink-based price oracle with static price fallback and ERC4626 vault support.
/// @author Raphael Westphal <raphael@sprinter.tech>
/// @dev ERC4626 assets use the vault's previewRedeem to convert shares to underlying before applying price.
/// @dev Warning: if the ERC4626 vault reverts on previewRedeem, the oracle will revert on getAssetValue.
/// @dev Multi-step feeds use nextAssetId to chain conversions (e.g. wstETH/ETH → ETH/USD).
contract ChainlinkOracle is AccessControl, IOracle {
    using Math for uint256;

    bytes32 internal constant PRICE_SETTER_ROLE = "PRICE_SETTER_ROLE";

    enum AssetType {
        RAW,
        ERC4626,
        ERC7540
    }

    struct FeedConfig {
        AggregatorV3Interface feed;
        uint48 maxStaleness;
        uint8 normalizationDecimals;
        // Optional next step for multi-step conversion (e.g. wstETH/ETH then ETH/USD).
        // If non-zero, the result of this feed is passed as the amount into nextAssetId.
        bytes32 nextAssetId;
    }

    mapping(bytes32 assetId => uint256 price) public staticPrice;
    mapping(bytes32 assetId => uint8 decimals) public staticDecimals;
    mapping(bytes32 assetId => FeedConfig) internal feedConfigs;
    mapping(bytes32 assetId => AssetType) public assetType;

    event StaticPriceSet(bytes32 assetId, uint256 price, uint8 decimals, AssetType assetType);
    event ChainlinkFeedSet(
        bytes32 assetId,
        address feed,
        uint48 maxStaleness,
        uint8 normalizationDecimals,
        bytes32 nextAssetId,
        AssetType assetType
    );

    error ZeroAddress();
    error StalePrice();
    error InvalidPrice();
    error PriceNotConfigured();
    error NormalizationDecimalsTooHigh();
    error InvalidMaxStaleness();
    error ZeroNextAssetId();
    error MaxDepthReached();

    constructor(address admin, address priceSetter) {
        require(admin != address(0), ZeroAddress());
        require(priceSetter != address(0), ZeroAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(PRICE_SETTER_ROLE, priceSetter);
    }

    function setStaticPrice(
        bytes32 assetId,
        uint256 price,
        uint8 decimals,
        AssetType assetType_
    ) external onlyRole(PRICE_SETTER_ROLE) {
        require(price != 0, InvalidPrice());
        require(decimals <= 77, NormalizationDecimalsTooHigh());
        _clearConfig(assetId);
        staticPrice[assetId] = price;
        staticDecimals[assetId] = decimals;
        _setAssetType(assetId, assetType_);
        emit StaticPriceSet(assetId, price, decimals, assetType_);
    }

    function setChainlinkFeed(
        bytes32 assetId,
        address feed,
        uint48 maxStaleness,
        uint8 normalizationDecimals,
        AssetType assetType_
    ) external onlyRole(PRICE_SETTER_ROLE) {
        _setChainlinkFeed(assetId, feed, maxStaleness, normalizationDecimals, bytes32(0), assetType_);
    }

    /// @notice Configures a multi-step feed where the result of this feed is passed into nextAssetId.
    /// @dev Example: setChainlinkFeedChained(WSTETH_ID, WSTETH_ETH_FEED, ..., ETH_ID, RAW)
    ///      where ETH_ID is already configured with a single ETH/USD feed.
    function setChainlinkFeedChained(
        bytes32 assetId,
        address feed,
        uint48 maxStaleness,
        uint8 normalizationDecimals,
        bytes32 nextAssetId,
        AssetType assetType_
    ) external onlyRole(PRICE_SETTER_ROLE) {
        require(nextAssetId != bytes32(0), ZeroNextAssetId());
        _setChainlinkFeed(assetId, feed, maxStaleness, normalizationDecimals, nextAssetId, assetType_);
    }

    function _setChainlinkFeed(
        bytes32 assetId,
        address feed,
        uint48 maxStaleness,
        uint8 normalizationDecimals,
        bytes32 nextAssetId,
        AssetType assetType_
    ) internal {
        require(feed != address(0), ZeroAddress());
        require(maxStaleness > 0, InvalidMaxStaleness());
        require(normalizationDecimals <= 77, NormalizationDecimalsTooHigh());
        _clearConfig(assetId);
        feedConfigs[assetId] = FeedConfig({
            feed: AggregatorV3Interface(feed),
            maxStaleness: maxStaleness,
            normalizationDecimals: normalizationDecimals,
            nextAssetId: nextAssetId
        });
        _setAssetType(assetId, assetType_);
        _validatePrice(assetId);
        emit ChainlinkFeedSet(assetId, feed, maxStaleness, normalizationDecimals, nextAssetId, assetType_);
    }

    function clearConfig(bytes32 assetId) external onlyRole(PRICE_SETTER_ROLE) {
        _clearConfig(assetId);
        emit ChainlinkFeedSet(assetId, address(0), 0, 0, bytes32(0), AssetType.RAW);
        emit StaticPriceSet(assetId, 0, 0, AssetType.RAW);
    }

    function _clearConfig(bytes32 assetId) internal {
        delete feedConfigs[assetId];
        delete staticPrice[assetId];
        delete staticDecimals[assetId];
        delete assetType[assetId];
    }

    function feedConfig(bytes32 assetId) external view returns (
        address feed, uint48 maxStaleness, uint8 normalizationDecimals, bytes32 nextAssetId
    ) {
        FeedConfig memory config = feedConfigs[assetId];
        return (address(config.feed), config.maxStaleness, config.normalizationDecimals, config.nextAssetId);
    }

    function getAssetValue(bytes32 assetId, uint256 amount) external view returns (uint256) {
        return _getAssetValue(assetId, amount, 0);
    }

    function _getAssetValue(bytes32 assetId, uint256 amount, uint256 depth) internal view returns (uint256) {
        require(depth < 5, MaxDepthReached());
        AssetType assetType_ = assetType[assetId];
        if (assetType_ == AssetType.ERC4626) {
            amount = IERC4626(Utils.bytes32ToAddress(assetId)).previewRedeem(amount);
        } else if (assetType_ == AssetType.ERC7540) {
            amount = IERC7540(Utils.bytes32ToAddress(assetId)).convertToAssets(amount);
        }

        FeedConfig memory config = feedConfigs[assetId];
        if (address(config.feed) != address(0)) {
            uint256 value = _getChainlinkValue(config, amount);
            if (config.nextAssetId != bytes32(0)) {
                return _getAssetValue(config.nextAssetId, value, depth + 1);
            }
            return value;
        }
        require(staticPrice[assetId] != 0, PriceNotConfigured());
        return amount.mulDiv(staticPrice[assetId], 10 ** staticDecimals[assetId]);
    }

    /// @dev Calls getAssetValue with a probe amount of 1 to verify the full chain is reachable
    ///      and terminates. Reverts on misconfiguration (stale feed, missing next step, circular ref).
    function _validatePrice(bytes32 assetId) internal view {
        _getAssetValue(assetId, 1 ether, 0);
    }

    function _getChainlinkValue(
        FeedConfig memory config,
        uint256 amount
    ) internal view returns (uint256) {
        (, int256 answer,, uint256 updatedAt,) = config.feed.latestRoundData();
        require(answer > 0, InvalidPrice());
        require(block.timestamp >= updatedAt && block.timestamp - updatedAt <= config.maxStaleness, StalePrice());
        return amount.mulDiv(uint256(answer), 10 ** config.normalizationDecimals);
    }

    function _setAssetType(bytes32 assetId, AssetType assetType_) internal {
        if (assetType_ != AssetType.RAW) {
            Utils.bytes32ToAddress(assetId);
        }
        assetType[assetId] = assetType_;
    }

}

// ============================================================
// FILE: project/contracts/CreditHub.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {CreditHubBase} from "./CreditHubBase.sol";

/// @title Credit line and tokens hub.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Main credit hub implementation: borrows from and repays to the contract's own asset balance.
/// @dev Use this when the hub holds the lending asset directly. For pool-backed lending use StashCreditHub.
contract CreditHub is CreditHubBase {
    constructor(
        IERC20 asset,
        uint256 maxUtilization,
        uint256 fixedFeeBps,
        uint256 annualRateBps,
        address legacyController,
        uint256 domain
    ) CreditHubBase(asset, maxUtilization, fixedFeeBps, annualRateBps, legacyController, domain) {}

    function initialize(
        IOracle priceOracle_,
        address controller,
        address registrator,
        address admin,
        address liquidator,
        address profitAdmin,
        address pauser,
        uint256 perBlockBorrowLimitBps_
    ) public initializer {
        _initializeBase(
            priceOracle_,
            controller,
            registrator,
            admin,
            liquidator,
            profitAdmin,
            pauser,
            perBlockBorrowLimitBps_
        );
    }
}

// ============================================================
// FILE: project/contracts/CreditHubBase.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {Math} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EndOfMonthTimestamps} from "./EndOfMonthTimestamps.sol";
import {ICreditHub} from "./interfaces/ICreditHub.sol";
import {ERC7201Helper} from "./utils/ERC7201Helper.sol";
import {IEscrow} from "./interfaces/IEscrow.sol";
import {Utils} from "./utils/Utils.sol";

/// @title Credit line and tokens hub (base, upgradeable storage).
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Base contract for credit hubs: manages collateral, credit lines, borrow/repay, and liquidations.
/// @notice Pausing restricts outflow of value from the hub, but not inflow.
/// @dev Upgradeable via ERC-7201 namespaced storage.
abstract contract CreditHubBase is ICreditHub, AccessControlUpgradeable {
    using Math for uint256;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using EnumerableSet for EnumerableSet.BytesSet;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;

    /// @dev Debt: (1) grace until EOM+7d → (2) carryover until repaid. (3) Fees.
    struct CreditInfo {
        uint256 graceAmount;          // (1) in grace window until gracePeriodEnd, then moves to carryover
        uint256 carryoverAmount;      // (2) accrues 12% APY yearly, new debts go directly here if positive
        uint256 fee;                  // (3)
        uint256 gracePeriodEnd;       // timestamp when grace ends (EOM + 7 days)
        uint256 lastUpdate;           // everything is synced up to this time
    }

    struct Debtor {
        address debtor;
        uint256 liquidationLimit;
        uint256 totalCollateralValue;
    }

    enum CollateralStatus {
        UNKNOWN,
        ACTIVE
    }

    struct CollateralConfig {
        CollateralStatus status;
        uint256 ltv;
        uint256 mLtv;
        uint256 liquidationBonus;
    }

    bytes32 internal constant CONTROLLER_ROLE = "CONTROLLER_ROLE";
    bytes32 internal constant LIQUIDATOR_ROLE = "LIQUIDATOR_ROLE";
    bytes32 internal constant REGISTRATOR_ROLE = "REGISTRATOR_ROLE";
    bytes32 internal constant WITHDRAW_PROFIT_ROLE = "WITHDRAW_PROFIT_ROLE";
    bytes32 internal constant PAUSER_ROLE = "PAUSER_ROLE";

    uint256 internal constant DENOMINATOR = 100_00;
    IERC20 public immutable CREDIT_ASSET;
    uint256 public immutable MAX_UTILIZATION;
    /// @dev Immediate fee on borrow: 0.5% (50 bps).
    uint256 public immutable FIXED_FEE_BPS;
    /// @dev Annual rate for carryover accrual from day 7: 15% (1500 bps).
    uint256 public immutable ANNUAL_RATE_BPS;
    uint256 internal constant SECONDS_PER_YEAR = 365 days;
    /// @dev From cycle end, annual APY starts after this many seconds (7 days).
    uint256 internal constant GRACE_PERIOD = 7 days;
    uint256 internal constant MAX_GLOBAL_ASSETS = 10;
    address internal immutable LEGACY_CONTROLLER;
    uint256 internal immutable DOMAIN;

    /// @custom:storage-location erc7201:sprinter-credit.storage.CreditHubBase
    struct CreditHubBaseStorage {
        uint256 totalBorrowed;
        uint256 withdrawalNonce;
        uint256 profit;
        uint256 perBlockBorrowLimitBps;
        uint256 perBlockBorrowLimitLeft;
        uint256 blockNumberOfLastBorrow;
        IOracle priceOracle;
        bool paused;
        mapping(address user => address) operator;
        mapping(address user => EnumerableSet.Bytes32Set) collateralSet;
        mapping(address user => mapping(bytes32 collateralId => uint256 amount)) collateralAmount;
        mapping(address user => CreditInfo) creditInfo;
        EnumerableSet.AddressSet debtors;
        mapping(bytes32 collateralId => CollateralConfig) collateralConfig;
        mapping(address user => mapping(
            uint256 originDomainId => mapping(
                bytes32 originAssetId => uint256 amount))) originAmount;
        mapping(address user => EnumerableSet.BytesSet) originSet;
        mapping(uint256 originDomainId => mapping(
            bytes32 originAssetId => bytes32 collateralId)) collateralIds;
        EnumerableSet.Bytes32Set registeredCollateralIds;
        mapping(address liquidator => mapping(
            address user => mapping(
                uint256 originDomainId => mapping(
                    bytes32 originAssetId => uint256 amount)))) liquidatedAmount;
        mapping(address liquidator => EnumerableSet.BytesSet) liquidatedOriginSet;
        mapping(address user => Origin[]) liquidationOrder;
    }

    bytes32 private immutable STORAGE_LOCATION;

    event CollateralRegistered(uint256 originDomainId, bytes32 originAssetId, bytes32 collateralId);
    event Deposit(
        address controller,
        address receiver,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 collateralId,
        uint256 amount
    );
    event Withdraw(
        address controller,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount,
        uint256 nonce
    );

    event DrawCredit(address borrower, address receiver, uint256 amount, address caller);
    event Repay(address repayer, address borrower, uint256 amount, uint256 profit);
    event Liquidate(
        address liquidator,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        uint256 amount
    );
    event ClaimLiquidatedDeposit(
        address controller,
        address liquidator,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount,
        uint256 nonce
    );
    event CollateralConfigSet(bytes32 collateralId, uint256 ltv, uint256 mLtv, uint256 liquidationBonus);
    event WithdrawProfit(address withdrawer, address receiver, uint256 amount);
    event OperatorSet(address user, address operator);
    event Paused(address account);
    event Unpaused(address account);
    event PerBlockBorrowLimitSet(uint256 bps);
    event PriceOracleSet(address priceOracle);

    error ZeroAddress();
    error CollateralAlreadyRegistered();
    error ZeroId();
    error HealthFactorTooLow();
    error InvalidRate();
    error InsufficientOriginDeposit();
    error LiquidationNotNeeded();
    error NotLiquidated();
    error InvalidCollateralConfig();
    error CollateralConfigAlreadySet();
    error NoProfit();
    error ZeroAmount();
    error UnregisteredOrigin();
    error UnauthorizedCaller();
    error OperatorAlreadySet();
    error OperatorCannotBeSelf();
    error ReceiverCannotBeSelf();
    error TooManyGlobalAssets();
    error EnforcedPause();
    error UtilizationTooHigh();
    error PerBlockBorrowLimitExceeded();
    error InvalidPerBlockBorrowLimit();
    error LiquidationTooSmall();
    error LegacyOnlyLocal();
    error LegacyNotAllowed();
    error LegacyAlreadyLocked();

    constructor(
        IERC20 asset,
        uint256 maxUtilization,
        uint256 fixedFeeBps,
        uint256 annualRateBps,
        address legacyController,
        uint256 domain
    ) {
        _disableInitializers();
        STORAGE_LOCATION = ERC7201Helper.getStorageLocation("sprinter-credit.storage.CreditHubBase");
        require(address(asset) != address(0), ZeroAddress());
        require(legacyController != address(0), ZeroAddress());
        require(maxUtilization <= DENOMINATOR, UtilizationTooHigh());
        require(fixedFeeBps <= 5_00, InvalidRate());
        require(annualRateBps <= DENOMINATOR, InvalidRate());
        CREDIT_ASSET = asset;
        MAX_UTILIZATION = maxUtilization;
        FIXED_FEE_BPS = fixedFeeBps;
        ANNUAL_RATE_BPS = annualRateBps;
        LEGACY_CONTROLLER = legacyController;
        DOMAIN = domain;
    }

    function _initializeBase(
        IOracle priceOracle_,
        address controller,
        address registrator,
        address admin,
        address liquidator,
        address profitAdmin,
        address pauser,
        uint256 perBlockBorrowLimitBps_
    ) internal onlyInitializing {
        require(address(priceOracle_) != address(0), ZeroAddress());
        require(admin != address(0), ZeroAddress());
        require(controller != address(0), ZeroAddress());
        require(registrator != address(0), ZeroAddress());
        require(liquidator != address(0), ZeroAddress());
        require(profitAdmin != address(0), ZeroAddress());
        require(pauser != address(0), ZeroAddress());
        require(perBlockBorrowLimitBps_ <= DENOMINATOR, InvalidPerBlockBorrowLimit());
        CreditHubBaseStorage storage $ = _getStorageBase();
        $.priceOracle = priceOracle_;
        $.perBlockBorrowLimitBps = perBlockBorrowLimitBps_;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(CONTROLLER_ROLE, controller);
        _grantRole(REGISTRATOR_ROLE, registrator);
        _grantRole(LIQUIDATOR_ROLE, liquidator);
        _grantRole(WITHDRAW_PROFIT_ROLE, profitAdmin);
        _grantRole(PAUSER_ROLE, pauser);
    }

    function _getStorageBase() internal view returns (CreditHubBaseStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }

    // Getters for storage-backed state
    function operator(address user) public view returns (address) {
        return _getStorageBase().operator[user];
    }

    function collateralAmount(address user, bytes32 collateralId) public view returns (uint256) {
        return _getStorageBase().collateralAmount[user][collateralId];
    }

    function creditInfo(address user) public view returns (CreditInfo memory) {
        return _getStorageBase().creditInfo[user];
    }

    function collateralConfig(bytes32 collateralId) public view returns (CollateralConfig memory) {
        return _getStorageBase().collateralConfig[collateralId];
    }

    function originAmount(address user, uint256 originDomainId, bytes32 originAssetId) public view returns (uint256) {
        return _getStorageBase().originAmount[user][originDomainId][originAssetId];
    }

    function collateralIds(uint256 originDomainId, bytes32 originAssetId) public view returns (bytes32) {
        return _getStorageBase().collateralIds[originDomainId][originAssetId];
    }

    function liquidatedAmount(address liquidator, address user, uint256 originDomainId, bytes32 originAssetId) public view returns (uint256) {
        return _getStorageBase().liquidatedAmount[liquidator][user][originDomainId][originAssetId];
    }

    function totalBorrowed() public view returns (uint256) {
        return _getStorageBase().totalBorrowed;
    }

    function withdrawalNonce() public view returns (uint256) {
        return _getStorageBase().withdrawalNonce;
    }

    function priceOracle() public view returns (IOracle) {
        return _getStorageBase().priceOracle;
    }

    function profit() public view returns (uint256) {
        return _getStorageBase().profit;
    }

    function paused() public view returns (bool) {
        return _getStorageBase().paused;
    }

    function perBlockBorrowLimitBps() public view returns (uint256) {
        return _getStorageBase().perBlockBorrowLimitBps;
    }

    function setPerBlockBorrowLimitBps(uint256 bps) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(bps <= DENOMINATOR, InvalidPerBlockBorrowLimit());
        _getStorageBase().perBlockBorrowLimitBps = bps;
        emit PerBlockBorrowLimitSet(bps);
    }

    /// @notice Could run out of gas if there are many registered collateralIds.
    /// @notice Consider removing the validation if that ever happens.
    function setPriceOracle(address newPriceOracle) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(newPriceOracle != address(0), ZeroAddress());
        CreditHubBaseStorage storage $ = _getStorageBase();
        IOracle newOracle = IOracle(newPriceOracle);
        for (uint256 i = 0; i < $.registeredCollateralIds.length(); i++) {
            // Validate that new price oracle does not revert for all collateralIds.
            newOracle.getAssetValue($.registeredCollateralIds.at(i), 1 ether);
        }
        $.priceOracle = newOracle;
        emit PriceOracleSet(newPriceOracle);
    }

    function _getCollateralValue(CreditHubBaseStorage storage $, bytes32 collateralId, uint256 amount)
        internal
        view
        returns (uint256)
    {
        if (amount == 0) return 0;
        return $.priceOracle.getAssetValue(collateralId, amount);
    }

    modifier whenNotPaused() {
        require(!_getStorageBase().paused, EnforcedPause());
        _;
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _getStorageBase().paused = true;
        emit Paused(msg.sender);
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _getStorageBase().paused = false;
        emit Unpaused(msg.sender);
    }

    function registerCollateral(
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 collateralId
    ) external onlyRole(REGISTRATOR_ROLE) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        require($.collateralIds[originDomainId][originAssetId] == bytes32(0), CollateralAlreadyRegistered());
        require(collateralId != bytes32(0), ZeroId());
        // Validate that price oracle does not revert for collateralId.
        _getCollateralValue($, collateralId, 1 ether);
        $.collateralIds[originDomainId][originAssetId] = collateralId;
        $.registeredCollateralIds.add(collateralId);

        emit CollateralRegistered(originDomainId, originAssetId, collateralId);
    }

    function _setCollateralConfig(
        bytes32 collateralId,
        uint256 ltv,
        uint256 mLtv,
        uint256 liquidationBonus
    ) internal {
        CreditHubBaseStorage storage $ = _getStorageBase();
        require(mLtv <= DENOMINATOR, InvalidCollateralConfig());
        require(ltv <= mLtv, InvalidCollateralConfig());
        require(liquidationBonus <= 15_00, InvalidCollateralConfig());
        require(liquidationBonus <= DENOMINATOR - mLtv, InvalidCollateralConfig());
        $.collateralConfig[collateralId] = CollateralConfig(CollateralStatus.ACTIVE, ltv, mLtv, liquidationBonus);

        emit CollateralConfigSet(collateralId, ltv, mLtv, liquidationBonus);
    }

    function setCollateralConfig(
        bytes32 collateralId,
        uint256 ltv,
        uint256 mLtv,
        uint256 liquidationBonus_
    ) external onlyRole(REGISTRATOR_ROLE) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        require(ltv > 0, InvalidCollateralConfig());
        require($.collateralConfig[collateralId].status == CollateralStatus.UNKNOWN, CollateralConfigAlreadySet());
        _setCollateralConfig(collateralId, ltv, mLtv, liquidationBonus_);
    }

    function updateCollateralConfig(
        bytes32 collateralId,
        uint256 ltv,
        uint256 mLtv,
        uint256 liquidationBonus_
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setCollateralConfig(collateralId, ltv, mLtv, liquidationBonus_);
    }

    function setOperator(address newOperator) external {
        CreditHubBaseStorage storage $ = _getStorageBase();
        address user = msg.sender;
        require($.operator[user] == address(0), OperatorAlreadySet());
        require(newOperator != address(0), ZeroAddress());
        require(newOperator != user, OperatorCannotBeSelf());
        $.operator[user] = newOperator;
        emit OperatorSet(user, newOperator);
    }

    function clearOperator(address user) external {
        CreditHubBaseStorage storage $ = _getStorageBase();
        address current = $.operator[user];
        require(current != address(0), ZeroAddress());
        require(msg.sender == current, UnauthorizedCaller());
        $.operator[user] = address(0);
        emit OperatorSet(user, address(0));
    }

    modifier onlyOperatorIfSetOrBorrower(address caller, address borrower) {
        address op = _getStorageBase().operator[borrower];
        require(
            op == address(0) ? caller == borrower : caller == op,
            UnauthorizedCaller()
        );
        _;
    }

    function withdrawProfit(
        address receiver
    ) external onlyRole(WITHDRAW_PROFIT_ROLE) whenNotPaused {
        require(receiver != address(0), ZeroAddress());
        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 profitAmount = $.profit;
        require(profitAmount > 0, NoProfit());
        $.profit = 0;
        CREDIT_ASSET.safeTransfer(receiver, profitAmount);
        emit WithdrawProfit(msg.sender, receiver, profitAmount);
    }

    /// @notice Attacker might pollute collateralSet of the victim with dust amounts, which will
    ///         make the victim unable to deposit other collaterals. In such a case, victim needs
    ///         to withdraw dust first. Attacker cannot gain anything from this behavior.
    function deposit(
        address receiver,
        uint256 originDomainId,
        bytes32 originAssetId,
        uint256 amount
    ) external onlyRole(CONTROLLER_ROLE) {
        if (originDomainId == DOMAIN) {
            uint256 legacyLocked = IEscrow(Utils.bytes32ToAddress(originAssetId))
                .lockedByController(receiver, LEGACY_CONTROLLER);
            if (msg.sender == LEGACY_CONTROLLER) {
                // Only allows to increase old deposit. To prevent simultaneous asset deposit from both controllers.
                require(legacyLocked > amount, LegacyNotAllowed());
            } else {
                // New controller is only allowed if there is no lock on legacy.
                // To prevent simultaneous asset deposit from both controllers.
                require(legacyLocked == 0, LegacyAlreadyLocked());
            }
        } else {
            // Remote domain collateral only through new controller.
            require(msg.sender != LEGACY_CONTROLLER, LegacyOnlyLocal());
        }
        CreditHubBaseStorage storage $ = _getStorageBase();
        require(receiver != address(0), ZeroAddress());
        require(amount > 0, ZeroAmount());
        bytes32 collateralId = $.collateralIds[originDomainId][originAssetId];
        require(collateralId != bytes32(0), ZeroId());
        $.originAmount[receiver][originDomainId][originAssetId] += amount;
        $.collateralAmount[receiver][collateralId] += amount;
        $.collateralSet[receiver].add(collateralId);
        $.originSet[receiver].add(abi.encode(originDomainId, originAssetId));
        require($.collateralSet[receiver].length() <= MAX_GLOBAL_ASSETS, TooManyGlobalAssets());

        emit Deposit(msg.sender, receiver, originDomainId, originAssetId, collateralId, amount);
    }

    function _decreaseOriginCollateral(
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        uint256 amount
    ) internal {
        CreditHubBaseStorage storage $ = _getStorageBase();
        bytes32 collateralId = $.collateralIds[originDomainId][originAssetId];
        $.originAmount[borrower][originDomainId][originAssetId] -= amount;
        if ($.originAmount[borrower][originDomainId][originAssetId] == 0) {
            $.originSet[borrower].remove(abi.encode(originDomainId, originAssetId));
        }
        $.collateralAmount[borrower][collateralId] -= amount;
        if ($.collateralAmount[borrower][collateralId] == 0) {
            $.collateralSet[borrower].remove(collateralId);
        }
    }

    function withdraw(
        address caller,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount
    ) external onlyRole(CONTROLLER_ROLE) whenNotPaused onlyOperatorIfSetOrBorrower(caller, borrower) {
        // Prevent withdrawing remote assets through legacy controller.
        if (msg.sender == LEGACY_CONTROLLER) {
            require(originDomainId == DOMAIN, LegacyOnlyLocal());
        }
        require(amount > 0, ZeroAmount());
        require(originReceiver != bytes32(0), ZeroAddress());
        CreditHubBaseStorage storage $ = _getStorageBase();
        require($.originAmount[borrower][originDomainId][originAssetId] >= amount, InsufficientOriginDeposit());
        _decreaseOriginCollateral(borrower, originDomainId, originAssetId, amount);
        _validateHealthFactor(borrower);

        emit Withdraw(
            msg.sender,
            borrower,
            originDomainId,
            originAssetId,
            originReceiver,
            amount,
            $.withdrawalNonce++
        );
    }

    function _drawCredit(
        address borrower,
        address receiver,
        uint256 amount
    ) internal virtual {
        require(amount > 0, ZeroAmount());
        require(receiver != address(0), ZeroAddress());
        require(receiver != address(this), ReceiverCannotBeSelf());
        CreditHubBaseStorage storage $ = _getStorageBase();
        CreditInfo memory info = getUpdatedCreditInfo(borrower);
        if (info.carryoverAmount > 0) {
            info.carryoverAmount += amount;
        } else {
            info.fee += _fixedFee(amount);
            info.graceAmount += amount;
        }
        $.creditInfo[borrower] = info;
        $.debtors.add(borrower);
        $.totalBorrowed += amount;
        CREDIT_ASSET.safeTransfer(receiver, amount);

        _validateHealthFactor(borrower);
        _validateUtilization();
        _validatePerBlockBorrowLimit(amount);

        emit DrawCredit(borrower, receiver, amount, msg.sender);
    }

    function drawCredit(
        address borrower,
        address receiver,
        uint256 amount
    ) external onlyOperatorIfSetOrBorrower(msg.sender, borrower) whenNotPaused {
        _drawCredit(borrower, receiver, amount);
    }

    function repay(
        address borrower,
        uint256 amount
    ) public virtual returns (uint256, uint256) {
        require(amount > 0, ZeroAmount());
        CreditHubBaseStorage storage $ = _getStorageBase();
        CreditInfo memory info = getUpdatedCreditInfo(borrower);
        uint256 remaining = amount;

        // 1) Outstanding fees first.
        uint256 repayedFee = Math.min(info.fee, remaining);
        remaining -= repayedFee;
        info.fee -= repayedFee;

        // 2) Carryover debt.
        uint256 repayedCarryover = remaining > 0 && info.carryoverAmount > 0
            ? Math.min(info.carryoverAmount, remaining)
            : 0;
        remaining -= repayedCarryover;
        info.carryoverAmount -= repayedCarryover;

        // 3) Grace period debt.
        uint256 repayedGrace = remaining > 0 && info.graceAmount > 0
            ? Math.min(info.graceAmount, remaining)
            : 0;
        remaining -= repayedGrace;
        info.graceAmount -= repayedGrace;

        uint256 repayedPrincipal = repayedCarryover + repayedGrace;
        uint256 repayedTotal = repayedFee + repayedPrincipal;
        $.creditInfo[borrower] = info;
        $.profit += repayedFee;

        $.totalBorrowed -= repayedPrincipal;
        if (_isCreditCleared(info)) {
            $.debtors.remove(borrower);
        }
        CREDIT_ASSET.safeTransferFrom(msg.sender, address(this), repayedTotal);
        emit Repay(msg.sender, borrower, repayedPrincipal, repayedFee);

        return (repayedPrincipal, repayedFee);
    }

    function repayWithPermit(
        address borrower,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns(uint256, uint256) {
        try IERC20Permit(address(CREDIT_ASSET)).permit(
            msg.sender,
            address(this),
            amount,
            deadline,
            v,
            r,
            s
        ) {} catch {}
        return repay(borrower, amount);
    }

    function _liquidateOrigin(
        address liquidator,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        uint256 leftToReward
    ) internal returns (uint256 newLeftToReward) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 depositAmount = $.originAmount[borrower][originDomainId][originAssetId];
        bytes32 collateralId = $.collateralIds[originDomainId][originAssetId];
        uint256 liquidationBonus = $.collateralConfig[collateralId].liquidationBonus;
        uint256 depositValue = _getCollateralValue($, collateralId, depositAmount);
        if (depositValue == 0) return leftToReward;

        uint256 remainingRewardValue = leftToReward.mulDiv(DENOMINATOR + liquidationBonus, DENOMINATOR, Math.Rounding.Ceil);
        uint256 liquidateValue = Math.min(remainingRewardValue, depositValue);
        // If liquidateValue(remainingRewardValue) is smaller than value of a single unit of collateral, then do not reward.
        uint256 liquidateAmount = depositAmount.mulDiv(liquidateValue, depositValue);
        if (liquidateAmount == 0) return leftToReward;

        _decreaseOriginCollateral(borrower, originDomainId, originAssetId, liquidateAmount);
        $.liquidatedOriginSet[liquidator].add(abi.encode(borrower, originDomainId, originAssetId));
        $.liquidatedAmount[liquidator][borrower][originDomainId][originAssetId] += liquidateAmount;
        emit Liquidate(liquidator, borrower, originDomainId, originAssetId, liquidateAmount);

        // Must Floor here so that rewarded value is never > leftToReward.
        return leftToReward - liquidateValue.mulDiv(DENOMINATOR, DENOMINATOR + liquidationBonus);
    }

    function liquidate(
        address borrower,
        uint256 amount
    ) external onlyRole(LIQUIDATOR_ROLE) whenNotPaused returns (uint256) {
        address liquidator = msg.sender;
        (,,,, uint256 liquidationLimit, uint256 mHealthFactor) = getUserData(borrower);
        CreditInfo memory info = getUpdatedCreditInfo(borrower);
        require(
            mHealthFactor < DENOMINATOR ||
            _isFeeLiquidateable(info),
            LiquidationNotNeeded()
        );
        uint256 maxRepay;
        if (mHealthFactor < DENOMINATOR) {
            maxRepay = liquidationLimit;
        } else {
            maxRepay = info.fee;
        }
        (uint256 repayedPrincipal, uint256 repayedFee) = repay(borrower, Math.min(amount, maxRepay));
        uint256 leftToReward = repayedPrincipal + repayedFee;

        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 orderLength = $.liquidationOrder[borrower].length;
        for (uint256 i = 0; i < orderLength && leftToReward > 0; i++) {
            Origin memory order = $.liquidationOrder[borrower][i];
            (uint256 originDomainId, bytes32 originAssetId) = (order.originDomainId, order.originAssetId);
            uint256 newLeftToReward = _liquidateOrigin(liquidator, borrower, originDomainId, originAssetId, leftToReward);
            if (newLeftToReward == leftToReward) {
                break;
            }
            leftToReward = newLeftToReward;
        }

        if (leftToReward > 0) {
            bytes[] memory defaultOrder = $.originSet[borrower].values();
            for (uint256 i = 0; i < defaultOrder.length && leftToReward > 0; i++) {
                (uint256 originDomainId, bytes32 originAssetId) = abi.decode(defaultOrder[i], (uint256, bytes32));
                leftToReward = _liquidateOrigin(liquidator, borrower, originDomainId, originAssetId, leftToReward);
            }
        }
        require(leftToReward < repayedPrincipal + repayedFee, LiquidationTooSmall());

        (, uint256 debt,,, uint256 liquidationLimitAfter, uint256 newMHealthFactor) = getUserData(borrower);
        require(newMHealthFactor >= mHealthFactor || liquidationLimitAfter < debt, HealthFactorTooLow());
        return repayedPrincipal + repayedFee;
    }

    function claimLiquidatedDeposit(
        address liquidator,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver
    ) external onlyRole(CONTROLLER_ROLE) whenNotPaused returns (uint256 amount) {
        // Prevent claiming remote assets through legacy controller.
        if (msg.sender == LEGACY_CONTROLLER) {
            require(originDomainId == DOMAIN, LegacyOnlyLocal());
        }
        require(originReceiver != bytes32(0), ZeroAddress());
        address controller = msg.sender;
        CreditHubBaseStorage storage $ = _getStorageBase();
        require(
            $.liquidatedOriginSet[liquidator].remove(abi.encode(borrower, originDomainId, originAssetId)),
            NotLiquidated()
        );
        amount = $.liquidatedAmount[liquidator][borrower][originDomainId][originAssetId];
        $.liquidatedAmount[liquidator][borrower][originDomainId][originAssetId] = 0;
        emit ClaimLiquidatedDeposit(
            controller,
            liquidator,
            borrower,
            originDomainId,
            originAssetId,
            originReceiver,
            amount,
            $.withdrawalNonce++
        );
        return amount;
    }

    function getUserData(address user) public view returns (uint256, uint256, uint256, uint256, uint256, uint256) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 totalCollateralValue = 0;
        uint256 totalCreditCapacity = 0;
        uint256 maintenanceCreditCapacity = 0;
        uint256 liquidationLimit = 0;
        uint256 totalCollaterals = $.collateralSet[user].length();
        for (uint256 i = 0; i < totalCollaterals; i++) {
            bytes32 collateralId = $.collateralSet[user].at(i);
            uint256 amount = $.collateralAmount[user][collateralId];
            uint256 collateralValue = _getCollateralValue($, collateralId, amount);
            totalCollateralValue += collateralValue;
            totalCreditCapacity += collateralValue.mulDiv($.collateralConfig[collateralId].ltv, DENOMINATOR);
            maintenanceCreditCapacity += collateralValue.mulDiv($.collateralConfig[collateralId].mLtv, DENOMINATOR);
            liquidationLimit += collateralValue.mulDiv(DENOMINATOR, DENOMINATOR + $.collateralConfig[collateralId].liquidationBonus);
        }
        uint256 debt = getUserDebt(user);
        uint256 healthFactor = debt == 0 ? type(uint256).max : totalCreditCapacity.mulDiv(DENOMINATOR, debt);
        uint256 mHealthFactor = debt == 0 ? type(uint256).max : maintenanceCreditCapacity.mulDiv(DENOMINATOR, debt);
        return (totalCreditCapacity, debt, healthFactor, totalCollateralValue, liquidationLimit, mHealthFactor);
    }

    function getHealthFactor(address user) public view returns (uint256) {
        uint256 healthFactor;
        (,, healthFactor,,,) = getUserData(user);
        return healthFactor;
    }

    function setLiquidationOrder(Origin[] calldata order) external {
        CreditHubBaseStorage storage $ = _getStorageBase();
        delete $.liquidationOrder[msg.sender];
        for (uint256 i = 0; i < order.length; i++) {
            require($.collateralIds[order[i].originDomainId][order[i].originAssetId] != bytes32(0), UnregisteredOrigin());
            $.liquidationOrder[msg.sender].push(order[i]);
        }
    }

    function getLiquidationOrder(address user) external view returns (Origin[] memory) {
        return _getStorageBase().liquidationOrder[user];
    }

    function _validateHealthFactor(address user) internal view {
        require(getHealthFactor(user) >= DENOMINATOR, HealthFactorTooLow());
    }

    function getUpdatedCreditInfo(address user) public view returns (CreditInfo memory) {
        CreditInfo memory info = _getStorageBase().creditInfo[user];

        uint256 now_ = block.timestamp;
        uint256 lastUpdate = info.lastUpdate;

        // 1. Accrue carryover rate on recorded carryover amount since lastUpdate until now.
        info.fee += _accrueCarryoverFee(info.carryoverAmount, lastUpdate, now_);

        // 2. If grace period ended: accrue carryover rate on grace amount since end of grace until now, then migrate grace to carryover.
        if (info.graceAmount > 0 && info.gracePeriodEnd > 0 && info.gracePeriodEnd <= now_) {
            info.fee += _accrueCarryoverFee(info.graceAmount, info.gracePeriodEnd, now_);
            info.carryoverAmount += info.graceAmount;
            info.graceAmount = 0;
        }

        if (info.carryoverAmount > 0) {
            info.gracePeriodEnd = 0;
        } else if (info.graceAmount == 0) {
            info.gracePeriodEnd = _getNextEndOfMonth(now_) + GRACE_PERIOD;
        }

        info.lastUpdate = now_;
        return info;
    }

    /// @dev Returns the next cycle end (end of month) strictly after the given timestamp.
    function _getNextEndOfMonth(uint256 timestamp) internal pure returns (uint256) {
        return EndOfMonthTimestamps.getNextEndOfMonth(timestamp);
    }

    function _accrueCarryoverFee(uint256 amount, uint256 fromTime, uint256 toTime) internal view returns (uint256) {
        if (amount == 0 || toTime <= fromTime) return 0;
        return amount.mulDiv((toTime - fromTime) * ANNUAL_RATE_BPS, DENOMINATOR * SECONDS_PER_YEAR, Math.Rounding.Ceil);
    }

    function _fixedFee(uint256 amount) internal view returns (uint256) {
        return amount.mulDiv(FIXED_FEE_BPS, DENOMINATOR, Math.Rounding.Ceil);
    }

    function _isCreditCleared(CreditInfo memory info) internal pure returns (bool) {
        uint256 totalPrincipal = info.graceAmount + info.carryoverAmount;
        return totalPrincipal == 0 && info.fee == 0;
    }

    function getUserDebt(address user) public view returns (uint256) {
        CreditInfo memory info = getUpdatedCreditInfo(user);
        return info.fee
            + info.graceAmount
            + info.carryoverAmount;
    }

    /// @dev Returns the remaining credit capacity for a user, only limited by the user state.
    function remainingCreditCapacity(address user) public view returns (uint256) {
        (uint256 totalCreditCapacity, uint256 debt,,,,) = getUserData(user);
        if (totalCreditCapacity <= debt) {
            return 0;
        }
        uint256 remainingUserCapacity = totalCreditCapacity - debt;
        CreditInfo memory info = getUpdatedCreditInfo(user);
        if (info.carryoverAmount == 0) {
            remainingUserCapacity = remainingUserCapacity.mulDiv(DENOMINATOR, DENOMINATOR + FIXED_FEE_BPS);
        }

        return remainingUserCapacity;
    }

    /// @dev Returns the global credit capcity limited by throttles, burst caps and other limits.
    function immediateCreditCapacity() public view returns (uint256) {
        uint256 _totalBorrowed = _getStorageBase().totalBorrowed;
        uint256 totalUtilizationCapacity = totalLiquidity().mulDiv(MAX_UTILIZATION, DENOMINATOR);
        if (totalUtilizationCapacity <= _totalBorrowed) {
            return 0;
        }
        return Math.min(totalUtilizationCapacity - _totalBorrowed, _perBlockBorrowLimitLeft());
    }

    /// @dev Treats repayed fees as new liquidity.
    function remainingLiquidity() public view virtual returns (uint256) {
        return CREDIT_ASSET.balanceOf(address(this));
    }

    function totalLiquidity() public view virtual returns (uint256) {
        return remainingLiquidity() + _getStorageBase().totalBorrowed;
    }

    function utilization() public view returns (uint256) {
        return _utilization();
    }

    function _utilization() internal view returns (uint256) {
        uint256 total = totalLiquidity();
        if (total == 0) {
            return 0;
        }
        uint256 _totalBorrowed = _getStorageBase().totalBorrowed;
        return _totalBorrowed.mulDiv(DENOMINATOR, total, Math.Rounding.Ceil);
    }

    function _validateUtilization() internal view {
        require(_utilization() <= MAX_UTILIZATION, UtilizationTooHigh());
    }

    function _perBlockBorrowLimitLeft() internal view returns (uint256) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        if (block.number != $.blockNumberOfLastBorrow) {
            return totalLiquidity().mulDiv($.perBlockBorrowLimitBps, DENOMINATOR);
        }
        return $.perBlockBorrowLimitLeft;
    }

    function _validatePerBlockBorrowLimit(uint256 newBorrowed) internal {
        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 limit = _perBlockBorrowLimitLeft();
        require(limit >= newBorrowed, PerBlockBorrowLimitExceeded());
        if (block.number != $.blockNumberOfLastBorrow) {
            $.blockNumberOfLastBorrow = block.number;
        }
        $.perBlockBorrowLimitLeft = limit - newBorrowed;
    }

    function maxWithdraw(
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId
    ) external view returns (uint256) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        bytes32 collateralId = $.collateralIds[originDomainId][originAssetId];
        uint256 amount = $.originAmount[borrower][originDomainId][originAssetId];
        // Overestimating asset credit capacity to provide a safe upper bound.
        uint256 assetCreditCapacity = _getCollateralValue($, collateralId, amount)
            .mulDiv($.collateralConfig[collateralId].ltv, DENOMINATOR, Math.Rounding.Ceil);
        uint256 collateralCreditCapacity = _getCollateralValue($, collateralId, $.collateralAmount[borrower][collateralId])
            .mulDiv($.collateralConfig[collateralId].ltv, DENOMINATOR);
        // Though it cannot be greater than collateral credit capacity.
        assetCreditCapacity = Math.min(assetCreditCapacity, collateralCreditCapacity);
        if (assetCreditCapacity == 0) {
            return amount;
        }
        (uint256 totalCreditCapacity, uint256 debt,,,,) = getUserData(borrower);
        if (totalCreditCapacity <= debt) {
            return 0;
        }
        uint256 availableValue = totalCreditCapacity - debt;
        if (availableValue >= assetCreditCapacity) {
            return amount;
        }
        return amount.mulDiv(availableValue, assetCreditCapacity);
    }

    function getDebtorsLength() external view returns (uint256) {
        return _getStorageBase().debtors.length();
    }

    /// @dev Returns the debtors for liquidation.
    /// @notice In case of a fully liquidated debtor that still has bad debt,
    ///         it will still return it with zero liquidation limit.
    function getDebtorsForLiquidation(
        uint256 pageNumber, uint256 pageSize
    ) external view returns(Debtor[] memory) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 totalDebtors = $.debtors.length();
        uint256 startIndex = pageNumber * pageSize;
        if (startIndex >= totalDebtors) {
            return new Debtor[](0);
        }
        uint256 endIndex = startIndex + pageSize;
        if (endIndex > totalDebtors) {
            endIndex = totalDebtors;
        }

        uint256 debtorsSize = 0;
        Debtor[] memory result = new Debtor[](pageSize);
        for (uint256 i = startIndex; i < endIndex; i++) {
            address debtor = $.debtors.at(i);
            (, uint256 debt,, uint256 totalCollateral, uint256 liquidationLimit, uint256 mHealthFactor) = getUserData(debtor);
            if (mHealthFactor < DENOMINATOR) {
                result[debtorsSize] = Debtor(debtor, Math.min(debt, liquidationLimit), totalCollateral);
                debtorsSize++;
            } else {
                CreditInfo memory info = getUpdatedCreditInfo(debtor);
                if (_isFeeLiquidateable(info)) {
                    result[debtorsSize] = Debtor(debtor, Math.min(info.fee, liquidationLimit), totalCollateral);
                    debtorsSize++;
                }
            }
        }

        assembly ("memory-safe") {
            // Array length is stored at the result array pointer, so we update it directly.
            mstore(result, debtorsSize)
        }
        return result;
    }

    function _isFeeLiquidateable(CreditInfo memory info) internal view returns (bool) {
        return info.fee > 0 && info.gracePeriodEnd <= block.timestamp;
    }

    function getLiquidatedOriginsLength(
        address liquidator
    ) external view returns (uint256) {
        return _getStorageBase().liquidatedOriginSet[liquidator].length();
    }

    function getLiquidatedOriginAt(
        address liquidator,
        uint256 index
    ) external view returns (address borrower, uint256 originDomainId, bytes32 originAssetId) {
        return abi.decode(_getStorageBase().liquidatedOriginSet[liquidator].at(index), (address, uint256, bytes32));
    }

    function getOrigins(address user) external view returns (Origin[] memory) {
        CreditHubBaseStorage storage $ = _getStorageBase();
        uint256 totalOrigins = $.originSet[user].length();
        Origin[] memory result = new Origin[](totalOrigins);
        for (uint256 i = 0; i < totalOrigins; i++) {
            (uint256 originDomainId, bytes32 originAssetId) = abi.decode($.originSet[user].at(i), (uint256, bytes32));
            result[i] = Origin(originDomainId, originAssetId);
        }
        return result;
    }
}

// ============================================================
// FILE: project/contracts/CreditHubController.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {BitMaps} from "@openzeppelin/contracts/utils/structs/BitMaps.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {ICreditHub} from "./interfaces/ICreditHub.sol";
import {ICreditHubController} from "./interfaces/ICreditHubController.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {Utils} from "./utils/Utils.sol";
import {ERC7201Helper} from "./utils/ERC7201Helper.sol";

/// @title CreditHub controller contract for remote collateral.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Verifies signed deposit/withdraw messages and executes them on the CreditHub.
/// @dev Uses a signer to validate deposits (locks from origin domain/asset/nonce); tracks processed deposits per origin to prevent replay.
/// @dev Warning! Signer must ensure that the remote events get finalized before signing.
/// @dev Uses ERC-7201 namespaced storage.
contract CreditHubController is AccessControlUpgradeable, ICreditHubController {
    using BitMaps for BitMaps.BitMap;

    ICreditHub public immutable HUB;
    uint256 public immutable DOMAIN;

    event SignerSet(address signer);

    error ZeroAddress();
    error InvalidSignature();
    error DepositAlreadyProcessed();
    error LocalDomainNotAllowed();

    /// @custom:storage-location erc7201:sprinter-credit.storage.CreditHubController
    struct CreditHubControllerStorage {
        address signer;
        mapping(uint256 originDomainId => mapping(
            bytes32 originAssetId => BitMaps.BitMap)) processedDeposits;
    }

    bytes32 private immutable STORAGE_LOCATION;

    constructor(address hub, uint256 domain) {
        _disableInitializers();
        STORAGE_LOCATION = ERC7201Helper.getStorageLocation("sprinter-credit.storage.CreditHubController");
        require(hub != address(0), ZeroAddress());
        HUB = ICreditHub(hub);
        DOMAIN = domain;
    }

    function initialize(address admin, address signer_) external initializer() {
        require(admin != address(0), ZeroAddress());
        require(signer_ != address(0), ZeroAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _setSigner(signer_);
    }

    function signer() public view returns (address) {
        return _getStorage().signer;
    }

    function setSigner(address signer_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(signer_ != address(0), ZeroAddress());
        _setSigner(signer_);
    }

    /// @dev Signer must wait for the finality of the event before signing.
    function deposit(
        address receiver,
        uint256 originDomainId,
        bytes32 originAssetId,
        uint256 amount,
        uint256 nonce,
        bytes calldata signature
    ) external {
        // Local deposits must use depositLocal() instead.
        require(receiver != address(0), ZeroAddress());
        require(originDomainId != DOMAIN, LocalDomainNotAllowed());
        CreditHubControllerStorage storage $ = _getStorage();
        require($.processedDeposits[originDomainId][originAssetId].get(nonce) == false, DepositAlreadyProcessed());
        $.processedDeposits[originDomainId][originAssetId].set(nonce);
        // Signature parameters:
        // Escrow.Lock event (Lock.controller must be the one configured for the CreditHub):
        // HUB - CreditHub address
        // nonce - nonce
        // receiver - owner
        // block.chainid - CreditHub chain id
        // originDomainId - Escrow domain id
        // originAssetId - bytes32(Escrow.address)
        // amount - assets
        // address(this) - CreditHubController address
        bytes32 depositHash = keccak256(abi.encode(
            HUB,
            nonce,
            receiver,
            block.chainid,
            originDomainId,
            originAssetId,
            amount,
            address(this)
        ));
        require(SignatureChecker.isValidSignatureNow($.signer, depositHash, signature), InvalidSignature());
        HUB.deposit(receiver, originDomainId, originAssetId, amount);
    }

    function depositLocal(uint256 amount, address receiver, uint256 nonce) external {
        bytes32 originAssetId = _addressToBytes32(msg.sender);
        CreditHubControllerStorage storage $ = _getStorage();
        require($.processedDeposits[DOMAIN][originAssetId].get(nonce) == false, DepositAlreadyProcessed());
        $.processedDeposits[DOMAIN][originAssetId].set(nonce);
        HUB.deposit(receiver, DOMAIN, originAssetId, amount);
    }

    function withdraw(
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount
    ) external {
        address caller = msg.sender;
        HUB.withdraw(caller, borrower, originDomainId, originAssetId, originReceiver, amount);
        if (originDomainId == DOMAIN) {
            IERC4626(Utils.bytes32ToAddress(originAssetId)).redeem(
                amount, Utils.bytes32ToAddress(originReceiver), borrower
            );
        }
    }

    function claim(address borrower, uint256 originDomainId, bytes32 originAssetId, bytes32 originReceiver) external {
        address liquidator = msg.sender;
        uint256 amount =
            HUB.claimLiquidatedDeposit(liquidator, borrower, originDomainId, originAssetId, originReceiver);
        if (originDomainId == DOMAIN) {
            IERC4626(Utils.bytes32ToAddress(originAssetId)).redeem(
                amount, Utils.bytes32ToAddress(originReceiver), borrower
            );
        }
    }

    function isDepositProcessed(uint256 originDomainId, bytes32 originAssetId, uint256 nonce)
        external view returns (bool)
    {
        return _getStorage().processedDeposits[originDomainId][originAssetId].get(nonce);
    }

    function _setSigner(address signer_) internal {
        _getStorage().signer = signer_;
        emit SignerSet(signer_);
    }

    function _addressToBytes32(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    function _getStorage() private view returns (CreditHubControllerStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }
}

// ============================================================
// FILE: project/contracts/EndOfMonthTimestamps.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title End-of-month timestamps library.
/// @author Sprinter
/// @notice Provides Unix timestamps for end-of-month boundaries used in credit cycle and grace period calculations.
/// @dev Index 0 is the first EOM; values are fixed and used to determine cycle boundaries and grace period end (EOM + 7 days).
library EndOfMonthTimestamps {
    function _getTimestamp(uint256 index) private pure returns (uint256) {
        if (index == 0) return 1769904000;
        if (index == 1) return 1772323200;
        if (index == 2) return 1775001600;
        if (index == 3) return 1777593600;
        if (index == 4) return 1780272000;
        if (index == 5) return 1782864000;
        if (index == 6) return 1785542400;
        if (index == 7) return 1788220800;
        if (index == 8) return 1790812800;
        if (index == 9) return 1793491200;
        if (index == 10) return 1796083200;
        if (index == 11) return 1798761600;
        if (index == 12) return 1801440000;
        if (index == 13) return 1803859200;
        if (index == 14) return 1806537600;
        if (index == 15) return 1809129600;
        if (index == 16) return 1811808000;
        if (index == 17) return 1814400000;
        if (index == 18) return 1817078400;
        if (index == 19) return 1819756800;
        if (index == 20) return 1822348800;
        if (index == 21) return 1825027200;
        if (index == 22) return 1827619200;
        if (index == 23) return 1830297600;
        if (index == 24) return 1832976000;
        if (index == 25) return 1835481600;
        if (index == 26) return 1838160000;
        if (index == 27) return 1840752000;
        if (index == 28) return 1843430400;
        if (index == 29) return 1846022400;
        if (index == 30) return 1848700800;
        if (index == 31) return 1851379200;
        if (index == 32) return 1853971200;
        if (index == 33) return 1856649600;
        if (index == 34) return 1859241600;
        if (index == 35) return 1861920000;
        if (index == 36) return 1864598400;
        if (index == 37) return 1867017600;
        if (index == 38) return 1869696000;
        if (index == 39) return 1872288000;
        if (index == 40) return 1874966400;
        if (index == 41) return 1877558400;
        if (index == 42) return 1880236800;
        if (index == 43) return 1882915200;
        if (index == 44) return 1885507200;
        if (index == 45) return 1888185600;
        if (index == 46) return 1890777600;
        if (index == 47) return 1893456000;
        if (index == 48) return 1896134400;
        if (index == 49) return 1898553600;
        if (index == 50) return 1901232000;
        if (index == 51) return 1903824000;
        if (index == 52) return 1906502400;
        if (index == 53) return 1909094400;
        if (index == 54) return 1911772800;
        if (index == 55) return 1914451200;
        if (index == 56) return 1917043200;
        if (index == 57) return 1919721600;
        if (index == 58) return 1922313600;
        if (index == 59) return 1924992000;
        if (index == 60) return 1927670400;
        if (index == 61) return 1930089600;
        if (index == 62) return 1932768000;
        if (index == 63) return 1935360000;
        if (index == 64) return 1938038400;
        if (index == 65) return 1940630400;
        if (index == 66) return 1943308800;
        if (index == 67) return 1945987200;
        if (index == 68) return 1948579200;
        if (index == 69) return 1951257600;
        if (index == 70) return 1953849600;
        if (index == 71) return 1956528000;
        if (index == 72) return 1959206400;
        if (index == 73) return 1961712000;
        if (index == 74) return 1964390400;
        if (index == 75) return 1966982400;
        if (index == 76) return 1969660800;
        if (index == 77) return 1972252800;
        if (index == 78) return 1974931200;
        if (index == 79) return 1977609600;
        if (index == 80) return 1980201600;
        if (index == 81) return 1982880000;
        if (index == 82) return 1985472000;
        if (index == 83) return 1988150400;
        if (index == 84) return 1990828800;
        if (index == 85) return 1993248000;
        if (index == 86) return 1995926400;
        if (index == 87) return 1998518400;
        if (index == 88) return 2001196800;
        if (index == 89) return 2003788800;
        if (index == 90) return 2006467200;
        if (index == 91) return 2009145600;
        if (index == 92) return 2011737600;
        if (index == 93) return 2014416000;
        if (index == 94) return 2017008000;
        if (index == 95) return 2019686400;
        if (index == 96) return 2022364800;
        if (index == 97) return 2024784000;
        if (index == 98) return 2027462400;
        if (index == 99) return 2030054400;
        if (index == 100) return 2032732800;
        if (index == 101) return 2035324800;
        if (index == 102) return 2038003200;
        if (index == 103) return 2040681600;
        if (index == 104) return 2043273600;
        if (index == 105) return 2045952000;
        if (index == 106) return 2048544000;
        if (index == 107) return 2051222400;
        if (index == 108) return 2053900800;
        if (index == 109) return 2056320000;
        if (index == 110) return 2058998400;
        if (index == 111) return 2061590400;
        if (index == 112) return 2064268800;
        if (index == 113) return 2066860800;
        if (index == 114) return 2069539200;
        if (index == 115) return 2072217600;
        if (index == 116) return 2074809600;
        if (index == 117) return 2077488000;
        if (index == 118) return 2080080000;
        if (index == 119) return 2082758400;
        if (index == 120) return 2085436800;
        if (index == 121) return 2087942400;
        if (index == 122) return 2090620800;
        if (index == 123) return 2093212800;
        if (index == 124) return 2095891200;
        if (index == 125) return 2098483200;
        if (index == 126) return 2101161600;
        if (index == 127) return 2103840000;
        if (index == 128) return 2106432000;
        if (index == 129) return 2109110400;
        if (index == 130) return 2111702400;
        if (index == 131) return 2114380800;
        revert("Index out of bounds");
    }

    function getNextEndOfMonth(uint256 currentTimestamp) internal pure returns (uint256) {
        for (uint256 i = 0; i < 132; i++) {
            uint256 timestamp = _getTimestamp(i);
            if (timestamp > currentTimestamp) {
                return timestamp;
            }
        }
        revert("No next end of month available");
    }

    function getEndOfMonthByIndex(uint256 index) internal pure returns (uint256) {
        require(index < 132, "Index out of bounds");
        return _getTimestamp(index);
    }

    function getTotalCount() internal pure returns (uint256) {
        return 132;
    }
}

// ============================================================
// FILE: project/contracts/Escrow.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// solhint-disable-next-line no-unused-import
import {ERC4626, ERC20, Math} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {IEscrow} from "./interfaces/IEscrow.sol";

/// @title Escrow contract for remote collateral that acts like a 1-1 wrapper.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice ERC4626 vault over the underlying asset; supports locking shares per controller for cross-domain collateral.
/// @dev Controllers lock/unlock shares; maxRedeem/maxWithdraw respect locked amounts per controller.
/// @dev Warning! Locking shares to an invalid/malfunctioning controller will result in lost funds.
contract Escrow is ERC4626, IEscrow {
    using Math for uint256;

    mapping(address user => uint256 assets) public locked;
    mapping(address user => mapping(address controller => uint256 assets)) public lockedByController;
    uint256 public lockNonce;

    event Lock(address controller, address owner, uint256 assets, uint256 nonce);
    event Unlock(address controller, address owner, uint256 assets);

    error InsufficientShares();
    error InsufficientLockedShares();
    error ZeroAddress();
    error ZeroAmount();
    error NotImplemented();

    constructor(
        IERC20 asset,
        string memory name_,
        string memory symbol_
    )
        ERC4626(asset)
        ERC20(name_, symbol_)
    {
    }

    function totalAssets() public view virtual override returns (uint256) {
        return totalSupply();
    }

    function maxWithdraw(address owner) public view override returns (uint256) {
        return convertToAssets(maxRedeem(owner));
    }

    function maxRedeem(address owner) public view override returns (uint256) {
        uint256 lockedShares = locked[owner];
        if (msg.sender != owner) {
            // Take into account how much current controller can potentially unlock.
            lockedShares -= lockedByController[owner][msg.sender];
        }
        uint256 totalShares = super.maxRedeem(owner);

        return totalShares - lockedShares;
    }

    /// @dev Warning! Locking shares to an invalid/malfunctioning controller will result in lost funds.
    /// @notice Locks shares for an owner.
    /// @param shares The amount of shares to lock.
    /// @param controller The EscrowController address.
    /// @return nonce The nonce of the lock.
    function lock(uint256 shares, address controller) external returns(uint256) {
        return _lock(shares, msg.sender, controller);
    }

    function depositAndLock(uint256 assets, address receiver, address controller)
        public returns(uint256 nonce, uint256 sharesLocked)
    {
        sharesLocked = deposit(assets, receiver);
        nonce = _lock(sharesLocked, receiver, controller);
        return (nonce, sharesLocked);
    }

    function _lock(uint256 shares, address owner, address controller) internal virtual returns(uint256) {
        require(controller != address(0), ZeroAddress());
        require(shares > 0, ZeroAmount());
        uint256 availableShares = maxRedeem(owner);
        require(availableShares >= shares, InsufficientShares());
        locked[owner] = locked[owner] + shares;
        lockedByController[owner][controller] = lockedByController[owner][controller] + shares;

        uint256 nonce = lockNonce++;
        emit Lock(controller, owner, shares, nonce);
        return nonce;
    }

    function unlock(uint256 shares, address owner) external {
        _unlock(shares, owner, msg.sender);
    }

    function _unlock(uint256 shares, address owner, address controller) internal {
        require(shares > 0, ZeroAmount());
        uint256 lockedShares = locked[owner];
        uint256 lockedSharesByController = lockedByController[owner][controller];
        require(lockedSharesByController >= shares, InsufficientLockedShares());
        locked[owner] = lockedShares - shares;
        lockedByController[owner][controller] = lockedSharesByController - shares;

        emit Unlock(controller, owner, shares);
    }

    function _convertToShares(uint256 assets, Math.Rounding /* rounding */)
        internal view virtual override returns (uint256)
    {
        return assets;
    }

    function _convertToAssets(uint256 shares, Math.Rounding /* rounding */)
        internal view virtual override returns (uint256)
    {
        return shares;
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override {
        require(receiver != address(0), ZeroAddress());
        super._deposit(caller, receiver, assets, shares);
    }

    function _withdraw(
        address caller,
        address receiver,
        address owner, 
        uint256 assets,
        uint256 shares
    ) internal override {
        require(receiver != address(0), ZeroAddress());
        if (caller != owner) {
            _unlock(shares, owner, caller);
        }
        super._withdraw(caller, receiver, owner, assets, shares);
    }

    function _spendAllowance(address, address, uint256) internal pure override {
        // transferFrom is disabled and withdrawal from someone requires an unlock.
        return;
    }

    function transfer(address, uint256) public pure override(IERC20, ERC20) returns (bool) {
        revert NotImplemented();
    }

    function allowance(address, address) public pure override(IERC20, ERC20) returns (uint256) {
        // Silences the unreachable code warning from ERC20._spendAllowance().
        return 0;
    }

    function approve(address, uint256) public pure override(IERC20, ERC20) returns (bool) {
        revert NotImplemented();
    }

    function transferFrom(address, address, uint256) public pure override(IERC20, ERC20) returns (bool) {
        revert NotImplemented();
    }
}

// ============================================================
// FILE: project/contracts/EscrowController.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {BitMaps} from "@openzeppelin/contracts/utils/structs/BitMaps.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IEscrow} from "./interfaces/IEscrow.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC7201Helper} from "./utils/ERC7201Helper.sol";

/// @title Escrow controller contract for remote collateral.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Verifies signed unlock/withdraw messages and executes them on Escrows.
/// @dev Tracks processed withdrawal nonces to prevent replay.
/// @dev Warning! Signer must ensure that the remote events get finalized before signing.
/// @dev Uses ERC-7201 namespaced storage.
contract EscrowController is AccessControlUpgradeable {
    using BitMaps for BitMaps.BitMap;

    address public immutable HUB;
    uint256 public immutable DOMAIN;

    event SignerSet(address signer);

    error ZeroAddress();
    error ZeroAmount();
    error InvalidSignature();
    error WithdrawalAlreadyProcessed();

    /// @custom:storage-location erc7201:sprinter-credit.storage.EscrowController
    struct EscrowControllerStorage {
        address signer;
        BitMaps.BitMap processedWithdrawals;
    }

    bytes32 private immutable STORAGE_LOCATION;

    constructor(address hub, uint256 domain) {
        _disableInitializers();
        STORAGE_LOCATION = ERC7201Helper.getStorageLocation("sprinter-credit.storage.EscrowController");
        require(hub != address(0), ZeroAddress());
        HUB = hub;
        DOMAIN = domain;
    }

    function initialize(address admin, address signer_) external initializer() {
        require(admin != address(0), ZeroAddress());
        require(signer_ != address(0), ZeroAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _setSigner(signer_);
    }

    function signer() public view returns (address) {
        return _getStorage().signer;
    }

    function setSigner(address signer_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(signer_ != address(0), ZeroAddress());
        _setSigner(signer_);
    }

    function unlock(IEscrow escrow, uint256 amount, uint256 nonce, bytes calldata signature) external {
        require(amount > 0, ZeroAmount());
        address user = msg.sender;
        _processSignature(escrow, user, user, amount, nonce, signature);
        escrow.unlock(amount, user);
    }

    function withdraw(
        IEscrow escrow,
        address user,
        address receiver,
        uint256 amount,
        uint256 nonce,
        bytes calldata signature
    ) external {
        require(amount > 0, ZeroAmount());
        require(receiver != address(0), ZeroAddress());
        _processSignature(escrow, user, receiver, amount, nonce, signature);
        IERC4626(address(escrow)).redeem(amount, receiver, user);
    }

    function isWithdrawalProcessed(uint256 nonce) external view returns (bool) {
        return _getStorage().processedWithdrawals.get(nonce);
    }

    function _setSigner(address signer_) internal {
        _getStorage().signer = signer_;
        emit SignerSet(signer_);
    }

    /// @dev Signer must wait for the finality of the event before signing.
    function _processSignature(
        IEscrow escrow,
        address user,
        address receiver,
        uint256 amount,
        uint256 nonce,
        bytes calldata signature
    ) internal {
        EscrowControllerStorage storage $ = _getStorage();
        require($.processedWithdrawals.get(nonce) == false, WithdrawalAlreadyProcessed());
        $.processedWithdrawals.set(nonce);
        // Signature parameters:
        // CreditHub.Withdraw and CreditHub.ClaimLiquidatedDeposit events:
        // HUB - CreditHub address
        // nonce - nonce
        // user - borrower
        // receiver - originReceiver
        // DOMAIN - originDomainId
        // escrow - originAssetId
        // amount - amount
        // address(this) - EscrowController address
        bytes32 withdrawHash = keccak256(abi.encode(HUB, nonce, user, receiver, DOMAIN, escrow, amount, address(this)));
        require(SignatureChecker.isValidSignatureNow($.signer, withdrawHash, signature), InvalidSignature());
    }

    function _getStorage() private view returns (EscrowControllerStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }
}

// ============================================================
// FILE: project/contracts/EscrowHelper.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IEscrow} from "./interfaces/IEscrow.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/// @title A helper contract to deposit and lock all assets into an escrow.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Utility for depositing tokens into an Escrow and locking shares in one or more transactions (including wrap + permit flows).
/// @dev Uses the contract as a temporary holder.
/// @dev Warning! Any funds left on the contract after the end of the transaction will be lost.
contract EscrowHelper {
    using SafeERC20 for IERC20;
    using Address for address;

    /// @notice Assumes the funds are already transferred to this contract in the same transaction.
    function depositAndLockAll(
        IEscrow escrow,
        IERC20 token,
        address receiver,
        address controller
    ) public returns (uint256 nonce, uint256 sharesLocked) {
        uint256 balance = token.balanceOf(address(this));
        token.forceApprove(address(escrow), balance);
        return escrow.depositAndLock(balance, receiver, controller);
    }

    /// @notice Assumes the funds are already transferred to this contract in the same transaction.
    function wrapAllDepositAndLock(
        IEscrow escrow,
        IERC20 token,
        address receiver,
        address controller,
        IERC20 underlyingToken,
        bytes calldata wrapData
    ) public returns (uint256 nonce, uint256 sharesLocked) {
        uint256 underlyingAmount = underlyingToken.balanceOf(address(this));
        underlyingToken.forceApprove(address(token), underlyingAmount);
        address(token).functionCall(wrapData);
        return depositAndLockAll(escrow, token, receiver, controller);
    }

}

// ============================================================
// FILE: project/contracts/EscrowLocal.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Escrow} from "./Escrow.sol";
import {ICreditHubController} from "./interfaces/ICreditHubController.sol";

/// @title Escrow contract for local collateral.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Escrow variant where locking shares immediately deposits to the CreditHub via the given controller.
/// @dev Used when collateral and credit hub are on the same chain.
/// @dev Warning! Locking shares to an invalid/malfunctioning controller will result in lost funds.
contract EscrowLocal is Escrow {
    constructor(
        IERC20 asset,
        string memory name_,
        string memory symbol_
    )
        Escrow(asset, name_, symbol_)
    {
    }

    /// @notice Locks shares for an owner with immediate deposit to the CreditHub.
    /// @param shares The amount of shares to lock.
    /// @param controller The CreditHubController address.
    /// @return nonce The nonce of the lock.
    function _lock(uint256 shares, address owner, address controller) internal override returns(uint256) {
        uint256 nonce = super._lock(shares, owner, controller);
        ICreditHubController(controller).depositLocal(shares, owner, nonce);
        return nonce;
    }
}

// ============================================================
// FILE: project/contracts/EscrowLocalVault.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {EscrowVault} from "./EscrowVault.sol";
import {ICreditHubController} from "./interfaces/ICreditHubController.sol";

/// @title Escrow contract for local collateral with rebasing/variable share price.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice EscrowVault variant where locking shares immediately deposits to the CreditHub via the given controller.
/// @dev Used when collateral and credit hub are on the same chain and the asset may rebase or accrue yield.
/// @dev Warning! Locking shares to an invalid/malfunctioning controller will result in lost funds.
contract EscrowLocalVault is EscrowVault {
    constructor(
        IERC20 asset,
        string memory name_,
        string memory symbol_
    )
        EscrowVault(asset, name_, symbol_)
    {
    }

    /// @notice Locks shares for an owner with immediate deposit to the CreditHub.
    /// @param shares The amount of shares to lock.
    /// @param controller The CreditHubController address.
    /// @return nonce The nonce of the lock.
    function _lock(uint256 shares, address owner, address controller) internal override returns(uint256) {
        uint256 nonce = super._lock(shares, owner, controller);
        ICreditHubController(controller).depositLocal(shares, owner, nonce);
        return nonce;
    }
}

// ============================================================
// FILE: project/contracts/EscrowVault.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {Escrow} from "./Escrow.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC4626, Math} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

/// @title Escrow contract for remote collateral that could rebase or receive rewards.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Escrow that uses the underlying vault's totalAssets/shares conversion (e.g. for rebasing or yield-bearing assets).
/// @dev Overrides totalAssets and conversion functions to use ERC4626 logic instead of 1:1; share value can change with vault balance.
/// @dev Warning! Locking shares to an invalid/malfunctioning controller will result in lost funds.
contract EscrowVault is Escrow {
    constructor(
        IERC20 asset,
        string memory name_,
        string memory symbol_
    )
        Escrow(asset, name_, symbol_)
    {
    }

    function totalAssets() public view virtual override returns (uint256) {
        return ERC4626.totalAssets();
    }

    function _convertToShares(uint256 assets, Math.Rounding rounding)
        internal view virtual override returns (uint256)
    {
        return ERC4626._convertToShares(assets, rounding);
    }

    function _convertToAssets(uint256 shares, Math.Rounding rounding)
        internal view virtual override returns (uint256)
    {
        return ERC4626._convertToAssets(shares, rounding);
    }
}

// ============================================================
// FILE: project/contracts/interfaces/AggregatorV3Interface.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

/// @title Minimal Chainlink AggregatorV3 interface.
interface AggregatorV3Interface {
    function latestRoundData() external view returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    );

    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: project/contracts/interfaces/ICreateX.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

/**
 * @title CreateX Factory Interface Definition
 * @author pcaversaccio (https://web.archive.org/web/20230921103111/https://pcaversaccio.com/)
 * @custom:coauthor Matt Solomon (https://web.archive.org/web/20230921103335/https://mattsolomon.dev/)
 */
interface ICreateX {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                            TYPES                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    struct Values {
        uint256 constructorAmount;
        uint256 initCallAmount;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    event ContractCreation(address indexed newContract, bytes32 indexed salt);
    event ContractCreation(address indexed newContract);
    event Create3ProxyContractCreation(address indexed newContract, bytes32 indexed salt);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CUSTOM ERRORS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error FailedContractCreation(address emitter);
    error FailedContractInitialisation(address emitter, bytes revertData);
    error InvalidSalt(address emitter);
    error InvalidNonceValue(address emitter);
    error FailedEtherTransfer(address emitter, bytes revertData);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           CREATE                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function deployCreate(bytes memory initCode) external payable returns (address newContract);

    function deployCreateAndInit(
        bytes memory initCode,
        bytes memory data,
        Values memory values,
        address refundAddress
    ) external payable returns (address newContract);

    function deployCreateAndInit(
        bytes memory initCode,
        bytes memory data,
        Values memory values
    ) external payable returns (address newContract);

    function deployCreateClone(address implementation, bytes memory data) external payable returns (address proxy);

    function computeCreateAddress(address deployer, uint256 nonce) external view returns (address computedAddress);

    function computeCreateAddress(uint256 nonce) external view returns (address computedAddress);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           CREATE2                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function deployCreate2(bytes32 salt, bytes memory initCode) external payable returns (address newContract);

    function deployCreate2(bytes memory initCode) external payable returns (address newContract);

    function deployCreate2AndInit(
        bytes32 salt,
        bytes memory initCode,
        bytes memory data,
        Values memory values,
        address refundAddress
    ) external payable returns (address newContract);

    function deployCreate2AndInit(
        bytes32 salt,
        bytes memory initCode,
        bytes memory data,
        Values memory values
    ) external payable returns (address newContract);

    function deployCreate2AndInit(
        bytes memory initCode,
        bytes memory data,
        Values memory values,
        address refundAddress
    ) external payable returns (address newContract);

    function deployCreate2AndInit(
        bytes memory initCode,
        bytes memory data,
        Values memory values
    ) external payable returns (address newContract);

    function deployCreate2Clone(
        bytes32 salt,
        address implementation,
        bytes memory data
    ) external payable returns (address proxy);

    function deployCreate2Clone(address implementation, bytes memory data) external payable returns (address proxy);

    function computeCreate2Address(
        bytes32 salt,
        bytes32 initCodeHash,
        address deployer
    ) external pure returns (address computedAddress);

    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash) external view returns (address computedAddress);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           CREATE3                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function deployCreate3(bytes32 salt, bytes memory initCode) external payable returns (address newContract);

    function deployCreate3(bytes memory initCode) external payable returns (address newContract);

    function deployCreate3AndInit(
        bytes32 salt,
        bytes memory initCode,
        bytes memory data,
        Values memory values,
        address refundAddress
    ) external payable returns (address newContract);

    function deployCreate3AndInit(
        bytes32 salt,
        bytes memory initCode,
        bytes memory data,
        Values memory values
    ) external payable returns (address newContract);

    function deployCreate3AndInit(
        bytes memory initCode,
        bytes memory data,
        Values memory values,
        address refundAddress
    ) external payable returns (address newContract);

    function deployCreate3AndInit(
        bytes memory initCode,
        bytes memory data,
        Values memory values
    ) external payable returns (address newContract);

    function computeCreate3Address(bytes32 salt, address deployer) external pure returns (address computedAddress);

    function computeCreate3Address(bytes32 salt) external view returns (address computedAddress);
}

// ============================================================
// FILE: project/contracts/interfaces/ICreditHub.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

/// @title Credit hub interface.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
interface ICreditHub {
    struct Origin {
        uint256 originDomainId;
        bytes32 originAssetId;
    }

    function deposit(address receiver, uint256 originDomainId, bytes32 originAssetId, uint256 amount) external;
    function drawCredit(address borrower, address receiver, uint256 amount) external;
    function clearOperator(address user) external;
    function operator(address user) external view returns (address);
    function withdraw(
        address caller,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount
    ) external;
    function setLiquidationOrder(Origin[] calldata order) external;
    function getLiquidationOrder(address user) external view returns (Origin[] memory);
    function liquidate(
        address borrower,
        uint256 amount
    ) external returns (uint256 repayedTotal);
    function claimLiquidatedDeposit(
        address liquidator,
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver
    ) external returns (uint256 amount);
    function getLiquidatedOriginsLength(
        address liquidator
    ) external view returns (uint256 length);
    function getLiquidatedOriginAt(
        address liquidator,
        uint256 index
    ) external view returns (address borrower, uint256 originDomainId, bytes32 originAssetId);
    function CREDIT_ASSET() external view returns (IERC20 asset);
}

// ============================================================
// FILE: project/contracts/interfaces/ICreditHubController.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {ICreditHub} from "./ICreditHub.sol";

/// @title Credit hub controller interface.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
interface ICreditHubController {
    function withdraw(
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount
    ) external;
    function depositLocal(uint256 amount, address receiver, uint256 nonce) external;
    function claim(
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver
    ) external;
    function HUB() external view returns (ICreditHub);
    function DOMAIN() external view returns (uint256);
}

// ============================================================
// FILE: project/contracts/interfaces/IERC7540.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/// @dev Minimal interface for ERC-7540 asynchronous redemption (requestRedeem and claim).
interface IERC7540 is IERC4626 {
    function requestRedeem(uint256 shares, address controller, address owner) external returns (uint256 requestId);
}

// ============================================================
// FILE: project/contracts/interfaces/IEscrow.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

/// @title Escrow interface.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
interface IEscrow {
    function unlock(uint256 amount, address user) external;
    function depositAndLock(
        uint256 assets,
        address receiver,
        address controller
    ) external returns(uint256 nonce, uint256 sharesLocked);
    function lockedByController(address user, address controller) external view returns (uint256);
}

// ============================================================
// FILE: project/contracts/interfaces/IOracle.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

/// @title Price oracle interface.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
interface IOracle {
    function getAssetValue(bytes32 assetId, uint256 amount) external view returns (uint256);
}

// ============================================================
// FILE: project/contracts/interfaces/IStashLiquidityPool.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IStashLiquidityPool {
    /// @notice Call this function after transferring exact amount of assets.
    function deposit(uint256 amount) external;

    function withdraw(address to, uint256 amount) external;

    function balance(IERC20 token) external view returns (uint256);

    function ASSETS() external view returns (IERC20);
}

// ============================================================
// FILE: project/contracts/liquidation/Liquidator.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ICreditHub} from "../interfaces/ICreditHub.sol";
import {ICreditHubController} from "../interfaces/ICreditHubController.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC7201Helper} from "../utils/ERC7201Helper.sol";
import {Utils} from "../utils/Utils.sol";
import {IEscrow} from "../interfaces/IEscrow.sol";

/// @title Liquidator is a helper contract that holds the allowed receivers per domain and
/// enables liquidity pools to liquidate and claim all the liquidations in a single transaction on the credit hub.
/// @author Sprinter
/// @notice Anyone can call liquidate() with CREDIT_ASSET; rewards are sent to the configured receiver for the origin domain.
/// @dev Uses ERC-7201 namespaced storage.
contract Liquidator is AccessControlUpgradeable {
    using EnumerableSet for EnumerableSet.BytesSet;
    using SafeERC20 for IERC20;
    
    ICreditHub public immutable CREDIT_HUB;
    ICreditHubController public immutable CREDIT_HUB_CONTROLLER;
    ICreditHubController public immutable CREDIT_HUB_CONTROLLER_LEGACY;
    IERC20 public immutable CREDIT_ASSET;
    uint256 public immutable DOMAIN;

    event MissingReceiver(uint256 originDomainId);

    error InvalidArrayLength();
    error ZeroAddress();
    error EmptyLiquidatedOrigins();
    error CreditHubMismatch();

    /// @custom:storage-location erc7201:sprinter-credit.storage.Liquidator
    struct LiquidatorStorage {
        mapping(uint256 originDomainId => bytes32) originReceivers;
    }

    bytes32 private immutable STORAGE_LOCATION;

    /// @notice Set creditHubControllerLegacy = creditHubController if there is no legacy.
    constructor(address creditHubController, uint256 domain, address creditHubControllerLegacy) {
        _disableInitializers();
        STORAGE_LOCATION = ERC7201Helper.getStorageLocation("sprinter-credit.storage.Liquidator");
        require(creditHubController != address(0), ZeroAddress());
        require(creditHubControllerLegacy != address(0), ZeroAddress());
        CREDIT_HUB_CONTROLLER = ICreditHubController(creditHubController);
        CREDIT_HUB = ICreditHubController(creditHubController).HUB();
        CREDIT_HUB_CONTROLLER_LEGACY = ICreditHubController(creditHubControllerLegacy);
        require(CREDIT_HUB == ICreditHubController(creditHubControllerLegacy).HUB(), CreditHubMismatch());
        CREDIT_ASSET = IERC20(CREDIT_HUB.CREDIT_ASSET());
        DOMAIN = domain;
    }

    function initialize(
        address admin,
        uint256[] memory domains,
        bytes32[] memory receivers
    ) external initializer() {
        require(admin != address(0), ZeroAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);

        require(domains.length == receivers.length, InvalidArrayLength());
        for (uint256 i = 0; i < domains.length; i++) {
            _setReceiver(domains[i], receivers[i]);
        }
    }

    function originReceivers(uint256 domain) external view returns (bytes32) {
        return _getStorage().originReceivers[domain];
    }

    function setReceiver(
        uint256 domain, 
        bytes32 receiver
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setReceiver(domain, receiver);
    }

    /// @notice Access control is not needed, as the liquidation rewards are sent to controlled receivers.
    function liquidate(
        address borrower,
        uint256 amount
    ) external {
        CREDIT_ASSET.safeTransferFrom(msg.sender, address(this), amount);
        CREDIT_ASSET.forceApprove(address(CREDIT_HUB), amount);
        CREDIT_HUB.liquidate(borrower, amount);

        claimAndPayback();
    }

    function liquidateMany(
        address[] memory borrowers,
        uint256[] memory amounts,
        uint256 totalAmount
    ) external {
        CREDIT_ASSET.safeTransferFrom(msg.sender, address(this), totalAmount);
        CREDIT_ASSET.forceApprove(address(CREDIT_HUB), totalAmount);
        require(borrowers.length == amounts.length, InvalidArrayLength());
        for (uint256 i = 0; i < borrowers.length; i++) {
            CREDIT_HUB.liquidate(borrowers[i], amounts[i]);
        }

        claimAndPayback();
    }

    /// @notice Claims all liquidations and sends the rewards to the configured receiver for the origin domain.
    /// @dev MissingReceiver should only happen if we've forgot to configure it. So watch out for those events.
    /// @dev In case we accumulate too many liquidated origins due to missing receiver, we would need to upgrade the contract with a paged claimer.
    function claimAndPayback() public {
        LiquidatorStorage storage $ = _getStorage();
        uint256 i = CREDIT_HUB.getLiquidatedOriginsLength(address(this));
        require(i > 0, EmptyLiquidatedOrigins());
        do {
            i--;
            (address borrower, uint256 originDomainId, bytes32 originAssetId) =
                CREDIT_HUB.getLiquidatedOriginAt(address(this), i);

            bytes32 receiver = $.originReceivers[originDomainId];
            if (receiver == bytes32(0)) {
                emit MissingReceiver(originDomainId);
                continue;
            }
            ICreditHubController controller = CREDIT_HUB_CONTROLLER;
            if (originDomainId == DOMAIN) {
                IEscrow escrow = IEscrow(Utils.bytes32ToAddress(originAssetId));
                if (escrow.lockedByController(borrower, address(CREDIT_HUB_CONTROLLER_LEGACY)) > 0) {
                    controller = CREDIT_HUB_CONTROLLER_LEGACY;
                }
            }
            controller.claim(borrower, originDomainId, originAssetId, receiver);
        } while(i > 0);

        payback();
    }

    function payback() public {
        uint256 change = CREDIT_ASSET.balanceOf(address(this));
        if (change > 0) {
            address changeReceiver = Utils.bytes32ToAddress(_getStorage().originReceivers[DOMAIN]);
            if (changeReceiver == address(0)) {
                emit MissingReceiver(DOMAIN);
                return;
            }
            CREDIT_ASSET.safeTransfer(changeReceiver, change);
        }
    }

    function _setReceiver(uint256 domain, bytes32 receiver) internal {
        if (domain == DOMAIN) {
            Utils.bytes32ToAddress(receiver);
        }
        _getStorage().originReceivers[domain] = receiver;
    }

    function _getStorage() private view returns (LiquidatorStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }
}

// ============================================================
// FILE: project/contracts/liquidation/Preprocessor.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {PreprocessorBase} from "./PreprocessorBase.sol";

/// @title Preprocessor is a helper contract that unwinds/swaps liquidated assets.
/// @author Sprinter
/// @notice CALLER_ROLE submits signed process requests; assets are swapped/unwound via Processor and forwarded to RECEIVER.
/// @dev Extends PreprocessorBase with no local oracle; process flows use external signer for swap parameters.
contract Preprocessor is PreprocessorBase {
    constructor(address asset, address receiver) PreprocessorBase(asset, receiver) {}

    function initialize(
        address admin,
        address caller,
        address signer_
    ) public initializer {
        _initializeBase(admin, caller, signer_);
    }
}

// ============================================================
// FILE: project/contracts/liquidation/PreprocessorBase.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {IERC7540} from "../interfaces/IERC7540.sol";
import {Processor} from "./Processor.sol";
import {ERC7201Helper} from "../utils/ERC7201Helper.sol";

/// @title Preprocessor base for unwinding/swapping liquidated assets.
/// @author Sprinter
/// @dev ERC-7201 namespaced storage.
abstract contract PreprocessorBase is AccessControlUpgradeable, MulticallUpgradeable {
    using SafeERC20 for IERC20;

    IERC20 public immutable TARGET_ASSET;
    address public immutable RECEIVER;

    bytes32 internal constant CALLER_ROLE = "CALLER_ROLE";

    event SignerSet(address signer);
    event Processed(address caller, IERC20 tokenIn, uint256 amountIn, uint256 amountOut);
    event Forwarded(address caller, IERC20 token);
    event AdminProcessed(address caller);

    error ZeroAddress();
    error ZeroAmount();
    error DeadlineExceeded();
    error InsufficientAssets();
    error InvalidTokenIn();
    error InvalidSignature();

    /// @custom:storage-location erc7201:sprinter-credit.storage.PreprocessorBase
    struct PreprocessorBaseStorage {
        address signer;
        Processor processor;
    }

    bytes32 private immutable STORAGE_LOCATION;

    constructor(address asset, address receiver) {
        _disableInitializers();
        STORAGE_LOCATION = ERC7201Helper.getStorageLocation("sprinter-credit.storage.PreprocessorBase");
        require(asset != address(0), ZeroAddress());
        require(receiver != address(0), ZeroAddress());
        TARGET_ASSET = IERC20(asset);
        RECEIVER = receiver;
    }

    function _initializeBase(
        address admin,
        address caller,
        address signer_
    ) internal onlyInitializing {
        require(admin != address(0), ZeroAddress());
        require(signer_ != address(0), ZeroAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(CALLER_ROLE, caller);
        PreprocessorBaseStorage storage $ = _getStorageBase();
        $.signer = signer_;
        $.processor = new Processor(address(TARGET_ASSET));
        emit SignerSet(signer_);
    }

    // solhint-disable-next-line func-name-mixedcase
    function PROCESSOR() external view returns (Processor) {
        return _getStorageBase().processor;
    }

    function signer() public view returns (address) {
        return _getStorageBase().signer;
    }

    function setSigner(address signer_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(signer_ != address(0), ZeroAddress());
        _getStorageBase().signer = signer_;

        emit SignerSet(signer_);
    }
    
    function process(
        IERC20 tokenIn,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 deadline,
        bytes calldata signature,
        Processor.Call[] calldata calls
    ) external onlyRole(CALLER_ROLE) {
        require(amountIn > 0, ZeroAmount());
        require(block.timestamp <= deadline, DeadlineExceeded());
        require(tokenIn != TARGET_ASSET, InvalidTokenIn());
        PreprocessorBaseStorage storage $ = _getStorageBase();
        _processSignature(tokenIn, amountIn, amountOutMin, deadline, signature);
        tokenIn.safeTransfer(address($.processor), amountIn);
        uint256 assets = TARGET_ASSET.balanceOf(address(this));
        $.processor.process(calls);
        uint256 assetsAfter = TARGET_ASSET.balanceOf(address(this));
        require(assetsAfter >= assets, InsufficientAssets());
        uint256 amountOut = assetsAfter - assets;
        require(amountOut >= amountOutMin, InsufficientAssets());
        TARGET_ASSET.safeTransfer(RECEIVER, assetsAfter);

        emit Processed(msg.sender, tokenIn, amountIn, amountOut);
    }

    function forward(IERC20 token) external onlyRole(CALLER_ROLE) {
        token.safeTransfer(RECEIVER, token.balanceOf(address(this)));

        emit Forwarded(msg.sender, token);
    }

    function redeem7540(IERC7540 token) external onlyRole(CALLER_ROLE) {
        uint256 balance = token.balanceOf(address(this));
        token.requestRedeem(balance, address(this), address(this));
    }

    function claim7540(IERC7540 token) external {
        withdraw4626(token);
    }

    function redeem4626(IERC4626 token) external onlyRole(CALLER_ROLE) {
        uint256 balance = token.maxRedeem(address(this));
        token.redeem(balance, address(this), address(this));
    }

    function withdraw4626(IERC4626 token) public onlyRole(CALLER_ROLE) {
        uint256 balance = token.maxWithdraw(address(this));
        token.withdraw(balance, address(this), address(this));
    }

    function adminProcess(Processor.Call[] calldata calls) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _getStorageBase().processor.process(calls);

        emit AdminProcessed(msg.sender);
    }

    function _processSignature(
        IERC20 tokenIn,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 deadline,
        bytes calldata signature
    ) internal view virtual {
        bytes32 processHash = keccak256(abi.encode(tokenIn, amountIn, TARGET_ASSET, amountOutMin, block.chainid, deadline));
        require(SignatureChecker.isValidSignatureNow(_getStorageBase().signer, processHash, signature), InvalidSignature());
    }

    function _getStorageBase() private view returns (PreprocessorBaseStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }
}

// ============================================================
// FILE: project/contracts/liquidation/PreprocessorLocal.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {PreprocessorBase} from "./PreprocessorBase.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IOracle} from "../interfaces/IOracle.sol";
import {ERC7201Helper} from "../utils/ERC7201Helper.sol";

/// @title Version of preprocessor that has access to a local oracle.
/// @author Sprinter
/// @notice Preprocessor that uses a local price oracle and max slippage to validate swap output.
contract PreprocessorLocal is PreprocessorBase {
    using Math for uint256;

    uint256 public constant DENOMINATOR = 100_00;
    uint256 public constant MAX_SLIPPAGE_BPS = 5_00;

    event PriceOracleSet(address priceOracle);
    event MaxSlippageSet(uint256 maxSlippage);

    error InvalidMaxSlippage();
    error InsufficientOutputAmount();

    /// @custom:storage-location erc7201:sprinter-credit.storage.PreprocessorLocal
    struct PreprocessorLocalStorage {
        IOracle priceOracle;
        uint256 maxSlippage;
    }

    bytes32 private immutable STORAGE_LOCATION;

    constructor(address asset, address receiver) PreprocessorBase(asset, receiver) {
        STORAGE_LOCATION = ERC7201Helper.getStorageLocation("sprinter-credit.storage.PreprocessorLocal");
    }

    function initialize(
        address admin,
        address caller,
        address signer_,
        address priceOracle_,
        uint256 maxSlippage_
    ) external initializer {
        _initializeBase(admin, caller, signer_);
        require(priceOracle_ != address(0), ZeroAddress());
        require(maxSlippage_ <= MAX_SLIPPAGE_BPS, InvalidMaxSlippage());
        PreprocessorLocalStorage storage $ = _getStorage();
        $.priceOracle = IOracle(priceOracle_);
        $.maxSlippage = maxSlippage_;
        emit PriceOracleSet(priceOracle_);
        emit MaxSlippageSet(maxSlippage_);
    }

    function priceOracle() public view returns (IOracle) {
        return _getStorage().priceOracle;
    }

    function maxSlippage() public view returns (uint256) {
        return _getStorage().maxSlippage;
    }

    function setPriceOracle(address priceOracle_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(priceOracle_ != address(0), ZeroAddress());
        _getStorage().priceOracle = IOracle(priceOracle_);

        emit PriceOracleSet(priceOracle_);
    }

    function setMaxSlippage(uint256 maxSlippage_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(maxSlippage_ <= MAX_SLIPPAGE_BPS, InvalidMaxSlippage());
        _getStorage().maxSlippage = maxSlippage_;

        emit MaxSlippageSet(maxSlippage_);
    }

    function _processSignature(
        IERC20 tokenIn,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256,
        bytes calldata
    ) internal view override {
        PreprocessorLocalStorage storage $ = _getStorage();
        uint256 value = $.priceOracle.getAssetValue(_addressToBytes32(address(tokenIn)), amountIn);
        uint256 amountWithSlippage = value.mulDiv(DENOMINATOR - $.maxSlippage, DENOMINATOR);
        require(amountOutMin >= amountWithSlippage, InsufficientOutputAmount());
    }

    function _addressToBytes32(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    function _getStorage() private view returns (PreprocessorLocalStorage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }
}

// ============================================================
// FILE: project/contracts/liquidation/Processor.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/// @title Processor is a helper contract that provides isolation for unwinds/swaps of liquidated assets.
/// @author Sprinter
/// @notice Owner can execute arbitrary calls (e.g. swap/unwind); any ASSET balance left after process() is sent to the owner.
contract Processor {
    using SafeERC20 for IERC20;
    
    IERC20 public immutable ASSET;
    address public immutable OWNER;

    struct Call {
        address payable target;
        uint256 value;
        bytes data;
    }

    error ZeroAddress();
    error OnlyOwner();

    constructor(
        address asset
    ) {
        require(asset != address(0), ZeroAddress());
        ASSET = IERC20(asset);
        OWNER = msg.sender;
    }

    receive() external payable {}
    
    function process(
        Call[] calldata calls
    ) external {
        require(msg.sender == OWNER, OnlyOwner());
        for (uint256 i = 0; i < calls.length; i++) {
            Address.functionCallWithValue(calls[i].target, calls[i].data, calls[i].value);
        }
        uint256 assets = ASSET.balanceOf(address(this));
        if (assets > 0) {
            ASSET.safeTransfer(OWNER, assets);
        }
    }
}

// ============================================================
// FILE: project/contracts/operator/ExclusiveOperator.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {Operator} from "./Operator.sol";
import {ICreditHub} from "../interfaces/ICreditHub.sol";

/// @title ExclusiveOperator: operator with disabled withdraw and delayed revoke.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Operator variant: withdraw is disabled; revoke is two-step (schedule then finalize after REVOKE_DELAY). Only DRAW_CREDIT_CALLER_ROLE can draw credit.
/// @dev Prevents borrowers from withdrawing via this operator; revoke gives time before operator is cleared. Removing credit receivers is only allowed when this contract is not the user's operator.
contract ExclusiveOperator is Operator {
    uint256 public immutable REVOKE_DELAY;

    mapping(address user => uint256 timestamp) public revokeScheduledAt;

    event RevokeScheduled(address user, uint256 revokeAt);

    error WithdrawDisabled();
    error NotOperator();
    error RevokeNotScheduled();
    error RevokeDelayNotElapsed();
    error RevokeEffective();
    error CannotRemoveReceiverWhileOperatorSet();

    constructor(
        address hub,
        address controller,
        address admin,
        address caller,
        address controllerLegacy,
        uint256 revokeDelay
    ) Operator(hub, controller, admin, caller, controllerLegacy) {
        REVOKE_DELAY = revokeDelay;
    }

    function withdraw(
        address,
        uint256,
        bytes32,
        bytes32,
        uint256
    ) external pure override {
        revert WithdrawDisabled();
    }

    function revoke() external override {
        require(ICreditHub(address(HUB)).operator(msg.sender) == address(this), NotOperator());
        uint256 revokeAt = block.timestamp + REVOKE_DELAY;
        revokeScheduledAt[msg.sender] = revokeAt;
        emit RevokeScheduled(msg.sender, revokeAt);
    }

    function finalizeRevoke() external {
        uint256 accessUntil = revokeScheduledAt[msg.sender];
        require(accessUntil != 0, RevokeNotScheduled());
        require(accessUntil < block.timestamp, RevokeDelayNotElapsed());
        revokeScheduledAt[msg.sender] = 0;
        HUB.clearOperator(msg.sender);
    }

    function removeCreditReceiver(address receiver) external override {
        require(ICreditHub(address(HUB)).operator(msg.sender) != address(this), CannotRemoveReceiverWhileOperatorSet());
        _removeCreditReceiver(msg.sender, receiver);
    }

    function drawCredit(
        address borrower,
        address receiver,
        uint256 amount
    ) external override onlyRole(DRAW_CREDIT_CALLER_ROLE) {
        uint256 accessUntil = revokeScheduledAt[borrower];
        require(accessUntil == 0 || block.timestamp <= accessUntil, RevokeEffective());
        _drawCredit(borrower, receiver, amount);
    }
}

// ============================================================
// FILE: project/contracts/operator/Operator.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {ICreditHub} from "../interfaces/ICreditHub.sol";
import {ICreditHubController} from "../interfaces/ICreditHubController.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {Multicall} from "@openzeppelin/contracts/utils/Multicall.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IEscrow} from "../interfaces/IEscrow.sol";
import {Utils} from "../utils/Utils.sol";

/// @title Operator contract for CreditHub; users set this as operator and retain access to all functions.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Borrowers whitelist receivers; DRAW_CREDIT_CALLER_ROLE or the borrower can draw credit.
contract Operator is AccessControl, Multicall {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant DRAW_CREDIT_CALLER_ROLE = "DRAW_CREDIT_CALLER_ROLE";

    ICreditHub public immutable HUB;
    ICreditHubController public immutable CONTROLLER;
    ICreditHubController public immutable CONTROLLER_LEGACY;

    mapping(address user => EnumerableSet.AddressSet) private _allowedReceivers;

    event CreditReceiverAdded(address user, address receiver);
    event CreditReceiverRemoved(address user, address receiver);
    event AutoTopupConfigSet(address user, address receiver, uint256 threshold, uint256 targetBalance);
    event DrawCredit(address borrower, address receiver, uint256 amount, address caller);

    error ZeroAddress();
    error Unauthorized();
    error OnlyBorrower();
    error ReceiverNotAllowed();
    error ReceiverNotFound();
    error ZeroAmount();
    error TargetBelowThreshold();
    error CreditHubMismatch();

    /// @notice Set controllerLegacy = controller if there is no legacy.
    constructor(
        address hub,
        address controller,
        address admin,
        address caller,
        address controllerLegacy
    ) {
        require(hub != address(0), ZeroAddress());
        require(controller != address(0), ZeroAddress());
        require(controllerLegacy != address(0), ZeroAddress());
        require(admin != address(0), ZeroAddress());
        require(caller != address(0), ZeroAddress());
        HUB = ICreditHub(hub);
        CONTROLLER = ICreditHubController(controller);
        CONTROLLER_LEGACY = ICreditHubController(controllerLegacy);
        require(HUB == ICreditHubController(controller).HUB(), CreditHubMismatch());
        require(HUB == ICreditHubController(controllerLegacy).HUB(), CreditHubMismatch());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(DRAW_CREDIT_CALLER_ROLE, caller);
    }

    function addCreditReceiver(address receiver, uint256 threshold, uint256 targetBalance) external {
        require(receiver != address(0), ZeroAddress());
        require(targetBalance > 0, ZeroAmount());
        require(targetBalance >= threshold, TargetBelowThreshold());
        _allowedReceivers[msg.sender].add(receiver);
        emit CreditReceiverAdded(msg.sender, receiver);
        emit AutoTopupConfigSet(msg.sender, receiver, threshold, targetBalance);
    }

    function updateAutoTopupConfig(address receiver, uint256 threshold, uint256 targetBalance) external {
        require(_allowedReceivers[msg.sender].contains(receiver), ReceiverNotFound());
        require(targetBalance > 0, ZeroAmount());
        require(targetBalance >= threshold, TargetBelowThreshold());
        emit AutoTopupConfigSet(msg.sender, receiver, threshold, targetBalance);
    }

    function removeCreditReceiver(address receiver) external virtual {
        _removeCreditReceiver(msg.sender, receiver);
    }

    function _removeCreditReceiver(address user, address receiver) internal {
        _allowedReceivers[user].remove(receiver);
        emit CreditReceiverRemoved(user, receiver);
    }

    function getCreditReceivers(address user) external view returns (address[] memory) {
        return _allowedReceivers[user].values();
    }

    function drawCredit(
        address borrower,
        address receiver,
        uint256 amount
    ) external virtual {
        require(hasRole(DRAW_CREDIT_CALLER_ROLE, msg.sender) || msg.sender == borrower, Unauthorized());
        _drawCredit(borrower, receiver, amount);
    }

    function _drawCredit(address borrower, address receiver, uint256 amount) internal virtual {
        if (msg.sender != borrower) {
            require(_allowedReceivers[borrower].contains(receiver), ReceiverNotAllowed());
        }
        HUB.drawCredit(borrower, receiver, amount);
        emit DrawCredit(borrower, receiver, amount, msg.sender);
    }

    function withdraw(
        address borrower,
        uint256 originDomainId,
        bytes32 originAssetId,
        bytes32 originReceiver,
        uint256 amount
    ) external virtual {
        require(msg.sender == borrower, OnlyBorrower());
        ICreditHubController controller = CONTROLLER;
        if (originDomainId == CONTROLLER.DOMAIN()) {
            IEscrow escrow = IEscrow(Utils.bytes32ToAddress(originAssetId));
            if (escrow.lockedByController(borrower, address(CONTROLLER_LEGACY)) > 0) {
                controller = CONTROLLER_LEGACY;
            }
        }
        controller.withdraw(borrower, originDomainId, originAssetId, originReceiver, amount);
    }

    function revoke() external virtual {
        HUB.clearOperator(msg.sender);
    }
}

// ============================================================
// FILE: project/contracts/StashCreditHub.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {IStashLiquidityPool} from "./interfaces/IStashLiquidityPool.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {CreditHubBase} from "./CreditHubBase.sol";

/// @title Credit hub that uses a Stash liquidity pool as a source of funds.
/// @author Oleksii Matiiasevych <oleksii@sprinter.tech>
/// @notice Credit hub that draws and returns funds from a Stash liquidity pool instead of holding assets directly.
/// @dev The pool's ASSETS() must match this hub's CREDIT_ASSET. Borrows pull from the pool; repayments return to it.
contract StashCreditHub is CreditHubBase {
    using SafeERC20 for IERC20;

    IStashLiquidityPool public immutable STASH_POOL;

    error StashPoolAssetMismatch();

    constructor(
        IERC20 asset,
        uint256 maxUtilization,
        uint256 fixedFeeBps,
        uint256 annualRateBps,
        address legacyController,
        uint256 domain,
        IStashLiquidityPool stashPool
    ) CreditHubBase(asset, maxUtilization, fixedFeeBps, annualRateBps, legacyController, domain) {
        require(address(stashPool) != address(0), ZeroAddress());
        require(address(CREDIT_ASSET) == address(stashPool.ASSETS()), StashPoolAssetMismatch());
        STASH_POOL = stashPool;
    }

    function initialize(
        IOracle priceOracle_,
        address controller,
        address registrator,
        address admin,
        address liquidator,
        address profitAdmin,
        address pauser,
        uint256 perBlockBorrowLimitBps_
    ) public initializer {
        _initializeBase(
            priceOracle_,
            controller,
            registrator,
            admin,
            liquidator,
            profitAdmin,
            pauser,
            perBlockBorrowLimitBps_
        );
    }

    function _drawCredit(
        address borrower,
        address receiver,
        uint256 amount
    ) internal override {
        STASH_POOL.withdraw(address(this), amount);
        super._drawCredit(borrower, receiver, amount);
    }

    function repay(address borrower, uint256 amount) public override returns (uint256, uint256) {
        (uint256 repayedPrincipal, uint256 repayedFee) = super.repay(borrower, amount);
        if (repayedPrincipal > 0) {
            CREDIT_ASSET.safeTransfer(address(STASH_POOL), repayedPrincipal);
            STASH_POOL.deposit(repayedPrincipal);
        }
        return (repayedPrincipal, repayedFee);
    }

    /// @dev In case of LiquidityPoolAave the value returned will be limited by minHealthFactor, so it will be smaller than the actual remaining liquidity.
    function remainingLiquidity() public view override returns (uint256) {
        return STASH_POOL.balance(CREDIT_ASSET);
    }
}

// ============================================================
// FILE: project/contracts/testing/MockAggregator.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

/// @title Mock Chainlink aggregator for testing edge cases.
contract MockAggregator {
    int256 private _answer;
    uint256 private _updatedAt;
    uint8 private _decimals;

    constructor(int256 answer_, uint8 decimals_) {
        _answer = answer_;
        _decimals = decimals_;
        _updatedAt = block.timestamp;
    }

    function setAnswer(int256 answer_) external {
        _answer = answer_;
    }

    function setUpdatedAt(uint256 updatedAt_) external {
        _updatedAt = updatedAt_;
    }

    function decimals() external view returns (uint8) {
        return _decimals;
    }

    function latestRoundData() external view returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    ) {
        return (1, _answer, _updatedAt, _updatedAt, 1);
    }
}

// ============================================================
// FILE: project/contracts/testing/RevertingOracle.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IOracle} from "../interfaces/IOracle.sol";

/// @title Oracle that reverts on getAssetValue for testing.
contract RevertingOracle is IOracle {
    function getAssetValue(bytes32, uint256) external pure returns (uint256) {
        revert("Oracle revert");
    }
}

// ============================================================
// FILE: project/contracts/testing/Test4626.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC4626, ERC20, Math} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

contract Test4626 is ERC4626 {
    using Math for uint256;

    constructor(
        IERC20 asset,
        string memory name_,
        string memory symbol_
    )
        ERC4626(asset)
        ERC20(name_, symbol_)
    {
    }

    function _convertToShares(uint256 assets, Math.Rounding rounding) internal view override returns (uint256) {
        (uint256 supplyShares, uint256 supplyAssets) = _getTotalsForConversion();
        return assets.mulDiv(supplyShares, supplyAssets, rounding);
    }

    function _convertToAssets(uint256 shares, Math.Rounding rounding) internal view override returns (uint256) {
        (uint256 supplyShares, uint256 supplyAssets) = _getTotalsForConversion();
        return shares.mulDiv(supplyAssets, supplyShares, rounding);
    }

    function _getTotalsForConversion() internal view returns (uint256, uint256) {
        uint256 supplyShares = totalSupply();
        uint256 supplyAssets = totalAssets();
        if (supplyShares == 0) {
            supplyShares = 10 ** _decimalsOffset();
        }
        if (supplyAssets == 0) {
            supplyAssets = 1;
        }
        return (supplyShares, supplyAssets);
    }
}

// ============================================================
// FILE: project/contracts/testing/Test7540.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Math} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Test4626} from "./Test4626.sol";

/// @dev Test vault implementing ERC-7540 async redemption (requestRedeem).
/// Requests become claimable immediately for testing.
contract Test7540 is Test4626 {
    using Math for uint256;
    using SafeERC20 for IERC20;

    mapping(address owner => uint256 claimable) public claimable;
    uint256 public totalClaimable;

    error InvalidController();
    error InvalidOwner();
    error InsufficientShares();
    error NotImplemented();

    constructor(
        IERC20 asset_,
        string memory name_,
        string memory symbol_
    ) Test4626(asset_, name_, symbol_) {
    }

    function totalAssets() public view override returns (uint256) {
        return super.totalAssets() - totalClaimable;
    }

    function requestRedeem(uint256 shares, address controller, address owner) external returns (uint256 requestId) {
        require(controller == owner, InvalidController());
        requestId = 0;
        uint256 assets = super.previewRedeem(shares);
        totalClaimable += assets;
        claimable[owner] += assets;
        _burn(owner, shares);
        return requestId;
    }

    function maxRedeem(address owner) public view override returns (uint256) {
        return super.previewWithdraw(maxWithdraw(owner));
    }

    function maxWithdraw(address owner) public view override returns (uint256) {
        return claimable[owner];
    }

    function previewRedeem(uint256 /* shares */) public pure override returns (uint256) {
        if (true) {
            revert NotImplemented();
        }
        return 0;
    }

    function previewWithdraw(uint256 /* assets */) public pure override returns (uint256) {
        if (true) {
            revert NotImplemented();
        }
        return 0;
    }

    function redeem(uint256 shares, address receiver, address owner) public override returns (uint256 assets) {
        require(msg.sender == owner, InvalidOwner());
        require(shares <= maxRedeem(owner), InsufficientShares());
        assets = super.previewRedeem(shares);
        totalClaimable -= assets;
        claimable[owner] -= assets;
        IERC20(asset()).safeTransfer(receiver, assets);
        return assets;
    }

    function withdraw(uint256 assets, address receiver, address owner) public override returns (uint256 shares) {
        require(msg.sender == owner, InvalidOwner());
        require(assets <= maxWithdraw(owner), InsufficientShares());
        shares = super.previewWithdraw(assets);
        totalClaimable -= assets;
        claimable[owner] -= assets;
        IERC20(asset()).safeTransfer(receiver, assets);
        return shares;
    }
}

// ============================================================
// FILE: project/contracts/testing/TestEndOfMonthTimestamps.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {EndOfMonthTimestamps} from "../EndOfMonthTimestamps.sol";

contract TestEndOfMonthTimestamps {
    function getNextEndOfMonth(uint256 currentTimestamp) external pure returns (uint256) {
        return EndOfMonthTimestamps.getNextEndOfMonth(currentTimestamp);
    }

    function getEndOfMonthByIndex(uint256 index) external pure returns (uint256) {
        return EndOfMonthTimestamps.getEndOfMonthByIndex(index);
    }

    function getTotalCount() external pure returns (uint256) {
        return EndOfMonthTimestamps.getTotalCount();
    }
}

// ============================================================
// FILE: project/contracts/testing/TestStashLiquidityPool.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IStashLiquidityPool} from "../interfaces/IStashLiquidityPool.sol";

contract TestStashLiquidityPool is IStashLiquidityPool {
    using SafeERC20 for IERC20;

    IERC20 public immutable override ASSETS;
    uint256 public depositCallCount;
    uint256 public totalDepositedAmount;

    event Deposited(address caller, uint256 amount);

    constructor(IERC20 asset) {
        ASSETS = asset;
    }

    function deposit(uint256 amount) external override {
        depositCallCount++;
        totalDepositedAmount += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(address to, uint256 amount) external override {
        ASSETS.safeTransfer(to, amount);
    }

    function balance(IERC20 token) external view override returns (uint256) {
        return token.balanceOf(address(this));
    }
}

// ============================================================
// FILE: project/contracts/testing/TestUSDC.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract TestUSDC is ERC20, ERC20Permit {
    constructor() ERC20("Circle USD", "USDC") ERC20Permit("Circle USD") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function burnFrom(address account, uint256 amount) public {
        _burn(account, amount);
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}

// ============================================================
// FILE: project/contracts/utils/ERC7201Helper.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

/// @title ERC-7201 namespaced storage helper.
/// @author Sprinter
/// @notice Computes and validates ERC-7201 storage locations from a namespace string for upgradeable contracts.
library ERC7201Helper {
    error InvalidStorageSlot(string namespace);

    function validateStorageLocation(bytes32 actual, string memory namespace) internal pure {
        bytes32 expected = getStorageLocation(bytes(namespace));
        require(actual == expected, InvalidStorageSlot(namespace));
    }

    function getStorageLocation(bytes memory namespace) internal pure returns(bytes32) {
        return keccak256(abi.encode(uint256(keccak256(namespace)) - 1)) & ~bytes32(uint256(0xff));
    }
}

// ============================================================
// FILE: project/contracts/utils/Utils.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

/// @title Shared utility functions.
/// @author Sprinter
library Utils {
    error InvalidAddress();

    function bytes32ToAddress(bytes32 value) internal pure returns (address) {
        require(uint256(value) <= type(uint160).max, InvalidAddress());
        return address(uint160(uint256(value)));
    }
}
