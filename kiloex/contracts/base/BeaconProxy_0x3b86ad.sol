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
// FILE: @openzeppelin/contracts/access/Ownable.sol
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
// FILE: @openzeppelin/contracts/proxy/beacon/BeaconProxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/BeaconProxy.sol)

pragma solidity ^0.8.20;

import {IBeacon} from "./IBeacon.sol";
import {Proxy} from "../Proxy.sol";
import {ERC1967Utils} from "../ERC1967/ERC1967Utils.sol";

/**
 * @dev This contract implements a proxy that gets the implementation address for each call from an {UpgradeableBeacon}.
 *
 * The beacon address can only be set once during construction, and cannot be changed afterwards. It is stored in an
 * immutable variable to avoid unnecessary storage reads, and also in the beacon storage slot specified by
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] so that it can be accessed externally.
 *
 * CAUTION: Since the beacon address can never be changed, you must ensure that you either control the beacon, or trust
 * the beacon to not upgrade the implementation maliciously.
 *
 * IMPORTANT: Do not use the implementation logic to modify the beacon storage slot. Doing so would leave the proxy in
 * an inconsistent state where the beacon storage slot does not match the beacon address.
 */
contract BeaconProxy is Proxy {
    // An immutable address for the beacon to avoid unnecessary SLOADs before each delegate call.
    address private immutable _beacon;

    /**
     * @dev Initializes the proxy with `beacon`.
     *
     * If `data` is nonempty, it's used as data in a delegate call to the implementation returned by the beacon. This
     * will typically be an encoded function call, and allows initializing the storage of the proxy like a Solidity
     * constructor.
     *
     * Requirements:
     *
     * - `beacon` must be a contract with the interface {IBeacon}.
     * - If `data` is empty, `msg.value` must be zero.
     */
    constructor(address beacon, bytes memory data) payable {
        ERC1967Utils.upgradeBeaconToAndCall(beacon, data);
        _beacon = beacon;
    }

    /**
     * @dev Returns the current implementation address of the associated beacon.
     */
    function _implementation() internal view virtual override returns (address) {
        return IBeacon(_getBeacon()).implementation();
    }

    /**
     * @dev Returns the beacon.
     */
    function _getBeacon() internal view virtual returns (address) {
        return _beacon;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.20;

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
// FILE: @openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/UpgradeableBeacon.sol)

pragma solidity ^0.8.20;

import {IBeacon} from "./IBeacon.sol";
import {Ownable} from "../../access/Ownable.sol";

/**
 * @dev This contract is used in conjunction with one or more instances of {BeaconProxy} to determine their
 * implementation contract, which is where they will delegate all function calls.
 *
 * An owner is able to change the implementation the beacon points to, thus upgrading the proxies that use this beacon.
 */
contract UpgradeableBeacon is IBeacon, Ownable {
    address private _implementation;

    /**
     * @dev The `implementation` of the beacon is invalid.
     */
    error BeaconInvalidImplementation(address implementation);

    /**
     * @dev Emitted when the implementation returned by the beacon is changed.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Sets the address of the initial implementation, and the initial owner who can upgrade the beacon.
     */
    constructor(address implementation_, address initialOwner) Ownable(initialOwner) {
        _setImplementation(implementation_);
    }

    /**
     * @dev Returns the current implementation address.
     */
    function implementation() public view virtual returns (address) {
        return _implementation;
    }

    /**
     * @dev Upgrades the beacon to a new implementation.
     *
     * Emits an {Upgraded} event.
     *
     * Requirements:
     *
     * - msg.sender must be the owner of the contract.
     * - `newImplementation` must be a contract.
     */
    function upgradeTo(address newImplementation) public virtual onlyOwner {
        _setImplementation(newImplementation);
    }

    /**
     * @dev Sets the implementation contract address for this beacon
     *
     * Requirements:
     *
     * - `newImplementation` must be a contract.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert BeaconInvalidImplementation(newImplementation);
        }
        _implementation = newImplementation;
        emit Upgraded(newImplementation);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.20;

import {IBeacon} from "../beacon/IBeacon.sol";
import {Address} from "../../utils/Address.sol";
import {StorageSlot} from "../../utils/StorageSlot.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 */
library ERC1967Utils {
    // We re-declare ERC-1967 events here because they can't be used directly from IERC1967.
    // This will be fixed in Solidity 0.8.21. At that point we should remove these events.
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
     * @dev Stores a new address in the EIP1967 implementation slot.
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
        emit Upgraded(newImplementation);

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
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
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
        emit AdminChanged(getAdmin(), newAdmin);
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
     * @dev Stores a new beacon in the EIP1967 beacon slot.
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
        emit BeaconUpgraded(newBeacon);

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
// FILE: @openzeppelin/contracts/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/Proxy.sol)

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
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

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
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
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
     * {FailedInnerCall} error.
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
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
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
// FILE: @openzeppelin/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/StorageSlot.sol)
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
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
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

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: contracts/access/AdminControl.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

abstract contract AdminControl {

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

    constructor(address admin_) {
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
// FILE: contracts/access/GovernorControl.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

abstract contract GovernorControl {

	event NewGovernor(address oldGovernor, address newGovernor);
	event NewPendingGovernor(address oldPendingGovernor, address newPendingGovernor);

	address public governor;
	address public pendingGovernor;

	modifier onlyGovernor() {
		require(governor == msg.sender, "only governor");
		_;
	}

	modifier onlyPendingGovernor() {
		require(pendingGovernor == msg.sender, "only governor");
		_;
	}

	constructor(address governor_) {
		governor = governor_;
        emit NewGovernor(address(0), governor_);
	}

	function transferGovernance(address newPendingGovernor_) external virtual onlyGovernor {
		emit NewPendingGovernor(pendingGovernor, newPendingGovernor_);
		pendingGovernor = newPendingGovernor_;
	}

	function acceptGovernance() external virtual onlyPendingGovernor {
		emit NewGovernor(governor, pendingGovernor);
		governor = pendingGovernor;
		delete pendingGovernor;
	}
}

// ============================================================
// FILE: contracts/access/GovernorControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

abstract contract GovernorControlUpgradeable is Initializable {

	event NewGovernor(address oldGovernor, address newGovernor);
	event NewPendingGovernor(address oldPendingGovernor, address newPendingGovernor);

	address public governor;
	address public pendingGovernor;

	modifier onlyGovernor() {
		require(governor == msg.sender, "only governor");
		_;
	}

	modifier onlyPendingGovernor() {
		require(pendingGovernor == msg.sender, "only governor");
		_;
	}

    function __GovernorControl_init(address governor_) internal onlyInitializing {
        __GovernorControl_init_unchained(governor_);
    }

    function __GovernorControl_init_unchained(address governor_) internal onlyInitializing {
        governor = governor_;
        emit NewGovernor(address(0), governor_);
    }

	function transferGovernance(address newPendingGovernor_) external virtual onlyGovernor {
		emit NewPendingGovernor(pendingGovernor, newPendingGovernor_);
		pendingGovernor = newPendingGovernor_;
	}

	function acceptGovernance() external virtual onlyPendingGovernor {
		emit NewGovernor(governor, pendingGovernor);
		governor = pendingGovernor;
		delete pendingGovernor;
	}

    uint256[48] private __gap;
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
// FILE: contracts/external/IOpenFundMarket.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

struct SubscribeLimitInfo {
    uint256 hardCap;
    uint256 subscribeMin;
    uint256 subscribeMax;
    uint64 fundraisingStartTime;
    uint64 fundraisingEndTime;
}

struct PoolSFTInfo {
    address openFundShare;
    address openFundRedemption;
    uint256 openFundShareSlot;
    uint256 latestRedeemSlot;
}

struct PoolFeeInfo {
    uint16 carryRate;
    address carryCollector;
    uint64 latestProtocolFeeSettleTime;
}

struct ManagerInfo {
    address poolManager;
    address subscribeNavManager;
    address redeemNavManager;
}

struct PoolInfo {
    PoolSFTInfo poolSFTInfo;
    PoolFeeInfo poolFeeInfo;
    ManagerInfo managerInfo;
    SubscribeLimitInfo subscribeLimitInfo;
    address vault;
    address currency;
    address navOracle;
    uint64 valueDate;
    bool permissionless;
    uint256 fundraisingAmount;
}

interface IOpenFundMarket {
    function subscribe(bytes32 poolId, uint256 currencyAmount, uint256 openFundShareId, uint64 expireTime)
        external
        returns (uint256 value_);
    function requestRedeem(bytes32 poolId, uint256 openFundShareId, uint256 openFundRedemptionId, uint256 redeemValue)
        external;
    function revokeRedeem(bytes32 poolId, uint256 openFundRedemptionId) external;

    function poolInfos(bytes32 poolId) external view returns (PoolInfo memory);
    function getAddress(bytes32 name) external view returns (address);
    function purchasedRecords(bytes32 poolId, address buyer) external view returns (uint256);
}

interface IOFMWhitelistStrategyManager {
    function isWhitelisted(bytes32 poolId_, address buyer_) external view returns (bool);
}

// ============================================================
// FILE: contracts/ISftWrappedToken.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import "./external/IERC721Receiver.sol";
import "./external/IERC3525Receiver.sol";

interface ISftWrappedToken is IERC20, IERC721Receiver, IERC3525Receiver, IERC165 {
	function mint(uint256 sftId_, uint256 amount_) external;
    function burn(uint256 amount_, uint256 sftId_) external returns (uint256 toSftId_);
    function getValueByShares(uint256 shares) external view returns (uint256 value);
    function getSharesByValue(uint256 value) external view returns (uint256 shares);
    function underlyingAsset() external view returns (address underlyingAsset);
}

// ============================================================
// FILE: contracts/ISftWrapRouter.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import "./external/IERC721Receiver.sol";
import "./external/IERC3525Receiver.sol";

interface ISftWrapRouter is IERC721Receiver, IERC3525Receiver, IERC165 {
}

// ============================================================
// FILE: contracts/ISolvBTC.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import "./external/IERC721Receiver.sol";
import "./external/IERC3525Receiver.sol";

interface ISolvBTC is IERC20, IERC721Receiver, IERC3525Receiver, IERC165 {

    error ERC721NotReceivable(address token);
    error ERC3525NotReceivable(address token);

    function mint(address account, uint256 value) external;
    function burn(address account, uint256 value) external;
    function burn(uint256 value) external;

    function solvBTCMultiAssetPool() external view returns (address);
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
// FILE: contracts/oracle/SolvBTCYieldTokenOracleForSFT.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "../ISolvBTCYieldTokenOracle.sol";
import "../access/AdminControlUpgradeable.sol";

struct SlotBaseInfo {
    address issuer;
    address currency;
    uint64 valueDate;
    uint64 maturity;
    uint64 createTime;
    bool transferable;
    bool isValid;
}

interface IOpenFundSftDelegate {
    function concrete() external view returns (address);
}

interface IOpenFundSftConcrete {
    function slotBaseInfo(uint256 slot) external view returns (SlotBaseInfo memory);
}

interface ISFTNavOracle {
    function getSubscribeNav(bytes32 poolId, uint256 time) external view returns (uint256 nav, uint256 navTime);
}

interface IERC20 {
    function decimals() external view returns (uint8);
}

contract SolvBTCYieldTokenOracleForSFT is ISolvBTCYieldTokenOracle, AdminControlUpgradeable {
    struct SFTOracleConfig {
        bytes32 poolId;
        address sft;
        uint256 sftSlot;
        address oracle;
    }

    event SetSFTOracle(address indexed erc20, bytes32 indexed poolId, address sft, uint256 sftSlot, address oracle);

    //erc20 => sftoracle config
    mapping(address => SFTOracleConfig) public sftOracles;

    function initialize() external initializer {
        __AdminControl_init(msg.sender);
    }

    function getNav(address erc20) external view override returns (uint256) {
        SFTOracleConfig storage config = sftOracles[erc20];
        require(
            config.oracle != address(0) && config.poolId != 0x00,
            "SolvBTCYieldTokenOracleForSFT: no oracle for erc20"
        );

        (uint256 latestNav,) = ISFTNavOracle(config.oracle).getSubscribeNav(config.poolId, block.timestamp);
        return latestNav;
    }

    function navDecimals(address erc20) external view override returns (uint8) {
        SFTOracleConfig storage config = sftOracles[erc20];
        address sftConcreteAddress = IOpenFundSftDelegate(config.sft).concrete();
        SlotBaseInfo memory slotBaseInfo = IOpenFundSftConcrete(sftConcreteAddress).slotBaseInfo(config.sftSlot);
        return IERC20(slotBaseInfo.currency).decimals();
    }

    function setSFTOracle(address erc20, address sft, uint256 sftSlot, bytes32 poolId, address sftOracle)
        external
        onlyAdmin
    {
        require(erc20 != address(0), "SolvBTCYieldTokenOracleForSFT: invalid erc20 address");
        require(sft != address(0), "SolvBTCYieldTokenOracleForSFT: invalid sft address");
        require(sftSlot != 0, "SolvBTCYieldTokenOracleForSFT: invalid sft slot");
        require(poolId != 0x00, "SolvBTCYieldTokenOracleForSFT: invalid pool id");
        require(sftOracle != address(0), "SolvBTCYieldTokenOracleForSFT: invalid sft oracle address");
        sftOracles[erc20] = SFTOracleConfig({poolId: poolId, sft: sft, sftSlot: sftSlot, oracle: sftOracle});
        emit SetSFTOracle(erc20, poolId, sft, sftSlot, sftOracle);
    }
}

// ============================================================
// FILE: contracts/SftWrappedToken.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "./utils/ERC3525TransferHelper.sol";
import "./external/IERC3525.sol";
import "./ISftWrappedToken.sol";

struct SlotBaseInfo {
    address issuer;
    address currency;
    uint64 valueDate;
    uint64 maturity;
    uint64 createTime;
    bool transferable;
    bool isValid;
}

interface IOpenFundSftDelegate {
    function concrete() external view returns (address);
}

interface IOpenFundSftConcrete {
    function slotBaseInfo(uint256 slot) external view returns (SlotBaseInfo memory);
}

interface INavOracle {
    function getSubscribeNav(bytes32 poolId, uint256 time) external view returns (uint256 nav, uint256 navTime);
}

contract SftWrappedToken is ISftWrappedToken, ERC20Upgradeable, ReentrancyGuardUpgradeable {
    address public wrappedSftAddress;
    uint256 public wrappedSftSlot;
    address public navOracle;
    uint256 public holdingValueSftId;

    uint256[] internal _holdingEmptySftIds;

    modifier onlyWrappedSft() {
        require(msg.sender == wrappedSftAddress, "SftWrappedToken: only wrapped sft");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        string memory name_,
        string memory symbol_,
        address wrappedSftAddress_,
        uint256 wrappedSftSlot_,
        address navOracle_
    ) external virtual initializer {
        require(wrappedSftAddress_ != address(0), "SftWrappedToken: invalid sft address");
        require(wrappedSftSlot_ != 0, "SftWrappedToken: invalid sft slot");
        require(navOracle_ != address(0), "SftWrappedToken: invalid nav oracle address");

        ERC20Upgradeable.__ERC20_init(name_, symbol_);
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
        wrappedSftAddress = wrappedSftAddress_;
        wrappedSftSlot = wrappedSftSlot_;
        navOracle = navOracle_;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC3525Receiver).interfaceId || interfaceId == type(IERC721Receiver).interfaceId
            || interfaceId == type(IERC165).interfaceId;
    }

    function decimals() public view virtual override returns (uint8) {
        return IERC3525(wrappedSftAddress).valueDecimals();
    }

    function onERC3525Received(
        address, /* operator_ */
        uint256 fromSftId_,
        uint256 sftId_,
        uint256 value_,
        bytes calldata /* data_ */
    ) external virtual override onlyWrappedSft returns (bytes4) {
        address fromSftOwner = IERC3525(wrappedSftAddress).ownerOf(fromSftId_);

        if (fromSftOwner == address(this)) {
            return IERC3525Receiver.onERC3525Received.selector;
        }

        require(value_ > 0, "SftWrappedToken: mint zero not allowed");
        if (holdingValueSftId == 0) {
            require(wrappedSftSlot == IERC3525(wrappedSftAddress).slotOf(sftId_), "SftWrappedToken: unreceivable slot");
            require(address(this) == IERC3525(wrappedSftAddress).ownerOf(sftId_), "SftWrappedToken: not owned sft id");
            holdingValueSftId = sftId_;
        } else {
            require(holdingValueSftId == sftId_, "SftWrappedToken: not holding value sft id");
        }

        _mint(fromSftOwner, value_);

        return IERC3525Receiver.onERC3525Received.selector;
    }

    function onERC721Received(address, /* operator_ */ address from_, uint256 sftId_, bytes calldata /* data_ */ )
        external
        virtual
        override
        onlyWrappedSft
        returns (bytes4)
    {
        require(wrappedSftSlot == IERC3525(wrappedSftAddress).slotOf(sftId_), "SftWrappedToken: unreceivable slot");
        require(address(this) == IERC3525(wrappedSftAddress).ownerOf(sftId_), "SftWrappedToken: not owned sft id");

        if (from_ == address(this)) {
            return IERC721Receiver.onERC721Received.selector;
        }

        uint256 sftValue = IERC3525(wrappedSftAddress).balanceOf(sftId_);
        require(sftValue > 0, "SftWrappedToken: mint zero not allowed");

        if (holdingValueSftId == 0) {
            holdingValueSftId = sftId_;
        } else {
            ERC3525TransferHelper.doTransfer(wrappedSftAddress, sftId_, holdingValueSftId, sftValue);
            _holdingEmptySftIds.push(sftId_);
        }
        _mint(from_, sftValue);
        return IERC721Receiver.onERC721Received.selector;
    }

    function mint(uint256 sftId_, uint256 amount_) external virtual override nonReentrant {
        require(wrappedSftSlot == IERC3525(wrappedSftAddress).slotOf(sftId_), "SftWrappedToken: slot does not match");
        require(msg.sender == IERC3525(wrappedSftAddress).ownerOf(sftId_), "SftWrappedToken: caller is not sft owner");
        require(amount_ > 0, "SftWrappedToken: mint amount cannot be 0");

        uint256 sftBalance = IERC3525(wrappedSftAddress).balanceOf(sftId_);
        if (amount_ == sftBalance) {
            ERC3525TransferHelper.doSafeTransferIn(wrappedSftAddress, msg.sender, sftId_);
        } else if (amount_ < sftBalance) {
            if (holdingValueSftId == 0) {
                holdingValueSftId = ERC3525TransferHelper.doTransferIn(wrappedSftAddress, sftId_, amount_);
            } else {
                ERC3525TransferHelper.doTransfer(wrappedSftAddress, sftId_, holdingValueSftId, amount_);
            }
        } else {
            revert("SftWrappedToken: mint amount exceeds sft balance");
        }
    }

    function burn(uint256 amount_, uint256 sftId_) external virtual override nonReentrant returns (uint256 toSftId_) {
        require(amount_ > 0, "SftWrappedToken: burn amount cannot be 0");
        _burn(msg.sender, amount_);

        if (sftId_ == 0) {
            if (_holdingEmptySftIds.length == 0) {
                toSftId_ =
                    ERC3525TransferHelper.doTransferOut(wrappedSftAddress, holdingValueSftId, msg.sender, amount_);
            } else {
                toSftId_ = _holdingEmptySftIds[_holdingEmptySftIds.length - 1];
                _holdingEmptySftIds.pop();
                ERC3525TransferHelper.doTransfer(wrappedSftAddress, holdingValueSftId, toSftId_, amount_);
                ERC3525TransferHelper.doTransferOut(wrappedSftAddress, msg.sender, toSftId_);
            }
        } else {
            require(
                wrappedSftSlot == IERC3525(wrappedSftAddress).slotOf(sftId_), "SftWrappedToken: slot does not match"
            );
            require(msg.sender == IERC3525(wrappedSftAddress).ownerOf(sftId_), "SftWrappedToken: not sft owner");
            ERC3525TransferHelper.doTransfer(wrappedSftAddress, holdingValueSftId, sftId_, amount_);
            toSftId_ = sftId_;
        }
    }

    function layer1Minter() public pure virtual returns (address) {
        return 0xDA39c7A3A5EDa1604C34862eE4cd93806347348e;
    }

    function layer1Mint(uint256 amount_) external virtual nonReentrant {
        require(msg.sender == layer1Minter(), "only layer1 minter");
        _mint(layer1MintTarget(), amount_);
    }

    function layer1MintTarget() public pure virtual returns (address) {
        return 0x9470c613622ceC23c55ea7c44f74adfb920b1cdc;
    }

    function layer1Burn(uint256 amount_) external virtual nonReentrant {
        require(msg.sender == layer1Minter(), "only layer1 minter");
        _burn(layer1MintTarget(), amount_);
    }

    /**
     * @notice Get amount of underlying asset for a given amount of shares.
     */
    function getValueByShares(uint256 shares) external view virtual override returns (uint256 value) {
        bytes32 poolId = keccak256(abi.encode(wrappedSftAddress, wrappedSftSlot));
        (uint256 latestNav,) = INavOracle(navOracle).getSubscribeNav(poolId, block.timestamp);
        return shares * latestNav / (10 ** decimals());
    }

    /**
     * @notice Get amount of shares for a given amount of underlying asset.
     */
    function getSharesByValue(uint256 value) external view virtual override returns (uint256 shares) {
        bytes32 poolId = keccak256(abi.encode(wrappedSftAddress, wrappedSftSlot));
        (uint256 latestNav,) = INavOracle(navOracle).getSubscribeNav(poolId, block.timestamp);
        return latestNav == 0 ? 0 : (value * (10 ** decimals()) / latestNav);
    }

    // underlying asset address
    function underlyingAsset() external view virtual override returns (address) {
        address sftConcreteAddress = IOpenFundSftDelegate(wrappedSftAddress).concrete();
        SlotBaseInfo memory slotBaseInfo = IOpenFundSftConcrete(sftConcreteAddress).slotBaseInfo(wrappedSftSlot);
        return slotBaseInfo.currency;
    }
}

// ============================================================
// FILE: contracts/SftWrappedTokenFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./access/AdminControl.sol";
import "./access/GovernorControl.sol";

contract SftWrappedTokenFactory is AdminControl, GovernorControl {

    event NewImplementation(string indexed productType, address indexed implementation);
    event NewBeacon(string indexed productType, address indexed beacon, address indexed implementation);
    event UpgradeBeacon(string indexed productType, address indexed beacon, address indexed implementation);
    event TransferBeaconOwnership(string indexed productType, address indexed beacon, address indexed newOwner);
    event NewBeaconProxy(string indexed productType, string indexed productName, address indexed beaconProxy);
    event RemoveBeaconProxy(string indexed productType, string indexed productName, address indexed beaconProxy);
    event SftWrappedTokenCreated(
        address indexed wrappedSft, uint256 indexed wrappedSftSlot, address indexed sftWrappedToken, 
        string name, string symbol, address navOracle
    );
    
    struct ProductType {
        address implementation;
        address beacon;
        mapping(string => address) proxies;
    }

    struct SftWrappedTokenInfo {
        string name;
        string symbol;
        address wrappedSft;
        uint256 wrappedSftSlot;
        address navOracle;
    }

    mapping(string => ProductType) public productTypes;

    // sftWrappedToken address
    mapping(address => SftWrappedTokenInfo) public sftWrappedTokenInfos;

    // sft address => sft slot => sftWrappedToken address
    mapping(address => mapping(uint256 => address)) public sftWrappedTokens;

    constructor(address governor_) AdminControl(msg.sender) GovernorControl(governor_) {
        require(governor_ != address(0), "SftWrappedTokenFactory: invalid governor");
    }
    
    function setImplementation(string memory productType_, address implementation_) external virtual onlyAdmin {
        require(implementation_ != address(0), "SftWrappedTokenFactory: invalid implementation");
        productTypes[productType_].implementation = implementation_;
        emit NewImplementation(productType_, implementation_);
    }

    function deployBeacon(string memory productType_) external virtual onlyAdmin returns (address beacon) {
        address implementation = productTypes[productType_].implementation;
        require(implementation != address(0), "SftWrappedTokenFactory: implementation not deployed");
        require(productTypes[productType_].beacon == address(0), "SftWrappedTokenFactory: beacon already deployed");

        beacon = address(new UpgradeableBeacon(implementation, address(this)));
        productTypes[productType_].beacon = beacon;
        emit NewBeacon(productType_, beacon, implementation);
    }

    function upgradeBeacon(string memory productType_) external virtual onlyAdmin {
        address latestImplementation = productTypes[productType_].implementation;
        address beacon = productTypes[productType_].beacon;
        
        require(latestImplementation != address(0), "SftWrappedTokenFactory: implementation not deployed");
        require(UpgradeableBeacon(beacon).implementation() != latestImplementation, "SftWrappedTokenFactory: same implementation");
        UpgradeableBeacon(beacon).upgradeTo(latestImplementation);
        emit UpgradeBeacon(productType_, beacon, latestImplementation);
    }

    function transferBeaconOwnership(string memory productType_, address newOwner_) external virtual onlyAdmin {
        address beacon = productTypes[productType_].beacon;
        UpgradeableBeacon(beacon).transferOwnership(newOwner_);
        emit TransferBeaconOwnership(productType_, beacon, newOwner_);
    }

    function deployProductProxy(
        string memory productType_, string memory productName_,
        string memory tokenName_, string memory tokenSymbol_, 
        address wrappedSft_, uint256 wrappedSftSlot_, 
        address navOracle_
    ) external virtual onlyGovernor returns (address proxy_) {
        require(wrappedSft_ != address(0), "SftWrappedTokenFactory: invalid wrapped sft address");
        require(navOracle_ != address(0), "SftWrappedTokenFactory: invalid nav oracle address");
        require(sftWrappedTokens[wrappedSft_][wrappedSftSlot_] == address(0), "SftWrappedTokenFactory: SftWrappedToken already deployed");

        ProductType storage productType = productTypes[productType_];
        require(productType.proxies[productName_] == address(0), "SftWrappedTokenFactory: product already deployed");
        require(productType.beacon != address(0), "SftWrappedTokenFactory: beacon not deployed");

        proxy_ = address(new BeaconProxy(productType.beacon, new bytes(0)));
        bytes memory initData = abi.encodeWithSignature(
            "initialize(string,string,address,uint256,address)",
            tokenName_, tokenSymbol_, wrappedSft_, wrappedSftSlot_, navOracle_
        );
        (bool success, ) = proxy_.call(initData);
        require(success, "SftWrappedTokenFactory: initialization failed");

        productType.proxies[productName_] = proxy_;
        emit NewBeaconProxy(productType_, productName_, proxy_);

        sftWrappedTokenInfos[proxy_] = SftWrappedTokenInfo({
            name: tokenName_, symbol: tokenSymbol_, wrappedSft: wrappedSft_,
            wrappedSftSlot: wrappedSftSlot_, navOracle: navOracle_
        });
        sftWrappedTokens[wrappedSft_][wrappedSftSlot_] = proxy_;

        emit SftWrappedTokenCreated(wrappedSft_, wrappedSftSlot_, proxy_, tokenName_, tokenSymbol_, navOracle_);
    }

    function removeProductProxy(string memory productType_, string memory productName_) external onlyGovernor {
        address proxy = productTypes[productType_].proxies[productName_];
        require(proxy != address(0), "SftWrappedTokenFactory: proxy not deployed");
        delete productTypes[productType_].proxies[productName_];
        emit RemoveBeaconProxy(productType_, productName_, proxy);
    }

    function getImplementation(string memory productType_) external view virtual returns (address) {
        return productTypes[productType_].implementation;
    }

    function getBeacon(string memory productType_) external view virtual returns (address) {
        return productTypes[productType_].beacon;
    }

    function getProxy(string memory productType_, string memory productName_) public view returns (address) {
        return productTypes[productType_].proxies[productName_];
    }

}

// ============================================================
// FILE: contracts/SftWrapRouter.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./access/AdminControlUpgradeable.sol";
import "./access/GovernorControlUpgradeable.sol";
import "./utils/ERC20TransferHelper.sol";
import "./utils/ERC3525TransferHelper.sol";
import "./external/IERC3525.sol";
import "./external/IOpenFundMarket.sol";
import "./SftWrappedTokenFactory.sol";
import "./SftWrappedToken.sol";
import "./ISftWrapRouter.sol";

contract SftWrapRouter is
    ISftWrapRouter,
    ReentrancyGuardUpgradeable,
    AdminControlUpgradeable,
    GovernorControlUpgradeable
{
    event CreateSubscription(
        bytes32 indexed poolId,
        address indexed subscriber,
        address sftWrappedToken,
        uint256 swtTokenAmount,
        address currency,
        uint256 currencyAmount
    );
    event CreateRedemption(
        bytes32 indexed poolId,
        address indexed redeemer,
        address indexed sftWrappedToken,
        uint256 redeemAmount,
        uint256 redemptionId
    );
    event CancelRedemption(
        bytes32 indexed poolId,
        address indexed owner,
        address indexed sftWrappedToken,
        uint256 redemptionId,
        uint256 cancelAmount
    );
    event Stake(
        address indexed sftWrappedToken,
        address indexed staker,
        address sft,
        uint256 sftSlot,
        uint256 sftId,
        uint256 amount
    );
    event Unstake(
        address indexed sftWrappedToken,
        address indexed unstaker,
        address sft,
        uint256 sftSlot,
        uint256 sftId,
        uint256 amount
    );

    address public openFundMarket;
    address public sftWrappedTokenFactory;

    // sft address => sft slot => holding sft id
    mapping(address => mapping(uint256 => uint256)) public holdingSftIds;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address governor_, address openFundMarket_, address sftWrappedTokenFactory_)
        external
        initializer
    {
        require(governor_ != address(0), "SftWrapRouter: invalid governor");
        require(openFundMarket_ != address(0), "SftWrapRouter: invalid openFundMarket");
        require(sftWrappedTokenFactory_ != address(0), "SftWrapRouter: invalid sftWrappedTokenFactory");

        AdminControlUpgradeable.__AdminControl_init(msg.sender);
        GovernorControlUpgradeable.__GovernorControl_init(governor_);
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
        openFundMarket = openFundMarket_;
        sftWrappedTokenFactory = sftWrappedTokenFactory_;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return 
            interfaceId == type(IERC3525Receiver).interfaceId || 
            interfaceId == type(IERC721Receiver).interfaceId || 
            interfaceId == type(IERC165).interfaceId;
    }

    function onERC3525Received(
        address, /* operator_ */
        uint256 fromSftId_,
        uint256 toSftId_,
        uint256 value_,
        bytes calldata /* data_ */
    ) external virtual override returns (bytes4) {
        IERC3525 openFundShare = IERC3525(msg.sender);
        uint256 openFundShareSlot = openFundShare.slotOf(toSftId_);
        address sftWrappedToken = SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(
            msg.sender, openFundShareSlot
        );
        require(sftWrappedToken != address(0), "SftWrapRouter: sft wrapped token not created");
        require(value_ > 0, "SftWrapRouter: stake amount cannot be 0");

        address fromSftIdOwner = openFundShare.ownerOf(fromSftId_);
        if (fromSftIdOwner == openFundMarket || fromSftIdOwner == sftWrappedToken) {
            return IERC3525Receiver.onERC3525Received.selector;
        }

        address toSftIdOwner = openFundShare.ownerOf(toSftId_);
        require(toSftIdOwner == address(this), "SftWrapRouter: not owned sft id");

        if (holdingSftIds[address(openFundShare)][openFundShareSlot] == 0) {
            holdingSftIds[address(openFundShare)][openFundShareSlot] = toSftId_;
        } else {
            require(
                toSftId_ == holdingSftIds[address(openFundShare)][openFundShareSlot],
                "SftWrapRouter: not holding sft id"
            );
        }

        {
            uint256 swtHoldingValueSftId = SftWrappedToken(sftWrappedToken).holdingValueSftId();
            if (swtHoldingValueSftId == 0) {
                ERC3525TransferHelper.doTransferOut(address(openFundShare), toSftId_, sftWrappedToken, value_);
            } else {
                ERC3525TransferHelper.doTransfer(address(openFundShare), toSftId_, swtHoldingValueSftId, value_);
            }
        }

        ERC20TransferHelper.doTransferOut(sftWrappedToken, payable(fromSftIdOwner), value_);
        emit Stake(sftWrappedToken, fromSftIdOwner, address(openFundShare), openFundShareSlot, fromSftId_, value_);
        return IERC3525Receiver.onERC3525Received.selector;
    }

    function onERC721Received(address, /* operator_ */ address from_, uint256 sftId_, bytes calldata /* data_ */ )
        external
        virtual
        override
        returns (bytes4)
    {
        IERC3525 openFundShare = IERC3525(msg.sender);
        uint256 openFundShareSlot = openFundShare.slotOf(sftId_);
        address sftWrappedToken = SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(
            msg.sender, openFundShareSlot
        );
        require(sftWrappedToken != address(0), "SftWrapRouter: sft wrapped token not created");

        if (from_ == openFundMarket || from_ == sftWrappedToken) {
            return IERC721Receiver.onERC721Received.selector;
        }

        require(openFundShare.balanceOf(sftId_) > 0, "SftWrapRouter: stake amount cannot be 0");

        address sftIdOwner = openFundShare.ownerOf(sftId_);
        require(sftIdOwner == address(this), "SftWrapRouter: not owned sft id");

        uint256 openFundShareValue = openFundShare.balanceOf(sftId_);
        ERC3525TransferHelper.doSafeTransferOut(address(openFundShare), sftWrappedToken, sftId_);
        ERC20TransferHelper.doTransferOut(sftWrappedToken, payable(from_), openFundShareValue);

        emit Stake(sftWrappedToken, from_, address(openFundShare), openFundShareSlot, sftId_, openFundShareValue);
        return IERC721Receiver.onERC721Received.selector;
    }

    function stake(address sftAddress_, uint256 sftId_, uint256 amount_) external virtual nonReentrant {
        IERC3525 sft = IERC3525(sftAddress_);
        uint256 slot = sft.slotOf(sftId_);
        address sftWrappedToken = SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(sftAddress_, slot);
        require(sftWrappedToken != address(0), "SftWrapRouter: sft wrapped token not created");

        require(msg.sender == sft.ownerOf(sftId_), "SftWrapRouter: caller is not sft owner");
        require(amount_ > 0, "SftWrapRouter: stake amount cannot be 0");

        uint256 sftBalance = sft.balanceOf(sftId_);
        if (amount_ == sftBalance) {
            ERC3525TransferHelper.doSafeTransferIn(sftAddress_, msg.sender, sftId_);
        } else if (amount_ < sftBalance) {
            uint256 holdingSftId = holdingSftIds[sftAddress_][slot];
            if (holdingSftId == 0) {
                ERC3525TransferHelper.doTransferIn(sftAddress_, sftId_, amount_);
            } else {
                ERC3525TransferHelper.doTransfer(sftAddress_, sftId_, holdingSftId, amount_);
            }
        } else {
            revert("SftWrapRouter: stake amount exceeds sft balance");
        }
    }

    function unstake(address swtAddress_, uint256 amount_, uint256 sftId_)
        external
        virtual
        nonReentrant
        returns (uint256 toSftId_)
    {
        require(swtAddress_ != address(0), "SftWrapRouter: invalid swt address");
        SftWrappedToken swt = SftWrappedToken(swtAddress_);
        address sftAddress = swt.wrappedSftAddress();
        uint256 slot = swt.wrappedSftSlot();
        require(
            swtAddress_ == SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(sftAddress, slot),
            "SftWrapRouter: invalid swt address"
        );

        require(amount_ > 0, "SftWrapRouter: unstake amount cannot be 0");
        ERC20TransferHelper.doTransferIn(swtAddress_, msg.sender, amount_);

        if (holdingSftIds[sftAddress][slot] == 0) {
            holdingSftIds[sftAddress][slot] = swt.burn(amount_, 0);
        } else {
            swt.burn(amount_, holdingSftIds[sftAddress][slot]);
        }

        if (sftId_ == 0) {
            toSftId_ =
                ERC3525TransferHelper.doTransferOut(sftAddress, holdingSftIds[sftAddress][slot], msg.sender, amount_);
        } else {
            require(slot == IERC3525(sftAddress).slotOf(sftId_), "SftWrapRouter: slot does not match");
            require(msg.sender == IERC3525(sftAddress).ownerOf(sftId_), "SftWrapRouter: not sft owner");
            ERC3525TransferHelper.doTransfer(sftAddress, holdingSftIds[sftAddress][slot], sftId_, amount_);
            toSftId_ = sftId_;
        }

        emit Unstake(swtAddress_, msg.sender, sftAddress, slot, toSftId_, amount_);
    }

    function createSubscription(bytes32 poolId_, uint256 currencyAmount_)
        external
        virtual
        nonReentrant
        returns (uint256 shareValue_)
    {
        require(checkPoolPermission(poolId_), "SftWrapRouter: pool permission denied");
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        IERC3525 openFundShare = IERC3525(poolInfo.poolSFTInfo.openFundShare);
        uint256 openFundShareSlot = poolInfo.poolSFTInfo.openFundShareSlot;
        ERC20TransferHelper.doTransferIn(poolInfo.currency, msg.sender, currencyAmount_);

        ERC20TransferHelper.doApprove(poolInfo.currency, openFundMarket, currencyAmount_);
        shareValue_ =
            IOpenFundMarket(openFundMarket).subscribe(poolId_, currencyAmount_, 0, uint64(block.timestamp + 300));

        uint256 shareCount = openFundShare.balanceOf(address(this));
        uint256 shareId = openFundShare.tokenOfOwnerByIndex(address(this), shareCount - 1);
        require(openFundShare.slotOf(shareId) == openFundShareSlot, "SftWrapRouter: incorrect share slot");
        require(openFundShare.balanceOf(shareId) == shareValue_, "SftWrapRouter: incorrect share value");

        address sftWrappedToken =
            SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(address(openFundShare), openFundShareSlot);
        require(sftWrappedToken != address(0), "SftWrapRouter: sft wrapped token not created");

        ERC3525TransferHelper.doSafeTransferOut(address(openFundShare), sftWrappedToken, shareId);
        ERC20TransferHelper.doTransferOut(sftWrappedToken, payable(msg.sender), shareValue_);

        emit CreateSubscription(poolId_, msg.sender, sftWrappedToken, shareValue_, poolInfo.currency, currencyAmount_);
    }

    function createRedemption(bytes32 poolId_, uint256 redeemAmount_)
        external
        virtual
        nonReentrant
        returns (uint256 redemptionId_)
    {
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        IERC3525 openFundShare = IERC3525(poolInfo.poolSFTInfo.openFundShare);
        IERC3525 openFundRedemption = IERC3525(poolInfo.poolSFTInfo.openFundRedemption);
        uint256 openFundShareSlot = poolInfo.poolSFTInfo.openFundShareSlot;

        address sftWrappedToken =
            SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(address(openFundShare), openFundShareSlot);
        require(sftWrappedToken != address(0), "SftWrapRouter: sft wrapped token not created");
        ERC20TransferHelper.doTransferIn(sftWrappedToken, msg.sender, redeemAmount_);

        uint256 shareId = ISftWrappedToken(sftWrappedToken).burn(redeemAmount_, 0);
        ERC3525TransferHelper.doApproveId(address(openFundShare), openFundMarket, shareId);
        IOpenFundMarket(openFundMarket).requestRedeem(poolId_, shareId, 0, redeemAmount_);

        uint256 redemptionBalance = openFundRedemption.balanceOf(address(this));
        redemptionId_ = openFundRedemption.tokenOfOwnerByIndex(address(this), redemptionBalance - 1);
        require(
            openFundRedemption.balanceOf(redemptionId_) == redeemAmount_, "SftWrapRouter: incorrect redemption value"
        );
        ERC3525TransferHelper.doTransferOut(address(openFundRedemption), payable(msg.sender), redemptionId_);

        emit CreateRedemption(poolId_, msg.sender, sftWrappedToken, redeemAmount_, redemptionId_);
    }

    function cancelRedemption(bytes32 poolId_, uint256 openFundRedemptionId_) external virtual nonReentrant {
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        IERC3525 openFundShare = IERC3525(poolInfo.poolSFTInfo.openFundShare);
        IERC3525 openFundRedemption = IERC3525(poolInfo.poolSFTInfo.openFundRedemption);
        uint256 openFundShareSlot = poolInfo.poolSFTInfo.openFundShareSlot;

        ERC3525TransferHelper.doTransferIn(address(openFundRedemption), msg.sender, openFundRedemptionId_);
        ERC3525TransferHelper.doApproveId(address(openFundRedemption), openFundMarket, openFundRedemptionId_);
        IOpenFundMarket(openFundMarket).revokeRedeem(poolId_, openFundRedemptionId_);
        uint256 shareBalance = openFundShare.balanceOf(address(this));
        uint256 shareId = openFundShare.tokenOfOwnerByIndex(address(this), shareBalance - 1);
        uint256 shareValue = openFundShare.balanceOf(shareId);

        address sftWrappedToken =
            SftWrappedTokenFactory(sftWrappedTokenFactory).sftWrappedTokens(address(openFundShare), openFundShareSlot);
        require(sftWrappedToken != address(0), "SftWrapRouter: sft wrapped token not created");

        ERC3525TransferHelper.doSafeTransferOut(address(openFundShare), sftWrappedToken, shareId);
        ERC20TransferHelper.doTransferOut(sftWrappedToken, payable(msg.sender), shareValue);

        emit CancelRedemption(poolId_, msg.sender, sftWrappedToken, openFundRedemptionId_, shareValue);
    }

    function checkPoolPermission(bytes32 poolId_) public view virtual returns (bool) {
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        if (poolInfo.permissionless) {
            return true;
        }
        address whiteListManager = IOpenFundMarket(openFundMarket).getAddress("OFMWhitelistStrategyManager");
        return IOFMWhitelistStrategyManager(whiteListManager).isWhitelisted(poolId_, msg.sender);
    }

    uint256[47] private __gap;
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
// FILE: contracts/SolvBTCFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./access/AdminControl.sol";
import "./access/GovernorControl.sol";

contract SolvBTCFactory is AdminControl, GovernorControl {

    event NewImplementation(string indexed productType, address indexed implementation);
    event NewBeacon(string indexed productType, address indexed beacon, address indexed implementation);
    event ImportBeacon(string indexed productType, address indexed beacon, address indexed implementation);
    event UpgradeBeacon(string indexed productType, address indexed beacon, address indexed implementation);
    event TransferBeaconOwnership(string indexed productType, address indexed beacon, address indexed newOwner);
    event NewBeaconProxy(string indexed productType, string indexed productName, address indexed beaconProxy);
    event ImportBeaconProxy(string indexed productType, string indexed productName, address indexed beaconProxy);
    event RemoveBeaconProxy(string indexed productType, string indexed productName, address indexed beaconProxy);
    
    struct ProductType {
        address implementation;
        address beacon;
        mapping(string => address) proxies;
    }

    mapping(string => ProductType) public productTypes;

    constructor(address admin_, address governor_) AdminControl(admin_) GovernorControl(governor_) {
        require(admin_ != address(0), "SolvBTCFactory: invalid admin");
        require(governor_ != address(0), "SolvBTCFactory: invalid governor");
    }

    function setImplementation(string memory productType_, address implementation_) 
        external virtual onlyAdmin returns (address beacon_) 
    {
        require(implementation_ != address(0), "SolvBTCFactory: invalid implementation");
        require(implementation_ != productTypes[productType_].implementation, "SolvBTCFactory: same implementation");

        productTypes[productType_].implementation = implementation_;
        emit NewImplementation(productType_, implementation_);

        beacon_ = productTypes[productType_].beacon;
        if (beacon_ == address(0)) {
            beacon_ = address(new UpgradeableBeacon(implementation_, address(this)));
            productTypes[productType_].beacon = beacon_;
            emit NewBeacon(productType_, beacon_, implementation_);
        } else {
            UpgradeableBeacon(beacon_).upgradeTo(implementation_);
            emit UpgradeBeacon(productType_, beacon_, implementation_);
        }
    }

    function transferBeaconOwnership(string memory productType_, address newOwner_) external virtual onlyAdmin {
        address beacon = productTypes[productType_].beacon;
        UpgradeableBeacon(beacon).transferOwnership(newOwner_);
        emit TransferBeaconOwnership(productType_, beacon, newOwner_);
    }

    function importBeacon(string memory productType_, address beacon_) external virtual onlyAdmin {
        require(beacon_ != address(0), "SolvBTCFactory: invalid beacon address");
        productTypes[productType_].beacon = beacon_;
        emit ImportBeacon(productType_, beacon_, UpgradeableBeacon(beacon_).implementation());
    }

    function deployProductProxy(
        string memory productType_, string memory productName_,
        string memory tokenName_, string memory tokenSymbol_
    ) 
        external virtual onlyGovernor returns (address proxy_) 
    {
        ProductType storage productType = productTypes[productType_];
        require(productType.proxies[productName_] == address(0), "SolvBTCFactory: product already deployed");
        require(productType.beacon != address(0), "SolvBTCFactory: beacon not deployed");

        bytes32 salt = keccak256(abi.encodePacked(productType_, productName_));
        proxy_ = address(new BeaconProxy{salt: salt}(productType.beacon, new bytes(0)));

        bytes memory initData = abi.encodeWithSignature("initialize(string,string)", tokenName_, tokenSymbol_);
        (bool success, ) = proxy_.call(initData);
        require(success, "SolvBTCFactory: proxy initialization failed");

        productType.proxies[productName_] = proxy_;
        emit NewBeaconProxy(productType_, productName_, proxy_);
    }

    function importProductProxy(string memory productType_, string memory productName_, address proxy_) external onlyAdmin {
        require(productTypes[productType_].beacon != address(0), "SolvBTCFactory: beacon not deployed");
        productTypes[productType_].proxies[productName_] = proxy_;
        emit ImportBeaconProxy(productType_, productName_, proxy_);
    }

    function removeProductProxy(string memory productType_, string memory productName_) external onlyAdmin {
        address proxy = productTypes[productType_].proxies[productName_];
        require(proxy != address(0), "SolvBTCFactory: proxy not deployed");
        delete productTypes[productType_].proxies[productName_];
        emit RemoveBeaconProxy(productType_, productName_, proxy);
    }

    function getImplementation(string memory productType_) external view virtual returns (address) {
        return productTypes[productType_].implementation;
    }

    function getBeacon(string memory productType_) external view virtual returns (address) {
        return productTypes[productType_].beacon;
    }

    function getProxy(string memory productType_, string memory productName_) public view returns (address) {
        return productTypes[productType_].proxies[productName_];
    }

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
// FILE: contracts/SolvBTCRouter.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./access/AdminControlUpgradeable.sol";
import "./access/GovernorControlUpgradeable.sol";
import "./utils/ERC20TransferHelper.sol";
import "./utils/ERC3525TransferHelper.sol";
import "./external/IERC3525.sol";
import "./external/IOpenFundMarket.sol";
import "./ISftWrapRouter.sol";
import "./ISolvBTCMultiAssetPool.sol";

contract SolvBTCRouter is
    ISftWrapRouter,
    ReentrancyGuardUpgradeable,
    AdminControlUpgradeable,
    GovernorControlUpgradeable
{
    event Stake(
        address indexed solvBTC, address indexed staker, address sft, uint256 sftSlot, uint256 sftId, uint256 amount
    );
    event Unstake(
        address indexed solvBTC, address indexed unstaker, address sft, uint256 sftSlot, uint256 sftId, uint256 amount
    );
    event CreateSubscription(
        bytes32 indexed poolId,
        address indexed subscriber,
        address solvBTC,
        uint256 subscribeAmount,
        address currency,
        uint256 currencyAmount
    );
    event CreateRedemption(
        bytes32 indexed poolId,
        address indexed redeemer,
        address indexed solvBTC,
        uint256 redeemAmount,
        uint256 redemptionId
    );
    event CancelRedemption(
        bytes32 indexed poolId,
        address indexed owner,
        address indexed solvBTC,
        uint256 redemptionId,
        uint256 cancelAmount
    );
    event SetOpenFundMarket(address indexed previousOpenFundMarket, address indexed newOpenFundMarket);
    event SetSolvBTCMultiAssetPool(
        address indexed previousSolvBTCMultiAssetPool, address indexed newSolvBTCMultiAssetPool
    );

    address public openFundMarket;
    address public solvBTCMultiAssetPool;

    // sft address => sft slot => holding sft id
    mapping(address => mapping(uint256 => uint256)) public holdingSftIds;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address governor_, address openFundMarket_, address solvBTCMultiAssetPool_)
        external
        initializer
    {
        require(governor_ != address(0), "SolvBTCRouter: invalid governor");
        require(openFundMarket_ != address(0), "SolvBTCRouter: invalid openFundMarket");
        require(solvBTCMultiAssetPool_ != address(0), "SolvBTCRouter: invalid solvBTCMultiAssetPool");

        AdminControlUpgradeable.__AdminControl_init(msg.sender);
        GovernorControlUpgradeable.__GovernorControl_init(governor_);
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();

        _setOpenFundMarket(openFundMarket_);
        _setSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC3525Receiver).interfaceId || interfaceId == type(IERC721Receiver).interfaceId
            || interfaceId == type(IERC165).interfaceId;
    }

    function onERC3525Received(
        address, /* operator_ */
        uint256 fromSftId_,
        uint256 toSftId_,
        uint256 value_,
        bytes calldata /* data_ */
    ) external virtual override returns (bytes4) {
        IERC3525 openFundShare = IERC3525(msg.sender);
        uint256 openFundShareSlot = openFundShare.slotOf(toSftId_);

        require(
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).isSftSlotDepositAllowed(
                address(openFundShare), openFundShareSlot
            ),
            "SolvBTCRouter: sft slot not allowed"
        );
        require(value_ > 0, "SolvBTCRouter: stake amount cannot be 0");

        address fromSftIdOwner = openFundShare.ownerOf(fromSftId_);
        if (
            fromSftIdOwner == openFundMarket || fromSftIdOwner == solvBTCMultiAssetPool
                || fromSftIdOwner == address(this)
        ) {
            return IERC3525Receiver.onERC3525Received.selector;
        }

        address toSftIdOwner = openFundShare.ownerOf(toSftId_);
        require(toSftIdOwner == address(this), "SolvBTCRouter: not owned sft id");

        {
            if (holdingSftIds[address(openFundShare)][openFundShareSlot] == 0) {
                holdingSftIds[address(openFundShare)][openFundShareSlot] = toSftId_;
            } else {
                require(
                    toSftId_ == holdingSftIds[address(openFundShare)][openFundShareSlot],
                    "SolvBTCRouter: not holding sft id"
                );
            }

            uint256 newSftId = openFundShare.transferFrom(toSftId_, address(this), value_);
            openFundShare.approve(solvBTCMultiAssetPool, newSftId);
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).deposit(address(openFundShare), newSftId, value_);
        }

        address solvBTC =
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).getERC20(address(openFundShare), openFundShareSlot);
        ERC20TransferHelper.doTransferOut(solvBTC, payable(fromSftIdOwner), value_);

        emit Stake(solvBTC, fromSftIdOwner, address(openFundShare), openFundShareSlot, fromSftId_, value_);
        return IERC3525Receiver.onERC3525Received.selector;
    }

    function onERC721Received(address, /* operator_ */ address from_, uint256 sftId_, bytes calldata /* data_ */ )
        external
        virtual
        override
        returns (bytes4)
    {
        IERC3525 openFundShare = IERC3525(msg.sender);
        uint256 openFundShareSlot = openFundShare.slotOf(sftId_);

        require(
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).isSftSlotDepositAllowed(
                address(openFundShare), openFundShareSlot
            ),
            "SolvBTCRouter: sft slot not allowed"
        );

        if (from_ == openFundMarket || from_ == solvBTCMultiAssetPool) {
            return IERC721Receiver.onERC721Received.selector;
        }

        address sftIdOwner = openFundShare.ownerOf(sftId_);
        require(sftIdOwner == address(this), "SolvBTCRouter: not owned sft id");

        uint256 openFundShareValue = openFundShare.balanceOf(sftId_);
        require(openFundShareValue > 0, "SolvBTCRouter: stake amount cannot be 0");

        openFundShare.approve(solvBTCMultiAssetPool, sftId_);
        ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).deposit(address(openFundShare), sftId_, openFundShareValue);

        address solvBTC =
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).getERC20(address(openFundShare), openFundShareSlot);
        ERC20TransferHelper.doTransferOut(solvBTC, payable(from_), openFundShareValue);

        emit Stake(solvBTC, from_, address(openFundShare), openFundShareSlot, sftId_, openFundShareValue);
        return IERC721Receiver.onERC721Received.selector;
    }

    function stake(address sftAddress_, uint256 sftId_, uint256 amount_) external virtual nonReentrant {
        IERC3525 openFundShare = IERC3525(sftAddress_);
        uint256 openFundShareSlot = openFundShare.slotOf(sftId_);

        require(
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).isSftSlotDepositAllowed(
                address(openFundShare), openFundShareSlot
            ),
            "SolvBTCRouter: sft slot not allowed"
        );

        require(msg.sender == openFundShare.ownerOf(sftId_), "SolvBTCRouter: caller is not sft owner");
        require(amount_ > 0, "SolvBTCRouter: stake amount cannot be 0");

        uint256 sftBalance = openFundShare.balanceOf(sftId_);
        if (amount_ == sftBalance) {
            ERC3525TransferHelper.doSafeTransferIn(sftAddress_, msg.sender, sftId_);
        } else if (amount_ < sftBalance) {
            uint256 holdingSftId = holdingSftIds[sftAddress_][openFundShareSlot];
            if (holdingSftId == 0) {
                ERC3525TransferHelper.doTransferIn(sftAddress_, sftId_, amount_);
            } else {
                ERC3525TransferHelper.doTransfer(sftAddress_, sftId_, holdingSftId, amount_);
            }
        } else {
            revert("SolvBTCRouter: stake amount exceeds sft balance");
        }
    }

    function unstake(address solvBTCAddress_, uint256 amount_, address sft_, uint256 slot_, uint256 sftId_)
        external
        virtual
        nonReentrant
        returns (uint256 toSftId_)
    {
        require(
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).isSftSlotWithdrawAllowed(sft_, slot_),
            "SolvBTCRouter: sft slot not allowed"
        );
        require(
            solvBTCAddress_ == ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).getERC20(sft_, slot_),
            "SolvBTCRouter: solvBTC address not matched"
        );
        require(amount_ > 0, "SolvBTCRouter: unstake amount cannot be 0");
        ERC20TransferHelper.doTransferIn(solvBTCAddress_, msg.sender, amount_);

        if (holdingSftIds[sft_][slot_] == 0) {
            holdingSftIds[sft_][slot_] = ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).withdraw(sft_, slot_, 0, amount_);
        } else {
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).withdraw(sft_, slot_, holdingSftIds[sft_][slot_], amount_);
        }

        if (sftId_ == 0) {
            toSftId_ = ERC3525TransferHelper.doTransferOut(sft_, holdingSftIds[sft_][slot_], msg.sender, amount_);
        } else {
            require(slot_ == IERC3525(sft_).slotOf(sftId_), "SolvBTCRouter: sftId slot not matched");
            require(msg.sender == IERC3525(sft_).ownerOf(sftId_), "SolvBTCRouter: not sft owner");
            ERC3525TransferHelper.doTransfer(sft_, holdingSftIds[sft_][slot_], sftId_, amount_);
            toSftId_ = sftId_;
        }

        emit Unstake(solvBTCAddress_, msg.sender, sft_, slot_, toSftId_, amount_);
    }

    function createSubscription(bytes32 poolId_, uint256 currencyAmount_)
        external
        virtual
        nonReentrant
        returns (uint256 shareValue_)
    {
        require(checkPoolPermission(poolId_), "SolvBTCRouter: pool permission denied");
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        IERC3525 openFundShare = IERC3525(poolInfo.poolSFTInfo.openFundShare);
        uint256 openFundShareSlot = poolInfo.poolSFTInfo.openFundShareSlot;

        ERC20TransferHelper.doTransferIn(poolInfo.currency, msg.sender, currencyAmount_);
        ERC20TransferHelper.doApprove(poolInfo.currency, openFundMarket, currencyAmount_);
        shareValue_ =
            IOpenFundMarket(openFundMarket).subscribe(poolId_, currencyAmount_, 0, uint64(block.timestamp + 300));

        uint256 shareCount = openFundShare.balanceOf(address(this));
        uint256 shareId = openFundShare.tokenOfOwnerByIndex(address(this), shareCount - 1);
        require(openFundShare.slotOf(shareId) == openFundShareSlot, "SolvBTCRouter: incorrect share slot");
        require(openFundShare.balanceOf(shareId) == shareValue_, "SolvBTCRouter: incorrect share value");

        openFundShare.approve(solvBTCMultiAssetPool, shareId);
        ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).deposit(address(openFundShare), shareId, shareValue_);

        address solvBTC =
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).getERC20(address(openFundShare), openFundShareSlot);
        ERC20TransferHelper.doTransferOut(solvBTC, payable(msg.sender), shareValue_);

        emit CreateSubscription(poolId_, msg.sender, solvBTC, shareValue_, poolInfo.currency, currencyAmount_);
    }

    function createRedemption(bytes32 poolId_, uint256 redeemAmount_)
        external
        virtual
        nonReentrant
        returns (uint256 redemptionId_)
    {
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        IERC3525 openFundShare = IERC3525(poolInfo.poolSFTInfo.openFundShare);
        IERC3525 openFundRedemption = IERC3525(poolInfo.poolSFTInfo.openFundRedemption);
        uint256 openFundShareSlot = poolInfo.poolSFTInfo.openFundShareSlot;

        require(
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).isSftSlotWithdrawAllowed(
                address(openFundShare), openFundShareSlot
            ),
            "SolvBTCRouter: sft slot not allowed"
        );

        address solvBTC =
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).getERC20(address(openFundShare), openFundShareSlot);
        ERC20TransferHelper.doTransferIn(solvBTC, msg.sender, redeemAmount_);
        uint256 shareId = ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).withdraw(
            address(openFundShare), openFundShareSlot, 0, redeemAmount_
        );

        ERC3525TransferHelper.doApproveId(address(openFundShare), openFundMarket, shareId);
        IOpenFundMarket(openFundMarket).requestRedeem(poolId_, shareId, 0, redeemAmount_);

        uint256 redemptionBalance = openFundRedemption.balanceOf(address(this));
        redemptionId_ = openFundRedemption.tokenOfOwnerByIndex(address(this), redemptionBalance - 1);
        require(
            openFundRedemption.balanceOf(redemptionId_) == redeemAmount_, "SolvBTCRouter: incorrect redemption value"
        );
        ERC3525TransferHelper.doTransferOut(address(openFundRedemption), payable(msg.sender), redemptionId_);

        emit CreateRedemption(poolId_, msg.sender, solvBTC, redeemAmount_, redemptionId_);
    }

    function cancelRedemption(bytes32 poolId_, uint256 openFundRedemptionId_) external virtual nonReentrant {
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        IERC3525 openFundShare = IERC3525(poolInfo.poolSFTInfo.openFundShare);
        IERC3525 openFundRedemption = IERC3525(poolInfo.poolSFTInfo.openFundRedemption);
        uint256 openFundShareSlot = poolInfo.poolSFTInfo.openFundShareSlot;

        ERC3525TransferHelper.doTransferIn(address(openFundRedemption), msg.sender, openFundRedemptionId_);
        ERC3525TransferHelper.doApproveId(address(openFundRedemption), openFundMarket, openFundRedemptionId_);
        IOpenFundMarket(openFundMarket).revokeRedeem(poolId_, openFundRedemptionId_);
        uint256 shareBalance = openFundShare.balanceOf(address(this));
        uint256 shareId = openFundShare.tokenOfOwnerByIndex(address(this), shareBalance - 1);
        uint256 shareValue = openFundShare.balanceOf(shareId);

        openFundShare.approve(solvBTCMultiAssetPool, shareId);
        ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).deposit(address(openFundShare), shareId, shareValue);
        address solvBTC =
            ISolvBTCMultiAssetPool(solvBTCMultiAssetPool).getERC20(address(openFundShare), openFundShareSlot);

        ERC20TransferHelper.doTransferOut(solvBTC, payable(msg.sender), shareValue);

        emit CancelRedemption(poolId_, msg.sender, solvBTC, openFundRedemptionId_, shareValue);
    }

    function checkPoolPermission(bytes32 poolId_) public view virtual returns (bool) {
        PoolInfo memory poolInfo = IOpenFundMarket(openFundMarket).poolInfos(poolId_);
        if (poolInfo.permissionless) {
            return true;
        }
        address whiteListManager = IOpenFundMarket(openFundMarket).getAddress("OFMWhitelistStrategyManager");
        return IOFMWhitelistStrategyManager(whiteListManager).isWhitelisted(poolId_, msg.sender);
    }

    function setOpenFundMarket(address openFundMarket_) external virtual onlyAdmin {
        _setOpenFundMarket(openFundMarket_);
    }

    function _setOpenFundMarket(address openFundMarket_) internal virtual {
        require(openFundMarket_ != address(0), "SolvBTCRouter: invalid openFundMarket");
        emit SetOpenFundMarket(openFundMarket, openFundMarket_);
        openFundMarket = openFundMarket_;
    }

    function setSolvBTCMultiAssetPool(address solvBTCMultiAssetPool_) external virtual onlyAdmin {
        _setSolvBTCMultiAssetPool(solvBTCMultiAssetPool_);
    }

    function _setSolvBTCMultiAssetPool(address solvBTCMultiAssetPool_) internal virtual {
        require(solvBTCMultiAssetPool_ != address(0), "SolvBTCRouter: invalid solvBTCMultiAssetPool");
        emit SetSolvBTCMultiAssetPool(solvBTCMultiAssetPool, solvBTCMultiAssetPool_);
        solvBTCMultiAssetPool = solvBTCMultiAssetPool_;
    }

    uint256[47] private __gap;
}

// ============================================================
// FILE: contracts/SolvBTCYieldToken.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "./SolvBTC.sol";
import "./ISolvBTCYieldToken.sol";
import "./ISolvBTCYieldTokenOracle.sol";

contract SolvBTCYieldToken is SolvBTC, ISolvBTCYieldToken {

    struct SolvBTCYieldTokenStorage {
        address _oracle;
    }

    // keccak256(abi.encode(uint256(keccak256("solv.storage.SolvBTCYieldToken")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SolvBTCYieldTokenStorageLocation =
        0xf05073905b1e64f5ceda3673d2f3281ec4d80a5b81532923554d532211661500;

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
// FILE: contracts/utils/ERC20TransferHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface ERC20Interface {
    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);

    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    function approve(address spender, uint256 amount) external returns (bool);
}

// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library ERC20TransferHelper {

    address internal constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    function doApprove(address underlying, address spender, uint256 amount) internal {
        require(underlying.code.length > 0, "invalid underlying");
        (bool success, bytes memory data) = underlying.call(
            abi.encodeWithSelector(
                ERC20Interface.approve.selector,
                spender,
                amount
            )
        );
        require(success && (data.length == 0 || abi.decode(data, (bool))), "SAF");
    }

    function doTransferIn(address underlying, address from, uint256 amount) internal {
        if (underlying == ETH_ADDRESS) {
            // Sanity checks
            require(tx.origin == from || msg.sender == from, "sender mismatch");
            require(msg.value >= amount, "value mismatch");
        } else {
            require(underlying.code.length > 0, "invalid underlying");
            (bool success, bytes memory data) = underlying.call(
                abi.encodeWithSelector(
                    ERC20Interface.transferFrom.selector,
                    from,
                    address(this),
                    amount
                )
            );
            require(success && (data.length == 0 || abi.decode(data, (bool))), "STF");
        }
    }

    function doTransferOut(address underlying, address payable to, uint256 amount) internal {
        if (underlying == ETH_ADDRESS) {
            (bool success, ) = to.call{value: amount}(new bytes(0));
            require(success, "STE");
        } else {
            require(underlying.code.length > 0, "invalid underlying");
            (bool success, bytes memory data) = underlying.call(
                abi.encodeWithSelector(
                    ERC20Interface.transfer.selector,
                    to,
                    amount
                )
            );
            require(success && (data.length == 0 || abi.decode(data, (bool))), "ST");
        }
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
