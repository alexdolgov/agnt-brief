// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {ERC165Upgradeable} from "../utils/introspection/ERC165Upgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

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
    /**
     * @dev See {IERC165-supportsInterface}.
     */
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
     * @dev Attempts to revoke `role` to `account` and returns a boolean indicating if `role` was revoked.
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
// FILE: @openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "./OwnableUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is specified at deployment time in the constructor for `Ownable`. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2StepUpgradeable is Initializable, OwnableUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable2Step
    struct Ownable2StepStorage {
        address _pendingOwner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable2Step")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant Ownable2StepStorageLocation = 0x237e158222e3e6968b72b9db0d8043aacf074ad9f650f0d1606b4d82ee432c00;

    function _getOwnable2StepStorage() private pure returns (Ownable2StepStorage storage $) {
        assembly {
            $.slot := Ownable2StepStorageLocation
        }
    }

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    function __Ownable2Step_init() internal onlyInitializing {
    }

    function __Ownable2Step_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        Ownable2StepStorage storage $ = _getOwnable2StepStorage();
        return $._pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        Ownable2StepStorage storage $ = _getOwnable2StepStorage();
        $._pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        Ownable2StepStorage storage $ = _getOwnable2StepStorage();
        delete $._pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        if (pendingOwner() != sender) {
            revert OwnableUnauthorizedAccount(sender);
        }
        _transferOwnership(sender);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

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
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable
    struct OwnableStorage {
        address _owner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OwnableStorageLocation = 0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300;

    function _getOwnableStorage() private pure returns (OwnableStorage storage $) {
        assembly {
            $.slot := OwnableStorageLocation
        }
    }

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
    function __Ownable_init(address initialOwner) internal onlyInitializing {
        __Ownable_init_unchained(initialOwner);
    }

    function __Ownable_init_unchained(address initialOwner) internal onlyInitializing {
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
        OwnableStorage storage $ = _getOwnableStorage();
        return $._owner;
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
        OwnableStorage storage $ = _getOwnableStorage();
        address oldOwner = $._owner;
        $._owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

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
        // - construction: the contract is initialized at version 1 (no reininitialization) and the
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
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := INITIALIZABLE_STORAGE
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ContextUpgradeable} from "../../utils/ContextUpgradeable.sol";
import {IERC20Errors} from "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

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
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 */
abstract contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20, IERC20Metadata, IERC20Errors {
    /// @custom:storage-location erc7201:openzeppelin.storage.ERC20
    struct ERC20Storage {
        mapping(address account => uint256) _balances;

        mapping(address account => mapping(address spender => uint256)) _allowances;

        uint256 _totalSupply;

        string _name;
        string _symbol;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC20StorageLocation = 0x52c63247e1f47db19d5ce0460030c497f067ca4cebf71ba98eeadabe20bace00;

    function _getERC20Storage() private pure returns (ERC20Storage storage $) {
        assembly {
            $.slot := ERC20StorageLocation
        }
    }

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __ERC20_init_unchained(name_, symbol_);
    }

    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing {
        ERC20Storage storage $ = _getERC20Storage();
        $._name = name_;
        $._symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._symbol;
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

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._balances[account];
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

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._allowances[owner][spender];
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
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
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
        ERC20Storage storage $ = _getERC20Storage();
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            $._totalSupply += value;
        } else {
            uint256 fromBalance = $._balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                $._balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                $._totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                $._balances[to] += value;
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
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
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
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     * ```
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        ERC20Storage storage $ = _getERC20Storage();
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        $._allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
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
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

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
// FILE: @openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

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
 */
abstract contract ERC165Upgradeable is Initializable, IERC165 {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

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
    /// @custom:storage-location erc7201:openzeppelin.storage.Pausable
    struct PausableStorage {
        bool _paused;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Pausable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PausableStorageLocation = 0xcd5ed15c6e187e77e9aee88184c21f4f2182ab5827cb3b7e07fbedcd63f03300;

    function _getPausableStorage() private pure returns (PausableStorage storage $) {
        assembly {
            $.slot := PausableStorageLocation
        }
    }

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
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
        PausableStorage storage $ = _getPausableStorage();
        return $._paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = true;
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
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

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
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    /// @custom:storage-location erc7201:openzeppelin.storage.ReentrancyGuard
    struct ReentrancyGuardStorage {
        uint256 _status;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ReentrancyGuard")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ReentrancyGuardStorageLocation = 0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00;

    function _getReentrancyGuardStorage() private pure returns (ReentrancyGuardStorage storage $) {
        assembly {
            $.slot := ReentrancyGuardStorageLocation
        }
    }

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        $._status = NOT_ENTERED;
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
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if ($._status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        $._status = ENTERED;
    }

    function _nonReentrantAfter() private {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        $._status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        return $._status == ENTERED;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/IAccessControl.sol)

pragma solidity ^0.8.20;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
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
     * {RoleAdminChanged} not being emitted signaling this.
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
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
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
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
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
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
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
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

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
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

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
// FILE: contracts/access/AdminControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

abstract contract AdminControlUpgradeable is Initializable {

    event NewAdmin(address oldAdmin, address newAdmin);
    event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);

    address public admin;
    address public pendingAdmin;

    modifier onlyAdmin() {
        require(msg.sender == admin, "only admin");
        _;
    }

    modifier onlyPendingAdmin() {
        require(msg.sender == pendingAdmin, "only pending admin");
        _;
    }

    function __AdminControl_init(address admin_) internal onlyInitializing {
        __AdminControl_init_unchained(admin_);
    }

    function __AdminControl_init_unchained(address admin_) internal onlyInitializing {
        admin = admin_;
        emit NewAdmin(address(0), admin_);
    }

    function transferAdmin(address newPendingAdmin_) external virtual onlyAdmin {
        emit NewPendingAdmin(pendingAdmin, newPendingAdmin_);
        pendingAdmin = newPendingAdmin_;        
    }

    function acceptAdmin() external virtual onlyPendingAdmin {
        emit NewAdmin(admin, pendingAdmin);
        admin = pendingAdmin;
        delete pendingAdmin;
    }

    uint256[48] private __gap;
}

// ============================================================
// FILE: contracts/access/BlacklistableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

/**
 * @title Blacklistable
 * @dev Allows accounts to be blacklisted by a "blacklist manager" role
 * @custom:security-contact dev@solv.finance
 */
abstract contract BlacklistableUpgradeable is Ownable2StepUpgradeable {

    /// @custom:storage-location erc7201:solv.storage.Blacklistable
    struct BlacklistableStorage {
        mapping(address => bool) _blacklisted;
        address _blacklistManager;
    }

    // keccak256(abi.encode(uint256(keccak256("solv.storage.Blacklistable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SolvBTCStorageLocation = 0x37055a6a5ad221b3685065a6f80bdaf8b5de26b2f60e82c3fbc16e3374b00c00;

    /**
     * @dev Operates by non blacklist manager.
     */
    error BlacklistableNotManager(address account);

    /**
     * @dev Account is blacklisted.
     */
    error BlacklistableBlacklistedAccount(address account);

    /**
     * @dev Zero address is not allowed.
     */
    error BlacklistableZeroAddressNotAllowed();

    event BlacklistAdded(address indexed account_);
    event BlacklistRemoved(address indexed account_);
    event BlacklistManagerChanged(address indexed newBlacklistManager);

    /**
     * @dev Throws if called by any account other than the blacklist manager.
     */
    modifier onlyBlacklistManager() {
        if (msg.sender != blacklistManager()) {
            revert BlacklistableNotManager(msg.sender);
        }
        _;
    }

    /**
     * @dev Throws if argument account is blacklisted.
     * @param account_ The address to check.
     */
    modifier notBlacklisted(address account_) {
        if (isBlacklisted(account_)) {
            revert BlacklistableBlacklistedAccount(account_);
        }
        _;
    }

    /**
     * @notice Adds account to blacklist.
     * @param account_ The address to blacklist.
     */
    function addBlacklist(address account_) external onlyBlacklistManager {
        _addBlacklist(account_);
    }

    /**
     * @notice Adds multiple accounts to the blacklist.
     * @param accounts_ The addresses to blacklist.
     */
    function addBlacklistBatch(address[] calldata accounts_) external onlyBlacklistManager {
        for (uint256 i; i < accounts_.length; ) {
            _addBlacklist(accounts_[i]);
            unchecked { ++i; }
        }
    }

    /**
     * @notice Removes account from blacklist.
     * @param account_ The address to remove from the blacklist.
     */
    function removeBlacklist(address account_) external onlyBlacklistManager {
        _removeBlacklist(account_);
    }

    /**
     * @notice Removes multiple accounts from the blacklist.
     * @param accounts_ The addresses to remove from the blacklist.
     */
    function removeBlacklistBatch(address[] calldata accounts_) external onlyBlacklistManager {
        for (uint256 i; i < accounts_.length; ) {
            _removeBlacklist(accounts_[i]);
            unchecked { ++i; }
        }
    }

    /**
     * @notice Updates the blacklist manager address.
     * @param newBlacklistManager_ The address of the new blacklist manager.
     */
    function updateBlacklistManager(address newBlacklistManager_) external onlyOwner {
        if (newBlacklistManager_ == address(0)) {
            revert BlacklistableZeroAddressNotAllowed();
        }
        BlacklistableStorage storage $ = _getBlacklistableStorage();
        $._blacklistManager = newBlacklistManager_;
        emit BlacklistManagerChanged(newBlacklistManager_);
    }

    /**
     * @notice Checks if account is blacklisted.
     * @param account_ The address to check.
     * @return True if the account is blacklisted, false if the account is not blacklisted.
     */
    function isBlacklisted(address account_) public view returns (bool) {
        BlacklistableStorage storage $ = _getBlacklistableStorage();
        return $._blacklisted[account_];
    }

    /**
     * @notice Get the address of the blacklist manager.
     */
    function blacklistManager() public view returns (address) {
        BlacklistableStorage storage $ = _getBlacklistableStorage();
        return $._blacklistManager;
    }

    function _getBlacklistableStorage() private pure returns (BlacklistableStorage storage $) {
        assembly {
            $.slot := SolvBTCStorageLocation
        }
    }

    /**
     * @dev Helper method that blacklists an account.
     * @param account_ The address to blacklist.
     */
    function _addBlacklist(address account_) private {
        if (account_ == address(0)) {
            revert BlacklistableZeroAddressNotAllowed();
        }
        BlacklistableStorage storage $ = _getBlacklistableStorage();
        $._blacklisted[account_] = true;
        emit BlacklistAdded(account_);
    }

    /**
     * @dev Helper method that unblacklists an account.
     * @param account_ The address to unblacklist.
     */
    function _removeBlacklist(address account_) private {
        BlacklistableStorage storage $ = _getBlacklistableStorage();
        $._blacklisted[account_] = false;
        emit BlacklistRemoved(account_);
    }
}

// ============================================================
// FILE: contracts/external/IERC3525.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "./IERC721.sol";

interface IERC3525 is IERC721 {
    function valueDecimals() external view returns (uint8);
    function balanceOf(uint256 tokenId) external view returns (uint256);
    function slotOf(uint256 tokenId) external view returns (uint256);
    function allowance(uint256 tokenId, address operator) external view returns (uint256);
    
    function approve(address operator, uint256 tokenId) external payable;
    function approve(uint256 tokenId, address operator, uint256 value) external payable;
    function transferFrom(uint256 fromTokenId, uint256 toTokenId, uint256 value) external payable;
    function transferFrom(uint256 fromTokenId, address to, uint256 value) external payable returns (uint256);
}

// ============================================================
// FILE: contracts/external/IERC3525Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IERC3525Receiver {
    function onERC3525Received(address operator, uint256 fromTokenId, uint256 toTokenId, uint256 value, bytes calldata data) external returns (bytes4);
}

// ============================================================
// FILE: contracts/external/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IERC721 {
    function balanceOf(address owner) external view returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
    function getApproved(uint256 tokenId) external view returns (address);
    function isApprovedForAll(address owner, address operator) external view returns (bool);

    function approve(address approved, uint256 tokenId) external payable;
    function setApprovalForAll(address operator, bool approved) external;
    function transferFrom(address from, address to, uint256 tokenId) external payable;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external payable;
    function safeTransferFrom(address from, address to, uint256 tokenId) external payable;
}

// ============================================================
// FILE: contracts/external/IERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IERC721Receiver {
    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns (bytes4);
}

// ============================================================
// FILE: contracts/ISolvBTC.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IERC721Receiver} from "./external/IERC721Receiver.sol";
import {IERC3525Receiver} from "./external/IERC3525Receiver.sol";

/**
 * @title Interface for SolvBTC.
 * @custom:security-contact dev@solv.finance
 */
interface ISolvBTC is IERC20, IERC721Receiver, IERC3525Receiver, IERC165 {

    error ERC721NotReceivable(address token);
    error ERC3525NotReceivable(address token);

    function mint(address account_, uint256 value_) external;
    function burn(address account_, uint256 value_) external;
    function burn(uint256 value_) external;
}

// ============================================================
// FILE: contracts/ISolvBTCMultiAssetPool.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface ISolvBTCMultiAssetPool {
    function deposit(address sft_, uint256 sftId_, uint256 value_) external;
    function withdraw(address sft, uint256 slot, uint256 sftId, uint256 value) external returns (uint256 toSftId_);

    function isSftSlotDepositAllowed(address sft_, uint256 slot_) external view returns (bool);
    function isSftSlotWithdrawAllowed(address sft_, uint256 slot_) external view returns (bool);
    function getERC20(address sft_, uint256 slot_) external view returns (address);
    function getHoldingValueSftId(address sft_, uint256 slot_) external view returns (uint256);
    function getSftSlotBalance(address sft_, uint256 slot_) external view returns (uint256);
}

// ============================================================
// FILE: contracts/ISolvBTCYieldToken.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "./SolvBTC.sol";

interface ISolvBTCYieldToken is ISolvBTC {
    function getValueByShares(uint256 shares) external view returns (uint256 value);
    function getSharesByValue(uint256 value) external view returns (uint256 shares);
    function getOracleDecimals() external view returns (uint8);
    function getOracle() external view returns (address);
}

// ============================================================
// FILE: contracts/ISolvBTCYieldTokenOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface ISolvBTCYieldTokenOracle {
    function getNav(address erc20) external view returns (uint256);
    function navDecimals(address erc20) external view returns (uint8);
}

// ============================================================
// FILE: contracts/SolvBTC.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "./utils/ERC3525TransferHelper.sol";
import "./ISolvBTC.sol";
import "./SolvBTCMultiAssetPool.sol";

contract SolvBTC is ISolvBTC, ERC20Upgradeable, ReentrancyGuardUpgradeable, Ownable2StepUpgradeable, AccessControlUpgradeable {

    /// @custom:storage-location erc7201:solv.storage.SolvBTC
    struct SolvBTCStorage {
        address _solvBTCMultiAssetPool;
    }

    address public wrappedSftAddress;
    uint256 public wrappedSftSlot;
    address public navOracle;
    uint256 public holdingValueSftId;
    uint256[] internal _holdingEmptySftIds;

    // keccak256(abi.encode(uint256(keccak256("solv.storage.SolvBTC")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SolvBTCStorageLocation = 0x25351088c72db31d4a47cbdabb12f8d9c124b300211236164ae2941317058400;

    bytes32 public constant SOLVBTC_MINTER_ROLE = keccak256(abi.encodePacked("SOLVBTC_MINTER"));
    bytes32 public constant SOLVBTC_POOL_BURNER_ROLE = keccak256(abi.encodePacked("SOLVBTC_POOL_BURNER"));

    event SetSolvBTCMultiAssetPool(address indexed solvBTCMultiAssetPool);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(string memory name_, string memory symbol_) external virtual initializer {
        ERC20Upgradeable.__ERC20_init(name_, symbol_);
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
    }

    function initializeV2(address solvBTCMultiAssetPool_) external virtual reinitializer(2) {
        require(msg.sender == 0x55C09707Fd7aFD670e82A62FaeE312903940013E, "SolvBTC: only owner");
        _transferOwnership(msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        _setSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);

        if (holdingValueSftId != 0) {
            ERC3525TransferHelper.doTransferOut(wrappedSftAddress, solvBTCMultiAssetPool(), holdingValueSftId);
        }
        wrappedSftAddress = address(0);
        wrappedSftSlot = 0;
        navOracle = address(0);
        holdingValueSftId = 0;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControlUpgradeable, IERC165) returns (bool) {
        return 
            interfaceId == type(IERC3525Receiver).interfaceId || 
            interfaceId == type(IERC721Receiver).interfaceId || 
            interfaceId == type(IERC165).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    function onERC3525Received(
        address, /* operator_ */
        uint256 /* fromSftId_ */,
        uint256 /* sftId_ */,
        uint256 /* value_ */,
        bytes calldata /* data_ */
    ) external virtual override returns (bytes4) {
        revert ERC3525NotReceivable(msg.sender);
    }

    function onERC721Received(
        address /* operator_ */, 
        address /* from_ */, 
        uint256 /* sftId_ */, 
        bytes calldata /* data_ */ 
    ) external virtual override returns (bytes4) {
        revert ERC721NotReceivable(msg.sender);
    }

    function mint(address account_, uint256 value_) external virtual nonReentrant onlyRole(SOLVBTC_MINTER_ROLE) {
        require(value_ > 0, "SolvBTC: mint value cannot be 0");
        _mint(account_, value_);
    }

    function burn(uint256 value_) external virtual nonReentrant onlyRole(SOLVBTC_MINTER_ROLE) {
        require(value_ > 0, "SolvBTC: burn value cannot be 0");
        _burn(msg.sender, value_);
    }

    function burn(address account_, uint256 value_) external virtual nonReentrant onlyRole(SOLVBTC_POOL_BURNER_ROLE) {
        require(value_ > 0, "SolvBTC: burn value cannot be 0");
        _burn(account_, value_);
    }

    function sweepEmptySftIds(address sft_, uint256 sweepAmount_) external virtual {
        uint256 length = _holdingEmptySftIds.length;
        for (uint256 i = 0; i < length && i < sweepAmount_; i++) {
            uint256 lastSftId = _holdingEmptySftIds[_holdingEmptySftIds.length - 1];
            ERC3525TransferHelper.doTransferOut(sft_, 0x000000000000000000000000000000000000dEaD, lastSftId);
            _holdingEmptySftIds.pop();
        }
        if (_holdingEmptySftIds.length == 0) {
            delete _holdingEmptySftIds;
        }
    }

    function _getSolvBTCStorage() private pure returns (SolvBTCStorage storage $) {
        assembly {
            $.slot := SolvBTCStorageLocation
        }
    }

    function solvBTCMultiAssetPool() public view virtual returns (address) {
        SolvBTCStorage storage $ = _getSolvBTCStorage();
        return $._solvBTCMultiAssetPool;
    }

    function _setSolvBTCMultiAssetPool(address solvBTCMultiAssetPool_) internal virtual {
        require(solvBTCMultiAssetPool_ != address(0), "SolvBTC: invalid solvBTCMultiAssetPool address");
        SolvBTCStorage storage $ = _getSolvBTCStorage();
        require($._solvBTCMultiAssetPool == address(0), "SolvBTC: solvBTCMultiAssetPool already set");
        $._solvBTCMultiAssetPool = solvBTCMultiAssetPool_;
        emit SetSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);
    }

    uint256[45] private __gap;
}

// ============================================================
// FILE: contracts/SolvBTCMultiAssetPool.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./access/AdminControlUpgradeable.sol";
import "./utils/ERC3525TransferHelper.sol";
import "./external/IERC3525.sol";
import "./ISolvBTCMultiAssetPool.sol";
import "./ISolvBTC.sol";

contract SolvBTCMultiAssetPool is ISolvBTCMultiAssetPool, ReentrancyGuardUpgradeable, AdminControlUpgradeable {
    struct SftSlotInfo {
        uint256 holdingValueSftId;
        address erc20;
        bool depositAllowed;
        bool withdrawAllowed;
    }

    mapping(address => mapping(uint256 => SftSlotInfo)) internal _sftSlotInfos;

    event AddSftSlot(address indexed sft, uint256 indexed slot, address indexed erc20, uint256 holdingValueSftId);
    event SftSlotAllowedChanged(address indexed sft, uint256 indexed slot, bool depositAllowed, bool withdrawAllowed);
    event Deposit(
        address indexed owner, address indexed sft, uint256 indexed slot, address erc20, uint256 sftId, uint256 value
    );
    event Withdraw(
        address indexed owner, address indexed sft, uint256 indexed slot, address erc20, uint256 sftId, uint256 value
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() external virtual initializer {
        AdminControlUpgradeable.__AdminControl_init(msg.sender);
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
    }

    function deposit(address sft_, uint256 sftId_, uint256 value_) external virtual override nonReentrant {
        require(value_ > 0, "SolvBTCMultiAssetPool: deposit amount cannot be 0");
        require(msg.sender == IERC3525(sft_).ownerOf(sftId_), "SolvBTCMultiAssetPool: caller is not sft owner");

        uint256 slot = IERC3525(sft_).slotOf(sftId_);
        SftSlotInfo storage sftSlotInfo = _sftSlotInfos[sft_][slot];
        require(sftSlotInfo.depositAllowed, "SolvBTCMultiAssetPool: sft slot deposit not allowed");

        uint256 sftBalance = IERC3525(sft_).balanceOf(sftId_);
        if (value_ == sftBalance) {
            ERC3525TransferHelper.doTransferIn(sft_, msg.sender, sftId_);
            if (sftSlotInfo.holdingValueSftId == 0) {
                sftSlotInfo.holdingValueSftId = sftId_;
            } else {
                ERC3525TransferHelper.doTransfer(sft_, sftId_, sftSlotInfo.holdingValueSftId, value_);
                ERC3525TransferHelper.doTransferOut(sft_, 0x000000000000000000000000000000000000dEaD, sftId_);
            }
        } else if (value_ < sftBalance) {
            if (sftSlotInfo.holdingValueSftId == 0) {
                sftSlotInfo.holdingValueSftId = ERC3525TransferHelper.doTransferIn(sft_, sftId_, value_);
            } else {
                ERC3525TransferHelper.doTransfer(sft_, sftId_, sftSlotInfo.holdingValueSftId, value_);
            }
        } else {
            revert("SolvBTCMultiAssetPool: deposit amount exceeds sft balance");
        }

        ISolvBTC(sftSlotInfo.erc20).mint(msg.sender, value_);
        emit Deposit(msg.sender, sft_, slot, sftSlotInfo.erc20, sftId_, value_);
    }

    function withdraw(address sft_, uint256 slot_, uint256 sftId_, uint256 value_)
        external
        virtual
        override
        nonReentrant
        returns (uint256 toSftId_)
    {
        require(value_ > 0, "SolvBTCMultiAssetPool: withdraw amount cannot be 0");

        SftSlotInfo storage sftSlotInfo = _sftSlotInfos[sft_][slot_];
        require(sftSlotInfo.withdrawAllowed, "SolvBTCMultiAssetPool: sft slot not allowed");

        uint256 sftSlotBalance = getSftSlotBalance(sft_, slot_);
        require(value_ <= sftSlotBalance, "SolvBTCMultiAssetPool: insufficient balance");

        ISolvBTC(sftSlotInfo.erc20).burn(msg.sender, value_);

        if (sftId_ == 0) {
            toSftId_ = ERC3525TransferHelper.doTransferOut(sft_, sftSlotInfo.holdingValueSftId, msg.sender, value_);
        } else {
            require(slot_ == IERC3525(sft_).slotOf(sftId_), "SolvBTCMultiAssetPool: slot not matched");
            require(msg.sender == IERC3525(sft_).ownerOf(sftId_), "SolvBTCMultiAssetPool: caller is not sft owner");
            ERC3525TransferHelper.doTransfer(sft_, sftSlotInfo.holdingValueSftId, sftId_, value_);
            toSftId_ = sftId_;
        }

        emit Withdraw(msg.sender, sft_, slot_, sftSlotInfo.erc20, toSftId_, value_);
    }

    function addSftSlotOnlyAdmin(address sft_, uint256 slot_, address erc20_, uint256 holdingValueSftId_)
        external
        virtual
        onlyAdmin
    {
        SftSlotInfo storage sftSlotInfo = _sftSlotInfos[sft_][slot_];
        require(sftSlotInfo.erc20 == address(0), "SolvBTCMultiAssetPool: sft slot already existed");
        require(
            IERC3525(sft_).valueDecimals() == IERC20Metadata(erc20_).decimals(),
            "SolvBTCMultiAssetPool: decimals not matched"
        );
        if (holdingValueSftId_ > 0) {
            require(IERC3525(sft_).slotOf(holdingValueSftId_) == slot_, "SolvBTCMultiAssetPool: slot not matched");
            require(
                IERC3525(sft_).ownerOf(holdingValueSftId_) == address(this), "SolvBTCMultiAssetPool: sftId not owned"
            );
        }

        sftSlotInfo.holdingValueSftId = holdingValueSftId_;
        sftSlotInfo.erc20 = erc20_;
        sftSlotInfo.depositAllowed = true;
        sftSlotInfo.withdrawAllowed = true;
        emit AddSftSlot(sft_, slot_, erc20_, holdingValueSftId_);
    }

    function changeSftSlotAllowedOnlyAdmin(address sft_, uint256 slot_, bool depositAllowed_, bool withdrawAllowed_)
        external
        virtual
        onlyAdmin
    {
        SftSlotInfo storage sftSlotInfo = _sftSlotInfos[sft_][slot_];
        require(sftSlotInfo.erc20 != address(0), "SolvBTCMultiAssetPool: sft slot not existed");

        sftSlotInfo.depositAllowed = depositAllowed_;
        sftSlotInfo.withdrawAllowed = withdrawAllowed_;
        emit SftSlotAllowedChanged(sft_, slot_, depositAllowed_, withdrawAllowed_);
    }

    function isSftSlotDepositAllowed(address sft_, uint256 slot_) public view virtual override returns (bool) {
        return _sftSlotInfos[sft_][slot_].depositAllowed;
    }

    function isSftSlotWithdrawAllowed(address sft_, uint256 slot_) public view virtual override returns (bool) {
        return _sftSlotInfos[sft_][slot_].withdrawAllowed;
    }

    function getERC20(address sft_, uint256 slot_) public view virtual override returns (address) {
        return _sftSlotInfos[sft_][slot_].erc20;
    }

    function getHoldingValueSftId(address sft_, uint256 slot_) public view virtual override returns (uint256) {
        return _sftSlotInfos[sft_][slot_].holdingValueSftId;
    }

    function getSftSlotBalance(address sft_, uint256 slot_) public view virtual override returns (uint256) {
        SftSlotInfo storage sftSlotInfo = _sftSlotInfos[sft_][slot_];
        return sftSlotInfo.holdingValueSftId == 0 ? 0 : IERC3525(sft_).balanceOf(sftSlotInfo.holdingValueSftId);
    }

    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/SolvBTCV2_1.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ISolvBTC, IERC721Receiver, IERC3525Receiver, IERC165} from "./ISolvBTC.sol";

/**
 * @title Implementation for SolvBTC V2.1, which is inherited from SolvBTC V2.
 * @dev This version is upgraded from SolvBTC V2 with the removal of deprecated variables and functions. 
 * @custom:security-contact dev@solv.finance
 */
contract SolvBTCV2_1 is ISolvBTC, ERC20Upgradeable, ReentrancyGuardUpgradeable, Ownable2StepUpgradeable, AccessControlUpgradeable {

    /// @custom:storage-location erc7201:solv.storage.SolvBTC
    // struct SolvBTCStorage {
    //     address _solvBTCMultiAssetPool;
    // }

    /**
     * @dev Deprecated variables inherited from SolvBTC V1, the values of which have been cleared in V2.
     * Thus the declaration of these variables would be removed from V2.1.
     */
    // address public wrappedSftAddress;
    // uint256 public wrappedSftSlot;
    // address public navOracle;
    // uint256 public holdingValueSftId;
    // uint256[] internal _holdingEmptySftIds;

    // keccak256(abi.encode(uint256(keccak256("solv.storage.SolvBTC")) - 1)) & ~bytes32(uint256(0xff))
    // bytes32 private constant SolvBTCStorageLocation = 0x25351088c72db31d4a47cbdabb12f8d9c124b300211236164ae2941317058400;

    /// @notice `SOLVBTC_MINTER` role is allowed to mint SolvBTC tokens, as well as to burn SolvBTC tokens held by itself.
    bytes32 public constant SOLVBTC_MINTER_ROLE = keccak256(abi.encodePacked("SOLVBTC_MINTER"));

    /// @notice `SOLVBTC_POOL_BURNER` role is allowed to burn SolvBTC tokens from other accounts only when necessary.
    bytes32 public constant SOLVBTC_POOL_BURNER_ROLE = keccak256(abi.encodePacked("SOLVBTC_POOL_BURNER"));

    // event SetSolvBTCMultiAssetPool(address indexed solvBTCMultiAssetPool);

    /**
     * @dev Mint or burn zero value is not allowed.
     */
    error SolvBTCZeroValueNotAllowed();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(string memory name_, string memory symbol_, address owner_) external virtual initializer {
        ERC20Upgradeable.__ERC20_init(name_, symbol_);
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();

        _transferOwnership(owner_);
        _grantRole(DEFAULT_ADMIN_ROLE, owner_);
    }

    /**
     * @dev Deprecated function inherited from SolvBTC V2, since the values of deprecated variables have been
     * cleared, this function would be deleted from V2.1.
     */
    // function initializeV2(address solvBTCMultiAssetPool_) external virtual reinitializer(2) {
    //     require(msg.sender == 0x55C09707Fd7aFD670e82A62FaeE312903940013E, "SolvBTC: only owner");
    //     _transferOwnership(msg.sender);
    //     _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    //     _setSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);

    //     if (holdingValueSftId != 0) {
    //         ERC3525TransferHelper.doTransferOut(wrappedSftAddress, solvBTCMultiAssetPool(), holdingValueSftId);
    //     }
    //     wrappedSftAddress = address(0);
    //     wrappedSftSlot = 0;
    //     navOracle = address(0);
    //     holdingValueSftId = 0;
    // }

    function onERC3525Received(
        address, /* operator_ */
        uint256 /* fromSftId_ */,
        uint256 /* sftId_ */,
        uint256 /* value_ */,
        bytes calldata /* data_ */
    ) external virtual override returns (bytes4) {
        revert ERC3525NotReceivable(msg.sender);
    }

    function onERC721Received(
        address /* operator_ */, 
        address /* from_ */, 
        uint256 /* sftId_ */, 
        bytes calldata /* data_ */ 
    ) external virtual override returns (bytes4) {
        revert ERC721NotReceivable(msg.sender);
    }

    function mint(address account_, uint256 value_) external virtual nonReentrant onlyRole(SOLVBTC_MINTER_ROLE) {
        if (value_ == 0) {
            revert SolvBTCZeroValueNotAllowed();
        }
        _mint(account_, value_);
    }

    function burn(uint256 value_) external virtual nonReentrant onlyRole(SOLVBTC_MINTER_ROLE) {
        if (value_ == 0) {
            revert SolvBTCZeroValueNotAllowed();
        }
        _burn(msg.sender, value_);
    }

    function burn(address account_, uint256 value_) external virtual nonReentrant onlyRole(SOLVBTC_POOL_BURNER_ROLE) {
        if (value_ == 0) {
            revert SolvBTCZeroValueNotAllowed();
        }
        _burn(account_, value_);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControlUpgradeable, IERC165) returns (bool) {
        return 
            interfaceId == type(IERC3525Receiver).interfaceId || 
            interfaceId == type(IERC721Receiver).interfaceId || 
            super.supportsInterface(interfaceId);
    }

    /**
     * @dev Deprecated function inherited from SolvBTC V2, since the empty sft ids would be removed 
     * before upgrading to V2.1.
     */
    // function sweepEmptySftIds(address sft_, uint256 sweepAmount_) external virtual {
    //     uint256 length = _holdingEmptySftIds.length;
    //     for (uint256 i = 0; i < length && i < sweepAmount_; i++) {
    //         uint256 lastSftId = _holdingEmptySftIds[_holdingEmptySftIds.length - 1];
    //         ERC3525TransferHelper.doTransferOut(sft_, 0x000000000000000000000000000000000000dEaD, lastSftId);
    //         _holdingEmptySftIds.pop();
    //     }
    //     if (_holdingEmptySftIds.length == 0) {
    //         delete _holdingEmptySftIds;
    //     }
    // }

    /**
     * @dev The following functions are deprecated in SolvBTC V2.1, since the value of `solvBTCMultiAssetPool`
     * will not be used in V2.1.
     */
    // function _getSolvBTCStorage() private pure returns (SolvBTCStorage storage $) {
    //     assembly {
    //         $.slot := SolvBTCStorageLocation
    //     }
    // }
    // function solvBTCMultiAssetPool() public view virtual returns (address) {
    //     SolvBTCStorage storage $ = _getSolvBTCStorage();
    //     return $._solvBTCMultiAssetPool;
    // }
    // function setSolvBTCMultiAssetPool(address solvBTCMultiAssetPool_) external virtual onlyOwner {
    //     _setSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);
    // }
    // function _setSolvBTCMultiAssetPool(address solvBTCMultiAssetPool_) internal virtual {
    //     SolvBTCStorage storage $ = _getSolvBTCStorage();
    //     $._solvBTCMultiAssetPool = solvBTCMultiAssetPool_;
    //     emit SetSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);
    // }

    /** @dev Use EIP-7201 for storage management instead. */
    // uint256[45] private __gap;
}

// ============================================================
// FILE: contracts/SolvBTCV3_1.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {SolvBTCV3} from "./SolvBTCV3.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

/**
 * @title Implementation for SolvBTC V3_1, which is inherited from SolvBTC V3 and expanded with
 * openzeppelin pausable functionality.
 * @custom:security-contact dev@solv.finance
 */
contract SolvBTCV3_1 is SolvBTCV3, PausableUpgradeable {
    struct SolvBTCV3_1Storage {
        address _pauser;
    }

    // keccak256(abi.encode(uint256(keccak256("solv.storage.SolvBTCV3_1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SolvBTCV3_1StorageLocation =
        0x502a85c8d631e3586414f9cb06ca4d27c03b5f40bf43ea12a9183dd747be5900;

    /**
     * @dev Operates by non pauser.
     */
    error PausablePauser(address account);

    function _getSolvBTCV3_1Storage() private pure returns (SolvBTCV3_1Storage storage $) {
        assembly {
            $.slot := SolvBTCV3_1StorageLocation
        }
    }

    /**
     * @dev throws if called by any account other than the pauser
     */
    modifier onlyPauser() {
        SolvBTCV3_1Storage storage $ = _getSolvBTCV3_1Storage();
        if (msg.sender != $._pauser) {
            revert PausablePauser(msg.sender);
        }
        _;
    }

    function setPauser(address pauser) external onlyOwner {
        SolvBTCV3_1Storage storage $ = _getSolvBTCV3_1Storage();
        $._pauser = pauser;
    }

    function pause() external onlyPauser whenNotPaused {
        _pause();
    }

    function unpause() external onlyPauser whenPaused {
        _unpause();
    }

    function _update(address from, address to, uint256 value) internal virtual override whenNotPaused {
        super._update(from, to, value);
    }
}

// ============================================================
// FILE: contracts/SolvBTCV3.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {SolvBTCV2_1} from "./SolvBTCV2_1.sol";
import {BlacklistableUpgradeable} from "./access/BlacklistableUpgradeable.sol";

/**
 * @title Implementation for SolvBTC V3, which is inherited from SolvBTC V2.1 and expanded with 
 * blacklist functionality.
 * @custom:security-contact dev@solv.finance
 */
contract SolvBTCV3 is SolvBTCV2_1, BlacklistableUpgradeable {

    /**
     * @dev Account is not blacklisted.
     */
    error SolvBTCNotBlacklisted(address account);

    /// @notice Emitted when black funds are destroyed.
    event DestroyBlackFunds(address indexed account, uint256 amount);

    /// @notice Destroys black funds from the specified blacklist account.
    function destroyBlackFunds(address account, uint256 amount) external virtual onlyOwner {
        if (!isBlacklisted(account)) {
            revert SolvBTCNotBlacklisted(account);
        }
        super._update(account, address(0), amount);
        emit DestroyBlackFunds(account, amount);
    }

    function _approve(address owner, address spender, uint256 value, bool emitEvent)
        internal
        virtual
        override
        notBlacklisted(spender)
        notBlacklisted(owner)
    {
        super._approve(owner, spender, value, emitEvent);
    }

    function _update(address from, address to, uint256 value)
        internal
        virtual
        override
        notBlacklisted(from)
        notBlacklisted(to)
        notBlacklisted(msg.sender)
    {
        super._update(from, to, value);
    }
}

// ============================================================
// FILE: contracts/SolvBTCYieldTokenV2_1.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "./SolvBTCV2_1.sol";
import "./ISolvBTCYieldToken.sol";
import "./ISolvBTCYieldTokenOracle.sol";

contract SolvBTCYieldTokenV2_1 is SolvBTCV2_1, ISolvBTCYieldToken {

    struct SolvBTCYieldTokenStorage {
        address _oracle;
    }

    // keccak256(abi.encode(uint256(keccak256("solv.storage.SolvBTCYieldToken")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SolvBTCYieldTokenStorageLocation = 0xf05073905b1e64f5ceda3673d2f3281ec4d80a5b81532923554d532211661500;

    event SetOracle(address indexed oracle);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Get amount of underlying asset for a given amount of shares.
     */
    function getValueByShares(uint256 shares) external view virtual override returns (uint256 value) {
        uint256 currentNav = ISolvBTCYieldTokenOracle(getOracle()).getNav(address(this));
        return shares * currentNav / (10 ** decimals());
    }

    /**
     * @notice Get amount of shares for a given amount of underlying asset.
     */
    function getSharesByValue(uint256 value) external view virtual override returns (uint256 shares) {
        uint256 currentNav = ISolvBTCYieldTokenOracle(getOracle()).getNav(address(this));
        return currentNav == 0 ? 0 : (value * (10 ** decimals()) / currentNav);
    }

    function _getSolvBTCLYTStorage() private pure returns (SolvBTCYieldTokenStorage storage $) {
        assembly {
            $.slot := SolvBTCYieldTokenStorageLocation
        }
    }

    function getOracle() public view virtual override returns (address) {
        SolvBTCYieldTokenStorage storage $ = _getSolvBTCLYTStorage();
        return $._oracle;
    }

    function setOracle(address oracle_) external virtual onlyOwner {
        require(oracle_ != address(0), "SolvBTCYieldToken: invalid oracle address");
        SolvBTCYieldTokenStorage storage $ = _getSolvBTCLYTStorage();
        $._oracle = oracle_;
        emit SetOracle(oracle_);
    }

    function getOracleDecimals() external view returns (uint8) {
        return ISolvBTCYieldTokenOracle(getOracle()).navDecimals(address(this));
    }
}

// ============================================================
// FILE: contracts/SolvBTCYieldTokenV3_1.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "./SolvBTCYieldTokenV3.sol";
import "./SolvBTCV3_1.sol";

contract SolvBTCYieldTokenV3_1 is SolvBTCYieldTokenV3, SolvBTCV3_1 {

    event SetAlias(string name, string symbol);

    struct AliasStorage {
        string _name;
        string _symbol;
    }

    // keccak256(abi.encode(uint256(keccak256("solv.storage.SolvBTCYieldTokenV3_1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ALIAS_STORAGE_POSITION = 0xda2596346793476faa39ef2fc6f6928de90d835de448231a9734d2e32c5b1400;

    function _getAliasStorage() private pure returns (AliasStorage storage $) {
        assembly {
            $.slot := ALIAS_STORAGE_POSITION
        }
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        AliasStorage storage $ = _getAliasStorage();
        if (bytes($._name).length == 0) {
            return super.name();
        }
        return $._name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        AliasStorage storage $ = _getAliasStorage();
        if (bytes($._symbol).length == 0) {
            return super.symbol();
        }
        return $._symbol;
    }

    /**
     * @dev Sets the alias name and symbol of the SolvBTC yield token.
     */
    function setAlias(string calldata name_, string calldata symbol_) external virtual onlyOwner {
        AliasStorage storage $ = _getAliasStorage();
        $._name = name_;
        $._symbol = symbol_;
        emit SetAlias(name_, symbol_);
    }

    function _approve(address owner, address spender, uint256 value, bool emitEvent)
        internal
        virtual
        override(SolvBTCYieldTokenV3, SolvBTCV3)
    {
        SolvBTCV3._approve(owner, spender, value, emitEvent);
    }

    function _update(address from, address to, uint256 value)
        internal
        virtual
        override(SolvBTCYieldTokenV3, SolvBTCV3_1)
    {
        SolvBTCV3_1._update(from, to, value);
    }
}

// ============================================================
// FILE: contracts/SolvBTCYieldTokenV3.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "./SolvBTCYieldTokenV2_1.sol";
import "./SolvBTCV3.sol";

contract SolvBTCYieldTokenV3 is SolvBTCYieldTokenV2_1, SolvBTCV3 {

    function _approve(address owner, address spender, uint256 value, bool emitEvent)
        internal
        virtual
        override(ERC20Upgradeable, SolvBTCV3)
    {
        SolvBTCV3._approve(owner, spender, value, emitEvent);
    }

    function _update(address from, address to, uint256 value)
        internal
        virtual
        override(ERC20Upgradeable, SolvBTCV3)
    {
        SolvBTCV3._update(from, to, value);
    } 

}

// ============================================================
// FILE: contracts/utils/ERC3525TransferHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface ERC721Interface {
    function approve(address to, uint256 tokenId) external;
    function transferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
}

interface ERC3525Interface {
    function approve(uint256 tokenId, address to, uint256 allowance) external payable;
    function transferFrom(uint256 fromTokenId, uint256 toTokenId, uint256 value) external payable;
    function transferFrom(uint256 fromTokenId, address to, uint256 value) external payable returns (uint256); 
}

library ERC3525TransferHelper {
    function doApproveId(address underlying, address to, uint256 tokenId) internal {
        ERC721Interface token = ERC721Interface(underlying);
        token.approve(to, tokenId);
    }

    function doApproveValue(address underlying, uint256 tokenId, address to, uint256 allowance) internal {
        ERC3525Interface token = ERC3525Interface(underlying);
        token.approve(tokenId, to, allowance);
    }

    function doTransferIn(address underlying, address from, uint256 tokenId) internal {
        ERC721Interface token = ERC721Interface(underlying);
        token.transferFrom(from, address(this), tokenId);
    }
    
    function doSafeTransferIn(address underlying, address from, uint256 tokenId) internal {
        ERC721Interface token = ERC721Interface(underlying);
        token.safeTransferFrom(from, address(this), tokenId);
    }

    function doSafeTransferOut(address underlying, address to, uint256 tokenId) internal {
        ERC721Interface token = ERC721Interface(underlying);
        token.safeTransferFrom(address(this), to, tokenId);
    }

    function doTransferOut(address underlying, address to, uint256 tokenId) internal {
        ERC721Interface token = ERC721Interface(underlying);
        token.transferFrom(address(this), to, tokenId);
    }

    function doTransferIn(address underlying, uint256 fromTokenId, uint256 value) internal returns (uint256 newTokenId) {
        ERC3525Interface token = ERC3525Interface(underlying);
        return token.transferFrom(fromTokenId, address(this), value);
    }

    function doTransferOut(address underlying, uint256 fromTokenId, address to, uint256 value) internal returns (uint256 newTokenId) {
        ERC3525Interface token = ERC3525Interface(underlying);
        newTokenId = token.transferFrom(fromTokenId, to, value);
    }

    function doTransfer(address underlying, address from, address to, uint256 tokenId) internal {
        ERC721Interface token = ERC721Interface(underlying);
        token.transferFrom(from, to, tokenId);
    }

    function doTransfer(address underlying, uint256 fromTokenId, uint256 toTokenId, uint256 value) internal {
        ERC3525Interface token = ERC3525Interface(underlying);
        token.transferFrom(fromTokenId, toTokenId, value);
    }

}
