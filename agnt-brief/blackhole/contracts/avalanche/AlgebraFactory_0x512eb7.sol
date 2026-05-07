// ============================================================
// FILE: @openzeppelin/contracts/access/AccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;

import "./IAccessControl.sol";
import "../utils/Context.sol";
import "../utils/Strings.sol";
import "../utils/introspection/ERC165.sol";

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
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        Strings.toHexString(account),
                        " is missing role ",
                        Strings.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
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
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
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
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
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
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
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
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/AccessControlEnumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (access/AccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControlEnumerable.sol";
import "./AccessControl.sol";
import "../utils/structs/EnumerableSet.sol";

/**
 * @dev Extension of {AccessControl} that allows enumerating the members of each role.
 */
abstract contract AccessControlEnumerable is IAccessControlEnumerable, AccessControl {
    using EnumerableSet for EnumerableSet.AddressSet;

    mapping(bytes32 => EnumerableSet.AddressSet) private _roleMembers;

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlEnumerable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) public view virtual override returns (address) {
        return _roleMembers[role].at(index);
    }

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) public view virtual override returns (uint256) {
        return _roleMembers[role].length();
    }

    /**
     * @dev Overload {_grantRole} to track enumerable memberships
     */
    function _grantRole(bytes32 role, address account) internal virtual override {
        super._grantRole(role, account);
        _roleMembers[role].add(account);
    }

    /**
     * @dev Overload {_revokeRole} to track enumerable memberships
     */
    function _revokeRole(bytes32 role, address account) internal virtual override {
        super._revokeRole(role, account);
        _roleMembers[role].remove(account);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
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
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControlEnumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControl.sol";

/**
 * @dev External interface of AccessControlEnumerable declared to support ERC165 detection.
 */
interface IAccessControlEnumerable is IAccessControl {
    /**
     * @dev Returns one of the accounts that have `role`. `index` must be a
     * value between 0 and {getRoleMemberCount}, non-inclusive.
     *
     * Role bearers are not sorted in any particular way, and their ordering may
     * change at any point.
     *
     * WARNING: When using {getRoleMember} and {getRoleMemberCount}, make sure
     * you perform all queries on the same block. See the following
     * https://forum.openzeppelin.com/t/iterating-over-elements-on-enumerableset-in-openzeppelin-contracts/2296[forum post]
     * for more information.
     */
    function getRoleMember(bytes32 role, uint256 index) external view returns (address);

    /**
     * @dev Returns the number of accounts that have `role`. Can be used
     * together with {getRoleMember} to enumerate all bearers of a role.
     */
    function getRoleMemberCount(bytes32 role) external view returns (uint256);
}

// ============================================================
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
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
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
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
        require(newOwner != address(0), "Ownable: new owner is the zero address");
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
// FILE: @openzeppelin/contracts/access/Ownable2Step.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.0;

import "./Ownable.sol";

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2Step is Ownable {
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        require(pendingOwner() == sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(sender);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

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
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

import "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
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
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
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
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
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
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/Math.sol";
import "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
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
    function toString(int256 value) internal pure returns (string memory) {
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMath.abs(value))));
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
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.0;

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
 * As of v3.3.0, sets of type `bytes32` (`Bytes32Set`), `address` (`AddressSet`)
 * and `uint256` (`UintSet`) are supported.
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
        // Position of the value in the `values` array, plus 1 because index 0
        // means a value is not in the set.
        mapping(bytes32 => uint256) _indexes;
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
            set._indexes[value] = set._values.length;
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
        // We read and store the value's index to prevent multiple reads from the same storage slot
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            if (lastIndex != toDeleteIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the last value to the index where the value to delete is
                set._values[toDeleteIndex] = lastValue;
                // Update the index for the moved value
                set._indexes[lastValue] = valueIndex; // Replace lastValue's index to valueIndex
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the index for the deleted slot
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
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

        /// @solidity memory-safe-assembly
        assembly {
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

        /// @solidity memory-safe-assembly
        assembly {
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

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: contracts/AlgebraCommunityVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import './libraries/SafeTransfer.sol';
import './libraries/FullMath.sol';

import './interfaces/IAlgebraFactory.sol';
import './interfaces/vault/IAlgebraCommunityVault.sol';

/// @title Algebra community fee vault
/// @notice Community fee from pools is sent here, if it is enabled
/// @dev Role system is used to withdraw tokens
/// @dev Version: Algebra Integral 1.2.2
contract AlgebraCommunityVault is IAlgebraCommunityVault {
  /// @dev The role can be granted in AlgebraFactory
  bytes32 public constant COMMUNITY_FEE_WITHDRAWER_ROLE = keccak256('COMMUNITY_FEE_WITHDRAWER');
  /// @dev The role can be granted in AlgebraFactory
  bytes32 public constant COMMUNITY_FEE_VAULT_ADMINISTRATOR = keccak256('COMMUNITY_FEE_VAULT_ADMINISTRATOR');
  address private immutable factory;

  /// @notice Address to which community fees are sent from vault
  address public communityFeeReceiver;
  /// @notice The percentage of the protocol fee that Algebra will receive
  /// @dev Value in thousandths,i.e. 1e-3
  uint16 public algebraFee;
  /// @notice Represents whether there is a new Algebra fee proposal or not
  bool public hasNewAlgebraFeeProposal;
  /// @notice Suggested Algebra fee value
  uint16 public proposedNewAlgebraFee;
  /// @notice Address of recipient Algebra part of community fee
  address public algebraFeeReceiver;
  /// @notice Address of Algebra fee manager
  address public algebraFeeManager;
  address private _pendingAlgebraFeeManager;

  uint16 private constant ALGEBRA_FEE_DENOMINATOR = 1000;

  modifier onlyAdministrator() {
    require(IAlgebraFactory(factory).hasRoleOrOwner(COMMUNITY_FEE_VAULT_ADMINISTRATOR, msg.sender), 'only administrator');
    _;
  }

  modifier onlyWithdrawer() {
    require(msg.sender == algebraFeeManager || IAlgebraFactory(factory).hasRoleOrOwner(COMMUNITY_FEE_WITHDRAWER_ROLE, msg.sender), 'only withdrawer');
    _;
  }

  modifier onlyAlgebraFeeManager() {
    require(msg.sender == algebraFeeManager, 'only algebra fee manager');
    _;
  }

  constructor(address _factory, address _algebraFeeManager) {
    (factory, algebraFeeManager) = (_factory, _algebraFeeManager);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function withdraw(address token, uint256 amount) external override onlyWithdrawer {
    (uint16 _algebraFee, address _algebraFeeReceiver, address _communityFeeReceiver) = _readAndVerifyWithdrawSettings();
    _withdraw(token, _communityFeeReceiver, amount, _algebraFee, _algebraFeeReceiver);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function withdrawTokens(WithdrawTokensParams[] calldata params) external override onlyWithdrawer {
    uint256 paramsLength = params.length;
    (uint16 _algebraFee, address _algebraFeeReceiver, address _communityFeeReceiver) = _readAndVerifyWithdrawSettings();

    unchecked {
      for (uint256 i; i < paramsLength; ++i) _withdraw(params[i].token, _communityFeeReceiver, params[i].amount, _algebraFee, _algebraFeeReceiver);
    }
  }

  function _readAndVerifyWithdrawSettings() private view returns (uint16 _algebraFee, address _algebraFeeReceiver, address _communityFeeReceiver) {
    (_algebraFee, _algebraFeeReceiver, _communityFeeReceiver) = (algebraFee, algebraFeeReceiver, communityFeeReceiver);
    if (_algebraFee != 0) require(_algebraFeeReceiver != address(0), 'invalid algebra fee receiver');
    require(_communityFeeReceiver != address(0), 'invalid receiver');
  }

  function _withdraw(address token, address to, uint256 amount, uint16 _algebraFee, address _algebraFeeReceiver) private {
    uint256 withdrawAmount = amount;
    if (_algebraFee != 0) {
      uint256 algebraFeeAmount = FullMath.mulDivRoundingUp(withdrawAmount, _algebraFee, ALGEBRA_FEE_DENOMINATOR);
      withdrawAmount -= algebraFeeAmount;
      SafeTransfer.safeTransfer(token, _algebraFeeReceiver, algebraFeeAmount);
      emit AlgebraTokensWithdrawal(token, _algebraFeeReceiver, algebraFeeAmount);
    }

    SafeTransfer.safeTransfer(token, to, withdrawAmount);
    emit TokensWithdrawal(token, to, withdrawAmount);
  }

  // ### algebra factory owner permissioned actions ###

  /// @inheritdoc IAlgebraCommunityVault
  function acceptAlgebraFeeChangeProposal(uint16 newAlgebraFee) external override onlyAdministrator {
    require(hasNewAlgebraFeeProposal, 'not proposed');
    require(newAlgebraFee == proposedNewAlgebraFee, 'invalid new fee');

    // note that the new value will be used for previously accumulated tokens that have not yet been withdrawn
    algebraFee = newAlgebraFee;
    (proposedNewAlgebraFee, hasNewAlgebraFeeProposal) = (0, false);
    emit AlgebraFee(newAlgebraFee);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function changeCommunityFeeReceiver(address newCommunityFeeReceiver) external override onlyAdministrator {
    require(newCommunityFeeReceiver != address(0));
    require(newCommunityFeeReceiver != communityFeeReceiver);
    communityFeeReceiver = newCommunityFeeReceiver;
    emit CommunityFeeReceiver(newCommunityFeeReceiver);
  }

  // ### algebra fee manager permissioned actions ###

  /// @inheritdoc IAlgebraCommunityVault
  function transferAlgebraFeeManagerRole(address _newAlgebraFeeManager) external override onlyAlgebraFeeManager {
    _pendingAlgebraFeeManager = _newAlgebraFeeManager;
    emit PendingAlgebraFeeManager(_newAlgebraFeeManager);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function acceptAlgebraFeeManagerRole() external override {
    require(msg.sender == _pendingAlgebraFeeManager);
    (_pendingAlgebraFeeManager, algebraFeeManager) = (address(0), msg.sender);
    emit AlgebraFeeManager(msg.sender);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function proposeAlgebraFeeChange(uint16 newAlgebraFee) external override onlyAlgebraFeeManager {
    require(newAlgebraFee <= ALGEBRA_FEE_DENOMINATOR);
    require(newAlgebraFee != proposedNewAlgebraFee && newAlgebraFee != algebraFee);
    (proposedNewAlgebraFee, hasNewAlgebraFeeProposal) = (newAlgebraFee, true);
    emit AlgebraFeeProposal(newAlgebraFee);
  }

  /// @inheritdoc IAlgebraCommunityVault
  function cancelAlgebraFeeChangeProposal() external override onlyAlgebraFeeManager {
    (proposedNewAlgebraFee, hasNewAlgebraFeeProposal) = (0, false);
    emit CancelAlgebraFeeProposal();
  }

  /// @inheritdoc IAlgebraCommunityVault
  function changeAlgebraFeeReceiver(address newAlgebraFeeReceiver) external override onlyAlgebraFeeManager {
    require(newAlgebraFeeReceiver != address(0));
    require(newAlgebraFeeReceiver != algebraFeeReceiver);
    algebraFeeReceiver = newAlgebraFeeReceiver;
    emit AlgebraFeeReceiver(newAlgebraFeeReceiver);
  }
}

// ============================================================
// FILE: contracts/AlgebraFactory.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import './libraries/Constants.sol';

import './interfaces/IAlgebraFactory.sol';
import './interfaces/IAlgebraPool.sol';
import './interfaces/IAlgebraPoolDeployer.sol';
import './interfaces/vault/IAlgebraVaultFactory.sol';
import './interfaces/plugin/IAlgebraPluginFactory.sol';

import './AlgebraCommunityVault.sol';

import '@openzeppelin/contracts/access/Ownable2Step.sol';
import '@openzeppelin/contracts/access/AccessControlEnumerable.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';

/// @title Algebra factory
/// @notice Is used to deploy pools and its plugins
/// @dev Version: Algebra Integral 1.2.2
contract AlgebraFactory is IAlgebraFactory, Ownable2Step, AccessControlEnumerable, ReentrancyGuard {
  /// @inheritdoc IAlgebraFactory
  bytes32 public constant override POOLS_ADMINISTRATOR_ROLE = keccak256('POOLS_ADMINISTRATOR'); // it`s here for the public visibility of the value

  /// @inheritdoc IAlgebraFactory
  bytes32 public constant override CUSTOM_POOL_DEPLOYER = keccak256('CUSTOM_POOL_DEPLOYER');

  /// @inheritdoc IAlgebraFactory
  address public immutable override poolDeployer;

  /// @inheritdoc IAlgebraFactory
  uint16 public override defaultCommunityFee;

  /// @inheritdoc IAlgebraFactory
  uint16 public override defaultFee;

  /// @inheritdoc IAlgebraFactory
  int24 public override defaultTickspacing;

  /// @inheritdoc IAlgebraFactory
  uint256 public override renounceOwnershipStartTimestamp;

  /// @dev time delay before ownership renouncement can be finished
  uint256 private constant RENOUNCE_OWNERSHIP_DELAY = 1 days;

  /// @inheritdoc IAlgebraFactory
  IAlgebraPluginFactory public defaultPluginFactory;

  /// @inheritdoc IAlgebraFactory
  IAlgebraVaultFactory public vaultFactory;

  /// @inheritdoc IAlgebraFactory
  mapping(address => mapping(address => address)) public override poolByPair;

  /// @inheritdoc IAlgebraFactory
  mapping(address => mapping(address => mapping(address => address))) public override customPoolByPair;

  address[] public allPairs;

  /// @inheritdoc IAlgebraFactory
  /// @dev keccak256 of AlgebraPool init bytecode. Used to compute pool address deterministically
  bytes32 public constant POOL_INIT_CODE_HASH = 0xeaa3eea3233916c82fe1281a51bd9cde844b7c4673c0714ca0028a57f5634752;

  constructor(address _poolDeployer) {
    require(_poolDeployer != address(0));
    poolDeployer = _poolDeployer;
    defaultTickspacing = Constants.INIT_DEFAULT_TICK_SPACING;
    defaultFee = Constants.INIT_DEFAULT_FEE;

    emit DefaultTickspacing(Constants.INIT_DEFAULT_TICK_SPACING);
    emit DefaultFee(Constants.INIT_DEFAULT_FEE);
  }

  /// @inheritdoc IAlgebraFactory
  function owner() public view override(IAlgebraFactory, Ownable) returns (address) {
    return super.owner();
  }

  /// @inheritdoc IAlgebraFactory
  function hasRoleOrOwner(bytes32 role, address account) public view override returns (bool) {
    return (owner() == account || super.hasRole(role, account));
  }

  /// @inheritdoc IAlgebraFactory
  function defaultConfigurationForPool() external view override returns (uint16 communityFee, int24 tickSpacing, uint16 fee) {
    return (defaultCommunityFee, defaultTickspacing, defaultFee);
  }

  /// @inheritdoc IAlgebraFactory
  function computePoolAddress(address token0, address token1) public view override returns (address pool) {
    pool = address(uint160(uint256(keccak256(abi.encodePacked(hex'ff', poolDeployer, keccak256(abi.encode(token0, token1)), POOL_INIT_CODE_HASH)))));
  }

  /// @inheritdoc IAlgebraFactory
  function computeCustomPoolAddress(address deployer, address token0, address token1) public view override returns (address customPool) {
    customPool = address(
      uint160(uint256(keccak256(abi.encodePacked(hex'ff', poolDeployer, keccak256(abi.encode(deployer, token0, token1)), POOL_INIT_CODE_HASH))))
    );
  }

  /// @inheritdoc IAlgebraFactory
  function createPool(address tokenA, address tokenB, bytes calldata data) external override nonReentrant returns (address pool) {
    return _createPool(address(0), msg.sender, tokenA, tokenB, data);
  }

  /// @inheritdoc IAlgebraFactory
  function createCustomPool(
    address deployer,
    address creator,
    address tokenA,
    address tokenB,
    bytes calldata data
  ) external override nonReentrant returns (address customPool) {
    require(hasRole(CUSTOM_POOL_DEPLOYER, msg.sender), 'Can`t create custom pools');
    return _createPool(deployer, creator, tokenA, tokenB, data);
  }

  function _createPool(address deployer, address creator, address tokenA, address tokenB, bytes memory data) private returns (address pool) {
    require(tokenA != tokenB);
    (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
    require(token0 != address(0));

    mapping(address => mapping(address => address)) storage _poolByPair = deployer == address(0) ? poolByPair : customPoolByPair[deployer];
    require(_poolByPair[token0][token1] == address(0));

    address plugin;
    if (deployer == address(0)) {
      if (address(defaultPluginFactory) != address(0)) {
        plugin = defaultPluginFactory.beforeCreatePoolHook(computePoolAddress(token0, token1), creator, address(0), token0, token1, data);
      }
    } else {
      plugin = IAlgebraPluginFactory(msg.sender).beforeCreatePoolHook(
        computeCustomPoolAddress(deployer, token0, token1),
        creator,
        deployer,
        token0,
        token1,
        data
      );
    }

    pool = IAlgebraPoolDeployer(poolDeployer).deploy(plugin, token0, token1, deployer);

    if (deployer == address(0)) {
      if (address(defaultPluginFactory) != address(0)) {
        defaultPluginFactory.afterCreatePoolHook(plugin, pool, deployer);
      }
    } else {
      IAlgebraPluginFactory(msg.sender).afterCreatePoolHook(plugin, pool, deployer);
    }

    _poolByPair[token0][token1] = pool;
    _poolByPair[token1][token0] = pool;
    allPairs.push(pool);

    if (deployer == address(0)) {
      emit Pool(token0, token1, pool);
    } else {
      emit CustomPool(deployer, token0, token1, pool);
    }

    if (address(vaultFactory) != address(0)) {
      address vault = vaultFactory.createVaultForPool(pool, creator, deployer, token0, token1);
      IAlgebraPool(pool).setCommunityVault(vault);
    }
  }

  /// @inheritdoc IAlgebraFactory
  function setDefaultCommunityFee(uint16 newDefaultCommunityFee) external override onlyOwner {
    require(newDefaultCommunityFee <= Constants.MAX_COMMUNITY_FEE);
    require(defaultCommunityFee != newDefaultCommunityFee);
    if (newDefaultCommunityFee != 0) require(address(vaultFactory) != address(0));
    defaultCommunityFee = newDefaultCommunityFee;
    emit DefaultCommunityFee(newDefaultCommunityFee);
  }

  /// @inheritdoc IAlgebraFactory
  function setDefaultFee(uint16 newDefaultFee) external override onlyOwner {
    require(newDefaultFee <= Constants.MAX_DEFAULT_FEE);
    require(defaultFee != newDefaultFee);
    defaultFee = newDefaultFee;
    emit DefaultFee(newDefaultFee);
  }

  /// @inheritdoc IAlgebraFactory
  function setDefaultTickspacing(int24 newDefaultTickspacing) external override onlyOwner {
    require(newDefaultTickspacing >= Constants.MIN_TICK_SPACING);
    require(newDefaultTickspacing <= Constants.MAX_TICK_SPACING);
    require(newDefaultTickspacing != defaultTickspacing);
    defaultTickspacing = newDefaultTickspacing;
    emit DefaultTickspacing(newDefaultTickspacing);
  }

  /// @inheritdoc IAlgebraFactory
  function setDefaultPluginFactory(address newDefaultPluginFactory) external override onlyOwner {
    require(newDefaultPluginFactory != address(defaultPluginFactory));
    defaultPluginFactory = IAlgebraPluginFactory(newDefaultPluginFactory);
    emit DefaultPluginFactory(newDefaultPluginFactory);
  }

  /// @inheritdoc IAlgebraFactory
  function setVaultFactory(address newVaultFactory) external override onlyOwner {
    require(newVaultFactory != address(vaultFactory));
    if (newVaultFactory == address(0)) require(defaultCommunityFee == 0);
    vaultFactory = IAlgebraVaultFactory(newVaultFactory);
    emit VaultFactory(newVaultFactory);
  }

  /// @inheritdoc IAlgebraFactory
  function startRenounceOwnership() external override onlyOwner {
    require(renounceOwnershipStartTimestamp == 0);
    renounceOwnershipStartTimestamp = block.timestamp;
    emit RenounceOwnershipStart(renounceOwnershipStartTimestamp, renounceOwnershipStartTimestamp + RENOUNCE_OWNERSHIP_DELAY);
  }

  /// @inheritdoc IAlgebraFactory
  function stopRenounceOwnership() external override onlyOwner {
    require(renounceOwnershipStartTimestamp != 0);
    renounceOwnershipStartTimestamp = 0;
    emit RenounceOwnershipStop(block.timestamp);
  }

  /// @dev Leaves the contract without owner. It will not be possible to call `onlyOwner` functions anymore.
  /// Can only be called by the current owner if RENOUNCE_OWNERSHIP_DELAY seconds
  /// have passed since the call to the startRenounceOwnership() function.
  function renounceOwnership() public override onlyOwner {
    require(renounceOwnershipStartTimestamp != 0);
    require(block.timestamp - renounceOwnershipStartTimestamp >= RENOUNCE_OWNERSHIP_DELAY);
    renounceOwnershipStartTimestamp = 0;

    super.renounceOwnership();
    emit RenounceOwnershipFinish(block.timestamp);
  }

  /// @dev Transfers ownership of the contract to a new account (`newOwner`).
  /// Modified to fit with the role mechanism.
  function _transferOwnership(address newOwner) internal override {
    _revokeRole(DEFAULT_ADMIN_ROLE, owner());
    super._transferOwnership(newOwner);
    if (owner() != address(0)) {
      _grantRole(DEFAULT_ADMIN_ROLE, owner());
    }
  }

  function allPairsLength() external view returns (uint) {
    return allPairs.length;
  }
}

// ============================================================
// FILE: contracts/interfaces/IAlgebraFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import './plugin/IAlgebraPluginFactory.sol';
import './vault/IAlgebraVaultFactory.sol';

/// @title The interface for the Algebra Factory
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraFactory {
  /// @notice Emitted when a process of ownership renounce is started
  /// @param timestamp The timestamp of event
  /// @param finishTimestamp The timestamp when ownership renounce will be possible to finish
  event RenounceOwnershipStart(uint256 timestamp, uint256 finishTimestamp);

  /// @notice Emitted when a process of ownership renounce cancelled
  /// @param timestamp The timestamp of event
  event RenounceOwnershipStop(uint256 timestamp);

  /// @notice Emitted when a process of ownership renounce finished
  /// @param timestamp The timestamp of ownership renouncement
  event RenounceOwnershipFinish(uint256 timestamp);

  /// @notice Emitted when a pool is created
  /// @param token0 The first token of the pool by address sort order
  /// @param token1 The second token of the pool by address sort order
  /// @param pool The address of the created pool
  event Pool(address indexed token0, address indexed token1, address pool);

  /// @notice Emitted when a pool is created
  /// @param deployer The corresponding custom deployer contract
  /// @param token0 The first token of the pool by address sort order
  /// @param token1 The second token of the pool by address sort order
  /// @param pool The address of the created pool
  event CustomPool(address indexed deployer, address indexed token0, address indexed token1, address pool);

  /// @notice Emitted when the default community fee is changed
  /// @param newDefaultCommunityFee The new default community fee value
  event DefaultCommunityFee(uint16 newDefaultCommunityFee);

  /// @notice Emitted when the default tickspacing is changed
  /// @param newDefaultTickspacing The new default tickspacing value
  event DefaultTickspacing(int24 newDefaultTickspacing);

  /// @notice Emitted when the default fee is changed
  /// @param newDefaultFee The new default fee value
  event DefaultFee(uint16 newDefaultFee);

  /// @notice Emitted when the defaultPluginFactory address is changed
  /// @param defaultPluginFactoryAddress The new defaultPluginFactory address
  event DefaultPluginFactory(address defaultPluginFactoryAddress);

  /// @notice Emitted when the vaultFactory address is changed
  /// @param newVaultFactory The new vaultFactory address
  event VaultFactory(address newVaultFactory);

  /// @notice role that can change communityFee and tickspacing in pools
  /// @return The hash corresponding to this role
  function POOLS_ADMINISTRATOR_ROLE() external view returns (bytes32);

  /// @notice role that can call `createCustomPool` function
  /// @return The hash corresponding to this role
  function CUSTOM_POOL_DEPLOYER() external view returns (bytes32);

  /// @notice Returns `true` if `account` has been granted `role` or `account` is owner.
  /// @param role The hash corresponding to the role
  /// @param account The address for which the role is checked
  /// @return bool Whether the address has this role or the owner role or not
  function hasRoleOrOwner(bytes32 role, address account) external view returns (bool);

  /// @notice Returns the current owner of the factory
  /// @dev Can be changed by the current owner via transferOwnership(address newOwner)
  /// @return The address of the factory owner
  function owner() external view returns (address);

  /// @notice Returns the current poolDeployerAddress
  /// @return The address of the poolDeployer
  function poolDeployer() external view returns (address);

  /// @notice Returns the default community fee
  /// @return Fee which will be set at the creation of the pool
  function defaultCommunityFee() external view returns (uint16);

  /// @notice Returns the default fee
  /// @return Fee which will be set at the creation of the pool
  function defaultFee() external view returns (uint16);

  /// @notice Returns the default tickspacing
  /// @return Tickspacing which will be set at the creation of the pool
  function defaultTickspacing() external view returns (int24);

  /// @notice Return the current pluginFactory address
  /// @dev This contract is used to automatically set a plugin address in new liquidity pools
  /// @return Algebra plugin factory
  function defaultPluginFactory() external view returns (IAlgebraPluginFactory);

  /// @notice Return the current vaultFactory address
  /// @dev This contract is used to automatically set a vault address in new liquidity pools
  /// @return Algebra vault factory
  function vaultFactory() external view returns (IAlgebraVaultFactory);

  /// @notice Returns the default communityFee, tickspacing, fee and communityFeeVault for pool
  /// @return communityFee which will be set at the creation of the pool
  /// @return tickSpacing which will be set at the creation of the pool
  /// @return fee which will be set at the creation of the pool
  function defaultConfigurationForPool() external view returns (uint16 communityFee, int24 tickSpacing, uint16 fee);

  /// @notice Deterministically computes the pool address given the token0 and token1
  /// @dev The method does not check if such a pool has been created
  /// @param token0 first token
  /// @param token1 second token
  /// @return pool The contract address of the Algebra pool
  function computePoolAddress(address token0, address token1) external view returns (address pool);

  /// @notice Deterministically computes the custom pool address given the customDeployer, token0 and token1
  /// @dev The method does not check if such a pool has been created
  /// @param customDeployer the address of custom plugin deployer
  /// @param token0 first token
  /// @param token1 second token
  /// @return customPool The contract address of the Algebra pool
  function computeCustomPoolAddress(address customDeployer, address token0, address token1) external view returns (address customPool);

  /// @notice Returns the pool address for a given pair of tokens, or address 0 if it does not exist
  /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
  /// @param tokenA The contract address of either token0 or token1
  /// @param tokenB The contract address of the other token
  /// @return pool The pool address
  function poolByPair(address tokenA, address tokenB) external view returns (address pool);

  /// @notice Returns the custom pool address for a customDeployer and a given pair of tokens, or address 0 if it does not exist
  /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
  /// @param customDeployer The address of custom plugin deployer
  /// @param tokenA The contract address of either token0 or token1
  /// @param tokenB The contract address of the other token
  /// @return customPool The pool address
  function customPoolByPair(address customDeployer, address tokenA, address tokenB) external view returns (address customPool);

  /// @notice returns keccak256 of AlgebraPool init bytecode.
  /// @dev the hash value changes with any change in the pool bytecode
  /// @return Keccak256 hash of AlgebraPool contract init bytecode
  function POOL_INIT_CODE_HASH() external view returns (bytes32);

  /// @return timestamp The timestamp of the beginning of the renounceOwnership process
  function renounceOwnershipStartTimestamp() external view returns (uint256 timestamp);

  /// @notice Creates a pool for the given two tokens
  /// @param tokenA One of the two tokens in the desired pool
  /// @param tokenB The other of the two tokens in the desired pool
  /// @param data Data for plugin creation
  /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0.
  /// The call will revert if the pool already exists or the token arguments are invalid.
  /// @return pool The address of the newly created pool
  function createPool(address tokenA, address tokenB, bytes calldata data) external returns (address pool);

  /// @notice Creates a custom pool for the given two tokens using `deployer` contract
  /// @param deployer The address of plugin deployer, also used for custom pool address calculation
  /// @param creator The initiator of custom pool creation
  /// @param tokenA One of the two tokens in the desired pool
  /// @param tokenB The other of the two tokens in the desired pool
  /// @param data The additional data bytes
  /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0.
  /// The call will revert if the pool already exists or the token arguments are invalid.
  /// @return customPool The address of the newly created custom pool
  function createCustomPool(
    address deployer,
    address creator,
    address tokenA,
    address tokenB,
    bytes calldata data
  ) external returns (address customPool);

  /// @dev updates default community fee for new pools
  /// @param newDefaultCommunityFee The new community fee, _must_ be <= MAX_COMMUNITY_FEE
  function setDefaultCommunityFee(uint16 newDefaultCommunityFee) external;

  /// @dev updates default fee for new pools
  /// @param newDefaultFee The new  fee, _must_ be <= MAX_DEFAULT_FEE
  function setDefaultFee(uint16 newDefaultFee) external;

  /// @dev updates default tickspacing for new pools
  /// @param newDefaultTickspacing The new tickspacing, _must_ be <= MAX_TICK_SPACING and >= MIN_TICK_SPACING
  function setDefaultTickspacing(int24 newDefaultTickspacing) external;

  /// @dev updates pluginFactory address
  /// @param newDefaultPluginFactory address of new plugin factory
  function setDefaultPluginFactory(address newDefaultPluginFactory) external;

  /// @dev updates vaultFactory address
  /// @param newVaultFactory address of new vault factory
  function setVaultFactory(address newVaultFactory) external;

  /// @notice Starts process of renounceOwnership. After that, a certain period
  /// of time must pass before the ownership renounce can be completed.
  function startRenounceOwnership() external;

  /// @notice Stops process of renounceOwnership and removes timer.
  function stopRenounceOwnership() external;
}

// ============================================================
// FILE: contracts/interfaces/IAlgebraPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

import './pool/IAlgebraPoolImmutables.sol';
import './pool/IAlgebraPoolState.sol';
import './pool/IAlgebraPoolActions.sol';
import './pool/IAlgebraPoolPermissionedActions.sol';
import './pool/IAlgebraPoolEvents.sol';
import './pool/IAlgebraPoolErrors.sol';

/// @title The interface for a Algebra Pool
/// @dev The pool interface is broken up into many smaller pieces.
/// This interface includes custom error definitions and cannot be used in older versions of Solidity.
/// For older versions of Solidity use #IAlgebraPoolLegacy
/// Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPool is
  IAlgebraPoolImmutables,
  IAlgebraPoolState,
  IAlgebraPoolActions,
  IAlgebraPoolPermissionedActions,
  IAlgebraPoolEvents,
  IAlgebraPoolErrors
{
  // used only for combining interfaces
}

// ============================================================
// FILE: contracts/interfaces/IAlgebraPoolDeployer.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title An interface for a contract that is capable of deploying Algebra Pools
/// @notice A contract that constructs a pool must implement this to pass arguments to the pool
/// @dev This is used to avoid having constructor arguments in the pool contract, which results in the init code hash
/// of the pool being constant allowing the CREATE2 address of the pool to be cheaply computed on-chain.
/// Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolDeployer {
  /// @notice Get the parameters to be used in constructing the pool, set transiently during pool creation.
  /// @dev Called by the pool constructor to fetch the parameters of the pool
  /// @return plugin The pool associated plugin (if any)
  /// @return factory The Algebra Factory address
  /// @return token0 The first token of the pool by address sort order
  /// @return token1 The second token of the pool by address sort order
  function getDeployParameters() external view returns (address plugin, address factory, address token0, address token1);

  /// @dev Deploys a pool with the given parameters by transiently setting the parameters in cache.
  /// @param plugin The pool associated plugin (if any)
  /// @param token0 The first token of the pool by address sort order
  /// @param token1 The second token of the pool by address sort order
  /// @return pool The deployed pool's address
  function deploy(address plugin, address token0, address token1, address deployer) external returns (address pool);
}

// ============================================================
// FILE: contracts/interfaces/plugin/IAlgebraPluginFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title An interface for a contract that is capable of deploying Algebra plugins
/// @dev Such a factory can be used for automatic plugin creation for new pools.
/// Also a factory be used as an entry point for custom (additional) pools creation
interface IAlgebraPluginFactory {
  /// @notice Deploys new plugin contract for pool
  /// @param pool The address of the new pool
  /// @param creator The address that initiated the pool creation
  /// @param deployer The address of new plugin deployer contract (0 if not used)
  /// @param token0 First token of the pool
  /// @param token1 Second token of the pool
  /// @return New plugin address
  function beforeCreatePoolHook(
    address pool,
    address creator,
    address deployer,
    address token0,
    address token1,
    bytes calldata data
  ) external returns (address);

  /// @notice Called after the pool is created
  /// @param plugin The plugin address
  /// @param pool The address of the new pool
  /// @param deployer The address of new plugin deployer contract (0 if not used)
  function afterCreatePoolHook(address plugin, address pool, address deployer) external;
}

// ============================================================
// FILE: contracts/interfaces/pool/IAlgebraPoolActions.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Permissionless pool actions
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolActions {
  /// @notice Sets the initial price for the pool
  /// @dev Price is represented as a sqrt(amountToken1/amountToken0) Q64.96 value
  /// @dev Initialization should be done in one transaction with pool creation to avoid front-running
  /// @param initialPrice The initial sqrt price of the pool as a Q64.96
  function initialize(uint160 initialPrice) external;

  /// @notice Adds liquidity for the given recipient/bottomTick/topTick position
  /// @dev The caller of this method receives a callback in the form of IAlgebraMintCallback#algebraMintCallback
  /// in which they must pay any token0 or token1 owed for the liquidity. The amount of token0/token1 due depends
  /// on bottomTick, topTick, the amount of liquidity, and the current price.
  /// @param leftoversRecipient The address which will receive potential surplus of paid tokens
  /// @param recipient The address for which the liquidity will be created
  /// @param bottomTick The lower tick of the position in which to add liquidity
  /// @param topTick The upper tick of the position in which to add liquidity
  /// @param liquidityDesired The desired amount of liquidity to mint
  /// @param data Any data that should be passed through to the callback
  /// @return amount0 The amount of token0 that was paid to mint the given amount of liquidity. Matches the value in the callback
  /// @return amount1 The amount of token1 that was paid to mint the given amount of liquidity. Matches the value in the callback
  /// @return liquidityActual The actual minted amount of liquidity
  function mint(
    address leftoversRecipient,
    address recipient,
    int24 bottomTick,
    int24 topTick,
    uint128 liquidityDesired,
    bytes calldata data
  ) external returns (uint256 amount0, uint256 amount1, uint128 liquidityActual);

  /// @notice Collects tokens owed to a position
  /// @dev Does not recompute fees earned, which must be done either via mint or burn of any amount of liquidity.
  /// Collect must be called by the position owner. To withdraw only token0 or only token1, amount0Requested or
  /// amount1Requested may be set to zero. To withdraw all tokens owed, caller may pass any value greater than the
  /// actual tokens owed, e.g. type(uint128).max. Tokens owed may be from accumulated swap fees or burned liquidity.
  /// @param recipient The address which should receive the fees collected
  /// @param bottomTick The lower tick of the position for which to collect fees
  /// @param topTick The upper tick of the position for which to collect fees
  /// @param amount0Requested How much token0 should be withdrawn from the fees owed
  /// @param amount1Requested How much token1 should be withdrawn from the fees owed
  /// @return amount0 The amount of fees collected in token0
  /// @return amount1 The amount of fees collected in token1
  function collect(
    address recipient,
    int24 bottomTick,
    int24 topTick,
    uint128 amount0Requested,
    uint128 amount1Requested
  ) external returns (uint128 amount0, uint128 amount1);

  /// @notice Burn liquidity from the sender and account tokens owed for the liquidity to the position
  /// @dev Can be used to trigger a recalculation of fees owed to a position by calling with an amount of 0
  /// @dev Fees must be collected separately via a call to #collect
  /// @param bottomTick The lower tick of the position for which to burn liquidity
  /// @param topTick The upper tick of the position for which to burn liquidity
  /// @param amount How much liquidity to burn
  /// @param data Any data that should be passed through to the plugin
  /// @return amount0 The amount of token0 sent to the recipient
  /// @return amount1 The amount of token1 sent to the recipient
  function burn(int24 bottomTick, int24 topTick, uint128 amount, bytes calldata data) external returns (uint256 amount0, uint256 amount1);

  /// @notice Swap token0 for token1, or token1 for token0
  /// @dev The caller of this method receives a callback in the form of IAlgebraSwapCallback#algebraSwapCallback
  /// @param recipient The address to receive the output of the swap
  /// @param zeroToOne The direction of the swap, true for token0 to token1, false for token1 to token0
  /// @param amountRequired The amount of the swap, which implicitly configures the swap as exact input (positive), or exact output (negative)
  /// @param limitSqrtPrice The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
  /// value after the swap. If one for zero, the price cannot be greater than this value after the swap
  /// @param data Any data to be passed through to the callback. If using the Router it should contain SwapRouter#SwapCallbackData
  /// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
  /// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
  function swap(
    address recipient,
    bool zeroToOne,
    int256 amountRequired,
    uint160 limitSqrtPrice,
    bytes calldata data
  ) external returns (int256 amount0, int256 amount1);

  /// @notice Swap token0 for token1, or token1 for token0 with prepayment
  /// @dev The caller of this method receives a callback in the form of IAlgebraSwapCallback#algebraSwapCallback
  /// caller must send tokens in callback before swap calculation
  /// the actually sent amount of tokens is used for further calculations
  /// @param leftoversRecipient The address which will receive potential surplus of paid tokens
  /// @param recipient The address to receive the output of the swap
  /// @param zeroToOne The direction of the swap, true for token0 to token1, false for token1 to token0
  /// @param amountToSell The amount of the swap, only positive (exact input) amount allowed
  /// @param limitSqrtPrice The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
  /// value after the swap. If one for zero, the price cannot be greater than this value after the swap
  /// @param data Any data to be passed through to the callback. If using the Router it should contain SwapRouter#SwapCallbackData
  /// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
  /// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
  function swapWithPaymentInAdvance(
    address leftoversRecipient,
    address recipient,
    bool zeroToOne,
    int256 amountToSell,
    uint160 limitSqrtPrice,
    bytes calldata data
  ) external returns (int256 amount0, int256 amount1);

  /// @notice Receive token0 and/or token1 and pay it back, plus a fee, in the callback
  /// @dev The caller of this method receives a callback in the form of IAlgebraFlashCallback#algebraFlashCallback
  /// @dev All excess tokens paid in the callback are distributed to currently in-range liquidity providers as an additional fee.
  /// If there are no in-range liquidity providers, the fee will be transferred to the first active provider in the future
  /// @param recipient The address which will receive the token0 and token1 amounts
  /// @param amount0 The amount of token0 to send
  /// @param amount1 The amount of token1 to send
  /// @param data Any data to be passed through to the callback
  function flash(address recipient, uint256 amount0, uint256 amount1, bytes calldata data) external;
}

// ============================================================
// FILE: contracts/interfaces/pool/IAlgebraPoolErrors.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

/// @title Errors emitted by a pool
/// @notice Contains custom errors emitted by the pool
/// @dev Custom errors are separated from the common pool interface for compatibility with older versions of Solidity
interface IAlgebraPoolErrors {
  // ####  pool errors  ####

  /// @notice Emitted by the reentrancy guard
  error locked();

  /// @notice Emitted if arithmetic error occurred
  error arithmeticError();

  /// @notice Emitted if an attempt is made to initialize the pool twice
  error alreadyInitialized();

  /// @notice Emitted if an attempt is made to mint or swap in uninitialized pool
  error notInitialized();

  /// @notice Emitted if 0 is passed as amountRequired to swap function
  error zeroAmountRequired();

  /// @notice Emitted if invalid amount is passed as amountRequired to swap function
  error invalidAmountRequired();

  /// @notice Emitted if plugin fee param greater than fee/override fee
  error incorrectPluginFee();

  /// @notice Emitted if the pool received fewer tokens than it should have
  error insufficientInputAmount();

  /// @notice Emitted if there was an attempt to mint zero liquidity
  error zeroLiquidityDesired();
  /// @notice Emitted if actual amount of liquidity is zero (due to insufficient amount of tokens received)
  error zeroLiquidityActual();

  /// @notice Emitted if the pool received fewer tokens0 after flash than it should have
  error flashInsufficientPaid0();
  /// @notice Emitted if the pool received fewer tokens1 after flash than it should have
  error flashInsufficientPaid1();

  /// @notice Emitted if limitSqrtPrice param is incorrect
  error invalidLimitSqrtPrice();

  /// @notice Tick must be divisible by tickspacing
  error tickIsNotSpaced();

  /// @notice Emitted if a method is called that is accessible only to the factory owner or dedicated role
  error notAllowed();

  /// @notice Emitted if new tick spacing exceeds max allowed value
  error invalidNewTickSpacing();
  /// @notice Emitted if new community fee exceeds max allowed value
  error invalidNewCommunityFee();

  /// @notice Emitted if an attempt is made to manually change the fee value, but dynamic fee is enabled
  error dynamicFeeActive();
  /// @notice Emitted if an attempt is made by plugin to change the fee value, but dynamic fee is disabled
  error dynamicFeeDisabled();
  /// @notice Emitted if an attempt is made to change the plugin configuration, but the plugin is not connected
  error pluginIsNotConnected();
  /// @notice Emitted if a plugin returns invalid selector after hook call
  /// @param expectedSelector The expected selector
  error invalidHookResponse(bytes4 expectedSelector);

  // ####  LiquidityMath errors  ####

  /// @notice Emitted if liquidity underflows
  error liquiditySub();
  /// @notice Emitted if liquidity overflows
  error liquidityAdd();

  // ####  TickManagement errors  ####

  /// @notice Emitted if the topTick param not greater then the bottomTick param
  error topTickLowerOrEqBottomTick();
  /// @notice Emitted if the bottomTick param is lower than min allowed value
  error bottomTickLowerThanMIN();
  /// @notice Emitted if the topTick param is greater than max allowed value
  error topTickAboveMAX();
  /// @notice Emitted if the liquidity value associated with the tick exceeds MAX_LIQUIDITY_PER_TICK
  error liquidityOverflow();
  /// @notice Emitted if an attempt is made to interact with an uninitialized tick
  error tickIsNotInitialized();
  /// @notice Emitted if there is an attempt to insert a new tick into the list of ticks with incorrect indexes of the previous and next ticks
  error tickInvalidLinks();

  // ####  SafeTransfer errors  ####

  /// @notice Emitted if token transfer failed internally
  error transferFailed();

  // ####  TickMath errors  ####

  /// @notice Emitted if tick is greater than the maximum or less than the minimum allowed value
  error tickOutOfRange();
  /// @notice Emitted if price is greater than the maximum or less than the minimum allowed value
  error priceOutOfRange();
}

// ============================================================
// FILE: contracts/interfaces/pool/IAlgebraPoolEvents.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Events emitted by a pool
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolEvents {
  /// @notice Emitted exactly once by a pool when #initialize is first called on the pool
  /// @dev Mint/Burn/Swaps cannot be emitted by the pool before Initialize
  /// @param price The initial sqrt price of the pool, as a Q64.96
  /// @param tick The initial tick of the pool, i.e. log base 1.0001 of the starting price of the pool
  event Initialize(uint160 price, int24 tick);

  /// @notice Emitted when liquidity is minted for a given position
  /// @param sender The address that minted the liquidity
  /// @param owner The owner of the position and recipient of any minted liquidity
  /// @param bottomTick The lower tick of the position
  /// @param topTick The upper tick of the position
  /// @param liquidityAmount The amount of liquidity minted to the position range
  /// @param amount0 How much token0 was required for the minted liquidity
  /// @param amount1 How much token1 was required for the minted liquidity
  event Mint(
    address sender,
    address indexed owner,
    int24 indexed bottomTick,
    int24 indexed topTick,
    uint128 liquidityAmount,
    uint256 amount0,
    uint256 amount1
  );

  /// @notice Emitted when fees are collected by the owner of a position
  /// @param owner The owner of the position for which fees are collected
  /// @param recipient The address that received fees
  /// @param bottomTick The lower tick of the position
  /// @param topTick The upper tick of the position
  /// @param amount0 The amount of token0 fees collected
  /// @param amount1 The amount of token1 fees collected
  event Collect(address indexed owner, address recipient, int24 indexed bottomTick, int24 indexed topTick, uint128 amount0, uint128 amount1);

  /// @notice Emitted when a position's liquidity is removed
  /// @dev Does not withdraw any fees earned by the liquidity position, which must be withdrawn via #collect
  /// @param owner The owner of the position for which liquidity is removed
  /// @param bottomTick The lower tick of the position
  /// @param topTick The upper tick of the position
  /// @param liquidityAmount The amount of liquidity to remove
  /// @param amount0 The amount of token0 withdrawn
  /// @param amount1 The amount of token1 withdrawn
  event Burn(address indexed owner, int24 indexed bottomTick, int24 indexed topTick, uint128 liquidityAmount, uint256 amount0, uint256 amount1);

  /// @notice Emitted when a plugin fee is applied during a burn
  /// @param owner The owner of the position
  /// @param pluginFee The fee to be sent to the plugin
  event BurnFee(address indexed owner, uint24 pluginFee);

  /// @notice Emitted by the pool for any swaps between token0 and token1
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param recipient The address that received the output of the swap
  /// @param amount0 The delta of the token0 balance of the pool
  /// @param amount1 The delta of the token1 balance of the pool
  /// @param price The sqrt(price) of the pool after the swap, as a Q64.96
  /// @param liquidity The liquidity of the pool after the swap
  /// @param tick The log base 1.0001 of price of the pool after the swap

  event Swap(address indexed sender, address indexed recipient, int256 amount0, int256 amount1, uint160 price, uint128 liquidity, int24 tick);

  /// @notice Emitted by the pool after any swaps
  /// @param sender The address that initiated the swap
  /// @param overrideFee The fee to be applied to the trade
  /// @param pluginFee The fee to be sent to the plugin
  event SwapFee(address indexed sender, uint24 overrideFee, uint24 pluginFee);

  /// @notice Emitted by the pool for any flashes of token0/token1
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param recipient The address that received the tokens from flash
  /// @param amount0 The amount of token0 that was flashed
  /// @param amount1 The amount of token1 that was flashed
  /// @param paid0 The amount of token0 paid for the flash, which can exceed the amount0 plus the fee
  /// @param paid1 The amount of token1 paid for the flash, which can exceed the amount1 plus the fee
  event Flash(address indexed sender, address indexed recipient, uint256 amount0, uint256 amount1, uint256 paid0, uint256 paid1);

  /// @notice Emitted when the pool has higher balances than expected.
  /// Any excess of tokens will be distributed between liquidity providers as fee.
  /// @dev Fees after flash also will trigger this event due to mechanics of flash.
  /// @param amount0 The excess of token0
  /// @param amount1 The excess of token1
  event ExcessTokens(uint256 amount0, uint256 amount1);

  /// @notice Emitted when the community fee is changed by the pool
  /// @param communityFeeNew The updated value of the community fee in thousandths (1e-3)
  event CommunityFee(uint16 communityFeeNew);

  /// @notice Emitted when the tick spacing changes
  /// @param newTickSpacing The updated value of the new tick spacing
  event TickSpacing(int24 newTickSpacing);

  /// @notice Emitted when the plugin address changes
  /// @param newPluginAddress New plugin address
  event Plugin(address newPluginAddress);

  /// @notice Emitted when the plugin config changes
  /// @param newPluginConfig New plugin config
  event PluginConfig(uint8 newPluginConfig);

  /// @notice Emitted when the fee changes inside the pool
  /// @param fee The current fee in hundredths of a bip, i.e. 1e-6
  event Fee(uint16 fee);

  /// @notice Emitted when the community vault address changes
  /// @param newCommunityVault New community vault
  event CommunityVault(address newCommunityVault);

  /// @notice Emitted when the plugin does skim the excess of tokens
  /// @param to THe receiver of tokens (plugin)
  /// @param amount0 The amount of token0
  /// @param amount1 The amount of token1
  event Skim(address indexed to, uint256 amount0, uint256 amount1);
}

// ============================================================
// FILE: contracts/interfaces/pool/IAlgebraPoolImmutables.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Pool state that never changes
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolImmutables {
  /// @notice The Algebra factory contract, which must adhere to the IAlgebraFactory interface
  /// @return The contract address
  function factory() external view returns (address);

  /// @notice The first of the two tokens of the pool, sorted by address
  /// @return The token contract address
  function token0() external view returns (address);

  /// @notice The second of the two tokens of the pool, sorted by address
  /// @return The token contract address
  function token1() external view returns (address);

  /// @notice The maximum amount of position liquidity that can use any tick in the range
  /// @dev This parameter is enforced per tick to prevent liquidity from overflowing a uint128 at any point, and
  /// also prevents out-of-range liquidity from being used to prevent adding in-range liquidity to a pool
  /// @return The max amount of liquidity per tick
  function maxLiquidityPerTick() external view returns (uint128);
}

// ============================================================
// FILE: contracts/interfaces/pool/IAlgebraPoolPermissionedActions.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Permissioned pool actions
/// @notice Contains pool methods that may only be called by permissioned addresses
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolPermissionedActions {
  /// @notice Set the community's % share of the fees. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newCommunityFee The new community fee percent in thousandths (1e-3)
  function setCommunityFee(uint16 newCommunityFee) external;

  /// @notice Set the new tick spacing values. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newTickSpacing The new tick spacing value
  function setTickSpacing(int24 newTickSpacing) external;

  /// @notice Set the new plugin address. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newPluginAddress The new plugin address
  function setPlugin(address newPluginAddress) external;

  /// @notice Set new plugin config. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newConfig In the new configuration of the plugin,
  /// each bit of which is responsible for a particular hook.
  function setPluginConfig(uint8 newConfig) external;

  /// @notice Set new community fee vault address. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @dev Community fee vault receives collected community fees.
  /// **accumulated but not yet sent to the vault community fees once will be sent to the `newCommunityVault` address**
  /// @param newCommunityVault The address of new community fee vault
  function setCommunityVault(address newCommunityVault) external;

  /// @notice Set new pool fee. Can be called by owner if dynamic fee is disabled.
  /// Called by the plugin if dynamic fee is enabled
  /// @param newFee The new fee value
  function setFee(uint16 newFee) external;

  /// @notice Forces balances to match reserves. Excessive tokens will be distributed between active LPs
  /// @dev Only plugin can call this function
  function sync() external;

  /// @notice Forces balances to match reserves. Excessive tokens will be sent to msg.sender
  /// @dev Only plugin can call this function
  function skim() external;
}

// ============================================================
// FILE: contracts/interfaces/pool/IAlgebraPoolState.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Pool state that can change
/// @dev Important security note: when using this data by external contracts, it is necessary to take into account the possibility
/// of manipulation (including read-only reentrancy).
/// This interface is based on the UniswapV3 interface, credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolState {
  /// @notice Safely get most important state values of Algebra Integral AMM
  /// @dev Several values exposed as a single method to save gas when accessed externally.
  /// **Important security note: this method checks reentrancy lock and should be preferred in most cases**.
  /// @return sqrtPrice The current price of the pool as a sqrt(dToken1/dToken0) Q64.96 value
  /// @return tick The current global tick of the pool. May not always be equal to SqrtTickMath.getTickAtSqrtRatio(price) if the price is on a tick boundary
  /// @return lastFee The current (last known) pool fee value in hundredths of a bip, i.e. 1e-6 (so '100' is '0.01%'). May be obsolete if using dynamic fee plugin
  /// @return pluginConfig The current plugin config as bitmap. Each bit is responsible for enabling/disabling the hooks, the last bit turns on/off dynamic fees logic
  /// @return activeLiquidity  The currently in-range liquidity available to the pool
  /// @return nextTick The next initialized tick after current global tick
  /// @return previousTick The previous initialized tick before (or at) current global tick
  function safelyGetStateOfAMM()
    external
    view
    returns (uint160 sqrtPrice, int24 tick, uint16 lastFee, uint8 pluginConfig, uint128 activeLiquidity, int24 nextTick, int24 previousTick);

  /// @notice Allows to easily get current reentrancy lock status
  /// @dev can be used to prevent read-only reentrancy.
  /// This method just returns `globalState.unlocked` value
  /// @return unlocked Reentrancy lock flag, true if the pool currently is unlocked, otherwise - false
  function isUnlocked() external view returns (bool unlocked);

  // ! IMPORTANT security note: the pool state can be manipulated.
  // ! The following methods do not check reentrancy lock themselves.

  /// @notice The globalState structure in the pool stores many values but requires only one slot
  /// and is exposed as a single method to save gas when accessed externally.
  /// @dev **important security note: caller should check `unlocked` flag to prevent read-only reentrancy**
  /// @return price The current price of the pool as a sqrt(dToken1/dToken0) Q64.96 value
  /// @return tick The current tick of the pool, i.e. according to the last tick transition that was run
  /// This value may not always be equal to SqrtTickMath.getTickAtSqrtRatio(price) if the price is on a tick boundary
  /// @return lastFee The current (last known) pool fee value in hundredths of a bip, i.e. 1e-6 (so '100' is '0.01%'). May be obsolete if using dynamic fee plugin
  /// @return pluginConfig The current plugin config as bitmap. Each bit is responsible for enabling/disabling the hooks, the last bit turns on/off dynamic fees logic
  /// @return communityFee The community fee represented as a percent of all collected fee in thousandths, i.e. 1e-3 (so 100 is 10%)
  /// @return unlocked Reentrancy lock flag, true if the pool currently is unlocked, otherwise - false
  function globalState() external view returns (uint160 price, int24 tick, uint16 lastFee, uint8 pluginConfig, uint16 communityFee, bool unlocked);

  /// @notice Look up information about a specific tick in the pool
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @param tick The tick to look up
  /// @return liquidityTotal The total amount of position liquidity that uses the pool either as tick lower or tick upper
  /// @return liquidityDelta How much liquidity changes when the pool price crosses the tick
  /// @return prevTick The previous tick in tick list
  /// @return nextTick The next tick in tick list
  /// @return outerFeeGrowth0Token The fee growth on the other side of the tick from the current tick in token0
  /// @return outerFeeGrowth1Token The fee growth on the other side of the tick from the current tick in token1
  /// In addition, these values are only relative and must be used only in comparison to previous snapshots for
  /// a specific position.
  function ticks(
    int24 tick
  )
    external
    view
    returns (
      uint256 liquidityTotal,
      int128 liquidityDelta,
      int24 prevTick,
      int24 nextTick,
      uint256 outerFeeGrowth0Token,
      uint256 outerFeeGrowth1Token
    );

  /// @notice The timestamp of the last sending of tokens to vault/plugin
  /// @return The timestamp truncated to 32 bits
  function lastFeeTransferTimestamp() external view returns (uint32);

  /// @notice The amounts of token0 and token1 that will be sent to the vault
  /// @dev Will be sent FEE_TRANSFER_FREQUENCY after communityFeeLastTimestamp
  /// @return communityFeePending0 The amount of token0 that will be sent to the vault
  /// @return communityFeePending1 The amount of token1 that will be sent to the vault
  function getCommunityFeePending() external view returns (uint128 communityFeePending0, uint128 communityFeePending1);

  /// @notice The amounts of token0 and token1 that will be sent to the plugin
  /// @dev Will be sent FEE_TRANSFER_FREQUENCY after feeLastTransferTimestamp
  /// @return pluginFeePending0 The amount of token0 that will be sent to the plugin
  /// @return pluginFeePending1 The amount of token1 that will be sent to the plugin
  function getPluginFeePending() external view returns (uint128 pluginFeePending0, uint128 pluginFeePending1);

  /// @notice Returns the address of currently used plugin
  /// @dev The plugin is subject to change
  /// @return pluginAddress The address of currently used plugin
  function plugin() external view returns (address pluginAddress);

  /// @notice The contract to which community fees are transferred
  /// @return communityVaultAddress The communityVault address
  function communityVault() external view returns (address communityVaultAddress);

  /// @notice Returns 256 packed tick initialized boolean values. See TickTree for more information
  /// @param wordPosition Index of 256-bits word with ticks
  /// @return The 256-bits word with packed ticks info
  function tickTable(int16 wordPosition) external view returns (uint256);

  /// @notice The fee growth as a Q128.128 fees of token0 collected per unit of liquidity for the entire life of the pool
  /// @dev This value can overflow the uint256
  /// @return The fee growth accumulator for token0
  function totalFeeGrowth0Token() external view returns (uint256);

  /// @notice The fee growth as a Q128.128 fees of token1 collected per unit of liquidity for the entire life of the pool
  /// @dev This value can overflow the uint256
  /// @return The fee growth accumulator for token1
  function totalFeeGrowth1Token() external view returns (uint256);

  /// @notice The current pool fee value
  /// @dev In case dynamic fee is enabled in the pool, this method will call the plugin to get the current fee.
  /// If the plugin implements complex fee logic, this method may return an incorrect value or revert.
  /// In this case, see the plugin implementation and related documentation.
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return currentFee The current pool fee value in hundredths of a bip, i.e. 1e-6
  function fee() external view returns (uint16 currentFee);

  /// @notice The tracked token0 and token1 reserves of pool
  /// @dev If at any time the real balance is larger, the excess will be transferred to liquidity providers as additional fee.
  /// If the balance exceeds uint128, the excess will be sent to the communityVault.
  /// @return reserve0 The last known reserve of token0
  /// @return reserve1 The last known reserve of token1
  function getReserves() external view returns (uint128 reserve0, uint128 reserve1);

  /// @notice Returns the information about a position by the position's key
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @param key The position's key is a packed concatenation of the owner address, bottomTick and topTick indexes
  /// @return liquidity The amount of liquidity in the position
  /// @return innerFeeGrowth0Token Fee growth of token0 inside the tick range as of the last mint/burn/poke
  /// @return innerFeeGrowth1Token Fee growth of token1 inside the tick range as of the last mint/burn/poke
  /// @return fees0 The computed amount of token0 owed to the position as of the last mint/burn/poke
  /// @return fees1 The computed amount of token1 owed to the position as of the last mint/burn/poke
  function positions(
    bytes32 key
  ) external view returns (uint256 liquidity, uint256 innerFeeGrowth0Token, uint256 innerFeeGrowth1Token, uint128 fees0, uint128 fees1);

  /// @notice The currently in range liquidity available to the pool
  /// @dev This value has no relationship to the total liquidity across all ticks.
  /// Returned value cannot exceed type(uint128).max
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The current in range liquidity
  function liquidity() external view returns (uint128);

  /// @notice The current tick spacing
  /// @dev Ticks can only be initialized by new mints at multiples of this value
  /// e.g.: a tickSpacing of 60 means ticks can be initialized every 60th tick, i.e., ..., -120, -60, 0, 60, 120, ...
  /// However, tickspacing can be changed after the ticks have been initialized.
  /// This value is an int24 to avoid casting even though it is always positive.
  /// @return The current tick spacing
  function tickSpacing() external view returns (int24);

  /// @notice The previous initialized tick before (or at) current global tick
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The previous initialized tick
  function prevTickGlobal() external view returns (int24);

  /// @notice The next initialized tick after current global tick
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The next initialized tick
  function nextTickGlobal() external view returns (int24);

  /// @notice The root of tick search tree
  /// @dev Each bit corresponds to one node in the second layer of tick tree: '1' if node has at least one active bit.
  /// **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The root of tick search tree as bitmap
  function tickTreeRoot() external view returns (uint32);

  /// @notice The second layer of tick search tree
  /// @dev Each bit in node corresponds to one node in the leafs layer (`tickTable`) of tick tree: '1' if leaf has at least one active bit.
  /// **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The node of tick search tree second layer
  function tickTreeSecondLayer(int16) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/vault/IAlgebraCommunityVault.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Algebra community fee vault
/// @notice Community fee from pools is sent here, if it is enabled
/// @dev Version: Algebra Integral
interface IAlgebraCommunityVault {
  /// @notice Event emitted when a fees has been claimed
  /// @param token The address of token fee
  /// @param to The address where claimed rewards were sent to
  /// @param amount The amount of fees tokens claimed by communityFeeReceiver
  event TokensWithdrawal(address indexed token, address indexed to, uint256 amount);

  /// @notice Event emitted when a fees has been claimed
  /// @param token The address of token fee
  /// @param to The address where claimed rewards were sent to
  /// @param amount The amount of fees tokens claimed by Algebra
  event AlgebraTokensWithdrawal(address indexed token, address indexed to, uint256 amount);

  /// @notice Emitted when a AlgebraFeeReceiver address changed
  /// @param newAlgebraFeeReceiver New Algebra fee receiver address
  event AlgebraFeeReceiver(address newAlgebraFeeReceiver);

  /// @notice Emitted when a AlgebraFeeManager address change proposed
  /// @param pendingAlgebraFeeManager New pending Algebra fee manager address
  event PendingAlgebraFeeManager(address pendingAlgebraFeeManager);

  /// @notice Emitted when a new Algebra fee value proposed
  /// @param proposedNewAlgebraFee The new proposed Algebra fee value
  event AlgebraFeeProposal(uint16 proposedNewAlgebraFee);

  /// @notice Emitted when a Algebra fee proposal canceled
  event CancelAlgebraFeeProposal();

  /// @notice Emitted when a AlgebraFeeManager address changed
  /// @param newAlgebraFeeManager New Algebra fee manager address
  event AlgebraFeeManager(address newAlgebraFeeManager);

  /// @notice Emitted when the Algebra fee is changed
  /// @param newAlgebraFee The new Algebra fee value
  event AlgebraFee(uint16 newAlgebraFee);

  /// @notice Emitted when a CommunityFeeReceiver address changed
  /// @param newCommunityFeeReceiver New fee receiver address
  event CommunityFeeReceiver(address newCommunityFeeReceiver);

  /// @notice Withdraw protocol fees from vault
  /// @dev Can only be called by algebraFeeManager or communityFeeReceiver
  /// @param token The token address
  /// @param amount The amount of token
  function withdraw(address token, uint256 amount) external;

  struct WithdrawTokensParams {
    address token;
    uint256 amount;
  }

  /// @notice Withdraw protocol fees from vault. Used to claim fees for multiple tokens
  /// @dev Can be called by algebraFeeManager or communityFeeReceiver
  /// @param params Array of WithdrawTokensParams objects containing token addresses and amounts to withdraw
  function withdrawTokens(WithdrawTokensParams[] calldata params) external;

  // ### algebra factory owner permissioned actions ###

  /// @notice Accepts the proposed new Algebra fee
  /// @dev Can only be called by the factory owner.
  /// The new value will also be used for previously accumulated tokens that have not yet been withdrawn
  /// @param newAlgebraFee New Algebra fee value
  function acceptAlgebraFeeChangeProposal(uint16 newAlgebraFee) external;

  /// @notice Change community fee receiver address
  /// @dev Can only be called by the factory owner
  /// @param newCommunityFeeReceiver New community fee receiver address
  function changeCommunityFeeReceiver(address newCommunityFeeReceiver) external;

  // ### algebra fee manager permissioned actions ###

  /// @notice Transfers Algebra fee manager role
  /// @param _newAlgebraFeeManager new Algebra fee manager address
  function transferAlgebraFeeManagerRole(address _newAlgebraFeeManager) external;

  /// @notice accept Algebra FeeManager role
  function acceptAlgebraFeeManagerRole() external;

  /// @notice Proposes new Algebra fee value for protocol
  /// @dev the new value will also be used for previously accumulated tokens that have not yet been withdrawn
  /// @param newAlgebraFee new Algebra fee value
  function proposeAlgebraFeeChange(uint16 newAlgebraFee) external;

  /// @notice Cancels Algebra fee change proposal
  function cancelAlgebraFeeChangeProposal() external;

  /// @notice Change Algebra community fee part receiver
  /// @param newAlgebraFeeReceiver The address of new Algebra fee receiver
  function changeAlgebraFeeReceiver(address newAlgebraFeeReceiver) external;
}

// ============================================================
// FILE: contracts/interfaces/vault/IAlgebraVaultFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Algebra Vault Factory
/// @notice This contract can be used for automatic vaults creation
/// @dev Version: Algebra Integral
interface IAlgebraVaultFactory {
  /// @notice returns address of the community fee vault for the pool
  /// @param pool the address of Algebra Integral pool
  /// @return communityFeeVault the address of community fee vault
  function getVaultForPool(address pool) external view returns (address communityFeeVault);

  /// @notice creates the community fee vault for the pool if needed
  /// @param pool the address of Algebra Integral pool
  /// @return communityFeeVault the address of community fee vault
  function createVaultForPool(
    address pool,
    address creator,
    address deployer,
    address token0,
    address token1
  ) external returns (address communityFeeVault);
}

// ============================================================
// FILE: contracts/libraries/Constants.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0 <0.9.0;

/// @title Contains common constants for Algebra contracts
/// @dev Constants moved to the library, not the base contract, to further emphasize their constant nature
library Constants {
  uint8 internal constant RESOLUTION = 96;
  uint256 internal constant Q96 = 1 << 96;
  uint256 internal constant Q128 = 1 << 128;

  uint24 internal constant FEE_DENOMINATOR = 1e6;
  uint16 internal constant FLASH_FEE = 0.01e4; // fee for flash loan in hundredths of a bip (0.01%)
  uint16 internal constant INIT_DEFAULT_FEE = 0.5e4; // init default fee value in hundredths of a bip (0.5%)
  uint16 internal constant MAX_DEFAULT_FEE = 5e4; // max default fee value in hundredths of a bip (5%)

  int24 internal constant INIT_DEFAULT_TICK_SPACING = 150;
  int24 internal constant MAX_TICK_SPACING = 500;
  int24 internal constant MIN_TICK_SPACING = 1;

  // the frequency with which the accumulated community fees are sent to the vault
  uint32 internal constant FEE_TRANSFER_FREQUENCY = 5 seconds;

  // max(uint128) / (MAX_TICK - MIN_TICK)
  uint128 internal constant MAX_LIQUIDITY_PER_TICK = 191757638537527648490752896198553;

  uint16 internal constant MAX_COMMUNITY_FEE = 1e3; // 100%
  uint256 internal constant COMMUNITY_FEE_DENOMINATOR = 1e3;
  // role that can change settings in pools
  bytes32 internal constant POOLS_ADMINISTRATOR_ROLE = keccak256('POOLS_ADMINISTRATOR');
}

// ============================================================
// FILE: contracts/libraries/FullMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
  /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
  /// @param a The multiplicand
  /// @param b The multiplier
  /// @param denominator The divisor
  /// @return result The 256-bit result
  /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
  function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
    unchecked {
      // 512-bit multiply [prod1 prod0] = a * b
      // Compute the product mod 2**256 and mod 2**256 - 1
      // then use the Chinese Remainder Theorem to reconstruct
      // the 512 bit result. The result is stored in two 256
      // variables such that product = prod1 * 2**256 + prod0
      uint256 prod0 = a * b; // Least significant 256 bits of the product
      uint256 prod1; // Most significant 256 bits of the product
      assembly {
        let mm := mulmod(a, b, not(0))
        prod1 := sub(sub(mm, prod0), lt(mm, prod0))
      }

      // Make sure the result is less than 2**256.
      // Also prevents denominator == 0
      require(denominator > prod1);

      // Handle non-overflow cases, 256 by 256 division
      if (prod1 == 0) {
        assembly {
          result := div(prod0, denominator)
        }
        return result;
      }

      ///////////////////////////////////////////////
      // 512 by 256 division.
      ///////////////////////////////////////////////

      // Make division exact by subtracting the remainder from [prod1 prod0]
      // Compute remainder using mulmod
      // Subtract 256 bit remainder from 512 bit number
      assembly {
        let remainder := mulmod(a, b, denominator)
        prod1 := sub(prod1, gt(remainder, prod0))
        prod0 := sub(prod0, remainder)
      }

      // Factor powers of two out of denominator
      // Compute largest power of two divisor of denominator.
      // Always >= 1.
      uint256 twos = (0 - denominator) & denominator;
      // Divide denominator by power of two
      assembly {
        denominator := div(denominator, twos)
      }

      // Divide [prod1 prod0] by the factors of two
      assembly {
        prod0 := div(prod0, twos)
      }
      // Shift in bits from prod1 into prod0. For this we need
      // to flip `twos` such that it is 2**256 / twos.
      // If twos is zero, then it becomes one
      assembly {
        twos := add(div(sub(0, twos), twos), 1)
      }
      prod0 |= prod1 * twos;

      // Invert denominator mod 2**256
      // Now that denominator is an odd number, it has an inverse
      // modulo 2**256 such that denominator * inv = 1 mod 2**256.
      // Compute the inverse by starting with a seed that is correct
      // correct for four bits. That is, denominator * inv = 1 mod 2**4
      uint256 inv = (3 * denominator) ^ 2;
      // Now use Newton-Raphson iteration to improve the precision.
      // Thanks to Hensel's lifting lemma, this also works in modular
      // arithmetic, doubling the correct bits in each step.
      inv *= 2 - denominator * inv; // inverse mod 2**8
      inv *= 2 - denominator * inv; // inverse mod 2**16
      inv *= 2 - denominator * inv; // inverse mod 2**32
      inv *= 2 - denominator * inv; // inverse mod 2**64
      inv *= 2 - denominator * inv; // inverse mod 2**128
      inv *= 2 - denominator * inv; // inverse mod 2**256

      // Because the division is now exact we can divide by multiplying
      // with the modular inverse of denominator. This will give us the
      // correct result modulo 2**256. Since the preconditions guarantee
      // that the outcome is less than 2**256, this is the final result.
      // We don't need to compute the high bits of the result and prod1
      // is no longer required.
      result = prod0 * inv;
      return result;
    }
  }

  /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
  /// @param a The multiplicand
  /// @param b The multiplier
  /// @param denominator The divisor
  /// @return result The 256-bit result
  function mulDivRoundingUp(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
    unchecked {
      if (a == 0 || ((result = a * b) / a == b)) {
        require(denominator > 0);
        assembly {
          result := add(div(result, denominator), gt(mod(result, denominator), 0))
        }
      } else {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
          require(result < type(uint256).max);
          result++;
        }
      }
    }
  }

  /// @notice Returns ceil(x / y)
  /// @dev division by 0 has unspecified behavior, and must be checked externally
  /// @param x The dividend
  /// @param y The divisor
  /// @return z The quotient, ceil(x / y)
  function unsafeDivRoundingUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
    assembly {
      z := add(div(x, y), gt(mod(x, y), 0))
    }
  }
}

// ============================================================
// FILE: contracts/libraries/SafeTransfer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4 <0.9.0;

import '../interfaces/pool/IAlgebraPoolErrors.sol';

/// @title SafeTransfer
/// @notice Safe ERC20 transfer library that gracefully handles missing return values.
/// @dev Credit to Solmate under MIT license: https://github.com/transmissions11/solmate/blob/ed67feda67b24fdeff8ad1032360f0ee6047ba0a/src/utils/SafeTransferLib.sol
/// @dev Please note that this library does not check if the token has a code! That responsibility is delegated to the caller.
library SafeTransfer {
  /// @notice Transfers tokens to a recipient
  /// @dev Calls transfer on token contract, errors with transferFailed() if transfer fails
  /// @param token The contract address of the token which will be transferred
  /// @param to The recipient of the transfer
  /// @param amount The amount of the token to transfer
  function safeTransfer(address token, address to, uint256 amount) internal {
    bool success;
    assembly {
      let freeMemoryPointer := mload(0x40) // we will need to restore 0x40 slot
      mstore(0x00, 0xa9059cbb00000000000000000000000000000000000000000000000000000000) // "transfer(address,uint256)" selector
      mstore(0x04, and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // append cleaned "to" address
      mstore(0x24, amount)
      // now we use 0x00 - 0x44 bytes (68), freeMemoryPointer is dirty
      success := call(gas(), token, 0, 0, 0x44, 0, 0x20)
      success := and(
        // set success to true if call isn't reverted and returned exactly 1 (can't just be non-zero data) or nothing
        or(and(eq(mload(0), 1), eq(returndatasize(), 32)), iszero(returndatasize())),
        success
      )
      mstore(0x40, freeMemoryPointer) // restore the freeMemoryPointer
    }

    if (!success) revert IAlgebraPoolErrors.transferFailed();
  }
}
