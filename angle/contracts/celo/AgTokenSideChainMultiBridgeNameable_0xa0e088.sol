// ============================================================
// FILE: @chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface AggregatorV3Interface {

  function decimals()
    external
    view
    returns (
      uint8
    );

  function description()
    external
    view
    returns (
      string memory
    );

  function version()
    external
    view
    returns (
      uint256
    );

  // getRoundData and latestRoundData should both raise "No data present"
  // if they do not have data to report, instead of returning unset values
  // which could be misinterpreted as actual reported values.
  function getRoundData(
    uint80 _roundId
  )
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (access/AccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControlEnumerableUpgradeable.sol";
import "./AccessControlUpgradeable.sol";
import "../utils/structs/EnumerableSetUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Extension of {AccessControl} that allows enumerating the members of each role.
 */
abstract contract AccessControlEnumerableUpgradeable is Initializable, IAccessControlEnumerableUpgradeable, AccessControlUpgradeable {
    function __AccessControlEnumerable_init() internal onlyInitializing {
    }

    function __AccessControlEnumerable_init_unchained() internal onlyInitializing {
    }
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    mapping(bytes32 => EnumerableSetUpgradeable.AddressSet) private _roleMembers;

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlEnumerableUpgradeable).interfaceId || super.supportsInterface(interfaceId);
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;

import "./IAccessControlUpgradeable.sol";
import "../utils/ContextUpgradeable.sol";
import "../utils/StringsUpgradeable.sol";
import "../utils/introspection/ERC165Upgradeable.sol";
import "../proxy/utils/Initializable.sol";

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
 * ```
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```
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
 * accounts that have been granted it.
 */
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControlUpgradeable, ERC165Upgradeable {
    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
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
        return interfaceId == type(IAccessControlUpgradeable).interfaceId || super.supportsInterface(interfaceId);
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
                        StringsUpgradeable.toHexString(uint160(account), 20),
                        " is missing role ",
                        StringsUpgradeable.toHexString(uint256(role), 32)
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/IAccessControlEnumerableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControlEnumerable.sol)

pragma solidity ^0.8.0;

import "./IAccessControlUpgradeable.sol";

/**
 * @dev External interface of AccessControlEnumerable declared to support ERC165 detection.
 */
interface IAccessControlEnumerableUpgradeable is IAccessControlUpgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControlUpgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

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
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    function __Ownable_init() internal onlyInitializing {
        __Ownable_init_unchained();
    }

    function __Ownable_init_unchained() internal onlyInitializing {
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
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/interfaces/IERC721MetadataUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../token/ERC721/extensions/IERC721MetadataUpgradeable.sol";

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

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
 * ```
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
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
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts. Equivalent to `reinitializer(1)`.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * `initializer` is equivalent to `reinitializer(1)`, so a reinitializer may be used after the original
     * initialization step. This is essential to configure modules that are added through upgrades and that require
     * initialization.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

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
abstract contract ReentrancyGuardUpgradeable is Initializable {
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

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
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
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC1155/IERC1155ReceiverUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC1155/IERC1155Receiver.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165Upgradeable.sol";

/**
 * @dev _Available since v3.1._
 */
interface IERC1155ReceiverUpgradeable is IERC165Upgradeable {
    /**
     * @dev Handles the receipt of a single ERC1155 token type. This function is
     * called at the end of a `safeTransferFrom` after the balance has been updated.
     *
     * NOTE: To accept the transfer, this must return
     * `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))`
     * (i.e. 0xf23a6e61, or its own function selector).
     *
     * @param operator The address which initiated the transfer (i.e. msg.sender)
     * @param from The address which previously owned the token
     * @param id The ID of the token being transferred
     * @param value The amount of tokens being transferred
     * @param data Additional data with no specified format
     * @return `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))` if transfer is allowed
     */
    function onERC1155Received(
        address operator,
        address from,
        uint256 id,
        uint256 value,
        bytes calldata data
    ) external returns (bytes4);

    /**
     * @dev Handles the receipt of a multiple ERC1155 token types. This function
     * is called at the end of a `safeBatchTransferFrom` after the balances have
     * been updated.
     *
     * NOTE: To accept the transfer(s), this must return
     * `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))`
     * (i.e. 0xbc197c81, or its own function selector).
     *
     * @param operator The address which initiated the batch transfer (i.e. msg.sender)
     * @param from The address which previously owned the token
     * @param ids An array containing ids of each token being transferred (order and length must match values array)
     * @param values An array containing amounts of each token being transferred (order and length must match ids array)
     * @param data Additional data with no specified format
     * @return `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))` if transfer is allowed
     */
    function onERC1155BatchReceived(
        address operator,
        address from,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external returns (bytes4);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20Upgradeable.sol";
import "./extensions/IERC20MetadataUpgradeable.sol";
import "../../utils/ContextUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20Upgradeable, IERC20MetadataUpgradeable {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __ERC20_init_unchained(name_, symbol_);
    }

    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
        }
        _balances[to] += amount;

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
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
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[45] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/extensions/draft-ERC20Permit.sol)

pragma solidity ^0.8.0;

import "./draft-IERC20PermitUpgradeable.sol";
import "../ERC20Upgradeable.sol";
import "../../../utils/cryptography/draft-EIP712Upgradeable.sol";
import "../../../utils/cryptography/ECDSAUpgradeable.sol";
import "../../../utils/CountersUpgradeable.sol";
import "../../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * _Available since v3.4._
 *
 * @custom:storage-size 51
 */
abstract contract ERC20PermitUpgradeable is Initializable, ERC20Upgradeable, IERC20PermitUpgradeable, EIP712Upgradeable {
    using CountersUpgradeable for CountersUpgradeable.Counter;

    mapping(address => CountersUpgradeable.Counter) private _nonces;

    // solhint-disable-next-line var-name-mixedcase
    bytes32 private constant _PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    /**
     * @dev In previous versions `_PERMIT_TYPEHASH` was declared as `immutable`.
     * However, to ensure consistency with the upgradeable transpiler, we will continue
     * to reserve a slot.
     * @custom:oz-renamed-from _PERMIT_TYPEHASH
     */
    // solhint-disable-next-line var-name-mixedcase
    bytes32 private _PERMIT_TYPEHASH_DEPRECATED_SLOT;

    /**
     * @dev Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to `"1"`.
     *
     * It's a good idea to use the same `name` that is defined as the ERC20 token name.
     */
    function __ERC20Permit_init(string memory name) internal onlyInitializing {
        __EIP712_init_unchained(name, "1");
    }

    function __ERC20Permit_init_unchained(string memory) internal onlyInitializing {}

    /**
     * @dev See {IERC20Permit-permit}.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual override {
        require(block.timestamp <= deadline, "ERC20Permit: expired deadline");

        bytes32 structHash = keccak256(abi.encode(_PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSAUpgradeable.recover(hash, v, r, s);
        require(signer == owner, "ERC20Permit: invalid signature");

        _approve(owner, spender, value);
    }

    /**
     * @dev See {IERC20Permit-nonces}.
     */
    function nonces(address owner) public view virtual override returns (uint256) {
        return _nonces[owner].current();
    }

    /**
     * @dev See {IERC20Permit-DOMAIN_SEPARATOR}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view override returns (bytes32) {
        return _domainSeparatorV4();
    }

    /**
     * @dev "Consume a nonce": return the current value and increment.
     *
     * _Available since v4.1._
     */
    function _useNonce(address owner) internal virtual returns (uint256 current) {
        CountersUpgradeable.Counter storage nonce = _nonces[owner];
        current = nonce.current();
        nonce.increment();
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/draft-IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20PermitUpgradeable {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20MetadataUpgradeable is IERC20Upgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
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
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC721/extensions/IERC721MetadataUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC721Upgradeable.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721MetadataUpgradeable is IERC721Upgradeable {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC721/IERC721ReceiverUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.0;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721ReceiverUpgradeable {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165Upgradeable.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721Upgradeable is IERC165Upgradeable {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Counters.sol)

pragma solidity ^0.8.0;

/**
 * @title Counters
 * @author Matt Condon (@shrugs)
 * @dev Provides counters that can only be incremented, decremented or reset. This can be used e.g. to track the number
 * of elements in a mapping, issuing ERC721 ids, or counting request ids.
 *
 * Include with `using Counters for Counters.Counter;`
 */
library CountersUpgradeable {
    struct Counter {
        // This variable should never be directly accessed by users of the library: interactions must be restricted to
        // the library's function. As of Solidity v0.5.2, this cannot be enforced, though there is a proposal to add
        // this feature: see https://github.com/ethereum/solidity/issues/4637
        uint256 _value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(Counter storage counter) internal {
        unchecked {
            counter._value += 1;
        }
    }

    function decrement(Counter storage counter) internal {
        uint256 value = counter._value;
        require(value > 0, "Counter: decrement overflow");
        unchecked {
            counter._value = value - 1;
        }
    }

    function reset(Counter storage counter) internal {
        counter._value = 0;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/cryptography/draft-EIP712.sol)

pragma solidity ^0.8.0;

import "./ECDSAUpgradeable.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP 712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding specified in the EIP is very generic, and such a generic implementation in Solidity is not feasible,
 * thus this contract does not implement the encoding itself. Protocols need to implement the type-specific encoding
 * they need in their contracts using a combination of `abi.encode` and `keccak256`.
 *
 * This contract implements the EIP 712 domain separator ({_domainSeparatorV4}) that is used as part of the encoding
 * scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA
 * ({_hashTypedDataV4}).
 *
 * The implementation of the domain separator was designed to be as efficient as possible while still properly updating
 * the chain id to protect against replay attacks on an eventual fork of the chain.
 *
 * NOTE: This contract implements the version of the encoding known as "v4", as implemented by the JSON RPC method
 * https://docs.metamask.io/guide/signing-data.html[`eth_signTypedDataV4` in MetaMask].
 *
 * _Available since v3.4._
 *
 * @custom:storage-size 52
 */
abstract contract EIP712Upgradeable is Initializable {
    /* solhint-disable var-name-mixedcase */
    bytes32 private _HASHED_NAME;
    bytes32 private _HASHED_VERSION;
    bytes32 private constant _TYPE_HASH = keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    /* solhint-enable var-name-mixedcase */

    /**
     * @dev Initializes the domain separator and parameter caches.
     *
     * The meaning of `name` and `version` is specified in
     * https://eips.ethereum.org/EIPS/eip-712#definition-of-domainseparator[EIP 712]:
     *
     * - `name`: the user readable name of the signing domain, i.e. the name of the DApp or the protocol.
     * - `version`: the current major version of the signing domain.
     *
     * NOTE: These parameters cannot be changed except through a xref:learn::upgrading-smart-contracts.adoc[smart
     * contract upgrade].
     */
    function __EIP712_init(string memory name, string memory version) internal onlyInitializing {
        __EIP712_init_unchained(name, version);
    }

    function __EIP712_init_unchained(string memory name, string memory version) internal onlyInitializing {
        bytes32 hashedName = keccak256(bytes(name));
        bytes32 hashedVersion = keccak256(bytes(version));
        _HASHED_NAME = hashedName;
        _HASHED_VERSION = hashedVersion;
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        return _buildDomainSeparator(_TYPE_HASH, _EIP712NameHash(), _EIP712VersionHash());
    }

    function _buildDomainSeparator(
        bytes32 typeHash,
        bytes32 nameHash,
        bytes32 versionHash
    ) private view returns (bytes32) {
        return keccak256(abi.encode(typeHash, nameHash, versionHash, block.chainid, address(this)));
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
        return ECDSAUpgradeable.toTypedDataHash(_domainSeparatorV4(), structHash);
    }

    /**
     * @dev The hash of the name parameter for the EIP712 domain.
     *
     * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
     * are a concern.
     */
    function _EIP712NameHash() internal virtual view returns (bytes32) {
        return _HASHED_NAME;
    }

    /**
     * @dev The hash of the version parameter for the EIP712 domain.
     *
     * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
     * are a concern.
     */
    function _EIP712VersionHash() internal virtual view returns (bytes32) {
        return _HASHED_VERSION;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.0;

import "../StringsUpgradeable.sol";

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSAUpgradeable {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS,
        InvalidSignatureV
    }

    function _throwError(RecoverError error) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert("ECDSA: invalid signature");
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert("ECDSA: invalid signature length");
        } else if (error == RecoverError.InvalidSignatureS) {
            revert("ECDSA: invalid signature 's' value");
        } else if (error == RecoverError.InvalidSignatureV) {
            revert("ECDSA: invalid signature 'v' value");
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature` or error string. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     *
     * _Available since v4.3._
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError) {
        // Check the signature length
        // - case 65: r,s,v signature (standard)
        // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098) _Available since v4.1._
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else if (signature.length == 64) {
            bytes32 r;
            bytes32 vs;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                vs := mload(add(signature, 0x40))
            }
            return tryRecover(hash, r, vs);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength);
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, signature);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     *
     * _Available since v4.3._
     */
    function tryRecover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address, RecoverError) {
        bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        uint8 v = uint8((uint256(vs) >> 255) + 27);
        return tryRecover(hash, v, r, s);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     *
     * _Available since v4.2._
     */
    function recover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, r, vs);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     *
     * _Available since v4.3._
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address, RecoverError) {
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
            return (address(0), RecoverError.InvalidSignatureS);
        }
        if (v != 27 && v != 28) {
            return (address(0), RecoverError.InvalidSignatureV);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature);
        }

        return (signer, RecoverError.NoError);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, v, r, s);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from a `hash`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32) {
        // 32 is the length in bytes of hash,
        // enforced by the type signature above
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from `s`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n", StringsUpgradeable.toString(s.length), s));
    }

    /**
     * @dev Returns an Ethereum Signed Typed Data, created from a
     * `domainSeparator` and a `structHash`. This produces hash corresponding
     * to the one signed with the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`]
     * JSON-RPC method as part of EIP-712.
     *
     * See {recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", domainSeparator, structHash));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

import "./IERC165Upgradeable.sol";
import "../../proxy/utils/Initializable.sol";

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
abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165Upgradeable).interfaceId;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/introspection/IERC165Upgradeable.sol
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
interface IERC165Upgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

/**
 * @dev String operations.
 */
library StringsUpgradeable {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT licence
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0x00";
        }
        uint256 temp = value;
        uint256 length = 0;
        while (temp != 0) {
            length++;
            temp >>= 8;
        }
        return toHexString(value, length);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
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
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/structs/EnumerableSet.sol)

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
 * ```
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
 *  Trying to delete such a structure from storage will likely result in data corruption, rendering the structure unusable.
 *  See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 *  In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an array of EnumerableSet.
 * ====
 */
library EnumerableSetUpgradeable {
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
        return _values(set._inner);
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
     * @dev Returns the number of values on the set. O(1).
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
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

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
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
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
// FILE: @openzeppelin/contracts/interfaces/draft-IERC1822.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (interfaces/IERC3156FlashBorrower.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC3156 FlashBorrower, as defined in
 * https://eips.ethereum.org/EIPS/eip-3156[ERC-3156].
 *
 * _Available since v4.1._
 */
interface IERC3156FlashBorrower {
    /**
     * @dev Receive a flash loan.
     * @param initiator The initiator of the loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param fee The additional amount of tokens to repay.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     * @return The keccak256 hash of "IERC3156FlashBorrower.onFlashLoan"
     */
    function onFlashLoan(
        address initiator,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC3156FlashLender.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC3156FlashLender.sol)

pragma solidity ^0.8.0;

import "./IERC3156FlashBorrower.sol";

/**
 * @dev Interface of the ERC3156 FlashLender, as defined in
 * https://eips.ethereum.org/EIPS/eip-3156[ERC-3156].
 *
 * _Available since v4.1._
 */
interface IERC3156FlashLender {
    /**
     * @dev The amount of currency available to be lended.
     * @param token The loan currency.
     * @return The amount of `token` that can be borrowed.
     */
    function maxFlashLoan(address token) external view returns (uint256);

    /**
     * @dev The fee to be charged for a given loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @return The amount of `token` to be charged for the loan, on top of the returned principal.
     */
    function flashFee(address token, uint256 amount) external view returns (uint256);

    /**
     * @dev Initiate a flash loan.
     * @param receiver The receiver of the tokens in the loan, and the receiver of the callback.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     */
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address token,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC721Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../token/ERC721/extensions/IERC721Metadata.sol";

// ============================================================
// FILE: @openzeppelin/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.0;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (proxy/ERC1967/ERC1967Proxy.sol)

pragma solidity ^0.8.0;

import "../Proxy.sol";
import "./ERC1967Upgrade.sol";

/**
 * @dev This contract implements an upgradeable proxy. It is upgradeable because calls are delegated to an
 * implementation address that can be changed. This address is stored in storage in the location specified by
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967], so that it doesn't conflict with the storage layout of the
 * implementation behind the proxy.
 */
contract ERC1967Proxy is Proxy, ERC1967Upgrade {
    /**
     * @dev Initializes the upgradeable proxy with an initial implementation specified by `_logic`.
     *
     * If `_data` is nonempty, it's used as data in a delegate call to `_logic`. This will typically be an encoded
     * function call, and allows initializing the storage of the proxy like a Solidity constructor.
     */
    constructor(address _logic, bytes memory _data) payable {
        _upgradeToAndCall(_logic, _data, false);
    }

    /**
     * @dev Returns the current implementation address.
     */
    function _implementation() internal view virtual override returns (address impl) {
        return ERC1967Upgrade._getImplementation();
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/ERC1967/ERC1967Upgrade.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (proxy/ERC1967/ERC1967Upgrade.sol)

pragma solidity ^0.8.2;

import "../beacon/IBeacon.sol";
import "../../interfaces/draft-IERC1822.sol";
import "../../utils/Address.sol";
import "../../utils/StorageSlot.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 *
 * @custom:oz-upgrades-unsafe-allow delegatecall
 */
abstract contract ERC1967Upgrade {
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlot.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlot.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Emitted when the beacon is upgraded.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(Address.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            Address.isContract(IBeacon(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlot.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(
        address newBeacon,
        bytes memory data,
        bool forceCall
    ) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (proxy/Proxy.sol)

pragma solidity ^0.8.0;

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
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback function
     * and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _beforeFallback();
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if call data
     * is empty.
     */
    receive() external payable virtual {
        _fallback();
    }

    /**
     * @dev Hook that is called before falling back to the implementation. Can happen as part of a manual `_fallback`
     * call, or as part of the Solidity `fallback` or `receive` functions.
     *
     * If overridden should call `super._beforeFallback()`.
     */
    function _beforeFallback() internal virtual {}
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./extensions/IERC20Metadata.sol";
import "../../utils/Context.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
        }
        _balances[to] += amount;

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
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
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/extensions/draft-ERC20Permit.sol)

pragma solidity ^0.8.0;

import "./draft-IERC20Permit.sol";
import "../ERC20.sol";
import "../../../utils/cryptography/draft-EIP712.sol";
import "../../../utils/cryptography/ECDSA.sol";
import "../../../utils/Counters.sol";

/**
 * @dev Implementation of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * _Available since v3.4._
 */
abstract contract ERC20Permit is ERC20, IERC20Permit, EIP712 {
    using Counters for Counters.Counter;

    mapping(address => Counters.Counter) private _nonces;

    // solhint-disable-next-line var-name-mixedcase
    bytes32 private constant _PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
    /**
     * @dev In previous versions `_PERMIT_TYPEHASH` was declared as `immutable`.
     * However, to ensure consistency with the upgradeable transpiler, we will continue
     * to reserve a slot.
     * @custom:oz-renamed-from _PERMIT_TYPEHASH
     */
    // solhint-disable-next-line var-name-mixedcase
    bytes32 private _PERMIT_TYPEHASH_DEPRECATED_SLOT;

    /**
     * @dev Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to `"1"`.
     *
     * It's a good idea to use the same `name` that is defined as the ERC20 token name.
     */
    constructor(string memory name) EIP712(name, "1") {}

    /**
     * @dev See {IERC20Permit-permit}.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual override {
        require(block.timestamp <= deadline, "ERC20Permit: expired deadline");

        bytes32 structHash = keccak256(abi.encode(_PERMIT_TYPEHASH, owner, spender, value, _useNonce(owner), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);

        address signer = ECDSA.recover(hash, v, r, s);
        require(signer == owner, "ERC20Permit: invalid signature");

        _approve(owner, spender, value);
    }

    /**
     * @dev See {IERC20Permit-nonces}.
     */
    function nonces(address owner) public view virtual override returns (uint256) {
        return _nonces[owner].current();
    }

    /**
     * @dev See {IERC20Permit-DOMAIN_SEPARATOR}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view override returns (bytes32) {
        return _domainSeparatorV4();
    }

    /**
     * @dev "Consume a nonce": return the current value and increment.
     *
     * _Available since v4.1._
     */
    function _useNonce(address owner) internal virtual returns (uint256 current) {
        Counters.Counter storage nonce = _nonces[owner];
        current = nonce.current();
        nonce.increment();
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/draft-IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/draft-IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
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
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
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
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/draft-IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
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
// FILE: @openzeppelin/contracts/utils/Counters.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Counters.sol)

pragma solidity ^0.8.0;

/**
 * @title Counters
 * @author Matt Condon (@shrugs)
 * @dev Provides counters that can only be incremented, decremented or reset. This can be used e.g. to track the number
 * of elements in a mapping, issuing ERC721 ids, or counting request ids.
 *
 * Include with `using Counters for Counters.Counter;`
 */
library Counters {
    struct Counter {
        // This variable should never be directly accessed by users of the library: interactions must be restricted to
        // the library's function. As of Solidity v0.5.2, this cannot be enforced, though there is a proposal to add
        // this feature: see https://github.com/ethereum/solidity/issues/4637
        uint256 _value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(Counter storage counter) internal {
        unchecked {
            counter._value += 1;
        }
    }

    function decrement(Counter storage counter) internal {
        uint256 value = counter._value;
        require(value > 0, "Counter: decrement overflow");
        unchecked {
            counter._value = value - 1;
        }
    }

    function reset(Counter storage counter) internal {
        counter._value = 0;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/cryptography/draft-EIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/cryptography/draft-EIP712.sol)

pragma solidity ^0.8.0;

import "./ECDSA.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP 712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding specified in the EIP is very generic, and such a generic implementation in Solidity is not feasible,
 * thus this contract does not implement the encoding itself. Protocols need to implement the type-specific encoding
 * they need in their contracts using a combination of `abi.encode` and `keccak256`.
 *
 * This contract implements the EIP 712 domain separator ({_domainSeparatorV4}) that is used as part of the encoding
 * scheme, and the final step of the encoding to obtain the message digest that is then signed via ECDSA
 * ({_hashTypedDataV4}).
 *
 * The implementation of the domain separator was designed to be as efficient as possible while still properly updating
 * the chain id to protect against replay attacks on an eventual fork of the chain.
 *
 * NOTE: This contract implements the version of the encoding known as "v4", as implemented by the JSON RPC method
 * https://docs.metamask.io/guide/signing-data.html[`eth_signTypedDataV4` in MetaMask].
 *
 * _Available since v3.4._
 */
abstract contract EIP712 {
    /* solhint-disable var-name-mixedcase */
    // Cache the domain separator as an immutable value, but also store the chain id that it corresponds to, in order to
    // invalidate the cached domain separator if the chain id changes.
    bytes32 private immutable _CACHED_DOMAIN_SEPARATOR;
    uint256 private immutable _CACHED_CHAIN_ID;
    address private immutable _CACHED_THIS;

    bytes32 private immutable _HASHED_NAME;
    bytes32 private immutable _HASHED_VERSION;
    bytes32 private immutable _TYPE_HASH;

    /* solhint-enable var-name-mixedcase */

    /**
     * @dev Initializes the domain separator and parameter caches.
     *
     * The meaning of `name` and `version` is specified in
     * https://eips.ethereum.org/EIPS/eip-712#definition-of-domainseparator[EIP 712]:
     *
     * - `name`: the user readable name of the signing domain, i.e. the name of the DApp or the protocol.
     * - `version`: the current major version of the signing domain.
     *
     * NOTE: These parameters cannot be changed except through a xref:learn::upgrading-smart-contracts.adoc[smart
     * contract upgrade].
     */
    constructor(string memory name, string memory version) {
        bytes32 hashedName = keccak256(bytes(name));
        bytes32 hashedVersion = keccak256(bytes(version));
        bytes32 typeHash = keccak256(
            "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
        );
        _HASHED_NAME = hashedName;
        _HASHED_VERSION = hashedVersion;
        _CACHED_CHAIN_ID = block.chainid;
        _CACHED_DOMAIN_SEPARATOR = _buildDomainSeparator(typeHash, hashedName, hashedVersion);
        _CACHED_THIS = address(this);
        _TYPE_HASH = typeHash;
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        if (address(this) == _CACHED_THIS && block.chainid == _CACHED_CHAIN_ID) {
            return _CACHED_DOMAIN_SEPARATOR;
        } else {
            return _buildDomainSeparator(_TYPE_HASH, _HASHED_NAME, _HASHED_VERSION);
        }
    }

    function _buildDomainSeparator(
        bytes32 typeHash,
        bytes32 nameHash,
        bytes32 versionHash
    ) private view returns (bytes32) {
        return keccak256(abi.encode(typeHash, nameHash, versionHash, block.chainid, address(this)));
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
        return ECDSA.toTypedDataHash(_domainSeparatorV4(), structHash);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.0;

import "../Strings.sol";

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
        InvalidSignatureS,
        InvalidSignatureV
    }

    function _throwError(RecoverError error) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert("ECDSA: invalid signature");
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert("ECDSA: invalid signature length");
        } else if (error == RecoverError.InvalidSignatureS) {
            revert("ECDSA: invalid signature 's' value");
        } else if (error == RecoverError.InvalidSignatureV) {
            revert("ECDSA: invalid signature 'v' value");
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature` or error string. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     *
     * _Available since v4.3._
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError) {
        // Check the signature length
        // - case 65: r,s,v signature (standard)
        // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098) _Available since v4.1._
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else if (signature.length == 64) {
            bytes32 r;
            bytes32 vs;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                vs := mload(add(signature, 0x40))
            }
            return tryRecover(hash, r, vs);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength);
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, signature);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     *
     * _Available since v4.3._
     */
    function tryRecover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address, RecoverError) {
        bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        uint8 v = uint8((uint256(vs) >> 255) + 27);
        return tryRecover(hash, v, r, s);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     *
     * _Available since v4.2._
     */
    function recover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, r, vs);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     *
     * _Available since v4.3._
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address, RecoverError) {
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
            return (address(0), RecoverError.InvalidSignatureS);
        }
        if (v != 27 && v != 28) {
            return (address(0), RecoverError.InvalidSignatureV);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature);
        }

        return (signer, RecoverError.NoError);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, v, r, s);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from a `hash`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32) {
        // 32 is the length in bytes of hash,
        // enforced by the type signature above
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from `s`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n", Strings.toString(s.length), s));
    }

    /**
     * @dev Returns an Ethereum Signed Typed Data, created from a
     * `domainSeparator` and a `structHash`. This produces hash corresponding
     * to the one signed with the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`]
     * JSON-RPC method as part of EIP-712.
     *
     * See {recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", domainSeparator, structHash));
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
// FILE: @openzeppelin/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/StorageSlot.sol)

pragma solidity ^0.8.0;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
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

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT licence
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0x00";
        }
        uint256 temp = value;
        uint256 length = 0;
        while (temp != 0) {
            length++;
            temp >>= 8;
        }
        return toHexString(value, length);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
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
}

// ============================================================
// FILE: contracts/agToken/AgEUR.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/IAgToken.sol";
import "../interfaces/coreModule/IStableMaster.sol";
import "../interfaces/ITreasury.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

/// @title AgEUR
/// @author Angle Labs, Inc.
/// @notice Base contract for agEUR, Angle's Euro stablecoin
/// @dev This contract is an upgraded version of the agEUR contract that was first deployed on Ethereum mainnet
contract AgEUR is IAgToken, ERC20PermitUpgradeable {
    // ================================= REFERENCES ================================

    /// @notice Reference to the `StableMaster` contract associated to agEUR
    address public stableMaster;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // ============================== ADDED PARAMETERS =============================

    /// @inheritdoc IAgToken
    mapping(address => bool) public isMinter;
    /// @notice Reference to the treasury contract which can grant minting rights
    address public treasury;
    /// @notice Boolean used to check whether the contract had been reinitialized after an upgrade
    bool public treasuryInitialized;

    // =================================== EVENTS ==================================

    event TreasuryUpdated(address indexed _treasury);
    event MinterToggled(address indexed minter);

    // =================================== ERRORS ==================================

    error BurnAmountExceedsAllowance();
    error InvalidSender();
    error InvalidTreasury();
    error NotGovernor();
    error NotMinter();
    error NotTreasury();
    error TreasuryAlreadyInitialized();

    // ================================= MODIFIERS =================================

    /// @notice Checks to see if it is the `Treasury` calling this contract
    modifier onlyTreasury() {
        if (msg.sender != treasury) revert NotTreasury();
        _;
    }

    /// @notice Checks whether the sender has the minting right
    modifier onlyMinter() {
        if (!isMinter[msg.sender]) revert NotMinter();
        _;
    }

    // ============================= EXTERNAL FUNCTION =============================

    /// @notice Allows anyone to burn stablecoins
    /// @param amount Amount of stablecoins to burn
    /// @dev This function can typically be called if there is a settlement mechanism to burn stablecoins
    function burnStablecoin(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // ========================= MINTER ROLE ONLY FUNCTIONS ========================

    /// @inheritdoc IAgToken
    function burnSelf(uint256 amount, address burner) external onlyMinter {
        _burn(burner, amount);
    }

    /// @inheritdoc IAgToken
    function burnFrom(uint256 amount, address burner, address sender) external onlyMinter {
        if (burner != sender) {
            uint256 currentAllowance = allowance(burner, sender);
            if (currentAllowance < amount) revert BurnAmountExceedsAllowance();
            _approve(burner, sender, currentAllowance - amount);
        }
        _burn(burner, amount);
    }

    /// @inheritdoc IAgToken
    function mint(address account, uint256 amount) external onlyMinter {
        _mint(account, amount);
    }

    // ========================== TREASURY ONLY FUNCTIONS ==========================

    /// @inheritdoc IAgToken
    function addMinter(address minter) external onlyTreasury {
        isMinter[minter] = true;
        emit MinterToggled(minter);
    }

    /// @inheritdoc IAgToken
    function removeMinter(address minter) external {
        if (msg.sender != minter && msg.sender != address(treasury)) revert InvalidSender();
        isMinter[minter] = false;
        emit MinterToggled(minter);
    }

    /// @inheritdoc IAgToken
    function setTreasury(address _treasury) external onlyTreasury {
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }
}

// ============================================================
// FILE: contracts/agToken/AgToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/*
                  *                                                  █                              
                *****                                               ▓▓▓                             
                  *                                               ▓▓▓▓▓▓▓                         
                                   *            ///.           ▓▓▓▓▓▓▓▓▓▓▓▓▓                       
                                 *****        ////////            ▓▓▓▓▓▓▓                          
                                   *       /////////////            ▓▓▓                             
                     ▓▓                  //////////////////          █         ▓▓                   
                   ▓▓  ▓▓             ///////////////////////                ▓▓   ▓▓                
                ▓▓       ▓▓        ////////////////////////////           ▓▓        ▓▓              
              ▓▓            ▓▓    /////////▓▓▓///////▓▓▓/////////       ▓▓             ▓▓            
           ▓▓                 ,////////////////////////////////////// ▓▓                 ▓▓         
        ▓▓                  //////////////////////////////////////////                     ▓▓      
      ▓▓                  //////////////////////▓▓▓▓/////////////////////                          
                       ,////////////////////////////////////////////////////                        
                    .//////////////////////////////////////////////////////////                     
                     .//////////////////////////██.,//////////////////////////█                     
                       .//////////////////////████..,./////////////////////██                       
                        ...////////////////███████.....,.////////////////███                        
                          ,.,////////////████████ ........,///////////████                          
                            .,.,//////█████████      ,.......///////████                            
                               ,..//████████           ........./████                               
                                 ..,██████                .....,███                                 
                                    .██                     ,.,█                                    
                                                                                                    
                                                                                                    
                                                                                                    
               ▓▓            ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓               ▓▓▓▓▓▓▓▓▓▓          
             ▓▓▓▓▓▓          ▓▓▓    ▓▓▓       ▓▓▓               ▓▓               ▓▓   ▓▓▓▓         
           ▓▓▓    ▓▓▓        ▓▓▓    ▓▓▓       ▓▓▓    ▓▓▓        ▓▓               ▓▓▓▓▓             
          ▓▓▓        ▓▓      ▓▓▓    ▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓          
*/

import "../interfaces/IAgToken.sol";
import "../interfaces/ITreasury.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

/// @title AgToken
/// @author Angle Labs, Inc.
/// @notice Base contract for Angle agTokens on Ethereum and on other chains
/// @dev By default, agTokens are ERC-20 tokens with 18 decimals
contract AgToken is IAgToken, ERC20PermitUpgradeable {
    // =========================== PARAMETERS / VARIABLES ==========================

    /// @inheritdoc IAgToken
    mapping(address => bool) public isMinter;
    /// @notice Reference to the treasury contract which can grant minting rights
    address public treasury;

    // =================================== EVENTS ==================================

    event TreasuryUpdated(address indexed _treasury);
    event MinterToggled(address indexed minter);

    // =================================== ERRORS ==================================

    error BurnAmountExceedsAllowance();
    error InvalidSender();
    error InvalidTreasury();
    error NotMinter();
    error NotTreasury();

    // ================================ CONSTRUCTOR ================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    /// @notice Initializes the `AgToken` contract
    function initialize(string memory name_, string memory symbol_, address _treasury) external {
        _initialize(name_, symbol_, _treasury);
    }

    /// @notice Initializes the contract
    function _initialize(string memory name_, string memory symbol_, address _treasury) internal virtual initializer {
        if (address(ITreasury(_treasury).stablecoin()) != address(this)) revert InvalidTreasury();
        __ERC20Permit_init(name_);
        __ERC20_init(name_, symbol_);
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    // ================================= MODIFIERS =================================

    /// @notice Checks to see if it is the `Treasury` calling this contract
    modifier onlyTreasury() {
        if (msg.sender != treasury) revert NotTreasury();
        _;
    }

    /// @notice Checks whether the sender has the minting right
    modifier onlyMinter() {
        if (!isMinter[msg.sender]) revert NotMinter();
        _;
    }

    // ============================= EXTERNAL FUNCTION =============================

    /// @notice Allows anyone to burn stablecoins
    /// @param amount Amount of stablecoins to burn
    /// @dev This function can typically be called if there is a settlement mechanism to burn stablecoins
    function burnStablecoin(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // ========================= MINTER ROLE ONLY FUNCTIONS ========================

    /// @inheritdoc IAgToken
    function burnSelf(uint256 amount, address burner) external onlyMinter {
        _burn(burner, amount);
    }

    /// @inheritdoc IAgToken
    function burnFrom(uint256 amount, address burner, address sender) external onlyMinter {
        if (burner != sender) {
            uint256 currentAllowance = allowance(burner, sender);
            if (currentAllowance < amount) revert BurnAmountExceedsAllowance();
            _approve(burner, sender, currentAllowance - amount);
        }
        _burn(burner, amount);
    }

    /// @inheritdoc IAgToken
    function mint(address account, uint256 amount) external onlyMinter {
        _mint(account, amount);
    }

    // ========================== GOVERNANCE ONLY FUNCTIONS ==========================

    /// @inheritdoc IAgToken
    function addMinter(address minter) external onlyTreasury {
        isMinter[minter] = true;
        emit MinterToggled(minter);
    }

    /// @inheritdoc IAgToken
    function removeMinter(address minter) external {
        if (msg.sender != address(treasury) && msg.sender != minter) revert InvalidSender();
        isMinter[minter] = false;
        emit MinterToggled(minter);
    }

    /// @inheritdoc IAgToken
    function setTreasury(address _treasury) external virtual onlyTreasury {
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }
}

// ============================================================
// FILE: contracts/agToken/AgTokenSideChainMultiBridge.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./AgToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title AgTokenSideChainMultiBridge
/// @author Angle Labs, Inc.
/// @notice Contract for Angle agTokens on other chains than Ethereum mainnet
/// @dev This contract supports bridge tokens having a minting right on the stablecoin (also referred to as the canonical
/// or the native token)
contract AgTokenSideChainMultiBridge is AgToken {
    using SafeERC20 for IERC20;

    /// @notice Base used for fee computation
    uint256 public constant BASE_PARAMS = 1e9;

    // =============================== BRIDGING DATA ===============================

    /// @notice Struct with some data about a specific bridge token
    struct BridgeDetails {
        // Limit on the balance of bridge token held by the contract: it is designed
        // to reduce the exposure of the system to hacks
        uint256 limit;
        // Limit on the hourly volume of token minted through this bridge
        // Technically the limit over a rolling hour is hourlyLimit x2 as hourly limit
        // is enforced only between x:00 and x+1:00
        uint256 hourlyLimit;
        // Fee taken for swapping in and out the token
        uint64 fee;
        // Whether the associated token is allowed or not
        bool allowed;
        // Whether swapping in and out from the associated token is paused or not
        bool paused;
    }

    /// @notice Maps a bridge token to data
    mapping(address => BridgeDetails) public bridges;
    /// @notice List of all bridge tokens
    address[] public bridgeTokensList;
    /// @notice Maps a bridge token to the associated hourly volume
    mapping(address => mapping(uint256 => uint256)) public usage;
    /// @notice Maps an address to whether it is exempt of fees for when it comes to swapping in and out
    mapping(address => uint256) public isFeeExempt;
    /// @notice Limit to the amount of tokens that can be sent from that chain to another chain
    uint256 public chainTotalHourlyLimit;
    /// @notice Usage per hour on that chain. Maps an hourly timestamp to the total volume swapped out on the chain
    mapping(uint256 => uint256) public chainTotalUsage;
    
    uint256[44] private __gapMultiBridge;

    // =================================== EVENTS ==================================

    event BridgeTokenAdded(address indexed bridgeToken, uint256 limit, uint256 hourlyLimit, uint64 fee, bool paused);
    event BridgeTokenToggled(address indexed bridgeToken, bool toggleStatus);
    event BridgeTokenRemoved(address indexed bridgeToken);
    event BridgeTokenFeeUpdated(address indexed bridgeToken, uint64 fee);
    event BridgeTokenLimitUpdated(address indexed bridgeToken, uint256 limit);
    event BridgeTokenHourlyLimitUpdated(address indexed bridgeToken, uint256 hourlyLimit);
    event HourlyLimitUpdated(uint256 hourlyLimit);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event FeeToggled(address indexed theAddress, uint256 toggleStatus);

    // =================================== ERRORS ==================================

    error AssetStillControlledInReserves();
    error HourlyLimitExceeded();
    error InvalidToken();
    error NotGovernor();
    error NotGovernorOrGuardian();
    error TooBigAmount();
    error TooHighParameterValue();
    error ZeroAddress();

    // ================================= MODIFIERS =================================

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!ITreasury(treasury).isGovernor(msg.sender)) revert NotGovernor();
        _;
    }

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    // ===================== EXTERNAL PERMISSIONLESS FUNCTIONS =====================

    /// @notice Returns the list of all supported bridge tokens
    /// @dev Helpful for UIs
    function allBridgeTokens() external view returns (address[] memory) {
        return bridgeTokensList;
    }

    /// @notice Returns the current volume for a bridge, for the current hour
    /// @param bridgeToken Bridge used to mint
    /// @dev Helpful for UIs
    function currentUsage(address bridgeToken) external view returns (uint256) {
        return usage[bridgeToken][block.timestamp / 3600];
    }

    /// @notice Returns the current total volume on the chain for the current hour
    /// @dev Helpful for UIs
    function currentTotalUsage() external view returns (uint256) {
        return chainTotalUsage[block.timestamp / 3600];
    }

    /// @notice Mints the canonical token from a supported bridge token
    /// @param bridgeToken Bridge token to use to mint
    /// @param amount Amount of bridge tokens to send
    /// @param to Address to which the stablecoin should be sent
    /// @return Amount of the canonical stablecoin actually minted
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapIn(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();
        uint256 balance = IERC20(bridgeToken).balanceOf(address(this));
        if (balance + amount > bridgeDetails.limit) {
            // In case someone maliciously sends tokens to this contract
            // Or the limit changes
            if (bridgeDetails.limit > balance) amount = bridgeDetails.limit - balance;
            else {
                amount = 0;
            }
        }

        // Checking requirement on the hourly volume
        uint256 hour = block.timestamp / 3600;
        uint256 hourlyUsage = usage[bridgeToken][hour];
        if (hourlyUsage + amount > bridgeDetails.hourlyLimit) {
            // Edge case when the hourly limit changes
            amount = bridgeDetails.hourlyLimit > hourlyUsage ? bridgeDetails.hourlyLimit - hourlyUsage : 0;
        }
        usage[bridgeToken][hour] = hourlyUsage + amount;

        IERC20(bridgeToken).safeTransferFrom(msg.sender, address(this), amount);
        uint256 canonicalOut = amount;
        // Computing fees
        if (isFeeExempt[msg.sender] == 0) {
            canonicalOut -= (canonicalOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        _mint(to, canonicalOut);
        return canonicalOut;
    }

    /// @notice Burns the canonical token in exchange for a bridge token
    /// @param bridgeToken Bridge token required
    /// @param amount Amount of canonical tokens to burn
    /// @param to Address to which the bridge token should be sent
    /// @return Amount of bridge tokens actually sent back
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapOut(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();

        uint256 hour = block.timestamp / 3600;
        uint256 hourlyUsage = chainTotalUsage[hour] + amount;
        // If the amount being swapped out exceeds the limit, we revert
        // We don't want to change the amount being swapped out.
        // The user can decide to send another tx with the correct amount to reach the limit
        if (hourlyUsage > chainTotalHourlyLimit) revert HourlyLimitExceeded();
        chainTotalUsage[hour] = hourlyUsage;

        _burn(msg.sender, amount);
        uint256 bridgeOut = amount;
        if (isFeeExempt[msg.sender] == 0) {
            bridgeOut -= (bridgeOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        IERC20(bridgeToken).safeTransfer(to, bridgeOut);
        return bridgeOut;
    }

    // ============================ GOVERNANCE FUNCTIONS ===========================

    /// @notice Adds support for a bridge token
    /// @param bridgeToken Bridge token to add: it should be a version of the stablecoin from another bridge
    /// @param limit Limit on the balance of bridge token this contract could hold
    /// @param hourlyLimit Limit on the hourly volume for this bridge
    /// @param paused Whether swapping for this token should be paused or not
    /// @param fee Fee taken upon swapping for or against this token
    function addBridgeToken(
        address bridgeToken,
        uint256 limit,
        uint256 hourlyLimit,
        uint64 fee,
        bool paused
    ) external onlyGovernor {
        if (bridges[bridgeToken].allowed || bridgeToken == address(0)) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        BridgeDetails memory _bridge;
        _bridge.limit = limit;
        _bridge.hourlyLimit = hourlyLimit;
        _bridge.paused = paused;
        _bridge.fee = fee;
        _bridge.allowed = true;
        bridges[bridgeToken] = _bridge;
        bridgeTokensList.push(bridgeToken);
        emit BridgeTokenAdded(bridgeToken, limit, hourlyLimit, fee, paused);
    }

    /// @notice Removes support for a token
    /// @param bridgeToken Address of the bridge token to remove support for
    function removeBridgeToken(address bridgeToken) external onlyGovernor {
        if (IERC20(bridgeToken).balanceOf(address(this)) != 0) revert AssetStillControlledInReserves();
        delete bridges[bridgeToken];
        // Deletion from `bridgeTokensList` loop
        uint256 bridgeTokensListLength = bridgeTokensList.length;
        for (uint256 i; i < bridgeTokensListLength - 1; ++i) {
            if (bridgeTokensList[i] == bridgeToken) {
                // Replace the `bridgeToken` to remove with the last of the list
                bridgeTokensList[i] = bridgeTokensList[bridgeTokensListLength - 1];
                break;
            }
        }
        // Remove last element in array
        bridgeTokensList.pop();
        emit BridgeTokenRemoved(bridgeToken);
    }

    /// @notice Recovers any ERC20 token
    /// @dev Can be used to withdraw bridge tokens for them to be de-bridged on mainnet
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external onlyGovernor {
        IERC20(tokenAddress).safeTransfer(to, amountToRecover);
        emit Recovered(tokenAddress, to, amountToRecover);
    }

    /// @notice Updates the `limit` amount for `bridgeToken`
    function setLimit(address bridgeToken, uint256 limit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].limit = limit;
        emit BridgeTokenLimitUpdated(bridgeToken, limit);
    }

    /// @notice Updates the `hourlyLimit` amount for `bridgeToken`
    function setHourlyLimit(address bridgeToken, uint256 hourlyLimit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].hourlyLimit = hourlyLimit;
        emit BridgeTokenHourlyLimitUpdated(bridgeToken, hourlyLimit);
    }

    /// @notice Updates the `chainTotalHourlyLimit` amount
    function setChainTotalHourlyLimit(uint256 hourlyLimit) external onlyGovernorOrGuardian {
        chainTotalHourlyLimit = hourlyLimit;
        emit HourlyLimitUpdated(hourlyLimit);
    }

    /// @notice Updates the `fee` value for `bridgeToken`
    function setSwapFee(address bridgeToken, uint64 fee) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        bridges[bridgeToken].fee = fee;
        emit BridgeTokenFeeUpdated(bridgeToken, fee);
    }

    /// @notice Pauses or unpauses swapping in and out for a token
    function toggleBridge(address bridgeToken) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bool pausedStatus = bridges[bridgeToken].paused;
        bridges[bridgeToken].paused = !pausedStatus;
        emit BridgeTokenToggled(bridgeToken, !pausedStatus);
    }

    /// @notice Toggles fees for the address `theAddress`
    function toggleFeesForAddress(address theAddress) external onlyGovernorOrGuardian {
        uint256 feeExemptStatus = 1 - isFeeExempt[theAddress];
        isFeeExempt[theAddress] = feeExemptStatus;
        emit FeeToggled(theAddress, feeExemptStatus);
    }
}

// ============================================================
// FILE: contracts/agToken/layerZero/LayerZeroBridge.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "./utils/OFTCore.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-IERC20Permit.sol";

/// @title LayerZeroBridge
/// @author Angle Labs, Inc., forked from https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/token/oft/OFT.sol
/// @notice Contract to be deployed on Ethereum for bridging an AgToken using a bridge intermediate token and LayerZero
contract LayerZeroBridge is OFTCore, PausableUpgradeable {
    /// @notice Name of the contract for indexing purposes
    string public name;

    /// @notice Address of the bridgeable token
    /// @dev Immutable
    IERC20 public canonicalToken;

    /// @notice Maps an address to the amount of token bridged but not received
    mapping(address => uint256) public balanceOf;

    // ================================ CONSTRUCTOR ================================
    /// @notice Initializes the contract
    /// @param _name Name of the token corresponding to this contract
    /// @param _lzEndpoint Layer zero endpoint to pass messages
    /// @param _treasury Address of the treasury contract used for access control
    function initialize(string memory _name, address _lzEndpoint, address _treasury) external initializer {
        __LzAppUpgradeable_init(_lzEndpoint, _treasury);
        name = _name;
        canonicalToken = IERC20(address(ITreasury(_treasury).stablecoin()));
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // ===================== EXTERNAL PERMISSIONLESS FUNCTIONS =====================

    /// @inheritdoc OFTCore
    function sendWithPermit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable override {
        IERC20Permit(address(canonicalToken)).permit(msg.sender, address(this), _amount, deadline, v, r, s);
        send(_dstChainId, _toAddress, _amount, _refundAddress, _zroPaymentAddress, _adapterParams);
    }

    /// @inheritdoc OFTCore
    function withdraw(uint256 amount, address recipient) external override returns (uint256) {
        return _withdraw(amount, msg.sender, recipient);
    }

    /// @notice Withdraws amount of `token` from the contract and sends it to the recipient
    /// @param amount Amount to withdraw
    /// @param recipient Address to withdraw for
    /// @return The amount of canonical token sent
    function withdrawFor(uint256 amount, address recipient) external returns (uint256) {
        return _withdraw(amount, recipient, recipient);
    }

    // ============================= INTERNAL FUNCTIONS ============================

    /// @notice Withdraws `amount` from the balance of the `from` address and sends these tokens to the `to` address
    /// @dev It's important to make sure that `from` is either the `msg.sender` or that `from` and `to` are the same
    /// addresses
    function _withdraw(uint256 amount, address from, address to) internal whenNotPaused returns (uint256) {
        balanceOf[from] -= amount; // Will overflow if the amount is too big
        canonicalToken.transfer(to, amount);
        return amount;
    }

    /// @inheritdoc OFTCore
    function _debitFrom(uint16, bytes memory, uint256 _amount) internal override whenNotPaused returns (uint256) {
        // No need to use safeTransferFrom as we know this implementation reverts on failure
        canonicalToken.transferFrom(msg.sender, address(this), _amount);
        return _amount;
    }

    /// @inheritdoc OFTCore
    function _debitCreditFrom(uint16, bytes memory, uint256 _amount) internal override whenNotPaused returns (uint256) {
        balanceOf[msg.sender] -= _amount;
        return _amount;
    }

    /// @inheritdoc OFTCore
    function _creditTo(uint16, address _toAddress, uint256 _amount) internal override whenNotPaused returns (uint256) {
        // Should never revert as all the LayerZero bridge tokens come from
        // this contract
        uint256 balance = canonicalToken.balanceOf(address(this));
        if (balance < _amount) {
            balanceOf[_toAddress] = _amount - balance;
            if (balance != 0) canonicalToken.transfer(_toAddress, balance);
        } else {
            canonicalToken.transfer(_toAddress, _amount);
        }
        return _amount;
    }

    // =============================== VIEW FUNCTIONS ==============================

    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IOFTCore).interfaceId || super.supportsInterface(interfaceId);
    }

    // ============================ GOVERNANCE FUNCTIONS ===========================

    /// @notice Pauses bridging through the contract
    /// @param pause Future pause status
    function pauseSendTokens(bool pause) external onlyGovernorOrGuardian {
        pause ? _pause() : _unpause();
    }

    /// @notice Decreases the balance of an address
    /// @param amount Amount to withdraw from balance
    /// @param recipient Address to withdraw from
    function sweep(uint256 amount, address recipient) external onlyGovernorOrGuardian {
        balanceOf[recipient] -= amount; // Will overflow if the amount is too big
    }

    uint256[47] private __gap;
}

// ============================================================
// FILE: contracts/agToken/layerZero/LayerZeroBridgeToken.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "./utils/OFTCore.sol";
import "../../interfaces/IAgTokenSideChainMultiBridge.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

/// @title LayerZeroBridgeToken
/// @author Angle Labs, Inc., forked from https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/token/oft/OFT.sol
/// @notice Contract to be deployed on a L2/sidechain for bridging an AgToken using a bridge intermediate token and LayerZero
contract LayerZeroBridgeToken is OFTCore, ERC20Upgradeable, PausableUpgradeable {
    /// @notice Address of the bridgeable token
    /// @dev Immutable
    IAgTokenSideChainMultiBridge public canonicalToken;

    // =================================== ERROR ===================================

    error InvalidAllowance();

    // ================================ CONSTRUCTOR ================================

    /// @notice Initializes the contract
    /// @param _name Name of the token corresponding to this contract
    /// @param _symbol Symbol of the token corresponding to this contract
    /// @param _lzEndpoint Layer zero endpoint to pass messages
    /// @param _treasury Address of the treasury contract used for access control
    /// @param initialSupply Initial supply to mint to the canonical token address
    /// @dev The initial supply corresponds to the initial amount that could be bridged using this OFT
    function initialize(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _treasury,
        uint256 initialSupply
    ) external initializer {
        __ERC20_init_unchained(_name, _symbol);
        __LzAppUpgradeable_init(_lzEndpoint, _treasury);

        canonicalToken = IAgTokenSideChainMultiBridge(address(ITreasury(_treasury).stablecoin()));
        _approve(address(this), address(canonicalToken), type(uint256).max);
        _mint(address(canonicalToken), initialSupply);
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // ===================== EXTERNAL PERMISSIONLESS FUNCTIONS =====================

    /// @inheritdoc OFTCore
    function sendWithPermit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable override {
        canonicalToken.permit(msg.sender, address(this), _amount, deadline, v, r, s);
        send(_dstChainId, _toAddress, _amount, _refundAddress, _zroPaymentAddress, _adapterParams);
    }

    /// @inheritdoc OFTCore
    function withdraw(uint256 amount, address recipient) external override returns (uint256 amountMinted) {
        // Does not check allowances as transfers from `msg.sender`
        _transfer(msg.sender, address(this), amount);
        amountMinted = canonicalToken.swapIn(address(this), amount, recipient);
        uint256 leftover = balanceOf(address(this));
        if (leftover != 0) {
            _transfer(address(this), msg.sender, leftover);
        }
    }

    // ============================= INTERNAL FUNCTIONS ============================

    /// @inheritdoc OFTCore
    function _debitFrom(
        uint16,
        bytes memory,
        uint256 _amount
    ) internal override whenNotPaused returns (uint256 amountSwapped) {
        // No need to use safeTransferFrom as we know this implementation reverts on failure
        canonicalToken.transferFrom(msg.sender, address(this), _amount);

        // Swap canonical for this bridge token. There may be some fees
        amountSwapped = canonicalToken.swapOut(address(this), _amount, address(this));
        _burn(address(this), amountSwapped);
    }

    /// @inheritdoc OFTCore
    function _debitCreditFrom(uint16, bytes memory, uint256 _amount) internal override whenNotPaused returns (uint256) {
        _burn(msg.sender, _amount);
        return _amount;
    }

    /// @inheritdoc OFTCore
    function _creditTo(
        uint16,
        address _toAddress,
        uint256 _amount
    ) internal override whenNotPaused returns (uint256 amountMinted) {
        _mint(address(this), _amount);
        amountMinted = canonicalToken.swapIn(address(this), _amount, _toAddress);
        uint256 leftover = balanceOf(address(this));
        if (leftover != 0) {
            _transfer(address(this), _toAddress, leftover);
        }
    }

    // =============================== VIEW FUNCTIONS ==============================

    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return
            interfaceId == type(IOFT).interfaceId ||
            interfaceId == type(IERC20).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    // ============================ GOVERNANCE FUNCTIONS ===========================

    /// @notice Mints the intermediate contract to the `canonicalToken`
    /// @dev Used to increase the bridging capacity
    function mint(uint256 amount) external onlyGovernorOrGuardian {
        _mint(address(canonicalToken), amount);
    }

    /// @notice Burns the intermediate contract from the `canonicalToken`
    /// @dev Used to decrease the bridging capacity
    function burn(uint256 amount) external onlyGovernorOrGuardian {
        _burn(address(canonicalToken), amount);
    }

    /// @notice Increases allowance of the `canonicalToken`
    function setupAllowance() public onlyGovernorOrGuardian {
        _approve(address(this), address(canonicalToken), type(uint256).max);
    }

    /// @notice Pauses bridging through the contract
    /// @param pause Future pause status
    function pauseSendTokens(bool pause) external onlyGovernorOrGuardian {
        pause ? _pause() : _unpause();
    }

    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/agToken/layerZero/utils/IOFTCore.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/**
 * @dev Interface of the IOFT core standard
 * @dev Forked from https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/token/oft/IOFTCore.sol
 */
interface IOFTCore is IERC165 {
    /// @notice Estimates send token `_tokenId` to (`_dstChainId`, `_toAddress`)
    /// @param _dstChainId L0 defined chain id to send tokens too
    /// @param _toAddress dynamic bytes array which contains the address to whom you are sending tokens to on the dstChain
    /// @param _amount amount of the tokens to transfer
    /// @param _useZro indicates to use zro to pay L0 fees
    /// @param _adapterParams flexible bytes array to indicate messaging adapter services in L0
    function estimateSendFee(
        uint16 _dstChainId,
        bytes calldata _toAddress,
        uint256 _amount,
        bool _useZro,
        bytes calldata _adapterParams
    ) external view returns (uint256 nativeFee, uint256 zroFee);

    /// @notice Sends `_amount` amount of token to (`_dstChainId`, `_toAddress`)
    /// @param _dstChainId the destination chain identifier
    /// @param _toAddress can be any size depending on the `dstChainId`.
    /// @param _amount the quantity of tokens in wei
    /// @param _refundAddress the address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams is a flexible bytes array to indicate messaging adapter services
    function send(
        uint16 _dstChainId,
        bytes calldata _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes calldata _adapterParams
    ) external payable;

    /// @notice Sends `_amount` amount of credit to (`_dstChainId`, `_toAddress`)
    /// @param _dstChainId the destination chain identifier
    /// @param _toAddress can be any size depending on the `dstChainId`.
    /// @param _amount the quantity of credit to send in wei
    /// @param _refundAddress the address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams is a flexible bytes array to indicate messaging adapter services
    function sendCredit(
        uint16 _dstChainId,
        bytes calldata _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes calldata _adapterParams
    ) external payable;

    /// @notice Sends `_amount` amount of token to (`_dstChainId`, `_toAddress`)
    /// @param _dstChainId The destination chain identifier
    /// @param _toAddress Can be any size depending on the `dstChainId`.
    /// @param _amount Quantity of tokens in wei
    /// @param _refundAddress Address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress Set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams Flexible bytes array to indicate messaging adapter services
    /// @param deadline Deadline parameter for the signature to be valid
    /// @dev The `v`, `r`, and `s` parameters are used as signature data
    function sendWithPermit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external payable;

    /// @notice Withdraws amount of canonical token from the `msg.sender` balance and sends it to the recipient
    /// @param amount Amount to withdraw
    /// @param recipient Address to send the canonical token to
    /// @return The amount of canonical token sent
    function withdraw(uint256 amount, address recipient) external returns (uint256);

    /// @dev Emitted when `_amount` tokens are moved from the `_sender` to (`_dstChainId`, `_toAddress`)
    /// `_nonce` is the outbound nonce
    event SendToChain(
        address indexed _sender,
        uint16 indexed _dstChainId,
        bytes indexed _toAddress,
        uint256 _amount,
        uint64 _nonce
    );

    /// @dev Emitted when `_amount` tokens are received from `_srcChainId` into the `_toAddress` on the local chain.
    /// `_nonce` is the inbound nonce.
    event ReceiveFromChain(
        uint16 indexed _srcChainId,
        bytes indexed _srcAddress,
        address indexed _toAddress,
        uint256 _amount,
        uint64 _nonce
    );
}

/// @dev Interface of the OFT standard
interface IOFT is IOFTCore, IERC20 {

}

// ============================================================
// FILE: contracts/agToken/layerZero/utils/NonblockingLzApp.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../../../interfaces/external/layerZero/ILayerZeroReceiver.sol";
import "../../../interfaces/external/layerZero/ILayerZeroUserApplicationConfig.sol";
import "../../../interfaces/external/layerZero/ILayerZeroEndpoint.sol";
import "../../../interfaces/ITreasury.sol";

/// @title NonblockingLzApp
/// @author Angle Labs, Inc., forked from https://github.com/LayerZero-Labs/solidity-examples/
/// @notice Base contract for bridging using LayerZero
abstract contract NonblockingLzApp is Initializable, ILayerZeroReceiver, ILayerZeroUserApplicationConfig {
    /// @notice Layer Zero endpoint
    ILayerZeroEndpoint public lzEndpoint;

    /// @notice Maps chainIds to failed messages to retry them
    mapping(uint16 => mapping(bytes => mapping(uint64 => bytes32))) public failedMessages;

    /// @notice Maps chainIds to their OFT address
    mapping(uint16 => bytes) public trustedRemoteLookup;

    /// @notice Reference to the treasury contract to fetch access control
    address public treasury;

    /// @notice Maps pairs of (`to` chain, `packetType`) to the minimum amount of gas needed on the destination chain
    mapping(uint16 => mapping(uint16 => uint256)) public minDstGasLookup;

    /// @notice For future LayerZero compatibility
    address public precrime;

    // ================================== Events ===================================

    event SetTrustedRemote(uint16 _srcChainId, bytes _srcAddress);
    event MessageFailed(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload);

    // =============================== Errors ================================

    error NotGovernor();
    error NotGovernorOrGuardian();
    error InsufficientGas();
    error InvalidEndpoint();
    error InvalidSource();
    error InvalidCaller();
    error InvalidParams();
    error InvalidPayload();
    error ZeroAddress();

    // ============================= Constructor ===================================

    //solhint-disable-next-line
    function __LzAppUpgradeable_init(address _endpoint, address _treasury) internal {
        if (_endpoint == address(0) || _treasury == address(0)) revert ZeroAddress();
        lzEndpoint = ILayerZeroEndpoint(_endpoint);
        treasury = _treasury;
    }

    // =============================== Modifiers ===================================

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    // ==================== External Permissionless Functions ======================

    /// @notice Receives a message from the LZ endpoint and process it
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function lzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public virtual override {
        // lzReceive must be called by the endpoint for security
        if (msg.sender != address(lzEndpoint)) revert InvalidEndpoint();

        bytes memory trustedRemote = trustedRemoteLookup[_srcChainId];
        // if will still block the message pathway from (srcChainId, srcAddress). should not receive message from untrusted remote.
        if (_srcAddress.length != trustedRemote.length || keccak256(_srcAddress) != keccak256(trustedRemote))
            revert InvalidSource();

        _blockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    /// @notice Retries a message that previously failed and was stored
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function retryMessage(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public payable virtual {
        // assert there is message to retry
        bytes32 payloadHash = failedMessages[_srcChainId][_srcAddress][_nonce];
        if (payloadHash == bytes32(0) || keccak256(_payload) != payloadHash) revert InvalidPayload();
        // clear the stored message
        failedMessages[_srcChainId][_srcAddress][_nonce] = bytes32(0);
        // execute the message. revert if it fails again
        _nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    // ============================= Internal Functions ===================================

    /// @notice Handles message receptions in a non blocking way
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    /// @dev public for the needs of try / catch but effectively internal
    function nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public virtual {
        // only internal transaction
        if (msg.sender != address(this)) revert InvalidCaller();
        _nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    /// @notice Handles message receptions in a non blocking way
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual;

    /// @notice Handles message receptions in a blocking way
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function _blockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal {
        // try-catch all errors/exceptions
        try this.nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload) {
            // do nothing
        } catch {
            // error / exception
            failedMessages[_srcChainId][_srcAddress][_nonce] = keccak256(_payload);
            emit MessageFailed(_srcChainId, _srcAddress, _nonce, _payload);
        }
    }

    /// @notice Sends a message to the LZ endpoint and process it
    /// @param _dstChainId L0 defined chain id to send tokens too
    /// @param _payload Data: recipient address and amount
    /// @param _refundAddress Address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress Set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams Flexible bytes array to indicate messaging adapter services in L0
    function _lzSend(
        uint16 _dstChainId,
        bytes memory _payload,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) internal virtual {
        bytes memory trustedRemote = trustedRemoteLookup[_dstChainId];
        if (trustedRemote.length == 0) revert InvalidSource();
        //solhint-disable-next-line
        lzEndpoint.send{ value: msg.value }(
            _dstChainId,
            trustedRemote,
            _payload,
            _refundAddress,
            _zroPaymentAddress,
            _adapterParams
        );
    }

    /// @notice Checks the gas limit of a given transaction
    function _checkGasLimit(
        uint16 _dstChainId,
        uint16 _type,
        bytes memory _adapterParams,
        uint256 _extraGas
    ) internal view virtual {
        uint256 minGasLimit = minDstGasLookup[_dstChainId][_type] + _extraGas;
        if (minGasLimit == 0 || minGasLimit > _getGasLimit(_adapterParams)) revert InsufficientGas();
    }

    /// @notice Gets the gas limit from the `_adapterParams` parameter
    function _getGasLimit(bytes memory _adapterParams) internal pure virtual returns (uint256 gasLimit) {
        if (_adapterParams.length < 34) revert InvalidParams();
        // solhint-disable-next-line
        assembly {
            gasLimit := mload(add(_adapterParams, 34))
        }
    }

    // ======================= Governance Functions ================================

    /// @notice Sets the corresponding address on an other chain.
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Address on the source chain
    /// @dev Used for both receiving and sending message
    /// @dev There can only be one trusted source per chain
    /// @dev Allows owner to set it multiple times.
    function setTrustedRemote(uint16 _srcChainId, bytes calldata _srcAddress) external onlyGovernorOrGuardian {
        trustedRemoteLookup[_srcChainId] = _srcAddress;
        emit SetTrustedRemote(_srcChainId, _srcAddress);
    }

    /// @notice Fetches the default LZ config
    function getConfig(
        uint16 _version,
        uint16 _chainId,
        address,
        uint256 _configType
    ) external view returns (bytes memory) {
        return lzEndpoint.getConfig(_version, _chainId, address(this), _configType);
    }

    /// @notice Overrides the default LZ config
    function setConfig(
        uint16 _version,
        uint16 _chainId,
        uint256 _configType,
        bytes calldata _config
    ) external override onlyGovernorOrGuardian {
        lzEndpoint.setConfig(_version, _chainId, _configType, _config);
    }

    /// @notice Overrides the default LZ config
    function setSendVersion(uint16 _version) external override onlyGovernorOrGuardian {
        lzEndpoint.setSendVersion(_version);
    }

    /// @notice Overrides the default LZ config
    function setReceiveVersion(uint16 _version) external override onlyGovernorOrGuardian {
        lzEndpoint.setReceiveVersion(_version);
    }

    /// @notice Unpauses the receive functionalities
    function forceResumeReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress
    ) external override onlyGovernorOrGuardian {
        lzEndpoint.forceResumeReceive(_srcChainId, _srcAddress);
    }

    /// @notice Sets the minimum gas parameter for a packet type on a given chain
    function setMinDstGas(uint16 _dstChainId, uint16 _packetType, uint256 _minGas) external onlyGovernorOrGuardian {
        if (_minGas == 0) revert InvalidParams();
        minDstGasLookup[_dstChainId][_packetType] = _minGas;
    }

    /// @notice Sets the precrime variable
    function setPrecrime(address _precrime) external onlyGovernorOrGuardian {
        precrime = _precrime;
    }

    // ======================= View Functions ================================

    /// @notice Checks if the `_srcAddress` corresponds to the trusted source
    function isTrustedRemote(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (bool) {
        bytes memory trustedSource = trustedRemoteLookup[_srcChainId];
        return keccak256(trustedSource) == keccak256(_srcAddress);
    }

    uint256[44] private __gap;
}

// ============================================================
// FILE: contracts/agToken/layerZero/utils/OFTCore.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "./NonblockingLzApp.sol";
import "./IOFTCore.sol";
import "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";

/// @title OFTCore
/// @author Forked from https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/token/oft/OFTCore.sol
/// but with slight modifications from the Angle Labs, Inc. which added return values to the `_creditTo` and `_debitFrom` functions
/// @notice Base contract for bridging using LayerZero
abstract contract OFTCore is NonblockingLzApp, ERC165Upgradeable, IOFTCore {
    /// @notice Amount of additional gas specified
    uint256 public constant EXTRA_GAS = 200000;
    /// @notice Packet type for token transfer
    uint16 public constant PT_SEND = 0;

    /// @notice Whether to use custom parameters in transactions
    uint8 public useCustomAdapterParams;

    // ==================== External Permissionless Functions ======================

    /// @inheritdoc IOFTCore
    function sendWithPermit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable virtual;

    /// @inheritdoc IOFTCore
    function send(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) public payable virtual {
        _checkAdapterParams(_dstChainId, PT_SEND, _adapterParams, EXTRA_GAS);
        _amount = _debitFrom(_dstChainId, _toAddress, _amount);

        bytes memory payload = abi.encode(_toAddress, _amount);
        _lzSend(_dstChainId, payload, _refundAddress, _zroPaymentAddress, _adapterParams);

        uint64 nonce = lzEndpoint.getOutboundNonce(_dstChainId, address(this));
        emit SendToChain(msg.sender, _dstChainId, _toAddress, _amount, nonce);
    }

    /// @inheritdoc IOFTCore
    function sendCredit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) public payable virtual {
        _checkAdapterParams(_dstChainId, PT_SEND, _adapterParams, EXTRA_GAS);
        _amount = _debitCreditFrom(_dstChainId, _toAddress, _amount);

        _send(_dstChainId, _toAddress, _amount, _refundAddress, _zroPaymentAddress, _adapterParams);
    }

    /// @inheritdoc IOFTCore
    function withdraw(uint256 amount, address recipient) external virtual returns (uint256);

    /// @notice Sets whether custom adapter parameters can be used or not
    function setUseCustomAdapterParams(uint8 _useCustomAdapterParams) public virtual onlyGovernorOrGuardian {
        useCustomAdapterParams = _useCustomAdapterParams;
    }

    // =========================== Internal Functions ==============================

    /// @notice Internal function to send `_amount` amount of token to (`_dstChainId`, `_toAddress`)
    /// @param _dstChainId the destination chain identifier
    /// @param _toAddress can be any size depending on the `dstChainId`.
    /// @param _amount the quantity of tokens in wei
    /// @param _refundAddress the address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams is a flexible bytes array to indicate messaging adapter services
    /// @dev Accounting and checks should be performed beforehand
    function _send(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) internal {
        bytes memory payload = abi.encode(_toAddress, _amount);
        _lzSend(_dstChainId, payload, _refundAddress, _zroPaymentAddress, _adapterParams);

        uint64 nonce = lzEndpoint.getOutboundNonce(_dstChainId, address(this));
        emit SendToChain(msg.sender, _dstChainId, _toAddress, _amount, nonce);
    }

    /// @inheritdoc NonblockingLzApp
    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual override {
        // decode and load the toAddress
        (bytes memory toAddressBytes, uint256 amount) = abi.decode(_payload, (bytes, uint256));
        address toAddress;
        //solhint-disable-next-line
        assembly {
            toAddress := mload(add(toAddressBytes, 20))
        }
        amount = _creditTo(_srcChainId, toAddress, amount);

        emit ReceiveFromChain(_srcChainId, _srcAddress, toAddress, amount, _nonce);
    }

    /// @notice Checks the adapter parameters given during the smart contract call
    function _checkAdapterParams(
        uint16 _dstChainId,
        uint16 _pkType,
        bytes memory _adapterParams,
        uint256 _extraGas
    ) internal virtual {
        if (useCustomAdapterParams > 0) _checkGasLimit(_dstChainId, _pkType, _adapterParams, _extraGas);
        else if (_adapterParams.length != 0) revert InvalidParams();
    }

    /// @notice Makes accountability when bridging from this contract using canonical token
    /// @param _dstChainId ChainId of the destination chain - LayerZero standard
    /// @param _toAddress Recipient on the destination chain
    /// @param _amount Amount to bridge
    function _debitFrom(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount
    ) internal virtual returns (uint256);

    /// @notice Makes accountability when bridging from this contract's credit
    /// @param _dstChainId ChainId of the destination chain - LayerZero standard
    /// @param _toAddress Recipient on the destination chain
    /// @param _amount Amount to bridge
    function _debitCreditFrom(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount
    ) internal virtual returns (uint256);

    /// @notice Makes accountability when bridging to this contract
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _toAddress Recipient on this chain
    /// @param _amount Amount to bridge
    function _creditTo(uint16 _srcChainId, address _toAddress, uint256 _amount) internal virtual returns (uint256);

    // ========================== View Functions ===================================

    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC165Upgradeable, IERC165) returns (bool) {
        return interfaceId == type(IOFTCore).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @inheritdoc IOFTCore
    function estimateSendFee(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        bool _useZro,
        bytes memory _adapterParams
    ) public view virtual override returns (uint256 nativeFee, uint256 zroFee) {
        // mock the payload for send()
        bytes memory payload = abi.encode(_toAddress, _amount);
        return lzEndpoint.estimateFees(_dstChainId, address(this), payload, _useZro, _adapterParams);
    }

    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/agToken/nameable/AgEURNameable.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../AgEUR.sol";

/// @title AgEURNameable
/// @author Angle Labs, Inc.
contract AgEURNameable is AgEUR {
    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!ITreasury(treasury).isGovernor(msg.sender)) revert NotGovernor();
        _;
    }

    string internal __name;

    string internal __symbol;

    uint256[48] private __gapNameable;

    /// @inheritdoc ERC20Upgradeable
    function name() public view override returns (string memory) {
        return __name;
    }

    /// @inheritdoc ERC20Upgradeable
    function symbol() public view override returns (string memory) {
        return __symbol;
    }

    /// @notice Updates the name and symbol of the token
    function setNameAndSymbol(string memory newName, string memory newSymbol) external onlyGovernor {
        __name = newName;
        __symbol = newSymbol;
    }
}

// ============================================================
// FILE: contracts/agToken/nameable/AgTokenNameable.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../AgToken.sol";

/// @title AgTokenNameable
/// @author Angle Labs, Inc.
contract AgTokenNameable is AgToken {
    error NotGovernor();

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!ITreasury(treasury).isGovernor(msg.sender)) revert NotGovernor();
        _;
    }
    string internal __name;

    string internal __symbol;

    uint256[48] private __gapNameable;

    /// @inheritdoc ERC20Upgradeable
    function name() public view override returns (string memory) {
        return __name;
    }

    /// @inheritdoc ERC20Upgradeable
    function symbol() public view override returns (string memory) {
        return __symbol;
    }

    /// @notice Updates the name and symbol of the token
    function setNameAndSymbol(string memory newName, string memory newSymbol) external onlyGovernor {
        __name = newName;
        __symbol = newSymbol;
    }
}

// ============================================================
// FILE: contracts/agToken/nameable/AgTokenSideChainMultiBridgeNameable.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../AgTokenSideChainMultiBridge.sol";

/// @title AgTokenSideChainMultiBridgeNameable
/// @author Angle Labs, Inc.
contract AgTokenSideChainMultiBridgeNameable is AgTokenSideChainMultiBridge {
    string internal __name;

    string internal __symbol;

    uint256[48] private __gapNameable;

    /// @inheritdoc ERC20Upgradeable
    function name() public view override returns (string memory) {
        return __name;
    }

    /// @inheritdoc ERC20Upgradeable
    function symbol() public view override returns (string memory) {
        return __symbol;
    }

    /// @notice Updates the name and symbol of the token
    function setNameAndSymbol(string memory newName, string memory newSymbol) external onlyGovernor {
        __name = newName;
        __symbol = newSymbol;
    }
}

// ============================================================
// FILE: contracts/agToken/nameable/TokenPolygonUpgradeableNameable.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../polygon/TokenPolygonUpgradeable.sol";

/// @title TokenPolygonUpgradeableNameable
/// @author Angle Labs, Inc.
contract TokenPolygonUpgradeableNameable is TokenPolygonUpgradeable {
    string internal __name;

    string internal __symbol;

    uint256[48] private __gapNameable;

    /// @inheritdoc ERC20UpgradeableCustom
    function name() public view override returns (string memory) {
        return __name;
    }

    /// @inheritdoc ERC20UpgradeableCustom
    function symbol() public view override returns (string memory) {
        return __symbol;
    }

    /// @notice Updates the name and symbol of the token
    function setNameAndSymbol(string memory newName, string memory newSymbol) external onlyGovernor {
        __name = newName;
        __symbol = newSymbol;
    }
}

// ============================================================
// FILE: contracts/agToken/polygon/TokenPolygonUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "./utils/ERC20UpgradeableCustom.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../../interfaces/IAgToken.sol";
import "../../interfaces/ITreasury.sol";

interface IChildToken {
    function deposit(address user, bytes calldata depositData) external;

    function withdraw(uint256 amount) external;
}

contract TokenPolygonUpgradeable is
    Initializable,
    ERC20UpgradeableCustom,
    AccessControlUpgradeable,
    EIP712Upgradeable,
    IChildToken
{
    bytes32 public constant DEPOSITOR_ROLE = keccak256("DEPOSITOR_ROLE");

    /// @dev Emitted when the child chain manager changes
    event ChildChainManagerAdded(address newAddress);
    event ChildChainManagerRevoked(address oldAddress);

    constructor() initializer {}

    function initialize(
        string memory _name,
        string memory _symbol,
        address childChainManager,
        address guardian
    ) public initializer {
        __ERC20_init(_name, _symbol);
        __AccessControl_init();
        _setupRole(DEFAULT_ADMIN_ROLE, guardian);
        _setupRole(DEPOSITOR_ROLE, childChainManager);
        __EIP712_init(_name, "1");
    }

    /**
     * @notice Called when the bridge has tokens to mint
     * @param user Address to mint the token to
     * @param depositData Encoded amount to mint
     */
    function deposit(address user, bytes calldata depositData) external override {
        require(hasRole(DEPOSITOR_ROLE, msg.sender));
        uint256 amount = abi.decode(depositData, (uint256));
        _mint(user, amount);
    }

    /**
     * @notice Called when user wants to withdraw tokens back to root chain
     * @dev Should burn user's tokens. This transaction will be verified when exiting on root chain
     * @param amount Amount of tokens to withdraw
     */
    function withdraw(uint256 amount) external override {
        _burn(_msgSender(), amount);
    }

    // =============================================================================
    // ======================= New data added for the upgrade ======================
    // =============================================================================

    mapping(address => bool) public isMinter;
    /// @notice Reference to the treasury contract which can grant minting rights
    address public treasury;
    /// @notice Boolean to check whether the contract has been reinitialized after its upgrade
    bool public treasuryInitialized;

    using SafeERC20 for IERC20;

    /// @notice Base used for fee computation
    uint256 public constant BASE_PARAMS = 10 ** 9;

    // =============================== Bridging Data ===============================

    /// @notice Struct with some data about a specific bridge token
    struct BridgeDetails {
        // Limit on the balance of bridge token held by the contract: it is designed
        // to reduce the exposure of the system to hacks
        uint256 limit;
        // Limit on the hourly volume of token minted through this bridge
        // Technically the limit over a rolling hour is hourlyLimit x2 as hourly limit
        // is enforced only between x:00 and x+1:00
        uint256 hourlyLimit;
        // Fee taken for swapping in and out the token
        uint64 fee;
        // Whether the associated token is allowed or not
        bool allowed;
        // Whether swapping in and out from the associated token is paused or not
        bool paused;
    }

    /// @notice Maps a bridge token to data
    mapping(address => BridgeDetails) public bridges;
    /// @notice List of all bridge tokens
    address[] public bridgeTokensList;
    /// @notice Maps a bridge token to the associated hourly volume
    mapping(address => mapping(uint256 => uint256)) public usage;
    /// @notice Maps an address to whether it is exempt of fees for when it comes to swapping in and out
    mapping(address => uint256) public isFeeExempt;
    /// @notice Limit to the amount of tokens that can be sent from that chain to another chain
    uint256 public chainTotalHourlyLimit;
    /// @notice Usage per hour on that chain. Maps an hourly timestamp to the total volume swapped out on the chain
    mapping(uint256 => uint256) public chainTotalUsage;

    uint256[42] private __gap;

    // ================================== Events ===================================

    event BridgeTokenAdded(address indexed bridgeToken, uint256 limit, uint256 hourlyLimit, uint64 fee, bool paused);
    event BridgeTokenToggled(address indexed bridgeToken, bool toggleStatus);
    event BridgeTokenRemoved(address indexed bridgeToken);
    event BridgeTokenFeeUpdated(address indexed bridgeToken, uint64 fee);
    event BridgeTokenLimitUpdated(address indexed bridgeToken, uint256 limit);
    event BridgeTokenHourlyLimitUpdated(address indexed bridgeToken, uint256 hourlyLimit);
    event HourlyLimitUpdated(uint256 hourlyLimit);
    event FeeToggled(address indexed theAddress, uint256 toggleStatus);
    event KeeperToggled(address indexed keeper, bool toggleStatus);
    event MinterToggled(address indexed minter);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event TreasuryUpdated(address indexed _treasury);

    // ================================== Errors ===================================

    error AssetStillControlledInReserves();
    error BurnAmountExceedsAllowance();
    error HourlyLimitExceeded();
    error InvalidSender();
    error InvalidToken();
    error InvalidTreasury();
    error NotGovernor();
    error NotGovernorOrGuardian();
    error NotMinter();
    error NotTreasury();
    error TooBigAmount();
    error TooHighParameterValue();
    error TreasuryAlreadyInitialized();
    error ZeroAddress();

    /// @notice Checks to see if it is the `Treasury` calling this contract
    /// @dev There is no Access Control here, because it can be handled cheaply through this modifier
    modifier onlyTreasury() {
        if (msg.sender != treasury) revert NotTreasury();
        _;
    }

    /// @notice Checks whether the sender has the minting right
    modifier onlyMinter() {
        if (!isMinter[msg.sender]) revert NotMinter();
        _;
    }

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!ITreasury(treasury).isGovernor(msg.sender)) revert NotGovernor();
        _;
    }

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    /// @notice Sets up the treasury contract on Polygon after the upgrade
    /// @param _treasury Address of the treasury contract
    function setUpTreasury(address _treasury) external {
        // Only governor on Polygon
        if (msg.sender != 0xdA2D2f638D6fcbE306236583845e5822554c02EA) revert NotGovernor();
        if (address(ITreasury(_treasury).stablecoin()) != address(this)) revert InvalidTreasury();
        if (treasuryInitialized) revert TreasuryAlreadyInitialized();
        treasury = _treasury;
        treasuryInitialized = true;
        emit TreasuryUpdated(_treasury);
    }

    // =========================== External Function ===============================

    /// @notice Allows anyone to burn agToken without redeeming collateral back
    /// @param amount Amount of stablecoins to burn
    /// @dev This function can typically be called if there is a settlement mechanism to burn stablecoins
    function burnStablecoin(uint256 amount) external {
        _burnCustom(msg.sender, amount);
    }

    // ======================= Minter Role Only Functions ==========================

    function burnSelf(uint256 amount, address burner) external onlyMinter {
        _burnCustom(burner, amount);
    }

    function burnFrom(uint256 amount, address burner, address sender) external onlyMinter {
        _burnFromNoRedeem(amount, burner, sender);
    }

    function mint(address account, uint256 amount) external onlyMinter {
        _mint(account, amount);
    }

    // ======================= Treasury Only Functions =============================

    function addMinter(address minter) external onlyTreasury {
        isMinter[minter] = true;
        emit MinterToggled(minter);
    }

    function removeMinter(address minter) external {
        if (msg.sender != address(treasury) && msg.sender != minter) revert InvalidSender();
        isMinter[minter] = false;
        emit MinterToggled(minter);
    }

    function setTreasury(address _treasury) external onlyTreasury {
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    // ============================ Internal Function ==============================

    /// @notice Internal version of the function `burnFromNoRedeem`
    /// @param amount Amount to burn
    /// @dev It is at the level of this function that allowance checks are performed
    function _burnFromNoRedeem(uint256 amount, address burner, address sender) internal {
        if (burner != sender) {
            uint256 currentAllowance = allowance(burner, sender);
            if (currentAllowance < amount) revert BurnAmountExceedsAllowance();
            _approve(burner, sender, currentAllowance - amount);
        }
        _burnCustom(burner, amount);
    }

    // ==================== External Permissionless Functions ======================

    /// @notice Returns the list of all supported bridge tokens
    /// @dev Helpful for UIs
    function allBridgeTokens() external view returns (address[] memory) {
        return bridgeTokensList;
    }

    /// @notice Returns the current volume for a bridge, for the current hour
    /// @dev Helpful for UIs
    function currentUsage(address bridge) external view returns (uint256) {
        return usage[bridge][block.timestamp / 3600];
    }

    /// @notice Returns the current total volume on the chain for the current hour
    /// @dev Helpful for UIs
    function currentTotalUsage() external view returns (uint256) {
        return chainTotalUsage[block.timestamp / 3600];
    }

    /// @notice Mints the canonical token from a supported bridge token
    /// @param bridgeToken Bridge token to use to mint
    /// @param amount Amount of bridge tokens to send
    /// @param to Address to which the stablecoin should be sent
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapIn(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();
        uint256 balance = IERC20(bridgeToken).balanceOf(address(this));
        if (balance + amount > bridgeDetails.limit) {
            // In case someone maliciously sends tokens to this contract
            // Or the limit changes
            if (bridgeDetails.limit > balance) amount = bridgeDetails.limit - balance;
            else {
                amount = 0;
            }
        }

        // Checking requirement on the hourly volume
        uint256 hour = block.timestamp / 3600;
        uint256 hourlyUsage = usage[bridgeToken][hour] + amount;
        if (hourlyUsage > bridgeDetails.hourlyLimit) {
            // Edge case when the hourly limit changes
            if (bridgeDetails.hourlyLimit > usage[bridgeToken][hour])
                amount = bridgeDetails.hourlyLimit - usage[bridgeToken][hour];
            else {
                amount = 0;
            }
        }
        usage[bridgeToken][hour] += amount;

        IERC20(bridgeToken).safeTransferFrom(msg.sender, address(this), amount);
        uint256 canonicalOut = amount;
        // Computing fees
        if (isFeeExempt[msg.sender] == 0) {
            canonicalOut -= (canonicalOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        _mint(to, canonicalOut);
        return canonicalOut;
    }

    /// @notice Burns the canonical token in exchange for a bridge token
    /// @param bridgeToken Bridge token required
    /// @param amount Amount of canonical tokens to burn
    /// @param to Address to which the bridge token should be sent
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapOut(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();

        uint256 hour = block.timestamp / 3600;
        uint256 hourlyUsage = chainTotalUsage[hour] + amount;
        // If the amount being swapped out exceeds the limit, we revert
        // We don't want to change the amount being swapped out.
        // The user can decide to send another tx with the correct amount to reach the limit
        if (hourlyUsage > chainTotalHourlyLimit) revert HourlyLimitExceeded();
        chainTotalUsage[hour] = hourlyUsage;

        _burnCustom(msg.sender, amount);
        uint256 bridgeOut = amount;
        if (isFeeExempt[msg.sender] == 0) {
            bridgeOut -= (bridgeOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        IERC20(bridgeToken).safeTransfer(to, bridgeOut);
        return bridgeOut;
    }

    // ======================= Governance Functions ================================

    /// @notice Adds support for a bridge token
    /// @param bridgeToken Bridge token to add: it should be a version of the stablecoin from another bridge
    /// @param limit Limit on the balance of bridge token this contract could hold
    /// @param hourlyLimit Limit on the hourly volume for this bridge
    /// @param paused Whether swapping for this token should be paused or not
    /// @param fee Fee taken upon swapping for or against this token
    function addBridgeToken(
        address bridgeToken,
        uint256 limit,
        uint256 hourlyLimit,
        uint64 fee,
        bool paused
    ) external onlyGovernor {
        if (bridges[bridgeToken].allowed || bridgeToken == address(0)) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        BridgeDetails memory _bridge;
        _bridge.limit = limit;
        _bridge.hourlyLimit = hourlyLimit;
        _bridge.paused = paused;
        _bridge.fee = fee;
        _bridge.allowed = true;
        bridges[bridgeToken] = _bridge;
        bridgeTokensList.push(bridgeToken);
        emit BridgeTokenAdded(bridgeToken, limit, hourlyLimit, fee, paused);
    }

    /// @notice Removes support for a token
    /// @param bridgeToken Address of the bridge token to remove support for
    function removeBridgeToken(address bridgeToken) external onlyGovernor {
        if (IERC20(bridgeToken).balanceOf(address(this)) != 0) revert AssetStillControlledInReserves();
        delete bridges[bridgeToken];
        // Deletion from `bridgeTokensList` loop
        uint256 bridgeTokensListLength = bridgeTokensList.length;
        for (uint256 i; i < bridgeTokensListLength - 1; ++i) {
            if (bridgeTokensList[i] == bridgeToken) {
                // Replace the `bridgeToken` to remove with the last of the list
                bridgeTokensList[i] = bridgeTokensList[bridgeTokensListLength - 1];
                break;
            }
        }
        // Remove last element in array
        bridgeTokensList.pop();
        emit BridgeTokenRemoved(bridgeToken);
    }

    /// @notice Recovers any ERC20 token
    /// @dev Can be used to withdraw bridge tokens for them to be de-bridged on mainnet
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external onlyGovernor {
        IERC20(tokenAddress).safeTransfer(to, amountToRecover);
        emit Recovered(tokenAddress, to, amountToRecover);
    }

    /// @notice Updates the `limit` amount for `bridgeToken`
    function setLimit(address bridgeToken, uint256 limit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].limit = limit;
        emit BridgeTokenLimitUpdated(bridgeToken, limit);
    }

    /// @notice Updates the `hourlyLimit` amount for `bridgeToken`
    function setHourlyLimit(address bridgeToken, uint256 hourlyLimit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].hourlyLimit = hourlyLimit;
        emit BridgeTokenHourlyLimitUpdated(bridgeToken, hourlyLimit);
    }

    /// @notice Updates the `chainTotalHourlyLimit` amount
    function setChainTotalHourlyLimit(uint256 hourlyLimit) external onlyGovernorOrGuardian {
        chainTotalHourlyLimit = hourlyLimit;
        emit HourlyLimitUpdated(hourlyLimit);
    }

    /// @notice Updates the `fee` value for `bridgeToken`
    function setSwapFee(address bridgeToken, uint64 fee) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        bridges[bridgeToken].fee = fee;
        emit BridgeTokenFeeUpdated(bridgeToken, fee);
    }

    /// @notice Pauses or unpauses swapping in and out for a token
    function toggleBridge(address bridgeToken) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bool pausedStatus = bridges[bridgeToken].paused;
        bridges[bridgeToken].paused = !pausedStatus;
        emit BridgeTokenToggled(bridgeToken, !pausedStatus);
    }

    /// @notice Toggles fees for the address `theAddress`
    function toggleFeesForAddress(address theAddress) external onlyGovernorOrGuardian {
        uint256 feeExemptStatus = 1 - isFeeExempt[theAddress];
        isFeeExempt[theAddress] = feeExemptStatus;
        emit FeeToggled(theAddress, feeExemptStatus);
    }
}

// ============================================================
// FILE: contracts/agToken/polygon/utils/ERC20UpgradeableCustom.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC20} interface modified by Angle Labs, Inc.
 *
 * This implementation has a custom burn function to avoid having a {Transfer} event to the zero address
 * in some specific burn cases to avoid having Polygon PoS bridge catching this event
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20UpgradeableCustom is Initializable, ContextUpgradeable, IERC20Upgradeable, IERC20MetadataUpgradeable {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    //solhint-disable-next-line
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __Context_init_unchained();
        __ERC20_init_unchained(name_, symbol_);
    }

    //solhint-disable-next-line
    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `recipient` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * Requirements:
     *
     * - `sender` and `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     * - the caller must have allowance for `sender`'s tokens of at least
     * `amount`.
     */
    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);

        uint256 currentAllowance = _allowances[sender][_msgSender()];
        require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");
        unchecked {
            _approve(sender, _msgSender(), currentAllowance - amount);
        }

        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender] + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        uint256 currentAllowance = _allowances[_msgSender()][spender];
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(_msgSender(), spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `sender` to `recipient`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `sender` cannot be the zero address.
     * - `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     */
    function _transfer(address sender, address recipient, uint256 amount) internal virtual {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(sender, recipient, amount);

        uint256 senderBalance = _balances[sender];
        require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[sender] = senderBalance - amount;
        }
        _balances[recipient] += amount;

        emit Transfer(sender, recipient, amount);

        _afterTokenTransfer(sender, recipient, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Contrary to the other `burn` function, the {Transfer} event is not to the zero address
     * but rather to this address: the reason is that not all burn events should be caught up
     * by the PoS bridge
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burnCustom(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(this), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
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
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of `from`'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of `from`'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of `from`'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of `from`'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    uint256[45] private __gap;
}

// ============================================================
// FILE: contracts/coreBorrow/CoreBorrow.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/*
                  *                                                  █                              
                *****                                               ▓▓▓                             
                  *                                               ▓▓▓▓▓▓▓                         
                                   *            ///.           ▓▓▓▓▓▓▓▓▓▓▓▓▓                       
                                 *****        ////////            ▓▓▓▓▓▓▓                          
                                   *       /////////////            ▓▓▓                             
                     ▓▓                  //////////////////          █         ▓▓                   
                   ▓▓  ▓▓             ///////////////////////                ▓▓   ▓▓                
                ▓▓       ▓▓        ////////////////////////////           ▓▓        ▓▓              
              ▓▓            ▓▓    /////////▓▓▓///////▓▓▓/////////       ▓▓             ▓▓            
           ▓▓                 ,////////////////////////////////////// ▓▓                 ▓▓         
        ▓▓                  //////////////////////////////////////////                     ▓▓      
      ▓▓                  //////////////////////▓▓▓▓/////////////////////                          
                       ,////////////////////////////////////////////////////                        
                    .//////////////////////////////////////////////////////////                     
                     .//////////////////////////██.,//////////////////////////█                     
                       .//////////////////////████..,./////////////////////██                       
                        ...////////////////███████.....,.////////////////███                        
                          ,.,////////////████████ ........,///////////████                          
                            .,.,//////█████████      ,.......///////████                            
                               ,..//████████           ........./████                               
                                 ..,██████                .....,███                                 
                                    .██                     ,.,█                                    
                                                                                                    
                                                                                                    
                                                                                                    
               ▓▓            ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓               ▓▓▓▓▓▓▓▓▓▓          
             ▓▓▓▓▓▓          ▓▓▓    ▓▓▓       ▓▓▓               ▓▓               ▓▓   ▓▓▓▓         
           ▓▓▓    ▓▓▓        ▓▓▓    ▓▓▓       ▓▓▓    ▓▓▓        ▓▓               ▓▓▓▓▓             
          ▓▓▓        ▓▓      ▓▓▓    ▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓          
*/

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "../interfaces/ICoreBorrow.sol";
import "../interfaces/IFlashAngle.sol";
import "../interfaces/ITreasury.sol";

/// @title CoreBorrow
/// @author Angle Labs, Inc.
/// @notice Core contract of the borrowing module. This contract handles the access control across all contracts
/// (it is read by all treasury contracts), and manages the `flashLoanModule`. It has no minting rights over the
/// stablecoin contracts
contract CoreBorrow is ICoreBorrow, Initializable, AccessControlEnumerableUpgradeable {
    /// @notice Role for guardians
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");
    /// @notice Role for governors
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    /// @notice Role for treasury contract
    bytes32 public constant FLASHLOANER_TREASURY_ROLE = keccak256("FLASHLOANER_TREASURY_ROLE");

    // ============================= Reference =====================================

    /// @notice Reference to the `flashLoanModule` with minting rights over the different stablecoins of the protocol
    address public flashLoanModule;

    // =============================== Events ======================================

    event FlashLoanModuleUpdated(address indexed _flashloanModule);
    event CoreUpdated(address indexed _core);

    // =============================== Errors ======================================

    error InvalidCore();
    error IncompatibleGovernorAndGuardian();
    error NotEnoughGovernorsLeft();
    error ZeroAddress();

    /// @notice Initializes the `CoreBorrow` contract and the access control of the borrowing module
    /// @param governor Address of the governor of the Angle Protocol
    /// @param guardian Guardian address of the protocol
    function initialize(address governor, address guardian) public initializer {
        if (governor == address(0) || guardian == address(0)) revert ZeroAddress();
        if (governor == guardian) revert IncompatibleGovernorAndGuardian();
        _setupRole(GOVERNOR_ROLE, governor);
        _setupRole(GUARDIAN_ROLE, guardian);
        _setupRole(GUARDIAN_ROLE, governor);
        _setRoleAdmin(GUARDIAN_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(FLASHLOANER_TREASURY_ROLE, GOVERNOR_ROLE);
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // =========================== View Functions ==================================

    /// @inheritdoc ICoreBorrow
    function isFlashLoanerTreasury(address treasury) external view returns (bool) {
        return hasRole(FLASHLOANER_TREASURY_ROLE, treasury);
    }

    /// @inheritdoc ICoreBorrow
    function isGovernor(address admin) external view returns (bool) {
        return hasRole(GOVERNOR_ROLE, admin);
    }

    /// @inheritdoc ICoreBorrow
    function isGovernorOrGuardian(address admin) external view returns (bool) {
        return hasRole(GUARDIAN_ROLE, admin);
    }

    // =========================== Governor Functions ==============================

    /// @notice Grants the `FLASHLOANER_TREASURY_ROLE` to a `treasury` contract
    /// @param treasury Contract to grant the role to
    /// @dev This function can be used to allow flash loans on a stablecoin of the protocol
    function addFlashLoanerTreasuryRole(address treasury) external {
        grantRole(FLASHLOANER_TREASURY_ROLE, treasury);
        address _flashLoanModule = flashLoanModule;
        if (_flashLoanModule != address(0)) {
            // This call will revert if `treasury` is the zero address or if it is not linked
            // to this `CoreBorrow` contract
            ITreasury(treasury).setFlashLoanModule(_flashLoanModule);
            IFlashAngle(_flashLoanModule).addStablecoinSupport(treasury);
        }
    }

    /// @notice Adds a governor in the protocol
    /// @param governor Address to grant the role to
    /// @dev It is necessary to call this function to grant a governor role to make sure
    /// all governors also have the guardian role
    function addGovernor(address governor) external {
        grantRole(GOVERNOR_ROLE, governor);
        grantRole(GUARDIAN_ROLE, governor);
    }

    /// @notice Revokes the flash loan ability for a stablecoin
    /// @param treasury Treasury address associated with the stablecoin for which flash loans
    /// should no longer be available
    function removeFlashLoanerTreasuryRole(address treasury) external {
        revokeRole(FLASHLOANER_TREASURY_ROLE, treasury);
        ITreasury(treasury).setFlashLoanModule(address(0));
        address _flashLoanModule = flashLoanModule;
        if (_flashLoanModule != address(0)) {
            IFlashAngle(flashLoanModule).removeStablecoinSupport(treasury);
        }
    }

    /// @notice Revokes a governor from the protocol
    /// @param governor Address to remove the role to
    /// @dev It is necessary to call this function to remove a governor role to make sure
    /// the address also loses its guardian role
    function removeGovernor(address governor) external {
        if (getRoleMemberCount(GOVERNOR_ROLE) <= 1) revert NotEnoughGovernorsLeft();
        revokeRole(GUARDIAN_ROLE, governor);
        revokeRole(GOVERNOR_ROLE, governor);
    }

    /// @notice Changes the `flashLoanModule` of the protocol
    /// @param _flashLoanModule Address of the new flash loan module
    function setFlashLoanModule(address _flashLoanModule) external onlyRole(GOVERNOR_ROLE) {
        if (_flashLoanModule != address(0)) {
            if (address(IFlashAngle(_flashLoanModule).core()) != address(this)) revert InvalidCore();
        }
        uint256 count = getRoleMemberCount(FLASHLOANER_TREASURY_ROLE);
        for (uint256 i; i < count; ++i) {
            ITreasury(getRoleMember(FLASHLOANER_TREASURY_ROLE, i)).setFlashLoanModule(_flashLoanModule);
        }
        flashLoanModule = _flashLoanModule;
        emit FlashLoanModuleUpdated(_flashLoanModule);
    }

    /// @notice Changes the core contract of the protocol
    /// @param _core New core contract
    /// @dev This function verifies that all governors of the current core contract are also governors
    /// of the new core contract. It also notifies the `flashLoanModule` of the change.
    /// @dev Governance wishing to change the core contract should also make sure to call `setCore`
    /// in the different treasury contracts
    function setCore(ICoreBorrow _core) external onlyRole(GOVERNOR_ROLE) {
        uint256 count = getRoleMemberCount(GOVERNOR_ROLE);
        bool success;
        for (uint256 i; i < count; ++i) {
            success = _core.isGovernor(getRoleMember(GOVERNOR_ROLE, i));
            if (!success) break;
        }
        if (!success) revert InvalidCore();
        address _flashLoanModule = flashLoanModule;
        if (_flashLoanModule != address(0)) IFlashAngle(_flashLoanModule).setCore(address(_core));
        emit CoreUpdated(address(_core));
    }
}

// ============================================================
// FILE: contracts/deprecated/AgTokenIntermediateUpgrade.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/IAgToken.sol";
import "../interfaces/coreModule/IStableMaster.sol";
// OpenZeppelin may update its version of the ERC20PermitUpgradeable token
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

/// @title AgTokenIntermediateUpgrade
/// @author Angle Labs, Inc.
/// @notice Base contract for agToken, that is to say Angle's stablecoins
/// @dev This contract is used to create and handle the stablecoins of Angle protocol
/// @dev It is still possible for any address to burn its agTokens without redeeming collateral in exchange
/// @dev This contract is the upgraded version of the AgToken that was first deployed on Ethereum mainnet and is used to
/// add other minters as needed by AMOs
contract AgTokenIntermediateUpgrade is ERC20PermitUpgradeable {
    // ========================= References to other contracts =====================

    /// @notice Reference to the `StableMaster` contract associated to this `AgToken`
    address public stableMaster;

    // ============================= Constructor ===================================

    /// @notice Initializes the `AgToken` contract
    /// @param name_ Name of the token
    /// @param symbol_ Symbol of the token
    /// @param stableMaster_ Reference to the `StableMaster` contract associated to this agToken
    /// @dev By default, agTokens are ERC-20 tokens with 18 decimals
    function initialize(string memory name_, string memory symbol_, address stableMaster_) external initializer {
        __ERC20Permit_init(name_);
        __ERC20_init(name_, symbol_);
        require(stableMaster_ != address(0), "0");
        stableMaster = stableMaster_;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // ======= Added Parameters and Variables from the first implementation ========

    /// @notice Checks whether an address has the right to mint agTokens
    mapping(address => bool) public isMinter;

    // =============================== Added Events ================================

    event MinterToggled(address indexed minter);

    // =============================== Setup Function ==============================

    /// @notice Sets up the minter role and gives it to the governor
    /// @dev This function just has to be called once
    function setUpMinter() external {
        address governor = 0xdC4e6DFe07EFCa50a197DF15D9200883eF4Eb1c8;
        require(msg.sender == governor);
        isMinter[governor] = true;
        emit MinterToggled(governor);
    }

    // =============================== Modifiers ===================================

    /// @notice Checks whether the sender has the minting right
    modifier onlyMinter() {
        require(isMinter[msg.sender] || msg.sender == stableMaster, "35");
        _;
    }

    // ========================= External Functions ================================
    // The following functions allow anyone to burn stablecoins without redeeming collateral
    // in exchange for that

    /// @notice Destroys `amount` token from the caller without giving collateral back
    /// @param amount Amount to burn
    /// @param poolManager Reference to the `PoolManager` contract for which the `stocksUsers` will
    /// need to be updated
    /// @dev When calling this function, people should specify the `poolManager` for which they want to decrease
    /// the `stocksUsers`: this is a way for the protocol to maintain healthy accounting variables
    function burnNoRedeem(uint256 amount, address poolManager) external {
        _burn(msg.sender, amount);
        IStableMaster(stableMaster).updateStocksUsers(amount, poolManager);
    }

    /// @notice Burns `amount` of agToken on behalf of another account without redeeming collateral back
    /// @param account Account to burn on behalf of
    /// @param amount Amount to burn
    /// @param poolManager Reference to the `PoolManager` contract for which the `stocksUsers` will need to be updated
    function burnFromNoRedeem(address account, uint256 amount, address poolManager) external {
        _burnFromNoRedeem(amount, account, msg.sender);
        IStableMaster(stableMaster).updateStocksUsers(amount, poolManager);
    }

    // ======================= Minter Role Only Functions ==========================

    /// @notice Burns `amount` tokens from a `burner` address
    /// @param amount Amount of tokens to burn
    /// @param burner Address to burn from
    /// @dev This method is to be called by a contract with a minter right on the AgToken after being
    /// requested to do so by an address willing to burn tokens from its address
    function burnSelf(uint256 amount, address burner) external onlyMinter {
        _burn(burner, amount);
    }

    /// @notice Burns `amount` tokens from a `burner` address after being asked to by `sender`
    /// @param amount Amount of tokens to burn
    /// @param burner Address to burn from
    /// @param sender Address which requested the burn from `burner`
    /// @dev This method is to be called by a contract with the minter right after being requested
    /// to do so by a `sender` address willing to burn tokens from another `burner` address
    /// @dev The method checks the allowance between the `sender` and the `burner`
    function burnFrom(uint256 amount, address burner, address sender) external onlyMinter {
        _burnFromNoRedeem(amount, burner, sender);
    }

    /// @notice Lets the `StableMaster` contract or another whitelisted contract mint agTokens
    /// @param account Address to mint to
    /// @param amount Amount to mint
    /// @dev The contracts allowed to issue agTokens are the `StableMaster` contract, `VaultManager` contracts
    /// associated to this stablecoin as well as the flash loan module (if activated) and potentially contracts
    /// whitelisted by governance
    function mint(address account, uint256 amount) external onlyMinter {
        _mint(account, amount);
    }

    // ======================= Minter Only Functions ===============================

    /// @notice Adds a minter in the contract
    /// @param minter Minter address to add
    function addMinter(address minter) external onlyMinter {
        isMinter[minter] = true;
        emit MinterToggled(minter);
    }

    /// @notice Removes a minter from the contract
    /// @param minter Minter address to remove
    /// @dev This function can at the moment only be called by a minter wishing to revoke itself
    function removeMinter(address minter) external {
        require(msg.sender == minter && isMinter[msg.sender], "36");
        isMinter[minter] = false;
        emit MinterToggled(minter);
    }

    // ============================ Internal Function ==============================

    /// @notice Internal version of the function `burnFromNoRedeem`
    /// @param amount Amount to burn
    /// @dev It is at the level of this function that allowance checks are performed
    function _burnFromNoRedeem(uint256 amount, address burner, address sender) internal {
        if (burner != sender) {
            uint256 currentAllowance = allowance(burner, sender);
            require(currentAllowance >= amount, "23");
            _approve(burner, sender, currentAllowance - amount);
        }
        _burn(burner, amount);
    }
}

// ============================================================
// FILE: contracts/deprecated/layerZero/OldLayerZeroBridgeToken.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "./OldOFTCore.sol";
import "../../interfaces/IAgTokenSideChainMultiBridge.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

/// @title LayerZeroBridgeToken
/// @author Angle Labs, Inc., forked from https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/token/oft/OFT.sol
/// @notice Contract to be deployed on a L2/sidechain for bridging an AgToken using a bridge intermediate token and LayerZero
contract OldLayerZeroBridgeToken is OldOFTCore, ERC20Upgradeable, PausableUpgradeable {
    /// @notice Address of the bridgeable token
    /// @dev Immutable
    IAgTokenSideChainMultiBridge public canonicalToken;

    // =============================== Errors ================================

    error InvalidAllowance();

    // ============================= Constructor ===================================

    /// @notice Initializes the contract
    /// @param _name Name of the token corresponding to this contract
    /// @param _symbol Symbol of the token corresponding to this contract
    /// @param _lzEndpoint Layer zero endpoint to pass messages
    /// @param _treasury Address of the treasury contract used for access control
    /// @param initialSupply Initial supply to mint to the canonical token address
    /// @dev The initial supply corresponds to the initial amount that could be bridged using this OFT
    function initialize(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _treasury,
        uint256 initialSupply
    ) external initializer {
        __ERC20_init_unchained(_name, _symbol);
        __LzAppUpgradeable_init(_lzEndpoint, _treasury);

        canonicalToken = IAgTokenSideChainMultiBridge(address(ITreasury(_treasury).stablecoin()));
        _approve(address(this), address(canonicalToken), type(uint256).max);
        _mint(address(canonicalToken), initialSupply);
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // ==================== External Permissionless Functions ======================

    function sendWithPermit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable override {
        canonicalToken.permit(msg.sender, address(this), _amount, deadline, v, r, s);
        send(_dstChainId, _toAddress, _amount, _refundAddress, _zroPaymentAddress, _adapterParams);
    }

    function withdraw(uint256 amount, address recipient) external override returns (uint256 amountMinted) {
        // Does not check allowances as transfers from `msg.sender`
        _transfer(msg.sender, address(this), amount);
        amountMinted = canonicalToken.swapIn(address(this), amount, recipient);
        uint256 leftover = balanceOf(address(this));
        if (leftover != 0) {
            _transfer(address(this), msg.sender, leftover);
        }
    }

    // ============================= Internal Functions ===================================

    function _debitFrom(
        uint16,
        bytes memory,
        uint256 _amount
    ) internal override whenNotPaused returns (uint256 amountSwapped) {
        // No need to use safeTransferFrom as we know this implementation reverts on failure
        canonicalToken.transferFrom(msg.sender, address(this), _amount);

        // Swap canonical for this bridge token. There may be some fees
        amountSwapped = canonicalToken.swapOut(address(this), _amount, address(this));
        _burn(address(this), amountSwapped);
    }

    function _debitCreditFrom(uint16, bytes memory, uint256 _amount) internal override whenNotPaused returns (uint256) {
        _burn(msg.sender, _amount);
        return _amount;
    }

    function _creditTo(
        uint16,
        address _toAddress,
        uint256 _amount
    ) internal override whenNotPaused returns (uint256 amountMinted) {
        _mint(address(this), _amount);
        amountMinted = canonicalToken.swapIn(address(this), _amount, _toAddress);
        uint256 leftover = balanceOf(address(this));
        if (leftover != 0) {
            _transfer(address(this), _toAddress, leftover);
        }
    }

    // ======================= View Functions ================================

    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return
            interfaceId == type(IOFT).interfaceId ||
            interfaceId == type(IERC20).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    // ======================= Governance Functions ================================

    /// @notice Mints the intermediate contract to the `canonicalToken`
    /// @dev Used to increase the bridging capacity
    function mint(uint256 amount) external onlyGovernorOrGuardian {
        _mint(address(canonicalToken), amount);
    }

    /// @notice Burns the intermediate contract from the `canonicalToken`
    /// @dev Used to decrease the bridging capacity
    function burn(uint256 amount) external onlyGovernorOrGuardian {
        _burn(address(canonicalToken), amount);
    }

    /// @notice Increases allowance of the `canonicalToken`
    function setupAllowance() public onlyGovernorOrGuardian {
        _approve(address(this), address(canonicalToken), type(uint256).max);
    }

    /// @notice Pauses bridging through the contract
    /// @param pause Future pause status
    function pauseSendTokens(bool pause) external onlyGovernorOrGuardian {
        pause ? _pause() : _unpause();
    }

    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/deprecated/layerZero/OldNonblockingLzApp.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../../interfaces/external/layerZero/ILayerZeroReceiver.sol";
import "../../interfaces/external/layerZero/ILayerZeroUserApplicationConfig.sol";
import "../../interfaces/external/layerZero/ILayerZeroEndpoint.sol";
import "../../interfaces/ITreasury.sol";

/// @title OldNonblockingLzApp
/// @author Angle Labs, Inc., forked from https://github.com/LayerZero-Labs/solidity-examples/
/// @notice Base contract for bridging using LayerZero
abstract contract OldNonblockingLzApp is Initializable, ILayerZeroReceiver, ILayerZeroUserApplicationConfig {
    /// @notice Layer Zero endpoint
    ILayerZeroEndpoint public lzEndpoint;

    /// @notice Maps chainIds to failed messages to retry them
    mapping(uint16 => mapping(bytes => mapping(uint64 => bytes32))) public failedMessages;

    /// @notice Maps chainIds to their OFT address
    mapping(uint16 => bytes) public trustedRemoteLookup;

    /// @notice Reference to the treasury contract to fetch access control
    address public treasury;

    // ================================== Events ===================================

    event SetTrustedRemote(uint16 _srcChainId, bytes _srcAddress);
    event MessageFailed(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload);

    // =============================== Errors ================================

    error NotGovernor();
    error NotGovernorOrGuardian();
    error InsufficientGas();
    error InvalidEndpoint();
    error InvalidSource();
    error InvalidCaller();
    error InvalidParams();
    error InvalidPayload();
    error ZeroAddress();

    // ============================= Constructor ===================================

    //solhint-disable-next-line
    function __LzAppUpgradeable_init(address _endpoint, address _treasury) internal {
        if (_endpoint == address(0) || _treasury == address(0)) revert ZeroAddress();
        lzEndpoint = ILayerZeroEndpoint(_endpoint);
        treasury = _treasury;
    }

    // =============================== Modifiers ===================================

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    // ==================== External Permissionless Functions ======================

    /// @notice Receives a message from the LZ endpoint and process it
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function lzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public virtual override {
        // lzReceive must be called by the endpoint for security
        if (msg.sender != address(lzEndpoint)) revert InvalidEndpoint();

        bytes memory trustedRemote = trustedRemoteLookup[_srcChainId];
        // if will still block the message pathway from (srcChainId, srcAddress). should not receive message from untrusted remote.
        if (_srcAddress.length != trustedRemote.length || keccak256(_srcAddress) != keccak256(trustedRemote))
            revert InvalidSource();

        _blockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    /// @notice Retries a message that previously failed and was stored
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function retryMessage(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public payable virtual {
        // assert there is message to retry
        bytes32 payloadHash = failedMessages[_srcChainId][_srcAddress][_nonce];
        if (payloadHash == bytes32(0) || keccak256(_payload) != payloadHash) revert InvalidPayload();
        // clear the stored message
        failedMessages[_srcChainId][_srcAddress][_nonce] = bytes32(0);
        // execute the message. revert if it fails again
        _nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    // ============================= Internal Functions ===================================

    /// @notice Handles message receptions in a non blocking way
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    /// @dev public for the needs of try / catch but effectively internal
    function nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public virtual {
        // only internal transaction
        if (msg.sender != address(this)) revert InvalidCaller();
        _nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    /// @notice Handles message receptions in a non blocking way
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual;

    /// @notice Handles message receptions in a blocking way
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Sender of the source chain
    /// @param _nonce Nounce of the message
    /// @param _payload Data: recipient address and amount
    function _blockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal {
        // try-catch all errors/exceptions
        try this.nonblockingLzReceive(_srcChainId, _srcAddress, _nonce, _payload) {
            // do nothing
        } catch {
            // error / exception
            failedMessages[_srcChainId][_srcAddress][_nonce] = keccak256(_payload);
            emit MessageFailed(_srcChainId, _srcAddress, _nonce, _payload);
        }
    }

    /// @notice Sends a message to the LZ endpoint and process it
    /// @param _dstChainId L0 defined chain id to send tokens too
    /// @param _payload Data: recipient address and amount
    /// @param _refundAddress Address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress Set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams Flexible bytes array to indicate messaging adapter services in L0
    function _lzSend(
        uint16 _dstChainId,
        bytes memory _payload,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) internal virtual {
        bytes memory trustedRemote = trustedRemoteLookup[_dstChainId];
        if (trustedRemote.length == 0) revert InvalidSource();
        //solhint-disable-next-line
        lzEndpoint.send{ value: msg.value }(
            _dstChainId,
            trustedRemote,
            _payload,
            _refundAddress,
            _zroPaymentAddress,
            _adapterParams
        );
    }

    // ======================= Governance Functions ================================

    /// @notice Sets the corresponding address on an other chain.
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _srcAddress Address on the source chain
    /// @dev Used for both receiving and sending message
    /// @dev There can only be one trusted source per chain
    /// @dev Allows owner to set it multiple times.
    function setTrustedRemote(uint16 _srcChainId, bytes calldata _srcAddress) external onlyGovernorOrGuardian {
        trustedRemoteLookup[_srcChainId] = _srcAddress;
        emit SetTrustedRemote(_srcChainId, _srcAddress);
    }

    /// @notice Fetches the default LZ config
    function getConfig(
        uint16 _version,
        uint16 _chainId,
        address,
        uint256 _configType
    ) external view returns (bytes memory) {
        return lzEndpoint.getConfig(_version, _chainId, address(this), _configType);
    }

    /// @notice Overrides the default LZ config
    function setConfig(
        uint16 _version,
        uint16 _chainId,
        uint256 _configType,
        bytes calldata _config
    ) external override onlyGovernorOrGuardian {
        lzEndpoint.setConfig(_version, _chainId, _configType, _config);
    }

    /// @notice Overrides the default LZ config
    function setSendVersion(uint16 _version) external override onlyGovernorOrGuardian {
        lzEndpoint.setSendVersion(_version);
    }

    /// @notice Overrides the default LZ config
    function setReceiveVersion(uint16 _version) external override onlyGovernorOrGuardian {
        lzEndpoint.setReceiveVersion(_version);
    }

    /// @notice Unpauses the receive functionalities
    function forceResumeReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress
    ) external override onlyGovernorOrGuardian {
        lzEndpoint.forceResumeReceive(_srcChainId, _srcAddress);
    }

    // ======================= View Functions ================================

    /// @notice Checks if the `_srcAddress` corresponds to the trusted source
    function isTrustedRemote(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (bool) {
        bytes memory trustedSource = trustedRemoteLookup[_srcChainId];
        return keccak256(trustedSource) == keccak256(_srcAddress);
    }

    uint256[46] private __gap;
}

// ============================================================
// FILE: contracts/deprecated/layerZero/OldOFTCore.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "./OldNonblockingLzApp.sol";
import "../../agToken/layerZero/utils/IOFTCore.sol";
import "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";

/// @title OFTCore
/// @author Forked from https://github.com/LayerZero-Labs/solidity-examples/blob/main/contracts/token/oft/OFTCore.sol
/// but with slight modifications from the Angle Labs, Inc. which added return values to the `_creditTo` and `_debitFrom` functions
/// @notice Base contract for bridging using LayerZero
abstract contract OldOFTCore is OldNonblockingLzApp, ERC165Upgradeable, IOFTCore {
    // ==================== External Permissionless Functions ======================

    /// @inheritdoc IOFTCore
    function sendWithPermit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public payable virtual;

    /// @inheritdoc IOFTCore
    function send(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) public payable virtual {
        _amount = _debitFrom(_dstChainId, _toAddress, _amount);

        bytes memory payload = abi.encode(_toAddress, _amount);
        _lzSend(_dstChainId, payload, _refundAddress, _zroPaymentAddress, _adapterParams);

        uint64 nonce = lzEndpoint.getOutboundNonce(_dstChainId, address(this));
        emit SendToChain(msg.sender, _dstChainId, _toAddress, _amount, nonce);
    }

    /// @inheritdoc IOFTCore
    function sendCredit(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) public payable virtual {
        _amount = _debitCreditFrom(_dstChainId, _toAddress, _amount);

        _send(_dstChainId, _toAddress, _amount, _refundAddress, _zroPaymentAddress, _adapterParams);
    }

    /// @inheritdoc IOFTCore
    function withdraw(uint256 amount, address recipient) external virtual returns (uint256);

    // =========================== Internal Functions ==============================

    /// @notice Internal function to send `_amount` amount of token to (`_dstChainId`, `_toAddress`)
    /// @param _dstChainId the destination chain identifier
    /// @param _toAddress can be any size depending on the `dstChainId`.
    /// @param _amount the quantity of tokens in wei
    /// @param _refundAddress the address LayerZero refunds if too much message fee is sent
    /// @param _zroPaymentAddress set to address(0x0) if not paying in ZRO (LayerZero Token)
    /// @param _adapterParams is a flexible bytes array to indicate messaging adapter services
    /// @dev Accounting and checks should be performed beforehand
    function _send(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes memory _adapterParams
    ) internal {
        bytes memory payload = abi.encode(_toAddress, _amount);
        _lzSend(_dstChainId, payload, _refundAddress, _zroPaymentAddress, _adapterParams);

        uint64 nonce = lzEndpoint.getOutboundNonce(_dstChainId, address(this));
        emit SendToChain(msg.sender, _dstChainId, _toAddress, _amount, nonce);
    }

    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual override {
        // decode and load the toAddress
        (bytes memory toAddressBytes, uint256 amount) = abi.decode(_payload, (bytes, uint256));
        address toAddress;
        //solhint-disable-next-line
        assembly {
            toAddress := mload(add(toAddressBytes, 20))
        }
        amount = _creditTo(_srcChainId, toAddress, amount);

        emit ReceiveFromChain(_srcChainId, _srcAddress, toAddress, amount, _nonce);
    }

    /// @notice Makes accountability when bridging from this contract using canonical token
    /// @param _dstChainId ChainId of the destination chain - LayerZero standard
    /// @param _toAddress Recipient on the destination chain
    /// @param _amount Amount to bridge
    function _debitFrom(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount
    ) internal virtual returns (uint256);

    /// @notice Makes accountability when bridging from this contract's credit
    /// @param _dstChainId ChainId of the destination chain - LayerZero standard
    /// @param _toAddress Recipient on the destination chain
    /// @param _amount Amount to bridge
    function _debitCreditFrom(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount
    ) internal virtual returns (uint256);

    /// @notice Makes accountability when bridging to this contract
    /// @param _srcChainId ChainId of the source chain - LayerZero standard
    /// @param _toAddress Recipient on this chain
    /// @param _amount Amount to bridge
    function _creditTo(uint16 _srcChainId, address _toAddress, uint256 _amount) internal virtual returns (uint256);

    // ========================== View Functions ===================================

    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC165Upgradeable, IERC165) returns (bool) {
        return interfaceId == type(IOFTCore).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @inheritdoc IOFTCore
    function estimateSendFee(
        uint16 _dstChainId,
        bytes memory _toAddress,
        uint256 _amount,
        bool _useZro,
        bytes memory _adapterParams
    ) public view virtual override returns (uint256 nativeFee, uint256 zroFee) {
        // mock the payload for send()
        bytes memory payload = abi.encode(_toAddress, _amount);
        return lzEndpoint.estimateFees(_dstChainId, address(this), payload, _useZro, _adapterParams);
    }

    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/deprecated/OldAgEUR.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/IAgToken.sol";
import "../interfaces/coreModule/IStableMaster.sol";
import "../interfaces/ITreasury.sol";
// OpenZeppelin may update its version of the ERC20PermitUpgradeable token
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

/// @title AgToken
/// @author Angle Labs, Inc.
/// @notice Base contract for agToken, that is to say Angle's stablecoins
/// @dev This contract is used to create and handle the stablecoins of Angle protocol
/// @dev It is still possible for any address to burn its agTokens without redeeming collateral in exchange
/// @dev This contract is the upgraded version of the AgToken that was first deployed on Ethereum mainnet
contract OldAgEUR is IAgToken, ERC20PermitUpgradeable {
    // ========================= References to other contracts =====================

    /// @notice Reference to the `StableMaster` contract associated to this `AgToken`
    address public stableMaster;

    // ============================= Constructor ===================================

    /// @notice Initializes the `AgToken` contract
    /// @param name_ Name of the token
    /// @param symbol_ Symbol of the token
    /// @param stableMaster_ Reference to the `StableMaster` contract associated to this agToken
    /// @dev By default, agTokens are ERC-20 tokens with 18 decimals
    function initialize(string memory name_, string memory symbol_, address stableMaster_) external initializer {
        __ERC20Permit_init(name_);
        __ERC20_init(name_, symbol_);
        require(stableMaster_ != address(0), "0");
        stableMaster = stableMaster_;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // ======= Added Parameters and Variables from the first implementation ========

    /// @inheritdoc IAgToken
    mapping(address => bool) public isMinter;
    /// @notice Reference to the treasury contract which can grant minting rights
    address public treasury;
    /// @notice Boolean to check whether the contract has been reinitialized after its upgrade
    bool public treasuryInitialized;

    // =============================== Added Events ================================

    event TreasuryUpdated(address indexed _treasury);
    event MinterToggled(address indexed minter);

    // =============================== Added Errors ================================

    error BurnAmountExceedsAllowance();
    error InvalidSender();
    error InvalidTreasury();
    error NotGovernor();
    error NotMinter();
    error NotTreasury();
    error TreasuryAlreadyInitialized();

    // =============================== Setup Function ==============================

    /// @notice Sets up the treasury contract in this AgToken contract
    /// @param _treasury Treasury contract to add
    /// @dev The address calling this function has to be hard-coded in the contract
    /// @dev Can be called only once
    function setUpTreasury(address _treasury) external {
        // Only governor
        if (msg.sender != 0xdC4e6DFe07EFCa50a197DF15D9200883eF4Eb1c8) revert NotGovernor();
        if (address(ITreasury(_treasury).stablecoin()) != address(this)) revert InvalidTreasury();
        if (treasuryInitialized) revert TreasuryAlreadyInitialized();
        treasury = _treasury;
        treasuryInitialized = true;
        isMinter[stableMaster] = true;
        emit TreasuryUpdated(_treasury);
    }

    // =============================== Modifiers ===================================

    /// @notice Checks to see if it is the `Treasury` calling this contract
    /// @dev There is no Access Control here, because it can be handled cheaply through this modifier
    modifier onlyTreasury() {
        if (msg.sender != treasury) revert NotTreasury();
        _;
    }

    /// @notice Checks whether the sender has the minting right
    modifier onlyMinter() {
        if (!isMinter[msg.sender]) revert NotMinter();
        _;
    }

    // ========================= External Functions ================================
    // The following functions allow anyone to burn stablecoins without redeeming collateral
    // in exchange for that

    /// @notice Destroys `amount` token from the caller without giving collateral back
    /// @param amount Amount to burn
    /// @param poolManager Reference to the `PoolManager` contract for which the `stocksUsers` will
    /// need to be updated
    /// @dev When calling this function, people should specify the `poolManager` for which they want to decrease
    /// the `stocksUsers`: this is a way for the protocol to maintain healthy accounting variables
    function burnNoRedeem(uint256 amount, address poolManager) external {
        _burn(msg.sender, amount);
        IStableMaster(stableMaster).updateStocksUsers(amount, poolManager);
    }

    /// @notice Burns `amount` of agToken on behalf of another account without redeeming collateral back
    /// @param account Account to burn on behalf of
    /// @param amount Amount to burn
    /// @param poolManager Reference to the `PoolManager` contract for which the `stocksUsers` will need to be updated
    function burnFromNoRedeem(address account, uint256 amount, address poolManager) external {
        _burnFromNoRedeem(amount, account, msg.sender);
        IStableMaster(stableMaster).updateStocksUsers(amount, poolManager);
    }

    /// @notice Allows anyone to burn agToken without redeeming collateral back
    /// @param amount Amount of stablecoins to burn
    /// @dev This function can typically be called if there is a settlement mechanism to burn stablecoins
    function burnStablecoin(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // ======================= Minter Role Only Functions ==========================

    /// @inheritdoc IAgToken
    function burnSelf(uint256 amount, address burner) external onlyMinter {
        _burn(burner, amount);
    }

    /// @inheritdoc IAgToken
    function burnFrom(uint256 amount, address burner, address sender) external onlyMinter {
        _burnFromNoRedeem(amount, burner, sender);
    }

    /// @inheritdoc IAgToken
    function mint(address account, uint256 amount) external onlyMinter {
        _mint(account, amount);
    }

    // ======================= Treasury Only Functions =============================

    /// @inheritdoc IAgToken
    function addMinter(address minter) external onlyTreasury {
        isMinter[minter] = true;
        emit MinterToggled(minter);
    }

    /// @inheritdoc IAgToken
    function removeMinter(address minter) external {
        // The `treasury` contract cannot remove the `stableMaster`
        if (msg.sender != minter && (msg.sender != address(treasury) || minter == stableMaster)) revert InvalidSender();
        isMinter[minter] = false;
        emit MinterToggled(minter);
    }

    /// @inheritdoc IAgToken
    function setTreasury(address _treasury) external onlyTreasury {
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    // ============================ Internal Function ==============================

    /// @notice Internal version of the function `burnFromNoRedeem`
    /// @param amount Amount to burn
    /// @dev It is at the level of this function that allowance checks are performed
    function _burnFromNoRedeem(uint256 amount, address burner, address sender) internal {
        if (burner != sender) {
            uint256 currentAllowance = allowance(burner, sender);
            if (currentAllowance < amount) revert BurnAmountExceedsAllowance();
            _approve(burner, sender, currentAllowance - amount);
        }
        _burn(burner, amount);
    }
}

// ============================================================
// FILE: contracts/deprecated/OldAngleHelpers.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

import "../interfaces/IAngleRouter.sol";
import "../interfaces/coreModule/IAgTokenMainnet.sol";
import "../interfaces/coreModule/ICore.sol";
import "../interfaces/coreModule/IOracleCore.sol";
import "../interfaces/coreModule/IPerpetualManager.sol";
import "../interfaces/coreModule/IPoolManager.sol";
import "../interfaces/coreModule/IStableMaster.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../interfaces/IVaultManager.sol";

pragma solidity ^0.8.12;

struct Parameters {
    SLPData slpData;
    MintBurnData feeData;
    PerpetualManagerFeeData perpFeeData;
    PerpetualManagerParamData perpParam;
}

struct PerpetualManagerFeeData {
    uint64[] xHAFeesDeposit;
    uint64[] yHAFeesDeposit;
    uint64[] xHAFeesWithdraw;
    uint64[] yHAFeesWithdraw;
    uint64 haBonusMalusDeposit;
    uint64 haBonusMalusWithdraw;
}

struct PerpetualManagerParamData {
    uint64 maintenanceMargin;
    uint64 maxLeverage;
    uint64 targetHAHedge;
    uint64 limitHAHedge;
    uint64 lockTime;
}

struct CollateralAddresses {
    address stableMaster;
    address poolManager;
    address perpetualManager;
    address sanToken;
    address oracle;
    address gauge;
    address feeManager;
    address[] strategies;
}

/// @title AngleHelpers
/// @author Angle Labs, Inc.
/// @notice Contract with view functions designed to facilitate integrations on the Core module of the Angle Protocol
/// @dev This contract only contains view functions to be queried off-chain. It was thus not optimized for gas consumption
contract OldAngleHelpers is Initializable {
    // ======================== Helper View Functions ==============================

    /// @notice Gives the amount of `agToken` you'd be getting if you were executing in the same block a mint transaction
    /// with `amount` of `collateral` in the Core module of the Angle protocol as well as the value of the fees
    /// (in `BASE_PARAMS`) that would be applied during the mint
    /// @return Amount of `agToken` that would be obtained with a mint transaction in the same block
    /// @return Percentage of fees that would be taken during a mint transaction in the same block
    /// @dev This function reverts if the mint transaction was to revert in the same conditions (without taking into account
    /// potential approval problems to the `StableMaster` contract)
    function previewMintAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) external view returns (uint256, uint256) {
        return _previewMintAndFees(amount, agToken, collateral);
    }

    /// @notice Gives the amount of `collateral` you'd be getting if you were executing in the same block a burn transaction
    ///  with `amount` of `agToken` in the Core module of the Angle protocol as well as the value of the fees
    /// (in `BASE_PARAMS`) that would be applied during the burn
    /// @return Amount of `collateral` that would be obtained with a burn transaction in the same block
    /// @return Percentage of fees that would be taken during a burn transaction in the same block
    /// @dev This function reverts if the burn transaction was to revert in the same conditions (without taking into account
    /// potential approval problems to the `StableMaster` contract or agToken balance prior to the call)
    function previewBurnAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) external view returns (uint256, uint256) {
        return _previewBurnAndFees(amount, agToken, collateral);
    }

    /// @notice Returns all the addresses associated to the (`agToken`,`collateral`) pair given
    /// @return addresses A struct with all the addresses associated in the Core module
    function getCollateralAddresses(
        address agToken,
        address collateral
    ) external view returns (CollateralAddresses memory addresses) {
        address stableMaster = IAgTokenMainnet(agToken).stableMaster();
        (address poolManager, address perpetualManager, address sanToken, address gauge) = ROUTER.mapPoolManagers(
            stableMaster,
            collateral
        );
        (, , , IOracleCore oracle, , , , , ) = IStableMaster(stableMaster).collateralMap(poolManager);
        addresses.stableMaster = stableMaster;
        addresses.poolManager = poolManager;
        addresses.perpetualManager = perpetualManager;
        addresses.sanToken = sanToken;
        addresses.gauge = gauge;
        addresses.oracle = address(oracle);
        addresses.feeManager = IPoolManager(poolManager).feeManager();

        uint256 length = 0;
        while (true) {
            try IPoolManager(poolManager).strategyList(length) returns (address) {
                length += 1;
            } catch {
                break;
            }
        }
        address[] memory strategies = new address[](length);
        for (uint256 i; i < length; ++i) {
            strategies[i] = IPoolManager(poolManager).strategyList(i);
        }
        addresses.strategies = strategies;
    }

    /// @notice Gets the addresses of all the `StableMaster` contracts and their associated `AgToken` addresses
    /// @return List of the `StableMaster` addresses of the Angle protocol
    /// @return List of the `AgToken` addresses of the protocol
    /// @dev The place of an agToken address in the list is the same as the corresponding `StableMaster` address
    function getStablecoinAddresses() external view returns (address[] memory, address[] memory) {
        address[] memory stableMasterAddresses = CORE.stablecoinList();
        address[] memory agTokenAddresses = new address[](stableMasterAddresses.length);
        for (uint256 i; i < stableMasterAddresses.length; ++i) {
            agTokenAddresses[i] = IStableMaster(stableMasterAddresses[i]).agToken();
        }
        return (stableMasterAddresses, agTokenAddresses);
    }

    /// @notice Returns most of the governance parameters associated to the (`agToken`,`collateral`) pair given
    /// @return params Struct with most of the parameters in the `StableMaster` and `PerpetualManager` contracts
    /// @dev Check out the struct `Parameters` for the meaning of the return values
    function getCollateralParameters(
        address agToken,
        address collateral
    ) external view returns (Parameters memory params) {
        (address stableMaster, address poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
        (
            ,
            ,
            IPerpetualManager perpetualManager,
            ,
            ,
            ,
            ,
            SLPData memory slpData,
            MintBurnData memory feeData
        ) = IStableMaster(stableMaster).collateralMap(poolManager);

        params.slpData = slpData;
        params.feeData = feeData;
        params.perpParam.maintenanceMargin = perpetualManager.maintenanceMargin();
        params.perpParam.maxLeverage = perpetualManager.maxLeverage();
        params.perpParam.targetHAHedge = perpetualManager.targetHAHedge();
        params.perpParam.limitHAHedge = perpetualManager.limitHAHedge();
        params.perpParam.lockTime = perpetualManager.lockTime();

        params.perpFeeData.haBonusMalusDeposit = perpetualManager.haBonusMalusDeposit();
        params.perpFeeData.haBonusMalusWithdraw = perpetualManager.haBonusMalusWithdraw();

        uint256 length = 0;
        while (true) {
            try perpetualManager.xHAFeesDeposit(length) returns (uint64) {
                length += 1;
            } catch {
                break;
            }
        }
        uint64[] memory data = new uint64[](length);
        uint64[] memory data2 = new uint64[](length);
        for (uint256 i; i < length; ++i) {
            data[i] = perpetualManager.xHAFeesDeposit(i);
            data2[i] = perpetualManager.yHAFeesDeposit(i);
        }
        params.perpFeeData.xHAFeesDeposit = data;
        params.perpFeeData.yHAFeesDeposit = data2;

        length = 0;
        while (true) {
            try perpetualManager.xHAFeesWithdraw(length) returns (uint64) {
                length += 1;
            } catch {
                break;
            }
        }
        data = new uint64[](length);
        data2 = new uint64[](length);
        for (uint256 i; i < length; ++i) {
            data[i] = perpetualManager.xHAFeesWithdraw(i);
            data2[i] = perpetualManager.yHAFeesWithdraw(i);
        }
        params.perpFeeData.xHAFeesWithdraw = data;
        params.perpFeeData.yHAFeesWithdraw = data2;
    }

    /// @notice Returns the address of the poolManager associated to an (`agToken`, `collateral`) pair
    /// in the Core module of the protocol
    function getPoolManager(address agToken, address collateral) public view returns (address poolManager) {
        (, poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
    }

    // ======================== Replica Functions ==================================
    // These replicate what is done in the other contracts of the protocol

    function _previewBurnAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) internal view returns (uint256 amountForUserInCollat, uint256 feePercent) {
        (address stableMaster, address poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
        (
            address token,
            ,
            IPerpetualManager perpetualManager,
            IOracleCore oracle,
            uint256 stocksUsers,
            ,
            uint256 collatBase,
            ,
            MintBurnData memory feeData
        ) = IStableMaster(stableMaster).collateralMap(poolManager);
        if (token == address(0) || IStableMaster(stableMaster).paused(keccak256(abi.encodePacked(STABLE, poolManager))))
            revert NotInitialized();
        if (amount > stocksUsers) revert InvalidAmount();

        if (feeData.xFeeBurn.length == 1) {
            feePercent = feeData.yFeeBurn[0];
        } else {
            bytes memory data = abi.encode(address(perpetualManager), feeData.targetHAHedge);
            uint64 hedgeRatio = _computeHedgeRatio(stocksUsers - amount, data);
            feePercent = _piecewiseLinear(hedgeRatio, feeData.xFeeBurn, feeData.yFeeBurn);
        }
        feePercent = (feePercent * feeData.bonusMalusBurn) / BASE_PARAMS;

        amountForUserInCollat = (amount * (BASE_PARAMS - feePercent) * collatBase) / (oracle.readUpper() * BASE_PARAMS);
    }

    function _previewMintAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) internal view returns (uint256 amountForUserInStable, uint256 feePercent) {
        (address stableMaster, address poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
        (
            address token,
            ,
            IPerpetualManager perpetualManager,
            IOracleCore oracle,
            uint256 stocksUsers,
            ,
            ,
            ,
            MintBurnData memory feeData
        ) = IStableMaster(stableMaster).collateralMap(poolManager);
        if (token == address(0) || IStableMaster(stableMaster).paused(keccak256(abi.encodePacked(STABLE, poolManager))))
            revert NotInitialized();

        amountForUserInStable = oracle.readQuoteLower(amount);

        if (feeData.xFeeMint.length == 1) feePercent = feeData.yFeeMint[0];
        else {
            bytes memory data = abi.encode(address(perpetualManager), feeData.targetHAHedge);
            uint64 hedgeRatio = _computeHedgeRatio(amountForUserInStable + stocksUsers, data);
            feePercent = _piecewiseLinear(hedgeRatio, feeData.xFeeMint, feeData.yFeeMint);
        }
        feePercent = (feePercent * feeData.bonusMalusMint) / BASE_PARAMS;

        amountForUserInStable = (amountForUserInStable * (BASE_PARAMS - feePercent)) / BASE_PARAMS;
        if (stocksUsers + amountForUserInStable > feeData.capOnStableMinted) revert InvalidAmount();
    }

    // ======================== Utility Functions ==================================
    // These utility functions are taken from other contracts of the protocol

    function _computeHedgeRatio(uint256 newStocksUsers, bytes memory data) internal view returns (uint64 ratio) {
        (address perpetualManager, uint64 targetHAHedge) = abi.decode(data, (address, uint64));
        uint256 totalHedgeAmount = IPerpetualManager(perpetualManager).totalHedgeAmount();
        newStocksUsers = (targetHAHedge * newStocksUsers) / BASE_PARAMS;
        if (newStocksUsers > totalHedgeAmount) ratio = uint64((totalHedgeAmount * BASE_PARAMS) / newStocksUsers);
        else ratio = uint64(BASE_PARAMS);
    }

    function _piecewiseLinear(uint64 x, uint64[] memory xArray, uint64[] memory yArray) internal pure returns (uint64) {
        if (x >= xArray[xArray.length - 1]) {
            return yArray[xArray.length - 1];
        } else if (x <= xArray[0]) {
            return yArray[0];
        } else {
            uint256 lower;
            uint256 upper = xArray.length - 1;
            uint256 mid;
            while (upper - lower > 1) {
                mid = lower + (upper - lower) / 2;
                if (xArray[mid] <= x) {
                    lower = mid;
                } else {
                    upper = mid;
                }
            }
            if (yArray[upper] > yArray[lower]) {
                return
                    yArray[lower] +
                    ((yArray[upper] - yArray[lower]) * (x - xArray[lower])) /
                    (xArray[upper] - xArray[lower]);
            } else {
                return
                    yArray[lower] -
                    ((yArray[lower] - yArray[upper]) * (x - xArray[lower])) /
                    (xArray[upper] - xArray[lower]);
            }
        }
    }

    function _getStableMasterAndPoolManager(
        address agToken,
        address collateral
    ) internal view returns (address stableMaster, address poolManager) {
        stableMaster = IAgTokenMainnet(agToken).stableMaster();
        (poolManager, , , ) = ROUTER.mapPoolManagers(stableMaster, collateral);
    }

    // ====================== Constants and Initializers ===========================

    IAngleRouter public constant ROUTER = IAngleRouter(0xBB755240596530be0c1DE5DFD77ec6398471561d);
    ICore public constant CORE = ICore(0x61ed74de9Ca5796cF2F8fD60D54160D47E30B7c3);

    bytes32 public constant STABLE = keccak256("STABLE");
    uint256 public constant BASE_PARAMS = 10 ** 9;

    error NotInitialized();
    error InvalidAmount();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}
}

// ============================================================
// FILE: contracts/deprecated/vaultManager/OldVaultManagerERC721.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./OldVaultManagerStorage.sol";

/// @title VaultManagerERC721
/// @author Angle Labs, Inc.
/// @dev Base ERC721 Implementation of VaultManager
abstract contract OldVaultManagerERC721 is IERC721MetadataUpgradeable, OldVaultManagerStorage {
    using SafeERC20 for IERC20;
    using Address for address;

    /// @inheritdoc IERC721MetadataUpgradeable
    string public name;
    /// @inheritdoc IERC721MetadataUpgradeable
    string public symbol;

    // ================================= MODIFIERS =================================

    /// @notice Checks if the person interacting with the vault with `vaultID` is approved
    /// @param caller Address of the person seeking to interact with the vault
    /// @param vaultID ID of the concerned vault
    modifier onlyApprovedOrOwner(address caller, uint256 vaultID) {
        if (!_isApprovedOrOwner(caller, vaultID)) revert NotApproved();
        _;
    }

    // ================================ ERC721 LOGIC ===============================

    /// @notice Checks whether a given address is approved for a vault or owns this vault
    /// @param spender Address for which vault ownership should be checked
    /// @param vaultID ID of the vault to check
    /// @return Whether the `spender` address owns or is approved for `vaultID`
    function isApprovedOrOwner(address spender, uint256 vaultID) external view returns (bool) {
        return _isApprovedOrOwner(spender, vaultID);
    }

    /// @inheritdoc IERC721MetadataUpgradeable
    function tokenURI(uint256 vaultID) external view returns (string memory) {
        if (!_exists(vaultID)) revert NonexistentVault();
        // There is no vault with `vaultID` equal to 0, so the following variable is
        // always greater than zero
        uint256 temp = vaultID;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (vaultID != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(vaultID % 10)));
            vaultID /= 10;
        }
        return bytes(_baseURI).length > 0 ? string(abi.encodePacked(_baseURI, string(buffer))) : "";
    }

    /// @inheritdoc IERC721Upgradeable
    function balanceOf(address owner) external view returns (uint256) {
        if (owner == address(0)) revert ZeroAddress();
        return _balances[owner];
    }

    /// @inheritdoc IERC721Upgradeable
    function ownerOf(uint256 vaultID) external view returns (address) {
        return _ownerOf(vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function approve(address to, uint256 vaultID) external {
        address owner = _ownerOf(vaultID);
        if (to == owner) revert ApprovalToOwner();
        if (msg.sender != owner && !isApprovedForAll(owner, msg.sender)) revert NotApproved();

        _approve(to, vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function getApproved(uint256 vaultID) external view returns (address) {
        if (!_exists(vaultID)) revert NonexistentVault();
        return _getApproved(vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function setApprovalForAll(address operator, bool approved) external {
        _setApprovalForAll(msg.sender, operator, approved);
    }

    /// @inheritdoc IERC721Upgradeable
    function isApprovedForAll(address owner, address operator) public view returns (bool) {
        return _operatorApprovals[owner][operator] == 1;
    }

    /// @inheritdoc IERC721Upgradeable
    function transferFrom(address from, address to, uint256 vaultID) external onlyApprovedOrOwner(msg.sender, vaultID) {
        _transfer(from, to, vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function safeTransferFrom(address from, address to, uint256 vaultID) external {
        safeTransferFrom(from, to, vaultID, "");
    }

    /// @inheritdoc IERC721Upgradeable
    function safeTransferFrom(
        address from,
        address to,
        uint256 vaultID,
        bytes memory _data
    ) public onlyApprovedOrOwner(msg.sender, vaultID) {
        _safeTransfer(from, to, vaultID, _data);
    }

    // ================================ ERC165 LOGIC ===============================

    /// @inheritdoc IERC165Upgradeable
    function supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        return
            interfaceId == type(IERC721MetadataUpgradeable).interfaceId ||
            interfaceId == type(IERC721Upgradeable).interfaceId ||
            interfaceId == type(IVaultManager).interfaceId ||
            interfaceId == type(IERC165Upgradeable).interfaceId;
    }

    // ================== INTERNAL FUNCTIONS FOR THE ERC721 LOGIC ==================

    /// @notice Internal version of the `ownerOf` function
    function _ownerOf(uint256 vaultID) internal view returns (address owner) {
        owner = _owners[vaultID];
        if (owner == address(0)) revert NonexistentVault();
    }

    /// @notice Internal version of the `getApproved` function
    function _getApproved(uint256 vaultID) internal view returns (address) {
        return _vaultApprovals[vaultID];
    }

    /// @notice Internal version of the `safeTransferFrom` function (with the data parameter)
    function _safeTransfer(address from, address to, uint256 vaultID, bytes memory _data) internal {
        _transfer(from, to, vaultID);
        if (!_checkOnERC721Received(from, to, vaultID, _data)) revert NonERC721Receiver();
    }

    /// @notice Checks whether a vault exists
    /// @param vaultID ID of the vault to check
    /// @return Whether `vaultID` has been created
    function _exists(uint256 vaultID) internal view returns (bool) {
        return _owners[vaultID] != address(0);
    }

    /// @notice Internal version of the `isApprovedOrOwner` function
    function _isApprovedOrOwner(address spender, uint256 vaultID) internal view returns (bool) {
        // The following checks if the vault exists
        address owner = _ownerOf(vaultID);
        return (spender == owner || _getApproved(vaultID) == spender || _operatorApprovals[owner][spender] == 1);
    }

    /// @notice Internal version of the `createVault` function
    /// Mints `vaultID` and transfers it to `to`
    /// @dev This method is equivalent to the `_safeMint` method used in OpenZeppelin ERC721 contract
    /// @dev Emits a {Transfer} event
    function _mint(address to) internal returns (uint256 vaultID) {
        if (whitelistingActivated && (isWhitelisted[to] != 1 || isWhitelisted[msg.sender] != 1))
            revert NotWhitelisted();
        if (to == address(0)) revert ZeroAddress();

        unchecked {
            vaultIDCount += 1;
        }

        vaultID = vaultIDCount;
        _beforeTokenTransfer(address(0), to, vaultID);

        unchecked {
            _balances[to] += 1;
        }

        _owners[vaultID] = to;
        emit Transfer(address(0), to, vaultID);
        if (!_checkOnERC721Received(address(0), to, vaultID, "")) revert NonERC721Receiver();
    }

    /// @notice Destroys `vaultID`
    /// @dev `vaultID` must exist
    /// @dev Emits a {Transfer} event
    function _burn(uint256 vaultID) internal {
        address owner = _ownerOf(vaultID);

        _beforeTokenTransfer(owner, address(0), vaultID);
        // Clear approvals
        _approve(address(0), vaultID);
        // The following line cannot underflow as the owner's balance is necessarily
        // greater than 1
        unchecked {
            _balances[owner] -= 1;
        }
        delete _owners[vaultID];
        delete vaultData[vaultID];

        emit Transfer(owner, address(0), vaultID);
    }

    /// @notice Transfers `vaultID` from `from` to `to` as opposed to {transferFrom},
    /// this imposes no restrictions on msg.sender
    /// @dev `to` cannot be the zero address and `perpetualID` must be owned by `from`
    /// @dev Emits a {Transfer} event
    /// @dev A whitelist check is performed if necessary on the `to` address
    function _transfer(address from, address to, uint256 vaultID) internal {
        if (_ownerOf(vaultID) != from) revert NotApproved();
        if (to == address(0)) revert ZeroAddress();
        if (whitelistingActivated && isWhitelisted[to] != 1) revert NotWhitelisted();

        _beforeTokenTransfer(from, to, vaultID);

        // Clear approvals from the previous owner
        _approve(address(0), vaultID);
        unchecked {
            _balances[from] -= 1;
            _balances[to] += 1;
        }
        _owners[vaultID] = to;

        emit Transfer(from, to, vaultID);
    }

    /// @notice Approves `to` to operate on `vaultID`
    function _approve(address to, uint256 vaultID) internal {
        _vaultApprovals[vaultID] = to;
        emit Approval(_ownerOf(vaultID), to, vaultID);
    }

    /// @notice Internal version of the `setApprovalForAll` function
    /// @dev It contains an `approver` field to be used in case someone signs a permit for a particular
    /// address, and this signature is given to the contract by another address (like a router)
    function _setApprovalForAll(address approver, address operator, bool approved) internal {
        if (operator == approver) revert ApprovalToCaller();
        uint256 approval = approved ? 1 : 0;
        _operatorApprovals[approver][operator] = approval;
        emit ApprovalForAll(approver, operator, approved);
    }

    /// @notice Internal function to invoke {IERC721Receiver-onERC721Received} on a target address
    /// The call is not executed if the target address is not a contract
    /// @param from Address representing the previous owner of the given token ID
    /// @param to Target address that will receive the tokens
    /// @param vaultID ID of the token to be transferred
    /// @param _data Bytes optional data to send along with the call
    /// @return Bool whether the call correctly returned the expected value
    function _checkOnERC721Received(
        address from,
        address to,
        uint256 vaultID,
        bytes memory _data
    ) private returns (bool) {
        if (to.isContract()) {
            try IERC721ReceiverUpgradeable(to).onERC721Received(msg.sender, from, vaultID, _data) returns (
                bytes4 retval
            ) {
                return retval == IERC721ReceiverUpgradeable.onERC721Received.selector;
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert NonERC721Receiver();
                } else {
                    // solhint-disable-next-line no-inline-assembly
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        } else {
            return true;
        }
    }

    /// @notice Hook that is called before any token transfer. This includes minting and burning.
    ///  Calling conditions:
    ///
    ///  - When `from` and `to` are both non-zero, `from`'s `vaultID` will be
    ///  transferred to `to`.
    ///  - When `from` is zero, `vaultID` will be minted for `to`.
    ///  - When `to` is zero, `from`'s `vaultID` will be burned.
    ///  - `from` and `to` are never both zero.
    function _beforeTokenTransfer(address from, address to, uint256 vaultID) internal virtual {}
}

// ============================================================
// FILE: contracts/deprecated/vaultManager/OldVaultManagerPermit.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./OldVaultManagerERC721.sol";
import "../../interfaces/external/IERC1271.sol";

/// @title VaultManagerPermit
/// @author Angle Labs, Inc.
/// @dev Base Implementation of permit functions for the `VaultManager` contract
abstract contract OldVaultManagerPermit is Initializable, OldVaultManagerERC721 {
    using Address for address;

    mapping(address => uint256) private _nonces;
    /* solhint-disable var-name-mixedcase */
    bytes32 private _HASHED_NAME;
    bytes32 private _HASHED_VERSION;
    bytes32 private _PERMIT_TYPEHASH;
    /* solhint-enable var-name-mixedcase */

    error ExpiredDeadline();
    error InvalidSignature();

    //solhint-disable-next-line
    function __ERC721Permit_init(string memory _name) internal onlyInitializing {
        _PERMIT_TYPEHASH = keccak256(
            "Permit(address owner,address spender,bool approved,uint256 nonce,uint256 deadline)"
        );
        _HASHED_NAME = keccak256(bytes(_name));
        _HASHED_VERSION = keccak256(bytes("1"));
    }

    /// @notice Allows an address to give or revoke approval for all its vaults to another address
    /// @param owner Address signing the permit and giving (or revoking) its approval for all the controlled vaults
    /// @param spender Address to give approval to
    /// @param approved Whether to give or revoke the approval
    /// @param deadline Deadline parameter for the signature to be valid
    /// @dev The `v`, `r`, and `s` parameters are used as signature data
    function permit(
        address owner,
        address spender,
        bool approved,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        if (block.timestamp > deadline) revert ExpiredDeadline();
        // Additional signature checks performed in the `ECDSAUpgradeable.recover` function
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0 || (v != 27 && v != 28))
            revert InvalidSignature();

        bytes32 digest = keccak256(
            abi.encodePacked(
                "\x19\x01",
                _domainSeparatorV4(),
                keccak256(
                    abi.encode(
                        _PERMIT_TYPEHASH,
                        // 0x3f43a9c6bafb5c7aab4e0cfe239dc5d4c15caf0381c6104188191f78a6640bd8,
                        owner,
                        spender,
                        approved,
                        _useNonce(owner),
                        deadline
                    )
                )
            )
        );
        if (owner.isContract()) {
            if (IERC1271(owner).isValidSignature(digest, abi.encodePacked(r, s, v)) != 0x1626ba7e)
                revert InvalidSignature();
        } else {
            address signer = ecrecover(digest, v, r, s);
            if (signer != owner || signer == address(0)) revert InvalidSignature();
        }

        _setApprovalForAll(owner, spender, approved);
    }

    /// @notice Returns the current nonce for an `owner` address
    function nonces(address owner) public view returns (uint256) {
        return _nonces[owner];
    }

    /// @notice Returns the domain separator for the current chain.
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    /// @notice Internal version of the `DOMAIN_SEPARATOR` function
    function _domainSeparatorV4() internal view returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    // keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)')
                    0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f,
                    _HASHED_NAME,
                    _HASHED_VERSION,
                    block.chainid,
                    address(this)
                )
            );
    }

    /// @notice Consumes a nonce for an address: returns the current value and increments it
    function _useNonce(address owner) internal returns (uint256 current) {
        current = _nonces[owner];
        _nonces[owner] = current + 1;
    }

    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/deprecated/vaultManager/OldVaultManagerStorage.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721ReceiverUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/interfaces/IERC721MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/introspection/IERC165Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../../interfaces/IAgToken.sol";
import "../../interfaces/IOracle.sol";
import "../../interfaces/ISwapper.sol";
import "../../interfaces/ITreasury.sol";
import "../../interfaces/IVaultManager.sol";
import "../../interfaces/governance/IVeBoostProxy.sol";

/// @title VaultManagerStorage
/// @author Angle Labs, Inc.
/// @dev Variables, references, parameters and events needed in the `VaultManager` contract
// solhint-disable-next-line max-states-count
contract OldVaultManagerStorage is IVaultManagerStorage, Initializable, ReentrancyGuardUpgradeable {
    /// @notice Base used for parameter computation: almost all the parameters of this contract are set in `BASE_PARAMS`
    uint256 public constant BASE_PARAMS = 10 ** 9;
    /// @notice Base used for interest rate computation
    uint256 public constant BASE_INTEREST = 10 ** 27;
    /// @notice Used for interest rate computation
    uint256 public constant HALF_BASE_INTEREST = 10 ** 27 / 2;

    // ================================= REFERENCES ================================

    /// @inheritdoc IVaultManagerStorage
    ITreasury public treasury;
    /// @inheritdoc IVaultManagerStorage
    IERC20 public collateral;
    /// @inheritdoc IVaultManagerStorage
    IAgToken public stablecoin;
    /// @inheritdoc IVaultManagerStorage
    IOracle public oracle;
    /// @notice Reference to the contract which computes adjusted veANGLE balances for liquidators boosts
    IVeBoostProxy public veBoostProxy;
    /// @notice Base of the collateral
    uint256 internal _collatBase;

    // ================================= PARAMETERS ================================
    // Unless specified otherwise, parameters of this contract are expressed in `BASE_PARAMS`

    /// @notice Maximum amount of stablecoins that can be issued with this contract (in `BASE_TOKENS`). This parameter should
    /// not be bigger than `type(uint256).max / BASE_INTEREST` otherwise there may be some overflows in the `increaseDebt` function
    uint256 public debtCeiling;
    /// @notice Threshold veANGLE balance values for the computation of the boost for liquidators: the length of this array
    /// should normally be 2. The base of the x-values in this array should be `BASE_TOKENS`
    uint256[] public xLiquidationBoost;
    /// @notice Values of the liquidation boost at the threshold values of x
    uint256[] public yLiquidationBoost;
    /// @inheritdoc IVaultManagerStorage
    uint64 public collateralFactor;
    /// @notice Maximum Health factor at which a vault can end up after a liquidation (unless it's fully liquidated)
    uint64 public targetHealthFactor;
    /// @notice Upfront fee taken when borrowing stablecoins: this fee is optional and should in practice not be used
    uint64 public borrowFee;
    /// @notice Upfront fee taken when repaying stablecoins: this fee is optional as well. It should be smaller
    /// than the liquidation surcharge (cf below) to avoid exploits where people voluntarily get liquidated at a 0
    /// discount to pay smaller repaying fees
    uint64 public repayFee;
    /// @notice Per second interest taken to borrowers taking agToken loans. Contrarily to other parameters, it is set in `BASE_INTEREST`
    /// that is to say in base 10**27
    uint64 public interestRate;
    /// @notice Fee taken by the protocol during a liquidation. Technically, this value is not the fee per se, it's 1 - fee.
    /// For instance for a 2% fee, `liquidationSurcharge` should be 98%
    uint64 public liquidationSurcharge;
    /// @notice Maximum discount given to liquidators
    uint64 public maxLiquidationDiscount;
    /// @notice Whether whitelisting is required to own a vault or not
    bool public whitelistingActivated;
    /// @notice Whether the contract is paused or not
    bool public paused;

    // ================================= VARIABLES =================================

    /// @notice Timestamp at which the `interestAccumulator` was updated
    uint256 public lastInterestAccumulatorUpdated;
    /// @inheritdoc IVaultManagerStorage
    uint256 public interestAccumulator;
    /// @inheritdoc IVaultManagerStorage
    uint256 public totalNormalizedDebt;
    /// @notice Surplus accumulated by the contract: surplus is always in stablecoins, and is then reset
    /// when the value is communicated to the treasury contract
    uint256 public surplus;
    /// @notice Bad debt made from liquidated vaults which ended up having no collateral and a positive amount
    /// of stablecoins
    uint256 public badDebt;

    // ================================== MAPPINGS =================================

    /// @inheritdoc IVaultManagerStorage
    mapping(uint256 => Vault) public vaultData;
    /// @notice Maps an address to 1 if it's whitelisted and can open or own a vault
    mapping(address => uint256) public isWhitelisted;

    // ================================ ERC721 DATA ================================

    /// @inheritdoc IVaultManagerStorage
    uint256 public vaultIDCount;

    /// @notice URI
    string internal _baseURI;

    // Mapping from `vaultID` to owner address
    mapping(uint256 => address) internal _owners;

    // Mapping from owner address to vault owned count
    mapping(address => uint256) internal _balances;

    // Mapping from `vaultID` to approved address
    mapping(uint256 => address) internal _vaultApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => uint256)) internal _operatorApprovals;

    uint256[50] private __gap;

    // =================================== EVENTS ==================================

    event AccruedToTreasury(uint256 surplusEndValue, uint256 badDebtEndValue);
    event CollateralAmountUpdated(uint256 vaultID, uint256 collateralAmount, uint8 isIncrease);
    event InterestAccumulatorUpdated(uint256 value, uint256 timestamp);
    event InternalDebtUpdated(uint256 vaultID, uint256 internalAmount, uint8 isIncrease);
    event FiledUint64(uint64 param, bytes32 what);
    event DebtCeilingUpdated(uint256 debtCeiling);
    event LiquidationBoostParametersUpdated(address indexed _veBoostProxy, uint256[] xBoost, uint256[] yBoost);
    event LiquidatedVaults(uint256[] vaultIDs);
    event DebtTransferred(uint256 srcVaultID, uint256 dstVaultID, address dstVaultManager, uint256 amount);

    // =================================== ERRORS ==================================

    error ApprovalToOwner();
    error ApprovalToCaller();
    error DustyLeftoverAmount();
    error DebtCeilingExceeded();
    error HealthyVault();
    error IncompatibleLengths();
    error InsolventVault();
    error InvalidParameterValue();
    error InvalidParameterType();
    error InvalidSetOfParameters();
    error InvalidTreasury();
    error NonERC721Receiver();
    error NonexistentVault();
    error NotApproved();
    error NotGovernor();
    error NotGovernorOrGuardian();
    error NotTreasury();
    error NotWhitelisted();
    error NotVaultManager();
    error Paused();
    error TooHighParameterValue();
    error TooSmallParameterValue();
    error ZeroAddress();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}
}

// ============================================================
// FILE: contracts/external/ProxyAdmin.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./TransparentUpgradeableProxy.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @dev This is an auxiliary contract meant to be assigned as the admin of a {TransparentUpgradeableProxy}. For an
 * explanation of why you would want to use this see the documentation for {TransparentUpgradeableProxy}.
 * This contract was fully forked from OpenZeppelin `ProxyAdmin`
 */
contract ProxyAdmin is Ownable {
    /**
     * @dev Returns the current implementation of `proxy`.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     */
    function getProxyImplementation(TransparentUpgradeableProxy proxy) public view virtual returns (address) {
        // We need to manually run the static call since the getter cannot be flagged as view
        // bytes4(keccak256("implementation()")) == 0x5c60da1b
        (bool success, bytes memory returndata) = address(proxy).staticcall(hex"5c60da1b");
        require(success);
        return abi.decode(returndata, (address));
    }

    /**
     * @dev Returns the current admin of `proxy`.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     */
    function getProxyAdmin(TransparentUpgradeableProxy proxy) public view virtual returns (address) {
        // We need to manually run the static call since the getter cannot be flagged as view
        // bytes4(keccak256("admin()")) == 0xf851a440
        (bool success, bytes memory returndata) = address(proxy).staticcall(hex"f851a440");
        require(success);
        return abi.decode(returndata, (address));
    }

    /**
     * @dev Changes the admin of `proxy` to `newAdmin`.
     *
     * Requirements:
     *
     * - This contract must be the current admin of `proxy`.
     */
    function changeProxyAdmin(TransparentUpgradeableProxy proxy, address newAdmin) public virtual onlyOwner {
        proxy.changeAdmin(newAdmin);
    }

    /**
     * @dev Upgrades `proxy` to `implementation`. See {TransparentUpgradeableProxy-upgradeTo}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     */
    function upgrade(TransparentUpgradeableProxy proxy, address implementation) public virtual onlyOwner {
        proxy.upgradeTo(implementation);
    }

    /**
     * @dev Upgrades `proxy` to `implementation` and calls a function on the new implementation. See
     * {TransparentUpgradeableProxy-upgradeToAndCall}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     */
    function upgradeAndCall(
        TransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual onlyOwner {
        proxy.upgradeToAndCall{ value: msg.value }(implementation, data);
    }
}

// ============================================================
// FILE: contracts/external/TransparentUpgradeableProxy.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

/**
 * @dev This contract implements a proxy that is upgradeable by an admin. It is fully forked from OpenZeppelin
 * `TransparentUpgradeableProxy`
 *
 * To avoid https://medium.com/nomic-labs-blog/malicious-backdoors-in-ethereum-proxies-62629adf3357[proxy selector
 * clashing], which can potentially be used in an attack, this contract uses the
 * https://blog.openzeppelin.com/the-transparent-proxy-pattern/[transparent proxy pattern]. This pattern implies two
 * things that go hand in hand:
 *
 * 1. If any account other than the admin calls the proxy, the call will be forwarded to the implementation, even if
 * that call matches one of the admin functions exposed by the proxy itself.
 * 2. If the admin calls the proxy, it can access the admin functions, but its calls will never be forwarded to the
 * implementation. If the admin tries to call a function on the implementation it will fail with an error that says
 * "admin cannot fallback to proxy target".
 *
 * These properties mean that the admin account can only be used for admin actions like upgrading the proxy or changing
 * the admin, so it's best if it's a dedicated account that is not used for anything else. This will avoid headaches due
 * to sudden errors when trying to call a function from the proxy implementation.
 *
 * Our recommendation is for the dedicated account to be an instance of the {ProxyAdmin} contract. If set up this way,
 * you should think of the `ProxyAdmin` instance as the real administrative interface of your proxy.
 */
contract TransparentUpgradeableProxy is ERC1967Proxy {
    /**
     * @dev Initializes an upgradeable proxy managed by `_admin`, backed by the implementation at `_logic`, and
     * optionally initialized with `_data` as explained in {ERC1967Proxy-constructor}.
     */
    constructor(address _logic, address admin_, bytes memory _data) payable ERC1967Proxy(_logic, _data) {
        assert(_ADMIN_SLOT == bytes32(uint256(keccak256("eip1967.proxy.admin")) - 1));
        _changeAdmin(admin_);
    }

    /**
     * @dev Modifier used internally that will delegate the call to the implementation unless the sender is the admin.
     */
    modifier ifAdmin() {
        if (msg.sender == _getAdmin()) {
            _;
        } else {
            _fallback();
        }
    }

    /**
     * @dev Returns the current admin.
     *
     * NOTE: Only the admin can call this function. See {ProxyAdmin-getProxyAdmin}.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using the
     * https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function admin() external ifAdmin returns (address admin_) {
        admin_ = _getAdmin();
    }

    /**
     * @dev Returns the current implementation.
     *
     * NOTE: Only the admin can call this function. See {ProxyAdmin-getProxyImplementation}.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using the
     * https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`
     */
    function implementation() external ifAdmin returns (address implementation_) {
        implementation_ = _implementation();
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     *
     * NOTE: Only the admin can call this function. See {ProxyAdmin-changeProxyAdmin}.
     */
    function changeAdmin(address newAdmin) external virtual ifAdmin {
        _changeAdmin(newAdmin);
    }

    /**
     * @dev Upgrade the implementation of the proxy.
     *
     * NOTE: Only the admin can call this function. See {ProxyAdmin-upgrade}.
     */
    function upgradeTo(address newImplementation) external ifAdmin {
        _upgradeToAndCall(newImplementation, bytes(""), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy, and then call a function from the new implementation as specified
     * by `data`, which should be an encoded function call. This is useful to initialize new storage variables in the
     * proxied contract.
     *
     * NOTE: Only the admin can call this function. See {ProxyAdmin-upgradeAndCall}.
     */
    function upgradeToAndCall(address newImplementation, bytes calldata data) external payable ifAdmin {
        _upgradeToAndCall(newImplementation, data, true);
    }

    /**
     * @dev Returns the current admin.
     */
    function _admin() internal view virtual returns (address) {
        return _getAdmin();
    }

    /**
     * @dev Makes sure the admin cannot access the fallback function. See {Proxy-_beforeFallback}.
     */
    function _beforeFallback() internal virtual override {
        require(msg.sender != _getAdmin(), "TransparentUpgradeableProxy: admin cannot fallback to proxy target");
        super._beforeFallback();
    }
}

// ============================================================
// FILE: contracts/flashloan/FlashAngle.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/IAgToken.sol";
import "../interfaces/ICoreBorrow.sol";
import "../interfaces/IFlashAngle.sol";
import "../interfaces/ITreasury.sol";

/// @title FlashAngle
/// @author Angle Labs, Inc.
/// @notice Contract to take flash loans on top of several AgToken contracts
contract FlashAngle is IERC3156FlashLender, IFlashAngle, Initializable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    /// @notice Base used for parameter computation
    uint256 public constant BASE_PARAMS = 10 ** 9;
    /// @notice Success message received when calling a `FlashBorrower` contract
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    /// @notice Struct encoding for a given stablecoin the parameters
    struct StablecoinData {
        // Maximum amount borrowable for this stablecoin
        uint256 maxBorrowable;
        // Flash loan fee taken by the protocol for a flash loan on this stablecoin
        uint64 flashLoanFee;
        // Treasury address responsible of the stablecoin
        address treasury;
    }

    // ======================= Parameters and References ===========================

    /// @notice Maps a stablecoin to the data and parameters for flash loans
    mapping(IAgToken => StablecoinData) public stablecoinMap;
    /// @inheritdoc IFlashAngle
    ICoreBorrow public core;

    // =============================== Event =======================================

    event FlashLoan(address indexed stablecoin, uint256 amount, IERC3156FlashBorrower indexed receiver);
    event FlashLoanParametersUpdated(IAgToken indexed stablecoin, uint64 _flashLoanFee, uint256 _maxBorrowable);

    // =============================== Errors ======================================

    error InvalidReturnMessage();
    error NotCore();
    error NotGovernorOrGuardian();
    error NotTreasury();
    error TooBigAmount();
    error TooHighParameterValue();
    error UnsupportedStablecoin();
    error ZeroAddress();

    /// @notice Initializes the contract
    /// @param _core Core address handling this module
    function initialize(ICoreBorrow _core) public initializer {
        if (address(_core) == address(0)) revert ZeroAddress();
        core = _core;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // =================================== Modifiers ===============================

    /// @notice Checks whether the sender is the core contract
    modifier onlyCore() {
        if (msg.sender != address(core)) revert NotCore();
        _;
    }

    /// @notice Checks whether a given stablecoin has been initialized in this contract
    /// @param stablecoin Stablecoin to check
    /// @dev To check whether a stablecoin has been initialized, we just need to check whether its associated
    /// `treasury` address is not null in the `stablecoinMap`. This is what's checked in the `CoreBorrow` contract
    /// when adding support for a stablecoin
    modifier onlyExistingStablecoin(IAgToken stablecoin) {
        if (stablecoinMap[stablecoin].treasury == address(0)) revert UnsupportedStablecoin();
        _;
    }

    // ================================ ERC3156 Spec ===============================

    /// @inheritdoc IERC3156FlashLender
    function flashFee(address token, uint256 amount) external view returns (uint256) {
        return _flashFee(token, amount);
    }

    /// @inheritdoc IERC3156FlashLender
    function maxFlashLoan(address token) external view returns (uint256) {
        // It will be 0 anyway if the token was not added
        return stablecoinMap[IAgToken(token)].maxBorrowable;
    }

    /// @inheritdoc IERC3156FlashLender
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address token,
        uint256 amount,
        bytes calldata data
    ) external nonReentrant returns (bool) {
        uint256 fee = _flashFee(token, amount);
        if (amount > stablecoinMap[IAgToken(token)].maxBorrowable) revert TooBigAmount();
        IAgToken(token).mint(address(receiver), amount);
        if (receiver.onFlashLoan(msg.sender, token, amount, fee, data) != CALLBACK_SUCCESS)
            revert InvalidReturnMessage();
        // Token must be an agToken here so normally no need to use `safeTransferFrom`, but out of safety
        // and in case governance whitelists an agToken which does not have a correct implementation, we prefer
        // to use `safeTransferFrom` here
        IERC20(token).safeTransferFrom(address(receiver), address(this), amount + fee);
        IAgToken(token).burnSelf(amount, address(this));
        emit FlashLoan(token, amount, receiver);
        return true;
    }

    /// @notice Internal function to compute the fee induced for taking a flash loan of `amount` of `token`
    /// @param token The loan currency
    /// @param amount The amount of tokens lent
    /// @dev This function will revert if the `token` requested is not whitelisted here
    function _flashFee(
        address token,
        uint256 amount
    ) internal view onlyExistingStablecoin(IAgToken(token)) returns (uint256) {
        return (amount * stablecoinMap[IAgToken(token)].flashLoanFee) / BASE_PARAMS;
    }

    // ============================ Treasury Only Function =========================

    /// @inheritdoc IFlashAngle
    function accrueInterestToTreasury(IAgToken stablecoin) external returns (uint256 balance) {
        address treasury = stablecoinMap[stablecoin].treasury;
        if (msg.sender != treasury) revert NotTreasury();
        balance = stablecoin.balanceOf(address(this));
        IERC20(address(stablecoin)).safeTransfer(treasury, balance);
    }

    // =========================== Governance Only Function ========================

    /// @notice Sets the parameters for a given stablecoin
    /// @param stablecoin Stablecoin to change the parameters for
    /// @param _flashLoanFee New flash loan fee for this stablecoin
    /// @param _maxBorrowable Maximum amount that can be borrowed in a single flash loan
    /// @dev Setting a `maxBorrowable` parameter equal to 0 is a way to pause the functionality
    /// @dev Parameters can only be modified for whitelisted stablecoins
    function setFlashLoanParameters(
        IAgToken stablecoin,
        uint64 _flashLoanFee,
        uint256 _maxBorrowable
    ) external onlyExistingStablecoin(stablecoin) {
        if (!core.isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        if (_flashLoanFee > BASE_PARAMS) revert TooHighParameterValue();
        stablecoinMap[stablecoin].flashLoanFee = _flashLoanFee;
        stablecoinMap[stablecoin].maxBorrowable = _maxBorrowable;
        emit FlashLoanParametersUpdated(stablecoin, _flashLoanFee, _maxBorrowable);
    }

    // =========================== CoreBorrow Only Functions =======================

    /// @inheritdoc IFlashAngle
    function addStablecoinSupport(address _treasury) external onlyCore {
        stablecoinMap[IAgToken(ITreasury(_treasury).stablecoin())].treasury = _treasury;
    }

    /// @inheritdoc IFlashAngle
    function removeStablecoinSupport(address _treasury) external onlyCore {
        delete stablecoinMap[IAgToken(ITreasury(_treasury).stablecoin())];
    }

    /// @inheritdoc IFlashAngle
    function setCore(address _core) external onlyCore {
        core = ICoreBorrow(_core);
    }
}

// ============================================================
// FILE: contracts/interfaces/coreModule/IAgTokenMainnet.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IAgTokenMainnet
/// @author Angle Labs, Inc.
interface IAgTokenMainnet {
    function stableMaster() external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/coreModule/ICore.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title ICore
/// @author Angle Labs, Inc.
interface ICore {
    function stablecoinList() external view returns (address[] memory);
}

// ============================================================
// FILE: contracts/interfaces/coreModule/ILiquidityGauge.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

interface ILiquidityGauge {
    function deposit(
        uint256 _value,
        address _addr,
        // solhint-disable-next-line
        bool _claim_rewards
    ) external;

    function withdraw(
        uint256 _value,
        // solhint-disable-next-line
        bool _claim_rewards
    ) external;

    // solhint-disable-next-line
    function claim_rewards(address _addr, address _receiver) external;

    // solhint-disable-next-line
    function claimable_reward(address _addr, address _reward_token) external view returns (uint256 amount);
}

// ============================================================
// FILE: contracts/interfaces/coreModule/IOracleCore.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IOracleCore
/// @author Angle Labs, Inc.
interface IOracleCore {
    function readUpper() external view returns (uint256);

    function readQuoteLower(uint256 baseAmount) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/coreModule/IPerpetualManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IPerpetualManager
/// @author Angle Labs, Inc.
interface IPerpetualManager {
    function totalHedgeAmount() external view returns (uint256);

    function maintenanceMargin() external view returns (uint64);

    function maxLeverage() external view returns (uint64);

    function targetHAHedge() external view returns (uint64);

    function limitHAHedge() external view returns (uint64);

    function lockTime() external view returns (uint64);

    function haBonusMalusDeposit() external view returns (uint64);

    function haBonusMalusWithdraw() external view returns (uint64);

    function xHAFeesDeposit(uint256) external view returns (uint64);

    function yHAFeesDeposit(uint256) external view returns (uint64);

    function xHAFeesWithdraw(uint256) external view returns (uint64);

    function yHAFeesWithdraw(uint256) external view returns (uint64);
}

// ============================================================
// FILE: contracts/interfaces/coreModule/IPoolManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IPoolManager
/// @author Angle Labs, Inc.
interface IPoolManager {
    function feeManager() external view returns (address);

    function strategyList(uint256) external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/coreModule/IStableMaster.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./IPerpetualManager.sol";
import "./IOracleCore.sol";

// Struct to handle all the parameters to manage the fees
// related to a given collateral pool (associated to the stablecoin)
struct MintBurnData {
    // Values of the thresholds to compute the minting fees
    // depending on HA hedge (scaled by `BASE_PARAMS`)
    uint64[] xFeeMint;
    // Values of the fees at thresholds (scaled by `BASE_PARAMS`)
    uint64[] yFeeMint;
    // Values of the thresholds to compute the burning fees
    // depending on HA hedge (scaled by `BASE_PARAMS`)
    uint64[] xFeeBurn;
    // Values of the fees at thresholds (scaled by `BASE_PARAMS`)
    uint64[] yFeeBurn;
    // Max proportion of collateral from users that can be covered by HAs
    // It is exactly the same as the parameter of the same name in `PerpetualManager`, whenever one is updated
    // the other changes accordingly
    uint64 targetHAHedge;
    // Minting fees correction set by the `FeeManager` contract: they are going to be multiplied
    // to the value of the fees computed using the hedge curve
    // Scaled by `BASE_PARAMS`
    uint64 bonusMalusMint;
    // Burning fees correction set by the `FeeManager` contract: they are going to be multiplied
    // to the value of the fees computed using the hedge curve
    // Scaled by `BASE_PARAMS`
    uint64 bonusMalusBurn;
    // Parameter used to limit the number of stablecoins that can be issued using the concerned collateral
    uint256 capOnStableMinted;
}

// Struct to handle all the variables and parameters to handle SLPs in the protocol
// including the fraction of interests they receive or the fees to be distributed to
// them
struct SLPData {
    // Last timestamp at which the `sanRate` has been updated for SLPs
    uint256 lastBlockUpdated;
    // Fees accumulated from previous blocks and to be distributed to SLPs
    uint256 lockedInterests;
    // Max interests used to update the `sanRate` in a single block
    // Should be in collateral token base
    uint256 maxInterestsDistributed;
    // Amount of fees left aside for SLPs and that will be distributed
    // when the protocol is collateralized back again
    uint256 feesAside;
    // Part of the fees normally going to SLPs that is left aside
    // before the protocol is collateralized back again (depends on collateral ratio)
    // Updated by keepers and scaled by `BASE_PARAMS`
    uint64 slippageFee;
    // Portion of the fees from users minting and burning
    // that goes to SLPs (the rest goes to surplus)
    uint64 feesForSLPs;
    // Slippage factor that's applied to SLPs exiting (depends on collateral ratio)
    // If `slippage = BASE_PARAMS`, SLPs can get nothing, if `slippage = 0` they get their full claim
    // Updated by keepers and scaled by `BASE_PARAMS`
    uint64 slippage;
    // Portion of the interests from lending
    // that goes to SLPs (the rest goes to surplus)
    uint64 interestsForSLPs;
}

/// @title IStableMaster
/// @author Angle Labs, Inc.
interface IStableMaster {
    function agToken() external view returns (address);

    function updateStocksUsers(uint256 amount, address poolManager) external;

    function collateralMap(
        address poolManager
    )
        external
        view
        returns (
            address token,
            address sanToken,
            IPerpetualManager perpetualManager,
            IOracleCore oracle,
            uint256 stocksUsers,
            uint256 sanRate,
            uint256 collatBase,
            SLPData memory slpData,
            MintBurnData memory feeData
        );

    function paused(bytes32) external view returns (bool);

    function deposit(uint256 amount, address user, address poolManager) external;

    function withdraw(uint256 amount, address burner, address dest, address poolManager) external;
}

// ============================================================
// FILE: contracts/interfaces/external/create2/ImmutableCreate2Factory.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

interface ImmutableCreate2Factory {
    function safeCreate2(bytes32 salt, bytes memory initCode) external payable returns (address deploymentAddress);

    function findCreate2Address(
        bytes32 salt,
        bytes calldata initCode
    ) external view returns (address deploymentAddress);

    function findCreate2AddressViaHash(
        bytes32 salt,
        bytes32 initCodeHash
    ) external view returns (address deploymentAddress);
}

// ============================================================
// FILE: contracts/interfaces/external/IERC1271.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.12;

/// @title Interface for verifying contract-based account signatures
/// @notice Interface that verifies provided signature for the data
/// @dev Interface defined by EIP-1271
interface IERC1271 {
    /// @notice Returns whether the provided signature is valid for the provided data
    /// @dev MUST return the bytes4 magic value 0x1626ba7e when function passes.
    /// MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5).
    /// MUST allow external calls.
    /// @param hash Hash of the data to be signed
    /// @param signature Signature byte array associated with _data
    /// @return magicValue The bytes4 magic value 0x1626ba7e
    function isValidSignature(bytes32 hash, bytes memory signature) external view returns (bytes4 magicValue);
}

// ============================================================
// FILE: contracts/interfaces/external/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @notice Minimal IERC4646 tokenized Vault interface.
/// @author Forked from Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/mixins/ERC4626.sol)
/// @dev Do not use in production! ERC-4626 is still in the review stage and is subject to change.
interface IERC4626 {
    event Deposit(address indexed from, address indexed to, uint256 amount, uint256 shares);
    event Withdraw(address indexed from, address indexed to, uint256 amount, uint256 shares);

    /// @notice Transfers a given amount of asset to the reactor and mint shares accordingly
    /// @param amount Given amount of asset
    /// @param to Address to mint shares to
    /// @return shares Amount of shares minted to `to`
    function deposit(uint256 amount, address to) external returns (uint256 shares);

    /// @notice Mints a given amount of shares to the reactor and transfer assets accordingly
    /// @param shares Given amount of shares
    /// @param to Address to mint shares to
    /// @return amount Amount of `asset` taken to the `msg.sender` to mint `shares`
    function mint(uint256 shares, address to) external returns (uint256 amount);

    /// @notice Transfers a given amount of asset from the reactor and burn shares accordingly
    /// @param amount Given amount of asset
    /// @param to Address to transfer assets to
    /// @param from Address to burn shares from
    /// @return shares Amount of shares burnt in the operation
    function withdraw(uint256 amount, address to, address from) external returns (uint256 shares);

    /// @notice Burns a given amount of shares to the reactor and transfer assets accordingly
    /// @param shares Given amount of shares
    /// @param to Address to transfer assets to
    /// @param from Address to burn shares from
    /// @return amount Amount of assets redeemed in the operation
    function redeem(uint256 shares, address to, address from) external returns (uint256 amount);

    /// @notice Returns the total assets managed by this reactor
    function totalAssets() external view returns (uint256);

    /// @notice Converts an amount of assets to the corresponding amount of reactor shares
    /// @param assets Amount of asset to convert
    /// @return Shares corresponding to the amount of assets obtained
    function convertToShares(uint256 assets) external view returns (uint256);

    /// @notice Converts an amount of shares to its current value in asset
    /// @param shares Amount of shares to convert
    /// @return Amount of assets corresponding to the amount of assets given
    function convertToAssets(uint256 shares) external view returns (uint256);

    /// @notice Computes how many shares one would get by depositing `assets`
    /// @param assets Amount of asset to convert
    function previewDeposit(uint256 assets) external view returns (uint256);

    /// @notice Computes how many assets one would need to mint `shares`
    /// @param shares Amount of shares required
    function previewMint(uint256 shares) external view returns (uint256);

    /// @notice Computes how many shares one would need to withdraw assets
    /// @param assets Amount of asset to withdraw
    function previewWithdraw(uint256 assets) external view returns (uint256);

    /// @notice Computes how many assets one would get by burning shares
    /// @param shares Amount of shares to burn
    function previewRedeem(uint256 shares) external view returns (uint256);

    /// @notice Max deposit allowed for a user
    /// @param user Address of the user to check
    function maxDeposit(address user) external returns (uint256);

    /// @notice Max mint allowed for a user
    /// @param user Address of the user to check
    function maxMint(address user) external returns (uint256);

    /// @notice Max withdraw allowed for a user
    /// @param user Address of the user to check
    function maxWithdraw(address user) external returns (uint256);

    /// @notice Max redeem allowed for a user
    /// @param user Address of the user to check
    function maxRedeem(address user) external returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/external/IWETH9.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Interface for WETH9
interface IWETH9 is IERC20 {
    /// @notice Deposit ether to get wrapped ether
    function deposit() external payable;

    /// @notice Withdraw wrapped ether to get ether
    function withdraw(uint256) external;
}

// ============================================================
// FILE: contracts/interfaces/external/layerZero/ILayerZeroEndpoint.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

import "./ILayerZeroUserApplicationConfig.sol";

interface ILayerZeroEndpoint is ILayerZeroUserApplicationConfig {
    // @notice send a LayerZero message to the specified address at a LayerZero endpoint.
    // @param _dstChainId - the destination chain identifier
    // @param _destination - the address on destination chain (in bytes). address length/format may vary by chains
    // @param _payload - a custom bytes payload to send to the destination contract
    // @param _refundAddress - if the source transaction is cheaper than the amount of value passed, refund the additional amount to this address
    // @param _zroPaymentAddress - the address of the ZRO token holder who would pay for the transaction
    // @param _adapterParams - parameters for custom functionality. e.g. receive airdropped native gas from the relayer on destination
    function send(
        uint16 _dstChainId,
        bytes calldata _destination,
        bytes calldata _payload,
        address payable _refundAddress,
        address _zroPaymentAddress,
        bytes calldata _adapterParams
    ) external payable;

    // @notice used by the messaging library to publish verified payload
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source contract (as bytes) at the source chain
    // @param _dstAddress - the address on destination chain
    // @param _nonce - the unbound message ordering nonce
    // @param _gasLimit - the gas limit for external contract execution
    // @param _payload - verified payload to send to the destination contract
    function receivePayload(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        address _dstAddress,
        uint64 _nonce,
        uint256 _gasLimit,
        bytes calldata _payload
    ) external;

    // @notice get the inboundNonce of a lzApp from a source chain which could be EVM or non-EVM chain
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source chain contract address
    function getInboundNonce(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (uint64);

    // @notice get the outboundNonce from this source chain which, consequently, is always an EVM
    // @param _srcAddress - the source chain contract address
    function getOutboundNonce(uint16 _dstChainId, address _srcAddress) external view returns (uint64);

    // @notice gets a quote in source native gas, for the amount that send() requires to pay for message delivery
    // @param _dstChainId - the destination chain identifier
    // @param _userApplication - the user app address on this EVM chain
    // @param _payload - the custom message to send over LayerZero
    // @param _payInZRO - if false, user app pays the protocol fee in native token
    // @param _adapterParam - parameters for the adapter service, e.g. send some dust native token to dstChain
    function estimateFees(
        uint16 _dstChainId,
        address _userApplication,
        bytes calldata _payload,
        bool _payInZRO,
        bytes calldata _adapterParam
    ) external view returns (uint256 nativeFee, uint256 zroFee);

    // @notice get this Endpoint's immutable source identifier
    function getChainId() external view returns (uint16);

    // @notice the interface to retry failed message on this Endpoint destination
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source chain contract address
    // @param _payload - the payload to be retried
    function retryPayload(uint16 _srcChainId, bytes calldata _srcAddress, bytes calldata _payload) external;

    // @notice query if any STORED payload (message blocking) at the endpoint.
    // @param _srcChainId - the source chain identifier
    // @param _srcAddress - the source chain contract address
    function hasStoredPayload(uint16 _srcChainId, bytes calldata _srcAddress) external view returns (bool);

    // @notice query if the _libraryAddress is valid for sending msgs.
    // @param _userApplication - the user app address on this EVM chain
    function getSendLibraryAddress(address _userApplication) external view returns (address);

    // @notice query if the _libraryAddress is valid for receiving msgs.
    // @param _userApplication - the user app address on this EVM chain
    function getReceiveLibraryAddress(address _userApplication) external view returns (address);

    // @notice query if the non-reentrancy guard for send() is on
    // @return true if the guard is on. false otherwise
    function isSendingPayload() external view returns (bool);

    // @notice query if the non-reentrancy guard for receive() is on
    // @return true if the guard is on. false otherwise
    function isReceivingPayload() external view returns (bool);

    // @notice get the configuration of the LayerZero messaging library of the specified version
    // @param _version - messaging library version
    // @param _chainId - the chainId for the pending config change
    // @param _userApplication - the contract address of the user application
    // @param _configType - type of configuration. every messaging library has its own convention.
    function getConfig(
        uint16 _version,
        uint16 _chainId,
        address _userApplication,
        uint256 _configType
    ) external view returns (bytes memory);

    // @notice get the send() LayerZero messaging library version
    // @param _userApplication - the contract address of the user application
    function getSendVersion(address _userApplication) external view returns (uint16);

    // @notice get the lzReceive() LayerZero messaging library version
    // @param _userApplication - the contract address of the user application
    function getReceiveVersion(address _userApplication) external view returns (uint16);
}

// ============================================================
// FILE: contracts/interfaces/external/layerZero/ILayerZeroReceiver.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface ILayerZeroReceiver {
    // @notice LayerZero endpoint will invoke this function to deliver the message on the destination
    // @param _srcChainId - the source endpoint identifier
    // @param _srcAddress - the source sending contract address from the source chain
    // @param _nonce - the ordered message nonce
    // @param _payload - the signed payload is the UA bytes has encoded to be sent
    function lzReceive(uint16 _srcChainId, bytes calldata _srcAddress, uint64 _nonce, bytes calldata _payload) external;
}

// ============================================================
// FILE: contracts/interfaces/external/layerZero/ILayerZeroUserApplicationConfig.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface ILayerZeroUserApplicationConfig {
    // @notice set the configuration of the LayerZero messaging library of the specified version
    // @param _version - messaging library version
    // @param _chainId - the chainId for the pending config change
    // @param _configType - type of configuration. every messaging library has its own convention.
    // @param _config - configuration in the bytes. can encode arbitrary content.
    function setConfig(uint16 _version, uint16 _chainId, uint256 _configType, bytes calldata _config) external;

    // @notice set the send() LayerZero messaging library version to _version
    // @param _version - new messaging library version
    function setSendVersion(uint16 _version) external;

    // @notice set the lzReceive() LayerZero messaging library version to _version
    // @param _version - new messaging library version
    function setReceiveVersion(uint16 _version) external;

    // @notice Only when the UA needs to resume the message flow in blocking mode and clear the stored payload
    // @param _srcChainId - the chainId of the source chain
    // @param _srcAddress - the contract address of the source contract at the source chain
    function forceResumeReceive(uint16 _srcChainId, bytes calldata _srcAddress) external;
}

// ============================================================
// FILE: contracts/interfaces/external/lido/IStETH.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IStETH
/// @author Angle Labs, Inc.
/// @notice Interface for the `StETH` contract
/// @dev This interface only contains functions of the `StETH` which are called by other contracts
/// of this module
interface IStETH {
    function getPooledEthByShares(uint256 _sharesAmount) external view returns (uint256);

    event Submitted(address sender, uint256 amount, address referral);

    function submit(address) external payable returns (uint256);

    function getSharesByPooledEth(uint256 _ethAmount) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/external/lido/IWStETH.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IWStETH
/// @author Angle Labs, Inc.
/// @notice Interface for the `WStETH` contract
/// @dev This interface only contains functions of the `WStETH` which are called by other contracts
/// of this module
interface IWStETH {
    function wrap(uint256 _stETHAmount) external returns (uint256);

    function stETH() external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/external/uniswap/IUniswapRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

struct ExactInputParams {
    bytes path;
    address recipient;
    uint256 deadline;
    uint256 amountIn;
    uint256 amountOutMinimum;
}

/// @title Router token swapping functionality
/// @notice Functions for swapping tokens via Uniswap V3
interface IUniswapV3Router {
    /// @notice Swaps `amountIn` of one token for as much as possible of another along the specified path
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactInputParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);
}

/// @title Router for price estimation functionality
/// @notice Functions for getting the price of one token with respect to another using Uniswap V2
/// @dev This interface is only used for non critical elements of the protocol
interface IUniswapV2Router {
    /// @notice Given an input asset amount, returns the maximum output amount of the
    /// other asset (accounting for fees) given reserves.
    /// @param path Addresses of the pools used to get prices
    function getAmountsOut(uint256 amountIn, address[] calldata path) external view returns (uint256[] memory amounts);

    function swapExactTokensForTokens(
        uint256 swapAmount,
        uint256 minExpected,
        address[] calldata path,
        address receiver,
        uint256 swapDeadline
    ) external;
}

// ============================================================
// FILE: contracts/interfaces/external/uniswap/IUniswapV3Pool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Pool state that never changes
/// @notice These parameters are fixed for a pool forever, i.e., the methods will always return the same values
interface IUniswapV3Pool {
    /// @notice The first of the two tokens of the pool, sorted by address
    /// @return The token contract address
    function token0() external view returns (address);

    /// @notice The second of the two tokens of the pool, sorted by address
    /// @return The token contract address
    function token1() external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/governance/IVeBoostProxy.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IVeBoostProxy
/// @author Angle Labs, Inc.
/// @notice Interface for the `VeBoostProxy` contract
/// @dev This interface only contains functions of the contract which are called by other contracts
/// of this module
/// @dev The `veBoostProxy` contract used by Angle is a full fork of Curve Finance implementation
interface IVeBoostProxy {
    /// @notice Reads the adjusted veANGLE balance of an address (adjusted by delegation)
    //solhint-disable-next-line
    function adjusted_balance_of(address) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IAgToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

/// @title IAgToken
/// @author Angle Labs, Inc.
/// @notice Interface for the stablecoins `AgToken` contracts
/// @dev This interface only contains functions of the `AgToken` contract which are called by other contracts
/// of this module or of the first module of the Angle Protocol
interface IAgToken is IERC20Upgradeable {
    // ======================= Minter Role Only Functions ===========================

    /// @notice Lets the `StableMaster` contract or another whitelisted contract mint agTokens
    /// @param account Address to mint to
    /// @param amount Amount to mint
    /// @dev The contracts allowed to issue agTokens are the `StableMaster` contract, `VaultManager` contracts
    /// associated to this stablecoin as well as the flash loan module (if activated) and potentially contracts
    /// whitelisted by governance
    function mint(address account, uint256 amount) external;

    /// @notice Burns `amount` tokens from a `burner` address after being asked to by `sender`
    /// @param amount Amount of tokens to burn
    /// @param burner Address to burn from
    /// @param sender Address which requested the burn from `burner`
    /// @dev This method is to be called by a contract with the minter right after being requested
    /// to do so by a `sender` address willing to burn tokens from another `burner` address
    /// @dev The method checks the allowance between the `sender` and the `burner`
    function burnFrom(uint256 amount, address burner, address sender) external;

    /// @notice Burns `amount` tokens from a `burner` address
    /// @param amount Amount of tokens to burn
    /// @param burner Address to burn from
    /// @dev This method is to be called by a contract with a minter right on the AgToken after being
    /// requested to do so by an address willing to burn tokens from its address
    function burnSelf(uint256 amount, address burner) external;

    // ========================= Treasury Only Functions ===========================

    /// @notice Adds a minter in the contract
    /// @param minter Minter address to add
    /// @dev Zero address checks are performed directly in the `Treasury` contract
    function addMinter(address minter) external;

    /// @notice Removes a minter from the contract
    /// @param minter Minter address to remove
    /// @dev This function can also be called by a minter wishing to revoke itself
    function removeMinter(address minter) external;

    /// @notice Sets a new treasury contract
    /// @param _treasury New treasury address
    function setTreasury(address _treasury) external;

    // ========================= External functions ================================

    /// @notice Checks whether an address has the right to mint agTokens
    /// @param minter Address for which the minting right should be checked
    /// @return Whether the address has the right to mint agTokens or not
    function isMinter(address minter) external view returns (bool);

    /// @notice Get the associated treasury
    function treasury() external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/IAgTokenSideChainMultiBridge.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

/// @title IAgTokenSideChainMultiBridge
/// @author Angle Labs, Inc.
/// @notice Interface for the canonical `AgToken` contracts
/// @dev This interface only contains functions useful for bridge tokens to interact with the canonical token
interface IAgTokenSideChainMultiBridge is IERC20PermitUpgradeable, IERC20Upgradeable {
    /// @notice Mints the canonical token from a supported bridge token
    /// @param bridgeToken Bridge token to use to mint
    /// @param amount Amount of bridge tokens to send
    /// @param to Address to which the stablecoin should be sent
    /// @return Amount of the canonical stablecoin actually minted
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapIn(address bridgeToken, uint256 amount, address to) external returns (uint256);

    /// @notice Burns the canonical token in exchange for a bridge token
    /// @param bridgeToken Bridge token required
    /// @param amount Amount of canonical tokens to burn
    /// @param to Address to which the bridge token should be sent
    /// @return Amount of bridge tokens actually sent back
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapOut(address bridgeToken, uint256 amount, address to) external returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IAngleRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title IAngleRouter
/// @author Angle Labs, Inc.
/// @notice Interface for the `AngleRouter` contract
/// @dev This interface only contains functions of the `AngleRouter01` contract which are called by other contracts
/// of this module
interface IAngleRouter {
    function mint(
        address user,
        uint256 amount,
        uint256 minStableAmount,
        address stablecoin,
        address collateral
    ) external;

    function burn(address user, uint256 amount, uint256 minAmountOut, address stablecoin, address collateral) external;

    function mapPoolManagers(
        address stableMaster,
        address collateral
    ) external view returns (address poolManager, address perpetualManager, address sanToken, address gauge);
}

// ============================================================
// FILE: contracts/interfaces/IAngleRouterSidechain.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @notice Action types
enum ActionType {
    transfer,
    wrap,
    wrapNative,
    sweep,
    sweepNative,
    unwrap,
    unwrapNative,
    swapIn,
    swapOut,
    uniswapV3,
    oneInch,
    claimRewards,
    gaugeDeposit,
    borrower
}

/// @notice Data needed to get permits
struct PermitType {
    address token;
    address owner;
    uint256 value;
    uint256 deadline;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

/// @title IAngleRouterSidechain
/// @author Angle Labs, Inc.
/// @notice Interface for the `AngleRouter` contract on other chains
interface IAngleRouterSidechain {
    function mixer(PermitType[] memory paramsPermit, ActionType[] memory actions, bytes[] calldata data) external;
}

// ============================================================
// FILE: contracts/interfaces/ICoreBorrow.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

/// @title ICoreBorrow
/// @author Angle Labs, Inc.
/// @notice Interface for the `CoreBorrow` contract
/// @dev This interface only contains functions of the `CoreBorrow` contract which are called by other contracts
/// of this module
interface ICoreBorrow {
    /// @notice Checks if an address corresponds to a treasury of a stablecoin with a flash loan
    /// module initialized on it
    /// @param treasury Address to check
    /// @return Whether the address has the `FLASHLOANER_TREASURY_ROLE` or not
    function isFlashLoanerTreasury(address treasury) external view returns (bool);

    /// @notice Checks whether an address is governor of the Angle Protocol or not
    /// @param admin Address to check
    /// @return Whether the address has the `GOVERNOR_ROLE` or not
    function isGovernor(address admin) external view returns (bool);

    /// @notice Checks whether an address is governor or a guardian of the Angle Protocol or not
    /// @param admin Address to check
    /// @return Whether the address has the `GUARDIAN_ROLE` or not
    /// @dev Governance should make sure when adding a governor to also give this governor the guardian
    /// role by calling the `addGovernor` function
    function isGovernorOrGuardian(address admin) external view returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/IFlashAngle.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./IAgToken.sol";
import "./ICoreBorrow.sol";

/// @title IFlashAngle
/// @author Angle Labs, Inc.
/// @notice Interface for the `FlashAngle` contract
/// @dev This interface only contains functions of the contract which are called by other contracts
/// of this module
interface IFlashAngle {
    /// @notice Reference to the `CoreBorrow` contract managing the FlashLoan module
    function core() external view returns (ICoreBorrow);

    /// @notice Sends the fees taken from flash loans to the treasury contract associated to the stablecoin
    /// @param stablecoin Stablecoin from which profits should be sent
    /// @return balance Amount of profits sent
    /// @dev This function can only be called by the treasury contract
    function accrueInterestToTreasury(IAgToken stablecoin) external returns (uint256 balance);

    /// @notice Adds support for a stablecoin
    /// @param _treasury Treasury associated to the stablecoin to add support for
    /// @dev This function can only be called by the `CoreBorrow` contract
    function addStablecoinSupport(address _treasury) external;

    /// @notice Removes support for a stablecoin
    /// @param _treasury Treasury associated to the stablecoin to remove support for
    /// @dev This function can only be called by the `CoreBorrow` contract
    function removeStablecoinSupport(address _treasury) external;

    /// @notice Sets a new core contract
    /// @param _core Core contract address to set
    /// @dev This function can only be called by the `CoreBorrow` contract
    function setCore(address _core) external;
}

// ============================================================
// FILE: contracts/interfaces/IKeeperRegistry.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

/// @title IKeeperRegistry
/// @author Angle Labs, Inc.
interface IKeeperRegistry {
    /// @notice Checks whether an address is whitelisted during oracle updates
    /// @param caller Address for which the whitelist should be checked
    /// @return Whether the address is trusted or not
    function isTrusted(address caller) external view returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/ILiquidityGauge.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

interface ILiquidityGauge {
    function deposit(
        uint256 _value,
        address _addr,
        // solhint-disable-next-line
        bool _claim_rewards
    ) external;

    function withdraw(
        uint256 _value,
        // solhint-disable-next-line
        bool _claim_rewards
    ) external;

    // solhint-disable-next-line
    function claim_rewards(address _addr, address _receiver) external;

    // solhint-disable-next-line
    function claimable_reward(address _addr, address _reward_token) external view returns (uint256 amount);

    /// @dev Only for testing purposes
    // solhint-disable-next-line
    function deposit_reward_token(address _rewardToken, uint256 _amount) external;
}

// ============================================================
// FILE: contracts/interfaces/IOracle.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./ITreasury.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

/// @title IOracle
/// @author Angle Labs, Inc.
/// @notice Interface for the `Oracle` contract
/// @dev This interface only contains functions of the contract which are called by other contracts
/// of this module
interface IOracle {
    /// @notice Reads the rate from the Chainlink circuit and other data provided
    /// @return quoteAmount The current rate between the in-currency and out-currency in the base
    /// of the out currency
    /// @dev For instance if the out currency is EUR (and hence agEUR), then the base of the returned
    /// value is 10**18
    function read() external view returns (uint256);

    /// @notice Changes the treasury contract
    /// @param _treasury Address of the new treasury contract
    /// @dev This function can be called by an approved `VaultManager` contract which can call
    /// this function after being requested to do so by a `treasury` contract
    /// @dev In some situations (like reactor contracts), the `VaultManager` may not directly be linked
    /// to the `oracle` contract and as such we may need governors to be able to call this function as well
    function setTreasury(address _treasury) external;

    /// @notice Reference to the `treasury` contract handling this `VaultManager`
    function treasury() external view returns (ITreasury treasury);

    /// @notice Array with the list of Chainlink feeds in the order in which they are read
    function circuitChainlink() external view returns (AggregatorV3Interface[] memory);
}

// ============================================================
// FILE: contracts/interfaces/ISwapper.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title ISwapper
/// @author Angle Labs, Inc.
/// @notice Interface for Swapper contracts
/// @dev This interface defines the key functions `Swapper` contracts should have when interacting with
/// Angle
interface ISwapper {
    /// @notice Notifies a contract that an address should be given `outToken` from `inToken`
    /// @param inToken Address of the token received
    /// @param outToken Address of the token to obtain
    /// @param outTokenRecipient Address to which the outToken should be sent
    /// @param outTokenOwed Minimum amount of outToken the `outTokenRecipient` address should have at the end of the call
    /// @param inTokenObtained Amount of collateral obtained by a related address prior
    /// to the call to this function
    /// @param data Extra data needed (to encode Uniswap swaps for instance)
    function swap(
        IERC20 inToken,
        IERC20 outToken,
        address outTokenRecipient,
        uint256 outTokenOwed,
        uint256 inTokenObtained,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: contracts/interfaces/ITreasury.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./IAgToken.sol";
import "./ICoreBorrow.sol";
import "./IFlashAngle.sol";

/// @title ITreasury
/// @author Angle Labs, Inc.
/// @notice Interface for the `Treasury` contract
/// @dev This interface only contains functions of the `Treasury` which are called by other contracts
/// of this module
interface ITreasury {
    /// @notice Stablecoin handled by this `treasury` contract
    function stablecoin() external view returns (IAgToken);

    /// @notice Checks whether a given address has the  governor role
    /// @param admin Address to check
    /// @return Whether the address has the governor role
    /// @dev Access control is only kept in the `CoreBorrow` contract
    function isGovernor(address admin) external view returns (bool);

    /// @notice Checks whether a given address has the guardian or the governor role
    /// @param admin Address to check
    /// @return Whether the address has the guardian or the governor role
    /// @dev Access control is only kept in the `CoreBorrow` contract which means that this function
    /// queries the `CoreBorrow` contract
    function isGovernorOrGuardian(address admin) external view returns (bool);

    /// @notice Checks whether a given address has well been initialized in this contract
    /// as a `VaultManager`
    /// @param _vaultManager Address to check
    /// @return Whether the address has been initialized or not
    function isVaultManager(address _vaultManager) external view returns (bool);

    /// @notice Sets a new flash loan module for this stablecoin
    /// @param _flashLoanModule Reference to the new flash loan module
    /// @dev This function removes the minting right to the old flash loan module and grants
    /// it to the new module
    function setFlashLoanModule(address _flashLoanModule) external;

    /// @notice Gets the vault manager list
    function vaultManagerList(uint256 i) external returns (address);
}

// ============================================================
// FILE: contracts/interfaces/IVaultManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/interfaces/IERC721Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./ITreasury.sol";
import "./IOracle.sol";

// ========================= Key Structs and Enums =============================

/// @notice Parameters associated to a given `VaultManager` contract: these all correspond
/// to parameters which signification is detailed in the `VaultManagerStorage` file
struct VaultParameters {
    uint256 debtCeiling;
    uint64 collateralFactor;
    uint64 targetHealthFactor;
    uint64 interestRate;
    uint64 liquidationSurcharge;
    uint64 maxLiquidationDiscount;
    bool whitelistingActivated;
    uint256 baseBoost;
}

/// @notice Data stored to track someone's loan (or equivalently called position)
struct Vault {
    // Amount of collateral deposited in the vault, in collateral decimals. For example, if the collateral
    // is USDC with 6 decimals, then `collateralAmount` will be in base 10**6
    uint256 collateralAmount;
    // Normalized value of the debt (that is to say of the stablecoins borrowed). It is expressed
    // in the base of Angle stablecoins (i.e. `BASE_TOKENS = 10**18`)
    uint256 normalizedDebt;
}

/// @notice For a given `vaultID`, this encodes a liquidation opportunity that is to say details about the maximum
/// amount that could be repaid by liquidating the position
/// @dev All the values are null in the case of a vault which cannot be liquidated under these conditions
struct LiquidationOpportunity {
    // Maximum stablecoin amount that can be repaid upon liquidating the vault
    uint256 maxStablecoinAmountToRepay;
    // Collateral amount given to the person in the case where the maximum amount to repay is given
    uint256 maxCollateralAmountGiven;
    // Threshold value of stablecoin amount to repay: it is ok for a liquidator to repay below threshold,
    // but if this threshold is non null and the liquidator wants to repay more than threshold, it should repay
    // the max stablecoin amount given in this vault
    uint256 thresholdRepayAmount;
    // Discount proposed to the liquidator on the collateral
    uint256 discount;
    // Amount of debt in the vault
    uint256 currentDebt;
}

/// @notice Data stored during a liquidation process to keep in memory what's due to a liquidator and some
/// essential data for vaults being liquidated
struct LiquidatorData {
    // Current amount of stablecoins the liquidator should give to the contract
    uint256 stablecoinAmountToReceive;
    // Current amount of collateral the contract should give to the liquidator
    uint256 collateralAmountToGive;
    // Bad debt accrued across the liquidation process
    uint256 badDebtFromLiquidation;
    // Oracle value (in stablecoin base) at the time of the liquidation
    uint256 oracleValue;
    // Value of the `interestAccumulator` at the time of the call
    uint256 newInterestAccumulator;
}

/// @notice Data to track during a series of action the amount to give or receive in stablecoins and collateral
/// to the caller or associated addresses
struct PaymentData {
    // Stablecoin amount the contract should give
    uint256 stablecoinAmountToGive;
    // Stablecoin amount owed to the contract
    uint256 stablecoinAmountToReceive;
    // Collateral amount the contract should give
    uint256 collateralAmountToGive;
    // Collateral amount owed to the contract
    uint256 collateralAmountToReceive;
}

/// @notice Actions possible when composing calls to the different entry functions proposed
enum ActionType {
    createVault,
    closeVault,
    addCollateral,
    removeCollateral,
    repayDebt,
    borrow,
    getDebtIn,
    permit
}

// ========================= Interfaces =============================

/// @title IVaultManagerFunctions
/// @author Angle Labs, Inc.
/// @notice Interface for the `VaultManager` contract
/// @dev This interface only contains functions of the contract which are called by other contracts
/// of this module (without getters)
interface IVaultManagerFunctions {
    /// @notice Accrues interest accumulated across all vaults to the surplus and sends the surplus to the treasury
    /// @return surplusValue Value of the surplus communicated to the `Treasury`
    /// @return badDebtValue Value of the bad debt communicated to the `Treasury`
    /// @dev `surplus` and `badDebt` should be reset to 0 once their current value have been given to the `treasury` contract
    function accrueInterestToTreasury() external returns (uint256 surplusValue, uint256 badDebtValue);

    /// @notice Removes debt from a vault after being requested to do so by another `VaultManager` contract
    /// @param vaultID ID of the vault to remove debt from
    /// @param amountStablecoins Amount of stablecoins to remove from the debt: this amount is to be converted to an
    /// internal debt amount
    /// @param senderBorrowFee Borrowing fees from the contract which requested this: this is to make sure that people are not
    /// arbitraging difference in minting fees
    /// @param senderRepayFee Repay fees from the contract which requested this: this is to make sure that people are not arbitraging
    /// differences in repay fees
    /// @dev This function can only be called from a vaultManager registered in the same Treasury
    function getDebtOut(
        uint256 vaultID,
        uint256 amountStablecoins,
        uint256 senderBorrowFee,
        uint256 senderRepayFee
    ) external;

    /// @notice Gets the current debt of a vault
    /// @param vaultID ID of the vault to check
    /// @return Debt of the vault
    function getVaultDebt(uint256 vaultID) external view returns (uint256);

    /// @notice Gets the total debt across all vaults
    /// @return Total debt across all vaults, taking into account the interest accumulated
    /// over time
    function getTotalDebt() external view returns (uint256);

    /// @notice Sets the treasury contract
    /// @param _treasury New treasury contract
    /// @dev All required checks when setting up a treasury contract are performed in the contract
    /// calling this function
    function setTreasury(address _treasury) external;

    /// @notice Creates a vault
    /// @param toVault Address for which the va
    /// @return vaultID ID of the vault created
    /// @dev This function just creates the vault without doing any collateral or
    function createVault(address toVault) external returns (uint256);

    /// @notice Allows composability between calls to the different entry points of this module. Any user calling
    /// this function can perform any of the allowed actions in the order of their choice
    /// @param actions Set of actions to perform
    /// @param datas Data to be decoded for each action: it can include like the `vaultID` or the `stablecoinAmount` to borrow
    /// @param from Address from which stablecoins will be taken if one action includes burning stablecoins. This address
    /// should either be the `msg.sender` or be approved by the latter
    /// @param to Address to which stablecoins and/or collateral will be sent in case of
    /// @param who Address of the contract to handle in case of repayment of stablecoins from received collateral
    /// @param repayData Data to pass to the repayment contract in case of
    /// @return paymentData Struct containing the accounting changes from the protocol's perspective (like how much of collateral
    /// or how much has been received). Note that the values in the struct are not aggregated and you could have in the output
    /// a positive amount of stablecoins to receive as well as a positive amount of stablecoins to give
    /// @dev This function is optimized to reduce gas cost due to payment from or to the user and that expensive calls
    /// or computations (like `oracleValue`) are done only once
    /// @dev When specifying `vaultID` in `data`, it is important to know that if you specify `vaultID = 0`, it will simply
    /// use the latest `vaultID`. This is the default behavior, and unless you're engaging into some complex protocol actions
    /// it is encouraged to use `vaultID = 0` only when the first action of the batch is `createVault`
    function angle(
        ActionType[] memory actions,
        bytes[] memory datas,
        address from,
        address to,
        address who,
        bytes memory repayData
    ) external returns (PaymentData memory paymentData);

    /// @notice This function is a wrapper built on top of the function above. It enables users to interact with the contract
    /// without having to provide `who` and `repayData` parameters
    function angle(
        ActionType[] memory actions,
        bytes[] memory datas,
        address from,
        address to
    ) external returns (PaymentData memory paymentData);

    /// @notice Initializes the `VaultManager` contract
    /// @param _treasury Treasury address handling the contract
    /// @param _collateral Collateral supported by this contract
    /// @param _oracle Oracle contract used
    /// @param _symbol Symbol used to define the `VaultManager` name and symbol
    /// @dev The parameters and the oracle are the only elements which could be modified once the
    /// contract has been initialized
    /// @dev For the contract to be fully initialized, governance needs to set the parameters for the liquidation
    /// boost
    function initialize(
        ITreasury _treasury,
        IERC20 _collateral,
        IOracle _oracle,
        VaultParameters calldata params,
        string memory _symbol
    ) external;

    /// @notice Minimum amount of debt a vault can have, expressed in `BASE_TOKENS` that is to say the base of the agTokens
    function dust() external view returns (uint256);

    /// @notice Pauses external permissionless functions of the contract
    function togglePause() external;
}

/// @title IVaultManagerStorage
/// @author Angle Labs, Inc.
/// @notice Interface for the `VaultManager` contract
/// @dev This interface contains getters of the contract's public variables used by other contracts
/// of this module
interface IVaultManagerStorage {
    /// @notice Encodes the maximum ratio stablecoin/collateral a vault can have before being liquidated. It's what
    /// determines the minimum collateral ratio of a position
    function collateralFactor() external view returns (uint64);

    /// @notice Stablecoin handled by this contract. Another `VaultManager` contract could have
    /// the same rights as this `VaultManager` on the stablecoin contract
    function stablecoin() external view returns (IAgToken);

    /// @notice Reference to the `treasury` contract handling this `VaultManager`
    function treasury() external view returns (ITreasury);

    /// @notice Oracle contract to get access to the price of the collateral with respect to the stablecoin
    function oracle() external view returns (IOracle);

    /// @notice The `interestAccumulator` variable keeps track of the interest that should accrue to the protocol.
    /// The stored value is not necessarily the true value: this one is recomputed every time an action takes place
    /// within the protocol. It is in base `BASE_INTEREST`
    function interestAccumulator() external view returns (uint256);

    /// @notice Reference to the collateral handled by this `VaultManager`
    function collateral() external view returns (IERC20);

    /// @notice Total normalized amount of stablecoins borrowed, not taking into account the potential bad debt accumulated
    /// This value is expressed in the base of Angle stablecoins (`BASE_TOKENS = 10**18`)
    function totalNormalizedDebt() external view returns (uint256);

    /// @notice Maximum amount of stablecoins that can be issued with this contract. It is expressed in `BASE_TOKENS`
    function debtCeiling() external view returns (uint256);

    /// @notice Maps a `vaultID` to its data (namely collateral amount and normalized debt)
    function vaultData(uint256 vaultID) external view returns (uint256 collateralAmount, uint256 normalizedDebt);

    /// @notice ID of the last vault created. The `vaultIDCount` variables serves as a counter to generate a unique
    /// `vaultID` for each vault: it is like `tokenID` in basic ERC721 contracts
    function vaultIDCount() external view returns (uint256);
}

/// @title IVaultManager
/// @author Angle Labs, Inc.
/// @notice Interface for the `VaultManager` contract
interface IVaultManager is IVaultManagerFunctions, IVaultManagerStorage, IERC721Metadata {
    function isApprovedOrOwner(address spender, uint256 vaultID) external view returns (bool);
}

/// @title IVaultManagerListing
/// @author Angle Labs, Inc.
/// @notice Interface for the `VaultManagerListing` contract
interface IVaultManagerListing is IVaultManager {
    /// @notice Get the collateral owned by `user` in the contract
    /// @dev This function effectively sums the collateral amounts of all the vaults owned by `user`
    function getUserCollateral(address user) external view returns (uint256);
}

// ============================================================
// FILE: contracts/keeperMulticall/KeeperMulticall.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./RevertReasonParser.sol";

/// @title KeeperMulticall
/// @notice Allows an authorized caller (keeper) to execute multiple actions in a single tx.
/// @author Angle Labs, Inc.
/// @dev Special features:
///         - ability to pay the miner (for private Flashbots transactions)
///         - swap tokens through 1inch
/// @dev Tx need to be encoded as an array of Action. The flag `isDelegateCall` is used for calling functions within this same contract
contract KeeperMulticall is Initializable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    //solhint-disable-next-line
    address private constant _oneInch = 0x1111111254fb6c44bAC0beD2854e76F90643097d;

    struct Action {
        address target;
        bytes data;
        bool isDelegateCall;
    }

    event LogAction(address indexed target, bytes data);
    event SentToMiner(uint256 indexed value);
    event Recovered(address indexed tokenAddress, address indexed to, uint256 amount);

    error AmountOutTooLow(uint256 amount, uint256 min);
    error BalanceTooLow();
    error FlashbotsErrorPayingMiner(uint256 value);
    error IncompatibleLengths();
    error RevertBytes();
    error WrongAmount();
    error ZeroAddress();

    constructor() initializer {}

    function initialize(address keeper) external initializer {
        __AccessControl_init();

        _setupRole(KEEPER_ROLE, keeper);
        _setRoleAdmin(KEEPER_ROLE, KEEPER_ROLE);
    }

    /// @notice Allows an authorized keeper to execute multiple actions in a single step
    /// @param actions Actions to be executed
    /// @param percentageToMiner Percentage to pay to miner expressed in bps (10000)
    /// @dev This is the main entry point for actions to be executed. The `isDelegateCall` flag is used for calling function inside this `KeeperMulticall` contract,
    /// if we call other contracts, the flag should be false
    function executeActions(
        Action[] memory actions,
        uint256 percentageToMiner
    ) external payable onlyRole(KEEPER_ROLE) returns (bytes[] memory) {
        uint256 numberOfActions = actions.length;
        if (numberOfActions == 0) revert IncompatibleLengths();

        bytes[] memory returnValues = new bytes[](numberOfActions + 1);

        uint256 balanceBefore = address(this).balance;

        for (uint256 i; i < numberOfActions; ++i) {
            returnValues[i] = _executeAction(actions[i]);
        }

        if (percentageToMiner != 0) {
            if (percentageToMiner >= 10000) revert WrongAmount();
            uint256 balanceAfter = address(this).balance;
            if (balanceAfter > balanceBefore) {
                uint256 amountToMiner = ((balanceAfter - balanceBefore) * percentageToMiner) / 10000;
                returnValues[numberOfActions] = payFlashbots(amountToMiner);
            }
        }

        return returnValues;
    }

    /// @notice Gets the action address and data and executes it
    /// @param action Action to be executed
    function _executeAction(Action memory action) internal returns (bytes memory) {
        bool success;
        bytes memory response;

        if (action.isDelegateCall) {
            //solhint-disable-next-line
            (success, response) = action.target.delegatecall(action.data);
        } else {
            //solhint-disable-next-line
            (success, response) = action.target.call(action.data);
        }

        require(success, RevertReasonParser.parse(response, "action reverted: "));
        emit LogAction(action.target, action.data);
        return response;
    }

    /// @notice Ability to pay miner directly. Used for Flashbots to execute private transactions
    /// @param value Value to be sent
    function payFlashbots(uint256 value) public payable onlyRole(KEEPER_ROLE) returns (bytes memory) {
        //solhint-disable-next-line
        (bool success, bytes memory response) = block.coinbase.call{ value: value }("");
        if (!success) revert FlashbotsErrorPayingMiner(value);
        emit SentToMiner(value);
        return response;
    }

    /// @notice Used to check the balances the token holds for each token. If we don't have enough of a token, we revert the tx
    /// @param tokens Array of tokens to check
    /// @param minBalances Array of balances for each token
    function finalBalanceCheck(IERC20[] memory tokens, uint256[] memory minBalances) external view returns (bool) {
        uint256 tokensLength = tokens.length;
        if (tokensLength == 0 || tokensLength != minBalances.length) revert IncompatibleLengths();

        for (uint256 i; i < tokensLength; ++i) {
            if (address(tokens[i]) == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
                if (address(this).balance < minBalances[i]) revert BalanceTooLow();
            } else {
                if (tokens[i].balanceOf(address(this)) < minBalances[i]) revert BalanceTooLow();
            }
        }

        return true;
    }

    /// @notice Swap token to another through 1Inch
    /// @param minAmountOut Minimum amount of `out` token to receive for the swap to happen
    /// @param payload Bytes needed for 1Inch API
    function swapToken(uint256 minAmountOut, bytes memory payload) external onlyRole(KEEPER_ROLE) {
        //solhint-disable-next-line
        (bool success, bytes memory result) = _oneInch.call(payload);
        if (!success) _revertBytes(result);

        uint256 amountOut = abi.decode(result, (uint256));
        if (amountOut < minAmountOut) revert AmountOutTooLow(amountOut, minAmountOut);
    }

    /// @notice Copied from 1Inch contract, used to revert if there is an error
    function _revertBytes(bytes memory errMsg) internal pure {
        if (errMsg.length != 0) {
            //solhint-disable-next-line
            assembly {
                revert(add(32, errMsg), mload(errMsg))
            }
        }
        revert RevertBytes();
    }

    /// @notice Approve a `spender` for `token`
    /// @param token Address of the token to approve
    /// @param spender Address of the spender to approve
    /// @param amount Amount to approve
    function approve(IERC20 token, address spender, uint256 amount) external onlyRole(KEEPER_ROLE) {
        uint256 currentAllowance = token.allowance(address(this), spender);
        if (currentAllowance < amount) {
            token.safeIncreaseAllowance(spender, amount - currentAllowance);
        } else if (currentAllowance > amount) {
            token.safeDecreaseAllowance(spender, currentAllowance - amount);
        }
    }

    receive() external payable {}

    /// @notice Withdraw stuck funds
    /// @param token Address of the token to recover
    /// @param receiver Address where to send the tokens
    /// @param amount Amount to recover
    function withdrawStuckFunds(address token, address receiver, uint256 amount) external onlyRole(KEEPER_ROLE) {
        if (receiver == address(0)) revert ZeroAddress();
        if (token == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            payable(receiver).transfer(amount);
        } else {
            IERC20(token).safeTransfer(receiver, amount);
        }

        emit Recovered(token, receiver, amount);
    }
}

// ============================================================
// FILE: contracts/keeperMulticall/MulticallWithFailure.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

/// @title MultiCallWithFailure
/// @author Angle Labs, Inc.
/// @notice Multicall contract allowing subcalls to fail without reverting the entire call
contract MultiCallWithFailure {
    error SubcallFailed();

    struct Call {
        address target;
        bytes data;
        bool canFail;
    }

    function multiCall(Call[] memory calls) external view returns (bytes[] memory) {
        bytes[] memory results = new bytes[](calls.length);

        for (uint256 i; i < calls.length; ++i) {
            (bool success, bytes memory result) = calls[i].target.staticcall(calls[i].data);
            if (!calls[i].canFail) {
                if (!success) {
                    revert SubcallFailed();
                }
            }
            results[i] = result;
        }

        return results;
    }
}

// ============================================================
// FILE: contracts/keeperMulticall/RevertReasonParser.sol
// ============================================================

// SPDX-License-Identifier: GNU-3

pragma solidity ^0.8.12;

/// @title RevertReasonParser
/// @author 1Inch team, taken from:
///     - https://docs.1inch.io/docs/limit-order-protocol/smart-contract/libraries/RevertReasonParser/
///     - https://etherscan.io/address/0x1111111254fb6c44bAC0beD2854e76F90643097d#code
library RevertReasonParser {
    bytes4 private constant _PANIC_SELECTOR = bytes4(keccak256("Panic(uint256)"));
    bytes4 private constant _ERROR_SELECTOR = bytes4(keccak256("Error(string)"));

    function parse(bytes memory data, string memory prefix) internal pure returns (string memory) {
        if (data.length >= 4) {
            bytes4 selector;
            //solhint-disable-next-line
            assembly {
                selector := mload(add(data, 0x20))
            }

            // 68 = 4-byte selector + 32 bytes offset + 32 bytes length
            if (selector == _ERROR_SELECTOR && data.length >= 68) {
                uint256 offset;
                bytes memory reason;
                // solhint-disable no-inline-assembly
                assembly {
                    // 36 = 32 bytes data length + 4-byte selector
                    offset := mload(add(data, 36))
                    reason := add(data, add(36, offset))
                }
                /*
                    revert reason is padded up to 32 bytes with ABI encoder: Error(string)
                    also sometimes there is extra 32 bytes of zeros padded in the end:
                    https://github.com/ethereum/solidity/issues/10170
                    because of that we can't check for equality and instead check
                    that offset + string length + extra 36 bytes is less than overall data length
                */
                require(data.length >= 36 + offset + reason.length, "Invalid revert reason");
                return string(abi.encodePacked(prefix, "Error(", reason, ")"));
            }
            // 36 = 4-byte selector + 32 bytes integer
            else if (selector == _PANIC_SELECTOR && data.length == 36) {
                uint256 code;
                // solhint-disable no-inline-assembly
                assembly {
                    // 36 = 32 bytes data length + 4-byte selector
                    code := mload(add(data, 36))
                }
                return string(abi.encodePacked(prefix, "Panic(", _toHex(code), ")"));
            }
        }

        return string(abi.encodePacked(prefix, "Unknown(", _toHex(data), ")"));
    }

    function _toHex(uint256 value) private pure returns (string memory) {
        return _toHex(abi.encodePacked(value));
    }

    function _toHex(bytes memory data) private pure returns (string memory) {
        bytes16 alphabet = 0x30313233343536373839616263646566;
        bytes memory str = new bytes(2 + data.length * 2);
        str[0] = "0";
        str[1] = "x";
        for (uint256 i; i < data.length; ++i) {
            str[2 * i + 2] = alphabet[uint8(data[i] >> 4)];
            str[2 * i + 3] = alphabet[uint8(data[i] & 0x0f)];
        }
        return string(str);
    }
}

// ============================================================
// FILE: contracts/mock/Mock1Inch.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Mock1Inch {
    using SafeERC20 for IERC20;

    function swap(address tokenIn, uint256 amountIn, address to, address tokenOut, uint256 amountOut) external {
        IERC20(tokenIn).safeTransferFrom(msg.sender, to, amountIn);
        if (tokenOut == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            //solhint-disable-next-line
            (bool sent, bytes memory data) = msg.sender.call{ value: amountOut }("");
            data;
            require(sent, "Failed to send Ether");
        } else {
            IERC20(tokenOut).safeTransferFrom(to, msg.sender, amountOut);
        }
    }

    receive() external payable {}
}

// ============================================================
// FILE: contracts/mock/MockAnything.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract MockAnything {
    uint256 public stateVar = 1;

    error CustomError();
    error CustomErrorWithValue(uint256);

    function fail(uint256 value) external view returns (uint256) {
        stateVar;
        if (value < 10) {
            revert CustomError();
        }
        if (value < 20) {
            revert CustomErrorWithValue(value);
        }
        return value + 1;
    }

    function modifyState(uint256 value) external {
        stateVar = value;
    }
}

// ============================================================
// FILE: contracts/mock/MockChainlinkOracle.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

interface MockAggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract MockChainlinkOracle is MockAggregatorV3Interface {
    uint80 public roundId = 0;
    uint8 public keyDecimals = 0;

    struct Entry {
        uint80 roundId;
        int256 answer;
        uint256 startedAt;
        uint256 updatedAt;
        uint80 answeredInRound;
    }

    mapping(uint256 => Entry) public entries;

    bool public latestRoundDataShouldRevert;

    string public desc;

    constructor() {}

    // Mock setup function
    function setLatestAnswer(int256 answer, uint256 timestamp) external {
        roundId++;
        entries[roundId] = Entry({
            roundId: roundId,
            answer: answer,
            startedAt: timestamp,
            updatedAt: timestamp,
            answeredInRound: roundId
        });
    }

    function setLatestAnswerWithRound(int256 answer, uint256 timestamp, uint80 _roundId) external {
        roundId = _roundId;
        entries[roundId] = Entry({
            roundId: roundId,
            answer: answer,
            startedAt: timestamp,
            updatedAt: timestamp,
            answeredInRound: roundId
        });
    }

    function setLatestAnswerRevert(int256 answer, uint256 timestamp) external {
        roundId++;
        entries[roundId] = Entry({
            roundId: roundId,
            answer: answer,
            startedAt: timestamp,
            updatedAt: timestamp,
            answeredInRound: roundId - 1
        });
    }

    function setLatestRoundDataShouldRevert(bool _shouldRevert) external {
        latestRoundDataShouldRevert = _shouldRevert;
    }

    function setDecimals(uint8 _decimals) external {
        keyDecimals = _decimals;
    }

    function setDescritpion(string memory _desc) external {
        desc = _desc;
    }

    function description() external view override returns (string memory) {
        return desc;
    }

    function version() external view override returns (uint256) {
        roundId;
        return 0;
    }

    function latestRoundData() external view override returns (uint80, int256, uint256, uint256, uint80) {
        if (latestRoundDataShouldRevert) {
            revert("latestRoundData reverted");
        }
        return getRoundData(uint80(roundId));
    }

    function decimals() external view override returns (uint8) {
        return keyDecimals;
    }

    function getRoundData(uint80 _roundId) public view override returns (uint80, int256, uint256, uint256, uint80) {
        Entry memory entry = entries[_roundId];
        // Emulate a Chainlink aggregator
        require(entry.updatedAt > 0, "No data present");
        return (entry.roundId, entry.answer, entry.startedAt, entry.updatedAt, entry.answeredInRound);
    }
}

// ============================================================
// FILE: contracts/mock/MockCoreBorrow.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/ICoreBorrow.sol";
import "../interfaces/IFlashAngle.sol";
import "../interfaces/ITreasury.sol";

contract MockCoreBorrow is ICoreBorrow {
    mapping(address => bool) public flashLoaners;
    mapping(address => bool) public governors;
    mapping(address => bool) public guardians;

    function isFlashLoanerTreasury(address treasury) external view override returns (bool) {
        return flashLoaners[treasury];
    }

    function isGovernor(address admin) external view override returns (bool) {
        return governors[admin];
    }

    function isGovernorOrGuardian(address admin) external view override returns (bool) {
        return governors[admin] || guardians[admin];
    }

    function toggleGovernor(address admin) external {
        governors[admin] = !governors[admin];
    }

    function toggleGuardian(address admin) external {
        guardians[admin] = !guardians[admin];
    }

    function toggleFlashLoaners(address admin) external {
        flashLoaners[admin] = !flashLoaners[admin];
    }

    function addStablecoinSupport(IFlashAngle flashAngle, address _treasury) external {
        flashAngle.addStablecoinSupport(_treasury);
    }

    function removeStablecoinSupport(IFlashAngle flashAngle, address _treasury) external {
        flashAngle.removeStablecoinSupport(_treasury);
    }

    function setCore(IFlashAngle flashAngle, address _core) external {
        flashAngle.setCore(_core);
    }

    function setFlashLoanModule(ITreasury _treasury, address _flashLoanModule) external {
        _treasury.setFlashLoanModule(_flashLoanModule);
    }
}

// ============================================================
// FILE: contracts/mock/MockERC1271.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "../interfaces/external/IERC1271.sol";

contract MockERC1271 is IERC1271 {
    uint256 public mode = 0;

    function setMode(uint256 _mode) public {
        mode = _mode;
    }

    /// @notice Returns whether the provided signature is valid for the provided data
    /// @dev MUST return the bytes4 magic value 0x1626ba7e when function passes.
    /// MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5).
    /// MUST allow external calls.
    /// @return magicValue The bytes4 magic value 0x1626ba7e
    function isValidSignature(bytes32, bytes memory) external view returns (bytes4 magicValue) {
        if (mode == 1) magicValue = 0x1626ba7e;
    }
}

// ============================================================
// FILE: contracts/mock/MockERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/utils/ERC721Holder.sol)

pragma solidity ^0.8.0;

/**
 * @dev Implementation of the {IERC721Receiver} interface.
 *
 * Accepts all token transfers.
 * Make sure the contract is able to use its token with {IERC721-safeTransferFrom}, {IERC721-approve} or {IERC721-setApprovalForAll}.
 */
contract MockERC721Receiver {
    uint256 public mode = 0;

    function setMode(uint256 _mode) public {
        mode = _mode;
    }

    function onERC721Received(address, address, uint256, bytes memory) public view returns (bytes4) {
        require(mode != 1, "0x1111111");
        if (mode == 2) return this.setMode.selector;
        return this.onERC721Received.selector;
    }
}

// ============================================================
// FILE: contracts/mock/MockEulerPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MockEulerPool {
    IERC20 public collateral;
    uint256 public poolSize;
    //solhint-disable-next-line
    uint256 public MAX_SANE_AMOUNT;

    mapping(address => uint256) public users;
    uint256 public interestRateAccumulator;

    constructor(IERC20 collateral_, uint256 poolSize_) {
        collateral = collateral_;
        poolSize = poolSize_;
        interestRateAccumulator = 10 ** 18;
        MAX_SANE_AMOUNT = type(uint112).max;
    }

    function setPoolSize(uint256 poolSize_) external {
        uint256 balance = collateral.balanceOf(address(this));
        poolSize = poolSize_;
        if (balance > poolSize_) collateral.transfer(msg.sender, balance - poolSize_);
        if (balance < poolSize_) collateral.transferFrom(msg.sender, address(this), poolSize_ - balance);
    }

    function setInterestRateAccumulator(uint256 interestRateAccumulator_) external {
        interestRateAccumulator = interestRateAccumulator_;
    }

    //solhint-disable-next-line
    function setMAXSANEAMOUNT(uint256 MAX_SANE_AMOUNT_) external {
        MAX_SANE_AMOUNT = MAX_SANE_AMOUNT_;
    }

    function balanceOfUnderlying(address account) external view returns (uint256) {
        return (users[account] * interestRateAccumulator) / 10 ** 18;
    }

    function deposit(uint256, uint256 amount) external {
        users[msg.sender] += (amount * 10 ** 18) / interestRateAccumulator;
        poolSize += amount;
        collateral.transferFrom(msg.sender, address(this), amount);
    }

    function withdraw(uint256, uint256 amount) external {
        if (amount == type(uint256).max) amount = (users[msg.sender] * interestRateAccumulator) / 10 ** 18;

        require(amount <= poolSize, "4");
        users[msg.sender] -= (amount * 10 ** 18) / interestRateAccumulator;
        collateral.transfer(msg.sender, amount);
    }
}

// ============================================================
// FILE: contracts/mock/MockFlashLoanModule.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/IFlashAngle.sol";
import "../interfaces/ICoreBorrow.sol";

contract MockFlashLoanModule is IFlashAngle {
    ICoreBorrow public override core;
    mapping(address => bool) public stablecoinsSupported;
    mapping(IAgToken => uint256) public interestAccrued;
    uint256 public surplusValue;

    constructor(ICoreBorrow _core) {
        core = _core;
    }

    function accrueInterestToTreasury(IAgToken stablecoin) external override returns (uint256 balance) {
        balance = surplusValue;
        interestAccrued[stablecoin] += balance;
    }

    function addStablecoinSupport(address _treasury) external override {
        stablecoinsSupported[_treasury] = true;
    }

    function removeStablecoinSupport(address _treasury) external override {
        stablecoinsSupported[_treasury] = false;
    }

    function setCore(address _core) external override {
        core = ICoreBorrow(_core);
    }

    function setSurplusValue(uint256 _surplusValue) external {
        surplusValue = _surplusValue;
    }
}

// ============================================================
// FILE: contracts/mock/MockFlashLoanReceiver.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";

import "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";

contract MockFlashLoanReceiver is IERC3156FlashBorrower {
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    constructor() {}

    function onFlashLoan(
        address,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external override returns (bytes32) {
        IERC20(token).approve(msg.sender, amount + fee);
        if (amount >= 10 ** 21) return keccak256("error");
        if (amount == 2 * 10 ** 18) {
            IERC3156FlashLender(msg.sender).flashLoan(IERC3156FlashBorrower(address(this)), token, amount, data);
            return keccak256("reentrant");
        } else return CALLBACK_SUCCESS;
    }
}

// ============================================================
// FILE: contracts/mock/MockInterestRateComputer.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

contract MockInterestRateComputer {
    uint256 public interestRate;
    uint256 public interestAccumulator;
    uint256 public immutable baseInterest;
    uint256 public immutable halfBase;

    uint256 public constant WEEK = 7 * 86400;

    constructor(uint256 _baseInterest, uint256 _interestRate) {
        interestAccumulator = _baseInterest;
        baseInterest = _baseInterest;
        halfBase = _baseInterest / 2;
        interestRate = _interestRate;
    }

    function _calculateAngle(uint256 exp, uint256 _interestAccumulator) internal view returns (uint256) {
        uint256 ratePerSecond = interestRate;
        if (exp == 0 || ratePerSecond == 0) return _interestAccumulator;
        uint256 expMinusOne = exp - 1;
        uint256 expMinusTwo = exp > 2 ? exp - 2 : 0;
        uint256 basePowerTwo = (ratePerSecond * ratePerSecond) / baseInterest;
        uint256 basePowerThree = (basePowerTwo * ratePerSecond) / baseInterest;
        uint256 secondTerm = (exp * expMinusOne * basePowerTwo) / 2;
        uint256 thirdTerm = (exp * expMinusOne * expMinusTwo * basePowerThree) / 6;
        return (_interestAccumulator * (baseInterest + ratePerSecond * exp + secondTerm + thirdTerm)) / baseInterest;
    }

    function _calculateAave(uint256 exp, uint256 _interestAccumulator) internal view returns (uint256) {
        uint256 ratePerSecond = interestRate;
        if (exp == 0 || ratePerSecond == 0) return _interestAccumulator;
        uint256 expMinusOne = exp - 1;
        uint256 expMinusTwo = exp > 2 ? exp - 2 : 0;
        uint256 basePowerTwo = (ratePerSecond * ratePerSecond + halfBase) / baseInterest;
        uint256 basePowerThree = (basePowerTwo * ratePerSecond + halfBase) / baseInterest;
        uint256 secondTerm = (exp * expMinusOne * basePowerTwo) / 2;
        uint256 thirdTerm = (exp * expMinusOne * expMinusTwo * basePowerThree) / 6;
        return (_interestAccumulator * (baseInterest + ratePerSecond * exp + secondTerm + thirdTerm)) / baseInterest;
    }

    function _calculateCompound(uint256 exp, uint256 _interestAccumulator) internal view returns (uint256) {
        return _interestAccumulator * (baseInterest + interestRate * exp);
    }

    function _rpow(uint256 x, uint256 n, uint256 base) internal pure returns (uint256 z) {
        //solhint-disable-next-line
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    z := base
                }
                default {
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    z := base
                }
                default {
                    z := x
                }
                let half := div(base, 2) // for rounding.
                for {
                    n := div(n, 2)
                } n {
                    n := div(n, 2)
                } {
                    let xx := mul(x, x)
                    if iszero(eq(div(xx, x), x)) {
                        revert(0, 0)
                    }
                    let xxRound := add(xx, half)
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }
                    x := div(xxRound, base)
                    if mod(n, 2) {
                        let zx := mul(z, x)
                        if and(iszero(iszero(x)), iszero(eq(div(zx, x), z))) {
                            revert(0, 0)
                        }
                        let zxRound := add(zx, half)
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }
                        z := div(zxRound, base)
                    }
                }
            }
        }
    }

    function _calculateMaker(uint256 delta, uint256 _interestAccumulator) internal view returns (uint256) {
        return (_rpow(baseInterest + interestRate, delta, baseInterest) * _interestAccumulator) / baseInterest;
    }

    function calculateAngle(uint256 delta) external view returns (uint256) {
        return _calculateAngle(delta, interestAccumulator);
    }

    function calculateAave(uint256 delta) external view returns (uint256) {
        return _calculateAave(delta, interestAccumulator);
    }

    function calculateMaker(uint256 delta) external view returns (uint256) {
        return _calculateMaker(delta, interestAccumulator);
    }

    function calculateAngle1Year() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        for (uint256 i; i < 52; ++i) {
            _interestAccumulator = _calculateAngle(WEEK, _interestAccumulator);
        }
        return _interestAccumulator;
    }

    function calculateAave1Year() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        for (uint256 i; i < 52; ++i) {
            _interestAccumulator = _calculateAave(WEEK, _interestAccumulator);
        }
        return _interestAccumulator;
    }

    function calculateMaker1Year() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        for (uint256 i; i < 52; ++i) {
            _interestAccumulator = _calculateMaker(WEEK, _interestAccumulator);
        }
        return _interestAccumulator;
    }

    function calculateAngle1YearDirect() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        _interestAccumulator = _calculateAngle(52 * WEEK, _interestAccumulator);

        return _interestAccumulator;
    }

    function calculateAave1YearDirect() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        _interestAccumulator = _calculateAave(52 * WEEK, _interestAccumulator);

        return _interestAccumulator;
    }

    function calculateMaker1YearDirect() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        _interestAccumulator = _calculateMaker(52 * WEEK, _interestAccumulator);

        return _interestAccumulator;
    }

    function calculateCompound1YearDirect() external view returns (uint256) {
        uint256 _interestAccumulator = interestAccumulator;
        _interestAccumulator = _calculateCompound(52 * WEEK, _interestAccumulator);

        return _interestAccumulator;
    }
}

// ============================================================
// FILE: contracts/mock/MockKeeperMulticall.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract MockKeeperMulticall is Initializable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    //solhint-disable-next-line
    address private constant _oneInch = 0x1111111254fb6c44bAC0beD2854e76F90643097d;

    struct Action {
        address target;
        bytes data;
        bool isDelegateCall;
    }

    event LogAction(address indexed target, bytes data);
    event SentToMiner(uint256 indexed value);
    event Recovered(address indexed tokenAddress, address indexed to, uint256 amount);

    error AmountOutTooLow(uint256 amount, uint256 min);
    error BalanceTooLow();
    error FlashbotsErrorPayingMiner(uint256 value);
    error IncompatibleLengths();
    error RevertBytes();
    error ZeroAddress();

    constructor() initializer {}

    function initialize(address keeper) public initializer {
        __AccessControl_init();

        _setupRole(KEEPER_ROLE, keeper);
        _setRoleAdmin(KEEPER_ROLE, KEEPER_ROLE);
    }
}

contract MockKeeperMulticall2 {
    uint256 public varTest = 1;

    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    //solhint-disable-next-line
    address private constant _oneInch = 0x1111111254fb6c44bAC0beD2854e76F90643097d;

    struct Action {
        address target;
        bytes data;
        bool isDelegateCall;
    }

    event LogAction(address indexed target, bytes data);
    event SentToMiner(uint256 indexed value);
    event Recovered(address indexed tokenAddress, address indexed to, uint256 amount);

    error AmountOutTooLow(uint256 amount, uint256 min);
    error BalanceTooLow();
    error FlashbotsErrorPayingMiner(uint256 value);
    error IncompatibleLengths();
    error RevertBytes();
    error ZeroAddress();

    function functionTest() external pure returns (bool) {
        return true;
    }
}

// ============================================================
// FILE: contracts/mock/MockLayerZero.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

interface ILzApp {
    function lzReceive(uint16 _srcChainId, bytes memory _srcAddress, uint64 _nonce, bytes memory _payload) external;
}

contract MockLayerZero {
    mapping(uint16 => uint256) public counters;
    uint256 public config;
    mapping(uint16 => uint64) public outboundNonce;
    uint256 public resumeReceived;
    uint256 public sendVersion;
    uint256 public receiveVersion;

    /// @notice Initiate with a fixe change rate
    constructor() {}

    function send(
        uint16 _dstChainId,
        bytes calldata,
        bytes calldata,
        address,
        address,
        bytes calldata
    ) external payable {
        counters[_dstChainId] += 1;
    }

    function getOutboundNonce(uint16 _dstChainId, address) external view returns (uint64) {
        return outboundNonce[_dstChainId];
    }

    function setOutBoundNonce(uint16 _from, uint64 value) external {
        outboundNonce[_from] = value;
    }

    function lzReceive(
        address lzApp,
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) public {
        ILzApp(lzApp).lzReceive(_srcChainId, _srcAddress, _nonce, _payload);
    }

    function estimateFees(
        uint16,
        address,
        bytes calldata,
        bool,
        bytes calldata
    ) external pure returns (uint256 nativeFee, uint256 zroFee) {
        return (123, 456);
    }

    function setConfig(uint16, uint16, uint256 _configType, bytes calldata) external {
        config = _configType;
    }

    function getConfig(uint16, uint16, address, uint256) external view returns (bytes memory) {
        return abi.encodePacked(config);
    }

    function setSendVersion(uint16 _version) external {
        sendVersion = _version;
    }

    function setReceiveVersion(uint16 _version) external {
        receiveVersion = _version;
    }

    function forceResumeReceive(uint16, bytes calldata) external {
        resumeReceived = 1 - resumeReceived;
    }
}

// ============================================================
// FILE: contracts/mock/MockLiquidityGauge.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import { ILiquidityGauge } from "../interfaces/coreModule/ILiquidityGauge.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockLiquidityGauge is ILiquidityGauge, ERC20 {
    using SafeERC20 for IERC20;

    IERC20 internal _ANGLE = IERC20(0x31429d1856aD1377A8A0079410B297e1a9e214c2);
    IERC20 internal _token;
    mapping(address => uint256) public rewards;

    constructor(string memory name_, string memory symbol_, address token_) ERC20(name_, symbol_) {
        _token = IERC20(token_);
    }

    function deposit(
        uint256 _value,
        address _addr,
        // solhint-disable-next-line
        bool
    ) external {
        _token.safeTransferFrom(msg.sender, address(this), _value);
        _mint(_addr, _value);
    }

    function withdraw(
        uint256 _value,
        // solhint-disable-next-line
        bool
    ) external {
        _burn(msg.sender, _value);
        _token.safeTransfer(msg.sender, _value);
    }

    // solhint-disable-next-line
    function claim_rewards(address _addr, address _receiver) external {
        if (_receiver == address(0)) _receiver = _addr;
        _ANGLE.safeTransfer(_receiver, rewards[_addr]);
        rewards[_addr] = 0;
    }

    // solhint-disable-next-line
    function claimable_reward(address _addr, address) external view returns (uint256 amount) {
        return rewards[_addr];
    }

    function setReward(address receiver_, uint256 amount) external {
        rewards[receiver_] = amount;
    }
}

// ============================================================
// FILE: contracts/mock/MockOracle.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

import "../interfaces/IOracle.sol";

contract MockOracle is IOracle {
    event Update(uint256 _peg);

    ITreasury public treasury;

    uint256 public base = 1 ether;
    uint256 public precision = 1 ether;
    uint256 public rate;
    bool public outdated;

    /// @notice Initiate with a fixe change rate
    constructor(uint256 rate_, ITreasury _treasury) {
        rate = rate_;
        treasury = _treasury;
    }

    /// @notice Mock read
    function read() external view override returns (uint256) {
        return rate;
    }

    /// @notice change oracle rate
    function update(uint256 newRate) external {
        rate = newRate;
    }

    function setTreasury(address _treasury) external override {
        treasury = ITreasury(_treasury);
    }

    function circuitChainlink() external pure override returns (AggregatorV3Interface[] memory) {}
}

// ============================================================
// FILE: contracts/mock/MockPolygonAgEUR.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "../agToken/polygon/utils/ERC20UpgradeableCustom.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/IAgToken.sol";
import "../interfaces/ITreasury.sol";

interface IChildToken {
    function deposit(address user, bytes calldata depositData) external;

    function withdraw(uint256 amount) external;
}

contract MockPolygonAgEUR is
    Initializable,
    ERC20UpgradeableCustom,
    AccessControlUpgradeable,
    EIP712Upgradeable,
    IChildToken
{
    bytes32 public constant DEPOSITOR_ROLE = keccak256("DEPOSITOR_ROLE");

    /// @dev Emitted when the child chain manager changes
    event ChildChainManagerAdded(address newAddress);
    event ChildChainManagerRevoked(address oldAddress);

    constructor() initializer {}

    function initialize(
        string memory _name,
        string memory _symbol,
        address childChainManager,
        address guardian
    ) public initializer {
        __ERC20_init(_name, _symbol);
        __AccessControl_init();
        _setupRole(DEFAULT_ADMIN_ROLE, guardian);
        _setupRole(DEPOSITOR_ROLE, childChainManager);
        __EIP712_init(_name, "1");
    }

    /**
     * @notice Called when the bridge has tokens to mint
     * @param user Address to mint the token to
     * @param depositData Encoded amount to mint
     */
    function deposit(address user, bytes calldata depositData) external override {
        require(hasRole(DEPOSITOR_ROLE, msg.sender));
        uint256 amount = abi.decode(depositData, (uint256));
        _mint(user, amount);
    }

    /**
     * @notice Called when user wants to withdraw tokens back to root chain
     * @dev Should burn user's tokens. This transaction will be verified when exiting on root chain
     * @param amount Amount of tokens to withdraw
     */
    function withdraw(uint256 amount) external override {
        _burn(_msgSender(), amount);
    }

    // =============================================================================
    // ======================= New data added for the upgrade ======================
    // =============================================================================

    mapping(address => bool) public isMinter;
    /// @notice Reference to the treasury contract which can grant minting rights
    address public treasury;
    /// @notice Boolean to check whether the contract has been reinitialized after its upgrade
    bool public treasuryInitialized;

    using SafeERC20 for IERC20;

    /// @notice Base used for fee computation
    uint256 public constant BASE_PARAMS = 10 ** 9;

    // =============================== Bridging Data ===============================

    /// @notice Struct with some data about a specific bridge token
    struct BridgeDetails {
        // Limit on the balance of bridge token held by the contract: it is designed
        // to reduce the exposure of the system to hacks
        uint256 limit;
        // Limit on the hourly volume of token minted through this bridge
        // Technically the limit over a rolling hour is hourlyLimit x2 as hourly limit
        // is enforced only between x:00 and x+1:00
        uint256 hourlyLimit;
        // Fee taken for swapping in and out the token
        uint64 fee;
        // Whether the associated token is allowed or not
        bool allowed;
        // Whether swapping in and out from the associated token is paused or not
        bool paused;
    }

    /// @notice Maps a bridge token to data
    mapping(address => BridgeDetails) public bridges;
    /// @notice List of all bridge tokens
    address[] public bridgeTokensList;
    /// @notice Maps a bridge token to the associated hourly volume
    mapping(address => mapping(uint256 => uint256)) public usage;
    /// @notice Maps an address to whether it is exempt of fees for when it comes to swapping in and out
    mapping(address => uint256) public isFeeExempt;

    uint256[44] private __gap;

    // ================================== Events ===================================

    event BridgeTokenAdded(address indexed bridgeToken, uint256 limit, uint256 hourlyLimit, uint64 fee, bool paused);
    event BridgeTokenToggled(address indexed bridgeToken, bool toggleStatus);
    event BridgeTokenRemoved(address indexed bridgeToken);
    event BridgeTokenFeeUpdated(address indexed bridgeToken, uint64 fee);
    event BridgeTokenLimitUpdated(address indexed bridgeToken, uint256 limit);
    event BridgeTokenHourlyLimitUpdated(address indexed bridgeToken, uint256 hourlyLimit);
    event HourlyLimitUpdated(uint256 hourlyLimit);
    event FeeToggled(address indexed theAddress, uint256 toggleStatus);
    event KeeperToggled(address indexed keeper, bool toggleStatus);
    event MinterToggled(address indexed minter);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event TreasuryUpdated(address indexed _treasury);

    // ================================== Errors ===================================

    error AssetStillControlledInReserves();
    error BurnAmountExceedsAllowance();
    error HourlyLimitExceeded();
    error InvalidSender();
    error InvalidToken();
    error InvalidTreasury();
    error NotGovernor();
    error NotGovernorOrGuardian();
    error NotMinter();
    error NotTreasury();
    error TooBigAmount();
    error TooHighParameterValue();
    error TreasuryAlreadyInitialized();
    error ZeroAddress();

    /// @notice Checks to see if it is the `Treasury` calling this contract
    /// @dev There is no Access Control here, because it can be handled cheaply through this modifier
    modifier onlyTreasury() {
        if (msg.sender != treasury) revert NotTreasury();
        _;
    }

    /// @notice Checks whether the sender has the minting right
    modifier onlyMinter() {
        if (!isMinter[msg.sender]) revert NotMinter();
        _;
    }

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!ITreasury(treasury).isGovernor(msg.sender)) revert NotGovernor();
        _;
    }

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    /// @notice Sets up the treasury contract on Polygon after the upgrade
    /// @param _treasury Address of the treasury contract
    function setUpTreasury(address _treasury) external {
        // Only governor on Polygon
        if (msg.sender != 0xdA2D2f638D6fcbE306236583845e5822554c02EA) revert NotGovernor();
        if (address(ITreasury(_treasury).stablecoin()) != address(this)) revert InvalidTreasury();
        if (treasuryInitialized) revert TreasuryAlreadyInitialized();
        treasury = _treasury;
        treasuryInitialized = true;
        emit TreasuryUpdated(_treasury);
    }

    // =========================== External Function ===============================

    /// @notice Allows anyone to burn agToken without redeeming collateral back
    /// @param amount Amount of stablecoins to burn
    /// @dev This function can typically be called if there is a settlement mechanism to burn stablecoins
    function burnStablecoin(uint256 amount) external {
        _burnCustom(msg.sender, amount);
    }

    // ======================= Minter Role Only Functions ==========================

    function burnSelf(uint256 amount, address burner) external onlyMinter {
        _burnCustom(burner, amount);
    }

    function burnFrom(uint256 amount, address burner, address sender) external onlyMinter {
        _burnFromNoRedeem(amount, burner, sender);
    }

    function mint(address account, uint256 amount) external onlyMinter {
        _mint(account, amount);
    }

    // ======================= Treasury Only Functions =============================

    function addMinter(address minter) external onlyTreasury {
        isMinter[minter] = true;
        emit MinterToggled(minter);
    }

    function removeMinter(address minter) external {
        if (msg.sender != address(treasury) && msg.sender != minter) revert InvalidSender();
        isMinter[minter] = false;
        emit MinterToggled(minter);
    }

    function setTreasury(address _treasury) external onlyTreasury {
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    // ============================ Internal Function ==============================

    /// @notice Internal version of the function `burnFromNoRedeem`
    /// @param amount Amount to burn
    /// @dev It is at the level of this function that allowance checks are performed
    function _burnFromNoRedeem(uint256 amount, address burner, address sender) internal {
        if (burner != sender) {
            uint256 currentAllowance = allowance(burner, sender);
            if (currentAllowance < amount) revert BurnAmountExceedsAllowance();
            _approve(burner, sender, currentAllowance - amount);
        }
        _burnCustom(burner, amount);
    }

    // ==================== External Permissionless Functions ======================

    /// @notice Returns the list of all supported bridge tokens
    /// @dev Helpful for UIs
    function allBridgeTokens() external view returns (address[] memory) {
        return bridgeTokensList;
    }

    /// @notice Returns the current volume for a bridge, for the current hour
    /// @dev Helpful for UIs
    function currentUsage(address bridge) external view returns (uint256) {
        return usage[bridge][block.timestamp / 3600];
    }

    /// @notice Mints the canonical token from a supported bridge token
    /// @param bridgeToken Bridge token to use to mint
    /// @param amount Amount of bridge tokens to send
    /// @param to Address to which the stablecoin should be sent
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapIn(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();
        uint256 balance = IERC20(bridgeToken).balanceOf(address(this));
        if (balance + amount > bridgeDetails.limit) {
            // In case someone maliciously sends tokens to this contract
            // Or the limit changes
            if (bridgeDetails.limit > balance) amount = bridgeDetails.limit - balance;
            else {
                amount = 0;
            }
        }

        // Checking requirement on the hourly volume
        uint256 hour = block.timestamp / 3600;
        uint256 hourlyUsage = usage[bridgeToken][hour] + amount;
        if (hourlyUsage > bridgeDetails.hourlyLimit) {
            // Edge case when the hourly limit changes
            if (bridgeDetails.hourlyLimit > usage[bridgeToken][hour])
                amount = bridgeDetails.hourlyLimit - usage[bridgeToken][hour];
            else {
                amount = 0;
            }
        }
        usage[bridgeToken][hour] = usage[bridgeToken][hour] + amount;

        IERC20(bridgeToken).safeTransferFrom(msg.sender, address(this), amount);
        uint256 canonicalOut = amount;
        // Computing fees
        if (isFeeExempt[msg.sender] == 0) {
            canonicalOut -= (canonicalOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        _mint(to, canonicalOut);
        return canonicalOut;
    }

    /// @notice Burns the canonical token in exchange for a bridge token
    /// @param bridgeToken Bridge token required
    /// @param amount Amount of canonical tokens to burn
    /// @param to Address to which the bridge token should be sent
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapOut(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();

        _burnCustom(msg.sender, amount);
        uint256 bridgeOut = amount;
        if (isFeeExempt[msg.sender] == 0) {
            bridgeOut -= (bridgeOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        IERC20(bridgeToken).safeTransfer(to, bridgeOut);
        return bridgeOut;
    }

    // ======================= Governance Functions ================================

    /// @notice Adds support for a bridge token
    /// @param bridgeToken Bridge token to add: it should be a version of the stablecoin from another bridge
    /// @param limit Limit on the balance of bridge token this contract could hold
    /// @param hourlyLimit Limit on the hourly volume for this bridge
    /// @param paused Whether swapping for this token should be paused or not
    /// @param fee Fee taken upon swapping for or against this token
    function addBridgeToken(
        address bridgeToken,
        uint256 limit,
        uint256 hourlyLimit,
        uint64 fee,
        bool paused
    ) external onlyGovernor {
        if (bridges[bridgeToken].allowed || bridgeToken == address(0)) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        BridgeDetails memory _bridge;
        _bridge.limit = limit;
        _bridge.hourlyLimit = hourlyLimit;
        _bridge.paused = paused;
        _bridge.fee = fee;
        _bridge.allowed = true;
        bridges[bridgeToken] = _bridge;
        bridgeTokensList.push(bridgeToken);
        emit BridgeTokenAdded(bridgeToken, limit, hourlyLimit, fee, paused);
    }

    /// @notice Removes support for a token
    /// @param bridgeToken Address of the bridge token to remove support for
    function removeBridgeToken(address bridgeToken) external onlyGovernor {
        if (IERC20(bridgeToken).balanceOf(address(this)) != 0) revert AssetStillControlledInReserves();
        delete bridges[bridgeToken];
        // Deletion from `bridgeTokensList` loop
        uint256 bridgeTokensListLength = bridgeTokensList.length;
        for (uint256 i; i < bridgeTokensListLength - 1; ++i) {
            if (bridgeTokensList[i] == bridgeToken) {
                // Replace the `bridgeToken` to remove with the last of the list
                bridgeTokensList[i] = bridgeTokensList[bridgeTokensListLength - 1];
                break;
            }
        }
        // Remove last element in array
        bridgeTokensList.pop();
        emit BridgeTokenRemoved(bridgeToken);
    }

    /// @notice Recovers any ERC20 token
    /// @dev Can be used to withdraw bridge tokens for them to be de-bridged on mainnet
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external onlyGovernor {
        IERC20(tokenAddress).safeTransfer(to, amountToRecover);
        emit Recovered(tokenAddress, to, amountToRecover);
    }

    /// @notice Updates the `limit` amount for `bridgeToken`
    function setLimit(address bridgeToken, uint256 limit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].limit = limit;
        emit BridgeTokenLimitUpdated(bridgeToken, limit);
    }

    /// @notice Updates the `hourlyLimit` amount for `bridgeToken`
    function setHourlyLimit(address bridgeToken, uint256 hourlyLimit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].hourlyLimit = hourlyLimit;
        emit BridgeTokenHourlyLimitUpdated(bridgeToken, hourlyLimit);
    }

    /// @notice Updates the `fee` value for `bridgeToken`
    function setSwapFee(address bridgeToken, uint64 fee) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        bridges[bridgeToken].fee = fee;
        emit BridgeTokenFeeUpdated(bridgeToken, fee);
    }

    /// @notice Pauses or unpauses swapping in and out for a token
    function toggleBridge(address bridgeToken) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bool pausedStatus = bridges[bridgeToken].paused;
        bridges[bridgeToken].paused = !pausedStatus;
        emit BridgeTokenToggled(bridgeToken, !pausedStatus);
    }

    /// @notice Toggles fees for the address `theAddress`
    function toggleFeesForAddress(address theAddress) external onlyGovernorOrGuardian {
        uint256 feeExemptStatus = 1 - isFeeExempt[theAddress];
        isFeeExempt[theAddress] = feeExemptStatus;
        emit FeeToggled(theAddress, feeExemptStatus);
    }
}

// ============================================================
// FILE: contracts/mock/MockRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/IAngleRouter.sol";
import "../interfaces/external/uniswap/IUniswapRouter.sol";
import "../interfaces/external/lido/IWStETH.sol";

contract MockRouter is IUniswapV3Router, IWStETH {
    using SafeERC20 for IERC20;

    uint256 public counterAngleMint;
    uint256 public counterAngleBurn;
    uint256 public counter1Inch;
    uint256 public counterUni;
    uint256 public counterWrap;
    uint256 public counterMixer;
    uint256 public amountOutUni;
    uint256 public multiplierMintBurn;
    uint256 public stETHMultiplier;
    address public inToken;
    address public outToken;

    address public stETH;

    /// @notice Action types
    enum ActionType {
        transfer,
        wrap,
        wrapNative,
        sweep,
        sweepNative,
        unwrap,
        unwrapNative,
        swapIn,
        swapOut,
        uniswapV3,
        oneInch,
        claimRewards,
        gaugeDeposit,
        borrower
    }

    /// @notice Data needed to get permits
    struct PermitType {
        address token;
        address owner;
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    constructor() {}

    function mint(address user, uint256 amount, uint256, address stablecoin, address collateral) external {
        counterAngleMint += 1;
        IERC20(collateral).safeTransferFrom(msg.sender, address(this), amount);
        IERC20(stablecoin).safeTransfer(user, (amount * 10 ** 9) / multiplierMintBurn);
    }

    function setStETH(address _stETH) external {
        stETH = _stETH;
    }

    function burn(address user, uint256 amount, uint256, address stablecoin, address collateral) external {
        counterAngleBurn += 1;
        IERC20(stablecoin).safeTransferFrom(msg.sender, address(this), amount);
        IERC20(collateral).safeTransfer(user, (amount * multiplierMintBurn) / 10 ** 9);
    }

    function mixer(
        PermitType[] memory paramsPermit,
        ActionType[] memory actions,
        bytes[] calldata data
    ) public payable virtual {
        paramsPermit;
        counterMixer += 1;
        for (uint256 i; i < actions.length; ++i) {
            if (actions[i] == ActionType.transfer) {
                (address transferToken, uint256 amount) = abi.decode(data[i], (address, uint256));
                IERC20(transferToken).safeTransferFrom(msg.sender, address(this), amount);
            }
        }
    }

    function wrap(uint256 amount) external returns (uint256 amountOut) {
        amountOut = (amount * stETHMultiplier) / 10 ** 9;
        counterWrap += 1;
        IERC20(stETH).safeTransferFrom(msg.sender, address(this), amount);
        IERC20(outToken).safeTransfer(msg.sender, amountOut);
    }

    function oneInch(uint256 amountIn) external returns (uint256 amountOut) {
        counter1Inch += 1;
        amountOut = (amountOutUni * amountIn) / 10 ** 9;
        IERC20(inToken).safeTransferFrom(msg.sender, address(this), amountIn);
        IERC20(outToken).safeTransfer(msg.sender, amountOut);
    }

    function oneInchReverts() external {
        counter1Inch += 1;
        revert("wrong swap");
    }

    function oneInchRevertsWithoutMessage() external {
        counter1Inch += 1;
        require(false);
    }

    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut) {
        counterUni += 1;
        amountOut = (params.amountIn * amountOutUni) / 10 ** 9;
        IERC20(inToken).safeTransferFrom(msg.sender, address(this), params.amountIn);
        IERC20(outToken).safeTransfer(params.recipient, amountOut);
        require(amountOut >= params.amountOutMinimum);
    }

    function setMultipliers(uint256 a, uint256 b) external {
        amountOutUni = a;
        multiplierMintBurn = b;
    }

    function setStETHMultiplier(uint256 value) external {
        stETHMultiplier = value;
    }

    function setInOut(address _collateral, address _stablecoin) external {
        inToken = _collateral;
        outToken = _stablecoin;
    }
}

// ============================================================
// FILE: contracts/mock/MockSidechainAgEUR.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../agToken/AgToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title AgTokenSideChainMultiBridge
/// @author Angle Labs, Inc.
/// @notice Contract for Angle agTokens on other chains than Ethereum mainnet
/// @dev This contract supports bridge tokens having a minting right on the stablecoin (also referred to as the canonical
/// or the native token)
/// @dev References:
///      - FRAX implementation: https://polygonscan.com/address/0x45c32fA6DF82ead1e2EF74d17b76547EDdFaFF89#code
///      - QiDAO implementation: https://snowtrace.io/address/0x5c49b268c9841AFF1Cc3B0a418ff5c3442eE3F3b#code
contract MockSidechainAgEUR is AgToken {
    using SafeERC20 for IERC20;

    /// @notice Base used for fee computation
    uint256 public constant BASE_PARAMS = 10 ** 9;

    // =============================== Bridging Data ===============================

    /// @notice Struct with some data about a specific bridge token
    struct BridgeDetails {
        // Limit on the balance of bridge token held by the contract: it is designed
        // to reduce the exposure of the system to hacks
        uint256 limit;
        // Limit on the hourly volume of token minted through this bridge
        // Technically the limit over a rolling hour is hourlyLimit x2 as hourly limit
        // is enforced only between x:00 and x+1:00
        uint256 hourlyLimit;
        // Fee taken for swapping in and out the token
        uint64 fee;
        // Whether the associated token is allowed or not
        bool allowed;
        // Whether swapping in and out from the associated token is paused or not
        bool paused;
    }

    /// @notice Maps a bridge token to data
    mapping(address => BridgeDetails) public bridges;
    /// @notice List of all bridge tokens
    address[] public bridgeTokensList;
    /// @notice Maps a bridge token to the associated hourly volume
    mapping(address => mapping(uint256 => uint256)) public usage;
    /// @notice Maps an address to whether it is exempt of fees for when it comes to swapping in and out
    mapping(address => uint256) public isFeeExempt;

    // ================================== Events ===================================

    event BridgeTokenAdded(address indexed bridgeToken, uint256 limit, uint256 hourlyLimit, uint64 fee, bool paused);
    event BridgeTokenToggled(address indexed bridgeToken, bool toggleStatus);
    event BridgeTokenRemoved(address indexed bridgeToken);
    event BridgeTokenFeeUpdated(address indexed bridgeToken, uint64 fee);
    event BridgeTokenLimitUpdated(address indexed bridgeToken, uint256 limit);
    event BridgeTokenHourlyLimitUpdated(address indexed bridgeToken, uint256 hourlyLimit);
    event HourlyLimitUpdated(uint256 hourlyLimit);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event FeeToggled(address indexed theAddress, uint256 toggleStatus);

    // =============================== Errors ================================

    error AssetStillControlledInReserves();
    error HourlyLimitExceeded();
    error InvalidToken();
    error NotGovernor();
    error NotGovernorOrGuardian();
    error TooBigAmount();
    error TooHighParameterValue();
    error ZeroAddress();

    // ============================= Constructor ===================================

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!ITreasury(treasury).isGovernor(msg.sender)) revert NotGovernor();
        _;
    }

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!ITreasury(treasury).isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    // ==================== External Permissionless Functions ======================

    /// @notice Returns the list of all supported bridge tokens
    /// @dev Helpful for UIs
    function allBridgeTokens() external view returns (address[] memory) {
        return bridgeTokensList;
    }

    /// @notice Returns the current volume for a bridge, for the current hour
    /// @param bridgeToken Bridge used to mint
    /// @dev Helpful for UIs
    function currentUsage(address bridgeToken) external view returns (uint256) {
        return usage[bridgeToken][block.timestamp / 3600];
    }

    /// @notice Mints the canonical token from a supported bridge token
    /// @param bridgeToken Bridge token to use to mint
    /// @param amount Amount of bridge tokens to send
    /// @param to Address to which the stablecoin should be sent
    /// @return Amount of the canonical stablecoin actually minted
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapIn(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();
        uint256 balance = IERC20(bridgeToken).balanceOf(address(this));
        if (balance + amount > bridgeDetails.limit) {
            // In case someone maliciously sends tokens to this contract
            // Or the limit changes
            if (bridgeDetails.limit > balance) amount = bridgeDetails.limit - balance;
            else {
                amount = 0;
            }
        }

        // Checking requirement on the hourly volume
        uint256 hour = block.timestamp / 3600;
        uint256 hourlyUsage = usage[bridgeToken][hour] + amount;
        if (hourlyUsage > bridgeDetails.hourlyLimit) {
            // Edge case when the hourly limit changes
            if (bridgeDetails.hourlyLimit > usage[bridgeToken][hour])
                amount = bridgeDetails.hourlyLimit - usage[bridgeToken][hour];
            else {
                amount = 0;
            }
        }
        usage[bridgeToken][hour] = usage[bridgeToken][hour] + amount;

        IERC20(bridgeToken).safeTransferFrom(msg.sender, address(this), amount);
        uint256 canonicalOut = amount;
        // Computing fees
        if (isFeeExempt[msg.sender] == 0) {
            canonicalOut -= (canonicalOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        _mint(to, canonicalOut);
        return canonicalOut;
    }

    /// @notice Burns the canonical token in exchange for a bridge token
    /// @param bridgeToken Bridge token required
    /// @param amount Amount of canonical tokens to burn
    /// @param to Address to which the bridge token should be sent
    /// @return Amount of bridge tokens actually sent back
    /// @dev Some fees may be taken by the protocol depending on the token used and on the address calling
    function swapOut(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        BridgeDetails memory bridgeDetails = bridges[bridgeToken];
        if (!bridgeDetails.allowed || bridgeDetails.paused) revert InvalidToken();

        _burn(msg.sender, amount);
        uint256 bridgeOut = amount;
        if (isFeeExempt[msg.sender] == 0) {
            bridgeOut -= (bridgeOut * bridgeDetails.fee) / BASE_PARAMS;
        }
        IERC20(bridgeToken).safeTransfer(to, bridgeOut);
        return bridgeOut;
    }

    // ======================= Governance Functions ================================

    /// @notice Adds support for a bridge token
    /// @param bridgeToken Bridge token to add: it should be a version of the stablecoin from another bridge
    /// @param limit Limit on the balance of bridge token this contract could hold
    /// @param hourlyLimit Limit on the hourly volume for this bridge
    /// @param paused Whether swapping for this token should be paused or not
    /// @param fee Fee taken upon swapping for or against this token
    function addBridgeToken(
        address bridgeToken,
        uint256 limit,
        uint256 hourlyLimit,
        uint64 fee,
        bool paused
    ) external onlyGovernor {
        if (bridges[bridgeToken].allowed || bridgeToken == address(0)) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        BridgeDetails memory _bridge;
        _bridge.limit = limit;
        _bridge.hourlyLimit = hourlyLimit;
        _bridge.paused = paused;
        _bridge.fee = fee;
        _bridge.allowed = true;
        bridges[bridgeToken] = _bridge;
        bridgeTokensList.push(bridgeToken);
        emit BridgeTokenAdded(bridgeToken, limit, hourlyLimit, fee, paused);
    }

    /// @notice Removes support for a token
    /// @param bridgeToken Address of the bridge token to remove support for
    function removeBridgeToken(address bridgeToken) external onlyGovernor {
        if (IERC20(bridgeToken).balanceOf(address(this)) != 0) revert AssetStillControlledInReserves();
        delete bridges[bridgeToken];
        // Deletion from `bridgeTokensList` loop
        uint256 bridgeTokensListLength = bridgeTokensList.length;
        for (uint256 i; i < bridgeTokensListLength - 1; ++i) {
            if (bridgeTokensList[i] == bridgeToken) {
                // Replace the `bridgeToken` to remove with the last of the list
                bridgeTokensList[i] = bridgeTokensList[bridgeTokensListLength - 1];
                break;
            }
        }
        // Remove last element in array
        bridgeTokensList.pop();
        emit BridgeTokenRemoved(bridgeToken);
    }

    /// @notice Recovers any ERC20 token
    /// @dev Can be used to withdraw bridge tokens for them to be de-bridged on mainnet
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external onlyGovernor {
        IERC20(tokenAddress).safeTransfer(to, amountToRecover);
        emit Recovered(tokenAddress, to, amountToRecover);
    }

    /// @notice Updates the `limit` amount for `bridgeToken`
    function setLimit(address bridgeToken, uint256 limit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].limit = limit;
        emit BridgeTokenLimitUpdated(bridgeToken, limit);
    }

    /// @notice Updates the `hourlyLimit` amount for `bridgeToken`
    function setHourlyLimit(address bridgeToken, uint256 hourlyLimit) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bridges[bridgeToken].hourlyLimit = hourlyLimit;
        emit BridgeTokenHourlyLimitUpdated(bridgeToken, hourlyLimit);
    }

    /// @notice Updates the `fee` value for `bridgeToken`
    function setSwapFee(address bridgeToken, uint64 fee) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        if (fee > BASE_PARAMS) revert TooHighParameterValue();
        bridges[bridgeToken].fee = fee;
        emit BridgeTokenFeeUpdated(bridgeToken, fee);
    }

    /// @notice Pauses or unpauses swapping in and out for a token
    function toggleBridge(address bridgeToken) external onlyGovernorOrGuardian {
        if (!bridges[bridgeToken].allowed) revert InvalidToken();
        bool pausedStatus = bridges[bridgeToken].paused;
        bridges[bridgeToken].paused = !pausedStatus;
        emit BridgeTokenToggled(bridgeToken, !pausedStatus);
    }

    /// @notice Toggles fees for the address `theAddress`
    function toggleFeesForAddress(address theAddress) external onlyGovernorOrGuardian {
        uint256 feeExemptStatus = 1 - isFeeExempt[theAddress];
        isFeeExempt[theAddress] = feeExemptStatus;
        emit FeeToggled(theAddress, feeExemptStatus);
    }
}

// ============================================================
// FILE: contracts/mock/MockStableMaster.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/IAgToken.sol";
import "./MockToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SLPData, MintBurnData } from "../interfaces/coreModule/IStableMaster.sol";

// All the details about a collateral that are going to be stored in `StableMaster`
struct Collateral {
    // Interface for the token accepted by the underlying `PoolManager` contract
    IERC20 token;
    // Reference to the `SanToken` for the pool
    MockToken sanToken;
    // Reference to the `PerpetualManager` for the pool
    address perpetualManager;
    // Adress of the oracle for the change rate between
    // collateral and the corresponding stablecoin
    address oracle;
    // Amount of collateral in the reserves that comes from users
    // converted in stablecoin value. Updated at minting and burning.
    // A `stocksUsers` of 10 for a collateral type means that overall the balance of the collateral from users
    // that minted/burnt stablecoins using this collateral is worth 10 of stablecoins
    uint256 stocksUsers;
    // Exchange rate between sanToken and collateral
    uint256 sanRate;
    // Base used in the collateral implementation (ERC20 decimal)
    uint256 collatBase;
    // Parameters for SLPs and update of the `sanRate`
    SLPData slpData;
    // All the fees parameters
    MintBurnData feeData;
}

contract MockStableMaster {
    mapping(address => uint256) public poolManagerMap;

    constructor() {}

    function updateStocksUsers(uint256 amount, address poolManager) external {
        poolManagerMap[poolManager] += amount;
    }

    function burnSelf(IAgToken agToken, uint256 amount, address burner) external {
        agToken.burnSelf(amount, burner);
    }

    function burnFrom(IAgToken agToken, uint256 amount, address burner, address sender) external {
        agToken.burnFrom(amount, burner, sender);
    }

    function mint(IAgToken agToken, address account, uint256 amount) external {
        agToken.mint(account, amount);
    }
}

contract MockStableMasterSanWrapper is MockStableMaster {
    using SafeERC20 for IERC20;

    /// @notice Maps a `PoolManager` contract handling a collateral for this stablecoin to the properties of the struct above
    mapping(address => Collateral) public collateralMap;

    constructor() MockStableMaster() {}

    uint256 internal constant _BASE_TOKENS = 10 ** 18;
    uint256 internal constant _BASE_PARAMS = 10 ** 9;
    IERC20 public token;

    function deposit(uint256 assets, address receiver, address poolManager) external {
        token.safeTransferFrom(msg.sender, address(this), assets);
        Collateral storage col = collateralMap[poolManager];
        _updateSanRate(col);
        uint256 amount = (assets * _BASE_TOKENS) / col.sanRate;
        col.sanToken.mint(receiver, amount);
    }

    function withdraw(uint256 assets, address sender, address receiver, address poolManager) external {
        Collateral storage col = collateralMap[poolManager];
        _updateSanRate(col);
        col.sanToken.burn(sender, assets);
        // Computing the amount of collateral to give back to the SLP depending on slippage and on the `sanRate`
        uint256 redeemInC = (assets * (_BASE_PARAMS - col.slpData.slippage) * col.sanRate) /
            (_BASE_TOKENS * _BASE_PARAMS);
        token.safeTransfer(receiver, redeemInC);
    }

    function setPoolManagerToken(address, address token_) external {
        token = MockToken(token_);
    }

    function setPoolManagerSanToken(address poolManager, address sanToken_) external {
        Collateral storage col = collateralMap[poolManager];
        col.sanToken = MockToken(sanToken_);
    }

    function setSanRate(address poolManager, uint256 sanRate_) external {
        Collateral storage col = collateralMap[poolManager];
        col.sanRate = sanRate_;
    }

    function _updateSanRate(Collateral storage col) internal {
        uint256 _lockedInterests = col.slpData.lockedInterests;
        // Checking if the `sanRate` has been updated in the current block using past block fees
        // This is a way to prevent flash loans attacks when an important amount of fees are going to be distributed
        // in a block: fees are stored but will just be distributed to SLPs who will be here during next blocks
        if (block.timestamp != col.slpData.lastBlockUpdated && _lockedInterests > 0) {
            uint256 sanMint = col.sanToken.totalSupply();
            if (sanMint != 0) {
                // Checking if the update is too important and should be made in multiple blocks
                if (_lockedInterests > col.slpData.maxInterestsDistributed) {
                    // `sanRate` is expressed in `BASE_TOKENS`
                    col.sanRate += (col.slpData.maxInterestsDistributed * 10 ** 18) / sanMint;
                    _lockedInterests -= col.slpData.maxInterestsDistributed;
                } else {
                    col.sanRate += (_lockedInterests * 10 ** 18) / sanMint;
                    _lockedInterests = 0;
                }
            } else {
                _lockedInterests = 0;
            }
        }
        col.slpData.lockedInterests = _lockedInterests;
        col.slpData.lastBlockUpdated = block.timestamp;
    }

    // copy paste from the deployed contract
    function estimateSanRate(address poolManager) external view returns (uint256 sanRate, uint64 slippage) {
        Collateral memory col = collateralMap[poolManager];
        uint256 _lockedInterests = col.slpData.lockedInterests;
        // Checking if the `sanRate` has been updated in the current block using past block fees
        // This is a way to prevent flash loans attacks when an important amount of fees are going to be distributed
        // in a block: fees are stored but will just be distributed to SLPs who will be here during next blocks
        if (block.timestamp != col.slpData.lastBlockUpdated && _lockedInterests > 0) {
            uint256 sanMint = col.sanToken.totalSupply();
            if (sanMint != 0) {
                // Checking if the update is too important and should be made in multiple blocks
                if (_lockedInterests > col.slpData.maxInterestsDistributed) {
                    // `sanRate` is expressed in `BASE_TOKENS`
                    col.sanRate += (col.slpData.maxInterestsDistributed * 10 ** 18) / sanMint;
                    _lockedInterests -= col.slpData.maxInterestsDistributed;
                } else {
                    col.sanRate += (_lockedInterests * 10 ** 18) / sanMint;
                    _lockedInterests = 0;
                }
            } else {
                _lockedInterests = 0;
            }
        }
        return (col.sanRate, col.slpData.slippage);
    }

    function setSLPData(
        address poolManager,
        uint256 lockedInterests,
        uint256 maxInterestsDistributed,
        uint64 slippage
    ) external {
        Collateral storage col = collateralMap[poolManager];
        col.slpData.lockedInterests = lockedInterests;
        col.slpData.maxInterestsDistributed = maxInterestsDistributed;
        col.slpData.slippage = slippage;
    }
}

// ============================================================
// FILE: contracts/mock/MockSwapper.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/ISwapper.sol";

contract MockSwapper is ISwapper {
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    uint256 public counter;

    constructor() {}

    function swap(IERC20, IERC20, address, uint256, uint256, bytes calldata data) external {
        counter += 1;
        data;
    }
}

contract MockSwapperWithSwap is ISwapper {
    using SafeERC20 for IERC20;
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");

    uint256 public counter;

    constructor() {}

    function swap(
        IERC20,
        IERC20 outToken,
        address outTokenRecipient,
        uint256 outTokenOwed,
        uint256,
        bytes calldata data
    ) external {
        counter += 1;
        outToken.safeTransfer(outTokenRecipient, outTokenOwed);

        data;
    }
}

// ============================================================
// FILE: contracts/mock/MockSwapperSidechain.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../swapper/Swapper.sol";

/// @title MockSwapperSidechain
/// @author Angle Labs, Inc.
contract MockSwapperSidechain is Swapper {
    error NotImplemented();

    /// @notice Constructor of the contract
    /// @param _core Core address
    /// @param _uniV3Router UniswapV3 Router address
    /// @param _oneInch 1Inch Router address
    /// @param _angleRouter AngleRouter contract address
    constructor(
        ICoreBorrow _core,
        IUniswapV3Router _uniV3Router,
        address _oneInch,
        IAngleRouterSidechain _angleRouter
    ) Swapper(_core, _uniV3Router, _oneInch, _angleRouter) {}

    function _swapLeverage(bytes memory) internal pure override returns (uint256) {
        revert NotImplemented();
    }
}

// ============================================================
// FILE: contracts/mock/MockToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockToken is ERC20 {
    event Minting(address indexed _to, address indexed _minter, uint256 _amount);

    event Burning(address indexed _from, address indexed _burner, uint256 _amount);

    uint8 internal _decimal;
    mapping(address => bool) public minters;
    address public treasury;

    constructor(string memory name_, string memory symbol_, uint8 decimal_) ERC20(name_, symbol_) {
        _decimal = decimal_;
    }

    function decimals() public view override returns (uint8) {
        return _decimal;
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
        emit Minting(account, msg.sender, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
        emit Burning(account, msg.sender, amount);
    }

    function setAllowance(address from, address to) public {
        _approve(from, to, type(uint256).max);
    }

    function burnSelf(uint256 amount, address account) public {
        _burn(account, amount);
        emit Burning(account, msg.sender, amount);
    }

    function addMinter(address minter) public {
        minters[minter] = true;
    }

    function removeMinter(address minter) public {
        minters[minter] = false;
    }

    function setTreasury(address _treasury) public {
        treasury = _treasury;
    }
}

// ============================================================
// FILE: contracts/mock/MockTokenPermit.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract MockTokenPermit is ERC20Permit {
    using SafeERC20 for IERC20;
    event Minting(address indexed _to, address indexed _minter, uint256 _amount);

    event Burning(address indexed _from, address indexed _burner, uint256 _amount);

    uint8 internal _decimal;
    mapping(address => bool) public minters;
    address public treasury;
    uint256 public fees;

    bool public reverts;

    constructor(string memory name_, string memory symbol_, uint8 decimal_) ERC20Permit(name_) ERC20(name_, symbol_) {
        _decimal = decimal_;
    }

    function decimals() public view override returns (uint8) {
        return _decimal;
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
        emit Minting(account, msg.sender, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
        emit Burning(account, msg.sender, amount);
    }

    function setAllowance(address from, address to) public {
        _approve(from, to, type(uint256).max);
    }

    function burnSelf(uint256 amount, address account) public {
        _burn(account, amount);
        emit Burning(account, msg.sender, amount);
    }

    function addMinter(address minter) public {
        minters[minter] = true;
    }

    function removeMinter(address minter) public {
        minters[minter] = false;
    }

    function setTreasury(address _treasury) public {
        treasury = _treasury;
    }

    function setFees(uint256 _fees) public {
        fees = _fees;
    }

    function recoverERC20(IERC20 token, address to, uint256 amount) external {
        token.safeTransfer(to, amount);
    }

    function swapIn(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        require(!reverts);

        IERC20(bridgeToken).safeTransferFrom(msg.sender, address(this), amount);
        uint256 canonicalOut = amount;
        canonicalOut -= (canonicalOut * fees) / 10 ** 9;
        _mint(to, canonicalOut);
        return canonicalOut;
    }

    function swapOut(address bridgeToken, uint256 amount, address to) external returns (uint256) {
        require(!reverts);
        _burn(msg.sender, amount);
        uint256 bridgeOut = amount;
        bridgeOut -= (bridgeOut * fees) / 10 ** 9;
        IERC20(bridgeToken).safeTransfer(to, bridgeOut);
        return bridgeOut;
    }
}

// ============================================================
// FILE: contracts/mock/MockTreasury.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/ITreasury.sol";
import "../interfaces/IFlashAngle.sol";
import "../interfaces/IVaultManager.sol";

contract MockTreasury is ITreasury {
    IAgToken public override stablecoin;
    address public governor;
    address public guardian;
    address public vaultManager1;
    address public vaultManager2;
    address public flashLoanModule;
    address[] public vaultManagerList;

    constructor(
        IAgToken _stablecoin,
        address _governor,
        address _guardian,
        address _vaultManager1,
        address _vaultManager2,
        address _flashLoanModule
    ) {
        stablecoin = _stablecoin;
        governor = _governor;
        guardian = _guardian;
        vaultManager1 = _vaultManager1;
        vaultManager2 = _vaultManager2;
        flashLoanModule = _flashLoanModule;
    }

    function isGovernor(address admin) external view override returns (bool) {
        return (admin == governor);
    }

    function isGovernorOrGuardian(address admin) external view override returns (bool) {
        return (admin == governor || admin == guardian);
    }

    function isVaultManager(address _vaultManager) external view override returns (bool) {
        return (_vaultManager == vaultManager1 || _vaultManager == vaultManager2);
    }

    function setStablecoin(IAgToken _stablecoin) external {
        stablecoin = _stablecoin;
    }

    function setFlashLoanModule(address _flashLoanModule) external override {
        flashLoanModule = _flashLoanModule;
    }

    function setGovernor(address _governor) external {
        governor = _governor;
    }

    function setVaultManager(address _vaultManager) external {
        vaultManager1 = _vaultManager;
    }

    function setVaultManager2(address _vaultManager) external {
        vaultManager2 = _vaultManager;
    }

    function setTreasury(address _agTokenOrVaultManager, address _treasury) external {
        IAgToken(_agTokenOrVaultManager).setTreasury(_treasury);
    }

    function addMinter(IAgToken _agToken, address _minter) external {
        _agToken.addMinter(_minter);
    }

    function removeMinter(IAgToken _agToken, address _minter) external {
        _agToken.removeMinter(_minter);
    }

    function accrueInterestToTreasury(IFlashAngle flashAngle) external returns (uint256 balance) {
        balance = flashAngle.accrueInterestToTreasury(stablecoin);
    }

    function accrueInterestToTreasuryVaultManager(IVaultManager _vaultManager) external returns (uint256, uint256) {
        return _vaultManager.accrueInterestToTreasury();
    }
}

// ============================================================
// FILE: contracts/mock/MockUniswapV3Pool.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract MockUniswapV3Pool {
    address public token0;
    address public token1;
    uint32 public constant EPOCH_DURATION = 24 * 3600 * 7;

    function setToken(address token, uint256 who) external {
        if (who == 0) token0 = token;
        else token1 = token;
    }

    function round(uint256 amount) external pure returns (uint256) {
        return (amount / EPOCH_DURATION) * EPOCH_DURATION;
    }
}

// ============================================================
// FILE: contracts/mock/MockVaultManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/IVaultManager.sol";
import "../interfaces/ITreasury.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockVaultManager {
    ITreasury public treasury;
    mapping(uint256 => Vault) public vaultData;
    mapping(uint256 => address) public ownerOf;
    uint256 public surplus;
    uint256 public badDebt;
    IAgToken public token;
    address public oracle = address(this);

    address public governor;
    address public collateral;
    address public stablecoin;
    uint256 public oracleValue;
    uint256 public interestAccumulator;
    uint256 public collateralFactor;
    uint256 public totalNormalizedDebt;

    constructor(address _treasury) {
        treasury = ITreasury(_treasury);
    }

    function accrueInterestToTreasury() external returns (uint256, uint256) {
        // Avoid the function to be view
        if (surplus >= badDebt) {
            token.mint(msg.sender, surplus - badDebt);
        }
        return (surplus, badDebt);
    }

    function read() external view returns (uint256) {
        return oracleValue;
    }

    function setParams(
        address _governor,
        address _collateral,
        address _stablecoin,
        uint256 _oracleValue,
        uint256 _interestAccumulator,
        uint256 _collateralFactor,
        uint256 _totalNormalizedDebt
    ) external {
        governor = _governor;
        collateral = _collateral;
        stablecoin = _stablecoin;
        interestAccumulator = _interestAccumulator;
        collateralFactor = _collateralFactor;
        totalNormalizedDebt = _totalNormalizedDebt;
        oracleValue = _oracleValue;
    }

    function setOwner(uint256 vaultID, address owner) external virtual {
        ownerOf[vaultID] = owner;
    }

    function setVaultData(uint256 normalizedDebt, uint256 collateralAmount, uint256 vaultID) external {
        vaultData[vaultID].normalizedDebt = normalizedDebt;
        vaultData[vaultID].collateralAmount = collateralAmount;
    }

    function isGovernor(address admin) external view returns (bool) {
        return admin == governor;
    }

    function setSurplusBadDebt(uint256 _surplus, uint256 _badDebt, IAgToken _token) external {
        surplus = _surplus;
        badDebt = _badDebt;
        token = _token;
    }

    function getDebtOut(uint256 vaultID, uint256 amountStablecoins, uint256 senderBorrowFee) external {}

    function setTreasury(address _treasury) external {
        treasury = ITreasury(_treasury);
    }

    function getVaultDebt(uint256 vaultID) external view returns (uint256) {
        vaultID;
        token;
        return 0;
    }

    function createVault(address toVault) external view returns (uint256) {
        toVault;
        token;
        return 0;
    }
}

contract MockVaultManagerListing is MockVaultManager {
    // @notice Mapping from owner address to all his vaults
    mapping(address => uint256[]) internal _ownerListVaults;

    constructor(address _treasury) MockVaultManager(_treasury) {}

    function getUserVaults(address owner) public view returns (uint256[] memory) {
        return _ownerListVaults[owner];
    }

    function getUserCollateral(address owner) public view returns (uint256 totalCollateral) {
        uint256[] memory vaultList = _ownerListVaults[owner];
        uint256 vaultListLength = vaultList.length;
        for (uint256 k; k < vaultListLength; ++k) {
            totalCollateral += vaultData[vaultList[k]].collateralAmount;
        }
        return totalCollateral;
    }

    function setOwner(uint256 vaultID, address owner) external override {
        if (ownerOf[vaultID] != address(0)) _removeVaultFromList(ownerOf[vaultID], vaultID);
        _ownerListVaults[owner].push(vaultID);
        ownerOf[vaultID] = owner;
    }

    /// @notice Remove `vaultID` from `user` stroed vault list
    /// @param user Address to look out for the vault list
    /// @param vaultID VaultId to remove from the list
    /// @dev The vault is necessarily in the list
    function _removeVaultFromList(address user, uint256 vaultID) internal {
        uint256[] storage vaultList = _ownerListVaults[user];
        uint256 vaultListLength = vaultList.length;
        for (uint256 i; i < vaultListLength - 1; ++i) {
            if (vaultList[i] == vaultID) {
                vaultList[i] = vaultList[vaultListLength - 1];
                break;
            }
        }
        vaultList.pop();
    }
}

// ============================================================
// FILE: contracts/mock/MockVeBoostProxy.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../interfaces/governance/IVeBoostProxy.sol";

contract MockVeBoostProxy is IVeBoostProxy {
    //solhint-disable-next-line
    mapping(address => uint256) public adjusted_balance_of;

    constructor() {}

    function setBalance(address concerned, uint256 balance) external {
        adjusted_balance_of[concerned] = balance;
    }
}

// ============================================================
// FILE: contracts/oracle/BaseOracleChainlinkMulti.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/*
                  *                                                  █                              
                *****                                               ▓▓▓                             
                  *                                               ▓▓▓▓▓▓▓                         
                                   *            ///.           ▓▓▓▓▓▓▓▓▓▓▓▓▓                       
                                 *****        ////////            ▓▓▓▓▓▓▓                          
                                   *       /////////////            ▓▓▓                             
                     ▓▓                  //////////////////          █         ▓▓                   
                   ▓▓  ▓▓             ///////////////////////                ▓▓   ▓▓                
                ▓▓       ▓▓        ////////////////////////////           ▓▓        ▓▓              
              ▓▓            ▓▓    /////////▓▓▓///////▓▓▓/////////       ▓▓             ▓▓            
           ▓▓                 ,////////////////////////////////////// ▓▓                 ▓▓         
        ▓▓                  //////////////////////////////////////////                     ▓▓      
      ▓▓                  //////////////////////▓▓▓▓/////////////////////                          
                       ,////////////////////////////////////////////////////                        
                    .//////////////////////////////////////////////////////////                     
                     .//////////////////////////██.,//////////////////////////█                     
                       .//////////////////////████..,./////////////////////██                       
                        ...////////////////███████.....,.////////////////███                        
                          ,.,////////////████████ ........,///////////████                          
                            .,.,//////█████████      ,.......///////████                            
                               ,..//████████           ........./████                               
                                 ..,██████                .....,███                                 
                                    .██                     ,.,█                                    
                                                                                                    
                                                                                                    
                                                                                                    
               ▓▓            ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓               ▓▓▓▓▓▓▓▓▓▓          
             ▓▓▓▓▓▓          ▓▓▓    ▓▓▓       ▓▓▓               ▓▓               ▓▓   ▓▓▓▓         
           ▓▓▓    ▓▓▓        ▓▓▓    ▓▓▓       ▓▓▓    ▓▓▓        ▓▓               ▓▓▓▓▓             
          ▓▓▓        ▓▓      ▓▓▓    ▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓          
*/

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../interfaces/IOracle.sol";
import "../interfaces/ITreasury.sol";

/// @title BaseOracleChainlinkMulti
/// @author Angle Labs, Inc.
/// @notice Base Contract to be overriden by all contracts of the protocol
/// @dev This base contract concerns an oracle that uses Chainlink with multiple pools to read from
/// @dev All gas-efficient implementation of the `OracleChainlinkMulti` contract should inherit from this
abstract contract BaseOracleChainlinkMulti is IOracle {
    // ========================= Parameters and References =========================

    /// @inheritdoc IOracle
    ITreasury public override treasury;
    /// @notice Represent the maximum amount of time (in seconds) between each Chainlink update
    /// before the price feed is considered stale
    uint32 public stalePeriod;

    // =================================== Event ===================================

    event StalePeriodUpdated(uint32 _stalePeriod);

    // =================================== Errors ===================================

    error InvalidChainlinkRate();
    error NotGovernorOrGuardian();
    error NotVaultManagerOrGovernor();

    /// @notice Constructor for an oracle using Chainlink with multiple pools to read from
    /// @param _stalePeriod Minimum feed update frequency for the oracle to not revert
    /// @param _treasury Treasury associated to the VaultManager which reads from this feed
    constructor(uint32 _stalePeriod, address _treasury) {
        stalePeriod = _stalePeriod;
        treasury = ITreasury(_treasury);
    }

    // ============================= Reading Oracles ===============================

    /// @inheritdoc IOracle
    function read() external view virtual override returns (uint256 quoteAmount);

    /// @inheritdoc IOracle
    function circuitChainlink() public view virtual returns (AggregatorV3Interface[] memory);

    /// @notice Reads a Chainlink feed using a quote amount and converts the quote amount to
    /// the out-currency
    /// @param quoteAmount The amount for which to compute the price expressed with base decimal
    /// @param feed Chainlink feed to query
    /// @param multiplied Whether the ratio outputted by Chainlink should be multiplied or divided
    /// to the `quoteAmount`
    /// @param decimals Number of decimals of the corresponding Chainlink pair
    /// @return The `quoteAmount` converted in out-currency
    function _readChainlinkFeed(
        uint256 quoteAmount,
        AggregatorV3Interface feed,
        uint8 multiplied,
        uint256 decimals
    ) internal view returns (uint256) {
        (uint80 roundId, int256 ratio, , uint256 updatedAt, uint80 answeredInRound) = feed.latestRoundData();
        if (ratio <= 0 || roundId > answeredInRound || block.timestamp - updatedAt > stalePeriod)
            revert InvalidChainlinkRate();
        uint256 castedRatio = uint256(ratio);
        // Checking whether we should multiply or divide by the ratio computed
        if (multiplied == 1) return (quoteAmount * castedRatio) / (10 ** decimals);
        else return (quoteAmount * (10 ** decimals)) / castedRatio;
    }

    // ======================= Governance Related Functions ========================

    /// @notice Changes the stale period
    /// @param _stalePeriod New stale period (in seconds)
    function changeStalePeriod(uint32 _stalePeriod) external {
        if (!treasury.isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        stalePeriod = _stalePeriod;
        emit StalePeriodUpdated(_stalePeriod);
    }

    /// @inheritdoc IOracle
    function setTreasury(address _treasury) external override {
        if (!treasury.isVaultManager(msg.sender) && !treasury.isGovernor(msg.sender))
            revert NotVaultManagerOrGovernor();
        treasury = ITreasury(_treasury);
    }
}

// ============================================================
// FILE: contracts/oracle/BaseOracleChainlinkMultiTwoFeeds.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "./BaseOracleChainlinkMulti.sol";

/// @title BaseOracleChainlinkMultiTwoFeeds
/// @author Angle Labs, Inc.
/// @notice Base contract for an oracle that reads into two Chainlink feeds (including an EUR/USD feed) which both have
/// 8 decimals
abstract contract BaseOracleChainlinkMultiTwoFeeds is BaseOracleChainlinkMulti {
    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMulti(_stalePeriod, _treasury) {}

    /// @notice Returns the quote amount of the oracle contract
    function _getQuoteAmount() internal view virtual returns (uint256) {
        return 10 ** 18;
    }

    /// @inheritdoc IOracle
    function read() public view virtual override returns (uint256 quoteAmount) {
        quoteAmount = _getQuoteAmount();
        AggregatorV3Interface[] memory _circuitChainlink = circuitChainlink();
        uint8[2] memory circuitChainIsMultiplied = [1, 0];
        uint8[2] memory chainlinkDecimals = [8, 8];
        uint256 circuitLength = _circuitChainlink.length;
        for (uint256 i; i < circuitLength; ++i) {
            quoteAmount = _readChainlinkFeed(
                quoteAmount,
                _circuitChainlink[i],
                circuitChainIsMultiplied[i],
                chainlinkDecimals[i]
            );
        }
    }
}

// ============================================================
// FILE: contracts/oracle/BaseOracleChainlinkOneFeed.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "./BaseOracleChainlinkMulti.sol";

/// @title BaseOracleChainlinkOneFeed
/// @author Angle Labs, Inc.
/// @notice Base contract for an oracle that reads into one Chainlink feeds with 8 decimals
abstract contract BaseOracleChainlinkOneFeed is BaseOracleChainlinkMulti {
    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMulti(_stalePeriod, _treasury) {}

    /// @notice Returns the quote amount of the oracle contract
    function _getQuoteAmount() internal view virtual returns (uint256) {
        return 10 ** 18;
    }

    /// @inheritdoc IOracle
    function read() external view virtual override returns (uint256 quoteAmount) {
        AggregatorV3Interface[] memory _circuitChainlink = circuitChainlink();
        quoteAmount = _readChainlinkFeed(_getQuoteAmount(), _circuitChainlink[0], 1, 8);
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/arbitrum/EUR/OracleBTCEURChainlinkArbitrum.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleBTCEURChainlinkArbitrum
/// @author Angle Labs, Inc.
/// @notice Gives the price of BTC in Euro in base 18
/// @dev This contract is built to be deployed on Arbitrum
contract OracleBTCEURChainlinkArbitrum is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "BTC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle BTC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x6ce185860a4963106506C203335A2910413708e9);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xA14d53bC1F1c0F31B4aA3BD109344E5009051a84);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/arbitrum/EUR/OracleETHEURChainlinkArbitrum.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleETHEURChainlinkArbitrum
/// @author Angle Labs, Inc.
/// @notice Gives the price of ETH in Euro in base 18
/// @dev This contract is built to be deployed on Arbitrum
contract OracleETHEURChainlinkArbitrum is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "ETH/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xA14d53bC1F1c0F31B4aA3BD109344E5009051a84);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/arbitrum/EUR/OracleSTEURETHChainlinkArbitrum.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";
import "../../../../interfaces/external/IERC4626.sol";

/// @title OracleSTEURETHChainlinkArbitrum
/// @author Angle Labs, Inc.
/// @notice Gives the price of stEUR in ETH in base 18
contract OracleSTEURETHChainlinkArbitrum is BaseOracleChainlinkMultiTwoFeeds, AggregatorV3Interface {
    string public constant DESCRIPTION = "stEUR/ETH Oracle";
    IERC4626 public constant STEUR = IERC4626(0x004626A008B1aCdC4c74ab51644093b155e59A23);

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle agEUR/USD - Redstone
        _circuitChainlink[0] = AggregatorV3Interface(0x37963F10245e7c3a10c0E9d43a6E617B4Bc8440A);
        // Oracle ETH/USD - Chainlink
        _circuitChainlink[1] = AggregatorV3Interface(0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612);
        return _circuitChainlink;
    }

    /// @inheritdoc BaseOracleChainlinkMultiTwoFeeds
    function _getQuoteAmount() internal view override returns (uint256) {
        return STEUR.convertToAssets(1 ether);
    }

    /*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                           CHAINLINK INTERFACE COMPATIBILITY                                        
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc AggregatorV3Interface
    function decimals() external pure returns (uint8) {
        return 18;
    }

    /// @inheritdoc AggregatorV3Interface
    function description() external pure returns (string memory desc) {
        desc = "Angle stEUR/ETH Price Feed";
    }

    /// @inheritdoc AggregatorV3Interface
    function version() external pure returns (uint256) {
        return 1;
    }

    /// @inheritdoc AggregatorV3Interface
    /// @return roundID
    /// @return aggregatorPrice
    /// @return startedAt
    /// @return timestamp
    /// @return answeredInRound
    /// @dev The `roundId`, `startedAt` and `answeredInRound` values return in this function must be disregarded
    /// @dev In order not to multiply oracle calls, the timestamp returned here is the `block.timestamp`.
    /// The contract still performs an heartbeat check for every oracle value that it reads, and the accurate
    /// value of the `timestamp` (if this one is taken as the minimum between the last update timestamp
    /// of the two oracles) is between: current timestamp and the current timestamp minus `stalePeriod`
    function latestRoundData() public view returns (uint80, int256, uint256, uint256, uint80) {
        return (0, int256(read()), 0, block.timestamp, 0);
    }

    /// @inheritdoc AggregatorV3Interface
    /// @dev This function always returns the latestRoundData
    function getRoundData(uint80) external view returns (uint80, int256, uint256, uint256, uint80) {
        return latestRoundData();
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/arbitrum/EUR/OracleUSDCEURChainlinkArbitrum.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleUSDCEURChainlinkArbitrum
/// @author Angle Labs, Inc.
/// @notice Gives the price of USDC in Euro in base 18
/// @dev This contract is built to be deployed on Arbitrum
contract OracleUSDCEURChainlinkArbitrum is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "USDC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xA14d53bC1F1c0F31B4aA3BD109344E5009051a84);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/avalanche/EUR/OracleAVAXEURChainlinkAvalanche.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleAVAXEURChainlinkAvalanche
/// @author Angle Labs, Inc.
/// @notice Gives the price of AVAX in Euro in base 18
/// @dev This contract is built to be deployed on Avalanche
contract OracleAVAXEURChainlinkAvalanche is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "AVAX/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle AVAX/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x0A77230d17318075983913bC2145DB16C7366156);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x192f2DBA961Bb0277520C082d6bfa87D5961333E);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/avalanche/EUR/OracleUSDCEURChainlinkAvalanche.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleUSDCEURChainlinkAvalanche
/// @author Angle Labs, Inc.
/// @notice Gives the price of USDC in Euro in base 18
/// @dev This contract is built to be deployed on Avalanche
contract OracleUSDCEURChainlinkAvalanche is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "USDC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle USDC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xF096872672F44d6EBA71458D74fe67F9a77a23B9);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x192f2DBA961Bb0277520C082d6bfa87D5961333E);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleBTCEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleBTCEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of BTC in Euro in base 18
contract OracleBTCEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "BTC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle BTC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleCBETHEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleCBETHEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of cbETH in Euro in base 18
contract OracleCBETHEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "cbETH/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](3);
        // Oracle cbETH/ETH
        _circuitChainlink[0] = AggregatorV3Interface(0xF017fcB346A1885194689bA23Eff2fE6fA5C483b);
        // Oracle ETH/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
        // Oracle EUR/USD
        _circuitChainlink[2] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }

    /// @inheritdoc BaseOracleChainlinkMultiTwoFeeds
    function read() public view virtual override returns (uint256 quoteAmount) {
        quoteAmount = _getQuoteAmount();
        AggregatorV3Interface[] memory _circuitChainlink = circuitChainlink();
        uint8[3] memory circuitChainIsMultiplied = [1, 1, 0];
        uint8[3] memory chainlinkDecimals = [18, 8, 8];
        uint256 circuitLength = _circuitChainlink.length;
        for (uint256 i; i < circuitLength; ++i) {
            quoteAmount = _readChainlinkFeed(
                quoteAmount,
                _circuitChainlink[i],
                circuitChainIsMultiplied[i],
                chainlinkDecimals[i]
            );
        }
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleETHEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleETHEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of ETH in Euro in base 18
contract OracleETHEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "ETH/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleHIGHEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleHIGHEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of HIGH in Euro in base 18
contract OracleHIGHEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "HIGH/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](1);
        // Oracle HIGH/EUR
        _circuitChainlink[0] = AggregatorV3Interface(0x9E8E794ad6Ecdb6d5c7eaBE059D30E907F58859b);
        return _circuitChainlink;
    }

    /// @inheritdoc BaseOracleChainlinkMultiTwoFeeds
    function read() public view override returns (uint256 quoteAmount) {
        quoteAmount = _readChainlinkFeed(_getQuoteAmount(), circuitChainlink()[0], 1, 8);
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleIB01EURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleIB01EURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of IB01 in Euro in base 18
contract OracleIB01EURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "IB01/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle IB01/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x32d1463EB53b73C095625719Afa544D5426354cB);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleLUSDEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleLUSDEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of LUSD in Euro in base 18
contract OracleLUSDEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "LUSD/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle LUSD/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x3D7aE7E594f2f2091Ad8798313450130d0Aba3a0);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleUSDCEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleUSDCEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of USDC in Euro in base 18
contract OracleUSDCEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "USDC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle USDC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/EUR/OracleWSTETHEURChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";
import "../../../../interfaces/external/lido/IStETH.sol";

/// @title OracleWSTETHEURChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of wSTETH in Euro in base 18
contract OracleWSTETHEURChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "wSTETH/EUR Oracle";
    IStETH public constant STETH = IStETH(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle stETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xCfE54B5cD566aB89272946F602D76Ea879CAb4a8);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0xb49f677943BC038e9857d61E7d053CaA2C1734C1);
        return _circuitChainlink;
    }

    /// @inheritdoc BaseOracleChainlinkMultiTwoFeeds
    function _getQuoteAmount() internal view override returns (uint256) {
        return STETH.getPooledEthByShares(1 ether);
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/USD/OracleWSTETHUSDChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkOneFeed.sol";
import "../../../../interfaces/external/lido/IStETH.sol";

/// @title OracleWSTETHUSDChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of wSTETH in USD in base 18
contract OracleWSTETHUSDChainlink is BaseOracleChainlinkOneFeed {
    string public constant DESCRIPTION = "wSTETH/USD Oracle";
    IStETH public constant STETH = IStETH(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkOneFeed(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](1);
        // Oracle stETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xCfE54B5cD566aB89272946F602D76Ea879CAb4a8);
        return _circuitChainlink;
    }

    /// @inheritdoc BaseOracleChainlinkOneFeed
    function _getQuoteAmount() internal view override returns (uint256) {
        return STETH.getPooledEthByShares(1 ether);
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/XAU/OracleETHXAUChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleETHXAUChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of ETH in XAU in base 18
contract OracleETHXAUChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "ETH/GOLD Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
        // Oracle XAU/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x214eD9Da11D2fbe465a6fc601a91E62EbEc1a0D6);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/XAU/OracleLUSDXAUChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleLUSDXAUChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of LUSD in XAU in base 18
contract OracleLUSDXAUChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "LUSD/GOLD Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle LUSD/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x3D7aE7E594f2f2091Ad8798313450130d0Aba3a0);
        // Oracle XAU/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x214eD9Da11D2fbe465a6fc601a91E62EbEc1a0D6);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/XAU/OracleUSDCXAUChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleUSDCXAUChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of USDC in XAU in base 18
contract OracleUSDCXAUChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "USDC/GOLD Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle USDC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6);
        // Oracle XAU/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x214eD9Da11D2fbe465a6fc601a91E62EbEc1a0D6);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/mainnet/XAU/OracleWSTETHXAUChainlink.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";
import "../../../../interfaces/external/lido/IStETH.sol";

/// @title OracleWSTETHXAUChainlink
/// @author Angle Labs, Inc.
/// @notice Gives the price of wSTETH in XAU in base 18
contract OracleWSTETHXAUChainlink is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "wSTETH/XAU Oracle";
    IStETH public constant STETH = IStETH(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle stETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xCfE54B5cD566aB89272946F602D76Ea879CAb4a8);
        // Oracle XAU/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x214eD9Da11D2fbe465a6fc601a91E62EbEc1a0D6);
        return _circuitChainlink;
    }

    /// @inheritdoc BaseOracleChainlinkMultiTwoFeeds
    function _getQuoteAmount() internal view override returns (uint256) {
        return STETH.getPooledEthByShares(1 ether);
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/optimism/EUR/OracleETHEURChainlinkOptimism.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleETHEURChainlinkOptimism
/// @author Angle Labs, Inc.
/// @notice Gives the price of ETH in Euro in base 18
/// @dev This contract is built to be deployed on Optimism
contract OracleETHEURChainlinkOptimism is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "ETH/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x13e3Ee699D1909E989722E753853AE30b17e08c5);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x3626369857A10CcC6cc3A6e4f5C2f5984a519F20);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/optimism/EUR/OracleOPEURChainlinkOptimism.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleOPEURChainlinkOptimism
/// @author Angle Labs, Inc.
/// @notice Gives the price of OP in Euro in base 18
/// @dev This contract is built to be deployed on Optimism
contract OracleOPEURChainlinkOptimism is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "OP/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle OP/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x0D276FC14719f9292D5C1eA2198673d1f4269246);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x3626369857A10CcC6cc3A6e4f5C2f5984a519F20);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/optimism/EUR/OracleUSDCEURChainlinkOptimism.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleUSDCEURChainlinkOptimism
/// @author Angle Labs, Inc.
/// @notice Gives the price of USDC in Euro in base 18
/// @dev This contract is built to be deployed on Optimism
contract OracleUSDCEURChainlinkOptimism is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "USDC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle USDC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0x16a9FA2FDa030272Ce99B29CF780dFA30361E0f3);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x3626369857A10CcC6cc3A6e4f5C2f5984a519F20);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/polygon/EUR/OracleBTCEURChainlinkPolygon.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleBTCEURChainlinkPolygon
/// @author Angle Labs, Inc.
/// @notice Gives the price of BTC in Euro in base 18
/// @dev This contract is built to be deployed on Polygon
contract OracleBTCEURChainlinkPolygon is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "BTC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle BTC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xc907E116054Ad103354f2D350FD2514433D57F6f);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x73366Fe0AA0Ded304479862808e02506FE556a98);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/polygon/EUR/OracleETHEURChainlinkPolygon.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleETHEURChainlinkPolygon
/// @author Angle Labs, Inc.
/// @notice Gives the price of ETH in Euro in base 18
/// @dev This contract is built to be deployed on Polygon
contract OracleETHEURChainlinkPolygon is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "ETH/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xF9680D99D6C9589e2a93a78A04A279e509205945);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x73366Fe0AA0Ded304479862808e02506FE556a98);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/polygon/EUR/OracleMAIEURChainlinkPolygon.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleMAIEURChainlinkPolygon
/// @author Angle Labs, Inc.
/// @notice Gives the price of MAI in Euro in base 18
/// @dev This contract is built to be deployed on Polygon
contract OracleMAIEURChainlinkPolygon is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "MAI/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle MAI/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xd8d483d813547CfB624b8Dc33a00F2fcbCd2D428);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x73366Fe0AA0Ded304479862808e02506FE556a98);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/polygon/EUR/OracleMATICEURChainlinkPolygon.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleMATICEURChainlinkPolygon
/// @author Angle Labs, Inc.
/// @notice Gives the price of MATIC in Euro in base 18
/// @dev This contract is built to be deployed on Polygon
contract OracleMATICEURChainlinkPolygon is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "MATIC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle MATIC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xAB594600376Ec9fD91F8e885dADF0CE036862dE0);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x73366Fe0AA0Ded304479862808e02506FE556a98);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/polygon/EUR/OracleUSDCEURChainlinkPolygon.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleUSDCEURChainlinkPolygon
/// @author Angle Labs, Inc.
/// @notice Gives the price of USDC in Euro in base 18
/// @dev This contract is built to be deployed on Polygon
contract OracleUSDCEURChainlinkPolygon is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "USDC/EUR Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle USDC/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xfE4A8cc5b5B2366C1B58Bea3858e81843581b2F7);
        // Oracle EUR/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x73366Fe0AA0Ded304479862808e02506FE556a98);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/implementations/polygon/XAU/OracleETHXAUChainlinkPolygon.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "../../../BaseOracleChainlinkMultiTwoFeeds.sol";

/// @title OracleETHXAUChainlinkPolygon
/// @author Angle Labs, Inc.
/// @notice Gives the price of ETH in XAU in base 18
/// @dev This contract is built to be deployed on Polygon
contract OracleETHXAUChainlinkPolygon is BaseOracleChainlinkMultiTwoFeeds {
    string public constant DESCRIPTION = "ETH/GOLD Oracle";

    constructor(uint32 _stalePeriod, address _treasury) BaseOracleChainlinkMultiTwoFeeds(_stalePeriod, _treasury) {}

    /// @inheritdoc IOracle
    function circuitChainlink() public pure override returns (AggregatorV3Interface[] memory) {
        AggregatorV3Interface[] memory _circuitChainlink = new AggregatorV3Interface[](2);
        // Oracle ETH/USD
        _circuitChainlink[0] = AggregatorV3Interface(0xF9680D99D6C9589e2a93a78A04A279e509205945);
        // Oracle XAU/USD
        _circuitChainlink[1] = AggregatorV3Interface(0x0C466540B2ee1a31b441671eac0ca886e051E410);
        return _circuitChainlink;
    }
}

// ============================================================
// FILE: contracts/oracle/KeeperRegistry.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/ICoreBorrow.sol";
import "../interfaces/IKeeperRegistry.sol";

/// @title KeeperRegistry
/// @notice Maintains a mapping of keepers authorized to use the core module just after oracle updates
/// @author Angle Labs, Inc.
contract KeeperRegistry is Initializable, IKeeperRegistry {
    using SafeERC20 for IERC20;

    /// @notice Contract handling access control
    ICoreBorrow public coreBorrow;

    /// @notice Trusted EOAs - needs to be tx.origin
    mapping(address => uint256) public trusted;

    uint256[48] private __gap;

    // =================================== EVENTS ==================================

    event TrustedToggled(address indexed wallet, bool trust);

    // =================================== ERRORS ==================================

    error NotGovernorOrGuardian();
    error NotTrusted();
    error ZeroAddress();

    // ================================= MODIFIERS =================================

    /// @notice Checks whether the `msg.sender` has the governor role or the guardian role
    modifier onlyGovernorOrGuardian() {
        if (!coreBorrow.isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        _;
    }

    // ================================ CONSTRUCTOR ================================

    constructor() initializer {}

    function initialize(ICoreBorrow _coreBorrow) public initializer {
        if (address(_coreBorrow) == address(0)) revert ZeroAddress();
        coreBorrow = _coreBorrow;
    }

    // =============================== MAIN FUNCTIONS ==============================

    /// @notice Adds or removes a trusted keeper bot
    function toggleTrusted(address eoa) external onlyGovernorOrGuardian {
        uint256 trustedStatus = 1 - trusted[eoa];
        trusted[eoa] = trustedStatus;
        emit TrustedToggled(eoa, trustedStatus == 1);
    }

    /// @inheritdoc IKeeperRegistry
    function isTrusted(address caller) external view returns (bool) {
        return trusted[caller] == 1;
    }
}

// ============================================================
// FILE: contracts/oracle/OracleChainlinkMulti.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "./BaseOracleChainlinkMulti.sol";

/// @title OracleChainlinkMulti
/// @author Angle Labs, Inc.
/// @notice Oracle contract, one contract is deployed per collateral/stablecoin pair
/// @dev This contract concerns an oracle that uses Chainlink with multiple pools to read from
/// @dev Typically we expect to use this contract to read like the ETH/USD and then USD/EUR feed
contract OracleChainlinkMulti is BaseOracleChainlinkMulti {
    // ========================= Parameters and References =========================

    /// @notice Chainlink pools, the order of the pools has to be the order in which they are read for the computation
    /// of the price
    AggregatorV3Interface[] internal _circuitChainlink;
    /// @notice Whether each rate for the pairs in `circuitChainlink` should be multiplied or divided
    uint8[] public circuitChainIsMultiplied;
    /// @notice Decimals for each Chainlink pairs
    uint8[] public chainlinkDecimals;
    /// @notice Unit of the stablecoin
    uint256 public immutable outBase;
    /// @notice Description of the assets concerned by the oracle and the price outputted
    string public description;

    // ===================================== Error =================================

    error IncompatibleLengths();

    /// @notice Constructor for an oracle using Chainlink with multiple pools to read from
    /// @param circuitChainlink_ Chainlink pool addresses (in order)
    /// @param _circuitChainIsMultiplied Whether we should multiply or divide by this rate
    /// @param _outBase Unit of the stablecoin (or the out asset) associated to the oracle
    /// @param _stalePeriod Minimum feed update frequency for the oracle to not revert
    /// @param _treasury Treasury associated to the VaultManager which reads from this feed
    /// @param _description Description of the assets concerned by the oracle
    /// @dev For instance, if this oracle is supposed to give the price of ETH in EUR, and if the agEUR
    /// stablecoin associated to EUR has 18 decimals, then `outBase` should be 10**18
    constructor(
        address[] memory circuitChainlink_,
        uint8[] memory _circuitChainIsMultiplied,
        uint256 _outBase,
        uint32 _stalePeriod,
        address _treasury,
        string memory _description
    ) BaseOracleChainlinkMulti(_stalePeriod, _treasury) {
        outBase = _outBase;
        description = _description;
        uint256 circuitLength = circuitChainlink_.length;
        if (circuitLength == 0 || circuitLength != _circuitChainIsMultiplied.length) revert IncompatibleLengths();
        for (uint256 i; i < circuitLength; ++i) {
            AggregatorV3Interface _pool = AggregatorV3Interface(circuitChainlink_[i]);
            _circuitChainlink.push(_pool);
            chainlinkDecimals.push(_pool.decimals());
        }
        circuitChainIsMultiplied = _circuitChainIsMultiplied;
    }

    // ============================= Reading Oracles ===============================

    /// @inheritdoc IOracle
    function circuitChainlink() public view override returns (AggregatorV3Interface[] memory) {
        return _circuitChainlink;
    }

    /// @inheritdoc IOracle
    function read() external view override returns (uint256 quoteAmount) {
        quoteAmount = outBase;
        uint256 circuitLength = _circuitChainlink.length;
        for (uint256 i; i < circuitLength; ++i) {
            quoteAmount = _readChainlinkFeed(
                quoteAmount,
                _circuitChainlink[i],
                circuitChainIsMultiplied[i],
                chainlinkDecimals[i]
            );
        }
    }
}

// ============================================================
// FILE: contracts/settlement/Settlement.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "../interfaces/IAgToken.sol";
import "../interfaces/ISwapper.sol";
import "../interfaces/IVaultManager.sol";

/// @title Settlement
/// @author Angle Labs, Inc.
/// @notice Settlement Contract for a VaultManager
/// @dev This settlement contract should be activated by a careful governance which needs to have performed
/// some key operations before activating this contract
/// @dev In case of global settlement, there should be one settlement contract per `VaultManager`
contract Settlement {
    using SafeERC20 for IERC20;

    /// @notice Base used for parameter computation
    uint256 public constant BASE_PARAMS = 10 ** 9;
    /// @notice Base used for interest computation
    uint256 public constant BASE_INTEREST = 10 ** 27;
    /// @notice Base used for exchange rate computation. It is assumed
    /// that stablecoins have this base
    uint256 public constant BASE_STABLECOIN = 10 ** 18;
    /// @notice Duration of the claim period for over-collateralized vaults
    uint256 public constant OVER_COLLATERALIZED_CLAIM_DURATION = 3 * 24 * 3600;

    // =============== Immutable references set in the constructor =================

    /// @notice `VaultManager` of this settlement contract
    IVaultManager public immutable vaultManager;
    /// @notice Reference to the stablecoin supported by the `VaultManager` contract
    IAgToken public immutable stablecoin;
    /// @notice Reference to the collateral supported by the `VaultManager`
    IERC20 public immutable collateral;
    /// @notice Base of the collateral
    uint256 internal immutable _collatBase;

    // ================ Variables frozen at settlement activation ==================

    /// @notice Value of the oracle for the collateral/stablecoin pair
    uint256 public oracleValue;
    /// @notice Value of the interest accumulator at settlement activation
    uint256 public interestAccumulator;
    /// @notice Timestamp at which settlement was activated
    uint256 public activationTimestamp;
    /// @notice Collateral factor of the `VaultManager`
    uint64 public collateralFactor;

    // =================== Variables updated during the process ====================

    /// @notice How much collateral you can get from stablecoins
    uint256 public collateralStablecoinExchangeRate;
    /// @notice Amount of collateral that will be left over at the end of the process
    uint256 public leftOverCollateral;
    /// @notice Whether the `collateralStablecoinExchangeRate` has been computed
    bool public exchangeRateComputed;
    /// @notice Maps a vault to 1 if it was claimed by its owner
    mapping(uint256 => uint256) public vaultCheck;

    // ================================ Events =====================================

    event GlobalClaimPeriodActivated(uint256 _collateralStablecoinExchangeRate);
    event Recovered(address indexed tokenAddress, address indexed to, uint256 amount);
    event SettlementActivated(uint256 startTimestamp);
    event VaultClaimed(uint256 vaultID, uint256 stablecoinAmount, uint256 collateralAmount);

    // ================================ Errors =====================================

    error GlobalClaimPeriodNotStarted();
    error InsolventVault();
    error NotGovernor();
    error NotOwner();
    error RestrictedClaimPeriodNotEnded();
    error SettlementNotInitialized();
    error VaultAlreadyClaimed();

    /// @notice Constructor of the contract
    /// @param _vaultManager Address of the `VaultManager` associated to this `Settlement` contract
    /// @dev Out of safety, this constructor reads values from the `VaultManager` contract directly
    constructor(IVaultManager _vaultManager) {
        vaultManager = _vaultManager;
        stablecoin = _vaultManager.stablecoin();
        collateral = _vaultManager.collateral();
        _collatBase = 10 ** (IERC20Metadata(address(collateral)).decimals());
    }

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!(vaultManager.treasury().isGovernor(msg.sender))) revert NotGovernor();
        _;
    }

    /// @notice Activates the settlement contract
    /// @dev When calling this function governance should make sure to have:
    /// 1. Accrued the interest rate on the contract
    /// 2. Paused the contract
    /// 3. Recovered all the collateral available in the `VaultManager` contract either
    /// by doing a contract upgrade or by calling a `recoverERC20` method if supported
    function activateSettlement() external onlyGovernor {
        oracleValue = (vaultManager.oracle()).read();
        interestAccumulator = vaultManager.interestAccumulator();
        activationTimestamp = block.timestamp;
        collateralFactor = vaultManager.collateralFactor();
        emit SettlementActivated(block.timestamp);
    }

    /// @notice Allows the owner of an over-collateralized vault to claim its collateral upon bringing back all owed stablecoins
    /// @param vaultID ID of the vault to claim
    /// @param to Address to which collateral should be sent
    /// @param who Address which should be notified if needed of the transfer of stablecoins and collateral
    /// @param data Data to pass to the `who` contract for it to successfully give the correct amount of stablecoins
    /// to the `msg.sender` address
    /// @return Amount of collateral sent to the `to` address
    /// @return Amount of stablecoins sent to the contract
    /// @dev Claiming can only happen short after settlement activation
    /// @dev A vault cannot be claimed twice and only the owner of the vault can claim it (regardless of the approval logic)
    /// @dev Only over-collateralized vaults can be claimed from this medium
    function claimOverCollateralizedVault(
        uint256 vaultID,
        address to,
        address who,
        bytes memory data
    ) external returns (uint256, uint256) {
        if (activationTimestamp == 0 || block.timestamp > activationTimestamp + OVER_COLLATERALIZED_CLAIM_DURATION)
            revert SettlementNotInitialized();
        if (vaultCheck[vaultID] == 1) revert VaultAlreadyClaimed();
        if (vaultManager.ownerOf(vaultID) != msg.sender) revert NotOwner();
        (uint256 collateralAmount, uint256 normalizedDebt) = vaultManager.vaultData(vaultID);
        uint256 vaultDebt = (normalizedDebt * interestAccumulator) / BASE_INTEREST;
        if (collateralAmount * oracleValue * collateralFactor < vaultDebt * BASE_PARAMS * _collatBase)
            revert InsolventVault();
        vaultCheck[vaultID] = 1;
        emit VaultClaimed(vaultID, vaultDebt, collateralAmount);
        return _handleRepay(collateralAmount, vaultDebt, to, who, data);
    }

    /// @notice Activates the global claim period by setting the `collateralStablecoinExchangeRate` which is going to
    /// dictate how much of collateral will be recoverable for each stablecoin
    /// @dev This function can only be called by the governor in order to allow it in case multiple settlements happen across
    /// different `VaultManager` to rebalance the amount of stablecoins on each to make sure that across all settlement contracts
    /// a similar value of collateral can be obtained against a similar value of stablecoins
    function activateGlobalClaimPeriod() external onlyGovernor {
        if (activationTimestamp == 0 || block.timestamp <= activationTimestamp + OVER_COLLATERALIZED_CLAIM_DURATION)
            revert RestrictedClaimPeriodNotEnded();
        uint256 collateralBalance = collateral.balanceOf(address(this));
        uint256 leftOverDebt = (vaultManager.totalNormalizedDebt() * interestAccumulator) / BASE_INTEREST;
        uint256 stablecoinBalance = stablecoin.balanceOf(address(this));
        // How much 1 of stablecoin will give you in collateral
        uint256 _collateralStablecoinExchangeRate;

        if (stablecoinBalance < leftOverDebt) {
            // The left over debt is the total debt minus the stablecoins which have already been accumulated
            // in the first phase
            leftOverDebt -= stablecoinBalance;
            // If you control all the debt, then you are entitled to get all the collateral left in the protocol
            _collateralStablecoinExchangeRate = (collateralBalance * BASE_STABLECOIN) / leftOverDebt;
            // But at the same time, you cannot get more collateral than the value of the stablecoins you brought
            uint256 maxExchangeRate = (BASE_STABLECOIN * _collatBase) / oracleValue;
            if (_collateralStablecoinExchangeRate >= maxExchangeRate) {
                // In this situation, we're sure that `leftOverCollateral` will be positive: governance should be wary
                // to call `recoverERC20` short after though as there's nothing that is going to prevent people to redeem
                // more stablecoins than the `leftOverDebt`
                leftOverCollateral = collateralBalance - (leftOverDebt * _collatBase) / oracleValue;
                _collateralStablecoinExchangeRate = maxExchangeRate;
            }
        }
        exchangeRateComputed = true;
        // In the else case where there is no debt left, you cannot get anything from your stablecoins
        // and so the `collateralStablecoinExchangeRate` is null
        collateralStablecoinExchangeRate = _collateralStablecoinExchangeRate;
        emit GlobalClaimPeriodActivated(_collateralStablecoinExchangeRate);
    }

    /// @notice Allows to claim collateral from stablecoins
    /// @param to Address to which collateral should be sent
    /// @param who Address which should be notified if needed of the transfer of stablecoins and collateral
    /// @param data Data to pass to the `who` contract for it to successfully give the correct amount of stablecoins
    /// to the `msg.sender` address
    /// @return Amount of collateral sent to the `to` address
    /// @return Amount of stablecoins sent to the contract
    /// @dev This function reverts if the `collateralStablecoinExchangeRate` is null and hence if the global claim period has
    /// not been activated
    function claimCollateralFromStablecoins(
        uint256 stablecoinAmount,
        address to,
        address who,
        bytes memory data
    ) external returns (uint256, uint256) {
        if (!exchangeRateComputed) revert GlobalClaimPeriodNotStarted();
        return
            _handleRepay(
                (stablecoinAmount * collateralStablecoinExchangeRate) / BASE_STABLECOIN,
                stablecoinAmount,
                to,
                who,
                data
            );
    }

    /// @notice Handles the simultaneous repayment of stablecoins with a transfer of collateral
    /// @param collateralAmountToGive Amount of collateral the contract should give
    /// @param stableAmountToRepay Amount of stablecoins the contract should burn from the call
    /// @param to Address to which stablecoins should be sent
    /// @param who Address which should be notified if needed of the transfer
    /// @param data Data to pass to the `who` contract for it to successfully give the correct amount of stablecoins
    /// to the `msg.sender` address
    /// @dev This function allows for capital-efficient claims of collateral from stablecoins
    function _handleRepay(
        uint256 collateralAmountToGive,
        uint256 stableAmountToRepay,
        address to,
        address who,
        bytes memory data
    ) internal returns (uint256, uint256) {
        collateral.safeTransfer(to, collateralAmountToGive);
        if (data.length != 0) {
            ISwapper(who).swap(
                collateral,
                IERC20(address(stablecoin)),
                msg.sender,
                stableAmountToRepay,
                collateralAmountToGive,
                data
            );
        }
        stablecoin.transferFrom(msg.sender, address(this), stableAmountToRepay);
        return (collateralAmountToGive, stableAmountToRepay);
    }

    /// @notice Recovers leftover tokens from the contract or tokens that were mistakenly sent to the contract
    /// @param tokenAddress Address of the token to recover
    /// @param to Address to send the remaining tokens to
    /// @param amountToRecover Amount to recover from the contract
    /// @dev Governors cannot recover more collateral than what would be leftover from the contract
    /// @dev This function can be used to rebalance stablecoin balances across different settlement contracts
    /// to make sure every stablecoin can be redeemed for the same value of collateral
    /// @dev It can also be used to recover tokens that are mistakenly sent to this contract
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external onlyGovernor {
        if (tokenAddress == address(collateral)) {
            if (!exchangeRateComputed) revert GlobalClaimPeriodNotStarted();
            leftOverCollateral -= amountToRecover;
            collateral.safeTransfer(to, amountToRecover);
        } else {
            IERC20(tokenAddress).safeTransfer(to, amountToRecover);
        }
        emit Recovered(tokenAddress, to, amountToRecover);
    }
}

// ============================================================
// FILE: contracts/swapper/Swapper.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/*
                  *                                                  █                              
                *****                                               ▓▓▓                             
                  *                                               ▓▓▓▓▓▓▓                         
                                   *            ///.           ▓▓▓▓▓▓▓▓▓▓▓▓▓                       
                                 *****        ////////            ▓▓▓▓▓▓▓                          
                                   *       /////////////            ▓▓▓                             
                     ▓▓                  //////////////////          █         ▓▓                   
                   ▓▓  ▓▓             ///////////////////////                ▓▓   ▓▓                
                ▓▓       ▓▓        ////////////////////////////           ▓▓        ▓▓              
              ▓▓            ▓▓    /////////▓▓▓///////▓▓▓/////////       ▓▓             ▓▓            
           ▓▓                 ,////////////////////////////////////// ▓▓                 ▓▓         
        ▓▓                  //////////////////////////////////////////                     ▓▓      
      ▓▓                  //////////////////////▓▓▓▓/////////////////////                          
                       ,////////////////////////////////////////////////////                        
                    .//////////////////////////////////////////////////////////                     
                     .//////////////////////////██.,//////////////////////////█                     
                       .//////////////////////████..,./////////////////////██                       
                        ...////////////////███████.....,.////////////////███                        
                          ,.,////////////████████ ........,///////////████                          
                            .,.,//////█████████      ,.......///////████                            
                               ,..//████████           ........./████                               
                                 ..,██████                .....,███                                 
                                    .██                     ,.,█                                    
                                                                                                    
                                                                                                    
                                                                                                    
               ▓▓            ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓               ▓▓▓▓▓▓▓▓▓▓          
             ▓▓▓▓▓▓          ▓▓▓    ▓▓▓       ▓▓▓               ▓▓               ▓▓   ▓▓▓▓         
           ▓▓▓    ▓▓▓        ▓▓▓    ▓▓▓       ▓▓▓    ▓▓▓        ▓▓               ▓▓▓▓▓             
          ▓▓▓        ▓▓      ▓▓▓    ▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓          
*/

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../interfaces/IAngleRouterSidechain.sol";
import "../interfaces/ICoreBorrow.sol";
import "../interfaces/ISwapper.sol";
import "../interfaces/external/lido/IWStETH.sol";
import "../interfaces/external/uniswap/IUniswapRouter.sol";

// ==================================== ENUM ===================================

/// @notice All possible swaps
enum SwapType {
    UniswapV3,
    oneInch,
    AngleRouter,
    Leverage,
    None
}

/// @title Swapper
/// @author Angle Labs, Inc.
/// @notice Swapper contract facilitating interactions with Angle VaultManager contracts, notably
/// liquidation and leverage transactions
contract Swapper is ISwapper {
    using SafeERC20 for IERC20;

    // ===================== CONSTANTS AND IMMUTABLE VARIABLES =====================

    /// @notice Reference to the `CoreBorrow` contract of the module which handles all AccessControl logic
    ICoreBorrow public immutable core;
    /// @notice Uniswap Router contract
    IUniswapV3Router public immutable uniV3Router;
    /// @notice 1inch Router
    address public immutable oneInch;
    /// @notice AngleRouter
    IAngleRouterSidechain public immutable angleRouter;

    // =================================== ERRORS ==================================

    error EmptyReturnMessage();
    error IncompatibleLengths();
    error NotGovernorOrGuardian();
    error TooSmallAmountOut();
    error ZeroAddress();

    /// @notice Constructor of the contract
    /// @param _core Core address
    /// @param _uniV3Router UniswapV3 Router address
    /// @param _oneInch 1inch Router address
    /// @param _angleRouter AngleRouter contract address
    constructor(
        ICoreBorrow _core,
        IUniswapV3Router _uniV3Router,
        address _oneInch,
        IAngleRouterSidechain _angleRouter
    ) {
        if (address(_core) == address(0) || _oneInch == address(0) || address(_angleRouter) == address(0))
            revert ZeroAddress();
        core = _core;
        uniV3Router = _uniV3Router;
        oneInch = _oneInch;
        angleRouter = _angleRouter;
    }

    // ========================= EXTERNAL ACCESS FUNCTIONS =========================

    /// @inheritdoc ISwapper
    /// @dev This function swaps the `inToken` to the `outToken` by doing a UniV3 swap, a 1inch swap or by interacting
    /// with the `AngleRouter` contract
    /// @dev One slippage check is performed at the end of the call
    /// @dev In this implementation, the function tries to make sure that the `outTokenRecipient` address has at the end
    /// of the call `outTokenOwed`, leftover tokens are sent to a `to` address which by default is the `outTokenRecipient`
    function swap(
        IERC20 inToken,
        IERC20 outToken,
        address outTokenRecipient,
        uint256 outTokenOwed,
        uint256 inTokenObtained,
        bytes memory data
    ) external {
        // Address to receive the surplus amount of token at the end of the call
        address to;
        // For slippage protection, it is checked at the end of the call
        uint256 minAmountOut;
        // Type of the swap to execute: if `swapType == 4`, then it is optional to swap
        uint256 swapType;
        // We're reusing the `data` variable (it can be `path` on UniswapV3, a payload for 1inch or like encoded actions
        // for a router call)
        (to, minAmountOut, swapType, data) = abi.decode(data, (address, uint256, uint256, bytes));

        to = (to == address(0)) ? outTokenRecipient : to;

        _swap(inToken, inTokenObtained, SwapType(swapType), data);

        // A final slippage check is performed after the swaps
        uint256 outTokenBalance = outToken.balanceOf(address(this));
        if (outTokenBalance < minAmountOut) revert TooSmallAmountOut();

        // The `outTokenRecipient` may already have enough in balance, in which case there's no need to transfer
        // to this address the token and everything can be given to the `to` address
        uint256 outTokenBalanceRecipient = outToken.balanceOf(outTokenRecipient);
        if (outTokenBalanceRecipient >= outTokenOwed || to == outTokenRecipient)
            outToken.safeTransfer(to, outTokenBalance);
        else {
            // The `outTokenRecipient` should receive the delta to make sure its end balance is equal to `outTokenOwed`
            // Any leftover in this case is sent to the `to` address
            // The function reverts if it did not obtain more than `outTokenOwed - outTokenBalanceRecipient` from the swap
            outToken.safeTransfer(outTokenRecipient, outTokenOwed - outTokenBalanceRecipient);
            outToken.safeTransfer(to, outTokenBalanceRecipient + outTokenBalance - outTokenOwed);
        }
        // Reusing the `inTokenObtained` variable for the `inToken` balance
        // Sending back the remaining amount of inTokens to the `to` address: it is possible that not the full `inTokenObtained`
        // is swapped to `outToken` if we're using the `1inch` payload
        inTokenObtained = inToken.balanceOf(address(this));
        if (inTokenObtained != 0) inToken.safeTransfer(to, inTokenObtained);
    }

    // ============================ GOVERNANCE FUNCTION ============================

    /// @notice Changes allowances of this contract for different tokens
    /// @param tokens Addresses of the tokens to allow
    /// @param spenders Addresses to allow transfer
    /// @param amounts Amounts to allow
    function changeAllowance(
        IERC20[] calldata tokens,
        address[] calldata spenders,
        uint256[] calldata amounts
    ) external {
        if (!core.isGovernorOrGuardian(msg.sender)) revert NotGovernorOrGuardian();
        uint256 tokensLength = tokens.length;
        if (tokensLength != spenders.length || tokensLength != amounts.length) revert IncompatibleLengths();
        for (uint256 i; i < tokensLength; ++i) {
            _changeAllowance(tokens[i], spenders[i], amounts[i]);
        }
    }

    // ========================= INTERNAL UTILITY FUNCTIONS ========================

    /// @notice Internal version of the `_changeAllowance` function
    function _changeAllowance(IERC20 token, address spender, uint256 amount) internal {
        uint256 currentAllowance = token.allowance(address(this), spender);
        // In case `currentAllowance < type(uint256).max / 2` and we want to increase it:
        // Do nothing (to handle tokens that need reapprovals to 0 and save gas)
        if (currentAllowance < amount && currentAllowance < type(uint256).max / 2) {
            token.safeIncreaseAllowance(spender, amount - currentAllowance);
        } else if (currentAllowance > amount) {
            token.safeDecreaseAllowance(spender, currentAllowance - amount);
        }
    }

    /// @notice Checks the allowance for a contract and updates it to the max if it is not big enough
    /// @param token Token for which allowance should be checked
    /// @param spender Address to grant allowance to
    /// @param amount Minimum amount of tokens needed for the allowance
    function _checkAllowance(IERC20 token, address spender, uint256 amount) internal {
        uint256 currentAllowance = token.allowance(address(this), spender);
        if (currentAllowance < amount) token.safeIncreaseAllowance(spender, type(uint256).max - currentAllowance);
    }

    /// @notice Performs a swap using either Uniswap, 1inch. This function can also stake stETH to wstETH
    /// @param inToken Token to swap
    /// @param amount Amount of tokens to swap
    /// @param swapType Type of the swap to perform
    /// @param args Extra args for the swap: in the case of Uniswap it should be a path, for 1inch it should be
    /// a payload
    /// @dev This function does nothing if `swapType` is None and it simply passes on the `amount` it received
    /// @dev No slippage is specified in the actions given here as a final slippage check is performed
    /// after the call to this function
    function _swap(IERC20 inToken, uint256 amount, SwapType swapType, bytes memory args) internal {
        if (swapType == SwapType.UniswapV3) _swapOnUniswapV3(inToken, amount, args);
        else if (swapType == SwapType.oneInch) _swapOn1inch(inToken, args);
        else if (swapType == SwapType.AngleRouter) _angleRouterActions(inToken, args);
        else if (swapType == SwapType.Leverage) _swapLeverage(args);
    }

    /// @notice Performs a UniswapV3 swap
    /// @param inToken Token to swap
    /// @param amount Amount of tokens to swap
    /// @param path Path for the UniswapV3 swap: this encodes the out token that is going to be obtained
    /// @dev This function does not check the out token obtained here: if it is wrongly specified, either
    /// the `swap` function could fail or these tokens could stay on the contract
    function _swapOnUniswapV3(IERC20 inToken, uint256 amount, bytes memory path) internal returns (uint256 amountOut) {
        // We need more than `amount` of allowance to the contract
        _checkAllowance(inToken, address(uniV3Router), amount);
        amountOut = uniV3Router.exactInput(ExactInputParams(path, address(this), block.timestamp, amount, 0));
    }

    /// @notice Allows to swap any token to an accepted collateral via 1inch API
    /// @param inToken Token received for the 1inch swap
    /// @param payload Bytes needed for 1inch API
    function _swapOn1inch(IERC20 inToken, bytes memory payload) internal returns (uint256 amountOut) {
        _changeAllowance(inToken, oneInch, type(uint256).max);
        //solhint-disable-next-line
        (bool success, bytes memory result) = oneInch.call(payload);
        if (!success) _revertBytes(result);
        amountOut = abi.decode(result, (uint256));
    }

    /// @notice Performs actions with the router contract of the protocol on the corresponding chain
    /// @param inToken Token concerned by the action and for which
    function _angleRouterActions(IERC20 inToken, bytes memory args) internal {
        (ActionType[] memory actions, bytes[] memory actionData) = abi.decode(args, (ActionType[], bytes[]));
        _changeAllowance(inToken, address(angleRouter), type(uint256).max);
        PermitType[] memory permits;
        angleRouter.mixer(permits, actions, actionData);
    }

    /// @notice Allows to take leverage or deleverage via a specific contract
    /// @param payload Bytes needed for 1inch API
    /// @dev This function is to be implemented if the swapper concerns a token that requires some actions
    /// not supported by 1inch or UniV3
    function _swapLeverage(bytes memory payload) internal virtual returns (uint256 amountOut) {}

    /// @notice Internal function used for error handling
    /// @param errMsg Error message received
    function _revertBytes(bytes memory errMsg) internal pure {
        if (errMsg.length != 0) {
            //solhint-disable-next-line
            assembly {
                revert(add(32, errMsg), mload(errMsg))
            }
        }
        revert EmptyReturnMessage();
    }
}

// ============================================================
// FILE: contracts/treasury/Treasury.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/*
                  *                                                  █                              
                *****                                               ▓▓▓                             
                  *                                               ▓▓▓▓▓▓▓                         
                                   *            ///.           ▓▓▓▓▓▓▓▓▓▓▓▓▓                       
                                 *****        ////////            ▓▓▓▓▓▓▓                          
                                   *       /////////////            ▓▓▓                             
                     ▓▓                  //////////////////          █         ▓▓                   
                   ▓▓  ▓▓             ///////////////////////                ▓▓   ▓▓                
                ▓▓       ▓▓        ////////////////////////////           ▓▓        ▓▓              
              ▓▓            ▓▓    /////////▓▓▓///////▓▓▓/////////       ▓▓             ▓▓            
           ▓▓                 ,////////////////////////////////////// ▓▓                 ▓▓         
        ▓▓                  //////////////////////////////////////////                     ▓▓      
      ▓▓                  //////////////////////▓▓▓▓/////////////////////                          
                       ,////////////////////////////////////////////////////                        
                    .//////////////////////////////////////////////////////////                     
                     .//////////////////////////██.,//////////////////////////█                     
                       .//////////////////////████..,./////////////////////██                       
                        ...////////////////███████.....,.////////////////███                        
                          ,.,////////////████████ ........,///////////████                          
                            .,.,//////█████████      ,.......///////████                            
                               ,..//████████           ........./████                               
                                 ..,██████                .....,███                                 
                                    .██                     ,.,█                                    
                                                                                                    
                                                                                                    
                                                                                                    
               ▓▓            ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓               ▓▓▓▓▓▓▓▓▓▓          
             ▓▓▓▓▓▓          ▓▓▓    ▓▓▓       ▓▓▓               ▓▓               ▓▓   ▓▓▓▓         
           ▓▓▓    ▓▓▓        ▓▓▓    ▓▓▓       ▓▓▓    ▓▓▓        ▓▓               ▓▓▓▓▓             
          ▓▓▓        ▓▓      ▓▓▓    ▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓          
*/

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../interfaces/IAgToken.sol";
import "../interfaces/ICoreBorrow.sol";
import "../interfaces/IFlashAngle.sol";
import "../interfaces/ITreasury.sol";
import "../interfaces/IVaultManager.sol";

/// @title Treasury
/// @author Angle Labs, Inc.
/// @notice Treasury of Angle Borrowing Module doing the accounting across all VaultManagers for
/// a given stablecoin
contract Treasury is ITreasury, Initializable {
    using SafeERC20 for IERC20;

    /// @notice Base used for parameter computation
    uint256 public constant BASE_9 = 1e9;

    // ================================= REFERENCES ================================

    /// @notice Reference to the `CoreBorrow` contract of the module which handles all AccessControl logic
    ICoreBorrow public core;
    /// @notice Flash Loan Module with a minter right on the stablecoin
    IFlashAngle public flashLoanModule;
    /// @inheritdoc ITreasury
    IAgToken public stablecoin;
    /// @notice Address responsible for handling the surplus made by the treasury
    address public surplusManager;
    /// @notice List of the accepted `VaultManager` of the protocol
    address[] public vaultManagerList;
    /// @notice Maps an address to 1 if it was initialized as a `VaultManager` contract
    mapping(address => uint256) public vaultManagerMap;

    // ================================= VARIABLES =================================

    /// @notice Amount of bad debt (unbacked stablecoin) accumulated across all `VaultManager` contracts
    /// linked to this stablecoin
    uint256 public badDebt;
    /// @notice Surplus amount accumulated by the contract waiting to be distributed to governance. Technically
    /// only a share of this `surplusBuffer` will go to governance. Once a share of the surplus buffer has been
    /// given to governance, then this surplus is reset
    uint256 public surplusBuffer;

    // ================================= PARAMETER =================================

    /// @notice Share of the `surplusBuffer` distributed to governance (in `BASE_9`)
    uint64 public surplusForGovernance;

    // =================================== EVENTS ==================================

    event BadDebtUpdated(uint256 badDebtValue);
    event CoreUpdated(address indexed _core);
    event NewTreasurySet(address indexed _treasury);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event SurplusBufferUpdated(uint256 surplusBufferValue);
    event SurplusForGovernanceUpdated(uint64 _surplusForGovernance);
    event SurplusManagerUpdated(address indexed _surplusManager);
    event VaultManagerToggled(address indexed vaultManager);

    // =================================== ERRORS ==================================

    error AlreadyVaultManager();
    error InvalidAddress();
    error InvalidTreasury();
    error NotCore();
    error NotGovernor();
    error NotVaultManager();
    error RightsNotRemoved();
    error TooBigAmount();
    error TooHighParameterValue();
    error ZeroAddress();

    // ================================== MODIFIER =================================

    /// @notice Checks whether the `msg.sender` has the governor role or not
    modifier onlyGovernor() {
        if (!core.isGovernor(msg.sender)) revert NotGovernor();
        _;
    }

    /// @notice Initializes the treasury contract
    /// @param _core Address of the `CoreBorrow` contract of the module
    /// @param _stablecoin Address of the stablecoin
    function initialize(ICoreBorrow _core, IAgToken _stablecoin) public virtual initializer {
        if (address(_stablecoin) == address(0) || address(_core) == address(0)) revert ZeroAddress();
        core = _core;
        stablecoin = _stablecoin;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    // =============================== VIEW FUNCTIONS ==============================

    /// @inheritdoc ITreasury
    function isGovernor(address admin) external view returns (bool) {
        return core.isGovernor(admin);
    }

    /// @inheritdoc ITreasury
    function isGovernorOrGuardian(address admin) external view returns (bool) {
        return core.isGovernorOrGuardian(admin);
    }

    /// @inheritdoc ITreasury
    function isVaultManager(address _vaultManager) external view returns (bool) {
        return vaultManagerMap[_vaultManager] == 1;
    }

    // ===================== EXTERNAL PERMISSIONLESS FUNCTIONS =====================

    /// @notice Fetches the surplus accrued across all the `VaultManager` contracts controlled by this
    /// `Treasury` contract as well as from the fees of the `FlashLoan` module
    /// @return Surplus buffer value at the end of the call
    /// @return Bad debt value at the end of the call
    /// @dev This function pools surplus and bad debt across all contracts and then updates the `surplusBuffer`
    /// (or the `badDebt` if more losses were made than profits)
    function fetchSurplusFromAll() external returns (uint256, uint256) {
        return _fetchSurplusFromAll();
    }

    /// @notice Fetches the surplus accrued in the flash loan module and updates the `surplusBuffer`
    /// @return Surplus buffer value at the end of the call
    /// @return Bad debt value at the end of the call
    /// @dev This function fails if the `flashLoanModule` has not been initialized yet
    function fetchSurplusFromFlashLoan() external returns (uint256, uint256) {
        uint256 surplusBufferValue = surplusBuffer + flashLoanModule.accrueInterestToTreasury(stablecoin);
        return _updateSurplusAndBadDebt(surplusBufferValue, badDebt);
    }

    /// @notice Pushes the surplus buffer to the `surplusManager` contract
    /// @return governanceAllocation Amount transferred to governance
    /// @dev It makes sure to fetch the surplus from all the contracts handled by this treasury to avoid
    /// the situation where rewards are still distributed to governance even though a `VaultManager` has made
    /// a big loss
    /// @dev Typically this function is to be called once every week by a keeper to distribute rewards to veANGLE
    /// holders
    /// @dev `stablecoin` must be an AgToken and hence `transfer` reverts if the call is not successful
    function pushSurplus() external returns (uint256 governanceAllocation) {
        address _surplusManager = surplusManager;
        if (_surplusManager == address(0)) {
            revert ZeroAddress();
        }
        (uint256 surplusBufferValue, ) = _fetchSurplusFromAll();
        surplusBuffer = 0;
        emit SurplusBufferUpdated(0);
        governanceAllocation = (surplusForGovernance * surplusBufferValue) / BASE_9;
        stablecoin.transfer(_surplusManager, governanceAllocation);
    }

    /// @notice Updates the bad debt of the protocol in case where the protocol has accumulated some revenue
    /// from an external source
    /// @param amount Amount to reduce the bad debt of
    /// @return badDebtValue Value of the bad debt at the end of the call
    /// @dev If the protocol has made a loss and managed to make some profits to recover for this loss (through
    /// a program like Olympus Pro), then this function needs to be called
    /// @dev `badDebt` is simply reduced here by burning stablecoins
    /// @dev It is impossible to burn more than the `badDebt` otherwise this function could be used to manipulate
    /// the `surplusBuffer` and hence the amount going to governance
    function updateBadDebt(uint256 amount) external returns (uint256 badDebtValue) {
        stablecoin.burnSelf(amount, address(this));
        badDebtValue = badDebt - amount;
        badDebt = badDebtValue;
        emit BadDebtUpdated(badDebtValue);
    }

    // ========================= INTERNAL UTILITY FUNCTIONS ========================

    /// @notice Internal version of the `fetchSurplusFromAll` function
    function _fetchSurplusFromAll() internal returns (uint256 surplusBufferValue, uint256 badDebtValue) {
        (surplusBufferValue, badDebtValue) = _fetchSurplusFromList(vaultManagerList);
        // It will fail anyway if the `flashLoanModule` is the zero address
        if (address(flashLoanModule) != address(0))
            surplusBufferValue += flashLoanModule.accrueInterestToTreasury(stablecoin);
        (surplusBufferValue, badDebtValue) = _updateSurplusAndBadDebt(surplusBufferValue, badDebtValue);
    }

    /// @notice Fetches the surplus from a list of `VaultManager` addresses without modifying the
    /// `surplusBuffer` and `badDebtValue`
    /// @return surplusBufferValue Value the `surplusBuffer` should have after the call if it was updated
    /// @return badDebtValue Value the `badDebt` should have after the call if it was updated
    /// @dev This internal function is never to be called alone, and should always be called in conjunction
    /// with the `_updateSurplusAndBadDebt` function
    function _fetchSurplusFromList(
        address[] memory vaultManagers
    ) internal returns (uint256 surplusBufferValue, uint256 badDebtValue) {
        badDebtValue = badDebt;
        surplusBufferValue = surplusBuffer;
        uint256 newSurplus;
        uint256 newBadDebt;
        uint256 vaultManagersLength = vaultManagers.length;
        for (uint256 i; i < vaultManagersLength; ++i) {
            (newSurplus, newBadDebt) = IVaultManager(vaultManagers[i]).accrueInterestToTreasury();
            surplusBufferValue += newSurplus;
            badDebtValue += newBadDebt;
        }
    }

    /// @notice Updates the `surplusBuffer` and the `badDebt` from updated values after calling the flash loan module
    /// and/or a list of `VaultManager` contracts
    /// @param surplusBufferValue Value of the surplus buffer after the calls to the different modules
    /// @param badDebtValue Value of the bad debt after the calls to the different modules
    /// @return Value of the `surplusBuffer` corrected from the `badDebt`
    /// @return Value of the `badDebt` corrected from the `surplusBuffer` and from the surplus the treasury had accumulated
    /// previously
    /// @dev When calling this function, it is possible that there is a positive `surplusBufferValue` and `badDebtValue`,
    /// this function tries to reconcile both values and makes sure that we either have surplus or bad debt but not both
    /// at the same time
    function _updateSurplusAndBadDebt(
        uint256 surplusBufferValue,
        uint256 badDebtValue
    ) internal returns (uint256, uint256) {
        if (badDebtValue != 0) {
            // If we have bad debt we need to burn stablecoins that accrued to the protocol
            // We still need to make sure that we're not burning too much or as much as we can if the debt is big
            uint256 balance = stablecoin.balanceOf(address(this));
            // We are going to burn `min(balance, badDebtValue)`
            uint256 toBurn = balance <= badDebtValue ? balance : badDebtValue;
            stablecoin.burnSelf(toBurn, address(this));
            // If we burned more than `surplusBuffer`, we set surplus to 0. It means we had to tap into Treasury reserve
            surplusBufferValue = toBurn >= surplusBufferValue ? 0 : surplusBufferValue - toBurn;
            badDebtValue -= toBurn;
            // Note here that the stablecoin balance is necessarily greater than the surplus buffer, and so if
            // `surplusBuffer >= toBurn`, then `badDebtValue = toBurn`
        }
        surplusBuffer = surplusBufferValue;
        badDebt = badDebtValue;
        emit SurplusBufferUpdated(surplusBufferValue);
        emit BadDebtUpdated(badDebtValue);
        return (surplusBufferValue, badDebtValue);
    }

    /// @notice Adds a new `VaultManager`
    /// @param vaultManager `VaultManager` contract to add
    /// @dev This contract should have already been initialized with a correct treasury address
    /// @dev It's this function that gives the minter right to the `VaultManager`
    function _addVaultManager(address vaultManager) internal virtual {
        if (vaultManagerMap[vaultManager] == 1) revert AlreadyVaultManager();
        if (address(IVaultManager(vaultManager).treasury()) != address(this)) revert InvalidTreasury();
        vaultManagerMap[vaultManager] = 1;
        vaultManagerList.push(vaultManager);
        emit VaultManagerToggled(vaultManager);
        stablecoin.addMinter(vaultManager);
    }

    // ============================= GOVERNOR FUNCTIONS ============================

    /// @notice Adds a new minter for the stablecoin
    /// @param minter Minter address to add
    function addMinter(address minter) external virtual onlyGovernor {
        if (minter == address(0)) revert ZeroAddress();
        stablecoin.addMinter(minter);
    }

    /// @notice External wrapper for `_addVaultManager`
    function addVaultManager(address vaultManager) external virtual onlyGovernor {
        _addVaultManager(vaultManager);
    }

    /// @notice Removes a minter from the stablecoin contract
    /// @param minter Minter address to remove
    function removeMinter(address minter) external virtual onlyGovernor {
        // To remove the minter role to a `VaultManager` you have to go through the `removeVaultManager` function
        if (vaultManagerMap[minter] == 1) revert InvalidAddress();
        stablecoin.removeMinter(minter);
    }

    /// @notice Removes a `VaultManager`
    /// @param vaultManager `VaultManager` contract to remove
    /// @dev A removed `VaultManager` loses its minter right on the stablecoin
    function removeVaultManager(address vaultManager) external onlyGovernor {
        if (vaultManagerMap[vaultManager] != 1) revert NotVaultManager();
        delete vaultManagerMap[vaultManager];
        // deletion from `vaultManagerList` loop
        uint256 vaultManagerListLength = vaultManagerList.length;
        for (uint256 i; i < vaultManagerListLength - 1; ++i) {
            if (vaultManagerList[i] == vaultManager) {
                // replace the `VaultManager` to remove with the last of the list
                vaultManagerList[i] = vaultManagerList[vaultManagerListLength - 1];
                break;
            }
        }
        // remove last element in array
        vaultManagerList.pop();
        emit VaultManagerToggled(vaultManager);
        stablecoin.removeMinter(vaultManager);
    }

    /// @notice Allows to recover any ERC20 token, including the stablecoin handled by this contract, and to send it
    /// to a contract
    /// @param tokenAddress Address of the token to recover
    /// @param to Address of the contract to send collateral to
    /// @param amountToRecover Amount of collateral to transfer
    /// @dev It is impossible to recover the stablecoin of the protocol if there is some bad debt for it
    /// @dev In this case, the function makes sure to fetch the surplus/bad debt from all the `VaultManager` contracts
    /// and from the flash loan module
    /// @dev If the token to recover is the stablecoin, tokens recovered are fetched
    /// from the surplus and not from the `surplusBuffer`
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external onlyGovernor {
        // Cannot recover stablecoin if badDebt or tap into the surplus buffer
        if (tokenAddress == address(stablecoin)) {
            _fetchSurplusFromAll();
            // If balance is non zero then this means, after the call to `fetchSurplusFromAll` that
            // bad debt is necessarily null
            uint256 balance = stablecoin.balanceOf(address(this));
            if (amountToRecover + surplusBuffer > balance) revert TooBigAmount();
            stablecoin.transfer(to, amountToRecover);
        } else {
            IERC20(tokenAddress).safeTransfer(to, amountToRecover);
        }
        emit Recovered(tokenAddress, to, amountToRecover);
    }

    /// @notice Changes the treasury contract and communicates this change to all `VaultManager` contract
    /// @param _treasury New treasury address for this stablecoin
    /// @dev This function is basically a way to remove rights to this contract and grant them to a new one
    /// @dev It could be used to set a new core contract
    function setTreasury(address _treasury) external virtual onlyGovernor {
        if (ITreasury(_treasury).stablecoin() != stablecoin) revert InvalidTreasury();
        // Flash loan role should be removed before calling this function
        if (core.isFlashLoanerTreasury(address(this))) revert RightsNotRemoved();
        emit NewTreasurySet(_treasury);
        uint256 vaultManagerListLength = vaultManagerList.length;
        for (uint256 i; i < vaultManagerListLength; ++i) {
            IVaultManager(vaultManagerList[i]).setTreasury(_treasury);
        }
        // A `TreasuryUpdated` event is triggered in the stablecoin
        stablecoin.setTreasury(_treasury);
    }

    /// @notice Sets the `surplusForGovernance` parameter
    /// @param _surplusForGovernance New value of the parameter
    /// @dev To pause surplus distribution, governance needs to set a zero value for `surplusForGovernance`
    /// which means
    function setSurplusForGovernance(uint64 _surplusForGovernance) external onlyGovernor {
        if (_surplusForGovernance > BASE_9) revert TooHighParameterValue();
        surplusForGovernance = _surplusForGovernance;
        emit SurplusForGovernanceUpdated(_surplusForGovernance);
    }

    /// @notice Sets the `surplusManager` contract responsible for handling the surplus of the
    /// protocol
    /// @param _surplusManager New address responsible for handling the surplus
    function setSurplusManager(address _surplusManager) external onlyGovernor {
        if (_surplusManager == address(0)) revert ZeroAddress();
        surplusManager = _surplusManager;
        emit SurplusManagerUpdated(_surplusManager);
    }

    /// @notice Sets a new `core` contract
    /// @dev This function should typically be called on all treasury contracts after the `setCore`
    /// function has been called on the `CoreBorrow` contract
    /// @dev One sanity check that can be performed here is to verify whether at least the governor
    /// calling the contract is still a governor in the new core
    function setCore(ICoreBorrow _core) external onlyGovernor {
        if (!_core.isGovernor(msg.sender)) revert NotGovernor();
        core = ICoreBorrow(_core);
        emit CoreUpdated(address(_core));
    }

    /// @inheritdoc ITreasury
    function setFlashLoanModule(address _flashLoanModule) external {
        if (msg.sender != address(core)) revert NotCore();
        address oldFlashLoanModule = address(flashLoanModule);
        flashLoanModule = IFlashAngle(_flashLoanModule);
        if (oldFlashLoanModule != address(0)) {
            stablecoin.removeMinter(oldFlashLoanModule);
        }
        // We may want to cancel the module
        if (_flashLoanModule != address(0)) {
            stablecoin.addMinter(_flashLoanModule);
        }
    }
}

// ============================================================
// FILE: contracts/ui-helpers/AngleBorrowHelpers.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

/*
                  *                                                  █                              
                *****                                               ▓▓▓                             
                  *                                               ▓▓▓▓▓▓▓                         
                                   *            ///.           ▓▓▓▓▓▓▓▓▓▓▓▓▓                       
                                 *****        ////////            ▓▓▓▓▓▓▓                          
                                   *       /////////////            ▓▓▓                             
                     ▓▓                  //////////////////          █         ▓▓                   
                   ▓▓  ▓▓             ///////////////////////                ▓▓   ▓▓                
                ▓▓       ▓▓        ////////////////////////////           ▓▓        ▓▓              
              ▓▓            ▓▓    /////////▓▓▓///////▓▓▓/////////       ▓▓             ▓▓            
           ▓▓                 ,////////////////////////////////////// ▓▓                 ▓▓         
        ▓▓                  //////////////////////////////////////////                     ▓▓      
      ▓▓                  //////////////////////▓▓▓▓/////////////////////                          
                       ,////////////////////////////////////////////////////                        
                    .//////////////////////////////////////////////////////////                     
                     .//////////////////////////██.,//////////////////////////█                     
                       .//////////////////////████..,./////////////////////██                       
                        ...////////////////███████.....,.////////////////███                        
                          ,.,////////////████████ ........,///////////████                          
                            .,.,//////█████████      ,.......///////████                            
                               ,..//████████           ........./████                               
                                 ..,██████                .....,███                                 
                                    .██                     ,.,█                                    
                                                                                                    
                                                                                                    
                                                                                                    
               ▓▓            ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓               ▓▓▓▓▓▓▓▓▓▓          
             ▓▓▓▓▓▓          ▓▓▓    ▓▓▓       ▓▓▓               ▓▓               ▓▓   ▓▓▓▓         
           ▓▓▓    ▓▓▓        ▓▓▓    ▓▓▓       ▓▓▓    ▓▓▓        ▓▓               ▓▓▓▓▓             
          ▓▓▓        ▓▓      ▓▓▓    ▓▓▓       ▓▓▓▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓       ▓▓▓▓▓▓▓▓▓▓          
*/

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../interfaces/IVaultManager.sol";

pragma solidity ^0.8.12;

/// @title AngleBorrowHelpers
/// @author Angle Labs, Inc.
/// @notice Contract with view functions designed to facilitate integrations on the Borrow module of the Angle Protocol
/// @dev This contract only contains view functions to be queried off-chain. It was thus not optimized for gas consumption
contract AngleBorrowHelpers is Initializable {
    /// @notice Returns all the vaults owned or controlled (under the form of approval) by an address
    /// @param vaultManager VaultManager address to query vaultIDs on
    /// @param spender Address for which vault ownerships should be checked
    /// @return List of `vaultID` controlled by this address
    /// @return Count of vaults owned by the address
    /// @dev This function is never to be called on-chain since it iterates over all vaultIDs. It is here
    /// to reduce dependency on an external graph to link an ID to its owner
    function getControlledVaults(
        IVaultManager vaultManager,
        address spender
    ) external view returns (uint256[] memory, uint256) {
        uint256 arraySize = vaultManager.vaultIDCount();
        uint256[] memory vaultsControlled = new uint256[](arraySize);
        uint256 count;
        for (uint256 i = 1; i <= arraySize; ++i) {
            try vaultManager.isApprovedOrOwner(spender, i) returns (bool _isApprovedOrOwner) {
                if (_isApprovedOrOwner) {
                    vaultsControlled[count] = i;
                    count += 1;
                }
            } catch {
                continue;
            } // This happens if nobody owns the vaultID=i (if there has been a burn)
        }
        return (vaultsControlled, count);
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}
}

// ============================================================
// FILE: contracts/ui-helpers/AngleHelpers.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

import "../interfaces/IAngleRouter.sol";
import "../interfaces/coreModule/IAgTokenMainnet.sol";
import "../interfaces/coreModule/ICore.sol";
import "../interfaces/coreModule/IOracleCore.sol";
import "../interfaces/coreModule/IPerpetualManager.sol";
import "../interfaces/coreModule/IPoolManager.sol";
import "../interfaces/coreModule/IStableMaster.sol";
import "./AngleBorrowHelpers.sol";

pragma solidity ^0.8.12;

struct Parameters {
    SLPData slpData;
    MintBurnData feeData;
    PerpetualManagerFeeData perpFeeData;
    PerpetualManagerParamData perpParam;
}

struct PerpetualManagerFeeData {
    uint64[] xHAFeesDeposit;
    uint64[] yHAFeesDeposit;
    uint64[] xHAFeesWithdraw;
    uint64[] yHAFeesWithdraw;
    uint64 haBonusMalusDeposit;
    uint64 haBonusMalusWithdraw;
}

struct PerpetualManagerParamData {
    uint64 maintenanceMargin;
    uint64 maxLeverage;
    uint64 targetHAHedge;
    uint64 limitHAHedge;
    uint64 lockTime;
}

struct CollateralAddresses {
    address stableMaster;
    address poolManager;
    address perpetualManager;
    address sanToken;
    address oracle;
    address gauge;
    address feeManager;
    address[] strategies;
}

/// @title AngleHelpers
/// @author Angle Labs, Inc.
/// @notice Contract with view functions designed to facilitate integrations on the Core and Borrow module of the Angle Protocol
/// @dev This contract only contains view functions to be queried off-chain. It was thus not optimized for gas consumption
contract AngleHelpers is AngleBorrowHelpers {
    // =========================== HELPER VIEW FUNCTIONS ===========================

    /// @notice Gives the amount of `agToken` you'd be getting if you were executing in the same block a mint transaction
    /// with `amount` of `collateral` in the Core module of the Angle protocol as well as the value of the fees
    /// (in `BASE_PARAMS`) that would be applied during the mint
    /// @return Amount of `agToken` that would be obtained with a mint transaction in the same block
    /// @return Percentage of fees that would be taken during a mint transaction in the same block
    /// @dev This function reverts if the mint transaction was to revert in the same conditions (without taking into account
    /// potential approval problems to the `StableMaster` contract)
    function previewMintAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) external view returns (uint256, uint256) {
        return _previewMintAndFees(amount, agToken, collateral);
    }

    /// @notice Gives the amount of `collateral` you'd be getting if you were executing in the same block a burn transaction
    ///  with `amount` of `agToken` in the Core module of the Angle protocol as well as the value of the fees
    /// (in `BASE_PARAMS`) that would be applied during the burn
    /// @return Amount of `collateral` that would be obtained with a burn transaction in the same block
    /// @return Percentage of fees that would be taken during a burn transaction in the same block
    /// @dev This function reverts if the burn transaction was to revert in the same conditions (without taking into account
    /// potential approval problems to the `StableMaster` contract or agToken balance prior to the call)
    function previewBurnAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) external view returns (uint256, uint256) {
        return _previewBurnAndFees(amount, agToken, collateral);
    }

    /// @notice Returns all the addresses associated to the (`agToken`,`collateral`) pair given
    /// @return addresses A struct with all the addresses associated in the Core module
    function getCollateralAddresses(
        address agToken,
        address collateral
    ) external view returns (CollateralAddresses memory addresses) {
        address stableMaster = IAgTokenMainnet(agToken).stableMaster();
        (address poolManager, address perpetualManager, address sanToken, address gauge) = ROUTER.mapPoolManagers(
            stableMaster,
            collateral
        );
        (, , , IOracleCore oracle, , , , , ) = IStableMaster(stableMaster).collateralMap(poolManager);
        addresses.stableMaster = stableMaster;
        addresses.poolManager = poolManager;
        addresses.perpetualManager = perpetualManager;
        addresses.sanToken = sanToken;
        addresses.gauge = gauge;
        addresses.oracle = address(oracle);
        addresses.feeManager = IPoolManager(poolManager).feeManager();

        uint256 length;
        while (true) {
            try IPoolManager(poolManager).strategyList(length) returns (address) {
                length += 1;
            } catch {
                break;
            }
        }
        address[] memory strategies = new address[](length);
        for (uint256 i; i < length; ++i) {
            strategies[i] = IPoolManager(poolManager).strategyList(i);
        }
        addresses.strategies = strategies;
    }

    /// @notice Gets the addresses of all the `StableMaster` contracts and their associated `AgToken` addresses
    /// @return List of the `StableMaster` addresses of the Angle protocol
    /// @return List of the `AgToken` addresses of the protocol
    /// @dev The place of an agToken address in the list is the same as the corresponding `StableMaster` address
    function getStablecoinAddresses() external view returns (address[] memory, address[] memory) {
        address[] memory stableMasterAddresses = CORE.stablecoinList();
        address[] memory agTokenAddresses = new address[](stableMasterAddresses.length);
        for (uint256 i; i < stableMasterAddresses.length; ++i) {
            agTokenAddresses[i] = IStableMaster(stableMasterAddresses[i]).agToken();
        }
        return (stableMasterAddresses, agTokenAddresses);
    }

    /// @notice Returns most of the governance parameters associated to the (`agToken`,`collateral`) pair given
    /// @return params Struct with most of the parameters in the `StableMaster` and `PerpetualManager` contracts
    /// @dev Check out the struct `Parameters` for the meaning of the return values
    function getCollateralParameters(
        address agToken,
        address collateral
    ) external view returns (Parameters memory params) {
        (address stableMaster, address poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
        (
            ,
            ,
            IPerpetualManager perpetualManager,
            ,
            ,
            ,
            ,
            SLPData memory slpData,
            MintBurnData memory feeData
        ) = IStableMaster(stableMaster).collateralMap(poolManager);

        params.slpData = slpData;
        params.feeData = feeData;
        params.perpParam.maintenanceMargin = perpetualManager.maintenanceMargin();
        params.perpParam.maxLeverage = perpetualManager.maxLeverage();
        params.perpParam.targetHAHedge = perpetualManager.targetHAHedge();
        params.perpParam.limitHAHedge = perpetualManager.limitHAHedge();
        params.perpParam.lockTime = perpetualManager.lockTime();

        params.perpFeeData.haBonusMalusDeposit = perpetualManager.haBonusMalusDeposit();
        params.perpFeeData.haBonusMalusWithdraw = perpetualManager.haBonusMalusWithdraw();

        uint256 length;
        while (true) {
            try perpetualManager.xHAFeesDeposit(length) returns (uint64) {
                length += 1;
            } catch {
                break;
            }
        }
        uint64[] memory data = new uint64[](length);
        uint64[] memory data2 = new uint64[](length);
        for (uint256 i; i < length; ++i) {
            data[i] = perpetualManager.xHAFeesDeposit(i);
            data2[i] = perpetualManager.yHAFeesDeposit(i);
        }
        params.perpFeeData.xHAFeesDeposit = data;
        params.perpFeeData.yHAFeesDeposit = data2;

        length = 0;
        while (true) {
            try perpetualManager.xHAFeesWithdraw(length) returns (uint64) {
                length += 1;
            } catch {
                break;
            }
        }
        data = new uint64[](length);
        data2 = new uint64[](length);
        for (uint256 i; i < length; ++i) {
            data[i] = perpetualManager.xHAFeesWithdraw(i);
            data2[i] = perpetualManager.yHAFeesWithdraw(i);
        }
        params.perpFeeData.xHAFeesWithdraw = data;
        params.perpFeeData.yHAFeesWithdraw = data2;
    }

    /// @notice Returns the address of the poolManager associated to an (`agToken`, `collateral`) pair
    /// in the Core module of the protocol
    function getPoolManager(address agToken, address collateral) public view returns (address poolManager) {
        (, poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
    }

    // ============================= REPLICA FUNCTIONS =============================
    // These replicate what is done in the other contracts of the protocol

    function _previewBurnAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) internal view returns (uint256 amountForUserInCollat, uint256 feePercent) {
        (address stableMaster, address poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
        (
            address token,
            ,
            IPerpetualManager perpetualManager,
            IOracleCore oracle,
            uint256 stocksUsers,
            ,
            uint256 collatBase,
            ,
            MintBurnData memory feeData
        ) = IStableMaster(stableMaster).collateralMap(poolManager);
        if (token == address(0) || IStableMaster(stableMaster).paused(keccak256(abi.encodePacked(STABLE, poolManager))))
            revert NotInitialized();
        if (amount > stocksUsers) revert InvalidAmount();

        if (feeData.xFeeBurn.length == 1) {
            feePercent = feeData.yFeeBurn[0];
        } else {
            bytes memory data = abi.encode(address(perpetualManager), feeData.targetHAHedge);
            uint64 hedgeRatio = _computeHedgeRatio(stocksUsers - amount, data);
            feePercent = _piecewiseLinear(hedgeRatio, feeData.xFeeBurn, feeData.yFeeBurn);
        }
        feePercent = (feePercent * feeData.bonusMalusBurn) / BASE_PARAMS;

        amountForUserInCollat = (amount * (BASE_PARAMS - feePercent) * collatBase) / (oracle.readUpper() * BASE_PARAMS);
    }

    function _previewMintAndFees(
        uint256 amount,
        address agToken,
        address collateral
    ) internal view returns (uint256 amountForUserInStable, uint256 feePercent) {
        (address stableMaster, address poolManager) = _getStableMasterAndPoolManager(agToken, collateral);
        (
            address token,
            ,
            IPerpetualManager perpetualManager,
            IOracleCore oracle,
            uint256 stocksUsers,
            ,
            ,
            ,
            MintBurnData memory feeData
        ) = IStableMaster(stableMaster).collateralMap(poolManager);
        if (token == address(0) || IStableMaster(stableMaster).paused(keccak256(abi.encodePacked(STABLE, poolManager))))
            revert NotInitialized();

        amountForUserInStable = oracle.readQuoteLower(amount);

        if (feeData.xFeeMint.length == 1) feePercent = feeData.yFeeMint[0];
        else {
            bytes memory data = abi.encode(address(perpetualManager), feeData.targetHAHedge);
            uint64 hedgeRatio = _computeHedgeRatio(amountForUserInStable + stocksUsers, data);
            feePercent = _piecewiseLinear(hedgeRatio, feeData.xFeeMint, feeData.yFeeMint);
        }
        feePercent = (feePercent * feeData.bonusMalusMint) / BASE_PARAMS;

        amountForUserInStable = (amountForUserInStable * (BASE_PARAMS - feePercent)) / BASE_PARAMS;
        if (stocksUsers + amountForUserInStable > feeData.capOnStableMinted) revert InvalidAmount();
    }

    // ============================= UTILITY FUNCTIONS =============================
    // These utility functions are taken from other contracts of the protocol

    function _computeHedgeRatio(uint256 newStocksUsers, bytes memory data) internal view returns (uint64 ratio) {
        (address perpetualManager, uint64 targetHAHedge) = abi.decode(data, (address, uint64));
        uint256 totalHedgeAmount = IPerpetualManager(perpetualManager).totalHedgeAmount();
        newStocksUsers = (targetHAHedge * newStocksUsers) / BASE_PARAMS;
        if (newStocksUsers > totalHedgeAmount) ratio = uint64((totalHedgeAmount * BASE_PARAMS) / newStocksUsers);
        else ratio = uint64(BASE_PARAMS);
    }

    function _piecewiseLinear(uint64 x, uint64[] memory xArray, uint64[] memory yArray) internal pure returns (uint64) {
        if (x >= xArray[xArray.length - 1]) {
            return yArray[xArray.length - 1];
        } else if (x <= xArray[0]) {
            return yArray[0];
        } else {
            uint256 lower;
            uint256 upper = xArray.length - 1;
            uint256 mid;
            while (upper - lower > 1) {
                mid = lower + (upper - lower) / 2;
                if (xArray[mid] <= x) {
                    lower = mid;
                } else {
                    upper = mid;
                }
            }
            if (yArray[upper] > yArray[lower]) {
                return
                    yArray[lower] +
                    ((yArray[upper] - yArray[lower]) * (x - xArray[lower])) /
                    (xArray[upper] - xArray[lower]);
            } else {
                return
                    yArray[lower] -
                    ((yArray[lower] - yArray[upper]) * (x - xArray[lower])) /
                    (xArray[upper] - xArray[lower]);
            }
        }
    }

    function _getStableMasterAndPoolManager(
        address agToken,
        address collateral
    ) internal view returns (address stableMaster, address poolManager) {
        stableMaster = IAgTokenMainnet(agToken).stableMaster();
        (poolManager, , , ) = ROUTER.mapPoolManagers(stableMaster, collateral);
    }

    // ========================= CONSTANTS AND INITIALIZERS ========================

    IAngleRouter public constant ROUTER = IAngleRouter(0xBB755240596530be0c1DE5DFD77ec6398471561d);
    ICore public constant CORE = ICore(0x61ed74de9Ca5796cF2F8fD60D54160D47E30B7c3);

    bytes32 public constant STABLE = keccak256("STABLE");
    uint256 public constant BASE_PARAMS = 10 ** 9;

    error NotInitialized();
    error InvalidAmount();
}

// ============================================================
// FILE: contracts/utils/Constants.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

error InsufficientAssets();

/// @title Constants
/// @author Angle Labs, Inc.
/// @notice Constants and errors for Angle Protocol contracts
contract Constants {
    uint256 internal constant _BASE_9 = 1e9;
    uint256 internal constant _BASE_18 = 1e18;
    uint256 internal constant _BASE_27 = 1e27;
    uint256 internal constant _BASE_36 = 1e36;
}

// ============================================================
// FILE: contracts/vaultManager/VaultManagerERC721.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./VaultManagerStorage.sol";

/// @title VaultManagerERC721
/// @author Angle Labs, Inc.
/// @dev Base ERC721 Implementation of VaultManager
abstract contract VaultManagerERC721 is IERC721MetadataUpgradeable, VaultManagerStorage {
    using SafeERC20 for IERC20;
    using Address for address;

    /// @inheritdoc IERC721MetadataUpgradeable
    string public name;
    /// @inheritdoc IERC721MetadataUpgradeable
    string public symbol;

    // ================================= MODIFIERS =================================

    /// @notice Checks if the person interacting with the vault with `vaultID` is approved
    /// @param caller Address of the person seeking to interact with the vault
    /// @param vaultID ID of the concerned vault
    modifier onlyApprovedOrOwner(address caller, uint256 vaultID) {
        if (!_isApprovedOrOwner(caller, vaultID)) revert NotApproved();
        _;
    }

    // ================================ ERC721 LOGIC ===============================

    /// @notice Checks whether a given address is approved for a vault or owns this vault
    /// @param spender Address for which vault ownership should be checked
    /// @param vaultID ID of the vault to check
    /// @return Whether the `spender` address owns or is approved for `vaultID`
    function isApprovedOrOwner(address spender, uint256 vaultID) external view returns (bool) {
        return _isApprovedOrOwner(spender, vaultID);
    }

    /// @inheritdoc IERC721MetadataUpgradeable
    function tokenURI(uint256 vaultID) external view returns (string memory) {
        if (!_exists(vaultID)) revert NonexistentVault();
        // There is no vault with `vaultID` equal to 0, so the following variable is
        // always greater than zero
        uint256 temp = vaultID;
        uint256 digits;
        while (temp != 0) {
            ++digits;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (vaultID != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(vaultID % 10)));
            vaultID /= 10;
        }
        return bytes(_baseURI).length != 0 ? string(abi.encodePacked(_baseURI, string(buffer))) : "";
    }

    /// @inheritdoc IERC721Upgradeable
    function balanceOf(address owner) external view returns (uint256) {
        if (owner == address(0)) revert ZeroAddress();
        return _balances[owner];
    }

    /// @inheritdoc IERC721Upgradeable
    function ownerOf(uint256 vaultID) external view returns (address) {
        return _ownerOf(vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function approve(address to, uint256 vaultID) external {
        address owner = _ownerOf(vaultID);
        if (to == owner) revert ApprovalToOwner();
        if (msg.sender != owner && !isApprovedForAll(owner, msg.sender)) revert NotApproved();

        _approve(to, vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function getApproved(uint256 vaultID) external view returns (address) {
        if (!_exists(vaultID)) revert NonexistentVault();
        return _getApproved(vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function setApprovalForAll(address operator, bool approved) external {
        _setApprovalForAll(msg.sender, operator, approved);
    }

    /// @inheritdoc IERC721Upgradeable
    function isApprovedForAll(address owner, address operator) public view returns (bool) {
        return _operatorApprovals[owner][operator] == 1;
    }

    /// @inheritdoc IERC721Upgradeable
    function transferFrom(address from, address to, uint256 vaultID) external onlyApprovedOrOwner(msg.sender, vaultID) {
        _transfer(from, to, vaultID);
    }

    /// @inheritdoc IERC721Upgradeable
    function safeTransferFrom(address from, address to, uint256 vaultID) external {
        safeTransferFrom(from, to, vaultID, "");
    }

    /// @inheritdoc IERC721Upgradeable
    function safeTransferFrom(
        address from,
        address to,
        uint256 vaultID,
        bytes memory _data
    ) public onlyApprovedOrOwner(msg.sender, vaultID) {
        _safeTransfer(from, to, vaultID, _data);
    }

    // ================================ ERC165 LOGIC ===============================

    /// @inheritdoc IERC165Upgradeable
    function supportsInterface(bytes4 interfaceId) external pure virtual returns (bool) {
        return
            interfaceId == type(IERC721MetadataUpgradeable).interfaceId ||
            interfaceId == type(IERC721Upgradeable).interfaceId ||
            interfaceId == type(IVaultManager).interfaceId ||
            interfaceId == type(IERC165Upgradeable).interfaceId;
    }

    // ================== INTERNAL FUNCTIONS FOR THE ERC721 LOGIC ==================

    /// @notice Internal version of the `ownerOf` function
    function _ownerOf(uint256 vaultID) internal view returns (address owner) {
        owner = _owners[vaultID];
        if (owner == address(0)) revert NonexistentVault();
    }

    /// @notice Internal version of the `getApproved` function
    function _getApproved(uint256 vaultID) internal view returns (address) {
        return _vaultApprovals[vaultID];
    }

    /// @notice Internal version of the `safeTransferFrom` function (with the data parameter)
    function _safeTransfer(address from, address to, uint256 vaultID, bytes memory _data) internal {
        _transfer(from, to, vaultID);
        if (!_checkOnERC721Received(from, to, vaultID, _data)) revert NonERC721Receiver();
    }

    /// @notice Checks whether a vault exists
    /// @param vaultID ID of the vault to check
    /// @return Whether `vaultID` has been created
    function _exists(uint256 vaultID) internal view returns (bool) {
        return _owners[vaultID] != address(0);
    }

    /// @notice Internal version of the `isApprovedOrOwner` function
    function _isApprovedOrOwner(address spender, uint256 vaultID) internal view returns (bool) {
        // The following checks if the vault exists
        address owner = _ownerOf(vaultID);
        return (spender == owner || _getApproved(vaultID) == spender || _operatorApprovals[owner][spender] == 1);
    }

    /// @notice Internal version of the `createVault` function
    /// Mints `vaultID` and transfers it to `to`
    /// @dev This method is equivalent to the `_safeMint` method used in OpenZeppelin ERC721 contract
    /// @dev Emits a {Transfer} event
    function _mint(address to) internal returns (uint256 vaultID) {
        if (to == address(0)) revert ZeroAddress();

        unchecked {
            vaultIDCount += 1;
        }

        vaultID = vaultIDCount;
        _beforeTokenTransfer(address(0), to, vaultID);

        unchecked {
            _balances[to] += 1;
        }

        _owners[vaultID] = to;
        emit Transfer(address(0), to, vaultID);
        if (!_checkOnERC721Received(address(0), to, vaultID, "")) revert NonERC721Receiver();
    }

    /// @notice Destroys `vaultID`
    /// @dev `vaultID` must exist
    /// @dev Emits a {Transfer} event
    function _burn(uint256 vaultID) internal {
        address owner = _ownerOf(vaultID);

        _beforeTokenTransfer(owner, address(0), vaultID);
        // Clear approvals
        _approve(address(0), vaultID);
        // The following line cannot underflow as the owner's balance is necessarily
        // greater than 1
        unchecked {
            _balances[owner] -= 1;
        }
        delete _owners[vaultID];
        delete vaultData[vaultID];

        emit Transfer(owner, address(0), vaultID);
    }

    /// @notice Transfers `vaultID` from `from` to `to` as opposed to {transferFrom},
    /// this imposes no restrictions on msg.sender
    /// @dev `to` cannot be the zero address and `perpetualID` must be owned by `from`
    /// @dev Emits a {Transfer} event
    function _transfer(address from, address to, uint256 vaultID) internal {
        if (_ownerOf(vaultID) != from) revert NotApproved();
        if (to == address(0)) revert ZeroAddress();

        _beforeTokenTransfer(from, to, vaultID);

        // Clear approvals from the previous owner
        _approve(address(0), vaultID);
        unchecked {
            _balances[from] -= 1;
            _balances[to] += 1;
        }
        _owners[vaultID] = to;

        emit Transfer(from, to, vaultID);
    }

    /// @notice Approves `to` to operate on `vaultID`
    function _approve(address to, uint256 vaultID) internal {
        _vaultApprovals[vaultID] = to;
        emit Approval(_ownerOf(vaultID), to, vaultID);
    }

    /// @notice Internal version of the `setApprovalForAll` function
    /// @dev It contains an `approver` field to be used in case someone signs a permit for a particular
    /// address, and this signature is given to the contract by another address (like a router)
    function _setApprovalForAll(address approver, address operator, bool approved) internal {
        if (operator == approver) revert ApprovalToCaller();
        uint256 approval = approved ? 1 : 0;
        _operatorApprovals[approver][operator] = approval;
        emit ApprovalForAll(approver, operator, approved);
    }

    /// @notice Internal function to invoke {IERC721Receiver-onERC721Received} on a target address
    /// The call is not executed if the target address is not a contract
    /// @param from Address representing the previous owner of the given token ID
    /// @param to Target address that will receive the tokens
    /// @param vaultID ID of the token to be transferred
    /// @param _data Bytes optional data to send along with the call
    /// @return Bool whether the call correctly returned the expected value
    function _checkOnERC721Received(
        address from,
        address to,
        uint256 vaultID,
        bytes memory _data
    ) private returns (bool) {
        if (to.isContract()) {
            try IERC721ReceiverUpgradeable(to).onERC721Received(msg.sender, from, vaultID, _data) returns (
                bytes4 retval
            ) {
                return retval == IERC721ReceiverUpgradeable.onERC721Received.selector;
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert NonERC721Receiver();
                } else {
                    // solhint-disable-next-line no-inline-assembly
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        } else {
            return true;
        }
    }

    /// @notice Hook that is called before any token transfer. This includes minting and burning.
    ///  Calling conditions:
    ///
    ///  - When `from` and `to` are both non-zero, `from`'s `vaultID` will be
    ///  transferred to `to`.
    ///  - When `from` is zero, `vaultID` will be minted for `to`.
    ///  - When `to` is zero, `from`'s `vaultID` will be burned.
    ///  - `from` and `to` are never both zero.
    function _beforeTokenTransfer(address from, address to, uint256 vaultID) internal virtual {}

    /// @notice Get `whitelistingActivated` in storage only if needed
    function _whitelistingActivated() internal view virtual returns (bool) {
        return whitelistingActivated;
    }
}

// ============================================================
// FILE: contracts/vaultManager/VaultManagerPermit.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./VaultManagerERC721.sol";
import "../interfaces/external/IERC1271.sol";

/// @title VaultManagerPermit
/// @author Angle Labs, Inc.
/// @dev Base Implementation of permit functions for the `VaultManager` contract
abstract contract VaultManagerPermit is Initializable, VaultManagerERC721 {
    using Address for address;

    mapping(address => uint256) private _nonces;
    /* solhint-disable var-name-mixedcase */
    bytes32 private _HASHED_NAME;
    bytes32 private _HASHED_VERSION;
    bytes32 private _PERMIT_TYPEHASH;
    /* solhint-enable var-name-mixedcase */

    error ExpiredDeadline();
    error InvalidSignature();

    //solhint-disable-next-line
    function __ERC721Permit_init(string memory _name) internal onlyInitializing {
        _PERMIT_TYPEHASH = keccak256(
            "Permit(address owner,address spender,bool approved,uint256 nonce,uint256 deadline)"
        );
        _HASHED_NAME = keccak256(bytes(_name));
        _HASHED_VERSION = keccak256(bytes("1"));
    }

    /// @notice Allows an address to give or revoke approval for all its vaults to another address
    /// @param owner Address signing the permit and giving (or revoking) its approval for all the controlled vaults
    /// @param spender Address to give approval to
    /// @param approved Whether to give or revoke the approval
    /// @param deadline Deadline parameter for the signature to be valid
    /// @dev The `v`, `r`, and `s` parameters are used as signature data
    function permit(
        address owner,
        address spender,
        bool approved,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        if (block.timestamp > deadline) revert ExpiredDeadline();
        // Additional signature checks performed in the `ECDSAUpgradeable.recover` function
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0 || (v != 27 && v != 28))
            revert InvalidSignature();

        bytes32 digest = keccak256(
            abi.encodePacked(
                "\x19\x01",
                _domainSeparatorV4(),
                keccak256(
                    abi.encode(
                        _PERMIT_TYPEHASH,
                        // 0x3f43a9c6bafb5c7aab4e0cfe239dc5d4c15caf0381c6104188191f78a6640bd8,
                        owner,
                        spender,
                        approved,
                        _useNonce(owner),
                        deadline
                    )
                )
            )
        );
        if (owner.isContract()) {
            if (IERC1271(owner).isValidSignature(digest, abi.encodePacked(r, s, v)) != 0x1626ba7e)
                revert InvalidSignature();
        } else {
            address signer = ecrecover(digest, v, r, s);
            if (signer != owner || signer == address(0)) revert InvalidSignature();
        }

        _setApprovalForAll(owner, spender, approved);
    }

    /// @notice Returns the current nonce for an `owner` address
    function nonces(address owner) public view returns (uint256) {
        return _nonces[owner];
    }

    /// @notice Returns the domain separator for the current chain.
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    /// @notice Internal version of the `DOMAIN_SEPARATOR` function
    function _domainSeparatorV4() internal view returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    // keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)')
                    0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f,
                    _HASHED_NAME,
                    _HASHED_VERSION,
                    block.chainid,
                    address(this)
                )
            );
    }

    /// @notice Consumes a nonce for an address: returns the current value and increments it
    function _useNonce(address owner) internal returns (uint256 current) {
        current = _nonces[owner];
        _nonces[owner] = current + 1;
    }

    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/vaultManager/VaultManagerStorage.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721ReceiverUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/interfaces/IERC721MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/introspection/IERC165Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../interfaces/IAgToken.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/ISwapper.sol";
import "../interfaces/ITreasury.sol";
import "../interfaces/IVaultManager.sol";
import "../interfaces/governance/IVeBoostProxy.sol";

/// @title VaultManagerStorage
/// @author Angle Labs, Inc.
/// @dev Variables, references, parameters and events needed in the `VaultManager` contract
// solhint-disable-next-line max-states-count
contract VaultManagerStorage is IVaultManagerStorage, Initializable, ReentrancyGuardUpgradeable {
    /// @notice Base used for parameter computation: almost all the parameters of this contract are set in `BASE_PARAMS`
    uint256 public constant BASE_PARAMS = 10 ** 9;
    /// @notice Base used for interest rate computation
    uint256 public constant BASE_INTEREST = 10 ** 27;
    /// @notice Used for interest rate computation
    uint256 public constant HALF_BASE_INTEREST = 10 ** 27 / 2;

    // ================================= REFERENCES ================================

    /// @inheritdoc IVaultManagerStorage
    ITreasury public treasury;
    /// @inheritdoc IVaultManagerStorage
    IERC20 public collateral;
    /// @inheritdoc IVaultManagerStorage
    IAgToken public stablecoin;
    /// @inheritdoc IVaultManagerStorage
    IOracle public oracle;
    /// @notice Reference to the contract which computes adjusted veANGLE balances for liquidators boosts
    IVeBoostProxy public veBoostProxy;
    /// @notice Base of the collateral
    uint256 internal _collatBase;

    // ================================= PARAMETERS ================================
    // Unless specified otherwise, parameters of this contract are expressed in `BASE_PARAMS`

    /// @notice Maximum amount of stablecoins that can be issued with this contract (in `BASE_TOKENS`). This parameter should
    /// not be bigger than `type(uint256).max / BASE_INTEREST` otherwise there may be some overflows in the `increaseDebt` function
    uint256 public debtCeiling;
    /// @notice Threshold veANGLE balance values for the computation of the boost for liquidators: the length of this array
    /// should normally be 2. The base of the x-values in this array should be `BASE_TOKENS`
    uint256[] public xLiquidationBoost;
    /// @notice Values of the liquidation boost at the threshold values of x
    uint256[] public yLiquidationBoost;
    /// @inheritdoc IVaultManagerStorage
    uint64 public collateralFactor;
    /// @notice Maximum Health factor at which a vault can end up after a liquidation (unless it's fully liquidated)
    uint64 public targetHealthFactor;
    /// @notice Upfront fee taken when borrowing stablecoins: this fee is optional and should in practice not be used
    uint64 public borrowFee;
    /// @notice Upfront fee taken when repaying stablecoins: this fee is optional as well. It should be smaller
    /// than the liquidation surcharge (cf below) to avoid exploits where people voluntarily get liquidated at a 0
    /// discount to pay smaller repaying fees
    uint64 public repayFee;
    /// @notice Per second interest taken to borrowers taking agToken loans. Contrarily to other parameters, it is set in `BASE_INTEREST`
    /// that is to say in base 10**27
    uint64 public interestRate;
    /// @notice Fee taken by the protocol during a liquidation. Technically, this value is not the fee per se, it's 1 - fee.
    /// For instance for a 2% fee, `liquidationSurcharge` should be 98%
    uint64 public liquidationSurcharge;
    /// @notice Maximum discount given to liquidators
    uint64 public maxLiquidationDiscount;
    /// @notice Whether whitelisting is required to own a vault or not
    bool public whitelistingActivated;
    /// @notice Whether the contract is paused or not
    bool public paused;

    // ================================= VARIABLES =================================

    /// @notice Timestamp at which the `interestAccumulator` was updated
    uint256 public lastInterestAccumulatorUpdated;
    /// @inheritdoc IVaultManagerStorage
    uint256 public interestAccumulator;
    /// @inheritdoc IVaultManagerStorage
    uint256 public totalNormalizedDebt;
    /// @notice Surplus accumulated by the contract: surplus is always in stablecoins, and is then reset
    /// when the value is communicated to the treasury contract
    uint256 public surplus;
    /// @notice Bad debt made from liquidated vaults which ended up having no collateral and a positive amount
    /// of stablecoins
    uint256 public badDebt;

    // ================================== MAPPINGS =================================

    /// @inheritdoc IVaultManagerStorage
    mapping(uint256 => Vault) public vaultData;
    /// @notice Maps an address to 1 if it's whitelisted and can open or own a vault
    mapping(address => uint256) public isWhitelisted;

    // ================================ ERC721 DATA ================================

    /// @inheritdoc IVaultManagerStorage
    uint256 public vaultIDCount;

    /// @notice URI
    string internal _baseURI;

    // Mapping from `vaultID` to owner address
    mapping(uint256 => address) internal _owners;

    // Mapping from owner address to vault owned count
    mapping(address => uint256) internal _balances;

    // Mapping from `vaultID` to approved address
    mapping(uint256 => address) internal _vaultApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => uint256)) internal _operatorApprovals;

    uint256[50] private __gap;

    // =================================== EVENTS ==================================

    event AccruedToTreasury(uint256 surplusEndValue, uint256 badDebtEndValue);
    event CollateralAmountUpdated(uint256 vaultID, uint256 collateralAmount, uint8 isIncrease);
    event InterestAccumulatorUpdated(uint256 value, uint256 timestamp);
    event InternalDebtUpdated(uint256 vaultID, uint256 internalAmount, uint8 isIncrease);
    event FiledUint64(uint64 param, bytes32 what);
    event DebtCeilingUpdated(uint256 debtCeiling);
    event LiquidationBoostParametersUpdated(address indexed _veBoostProxy, uint256[] xBoost, uint256[] yBoost);
    event LiquidatedVaults(uint256[] vaultIDs);
    event DebtTransferred(uint256 srcVaultID, uint256 dstVaultID, address dstVaultManager, uint256 amount);

    // =================================== ERRORS ==================================

    error ApprovalToOwner();
    error ApprovalToCaller();
    error DustyLeftoverAmount();
    error DebtCeilingExceeded();
    error HealthyVault();
    error IncompatibleLengths();
    error InsolventVault();
    error InvalidParameterValue();
    error InvalidParameterType();
    error InvalidSetOfParameters();
    error InvalidTreasury();
    error NonERC721Receiver();
    error NonexistentVault();
    error NotApproved();
    error NotGovernor();
    error NotGovernorOrGuardian();
    error NotTreasury();
    error NotWhitelisted();
    error NotVaultManager();
    error Paused();
    error TooHighParameterValue();
    error TooSmallParameterValue();
    error ZeroAddress();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}
}
