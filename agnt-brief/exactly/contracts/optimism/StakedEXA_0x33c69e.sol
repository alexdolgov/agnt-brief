// ============================================================
// FILE: @openzeppelin/contracts-upgradeable-v4/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;

import "./IAccessControlUpgradeable.sol";
import "../utils/ContextUpgradeable.sol";
import "../utils/StringsUpgradeable.sol";
import "../utils/introspection/ERC165Upgradeable.sol";
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
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControlUpgradeable, ERC165Upgradeable {
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

    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
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
                        StringsUpgradeable.toHexString(account),
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
// FILE: @openzeppelin/contracts-upgradeable-v4/access/IAccessControlUpgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable-v4/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

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
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
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
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
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
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized != type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable-v4/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
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
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

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
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
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
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
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
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
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
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
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
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
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
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
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
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
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
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
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

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

pragma solidity ^0.8.0;
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

import "./IERC165Upgradeable.sol";
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
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/introspection/IERC165Upgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/math/MathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/math/SignedMathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMathUpgradeable {
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
// FILE: @openzeppelin/contracts-upgradeable-v4/utils/StringsUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/MathUpgradeable.sol";
import "./math/SignedMathUpgradeable.sol";

/**
 * @dev String operations.
 */
library StringsUpgradeable {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = MathUpgradeable.log10(value) + 1;
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
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMathUpgradeable.abs(value))));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, MathUpgradeable.log256(value) + 1);
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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/ERC20Permit.sol)

pragma solidity ^0.8.20;

import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {ERC20Upgradeable} from "../ERC20Upgradeable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EIP712Upgradeable} from "../../../utils/cryptography/EIP712Upgradeable.sol";
import {NoncesUpgradeable} from "../../../utils/NoncesUpgradeable.sol";
import {Initializable} from "../../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
abstract contract ERC20PermitUpgradeable is Initializable, ERC20Upgradeable, IERC20Permit, EIP712Upgradeable, NoncesUpgradeable {
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
     * It's a good idea to use the same `name` that is defined as the ERC20 token name.
     */
    function __ERC20Permit_init(string memory name) internal onlyInitializing {
        __EIP712_init_unchained(name, "1");
    }

    function __ERC20Permit_init_unchained(string memory) internal onlyInitializing {}

    /**
     * @inheritdoc IERC20Permit
     */
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

    /**
     * @inheritdoc IERC20Permit
     */
    function nonces(address owner) public view virtual override(IERC20Permit, NoncesUpgradeable) returns (uint256) {
        return super.nonces(owner);
    }

    /**
     * @inheritdoc IERC20Permit
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view virtual returns (bytes32) {
        return _domainSeparatorV4();
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/ERC4626.sol)

pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC20Upgradeable} from "../ERC20Upgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Initializable} from "../../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the ERC4626 "Tokenized Vault Standard" as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[EIP-4626].
 *
 * This extension allows the minting and burning of "shares" (represented using the ERC20 inheritance) in exchange for
 * underlying "assets" through standardized {deposit}, {mint}, {redeem} and {burn} workflows. This contract extends
 * the ERC20 standard. Any additional extensions included along it would affect the "shares" token represented by this
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
 * Since v4.9, this implementation uses virtual assets and shares to mitigate that risk. The `_decimalsOffset()`
 * corresponds to an offset in the decimal representation between the underlying asset's decimals and the vault
 * decimals. This offset also determines the rate of virtual shares to virtual assets in the vault, which itself
 * determines the initial exchange rate. While not fully preventing the attack, analysis shows that the default offset
 * (0) makes it non-profitable, as a result of the value being captured by the virtual shares (out of the attacker's
 * donation) matching the attacker's expected gains. With a larger offset, the attack becomes orders of magnitude more
 * expensive than it is profitable. More details about the underlying math can be found
 * xref:erc4626.adoc#inflation-attack[here].
 *
 * The drawback of this approach is that the virtual shares do capture (a very small) part of the value being accrued
 * to the vault. Also, if the vault experiences losses, the users try to exit the vault, the virtual shares and assets
 * will cause the first user to exit to experience reduced losses in detriment to the last users that will experience
 * bigger losses. Developers willing to revert back to the pre-v4.9 behavior just need to override the
 * `_convertToShares` and `_convertToAssets` functions.
 *
 * To learn more, check out our xref:ROOT:erc4626.adoc[ERC-4626 guide].
 * ====
 */
abstract contract ERC4626Upgradeable is Initializable, ERC20Upgradeable, IERC4626 {
    using Math for uint256;

    /// @custom:storage-location erc7201:openzeppelin.storage.ERC4626
    struct ERC4626Storage {
        IERC20 _asset;
        uint8 _underlyingDecimals;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC4626")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC4626StorageLocation = 0x0773e532dfede91f04b12a73d3d2acd361424f41f76b4fb79f090161e36b4e00;

    function _getERC4626Storage() private pure returns (ERC4626Storage storage $) {
        assembly {
            $.slot := ERC4626StorageLocation
        }
    }

    /**
     * @dev Attempted to deposit more assets than the max amount for `receiver`.
     */
    error ERC4626ExceededMaxDeposit(address receiver, uint256 assets, uint256 max);

    /**
     * @dev Attempted to mint more shares than the max amount for `receiver`.
     */
    error ERC4626ExceededMaxMint(address receiver, uint256 shares, uint256 max);

    /**
     * @dev Attempted to withdraw more assets than the max amount for `receiver`.
     */
    error ERC4626ExceededMaxWithdraw(address owner, uint256 assets, uint256 max);

    /**
     * @dev Attempted to redeem more shares than the max amount for `receiver`.
     */
    error ERC4626ExceededMaxRedeem(address owner, uint256 shares, uint256 max);

    /**
     * @dev Set the underlying asset contract. This must be an ERC20-compatible contract (ERC20 or ERC777).
     */
    function __ERC4626_init(IERC20 asset_) internal onlyInitializing {
        __ERC4626_init_unchained(asset_);
    }

    function __ERC4626_init_unchained(IERC20 asset_) internal onlyInitializing {
        ERC4626Storage storage $ = _getERC4626Storage();
        (bool success, uint8 assetDecimals) = _tryGetAssetDecimals(asset_);
        $._underlyingDecimals = success ? assetDecimals : 18;
        $._asset = asset_;
    }

    /**
     * @dev Attempts to fetch the asset decimals. A return value of false indicates that the attempt failed in some way.
     */
    function _tryGetAssetDecimals(IERC20 asset_) private view returns (bool, uint8) {
        (bool success, bytes memory encodedDecimals) = address(asset_).staticcall(
            abi.encodeCall(IERC20Metadata.decimals, ())
        );
        if (success && encodedDecimals.length >= 32) {
            uint256 returnedDecimals = abi.decode(encodedDecimals, (uint256));
            if (returnedDecimals <= type(uint8).max) {
                return (true, uint8(returnedDecimals));
            }
        }
        return (false, 0);
    }

    /**
     * @dev Decimals are computed by adding the decimal offset on top of the underlying asset's decimals. This
     * "original" value is cached during construction of the vault contract. If this read operation fails (e.g., the
     * asset has not been created yet), a default of 18 is used to represent the underlying asset's decimals.
     *
     * See {IERC20Metadata-decimals}.
     */
    function decimals() public view virtual override(IERC20Metadata, ERC20Upgradeable) returns (uint8) {
        ERC4626Storage storage $ = _getERC4626Storage();
        return $._underlyingDecimals + _decimalsOffset();
    }

    /** @dev See {IERC4626-asset}. */
    function asset() public view virtual returns (address) {
        ERC4626Storage storage $ = _getERC4626Storage();
        return address($._asset);
    }

    /** @dev See {IERC4626-totalAssets}. */
    function totalAssets() public view virtual returns (uint256) {
        ERC4626Storage storage $ = _getERC4626Storage();
        return $._asset.balanceOf(address(this));
    }

    /** @dev See {IERC4626-convertToShares}. */
    function convertToShares(uint256 assets) public view virtual returns (uint256) {
        return _convertToShares(assets, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-convertToAssets}. */
    function convertToAssets(uint256 shares) public view virtual returns (uint256) {
        return _convertToAssets(shares, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    /** @dev See {IERC4626-maxMint}. */
    function maxMint(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    /** @dev See {IERC4626-maxWithdraw}. */
    function maxWithdraw(address owner) public view virtual returns (uint256) {
        return _convertToAssets(balanceOf(owner), Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-maxRedeem}. */
    function maxRedeem(address owner) public view virtual returns (uint256) {
        return balanceOf(owner);
    }

    /** @dev See {IERC4626-previewDeposit}. */
    function previewDeposit(uint256 assets) public view virtual returns (uint256) {
        return _convertToShares(assets, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-previewMint}. */
    function previewMint(uint256 shares) public view virtual returns (uint256) {
        return _convertToAssets(shares, Math.Rounding.Ceil);
    }

    /** @dev See {IERC4626-previewWithdraw}. */
    function previewWithdraw(uint256 assets) public view virtual returns (uint256) {
        return _convertToShares(assets, Math.Rounding.Ceil);
    }

    /** @dev See {IERC4626-previewRedeem}. */
    function previewRedeem(uint256 shares) public view virtual returns (uint256) {
        return _convertToAssets(shares, Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-deposit}. */
    function deposit(uint256 assets, address receiver) public virtual returns (uint256) {
        uint256 maxAssets = maxDeposit(receiver);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(receiver, assets, maxAssets);
        }

        uint256 shares = previewDeposit(assets);
        _deposit(_msgSender(), receiver, assets, shares);

        return shares;
    }

    /** @dev See {IERC4626-mint}.
     *
     * As opposed to {deposit}, minting is allowed even if the vault is in a state where the price of a share is zero.
     * In this case, the shares will be minted without requiring any assets to be deposited.
     */
    function mint(uint256 shares, address receiver) public virtual returns (uint256) {
        uint256 maxShares = maxMint(receiver);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxMint(receiver, shares, maxShares);
        }

        uint256 assets = previewMint(shares);
        _deposit(_msgSender(), receiver, assets, shares);

        return assets;
    }

    /** @dev See {IERC4626-withdraw}. */
    function withdraw(uint256 assets, address receiver, address owner) public virtual returns (uint256) {
        uint256 maxAssets = maxWithdraw(owner);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxWithdraw(owner, assets, maxAssets);
        }

        uint256 shares = previewWithdraw(assets);
        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return shares;
    }

    /** @dev See {IERC4626-redeem}. */
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
        ERC4626Storage storage $ = _getERC4626Storage();
        // If _asset is ERC777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth
        SafeERC20.safeTransferFrom($._asset, caller, address(this), assets);
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
        ERC4626Storage storage $ = _getERC4626Storage();
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        // If _asset is ERC777, `transfer` can trigger a reentrancy AFTER the transfer happens through the
        // `tokensReceived` hook. On the other hand, the `tokensToSend` hook, that is triggered before the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer after the burn so that any reentrancy would happen after the
        // shares are burned and after the assets are transferred, which is a valid state.
        _burn(owner, shares);
        SafeERC20.safeTransfer($._asset, receiver, assets);

        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    function _decimalsOffset() internal view virtual returns (uint8) {
        return 0;
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
// FILE: @openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/EIP712.sol)

pragma solidity ^0.8.20;

import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC5267} from "@openzeppelin/contracts/interfaces/IERC5267.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-712[EIP 712] is a standard for hashing and signing of typed structured data.
 *
 * The encoding scheme specified in the EIP requires a domain separator and a hash of the typed structured data, whose
 * encoding is very generic and therefore its implementation in Solidity is not feasible, thus this contract
 * does not implement the encoding itself. Protocols need to implement the type-specific encoding they need in order to
 * produce the hash of their typed data using a combination of `abi.encode` and `keccak256`.
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
 * NOTE: In the upgradeable version of this contract, the cached values will correspond to the address, and the domain
 * separator of the implementation contract. This will cause the {_domainSeparatorV4} function to always rebuild the
 * separator from the immutable values, which is cheaper than accessing a cached version in cold storage.
 */
abstract contract EIP712Upgradeable is Initializable, IERC5267 {
    bytes32 private constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    /// @custom:storage-location erc7201:openzeppelin.storage.EIP712
    struct EIP712Storage {
        /// @custom:oz-renamed-from _HASHED_NAME
        bytes32 _hashedName;
        /// @custom:oz-renamed-from _HASHED_VERSION
        bytes32 _hashedVersion;

        string _name;
        string _version;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.EIP712")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant EIP712StorageLocation = 0xa16a46d94261c7517cc8ff89f61c0ce93598e3c849801011dee649a6a557d100;

    function _getEIP712Storage() private pure returns (EIP712Storage storage $) {
        assembly {
            $.slot := EIP712StorageLocation
        }
    }

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
        EIP712Storage storage $ = _getEIP712Storage();
        $._name = name;
        $._version = version;

        // Reset prior values in storage if upgrading
        $._hashedName = 0;
        $._hashedVersion = 0;
    }

    /**
     * @dev Returns the domain separator for the current chain.
     */
    function _domainSeparatorV4() internal view returns (bytes32) {
        return _buildDomainSeparator();
    }

    function _buildDomainSeparator() private view returns (bytes32) {
        return keccak256(abi.encode(TYPE_HASH, _EIP712NameHash(), _EIP712VersionHash(), block.chainid, address(this)));
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

    /**
     * @dev See {IERC-5267}.
     */
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
        EIP712Storage storage $ = _getEIP712Storage();
        // If the hashed name and version in storage are non-zero, the contract hasn't been properly initialized
        // and the EIP712 domain is not reliable, as it will be missing name and version.
        require($._hashedName == 0 && $._hashedVersion == 0, "EIP712: Uninitialized");

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
     * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
     * are a concern.
     */
    function _EIP712Name() internal view virtual returns (string memory) {
        EIP712Storage storage $ = _getEIP712Storage();
        return $._name;
    }

    /**
     * @dev The version parameter for the EIP712 domain.
     *
     * NOTE: This function reads from storage by default, but can be redefined to return a constant value if gas costs
     * are a concern.
     */
    function _EIP712Version() internal view virtual returns (string memory) {
        EIP712Storage storage $ = _getEIP712Storage();
        return $._version;
    }

    /**
     * @dev The hash of the name parameter for the EIP712 domain.
     *
     * NOTE: In previous versions this function was virtual. In this version you should override `_EIP712Name` instead.
     */
    function _EIP712NameHash() internal view returns (bytes32) {
        EIP712Storage storage $ = _getEIP712Storage();
        string memory name = _EIP712Name();
        if (bytes(name).length > 0) {
            return keccak256(bytes(name));
        } else {
            // If the name is empty, the contract may have been upgraded without initializing the new storage.
            // We return the name hash in storage if non-zero, otherwise we assume the name is empty by design.
            bytes32 hashedName = $._hashedName;
            if (hashedName != 0) {
                return hashedName;
            } else {
                return keccak256("");
            }
        }
    }

    /**
     * @dev The hash of the version parameter for the EIP712 domain.
     *
     * NOTE: In previous versions this function was virtual. In this version you should override `_EIP712Version` instead.
     */
    function _EIP712VersionHash() internal view returns (bytes32) {
        EIP712Storage storage $ = _getEIP712Storage();
        string memory version = _EIP712Version();
        if (bytes(version).length > 0) {
            return keccak256(bytes(version));
        } else {
            // If the version is empty, the contract may have been upgraded without initializing the new storage.
            // We return the version hash in storage if non-zero, otherwise we assume the version is empty by design.
            bytes32 hashedVersion = $._hashedVersion;
            if (hashedVersion != 0) {
                return hashedVersion;
            } else {
                return keccak256("");
            }
        }
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
// FILE: @openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Nonces.sol)
pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Provides tracking nonces for addresses. Nonces will only increment.
 */
abstract contract NoncesUpgradeable is Initializable {
    /**
     * @dev The nonce used for an `account` is not the expected current nonce.
     */
    error InvalidAccountNonce(address account, uint256 currentNonce);

    /// @custom:storage-location erc7201:openzeppelin.storage.Nonces
    struct NoncesStorage {
        mapping(address account => uint256) _nonces;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Nonces")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant NoncesStorageLocation = 0x5ab42ced628888259c08ac98db1eb0cf702fc1501344311d8b100cd1bfe4bb00;

    function _getNoncesStorage() private pure returns (NoncesStorage storage $) {
        assembly {
            $.slot := NoncesStorageLocation
        }
    }

    function __Nonces_init() internal onlyInitializing {
    }

    function __Nonces_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Returns the next unused nonce for an address.
     */
    function nonces(address owner) public view virtual returns (uint256) {
        NoncesStorage storage $ = _getNoncesStorage();
        return $._nonces[owner];
    }

    /**
     * @dev Consumes a nonce.
     *
     * Returns the current value and increments nonce.
     */
    function _useNonce(address owner) internal virtual returns (uint256) {
        NoncesStorage storage $ = _getNoncesStorage();
        // For each account, the nonce has an initial value of 0, can only be incremented by one, and cannot be
        // decremented or reset. This guarantees that the nonce never overflows.
        unchecked {
            // It is important to do x++ and not ++x here.
            return $._nonces[owner]++;
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
// FILE: @openzeppelin/contracts-v4/utils/math/Math.sol
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
// FILE: @openzeppelin/contracts-v4/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.0;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 *
 * Can be combined with {SafeMath} and {SignedSafeMath} to extend it to smaller types, by performing
 * all math on `uint256` and `int256` and then downcasting.
 */
library SafeCast {
    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     *
     * _Available since v4.7._
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        require(value <= type(uint248).max, "SafeCast: value doesn't fit in 248 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        require(value <= type(uint240).max, "SafeCast: value doesn't fit in 240 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        require(value <= type(uint232).max, "SafeCast: value doesn't fit in 232 bits");
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
     *
     * _Available since v4.2._
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        require(value <= type(uint224).max, "SafeCast: value doesn't fit in 224 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        require(value <= type(uint216).max, "SafeCast: value doesn't fit in 216 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        require(value <= type(uint208).max, "SafeCast: value doesn't fit in 208 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        require(value <= type(uint200).max, "SafeCast: value doesn't fit in 200 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        require(value <= type(uint192).max, "SafeCast: value doesn't fit in 192 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        require(value <= type(uint184).max, "SafeCast: value doesn't fit in 184 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        require(value <= type(uint176).max, "SafeCast: value doesn't fit in 176 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        require(value <= type(uint168).max, "SafeCast: value doesn't fit in 168 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        require(value <= type(uint160).max, "SafeCast: value doesn't fit in 160 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        require(value <= type(uint152).max, "SafeCast: value doesn't fit in 152 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        require(value <= type(uint144).max, "SafeCast: value doesn't fit in 144 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        require(value <= type(uint136).max, "SafeCast: value doesn't fit in 136 bits");
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
     *
     * _Available since v2.5._
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        require(value <= type(uint128).max, "SafeCast: value doesn't fit in 128 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        require(value <= type(uint120).max, "SafeCast: value doesn't fit in 120 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        require(value <= type(uint112).max, "SafeCast: value doesn't fit in 112 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        require(value <= type(uint104).max, "SafeCast: value doesn't fit in 104 bits");
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
     *
     * _Available since v4.2._
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        require(value <= type(uint96).max, "SafeCast: value doesn't fit in 96 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        require(value <= type(uint88).max, "SafeCast: value doesn't fit in 88 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        require(value <= type(uint80).max, "SafeCast: value doesn't fit in 80 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        require(value <= type(uint72).max, "SafeCast: value doesn't fit in 72 bits");
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
     *
     * _Available since v2.5._
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        require(value <= type(uint64).max, "SafeCast: value doesn't fit in 64 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        require(value <= type(uint56).max, "SafeCast: value doesn't fit in 56 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        require(value <= type(uint48).max, "SafeCast: value doesn't fit in 48 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        require(value <= type(uint40).max, "SafeCast: value doesn't fit in 40 bits");
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
     *
     * _Available since v2.5._
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        require(value <= type(uint32).max, "SafeCast: value doesn't fit in 32 bits");
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
     *
     * _Available since v4.7._
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        require(value <= type(uint24).max, "SafeCast: value doesn't fit in 24 bits");
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
     *
     * _Available since v2.5._
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        require(value <= type(uint16).max, "SafeCast: value doesn't fit in 16 bits");
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
     *
     * _Available since v2.5._
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        require(value <= type(uint8).max, "SafeCast: value doesn't fit in 8 bits");
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     *
     * _Available since v3.0._
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
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
     *
     * _Available since v4.7._
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 248 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 240 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 232 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 224 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 216 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 208 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 200 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 192 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 184 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 176 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 168 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 160 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 152 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 144 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 136 bits");
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
     *
     * _Available since v3.1._
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 128 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 120 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 112 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 104 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 96 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 88 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 80 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 72 bits");
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
     *
     * _Available since v3.1._
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 64 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 56 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 48 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 40 bits");
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
     *
     * _Available since v3.1._
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 32 bits");
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
     *
     * _Available since v4.7._
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 24 bits");
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
     *
     * _Available since v3.1._
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 16 bits");
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
     *
     * _Available since v3.1._
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 8 bits");
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     *
     * _Available since v3.0._
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        require(value <= uint256(type(int256).max), "SafeCast: value doesn't fit in an int256");
        return int256(value);
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
// FILE: @openzeppelin/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";
import {IERC20Metadata} from "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC4626 "Tokenized Vault Standard", as defined in
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
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
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
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
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
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
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
// FILE: @openzeppelin/contracts/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC5267.sol)

pragma solidity ^0.8.20;

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
// FILE: @openzeppelin/contracts/interfaces/IERC6372.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC6372.sol)

pragma solidity ^0.8.20;

interface IERC6372 {
    /**
     * @dev Clock used for flagging checkpoints. Can be overridden to implement timestamp based checkpoints (and voting).
     */
    function clock() external view returns (uint48);

    /**
     * @dev Description of the clock
     */
    // solhint-disable-next-line func-name-mixedcase
    function CLOCK_MODE() external view returns (string memory);
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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
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
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

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

    /**
     * @dev An operation with an ERC20 token failed.
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
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
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
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
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
// FILE: @openzeppelin/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/ECDSA.sol)

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
     * @dev The signature derives the `address(0)`.
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
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError, bytes32) {
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
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     */
    function tryRecover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address, RecoverError, bytes32) {
        unchecked {
            bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            // We do not check for an overflow here since the shift operation results in 0 or 1.
            uint8 v = uint8((uint256(vs) >> 255) + 27);
            return tryRecover(hash, v, r, s);
        }
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
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
    ) internal pure returns (address, RecoverError, bytes32) {
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
// FILE: @openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/MessageHashUtils.sol)

pragma solidity ^0.8.20;

import {Strings} from "../Strings.sol";

/**
 * @dev Signature message hash utilities for producing digests to be consumed by {ECDSA} recovery or signing.
 *
 * The library provides methods for generating a hash of a message that conforms to the
 * https://eips.ethereum.org/EIPS/eip-191[EIP 191] and https://eips.ethereum.org/EIPS/eip-712[EIP 712]
 * specifications.
 */
library MessageHashUtils {
    /**
     * @dev Returns the keccak256 digest of an EIP-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing a bytes32 `messageHash` with
     * `"\x19Ethereum Signed Message:\n32"` and hashing the result. It corresponds with the
     * hash signed when using the https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * NOTE: The `messageHash` parameter is intended to be the result of hashing a raw message with
     * keccak256, although any bytes32 value can be safely used because the final digest will
     * be re-hashed.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes32 messageHash) internal pure returns (bytes32 digest) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, "\x19Ethereum Signed Message:\n32") // 32 is the bytes-length of messageHash
            mstore(0x1c, messageHash) // 0x1c (28) is the length of the prefix
            digest := keccak256(0x00, 0x3c) // 0x3c is the length of the prefix (0x1c) + messageHash (0x20)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing an arbitrary `message` with
     * `"\x19Ethereum Signed Message:\n" + len(message)` and hashing the result. It corresponds with the
     * hash signed when using the https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes memory message) internal pure returns (bytes32) {
        return
            keccak256(bytes.concat("\x19Ethereum Signed Message:\n", bytes(Strings.toString(message.length)), message));
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-191 signed data with version
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
     * @dev Returns the keccak256 digest of an EIP-712 typed data (EIP-191 version `0x01`).
     *
     * The digest is calculated from a `domainSeparator` and a `structHash`, by prefixing them with
     * `\x19\x01` and hashing the result. It corresponds to the hash signed by the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`] JSON-RPC method as part of EIP-712.
     *
     * See {ECDSA-recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32 digest) {
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, hex"19_01")
            mstore(add(ptr, 0x02), domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            digest := keccak256(ptr, 0x42)
        }
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
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Muldiv operation overflow.
     */
    error MathOverflowedMulDiv();

    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
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
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            return a / b;
        }

        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0 = x * y; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
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
            if (denominator <= prod1) {
                revert MathOverflowedMulDiv();
            }

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

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
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

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
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
        if (unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
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
            return result + (unsignedRoundsUp(rounding) && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
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
            return result + (unsignedRoundsUp(rounding) && 1 << result < value ? 1 : 0);
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
            return result + (unsignedRoundsUp(rounding) && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
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
            return result + (unsignedRoundsUp(rounding) && 1 << (result << 3) < value ? 1 : 0);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
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
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
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
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

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
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Strings.sol)

pragma solidity ^0.8.20;

import {Math} from "./math/Math.sol";
import {SignedMath} from "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

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
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return bytes(a).length == bytes(b).length && keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: contracts/Auditor.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import { Initializable } from "@openzeppelin/contracts-upgradeable-v4/proxy/utils/Initializable.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";
import { MathUpgradeable as Math } from "@openzeppelin/contracts-upgradeable-v4/utils/math/MathUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/access/AccessControlUpgradeable.sol";
import { IPriceFeed } from "./utils/IPriceFeed.sol";
import { Market } from "./Market.sol";

contract Auditor is Initializable, AccessControlUpgradeable {
  using FixedPointMathLib for uint256;

  /// @notice Address that a market should have as price feed to consider as base price and avoid external price call.
  address public constant BASE_FEED = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
  /// @notice Target health factor that the account should have after it's liquidated to prevent cascade liquidations.
  uint256 public constant TARGET_HEALTH = 1.25e18;
  /// @notice Maximum value the liquidator can send and still have granular control of max assets.
  /// Above this threshold, they should send `type(uint256).max`.
  uint256 public constant ASSETS_THRESHOLD = type(uint256).max / 1e18;

  /// @notice Decimals that the answer of all price feeds should have.
  /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
  uint256 public immutable priceDecimals;
  /// @notice Base factor to scale the price returned by the feed to 18 decimals.
  /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
  uint256 internal immutable baseFactor;
  /// @notice Base price used if the feed to fetch the price from is `BASE_FEED`.
  /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
  uint256 internal immutable basePrice;

  /// @notice Tracks the markets' indexes that an account has entered as collateral.
  mapping(address => uint256) public accountMarkets;
  /// @notice Stores market parameters per each enabled market.
  mapping(Market => MarketData) public markets;
  /// @notice Array of all enabled markets.
  Market[] public marketList;

  /// @notice Liquidation incentive factors for the liquidator and the lenders of the market where the debt is repaid.
  LiquidationIncentive public liquidationIncentive;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor(uint256 priceDecimals_) {
    priceDecimals = priceDecimals_;
    baseFactor = 10 ** (18 - priceDecimals_);
    basePrice = 10 ** priceDecimals_;

    _disableInitializers();
  }

  /// @notice Initializes the contract.
  /// @dev can only be called once.
  function initialize(LiquidationIncentive memory liquidationIncentive_) external initializer {
    __AccessControl_init();

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    setLiquidationIncentive(liquidationIncentive_);
  }

  /// @notice Allows assets of a certain market to be used as collateral for borrowing other assets.
  /// @param market market to enabled as collateral.
  function enterMarket(Market market) external {
    MarketData storage m = markets[market];
    if (!m.isListed) revert MarketNotListed();

    uint256 marketMap = accountMarkets[msg.sender];
    uint256 marketMask = 1 << m.index;

    if ((marketMap & marketMask) != 0) return;
    accountMarkets[msg.sender] = marketMap | marketMask;

    emit MarketEntered(market, msg.sender);
  }

  /// @notice Removes market from sender's account liquidity calculation.
  /// @dev Sender must not have an outstanding borrow balance in the asset, or be providing necessary collateral
  /// for an outstanding borrow.
  /// @param market market to be disabled as collateral.
  function exitMarket(Market market) external {
    MarketData storage m = markets[market];
    if (!m.isListed) revert MarketNotListed();

    (uint256 assets, uint256 debt) = market.accountSnapshot(msg.sender);

    // fail if the sender has a borrow balance
    if (debt != 0) revert RemainingDebt();

    // fail if the sender is not permitted to redeem all of their assets
    checkShortfall(market, msg.sender, assets);

    uint256 marketMap = accountMarkets[msg.sender];
    uint256 marketMask = 1 << m.index;

    if ((marketMap & marketMask) == 0) return;
    accountMarkets[msg.sender] = marketMap & ~marketMask;

    emit MarketExited(market, msg.sender);
  }

  /// @notice Returns account's liquidity calculation.
  /// @param account account in which the liquidity will be calculated.
  /// @param marketToSimulate market in which to simulate withdraw operation.
  /// @param withdrawAmount amount to simulate as withdraw.
  /// @return sumCollateral sum of all collateral, already multiplied by each adjust factor (denominated in base).
  /// @return sumDebtPlusEffects sum of all debt divided by adjust factor considering withdrawal (denominated in base).
  function accountLiquidity(
    address account,
    Market marketToSimulate,
    uint256 withdrawAmount
  ) public view returns (uint256 sumCollateral, uint256 sumDebtPlusEffects) {
    AccountLiquidity memory vars; // holds all our calculation results

    // for each asset the account is in
    uint256 marketMap = accountMarkets[account];
    for (uint256 i = 0; marketMap != 0; marketMap >>= 1) {
      if (marketMap & 1 != 0) {
        Market market = marketList[i];
        MarketData storage m = markets[market];
        uint256 baseUnit = 10 ** m.decimals;
        uint256 adjustFactor = m.adjustFactor;

        // read the balances
        (vars.balance, vars.borrowBalance) = market.accountSnapshot(account);

        // get the normalized price of the asset (18 decimals)
        vars.price = assetPrice(m.priceFeed);

        // sum all the collateral prices
        sumCollateral += vars.balance.mulDivDown(vars.price, baseUnit).mulWadDown(adjustFactor);

        // sum all the debt
        sumDebtPlusEffects += vars.borrowBalance.mulDivUp(vars.price, baseUnit).divWadUp(adjustFactor);

        // simulate the effects of withdrawing from a pool
        if (market == marketToSimulate) {
          // calculate the effects of redeeming markets
          // (having less collateral is the same as having more debt for this calculation)
          if (withdrawAmount != 0) {
            sumDebtPlusEffects += withdrawAmount.mulDivDown(vars.price, baseUnit).mulWadDown(adjustFactor);
          }
        }
      }
      unchecked {
        ++i;
      }
    }
  }

  /// @notice Validates that the current state of the position and system are valid.
  /// @dev To be called after adding the borrowed debt to the account position.
  /// @param market address of the market where the borrow is made.
  /// @param borrower address of the account that will repay the debt.
  function checkBorrow(Market market, address borrower) external {
    MarketData storage m = markets[market];
    if (!m.isListed) revert MarketNotListed();

    uint256 marketMap = accountMarkets[borrower];
    uint256 marketMask = 1 << m.index;

    // validate borrow state
    if ((marketMap & marketMask) == 0) {
      // only markets may call checkBorrow if borrower not in market
      if (msg.sender != address(market)) revert NotMarket();

      accountMarkets[borrower] = marketMap | marketMask;
      emit MarketEntered(market, borrower);
    }

    // verify that current liquidity is not short
    (uint256 collateral, uint256 debt) = accountLiquidity(borrower, Market(address(0)), 0);
    if (collateral < debt) revert InsufficientAccountLiquidity();
  }

  /// @notice Checks if the account has liquidity shortfall.
  /// @param market address of the market where the operation will happen.
  /// @param account address of the account to check for possible shortfall.
  /// @param amount amount that the account wants to withdraw or transfer.
  function checkShortfall(Market market, address account, uint256 amount) public view {
    // if the account is not 'in' the market, bypass the liquidity check
    if ((accountMarkets[account] & (1 << markets[market].index)) == 0) return;

    // otherwise, perform a hypothetical liquidity check to guard against shortfall
    (uint256 collateral, uint256 debt) = accountLiquidity(account, market, amount);
    if (collateral < debt) revert InsufficientAccountLiquidity();
  }

  /// @notice Allows/rejects liquidation of assets.
  /// @dev This function can be called externally, but only will have effect when called from a market.
  /// @param repayMarket market from where the debt is being repaid.
  /// @param seizeMarket market from where the liquidator will seize assets.
  /// @param borrower address in which the assets are being liquidated.
  /// @param maxLiquidatorAssets maximum amount of debt the liquidator is willing to accept.
  /// @return maxRepayAssets capped amount of debt the liquidator is allowed to repay.
  function checkLiquidation(
    Market repayMarket,
    Market seizeMarket,
    address borrower,
    uint256 maxLiquidatorAssets
  ) external view returns (uint256 maxRepayAssets) {
    // if markets are listed, they have the same auditor
    if (!markets[repayMarket].isListed || !markets[seizeMarket].isListed) revert MarketNotListed();

    MarketVars memory repay;
    LiquidityVars memory base;
    uint256 marketMap = accountMarkets[borrower];
    for (uint256 i = 0; marketMap != 0; marketMap >>= 1) {
      if (marketMap & 1 != 0) {
        Market market = marketList[i];
        MarketData storage marketData = markets[market];
        MarketVars memory m = MarketVars({
          price: assetPrice(marketData.priceFeed),
          adjustFactor: marketData.adjustFactor,
          baseUnit: 10 ** marketData.decimals
        });

        if (market == repayMarket) repay = m;

        (uint256 collateral, uint256 debt) = market.accountSnapshot(borrower);

        uint256 value = debt.mulDivUp(m.price, m.baseUnit);
        base.totalDebt += value;
        base.adjustedDebt += value.divWadUp(m.adjustFactor);

        value = collateral.mulDivDown(m.price, m.baseUnit);
        base.totalCollateral += value;
        base.adjustedCollateral += value.mulWadDown(m.adjustFactor);
        if (market == seizeMarket) base.seizeAvailable = value;
      }
      unchecked {
        ++i;
      }
    }

    if (base.adjustedCollateral >= base.adjustedDebt) revert InsufficientShortfall();

    LiquidationIncentive memory memIncentive = liquidationIncentive;
    uint256 adjustFactor = base.adjustedCollateral.mulWadDown(base.totalDebt).divWadUp(
      base.adjustedDebt.mulWadUp(base.totalCollateral)
    );
    uint256 closeFactor = (TARGET_HEALTH - base.adjustedCollateral.divWadUp(base.adjustedDebt)).divWadUp(
      TARGET_HEALTH - adjustFactor.mulWadDown(1e18 + memIncentive.liquidator + memIncentive.lenders)
    );
    maxRepayAssets = Math.min(
      Math
        .min(
          base.totalDebt.mulWadUp(Math.min(1e18, closeFactor)),
          base.seizeAvailable.divWadUp(1e18 + memIncentive.liquidator + memIncentive.lenders)
        )
        .mulDivUp(repay.baseUnit, repay.price),
      maxLiquidatorAssets < ASSETS_THRESHOLD
        ? maxLiquidatorAssets.divWadDown(1e18 + memIncentive.lenders)
        : maxLiquidatorAssets
    );
  }

  /// @notice Allow/rejects seizing of assets.
  /// @dev This function can be called externally, but only will have effect when called from a market.
  /// @param repayMarket market from where the debt will be repaid.
  /// @param seizeMarket market where the assets will be seized.
  function checkSeize(Market repayMarket, Market seizeMarket) external view {
    // if markets are listed, they also point to the same Auditor
    if (!markets[seizeMarket].isListed || !markets[repayMarket].isListed) revert MarketNotListed();
  }

  /// @notice Calculates the amount of collateral to be seized when a position is undercollateralized.
  /// @param repayMarket market from where the debt will be repaid.
  /// @param seizeMarket market from where the assets will be seized by the liquidator.
  /// @param borrower account in which assets are being seized.
  /// @param actualRepayAssets amount being repaid.
  /// @return lendersAssets amount to be added for other lenders as a compensation of bad debt clearing.
  /// @return seizeAssets amount that can be seized by the liquidator.
  function calculateSeize(
    Market repayMarket,
    Market seizeMarket,
    address borrower,
    uint256 actualRepayAssets
  ) external view returns (uint256 lendersAssets, uint256 seizeAssets) {
    LiquidationIncentive memory memIncentive = liquidationIncentive;
    lendersAssets = actualRepayAssets.mulWadDown(memIncentive.lenders);

    // read prices for borrowed and collateral markets
    uint256 priceBorrowed = assetPrice(markets[repayMarket].priceFeed);
    uint256 priceCollateral = assetPrice(markets[seizeMarket].priceFeed);
    uint256 baseAmount = actualRepayAssets.mulDivUp(priceBorrowed, 10 ** markets[repayMarket].decimals);

    seizeAssets = Math.min(
      baseAmount.mulDivUp(10 ** markets[seizeMarket].decimals, priceCollateral).mulWadUp(
        1e18 + memIncentive.liquidator + memIncentive.lenders
      ),
      seizeMarket.maxWithdraw(borrower)
    );
  }

  /// @notice Checks if account has debt with no collateral, if so then call `clearBadDebt` from each market.
  /// @dev Collateral is multiplied by price and adjust factor to be accurately evaluated as positive collateral asset.
  /// @param account account in which debt is being checked.
  function handleBadDebt(address account) external {
    uint256 memMarketMap = accountMarkets[account];
    uint256 marketMap = memMarketMap;
    for (uint256 i = 0; marketMap != 0; marketMap >>= 1) {
      if (marketMap & 1 != 0) {
        Market market = marketList[i];
        MarketData storage m = markets[market];
        uint256 assets = market.maxWithdraw(account);
        if (assets.mulDivDown(assetPrice(m.priceFeed), 10 ** m.decimals).mulWadDown(m.adjustFactor) > 0) return;
      }
      unchecked {
        ++i;
      }
    }

    marketMap = memMarketMap;
    for (uint256 i = 0; marketMap != 0; marketMap >>= 1) {
      if (marketMap & 1 != 0) marketList[i].clearBadDebt(account);
      unchecked {
        ++i;
      }
    }
  }

  /// @notice Gets the asset price of a price feed.
  /// @dev If Chainlink's asset price is <= 0 the call is reverted.
  /// @param priceFeed address of Chainlink's Price Feed aggregator used to query the asset price.
  /// @return The price of the asset scaled to 18-digit decimals.
  function assetPrice(IPriceFeed priceFeed) public view returns (uint256) {
    if (address(priceFeed) == BASE_FEED) return basePrice;

    int256 price = priceFeed.latestAnswer();
    if (price <= 0) revert InvalidPrice();
    return uint256(price) * baseFactor;
  }

  /// @notice Retrieves all markets.
  function allMarkets() external view returns (Market[] memory) {
    return marketList;
  }

  /// @notice Enables a certain market.
  /// @dev Enabling more than 256 markets will cause an overflow when casting market index to uint8.
  /// @param market market to add to the protocol.
  /// @param priceFeed address of Chainlink's Price Feed aggregator used to query the asset price in base.
  /// @param adjustFactor market's adjust factor for the underlying asset.
  function enableMarket(
    Market market,
    IPriceFeed priceFeed,
    uint128 adjustFactor
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (market.auditor() != this) revert AuditorMismatch();
    if (markets[market].isListed) revert MarketAlreadyListed();
    if (address(priceFeed) != BASE_FEED && priceFeed.decimals() != priceDecimals) revert InvalidPriceFeed();

    uint8 decimals = market.decimals();
    markets[market] = MarketData({
      isListed: true,
      adjustFactor: adjustFactor,
      decimals: decimals,
      index: uint8(marketList.length),
      priceFeed: priceFeed
    });

    marketList.push(market);

    emit MarketListed(market, decimals);
    emit PriceFeedSet(market, priceFeed);
    emit AdjustFactorSet(market, adjustFactor);
  }

  /// @notice Sets the adjust factor for a certain market.
  /// @param market address of the market to change adjust factor for.
  /// @param adjustFactor adjust factor for the underlying asset.
  function setAdjustFactor(Market market, uint128 adjustFactor) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!markets[market].isListed) revert MarketNotListed();

    markets[market].adjustFactor = adjustFactor;
    emit AdjustFactorSet(market, adjustFactor);
  }

  /// @notice Sets the Chainlink Price Feed Aggregator source for a market.
  /// @param market market address of the asset.
  /// @param priceFeed address of Chainlink's Price Feed aggregator used to query the asset price in base.
  function setPriceFeed(Market market, IPriceFeed priceFeed) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (address(priceFeed) != BASE_FEED && priceFeed.decimals() != priceDecimals) revert InvalidPriceFeed();
    markets[market].priceFeed = priceFeed;
    emit PriceFeedSet(market, priceFeed);
  }

  /// @notice Sets liquidation incentive (liquidator and lenders) for the whole ecosystem.
  /// @param liquidationIncentive_ new liquidation incentive.
  function setLiquidationIncentive(
    LiquidationIncentive memory liquidationIncentive_
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    liquidationIncentive = liquidationIncentive_;
    emit LiquidationIncentiveSet(liquidationIncentive_);
  }

  /// @notice Emitted when a new market is listed for borrow/lending.
  /// @param market address of the market that was listed.
  /// @param decimals decimals of the market's underlying asset.
  event MarketListed(Market indexed market, uint8 decimals);

  /// @notice Emitted when an account enters a market to use his deposit as collateral for a loan.
  /// @param market address of the market that the account entered.
  /// @param account address of the account that just entered a market.
  event MarketEntered(Market indexed market, address indexed account);

  /// @notice Emitted when an account leaves a market.
  /// Means that they would stop using their deposit as collateral and won't ask for any loans in this market.
  /// @param market address of the market that the account just left.
  /// @param account address of the account that just left a market.
  event MarketExited(Market indexed market, address indexed account);

  /// @notice Emitted when a adjust factor is changed by admin.
  /// @param market address of the market that has a new adjust factor.
  /// @param adjustFactor adjust factor for the underlying asset.
  event AdjustFactorSet(Market indexed market, uint256 adjustFactor);

  /// @notice Emitted when a new liquidationIncentive has been set.
  /// @param liquidationIncentive represented with 18 decimals.
  event LiquidationIncentiveSet(LiquidationIncentive liquidationIncentive);

  /// @notice Emitted when a market and prie feed is changed by admin.
  /// @param market address of the asset used to get the price.
  /// @param priceFeed address of Chainlink's Price Feed aggregator used to query the asset price in base.
  event PriceFeedSet(Market indexed market, IPriceFeed indexed priceFeed);

  /// @notice Stores the market parameters used for liquidity calculations.
  /// @param adjustFactor used to asses the lending power of the market's underlying asset.
  /// @param decimals number of decimals of the market's underlying asset.
  /// @param index index of the market in the `marketList`.
  /// @param isListed true if the market is enabled.
  /// @param priceFeed address of the price feed used to query the asset's price.
  struct MarketData {
    uint128 adjustFactor;
    uint8 decimals;
    uint8 index;
    bool isListed;
    IPriceFeed priceFeed;
  }

  /// @notice Stores the liquidator and lenders factors used in liquidations to calculate the amount to seize.
  /// @param liquidator factor used to calculate the extra bonus a liquidator can seize.
  /// @param lenders factor used to calculate the bonus that the pool lenders receive.
  struct LiquidationIncentive {
    uint128 liquidator;
    uint128 lenders;
  }

  /// @notice Used as memory access to temporary store account liquidity data.
  /// @param balance collateral balance of the account.
  /// @param borrowBalance borrow balance of the account.
  /// @param price asset price returned by the price feed with 18 decimals.
  struct AccountLiquidity {
    uint256 balance;
    uint256 borrowBalance;
    uint256 price;
  }
}

error AuditorMismatch();
error InsufficientAccountLiquidity();
error InsufficientShortfall();
error InvalidPrice();
error InvalidPriceFeed();
error MarketAlreadyListed();
error MarketNotListed();
error NotMarket();
error RemainingDebt();

struct MarketVars {
  uint256 price;
  uint256 baseUnit;
  uint128 adjustFactor;
}

struct LiquidityVars {
  uint256 totalDebt;
  uint256 totalCollateral;
  uint256 adjustedDebt;
  uint256 adjustedCollateral;
  uint256 seizeAvailable;
}

// ============================================================
// FILE: contracts/InterestRateModel.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import { Math } from "@openzeppelin/contracts-v4/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin/contracts-v4/utils/math/SafeCast.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";
import { FixedLib } from "./utils/FixedLib.sol";
import { Market } from "./Market.sol";

contract InterestRateModel {
  using FixedPointMathLib for uint256;
  using FixedPointMathLib for int256;
  using SafeCast for uint256;
  using SafeCast for int256;

  /// @notice Scale factor of the floating curve.
  uint256 public immutable floatingCurveA;
  /// @notice Origin intercept of the floating curve.
  int256 public immutable floatingCurveB;
  /// @notice Asymptote of the floating curve.
  uint256 public immutable floatingMaxUtilization;

  /// @notice natural level of utilization, represented with 18 decimals.
  uint256 public immutable naturalUtilization;
  /// @notice speed of growth for the base rate, represented with 18 decimals.
  int256 public immutable growthSpeed;
  /// @notice speed of the sigmoid curve, represented with 18 decimals.
  int256 public immutable sigmoidSpeed;
  /// @notice spread factor for the fixed rate, represented with 18 decimals.
  int256 public immutable spreadFactor;
  /// @notice speed of maturity for the fixed rate, represented with 18 decimals.
  int256 public immutable maturitySpeed;
  /// @notice time preference for the fixed rate, represented with 18 decimals.
  int256 public immutable timePreference;
  /// @notice liquidity naturally designated to fixed pools, represented with 18 decimals.
  uint256 public immutable fixedAllocation;
  /// @notice maximum interest rate, represented with 18 decimals.
  uint256 public immutable maxRate;

  /// @dev maximum input value for expWad, ~ln((2^255 - 1) / 1e18), represented with 18 decimals.
  int256 internal constant EXP_THRESHOLD = 135305999368893231588;
  /// @dev auxiliary variable to save an extra operation.
  int256 internal immutable auxSigmoid;

  /// @notice set of parameters used to initialize the interest rate model.
  Parameters internal _parameters;

  constructor(Parameters memory p, Market market_) {
    assert(
      p.minRate > 0 &&
        p.naturalRate > 0 &&
        p.maxUtilization > 1e18 &&
        p.naturalUtilization > 0 &&
        p.naturalUtilization < 1e18 &&
        p.growthSpeed > 0 &&
        p.sigmoidSpeed > 0 &&
        p.spreadFactor > 0 &&
        p.maturitySpeed > 0 &&
        p.maxRate > 0 &&
        p.maxRate <= 15_000e16
    );

    _parameters = p;
    growthSpeed = p.growthSpeed.toInt256();
    sigmoidSpeed = p.sigmoidSpeed.toInt256();
    spreadFactor = p.spreadFactor.toInt256();
    maturitySpeed = p.maturitySpeed.toInt256();
    floatingMaxUtilization = p.maxUtilization;
    naturalUtilization = p.naturalUtilization;

    floatingCurveA =
      ((p.naturalRate.mulWadUp(
        uint256(((growthSpeed * (1e18 - int256(p.naturalUtilization / 2)).lnWad()) / 1e18).expWad())
      ) - p.minRate) *
        (p.maxUtilization - p.naturalUtilization) *
        (p.maxUtilization)) /
      (p.naturalUtilization * 1e18);
    floatingCurveB = int256(p.minRate) - int256(floatingCurveA.divWadDown(p.maxUtilization));

    market = market_;
    fixedCurveA = address(market_) != address(0) ? floatingCurveA : 0;
    fixedCurveB = address(market_) != address(0) ? floatingCurveB : int256(0);
    fixedMaxUtilization = address(market_) != address(0) ? p.maxUtilization : 0;

    timePreference = p.timePreference;
    fixedAllocation = p.fixedAllocation;
    maxRate = p.maxRate;

    auxSigmoid = int256(naturalUtilization.divWadDown(1e18 - naturalUtilization)).lnWad();

    // reverts if it's an invalid curve (such as one yielding a negative interest rate).
    fixedRate(block.timestamp + FixedLib.INTERVAL - (block.timestamp % FixedLib.INTERVAL), 2, 1, 1, 2);
    baseRate(1e18 - 1, 1e18 - 1);
  }

  /// @notice fixed rate with given conditions, represented with 18 decimals.
  /// @param maturity maturity of the pool.
  /// @param maxPools number of pools available in the time horizon.
  /// @param uFixed fixed utilization of the pool.
  /// @param uFloating floating utilization of the pool.
  /// @param uGlobal global utilization of the pool.
  /// @return the minimum between `base * spread` and `maxRate` with given conditions.
  function fixedRate(
    uint256 maturity,
    uint256 maxPools,
    uint256 uFixed,
    uint256 uFloating,
    uint256 uGlobal
  ) public view returns (uint256) {
    if (block.timestamp >= maturity) revert AlreadyMatured();
    if (uFixed > uGlobal) revert UtilizationExceeded();
    if (uGlobal == 0) return baseRate(uFloating, 0);

    FixedVars memory v;
    v.sqFNatPools = (maxPools * 1e18).divWadDown(fixedAllocation);
    v.fNatPools = (v.sqFNatPools * 1e18).sqrt();
    v.fixedFactor = (maxPools * uFixed).mulDivDown(1e36, uGlobal * fixedAllocation);
    v.natPools =
      ((2e18 - v.sqFNatPools.toInt256()) * 1e36) /
      (v.fNatPools.toInt256() * (1e18 - v.fNatPools.toInt256()));
    v.maturityFactor = (maturity - block.timestamp).divWadDown(maxPools * FixedLib.INTERVAL);

    uint256 spread = (1e18 +
      (((maturitySpeed * (v.maturityFactor).toInt256().lnWad()) / 1e18).expWad() *
        (timePreference +
          (spreadFactor *
            ((v.natPools * (v.fixedFactor * 1e18).sqrt().toInt256()) /
              1e18 +
              ((1e18 - v.natPools) * v.fixedFactor.toInt256()) /
              1e18 -
              1e18)) /
          1e18)) /
      1e18).toUint256();
    uint256 base = baseRate(uFloating, uGlobal);

    if (base >= maxRate.divWadDown(spread)) return maxRate;
    return base.mulWadUp(spread);
  }

  /// @notice base rate with given conditions, represented with 18 decimals.
  /// @param uFloating floating utilization of the pool.
  /// @param uGlobal global utilization of the pool.
  /// @return the base rate, without capping.
  function baseRate(uint256 uFloating, uint256 uGlobal) internal view returns (uint256) {
    if (uFloating > uGlobal) revert UtilizationExceeded();
    if (uGlobal >= 1e18) return type(uint256).max;

    uint256 r = ((floatingCurveA.divWadDown(floatingMaxUtilization - uFloating)).toInt256() + floatingCurveB)
      .toUint256();

    if (uGlobal == 0) return r;

    int256 x = -((sigmoidSpeed * (int256(uGlobal.divWadDown(1e18 - uGlobal)).lnWad() - auxSigmoid)) / 1e18);
    uint256 sigmoid = x > EXP_THRESHOLD ? 0 : uint256(1e18).divWadDown(1e18 + x.expWad().toUint256());
    x = (-growthSpeed * (1e18 - sigmoid.mulWadDown(uGlobal)).toInt256().lnWad()) / 1e18;
    uint256 globalFactor = ((x > EXP_THRESHOLD ? EXP_THRESHOLD : x).expWad()).toUint256();

    if (globalFactor > type(uint256).max / r) return type(uint256).max;

    return r.mulWadUp(globalFactor);
  }

  /// @notice floating rate with given conditions, represented with 18 decimals.
  /// @param uFloating floating utilization of the pool.
  /// @param uGlobal global utilization of the pool.
  /// @return the minimum between `baseRate` and `maxRate` with given conditions.
  function floatingRate(uint256 uFloating, uint256 uGlobal) public view returns (uint256) {
    return Math.min(baseRate(uFloating, uGlobal), maxRate);
  }

  function parameters() external view returns (Parameters memory) {
    return _parameters;
  }

  // Legacy interface, kept for compatibility.

  /// @notice Market where the interest rate model is used. Keeps compatibility with legacy interest rate model.
  Market public immutable market;
  uint256 public immutable fixedCurveA;
  int256 public immutable fixedCurveB;
  uint256 public immutable fixedMaxUtilization;

  /// @dev Deprecated in favor of `floatingRate(uFloating, uGlobal)`.
  function floatingRate(uint256) public view returns (uint256) {
    uint256 floatingAssets = market.floatingAssets();
    uint256 floatingDebt = market.floatingDebt();
    return
      floatingRate(
        floatingAssets != 0 ? floatingDebt.divWadUp(floatingAssets) : 0,
        globalUtilization(floatingAssets, floatingDebt, market.floatingBackupBorrowed())
      );
  }

  /// @dev Deprecated in favor of `fixedRate(maturity, maxPools, uFixed, uFloating, uGlobal)`
  function fixedBorrowRate(
    uint256 maturity,
    uint256 amount,
    uint256 borrowed,
    uint256 supplied,
    uint256
  ) external view returns (uint256) {
    if (block.timestamp >= maturity) revert AlreadyMatured();
    uint256 floatingAssets = previewFloatingAssetsAverage(maturity);
    uint256 floatingDebt = market.totalFloatingBorrowAssets();
    uint256 newBorrowed = borrowed + amount;
    uint256 backupDebtAddition = newBorrowed - Math.min(Math.max(borrowed, supplied), newBorrowed);

    return
      fixedRate(
        maturity,
        market.maxFuturePools(),
        fixedUtilization(supplied, newBorrowed, floatingAssets),
        floatingAssets != 0 ? floatingDebt.divWadUp(floatingAssets) : 0,
        globalUtilization(floatingAssets, floatingDebt, market.floatingBackupBorrowed() + backupDebtAddition)
      ).mulDivDown(maturity - block.timestamp, 365 days);
  }

  /// @dev deprecated in favor of `fixedRate(maturity, maxPools, uFixed, uFloating, uGlobal)`
  function minFixedRate(uint256, uint256, uint256) external view returns (uint256 rate, uint256 utilization) {
    uint256 floatingAssets = market.floatingAssetsAverage();
    uint256 floatingDebt = market.totalFloatingBorrowAssets();
    utilization = globalUtilization(floatingAssets, floatingDebt, market.floatingBackupBorrowed());
    rate = baseRate(floatingAssets != 0 ? floatingDebt.divWadUp(floatingAssets) : 0, utilization);
  }

  function previewFloatingAssetsAverage(uint256 maturity) internal view returns (uint256) {
    FixedLib.Pool memory pool;
    (pool.borrowed, pool.supplied, pool.unassignedEarnings, pool.lastAccrual) = market.fixedPools(maturity);
    uint256 memFloatingAssets = market.floatingAssets() +
      pool.unassignedEarnings.mulDivDown(block.timestamp - pool.lastAccrual, maturity - pool.lastAccrual);
    uint256 memFloatingAssetsAverage = market.floatingAssetsAverage();
    uint256 averageFactor = (1e18 -
      (
        -int256(
          memFloatingAssets < memFloatingAssetsAverage
            ? market.dampSpeedDown()
            : market.dampSpeedUp() * (block.timestamp - market.lastAverageUpdate())
        )
      ).expWad()).toUint256();
    return memFloatingAssetsAverage.mulWadDown(1e18 - averageFactor) + averageFactor.mulWadDown(memFloatingAssets);
  }

  function globalUtilization(
    uint256 floatingAssets,
    uint256 floatingDebt,
    uint256 backupBorrowed
  ) internal pure returns (uint256) {
    return floatingAssets != 0 ? (floatingDebt + backupBorrowed).divWadUp(floatingAssets) : 0;
  }

  function fixedUtilization(
    uint256 supplied,
    uint256 borrowed,
    uint256 floatingAssets
  ) internal pure returns (uint256) {
    return floatingAssets != 0 && borrowed > supplied ? (borrowed - supplied).divWadUp(floatingAssets) : 0;
  }
}

error AlreadyMatured();
error UtilizationExceeded();

struct Parameters {
  uint256 minRate;
  uint256 naturalRate;
  uint256 maxUtilization;
  uint256 naturalUtilization;
  uint256 growthSpeed;
  uint256 sigmoidSpeed;
  uint256 spreadFactor;
  uint256 maturitySpeed;
  int256 timePreference;
  uint256 fixedAllocation;
  uint256 maxRate;
}

struct FixedVars {
  uint256 sqFNatPools;
  uint256 fNatPools;
  uint256 fixedFactor;
  int256 natPools;
  uint256 maturityFactor;
}

// ============================================================
// FILE: contracts/Market.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import { Initializable } from "@openzeppelin/contracts-upgradeable-v4/proxy/utils/Initializable.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/security/PausableUpgradeable.sol";
import { MathUpgradeable as Math } from "@openzeppelin/contracts-upgradeable-v4/utils/math/MathUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/access/AccessControlUpgradeable.sol";
import { ERC4626, ERC20, SafeTransferLib } from "solmate/src/mixins/ERC4626.sol";
import { InterestRateModel } from "./InterestRateModel.sol";
import { RewardsController } from "./RewardsController.sol";
import { FixedLib } from "./utils/FixedLib.sol";
import { Auditor } from "./Auditor.sol";

contract Market is Initializable, AccessControlUpgradeable, PausableUpgradeable, ERC4626 {
  using FixedPointMathLib for int256;
  using FixedPointMathLib for uint256;
  using FixedPointMathLib for uint128;
  using SafeTransferLib for ERC20;
  using FixedLib for FixedLib.Pool;
  using FixedLib for FixedLib.Position;
  using FixedLib for uint256;

  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant EMERGENCY_ADMIN_ROLE = keccak256("EMERGENCY_ADMIN_ROLE");

  /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
  Auditor public immutable auditor;

  /// @notice Tracks account's fixed deposit positions by maturity, account and position.
  mapping(uint256 => mapping(address => FixedLib.Position)) public fixedDepositPositions;
  /// @notice Tracks account's fixed borrow positions by maturity, account and position.
  mapping(uint256 => mapping(address => FixedLib.Position)) public fixedBorrowPositions;
  /// @notice Tracks fixed pools state by maturity.
  mapping(uint256 => FixedLib.Pool) public fixedPools;

  /// @notice Tracks fixed deposit and borrow map and floating borrow shares of an account.
  mapping(address => Account) public accounts;

  /// @notice Amount of assets lent by the floating pool to the fixed pools.
  uint256 public floatingBackupBorrowed;
  /// @notice Amount of assets lent by the floating pool to accounts.
  uint256 public floatingDebt;

  /// @notice Accumulated earnings from extraordinary sources to be gradually distributed.
  uint256 public earningsAccumulator;
  /// @notice Rate per second to be charged to delayed fixed pools borrowers after maturity.
  uint256 public penaltyRate;
  /// @notice Rate charged to the fixed pool to be retained by the floating pool for initially providing liquidity.
  uint256 public backupFeeRate;
  /// @notice Damp speed factor to update `floatingAssetsAverage` when `floatingAssets` is higher.
  uint256 public dampSpeedUp;
  /// @notice Damp speed factor to update `floatingAssetsAverage` when `floatingAssets` is lower.
  uint256 public dampSpeedDown;

  /// @notice Number of fixed pools to be active at the same time.
  uint8 public maxFuturePools;
  /// @notice Last time the accumulator distributed earnings.
  uint32 public lastAccumulatorAccrual;
  /// @notice Last time the floating debt was updated.
  uint32 public lastFloatingDebtUpdate;
  /// @notice Last time the floating assets average was updated.
  uint32 public lastAverageUpdate;

  /// @notice Interest rate model contract used to get the borrow rates.
  InterestRateModel public interestRateModel;

  /// @notice Factor used for gradual accrual of earnings to the floating pool.
  uint128 public earningsAccumulatorSmoothFactor;
  /// @notice Percentage factor that represents the liquidity reserves that can't be borrowed.
  uint128 public reserveFactor;

  /// @notice Amount of floating assets deposited to the pool.
  uint256 public floatingAssets;
  /// @notice Average of the floating assets to get fixed borrow rates and prevent rate manipulation.
  uint256 public floatingAssetsAverage;

  /// @notice Total amount of floating borrow shares assigned to floating borrow accounts.
  uint256 public totalFloatingBorrowShares;

  /// @dev gap from deprecated state.
  /// @custom:oz-renamed-from floatingUtilization
  uint256 private __gap;

  /// @notice Address of the treasury that will receive the allocated earnings.
  address public treasury;
  /// @notice Rate to be charged by the treasury to floating and fixed borrows.
  uint256 public treasuryFeeRate;

  /// @notice Address of the rewards controller that will accrue rewards for accounts operating with the Market.
  RewardsController public rewardsController;

  /// @notice Flag to prevent new borrows and deposits.
  bool public isFrozen;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor(ERC20 asset_, Auditor auditor_) ERC4626(asset_, "", "") {
    auditor = auditor_;

    _disableInitializers();
  }

  /// @notice Initializes the contract.
  /// @dev can only be called once.
  function initialize(
    string calldata assetSymbol,
    uint8 maxFuturePools_,
    uint128 earningsAccumulatorSmoothFactor_,
    InterestRateModel interestRateModel_,
    uint256 penaltyRate_,
    uint256 backupFeeRate_,
    uint128 reserveFactor_,
    uint256 dampSpeedUp_,
    uint256 dampSpeedDown_
  ) external initializer {
    __AccessControl_init();
    __Pausable_init();

    lastAccumulatorAccrual = uint32(block.timestamp);
    lastFloatingDebtUpdate = uint32(block.timestamp);
    lastAverageUpdate = uint32(block.timestamp);

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    setAssetSymbol(assetSymbol);
    setMaxFuturePools(maxFuturePools_);
    setEarningsAccumulatorSmoothFactor(earningsAccumulatorSmoothFactor_);
    setInterestRateModel(interestRateModel_);
    setPenaltyRate(penaltyRate_);
    setBackupFeeRate(backupFeeRate_);
    setReserveFactor(reserveFactor_);
    setDampSpeed(dampSpeedUp_, dampSpeedDown_);
  }

  /// @notice Borrows a certain amount from the floating pool.
  /// @param assets amount to be sent to receiver and repaid by borrower.
  /// @param receiver address that will receive the borrowed assets.
  /// @param borrower address that will repay the borrowed assets.
  /// @return borrowShares shares corresponding to the borrowed assets.
  function borrow(
    uint256 assets,
    address receiver,
    address borrower
  ) external whenNotPaused whenNotFrozen returns (uint256 borrowShares) {
    if (assets == 0) revert ZeroBorrow();
    spendAllowance(borrower, assets);

    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleBorrow(borrower);

    depositToTreasury(updateFloatingDebt());

    borrowShares = previewBorrow(assets);

    uint256 newFloatingDebt = floatingDebt + assets;
    floatingDebt = newFloatingDebt;
    // check if the underlying liquidity that the account wants to withdraw is borrowed, also considering the reserves
    if (floatingBackupBorrowed + newFloatingDebt > floatingAssets.mulWadDown(1e18 - reserveFactor)) {
      revert InsufficientProtocolLiquidity();
    }

    totalFloatingBorrowShares += borrowShares;
    accounts[borrower].floatingBorrowShares += borrowShares;

    emit Borrow(msg.sender, receiver, borrower, assets, borrowShares);
    emitMarketUpdate();

    auditor.checkBorrow(this, borrower);
    asset.safeTransfer(receiver, assets);
  }

  /// @notice Repays a certain amount of assets to the floating pool.
  /// @param assets assets to be subtracted from the borrower's accountability.
  /// @param borrower address of the account that has the debt.
  /// @return actualRepay the actual amount that should be transferred into the protocol.
  /// @return borrowShares subtracted shares from the borrower's accountability.
  function repay(
    uint256 assets,
    address borrower
  ) external whenNotPaused returns (uint256 actualRepay, uint256 borrowShares) {
    (actualRepay, borrowShares) = noTransferRefund(previewRepay(assets), borrower);
    emitMarketUpdate();
    asset.safeTransferFrom(msg.sender, address(this), actualRepay);
  }

  /// @notice Repays a certain amount of shares to the floating pool.
  /// @param borrowShares shares to be subtracted from the borrower's accountability.
  /// @param borrower address of the account that has the debt.
  /// @return assets subtracted assets from the borrower's accountability.
  /// @return actualShares actual subtracted shares from the borrower's accountability.
  function refund(
    uint256 borrowShares,
    address borrower
  ) external whenNotPaused returns (uint256 assets, uint256 actualShares) {
    (assets, actualShares) = noTransferRefund(borrowShares, borrower);
    emitMarketUpdate();
    asset.safeTransferFrom(msg.sender, address(this), assets);
  }

  /// @notice Allows to (partially) repay a floating borrow. It does not transfer assets.
  /// @param borrowShares shares to be subtracted from the borrower's accountability.
  /// @param borrower the address of the account that has the debt.
  /// @return assets the actual amount that should be transferred into the protocol.
  /// @return actualShares actual subtracted shares from the borrower's accountability.
  function noTransferRefund(
    uint256 borrowShares,
    address borrower
  ) internal returns (uint256 assets, uint256 actualShares) {
    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleBorrow(borrower);

    depositToTreasury(updateFloatingDebt());
    Account storage account = accounts[borrower];
    uint256 accountBorrowShares = account.floatingBorrowShares;
    actualShares = Math.min(borrowShares, accountBorrowShares);
    assets = previewRefund(actualShares);

    if (assets == 0) revert ZeroRepay();

    floatingDebt -= assets;
    account.floatingBorrowShares = accountBorrowShares - actualShares;
    totalFloatingBorrowShares -= actualShares;

    emit Repay(msg.sender, borrower, assets, actualShares);
  }

  /// @notice Deposits a certain amount to a maturity.
  /// @param maturity maturity date where the assets will be deposited.
  /// @param assets amount to receive from the msg.sender.
  /// @param minAssetsRequired minimum amount of assets required by the depositor for the transaction to be accepted.
  /// @param receiver address that will be able to withdraw the deposited assets.
  /// @return positionAssets total amount of assets (principal + fee) to be withdrawn at maturity.
  function depositAtMaturity(
    uint256 maturity,
    uint256 assets,
    uint256 minAssetsRequired,
    address receiver
  ) external whenNotPaused whenNotFrozen returns (uint256 positionAssets) {
    if (assets == 0) revert ZeroDeposit();
    // reverts on failure
    FixedLib.checkPoolState(maturity, maxFuturePools, FixedLib.State.VALID, FixedLib.State.NONE);

    FixedLib.Pool storage pool = fixedPools[maturity];

    uint256 backupEarnings = pool.accrueEarnings(maturity);
    depositToTreasury(updateFloatingDebt());
    floatingAssets += backupEarnings;

    (uint256 fee, uint256 backupFee) = pool.calculateDeposit(assets, backupFeeRate);
    positionAssets = assets + fee;
    if (positionAssets < minAssetsRequired) revert Disagreement();

    floatingBackupBorrowed -= pool.deposit(assets);
    pool.unassignedEarnings -= fee + backupFee;
    earningsAccumulator += backupFee;

    // update account's position
    FixedLib.Position storage position = fixedDepositPositions[maturity][receiver];

    // if account doesn't have a current position, add it to the list
    if (position.principal == 0) {
      Account storage account = accounts[receiver];
      account.fixedDeposits = account.fixedDeposits.setMaturity(maturity);
    }

    position.principal += assets;
    position.fee += fee;

    emit DepositAtMaturity(maturity, msg.sender, receiver, assets, fee);
    emitMarketUpdate();
    emitFixedEarningsUpdate(maturity);

    asset.safeTransferFrom(msg.sender, address(this), assets);
  }

  /// @notice Borrows a certain amount from a maturity.
  /// @param maturity maturity date for repayment.
  /// @param assets amount to be sent to receiver and repaid by borrower.
  /// @param maxAssets maximum amount of debt that the account is willing to accept.
  /// @param receiver address that will receive the borrowed assets.
  /// @param borrower address that will repay the borrowed assets.
  /// @return assetsOwed total amount of assets (principal + fee) to be repaid at maturity.
  function borrowAtMaturity(
    uint256 maturity,
    uint256 assets,
    uint256 maxAssets,
    address receiver,
    address borrower
  ) external whenNotPaused whenNotFrozen returns (uint256 assetsOwed) {
    if (assets == 0) revert ZeroBorrow();
    // reverts on failure
    FixedLib.checkPoolState(maturity, maxFuturePools, FixedLib.State.VALID, FixedLib.State.NONE);

    FixedLib.Pool storage pool = fixedPools[maturity];
    depositToTreasury(updateFloatingDebt());
    floatingAssets += pool.accrueEarnings(maturity);

    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleBorrow(borrower);

    {
      uint256 backupDebtAddition = pool.borrow(assets);
      if (backupDebtAddition != 0) {
        uint256 newFloatingBackupBorrowed = floatingBackupBorrowed + backupDebtAddition;
        if (newFloatingBackupBorrowed + floatingDebt > floatingAssets.mulWadDown(1e18 - reserveFactor)) {
          revert InsufficientProtocolLiquidity();
        }
        floatingBackupBorrowed = newFloatingBackupBorrowed;
      }
    }
    uint256 fee;
    {
      uint256 memFloatingAssetsAverage = previewFloatingAssetsAverage();
      uint256 memFloatingDebt = floatingDebt;
      uint256 fixedRate = interestRateModel.fixedRate(
        maturity,
        maxFuturePools,
        fixedUtilization(pool.supplied, pool.borrowed, memFloatingAssetsAverage),
        floatingUtilization(memFloatingAssetsAverage, memFloatingDebt),
        globalUtilization(memFloatingAssetsAverage, memFloatingDebt, floatingBackupBorrowed)
      );
      fee = assets.mulWadUp(fixedRate.mulDivDown(maturity - block.timestamp, 365 days));
    }
    assetsOwed = assets + fee;

    // validate that the account is not taking arbitrary fees
    if (assetsOwed > maxAssets) revert Disagreement();

    spendAllowance(borrower, assetsOwed);

    {
      // if account doesn't have a current position, add it to the list
      FixedLib.Position storage position = fixedBorrowPositions[maturity][borrower];
      if (position.principal == 0) {
        Account storage account = accounts[borrower];
        account.fixedBorrows = account.fixedBorrows.setMaturity(maturity);
      }

      // calculate what portion of the fees are to be accrued and what portion goes to earnings accumulator
      (uint256 newUnassignedEarnings, uint256 newBackupEarnings) = pool.distributeEarnings(
        chargeTreasuryFee(fee),
        assets
      );
      if (newUnassignedEarnings != 0) pool.unassignedEarnings += newUnassignedEarnings;
      collectFreeLunch(newBackupEarnings);

      fixedBorrowPositions[maturity][borrower] = FixedLib.Position(position.principal + assets, position.fee + fee);
    }

    emit BorrowAtMaturity(maturity, msg.sender, receiver, borrower, assets, fee);
    emitMarketUpdate();
    emitFixedEarningsUpdate(maturity);

    auditor.checkBorrow(this, borrower);
    asset.safeTransfer(receiver, assets);
  }

  /// @notice Withdraws a certain amount from a maturity.
  /// @param maturity maturity date where the assets will be withdrawn.
  /// @param positionAssets position size to be reduced.
  /// @param minAssetsRequired minimum amount required by the account (if discount included for early withdrawal).
  /// @param receiver address that will receive the withdrawn assets.
  /// @param owner address that previously deposited the assets.
  /// @return assetsDiscounted amount of assets withdrawn (can include a discount for early withdraw).
  function withdrawAtMaturity(
    uint256 maturity,
    uint256 positionAssets,
    uint256 minAssetsRequired,
    address receiver,
    address owner
  ) external whenNotPaused returns (uint256 assetsDiscounted) {
    if (positionAssets == 0) revert ZeroWithdraw();
    // reverts on failure
    FixedLib.checkPoolState(maturity, maxFuturePools, FixedLib.State.VALID, FixedLib.State.MATURED);

    FixedLib.Pool storage pool = fixedPools[maturity];
    depositToTreasury(updateFloatingDebt());
    floatingAssets += pool.accrueEarnings(maturity);

    FixedLib.Position memory position = fixedDepositPositions[maturity][owner];

    if (positionAssets > position.principal + position.fee) positionAssets = position.principal + position.fee;

    {
      // remove the supply from the fixed rate pool
      uint256 newFloatingBackupBorrowed = floatingBackupBorrowed +
        pool.withdraw(
          FixedLib.Position(position.principal, position.fee).scaleProportionally(positionAssets).principal
        );
      if (newFloatingBackupBorrowed + floatingDebt > floatingAssets) revert InsufficientProtocolLiquidity();
      floatingBackupBorrowed = newFloatingBackupBorrowed;
    }

    // verify if there are any penalties/fee for the account because of early withdrawal, if so discount
    if (block.timestamp < maturity) {
      uint256 memFloatingAssetsAverage = previewFloatingAssetsAverage();
      uint256 memFloatingDebt = floatingDebt;
      uint256 memFloatingBackupBorrowed = floatingBackupBorrowed;

      uint256 fixedRate = interestRateModel.fixedRate(
        maturity,
        maxFuturePools,
        fixedUtilization(pool.supplied, pool.borrowed, memFloatingAssetsAverage),
        floatingUtilization(memFloatingAssetsAverage, memFloatingDebt),
        globalUtilization(memFloatingAssetsAverage, memFloatingDebt, memFloatingBackupBorrowed)
      );
      assetsDiscounted = positionAssets.divWadDown(1e18 + fixedRate.mulDivDown(maturity - block.timestamp, 365 days));
    } else {
      assetsDiscounted = positionAssets;
    }

    if (assetsDiscounted < minAssetsRequired) revert Disagreement();

    spendAllowance(owner, assetsDiscounted);

    // all the fees go to unassigned or to the floating pool
    (uint256 unassignedEarnings, uint256 newBackupEarnings) = pool.distributeEarnings(
      chargeTreasuryFee(positionAssets - assetsDiscounted),
      assetsDiscounted
    );
    pool.unassignedEarnings += unassignedEarnings;
    collectFreeLunch(newBackupEarnings);

    // the account gets discounted the full amount
    position.reduceProportionally(positionAssets);
    if (position.principal | position.fee == 0) {
      delete fixedDepositPositions[maturity][owner];
      Account storage account = accounts[owner];
      account.fixedDeposits = account.fixedDeposits.clearMaturity(maturity);
    } else {
      // proportionally reduce the values
      fixedDepositPositions[maturity][owner] = position;
    }

    emit WithdrawAtMaturity(maturity, msg.sender, receiver, owner, positionAssets, assetsDiscounted);
    emitMarketUpdate();
    emitFixedEarningsUpdate(maturity);

    asset.safeTransfer(receiver, assetsDiscounted);
  }

  /// @notice Repays a certain amount to a maturity.
  /// @param maturity maturity date where the assets will be repaid.
  /// @param positionAssets amount to be paid for the borrower's debt.
  /// @param maxAssets maximum amount of debt that the account is willing to accept to be repaid.
  /// @param borrower address of the account that has the debt.
  /// @return actualRepayAssets the actual amount that was transferred into the protocol.
  function repayAtMaturity(
    uint256 maturity,
    uint256 positionAssets,
    uint256 maxAssets,
    address borrower
  ) external whenNotPaused returns (uint256 actualRepayAssets) {
    // reverts on failure
    FixedLib.checkPoolState(maturity, maxFuturePools, FixedLib.State.VALID, FixedLib.State.MATURED);

    actualRepayAssets = noTransferRepayAtMaturity(maturity, positionAssets, maxAssets, borrower, true);
    emitMarketUpdate();

    asset.safeTransferFrom(msg.sender, address(this), actualRepayAssets);
  }

  /// @notice Allows to (partially) repay a fixed rate position. It does not transfer assets.
  /// @param maturity the maturity to access the pool.
  /// @param positionAssets the amount of debt of the pool that should be paid.
  /// @param maxAssets maximum amount of debt that the account is willing to accept to be repaid.
  /// @param borrower the address of the account that has the debt.
  /// @param canDiscount should early repay discounts be applied.
  /// @return actualRepayAssets the actual amount that should be transferred into the protocol.
  function noTransferRepayAtMaturity(
    uint256 maturity,
    uint256 positionAssets,
    uint256 maxAssets,
    address borrower,
    bool canDiscount
  ) internal returns (uint256 actualRepayAssets) {
    if (positionAssets == 0) revert ZeroRepay();

    FixedLib.Pool storage pool = fixedPools[maturity];

    uint256 backupEarnings = pool.accrueEarnings(maturity);
    depositToTreasury(updateFloatingDebt());
    floatingAssets += backupEarnings;

    FixedLib.Position memory position = fixedBorrowPositions[maturity][borrower];

    uint256 debtCovered = Math.min(positionAssets, position.principal + position.fee);

    uint256 principalCovered = FixedLib
      .Position(position.principal, position.fee)
      .scaleProportionally(debtCovered)
      .principal;

    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleBorrow(borrower);

    // early repayment allows a discount from the unassigned earnings
    if (block.timestamp < maturity) {
      // calculate the deposit fee considering the amount of debt the account'll pay
      (uint256 discountFee, uint256 backupFee) = pool.calculateDeposit(principalCovered, backupFeeRate);

      // remove the fee from unassigned earnings
      pool.unassignedEarnings -= discountFee + backupFee;
      if (canDiscount) {
        // the fee charged to the fixed pool supplier goes to the earnings accumulator
        earningsAccumulator += backupFee;

        // the fee gets discounted from the account through `actualRepayAssets`
        actualRepayAssets = debtCovered - discountFee;
      } else {
        // all fees go to the earnings accumulator
        earningsAccumulator += discountFee + backupFee;

        // there is no discount due to liquidation
        actualRepayAssets = debtCovered;
      }
    } else {
      actualRepayAssets = debtCovered + debtCovered.mulWadDown((block.timestamp - maturity) * penaltyRate);

      // all penalties go to the earnings accumulator
      earningsAccumulator += actualRepayAssets - debtCovered;
    }

    // verify that the account agrees to this discount or penalty
    if (actualRepayAssets > maxAssets) revert Disagreement();

    // reduce the borrowed from the pool and might decrease the floating backup borrowed
    floatingBackupBorrowed -= pool.repay(principalCovered);

    // update the account position
    position.reduceProportionally(debtCovered);
    if (position.principal | position.fee == 0) {
      delete fixedBorrowPositions[maturity][borrower];
      Account storage account = accounts[borrower];
      account.fixedBorrows = account.fixedBorrows.clearMaturity(maturity);
    } else {
      // proportionally reduce the values
      fixedBorrowPositions[maturity][borrower] = position;
    }

    emit RepayAtMaturity(maturity, msg.sender, borrower, actualRepayAssets, debtCovered);
    emitFixedEarningsUpdate(maturity);
  }

  /// @notice Liquidates undercollateralized fixed/floating (or both) position(s).
  /// @dev Msg.sender liquidates borrower's position(s) and repays a certain amount of debt for the floating pool,
  /// or/and for multiple fixed pools, seizing a portion of borrower's collateral.
  /// @param borrower account that has an outstanding debt across floating or fixed pools.
  /// @param maxAssets maximum amount of debt that the liquidator is willing to accept. (it can be less)
  /// @param seizeMarket market from which the collateral will be seized to give to the liquidator.
  /// @return repaidAssets actual amount repaid.
  function liquidate(
    address borrower,
    uint256 maxAssets,
    Market seizeMarket
  ) external whenNotPaused returns (uint256 repaidAssets) {
    if (msg.sender == borrower) revert SelfLiquidation();
    floatingAssets += accrueAccumulatedEarnings();

    maxAssets = auditor.checkLiquidation(this, seizeMarket, borrower, maxAssets);
    if (maxAssets == 0) revert ZeroRepay();

    Account storage account = accounts[borrower];

    {
      uint256 packedMaturities = account.fixedBorrows;
      uint256 maturity = packedMaturities & ((1 << 32) - 1);
      packedMaturities = packedMaturities >> 32;
      while (packedMaturities != 0 && maxAssets != 0) {
        if (packedMaturities & 1 != 0) {
          uint256 actualRepay;
          if (block.timestamp < maturity) {
            actualRepay = noTransferRepayAtMaturity(maturity, maxAssets, maxAssets, borrower, false);
            maxAssets -= actualRepay;
          } else {
            uint256 position;
            {
              FixedLib.Position storage p = fixedBorrowPositions[maturity][borrower];
              position = p.principal + p.fee;
            }
            uint256 debt = position + position.mulWadDown((block.timestamp - maturity) * penaltyRate);
            actualRepay = debt > maxAssets ? maxAssets.mulDivDown(position, debt) : maxAssets;

            if (actualRepay == 0) maxAssets = 0;
            else {
              actualRepay = noTransferRepayAtMaturity(maturity, actualRepay, maxAssets, borrower, false);
              maxAssets -= actualRepay;
            }
          }
          repaidAssets += actualRepay;
        }
        packedMaturities >>= 1;
        maturity += FixedLib.INTERVAL;
      }
    }

    if (maxAssets != 0 && account.floatingBorrowShares != 0) {
      uint256 borrowShares = previewRepay(maxAssets);
      if (borrowShares != 0) {
        (uint256 actualRepayAssets, ) = noTransferRefund(borrowShares, borrower);
        repaidAssets += actualRepayAssets;
      }
    }

    // reverts on failure
    (uint256 lendersAssets, uint256 seizeAssets) = auditor.calculateSeize(this, seizeMarket, borrower, repaidAssets);
    earningsAccumulator += lendersAssets;

    asset.safeTransferFrom(msg.sender, address(this), repaidAssets + lendersAssets);

    if (address(seizeMarket) == address(this)) {
      internalSeize(this, msg.sender, borrower, seizeAssets);
    } else {
      seizeMarket.seize(msg.sender, borrower, seizeAssets);

      emitMarketUpdate();
    }

    emit Liquidate(msg.sender, borrower, repaidAssets, lendersAssets, seizeMarket, seizeAssets);

    auditor.handleBadDebt(borrower);
  }

  /// @notice Clears floating and fixed debt for an account spreading the losses to the `earningsAccumulator`.
  /// @dev Can only be called from the auditor.
  /// @param borrower account with insufficient collateral to be cleared the debt.
  function clearBadDebt(address borrower) external {
    if (msg.sender != address(auditor)) revert NotAuditor();

    floatingAssets += accrueAccumulatedEarnings();
    Account storage account = accounts[borrower];
    uint256 accumulator = earningsAccumulator;
    uint256 totalBadDebt = 0;
    uint256 packedMaturities = account.fixedBorrows;
    uint256 maturity = packedMaturities & ((1 << 32) - 1);
    packedMaturities = packedMaturities >> 32;
    while (packedMaturities != 0) {
      if (packedMaturities & 1 != 0) {
        FixedLib.Position storage position = fixedBorrowPositions[maturity][borrower];
        uint256 badDebt = position.principal + position.fee;
        if (accumulator >= badDebt) {
          RewardsController memRewardsController = rewardsController;
          if (address(memRewardsController) != address(0)) memRewardsController.handleBorrow(borrower);
          accumulator -= badDebt;
          totalBadDebt += badDebt;
          uint256 backupDebtReduction = fixedPools[maturity].repay(position.principal);

          if (backupDebtReduction != 0) {
            floatingBackupBorrowed -= backupDebtReduction;
            uint256 yield = fixedPools[maturity].unassignedEarnings.mulDivDown(
              Math.min(position.principal, backupDebtReduction),
              backupDebtReduction
            );
            fixedPools[maturity].unassignedEarnings -= yield;
            earningsAccumulator += yield;
            accumulator += yield;
          }

          delete fixedBorrowPositions[maturity][borrower];
          account.fixedBorrows = account.fixedBorrows.clearMaturity(maturity);

          emit RepayAtMaturity(maturity, msg.sender, borrower, badDebt, badDebt);
        }
      }
      packedMaturities >>= 1;
      maturity += FixedLib.INTERVAL;
    }
    if (account.floatingBorrowShares != 0 && (accumulator = previewRepay(accumulator)) != 0) {
      (uint256 badDebt, ) = noTransferRefund(accumulator, borrower);
      totalBadDebt += badDebt;
    }
    if (totalBadDebt != 0) {
      earningsAccumulator -= totalBadDebt;
      emit SpreadBadDebt(borrower, totalBadDebt);
    }
    emitMarketUpdate();
  }

  /// @notice Public function to seize a certain amount of assets.
  /// @dev Public function for liquidator to seize borrowers assets in the floating pool.
  /// This function will only be called from another Market, on `liquidation` calls.
  /// That's why msg.sender needs to be passed to the internal function (to be validated as a Market).
  /// @param liquidator address which will receive the seized assets.
  /// @param borrower address from which the assets will be seized.
  /// @param assets amount to be removed from borrower's possession.
  function seize(address liquidator, address borrower, uint256 assets) external whenNotPaused {
    internalSeize(Market(msg.sender), liquidator, borrower, assets);
  }

  /// @notice Internal function to seize a certain amount of assets.
  /// @dev Internal function for liquidator to seize borrowers assets in the floating pool.
  /// Will only be called from this Market on `liquidation` or through `seize` calls from another Market.
  /// That's why msg.sender needs to be passed to the internal function (to be validated as a Market).
  /// @param seizeMarket address which is calling the seize function (see `seize` public function).
  /// @param liquidator address which will receive the seized assets.
  /// @param borrower address from which the assets will be seized.
  /// @param assets amount to be removed from borrower's possession.
  function internalSeize(Market seizeMarket, address liquidator, address borrower, uint256 assets) internal {
    if (assets == 0) revert ZeroWithdraw();

    // reverts on failure
    auditor.checkSeize(seizeMarket, this);

    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleDeposit(borrower);
    uint256 shares = previewWithdraw(assets);
    beforeWithdraw(assets, shares);
    _burn(borrower, shares);
    emit Withdraw(msg.sender, liquidator, borrower, assets, shares);
    emit Seize(liquidator, borrower, assets);
    emitMarketUpdate();

    asset.safeTransfer(liquidator, assets);
  }

  /// @notice Hook to update the floating pool average, floating pool balance and distribute earnings from accumulator.
  /// @param assets amount of assets to be withdrawn from the floating pool.
  function beforeWithdraw(uint256 assets, uint256) internal override whenNotPaused {
    updateFloatingAssetsAverage();
    depositToTreasury(updateFloatingDebt());
    uint256 earnings = accrueAccumulatedEarnings();
    uint256 newFloatingAssets = floatingAssets + earnings - assets;
    // check if the underlying liquidity that the account wants to withdraw is borrowed
    if (floatingBackupBorrowed + floatingDebt > newFloatingAssets) revert InsufficientProtocolLiquidity();
    floatingAssets = newFloatingAssets;
  }

  /// @notice Hook to update the floating pool average, floating pool balance and distribute earnings from accumulator.
  /// @param assets amount of assets to be deposited to the floating pool.
  function afterDeposit(uint256 assets, uint256) internal override whenNotPaused whenNotFrozen {
    updateFloatingAssetsAverage();
    uint256 treasuryFee = updateFloatingDebt();
    uint256 earnings = accrueAccumulatedEarnings();
    floatingAssets += earnings + assets;
    depositToTreasury(treasuryFee);
    emitMarketUpdate();
  }

  /// @notice Withdraws the owner's floating pool assets to the receiver address.
  /// @dev Makes sure that the owner doesn't have shortfall after withdrawing.
  /// @param assets amount of underlying to be withdrawn.
  /// @param receiver address to which the assets will be transferred.
  /// @param owner address which owns the floating pool assets.
  /// @return shares amount of shares redeemed for underlying asset.
  function withdraw(uint256 assets, address receiver, address owner) public override returns (uint256 shares) {
    auditor.checkShortfall(this, owner, assets);
    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleDeposit(owner);
    shares = super.withdraw(assets, receiver, owner);
    emitMarketUpdate();
  }

  /// @notice Redeems the owner's floating pool assets to the receiver address.
  /// @dev Makes sure that the owner doesn't have shortfall after withdrawing.
  /// @param shares amount of shares to be redeemed for underlying asset.
  /// @param receiver address to which the assets will be transferred.
  /// @param owner address which owns the floating pool assets.
  /// @return assets amount of underlying asset that was withdrawn.
  function redeem(uint256 shares, address receiver, address owner) public override returns (uint256 assets) {
    auditor.checkShortfall(this, owner, previewRedeem(shares));
    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleDeposit(owner);
    assets = super.redeem(shares, receiver, owner);
    emitMarketUpdate();
  }

  function _mint(address to, uint256 amount) internal override {
    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) memRewardsController.handleDeposit(to);
    super._mint(to, amount);
  }

  /// @notice Moves amount of shares from the caller's account to `to`.
  /// @dev Makes sure that the caller doesn't have shortfall after transferring.
  /// @param to address to which the assets will be transferred.
  /// @param shares amount of shares to be transferred.
  function transfer(address to, uint256 shares) public override whenNotPaused returns (bool) {
    auditor.checkShortfall(this, msg.sender, previewRedeem(shares));
    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) {
      memRewardsController.handleDeposit(msg.sender);
      memRewardsController.handleDeposit(to);
    }
    return super.transfer(to, shares);
  }

  /// @notice Moves amount of shares from `from` to `to` using the allowance mechanism.
  /// @dev Makes sure that `from` address doesn't have shortfall after transferring.
  /// @param from address from which the assets will be transferred.
  /// @param to address to which the assets will be transferred.
  /// @param shares amount of shares to be transferred.
  function transferFrom(address from, address to, uint256 shares) public override whenNotPaused returns (bool) {
    auditor.checkShortfall(this, from, previewRedeem(shares));
    RewardsController memRewardsController = rewardsController;
    if (address(memRewardsController) != address(0)) {
      memRewardsController.handleDeposit(from);
      memRewardsController.handleDeposit(to);
    }
    return super.transferFrom(from, to, shares);
  }

  /// @notice Gets current snapshot for an account across all maturities.
  /// @param account account to return status snapshot in the specified maturity date.
  /// @return the amount deposited to the floating pool and the amount owed to floating and fixed pools.
  function accountSnapshot(address account) external view returns (uint256, uint256) {
    return (convertToAssets(balanceOf[account]), previewDebt(account));
  }

  /// @notice Gets all borrows and penalties for an account.
  /// @param borrower account to return status snapshot for fixed and floating borrows.
  /// @return debt the total debt, denominated in number of assets.
  function previewDebt(address borrower) public view returns (uint256 debt) {
    Account storage account = accounts[borrower];
    uint256 memPenaltyRate = penaltyRate;
    uint256 packedMaturities = account.fixedBorrows;
    uint256 maturity = packedMaturities & ((1 << 32) - 1);
    packedMaturities = packedMaturities >> 32;
    // calculate all maturities using the base maturity and the following bits representing the following intervals
    while (packedMaturities != 0) {
      if (packedMaturities & 1 != 0) {
        FixedLib.Position storage position = fixedBorrowPositions[maturity][borrower];
        uint256 positionAssets = position.principal + position.fee;

        debt += positionAssets;

        if (block.timestamp > maturity) {
          debt += positionAssets.mulWadDown((block.timestamp - maturity) * memPenaltyRate);
        }
      }
      packedMaturities >>= 1;
      maturity += FixedLib.INTERVAL;
    }
    // calculate floating borrowed debt
    uint256 shares = account.floatingBorrowShares;
    if (shares != 0) debt += previewRefund(shares);
  }

  /// @notice Charges treasury fee to certain amount of earnings.
  /// @param earnings amount of earnings.
  /// @return earnings minus the fees charged by the treasury.
  function chargeTreasuryFee(uint256 earnings) internal returns (uint256) {
    uint256 fee = earnings.mulWadDown(treasuryFeeRate);
    depositToTreasury(fee);
    return earnings - fee;
  }

  /// @notice Collects all earnings that are charged to borrowers that make use of fixed pool deposits' assets.
  /// @param earnings amount of earnings.
  function collectFreeLunch(uint256 earnings) internal {
    if (earnings == 0) return;

    if (treasuryFeeRate != 0) {
      depositToTreasury(earnings);
    } else {
      earningsAccumulator += earnings;
    }
  }

  /// @notice Deposits amount of assets on behalf of the treasury address.
  /// @param fee amount of assets to be deposited.
  function depositToTreasury(uint256 fee) internal {
    if (fee != 0) {
      _mint(treasury, previewDeposit(fee));
      floatingAssets += fee;
    }
  }

  /// @notice Calculates the earnings to be distributed from the accumulator given the current timestamp.
  /// @return earnings to be distributed from the accumulator.
  function accumulatedEarnings() internal view returns (uint256 earnings) {
    uint256 elapsed = block.timestamp - lastAccumulatorAccrual;
    if (elapsed == 0) return 0;
    return
      earningsAccumulator.mulDivDown(
        elapsed,
        elapsed + earningsAccumulatorSmoothFactor.mulWadDown(maxFuturePools * FixedLib.INTERVAL)
      );
  }

  /// @notice Accrues the earnings to be distributed from the accumulator given the current timestamp.
  /// @return earnings distributed from the accumulator.
  function accrueAccumulatedEarnings() internal returns (uint256 earnings) {
    earnings = accumulatedEarnings();

    earningsAccumulator -= earnings;
    lastAccumulatorAccrual = uint32(block.timestamp);
    emit AccumulatorAccrual(block.timestamp);
  }

  /// @notice Updates the `floatingAssetsAverage`.
  function updateFloatingAssetsAverage() internal {
    floatingAssetsAverage = previewFloatingAssetsAverage();
    lastAverageUpdate = uint32(block.timestamp);
  }

  /// @notice Returns the current `floatingAssetsAverage` without updating the storage variable.
  /// @return projected `floatingAssetsAverage`.
  function previewFloatingAssetsAverage() public view returns (uint256) {
    uint256 memFloatingAssets = floatingAssets;
    uint256 memFloatingAssetsAverage = floatingAssetsAverage;
    uint256 dampSpeedFactor = memFloatingAssets < memFloatingAssetsAverage ? dampSpeedDown : dampSpeedUp;
    uint256 averageFactor = uint256(1e18 - (-int256(dampSpeedFactor * (block.timestamp - lastAverageUpdate))).expWad());
    return memFloatingAssetsAverage.mulWadDown(1e18 - averageFactor) + averageFactor.mulWadDown(memFloatingAssets);
  }

  /// @notice Updates the floating pool borrows' variables.
  /// @return treasuryFee amount of fees charged by the treasury to the new calculated floating debt.
  function updateFloatingDebt() internal returns (uint256 treasuryFee) {
    uint256 memFloatingDebt = floatingDebt;
    uint256 memFloatingAssets = floatingAssets;
    uint256 utilization = floatingUtilization(memFloatingAssets, memFloatingDebt);
    uint256 newDebt = memFloatingDebt.mulWadDown(
      interestRateModel
        .floatingRate(utilization, globalUtilization(memFloatingAssets, memFloatingDebt, floatingBackupBorrowed))
        .mulDivDown(block.timestamp - lastFloatingDebtUpdate, 365 days)
    );

    memFloatingDebt += newDebt;
    treasuryFee = newDebt.mulWadDown(treasuryFeeRate);
    floatingAssets = memFloatingAssets + newDebt - treasuryFee;
    floatingDebt = memFloatingDebt;
    lastFloatingDebtUpdate = uint32(block.timestamp);
    emit FloatingDebtUpdate(block.timestamp, utilization);
  }

  /// @notice Calculates the total floating debt, considering elapsed time since last update and current interest rate.
  /// @return actual floating debt plus projected interest.
  function totalFloatingBorrowAssets() public view returns (uint256) {
    uint256 memFloatingDebt = floatingDebt;
    uint256 memFloatingAssets = floatingAssets;
    uint256 newDebt = memFloatingDebt.mulWadDown(
      interestRateModel
        .floatingRate(
          floatingUtilization(memFloatingAssets, memFloatingDebt),
          globalUtilization(memFloatingAssets, memFloatingDebt, floatingBackupBorrowed)
        )
        .mulDivDown(block.timestamp - lastFloatingDebtUpdate, 365 days)
    );
    return memFloatingDebt + newDebt;
  }

  /// @notice Calculates the floating pool balance plus earnings to be accrued at current timestamp
  /// from maturities and accumulator.
  /// @return actual floatingAssets plus earnings to be accrued at current timestamp.
  function totalAssets() public view override returns (uint256) {
    unchecked {
      uint256 backupEarnings = 0;

      uint256 latestMaturity = block.timestamp - (block.timestamp % FixedLib.INTERVAL);
      uint256 maxMaturity = latestMaturity + maxFuturePools * FixedLib.INTERVAL;

      for (uint256 maturity = latestMaturity; maturity <= maxMaturity; maturity += FixedLib.INTERVAL) {
        FixedLib.Pool storage pool = fixedPools[maturity];
        uint256 lastAccrual = pool.lastAccrual;

        if (maturity > lastAccrual) {
          backupEarnings += block.timestamp < maturity
            ? pool.unassignedEarnings.mulDivDown(block.timestamp - lastAccrual, maturity - lastAccrual)
            : pool.unassignedEarnings;
        }
      }

      return
        floatingAssets +
        backupEarnings +
        accumulatedEarnings() +
        (totalFloatingBorrowAssets() - floatingDebt).mulWadDown(1e18 - treasuryFeeRate);
    }
  }

  /// @notice Simulates the effects of a borrow at the current time, given current contract conditions.
  /// @param assets amount of assets to borrow.
  /// @return amount of shares that will be asigned to the account after the borrow.
  function previewBorrow(uint256 assets) public view returns (uint256) {
    uint256 supply = totalFloatingBorrowShares; // Saves an extra SLOAD if totalFloatingBorrowShares is non-zero.

    return supply == 0 ? assets : assets.mulDivUp(supply, totalFloatingBorrowAssets());
  }

  /// @notice Simulates the effects of a repay at the current time, given current contract conditions.
  /// @param assets amount of assets to repay.
  /// @return amount of shares that will be subtracted from the account after the repay.
  function previewRepay(uint256 assets) public view returns (uint256) {
    uint256 supply = totalFloatingBorrowShares; // Saves an extra SLOAD if totalFloatingBorrowShares is non-zero.

    return supply == 0 ? assets : assets.mulDivDown(supply, totalFloatingBorrowAssets());
  }

  /// @notice Simulates the effects of a refund at the current time, given current contract conditions.
  /// @param shares amount of shares to subtract from caller's accountability.
  /// @return amount of assets that will be repaid.
  function previewRefund(uint256 shares) public view returns (uint256) {
    uint256 supply = totalFloatingBorrowShares; // Saves an extra SLOAD if totalFloatingBorrowShares is non-zero.

    return supply == 0 ? shares : shares.mulDivUp(totalFloatingBorrowAssets(), supply);
  }

  /// @notice Checks msg.sender's allowance over account's assets.
  /// @param account account in which the allowance will be checked.
  /// @param assets assets from account that msg.sender wants to operate on.
  function spendAllowance(address account, uint256 assets) internal {
    if (msg.sender != account) {
      uint256 allowed = allowance[account][msg.sender]; // saves gas for limited approvals.

      if (allowed != type(uint256).max) allowance[account][msg.sender] = allowed - previewWithdraw(assets);
    }
  }

  /// @notice Retrieves a fixed pool's borrowed amount.
  /// @param maturity maturity date of the fixed pool.
  /// @return borrowed amount of the fixed pool.
  function fixedPoolBorrowed(uint256 maturity) external view returns (uint256) {
    return fixedPools[maturity].borrowed;
  }

  /// @notice Retrieves a fixed pool's borrowed and supplied amount.
  /// @param maturity maturity date of the fixed pool.
  /// @return borrowed and supplied amount of the fixed pool.
  function fixedPoolBalance(uint256 maturity) external view returns (uint256, uint256) {
    return (fixedPools[maturity].borrowed, fixedPools[maturity].supplied);
  }

  /// @notice Retrieves fixed utilization of the floating pool.
  /// @dev Internal function to avoid code duplication.
  function fixedUtilization(uint256 supplied, uint256 borrowed, uint256 assets) internal pure returns (uint256) {
    return assets != 0 && borrowed > supplied ? (borrowed - supplied).divWadUp(assets) : 0;
  }

  /// @notice Retrieves global utilization of the floating pool.
  /// @dev Internal function to avoid code duplication.
  function globalUtilization(uint256 assets, uint256 debt, uint256 backupBorrowed) internal pure returns (uint256) {
    return assets != 0 ? (debt + backupBorrowed).divWadUp(assets) : 0;
  }

  /// @notice Retrieves floating utilization of the floating pool.
  /// @dev Internal function to avoid code duplication.
  function floatingUtilization(uint256 assets, uint256 debt) internal pure returns (uint256) {
    return assets != 0 ? debt.divWadUp(assets) : 0;
  }

  /// @notice Emits MarketUpdate event.
  /// @dev Internal function to avoid code duplication.
  function emitMarketUpdate() internal {
    emit MarketUpdate(
      block.timestamp,
      totalSupply,
      floatingAssets,
      totalFloatingBorrowShares,
      floatingDebt,
      earningsAccumulator
    );
  }

  /// @notice Emits FixedEarningsUpdate event.
  /// @dev Internal function to avoid code duplication.
  function emitFixedEarningsUpdate(uint256 maturity) internal {
    emit FixedEarningsUpdate(block.timestamp, maturity, fixedPools[maturity].unassignedEarnings);
  }

  /// @notice Sets name and symbol for the Market.
  /// @param assetSymbol the symbol for the underlying asset.
  function setAssetSymbol(string calldata assetSymbol) public onlyRole(DEFAULT_ADMIN_ROLE) {
    name = string.concat("exactly ", assetSymbol);
    symbol = string.concat("exa", assetSymbol);
  }

  /// @notice Sets the rate charged to the fixed depositors that the floating pool suppliers will retain for initially
  /// providing liquidity.
  /// @param backupFeeRate_ percentage amount represented with 18 decimals.
  function setBackupFeeRate(uint256 backupFeeRate_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    backupFeeRate = backupFeeRate_;
    emit BackupFeeRateSet(backupFeeRate_);
  }

  /// @notice Sets the damp speed used to update the floatingAssetsAverage.
  /// @param up damp speed up, represented with 18 decimals.
  /// @param down damp speed down, represented with 18 decimals.
  function setDampSpeed(uint256 up, uint256 down) public onlyRole(DEFAULT_ADMIN_ROLE) {
    updateFloatingAssetsAverage();
    dampSpeedUp = up;
    dampSpeedDown = down;
    emit DampSpeedSet(up, down);
  }

  /// @notice Sets the factor used when smoothly accruing earnings to the floating pool.
  /// @param earningsAccumulatorSmoothFactor_ represented with 18 decimals.
  function setEarningsAccumulatorSmoothFactor(
    uint128 earningsAccumulatorSmoothFactor_
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    floatingAssets += accrueAccumulatedEarnings();
    emitMarketUpdate();
    earningsAccumulatorSmoothFactor = earningsAccumulatorSmoothFactor_;
    emit EarningsAccumulatorSmoothFactorSet(earningsAccumulatorSmoothFactor_);
  }

  /// @notice Sets the interest rate model to be used to calculate rates.
  /// @param interestRateModel_ new interest rate model.
  function setInterestRateModel(InterestRateModel interestRateModel_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (address(interestRateModel) != address(0)) depositToTreasury(updateFloatingDebt());

    interestRateModel = interestRateModel_;
    emitMarketUpdate();
    emit InterestRateModelSet(interestRateModel_);
  }

  /// @notice Sets the rewards controller to update account rewards when operating with the Market.
  /// @param rewardsController_ new rewards controller.
  function setRewardsController(RewardsController rewardsController_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    rewardsController = rewardsController_;
    emit RewardsControllerSet(rewardsController_);
  }

  /// @notice Sets the protocol's max future pools for fixed borrowing and lending.
  /// @dev If value is decreased, VALID maturities will become NOT_READY.
  /// @param futurePools number of pools to be active at the same time.
  function setMaxFuturePools(uint8 futurePools) public onlyRole(DEFAULT_ADMIN_ROLE) {
    maxFuturePools = futurePools;
    emit MaxFuturePoolsSet(futurePools);
  }

  /// @notice Sets the penalty rate per second.
  /// @param penaltyRate_ percentage represented with 18 decimals.
  function setPenaltyRate(uint256 penaltyRate_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    penaltyRate = penaltyRate_;
    emit PenaltyRateSet(penaltyRate_);
  }

  /// @notice Sets the percentage that represents the liquidity reserves that can't be borrowed.
  /// @param reserveFactor_ parameter represented with 18 decimals.
  function setReserveFactor(uint128 reserveFactor_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    reserveFactor = reserveFactor_;
    emit ReserveFactorSet(reserveFactor_);
  }

  /// @notice Sets the treasury variables.
  /// @param treasury_ address of the treasury that will receive the minted eTokens.
  /// @param treasuryFeeRate_ represented with 18 decimals.
  function setTreasury(address treasury_, uint256 treasuryFeeRate_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    depositToTreasury(updateFloatingDebt());
    treasury = treasury_;
    treasuryFeeRate = treasuryFeeRate_;
    emit TreasurySet(treasury_, treasuryFeeRate_);
  }

  /// @notice Sets the pause state to true in case of emergency, triggered by an authorized account.
  function pause() external onlyPausingRoles {
    _pause();
  }

  /// @notice Sets the pause state to false when threat is gone, triggered by an authorized account.
  function unpause() external onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  /// @notice Sets `isFrozen` state, triggered by an authorized account.
  function setFrozen(bool isFrozen_) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (isFrozen == isFrozen_) return;
    isFrozen = isFrozen_;
    emit Frozen(msg.sender, isFrozen_);
  }

  /// @dev Throws if the market is frozen.
  function requireNotFrozen() internal view {
    if (isFrozen) revert MarketFrozen();
  }

  /// @dev Modifier to make a function callable only when the market is not frozen.
  modifier whenNotFrozen() {
    requireNotFrozen();
    _;
  }

  /// @dev Throws if the caller is not an `EMERGENCY_ADMIN_ROLE` or `PAUSER_ROLE`.
  function requirePausingRoles() internal view {
    if (!hasRole(EMERGENCY_ADMIN_ROLE, msg.sender) && !hasRole(PAUSER_ROLE, msg.sender)) {
      revert NotPausingRole();
    }
  }

  /// @dev Modifier to make a function callable only by pausing roles.
  modifier onlyPausingRoles() {
    requirePausingRoles();
    _;
  }

  /// @notice Event emitted when an account borrows amount of assets from a floating pool.
  /// @param caller address which borrowed the asset.
  /// @param receiver address that received the borrowed assets.
  /// @param borrower address which will be repaying the borrowed assets.
  /// @param assets amount of assets that were borrowed.
  /// @param shares amount of borrow shares assigned to the account.
  event Borrow(
    address indexed caller,
    address indexed receiver,
    address indexed borrower,
    uint256 assets,
    uint256 shares
  );

  /// @notice Emitted when an account repays amount of assets to a floating pool.
  /// @param caller address which repaid the previously borrowed amount.
  /// @param borrower address which had the original debt.
  /// @param assets amount of assets that was repaid.
  /// @param shares amount of borrow shares that were subtracted from the account's accountability.
  event Repay(address indexed caller, address indexed borrower, uint256 assets, uint256 shares);

  /// @notice Emitted when an account deposits an amount of an asset to a certain fixed rate pool,
  /// collecting fees at the end of the period.
  /// @param maturity maturity at which the account will be able to collect his deposit + his fee.
  /// @param caller address which deposited the assets.
  /// @param owner address that will be able to withdraw the deposited assets.
  /// @param assets amount of the asset that were deposited.
  /// @param fee is the extra amount that it will be collected at maturity.
  event DepositAtMaturity(
    uint256 indexed maturity,
    address indexed caller,
    address indexed owner,
    uint256 assets,
    uint256 fee
  );

  /// @notice Emitted when an account withdraws from a fixed rate pool.
  /// @param maturity maturity where the account withdraw its deposits.
  /// @param caller address which withdraw the asset.
  /// @param receiver address which will be collecting the assets.
  /// @param owner address which had the assets withdrawn.
  /// @param positionAssets position size reduced.
  /// @param assets amount of assets withdrawn (can include a discount for early withdraw).
  event WithdrawAtMaturity(
    uint256 indexed maturity,
    address caller,
    address indexed receiver,
    address indexed owner,
    uint256 positionAssets,
    uint256 assets
  );

  /// @notice Emitted when an account borrows amount of an asset from a certain maturity date.
  /// @param maturity maturity in which the account will have to repay the loan.
  /// @param caller address which borrowed the asset.
  /// @param receiver address that received the borrowed assets.
  /// @param borrower address which will be repaying the borrowed assets.
  /// @param assets amount of the asset that were borrowed.
  /// @param fee extra amount that will need to be paid at maturity.
  event BorrowAtMaturity(
    uint256 indexed maturity,
    address caller,
    address indexed receiver,
    address indexed borrower,
    uint256 assets,
    uint256 fee
  );

  /// @notice Emitted when an account repays its borrows after maturity.
  /// @param maturity maturity where the account repaid its borrowed amounts.
  /// @param caller address which repaid the previously borrowed amount.
  /// @param borrower address which had the original debt.
  /// @param assets amount that was repaid.
  /// @param positionAssets amount of the debt that was covered in this repayment (penalties could have been repaid).
  event RepayAtMaturity(
    uint256 indexed maturity,
    address indexed caller,
    address indexed borrower,
    uint256 assets,
    uint256 positionAssets
  );

  /// @notice Emitted when an account's position had a liquidation.
  /// @param receiver address which repaid the previously borrowed amount.
  /// @param borrower address which had the original debt.
  /// @param assets amount of the asset that were repaid.
  /// @param lendersAssets incentive paid to lenders.
  /// @param seizeMarket address of the asset that were seized by the liquidator.
  /// @param seizedAssets amount seized of the collateral.
  event Liquidate(
    address indexed receiver,
    address indexed borrower,
    uint256 assets,
    uint256 lendersAssets,
    Market indexed seizeMarket,
    uint256 seizedAssets
  );

  /// @notice Emitted when an account's collateral has been seized.
  /// @param liquidator address which seized this collateral.
  /// @param borrower address which had the original debt.
  /// @param assets amount seized of the collateral.
  event Seize(address indexed liquidator, address indexed borrower, uint256 assets);

  /// @notice Emitted when an account is cleared from bad debt.
  /// @param borrower address which was cleared from bad debt.
  /// @param assets amount that was subtracted from the borrower's debt and spread to the `earningsAccumulator`.
  event SpreadBadDebt(address indexed borrower, uint256 assets);

  /// @notice Emitted when the backupFeeRate parameter is changed by admin.
  /// @param backupFeeRate rate charged to the fixed pools to be accrued by the floating depositors.
  event BackupFeeRateSet(uint256 backupFeeRate);

  /// @notice Emitted when the damp speeds are changed by admin.
  /// @param dampSpeedUp represented with 18 decimals.
  /// @param dampSpeedDown represented with 18 decimals.
  event DampSpeedSet(uint256 dampSpeedUp, uint256 dampSpeedDown);

  /// @notice Emitted when the earningsAccumulatorSmoothFactor is changed by admin.
  /// @param earningsAccumulatorSmoothFactor factor represented with 18 decimals.
  event EarningsAccumulatorSmoothFactorSet(uint256 earningsAccumulatorSmoothFactor);

  /// @notice Emitted when the interestRateModel is changed by admin.
  /// @param interestRateModel new interest rate model to be used to calculate rates.
  event InterestRateModelSet(InterestRateModel indexed interestRateModel);

  /// @notice Emitted when the maxFuturePools is changed by admin.
  /// @param maxFuturePools represented with 0 decimals.
  event MaxFuturePoolsSet(uint256 maxFuturePools);

  /// @notice Emitted when the penaltyRate is changed by admin.
  /// @param penaltyRate penaltyRate percentage per second represented with 18 decimals.
  event PenaltyRateSet(uint256 penaltyRate);

  /// @notice Emitted when the reserveFactor is changed by admin.
  /// @param reserveFactor reserveFactor percentage.
  event ReserveFactorSet(uint256 reserveFactor);

  /// @notice Emitted when the treasury variables are changed by admin.
  /// @param treasury address of the treasury that will receive the minted eTokens.
  /// @param treasuryFeeRate represented with 18 decimals.
  event TreasurySet(address indexed treasury, uint256 treasuryFeeRate);

  /// @notice Emitted when the rewardsController is changed by admin.
  /// @param rewardsController new rewards controller to update account rewards when operating with the Market.
  event RewardsControllerSet(RewardsController indexed rewardsController);

  /// @notice Emitted when market state is updated.
  /// @param timestamp current timestamp.
  /// @param floatingDepositShares total floating supply shares.
  /// @param floatingAssets total floating supply assets.
  /// @param floatingBorrowShares total floating borrow shares.
  /// @param floatingDebt total floating borrow assets.
  /// @param earningsAccumulator earnings accumulator.
  event MarketUpdate(
    uint256 timestamp,
    uint256 floatingDepositShares,
    uint256 floatingAssets,
    uint256 floatingBorrowShares,
    uint256 floatingDebt,
    uint256 earningsAccumulator
  );

  /// @notice Emitted when the earnings of a maturity are updated.
  /// @param timestamp current timestamp.
  /// @param maturity maturity date where the earnings were updated.
  /// @param unassignedEarnings pending unassigned earnings.
  event FixedEarningsUpdate(uint256 timestamp, uint256 indexed maturity, uint256 unassignedEarnings);

  /// @notice Emitted when accumulator distributes earnings.
  /// @param timestamp current timestamp.
  event AccumulatorAccrual(uint256 timestamp);

  /// @notice Emitted when the floating debt is updated.
  /// @param timestamp current timestamp.
  /// @param utilization new floating utilization.
  event FloatingDebtUpdate(uint256 timestamp, uint256 utilization);

  /// @notice Emitted when `account` sets the `isFrozen` flag.
  event Frozen(address indexed account, bool isFrozen);

  /// @notice Stores fixed deposits and fixed borrows map and floating borrow shares of an account.
  /// @param fixedDeposits encoded map maturity dates where the account supplied to.
  /// @param fixedBorrows encoded map maturity dates where the account borrowed from.
  /// @param floatingBorrowShares number of floating borrow shares assigned to the account.
  struct Account {
    uint256 fixedDeposits;
    uint256 fixedBorrows;
    uint256 floatingBorrowShares;
  }
}

error Disagreement();
error InsufficientProtocolLiquidity();
error MarketFrozen();
error NotAuditor();
error NotPausingRole();
error SelfLiquidation();
error ZeroBorrow();
error ZeroDeposit();
error ZeroRepay();
error ZeroWithdraw();

// ============================================================
// FILE: contracts/RewardsController.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import { Initializable } from "@openzeppelin/contracts-upgradeable-v4/proxy/utils/Initializable.sol";
import { MathUpgradeable as Math } from "@openzeppelin/contracts-upgradeable-v4/utils/math/MathUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/access/AccessControlUpgradeable.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";
import { SafeTransferLib } from "solmate/src/utils/SafeTransferLib.sol";
import { ERC20 } from "solmate/src/tokens/ERC20.sol";
import { IPriceFeed } from "./utils/IPriceFeed.sol";
import { FixedLib } from "./utils/FixedLib.sol";
import { Market } from "./Market.sol";

contract RewardsController is Initializable, AccessControlUpgradeable {
  using FixedPointMathLib for uint256;
  using FixedPointMathLib for uint64;
  using FixedPointMathLib for int256;
  using SafeTransferLib for ERC20;

  /// @notice Max utilization supported by the sigmoid function not to cause a division by zero (1e18 = WAD).
  uint256 public constant UTILIZATION_CAP = 1e18 - 1;
  /// @notice Tracks the reward distribution data for a given market.
  mapping(Market => Distribution) public distribution;
  /// @notice Tracks enabled asset rewards.
  mapping(ERC20 => bool) public rewardEnabled;
  /// @notice Stores registered asset rewards.
  ERC20[] public rewardList;
  /// @notice Stores Markets with distributions set.
  Market[] public marketList;
  /// @notice Tracks the owner nonces for the claim permit.
  mapping(address => uint256) public nonces;
  /// @notice Temporarily stores the claim permit owner or `msg.sender` of the claim call.
  address private _claimSender;
  /// @notice Tracks the allowed `keeper` to claim on behalf of `account`.
  mapping(address account => address keeper) public keepers;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /// @notice Initializes the contract.
  /// @dev Can only be called once.
  function initialize() external initializer {
    __AccessControl_init();

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /// @notice Hook to be called by the Market to update the index of the account that made a rewarded deposit.
  /// @dev There's no need to check that `msg.sender` is a valid Market as it won't have available rewards if it's not.
  /// @param account The account to which the index is updated.
  function handleDeposit(address account) external {
    Market market = Market(msg.sender);
    AccountOperation[] memory ops = new AccountOperation[](1);
    ops[0] = AccountOperation({ operation: false, balance: market.balanceOf(account) });

    Distribution storage dist = distribution[market];
    uint256 available = dist.availableRewardsCount;
    for (uint128 r = 0; r < available; ) {
      update(account, market, dist.availableRewards[r], ops);
      unchecked {
        ++r;
      }
    }
  }

  /// @notice Hook to be called by the Market to update the index of the account that made a rewarded borrow.
  /// @dev There's no need to check that `msg.sender` is a valid Market as it won't have available rewards if it's not.
  /// @param account The account to which the index is updated.
  function handleBorrow(address account) external {
    Market market = Market(msg.sender);
    AccountOperation[] memory ops = new AccountOperation[](1);
    (, , uint256 accountFloatingBorrowShares) = market.accounts(account);

    Distribution storage dist = distribution[market];
    uint256 available = dist.availableRewardsCount;
    for (uint128 r = 0; r < available; ) {
      ERC20 reward = dist.availableRewards[r];
      ops[0] = AccountOperation({
        operation: true,
        balance: accountFloatingBorrowShares + accountFixedBorrowShares(market, account, dist.rewards[reward].start)
      });
      update(account, Market(msg.sender), reward, ops);
      unchecked {
        ++r;
      }
    }
  }

  /// @notice Claims `account` rewards for the given operations and reward assets.
  /// @param marketOps The operations to claim rewards for.
  /// @param account The account to claim the rewards for.
  /// @param rewardsList The list of rewards assets to claim.
  /// @return rewardsList The list of rewards assets.
  /// @return claimedAmounts The list of claimed amounts.
  function claimOnBehalfOf(
    MarketOperation[] memory marketOps,
    address account,
    ERC20[] memory rewardsList
  ) external returns (ERC20[] memory, uint256[] memory) {
    if (keepers[account] != msg.sender) revert NotKeeper();
    return claim(marketOps, account, account, rewardsList);
  }

  /// @notice Claims all `msg.sender` rewards to the given account.
  /// @param to The address to send the rewards to.
  /// @return rewardsList The list of rewards assets.
  /// @return claimedAmounts The list of claimed amounts.
  function claimAll(address to) external returns (ERC20[] memory rewardsList, uint256[] memory claimedAmounts) {
    return claim(allMarketsOperations(), to, rewardList);
  }

  /// @notice Claims `msg.sender` rewards for the given operations and reward assets to the given account.
  /// @param marketOps The operations to claim rewards for.
  /// @param to The address to send the rewards to.
  /// @param rewardsList The list of rewards assets to claim.
  /// @return rewardsList The list of rewards assets.
  /// @return claimedAmounts The list of claimed amounts.
  function claim(
    MarketOperation[] memory marketOps,
    address to,
    ERC20[] memory rewardsList
  ) public claimSender returns (ERC20[] memory, uint256[] memory) {
    return claim(marketOps, _claimSender, to, rewardsList);
  }

  function claim(
    MarketOperation[] memory marketOps,
    address account,
    address to,
    ERC20[] memory rewardsList
  ) internal returns (ERC20[] memory, uint256[] memory claimedAmounts) {
    claimedAmounts = new uint256[](rewardsList.length);
    for (uint256 i = 0; i < marketOps.length; ) {
      MarketOperation memory marketOperation = marketOps[i];
      Distribution storage dist = distribution[marketOperation.market];
      for (uint128 r = 0; r < dist.availableRewardsCount; ) {
        update(
          account,
          marketOperation.market,
          dist.availableRewards[r],
          accountBalanceOperations(
            marketOperation.market,
            marketOperation.operations,
            account,
            dist.rewards[dist.availableRewards[r]].start
          )
        );
        unchecked {
          ++r;
        }
      }
      for (uint256 r = 0; r < rewardsList.length; ) {
        RewardData storage rewardData = dist.rewards[rewardsList[r]];
        for (uint256 o = 0; o < marketOperation.operations.length; ) {
          uint256 rewardAmount = rewardData.accounts[account][marketOperation.operations[o]].accrued;
          if (rewardAmount != 0) {
            claimedAmounts[r] += rewardAmount;
            rewardData.accounts[account][marketOperation.operations[o]].accrued = 0;
          }
          unchecked {
            ++o;
          }
        }
        unchecked {
          ++r;
        }
      }
      unchecked {
        ++i;
      }
    }
    for (uint256 r = 0; r < rewardsList.length; ) {
      uint256 claimedAmount = claimedAmounts[r];
      if (claimedAmount > 0) {
        rewardsList[r].safeTransfer(to, claimedAmount);
        emit Claim(account, rewardsList[r], to, claimedAmount);
      }
      unchecked {
        ++r;
      }
    }
    return (rewardsList, claimedAmounts);
  }

  /// @notice Claims `permit.owner` rewards for the given operations and reward assets to the given account.
  /// @param marketOps The operations to claim rewards for.
  /// @param permit Arguments and signature from `permit.owner`.
  /// @return rewardsList The list of rewards assets.
  /// @return claimedAmounts The list of claimed amounts.
  function claim(
    MarketOperation[] memory marketOps,
    ClaimPermit calldata permit
  ) external permitSender(permit) returns (ERC20[] memory, uint256[] memory claimedAmounts) {
    return claim(marketOps, msg.sender, permit.assets);
  }

  /// @notice Gets the configuration of a given distribution.
  /// @param market The market to get the distribution configuration for.
  /// @param reward The reward asset.
  /// @return The distribution configuration.
  function rewardConfig(Market market, ERC20 reward) external view returns (Config memory) {
    RewardData storage rewardData = distribution[market].rewards[reward];
    return
      Config({
        market: market,
        reward: reward,
        priceFeed: rewardData.priceFeed,
        start: rewardData.start,
        distributionPeriod: rewardData.end - rewardData.start,
        targetDebt: rewardData.targetDebt,
        totalDistribution: rewardData.totalDistribution,
        undistributedFactor: rewardData.undistributedFactor,
        flipSpeed: rewardData.flipSpeed,
        compensationFactor: rewardData.compensationFactor,
        transitionFactor: rewardData.transitionFactor,
        borrowAllocationWeightFactor: rewardData.borrowAllocationWeightFactor,
        depositAllocationWeightAddend: rewardData.depositAllocationWeightAddend,
        depositAllocationWeightFactor: rewardData.depositAllocationWeightFactor
      });
  }

  /// @notice Gets the amount of reward assets that are being distributed for a Market.
  /// @param market Market to get the number of available rewards to distribute.
  /// @return The amount reward assets set to a Market.
  function availableRewardsCount(Market market) external view returns (uint256) {
    return distribution[market].availableRewardsCount;
  }

  /// @notice Gets the account data of a given account, Market, operation and reward asset.
  /// @param account The account to get the operation data from.
  /// @param market The market in which the operation was made.
  /// @param operation True if the operation was a borrow, false if it was a deposit.
  /// @param reward The reward asset.
  /// @return accrued The accrued amount.
  /// @return index The account index.
  function accountOperation(
    address account,
    Market market,
    bool operation,
    ERC20 reward
  ) external view returns (uint256, uint256) {
    Account storage operationAccount = distribution[market].rewards[reward].accounts[account][operation];
    return (operationAccount.accrued, operationAccount.index);
  }

  /// @notice Gets the distribution `start`, `end` and `lastUpdate` value of a given market and reward.
  /// @param market The market to get the distribution times.
  /// @param reward The reward asset.
  /// @return The distribution `start`, `end` and `lastUpdate` time.
  function distributionTime(Market market, ERC20 reward) external view returns (uint32, uint32, uint32) {
    RewardData storage rewardData = distribution[market].rewards[reward];
    return (rewardData.start, rewardData.end, rewardData.lastUpdate);
  }

  /// @notice Retrieves all rewards addresses.
  function allRewards() external view returns (ERC20[] memory) {
    return rewardList;
  }

  /// @notice Gets all market and operations.
  /// @return marketOps The list of market operations.
  function allMarketsOperations() public view returns (MarketOperation[] memory marketOps) {
    Market[] memory markets = marketList;
    marketOps = new MarketOperation[](markets.length);
    for (uint256 m = 0; m < markets.length; ) {
      bool[] memory ops = new bool[](2);
      ops[0] = true;
      ops[1] = false;
      marketOps[m] = MarketOperation({ market: markets[m], operations: ops });
      unchecked {
        ++m;
      }
    }
  }

  /// @notice Gets the claimable amount of rewards for a given account and reward asset.
  /// @param account The account to get the claimable amount for.
  /// @param reward The reward asset.
  /// @return unclaimedRewards The claimable amount for the given account.
  function allClaimable(address account, ERC20 reward) external view returns (uint256 unclaimedRewards) {
    return claimable(allMarketsOperations(), account, reward);
  }

  /// @notice Gets the claimable amount of rewards for a given account, Market operations and reward asset.
  /// @param marketOps The list of Market operations to get the accrued and pending rewards from.
  /// @param account The account to get the claimable amount for.
  /// @param reward The reward asset.
  /// @return unclaimedRewards The claimable amount for the given account.
  function claimable(
    MarketOperation[] memory marketOps,
    address account,
    ERC20 reward
  ) public view returns (uint256 unclaimedRewards) {
    for (uint256 i = 0; i < marketOps.length; ) {
      MarketOperation memory marketOperation = marketOps[i];
      Distribution storage dist = distribution[marketOperation.market];
      RewardData storage rewardData = dist.rewards[reward];
      if (dist.availableRewardsCount == 0) {
        unchecked {
          ++i;
        }
        continue;
      }

      AccountOperation[] memory ops = accountBalanceOperations(
        marketOperation.market,
        marketOperation.operations,
        account,
        rewardData.start
      );
      uint256 balance;
      for (uint256 o = 0; o < ops.length; ) {
        unclaimedRewards += rewardData.accounts[account][ops[o].operation].accrued;
        balance += ops[o].balance;
        unchecked {
          ++o;
        }
      }
      if (balance > 0) {
        unclaimedRewards += pendingRewards(
          account,
          reward,
          AccountMarketOperation({ market: marketOperation.market, accountOperations: ops })
        );
      }
      unchecked {
        ++i;
      }
    }
  }

  /// @notice Iterates and accrues all rewards for the operations of the given account in the given market.
  /// @param account The account to accrue the rewards for.
  /// @param market The Market in which the operations where made.
  /// @param reward The reward asset.
  /// @param ops The operations to accrue the rewards for.
  function update(address account, Market market, ERC20 reward, AccountOperation[] memory ops) internal {
    uint256 baseUnit = distribution[market].baseUnit;
    RewardData storage rewardData = distribution[market].rewards[reward];
    {
      uint256 lastUpdate = rewardData.lastUpdate;
      // `lastUpdate` can be greater than `block.timestamp` if distribution is set to start on a future date
      if (block.timestamp > lastUpdate && (lastUpdate < rewardData.end || rewardData.lastUndistributed != 0)) {
        (uint256 borrowIndex, uint256 depositIndex, uint256 newUndistributed) = previewAllocation(
          rewardData,
          market,
          block.timestamp - lastUpdate
        );
        if (borrowIndex > type(uint128).max || depositIndex > type(uint128).max) revert IndexOverflow();
        rewardData.borrowIndex = uint128(borrowIndex);
        rewardData.depositIndex = uint128(depositIndex);
        rewardData.lastUpdate = uint32(block.timestamp);
        rewardData.lastUndistributed = newUndistributed;
        emit IndexUpdate(market, reward, borrowIndex, depositIndex, newUndistributed, block.timestamp);
      }
    }

    mapping(bool => Account) storage operationAccount = rewardData.accounts[account];
    for (uint256 i = 0; i < ops.length; ) {
      AccountOperation memory op = ops[i];
      Account storage accountData = operationAccount[op.operation];
      uint256 accountIndex = accountData.index;
      uint256 newAccountIndex;
      if (op.operation) {
        newAccountIndex = rewardData.borrowIndex;
      } else {
        newAccountIndex = rewardData.depositIndex;
      }
      if (accountIndex != newAccountIndex) {
        accountData.index = uint128(newAccountIndex);
        if (op.balance != 0) {
          uint256 rewardsAccrued = accountRewards(op.balance, newAccountIndex, accountIndex, baseUnit);
          accountData.accrued += uint128(rewardsAccrued);
          emit Accrue(market, reward, account, op.operation, accountIndex, newAccountIndex, rewardsAccrued);
        }
      }
      unchecked {
        ++i;
      }
    }
  }

  /// @notice Gets the equivalent of borrow shares from fixed pool principal borrows of an account.
  /// @param market The Market to get the fixed borrows from.
  /// @param account The account that borrowed from fixed pools.
  /// @return fixedDebt The fixed borrow shares.
  function accountFixedBorrowShares(
    Market market,
    address account,
    uint32 start
  ) internal view returns (uint256 fixedDebt) {
    uint256 firstMaturity = start - (start % FixedLib.INTERVAL) + FixedLib.INTERVAL;
    uint256 maxMaturity = block.timestamp -
      (block.timestamp % FixedLib.INTERVAL) +
      (FixedLib.INTERVAL * market.maxFuturePools());

    for (uint256 maturity = firstMaturity; maturity <= maxMaturity; ) {
      (uint256 principal, ) = market.fixedBorrowPositions(maturity, account);
      fixedDebt += principal;
      unchecked {
        maturity += FixedLib.INTERVAL;
      }
    }
    fixedDebt = market.previewRepay(fixedDebt);
  }

  /// @notice Gets the reward indexes and last amount of undistributed rewards for a given market and reward asset.
  /// @param market The market to get the reward indexes for.
  /// @param reward The reward asset to get the reward indexes for.
  /// @return borrowIndex The index for the floating and fixed borrow operation.
  /// @return depositIndex The index for the floating deposit operation.
  /// @return lastUndistributed The last amount of undistributed rewards.
  function rewardIndexes(Market market, ERC20 reward) external view returns (uint256, uint256, uint256) {
    RewardData storage rewardData = distribution[market].rewards[reward];
    return (rewardData.borrowIndex, rewardData.depositIndex, rewardData.lastUndistributed);
  }

  /// @notice Calculates the rewards not accrued yet for the given operations of a given account and reward asset.
  /// @param account The account to get the pending rewards for.
  /// @param reward The reward asset to get the pending rewards for.
  /// @param ops The operations to get the pending rewards for.
  /// @return rewards The pending rewards for the given operations.
  function pendingRewards(
    address account,
    ERC20 reward,
    AccountMarketOperation memory ops
  ) internal view returns (uint256 rewards) {
    RewardData storage rewardData = distribution[ops.market].rewards[reward];
    uint256 baseUnit = distribution[ops.market].baseUnit;
    uint256 lastUpdate = rewardData.lastUpdate;
    (uint256 borrowIndex, uint256 depositIndex, ) = previewAllocation(
      rewardData,
      ops.market,
      block.timestamp > lastUpdate ? block.timestamp - lastUpdate : 0
    );
    mapping(bool => Account) storage operationAccount = rewardData.accounts[account];
    for (uint256 o = 0; o < ops.accountOperations.length; ) {
      uint256 nextIndex;
      if (ops.accountOperations[o].operation) {
        nextIndex = borrowIndex;
      } else {
        nextIndex = depositIndex;
      }

      rewards += accountRewards(
        ops.accountOperations[o].balance,
        nextIndex,
        operationAccount[ops.accountOperations[o].operation].index,
        baseUnit
      );
      unchecked {
        ++o;
      }
    }
  }

  /// @notice Calculates and returns the new amount of rewards given by the difference between the `accountIndex` and
  /// the `globalIndex`.
  /// @param balance The account's balance in the operation's pool.
  /// @param globalIndex Current index of the distribution.
  /// @param accountIndex Last index stored for the account.
  /// @param baseUnit One unit of the Market's asset (10**decimals).
  /// @return The amount of new rewards to be accrued by the account.
  function accountRewards(
    uint256 balance,
    uint256 globalIndex,
    uint256 accountIndex,
    uint256 baseUnit
  ) internal pure returns (uint256) {
    return balance.mulDivDown(globalIndex - accountIndex, baseUnit);
  }

  /// @notice Retrieves projected distribution indexes and new undistributed amount for a given `deltaTime`.
  /// @param market The market to calculate the indexes for.
  /// @param reward The reward asset to calculate the indexes for.
  /// @param deltaTime The elapsed time since the last update.
  /// @return borrowIndex The index for the borrow operation.
  /// @return depositIndex The index for the deposit operation.
  /// @return newUndistributed The new undistributed rewards of the distribution.
  function previewAllocation(
    Market market,
    ERC20 reward,
    uint256 deltaTime
  ) external view returns (uint256 borrowIndex, uint256 depositIndex, uint256 newUndistributed) {
    return previewAllocation(distribution[market].rewards[reward], market, deltaTime);
  }

  /// @notice Calculates and returns the distribution indexes and new undistributed tokens for a given `rewardData`.
  /// @param rewardData The distribution's data.
  /// @param market The market to calculate the indexes for.
  /// @param deltaTime The elapsed time since the last update.
  /// @return borrowIndex The index for the borrow operation.
  /// @return depositIndex The index for the deposit operation.
  /// @return newUndistributed The new undistributed rewards of the distribution.
  function previewAllocation(
    RewardData storage rewardData,
    Market market,
    uint256 deltaTime
  ) internal view returns (uint256 borrowIndex, uint256 depositIndex, uint256 newUndistributed) {
    TotalMarketBalance memory m;
    m.floatingDebt = market.floatingDebt();
    m.floatingAssets = market.floatingAssets();
    TimeVars memory t;
    t.start = rewardData.start;
    t.end = rewardData.end;
    {
      uint256 firstMaturity = t.start - (t.start % FixedLib.INTERVAL) + FixedLib.INTERVAL;
      uint256 maxMaturity = block.timestamp -
        (block.timestamp % FixedLib.INTERVAL) +
        (FixedLib.INTERVAL * market.maxFuturePools());
      uint256 fixedDebt;
      for (uint256 maturity = firstMaturity; maturity <= maxMaturity; ) {
        (uint256 borrowed, ) = market.fixedPoolBalance(maturity);
        fixedDebt += borrowed;
        unchecked {
          maturity += FixedLib.INTERVAL;
        }
      }
      m.debt = m.floatingDebt + fixedDebt;
      m.fixedBorrowShares = market.previewRepay(fixedDebt);
    }
    uint256 target;
    {
      uint256 targetDebt = rewardData.targetDebt;
      target = m.debt < targetDebt ? m.debt.divWadDown(targetDebt) : 1e18;
    }
    uint256 rewards;
    {
      uint256 releaseRate = rewardData.releaseRate;
      uint256 lastUndistributed = rewardData.lastUndistributed;
      t.period = t.end - t.start;
      uint256 distributionFactor = t.period > 0
        ? rewardData.undistributedFactor.mulDivDown(target, t.period * 1e18)
        : 0;
      if (block.timestamp <= t.end) {
        if (distributionFactor > 0) {
          uint256 exponential = uint256((-int256(distributionFactor * deltaTime)).expWad());
          newUndistributed =
            lastUndistributed.mulWadDown(exponential) +
            releaseRate.mulDivDown(1e18 - target, distributionFactor).mulWadUp(1e18 - exponential);
        } else {
          newUndistributed = lastUndistributed + releaseRate.mulWadDown(1e18 - target) * deltaTime;
        }
        rewards = uint256(int256(releaseRate * deltaTime) - (int256(newUndistributed) - int256(lastUndistributed)));
      } else if (rewardData.lastUpdate > t.end) {
        newUndistributed =
          lastUndistributed -
          lastUndistributed.mulWadUp(1e18 - uint256((-int256(distributionFactor * deltaTime)).expWad()));
        rewards = uint256(-(int256(newUndistributed) - int256(lastUndistributed)));
      } else {
        uint256 exponential;
        deltaTime = t.end - rewardData.lastUpdate;
        if (distributionFactor > 0) {
          exponential = uint256((-int256(distributionFactor * deltaTime)).expWad());
          newUndistributed =
            lastUndistributed.mulWadDown(exponential) +
            releaseRate.mulDivDown(1e18 - target, distributionFactor).mulWadUp(1e18 - exponential);
        } else {
          newUndistributed = lastUndistributed + releaseRate.mulWadDown(1e18 - target) * deltaTime;
        }
        exponential = uint256((-int256(distributionFactor * (block.timestamp - t.end))).expWad());
        newUndistributed = newUndistributed - newUndistributed.mulWadUp(1e18 - exponential);
        rewards = uint256(int256(releaseRate * deltaTime) - (int256(newUndistributed) - int256(lastUndistributed)));
      }
      if (rewards == 0) return (rewardData.borrowIndex, rewardData.depositIndex, newUndistributed);
    }
    {
      AllocationVars memory v;
      v.globalUtilization = Math.min(
        m.floatingAssets != 0
          ? 1e18 - (m.floatingAssets - m.floatingDebt - market.floatingBackupBorrowed()).divWadDown(m.floatingAssets)
          : 0,
        UTILIZATION_CAP
      );
      v.transitionFactor = rewardData.transitionFactor;
      v.flipSpeed = rewardData.flipSpeed;
      v.borrowAllocationWeightFactor = rewardData.borrowAllocationWeightFactor;
      v.sigmoid = v.globalUtilization > 0
        ? uint256(1e18).divWadDown(
          1e18 +
            uint256(
              (-(v.flipSpeed *
                (int256(v.globalUtilization.divWadDown(1e18 - v.globalUtilization)).lnWad() -
                  int256(v.transitionFactor.divWadDown(1e18 - v.transitionFactor)).lnWad())) / 1e18).expWad()
            )
        )
        : 0;
      v.borrowRewardRule = rewardData
        .compensationFactor
        .mulWadDown(
          market
            .interestRateModel()
            .floatingRate(m.floatingAssets != 0 ? m.floatingDebt.divWadDown(m.floatingAssets) : 0, v.globalUtilization)
            .mulWadDown(1e18 - v.globalUtilization.mulWadUp(1e18 - market.treasuryFeeRate())) +
            v.borrowAllocationWeightFactor
        )
        .mulWadDown(1e18 - v.sigmoid);
      v.depositRewardRule =
        rewardData.depositAllocationWeightAddend.mulWadDown(1e18 - v.sigmoid) +
        rewardData.depositAllocationWeightFactor.mulWadDown(v.sigmoid);
      v.borrowAllocation = v.borrowRewardRule.divWadDown(v.borrowRewardRule + v.depositRewardRule);
      v.depositAllocation = 1e18 - v.borrowAllocation;
      {
        uint256 totalDepositSupply = market.totalSupply();
        uint256 totalBorrowSupply = market.totalFloatingBorrowShares() + m.fixedBorrowShares;
        uint256 baseUnit = distribution[market].baseUnit;
        borrowIndex =
          rewardData.borrowIndex +
          (totalBorrowSupply > 0 ? rewards.mulWadDown(v.borrowAllocation).mulDivDown(baseUnit, totalBorrowSupply) : 0);
        depositIndex =
          rewardData.depositIndex +
          (
            totalDepositSupply > 0
              ? rewards.mulWadDown(v.depositAllocation).mulDivDown(baseUnit, totalDepositSupply)
              : 0
          );
      }
    }
  }

  /// @notice Get account balances of the given Market operations.
  /// @param market The address of the Market.
  /// @param ops List of operations to retrieve account balance.
  /// @param account Account to get the balance from.
  /// @param distributionStart Timestamp of the start of the distribution to correctly get the rewarded fixed pools.
  /// @return accountBalanceOps contains a list with account balance per each operation.
  function accountBalanceOperations(
    Market market,
    bool[] memory ops,
    address account,
    uint32 distributionStart
  ) internal view returns (AccountOperation[] memory accountBalanceOps) {
    accountBalanceOps = new AccountOperation[](ops.length);
    for (uint256 i = 0; i < ops.length; ) {
      if (ops[i]) {
        (, , uint256 floatingBorrowShares) = market.accounts(account);
        accountBalanceOps[i] = AccountOperation({
          operation: true,
          balance: floatingBorrowShares + accountFixedBorrowShares(market, account, distributionStart)
        });
      } else {
        accountBalanceOps[i] = AccountOperation({ operation: false, balance: market.balanceOf(account) });
      }
      unchecked {
        ++i;
      }
    }
  }

  /// @notice Sets the `keeper` address for the given `account`.
  /// @param account The account to set the `keeper` for.
  /// @param keeper The address to set as the `keeper`.
  function setKeeper(address account, address keeper) external onlyRole(DEFAULT_ADMIN_ROLE) {
    keepers[account] = keeper;
  }

  /// @notice Withdraws the contract's balance of the given asset to the given address.
  /// @param asset The asset to withdraw.
  /// @param to The address to withdraw the asset to.
  function withdraw(ERC20 asset, address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
    asset.safeTransfer(to, asset.balanceOf(address(this)));
  }

  /// @notice Enables or updates the reward distribution for the given markets and rewards.
  /// @param configs The configurations to update each RewardData with.
  function config(Config[] memory configs) external onlyRole(DEFAULT_ADMIN_ROLE) {
    for (uint256 i = 0; i < configs.length; ) {
      // transitionFactor cannot be eq or higher than 1e18 to avoid division by zero or underflow
      if (configs[i].transitionFactor >= 1e18) revert InvalidConfig();
      // depositAllocationWeightFactor cannot be zero to avoid division by zero when sigmoid equals 1e18
      if (configs[i].depositAllocationWeightFactor == 0) revert InvalidConfig();

      Distribution storage dist = distribution[configs[i].market];
      RewardData storage rewardData = dist.rewards[configs[i].reward];

      if (dist.baseUnit == 0) {
        // never initialized before, adding to the list of markets
        marketList.push(configs[i].market);
      }
      if (!rewardEnabled[configs[i].reward]) {
        // add reward address to global rewards list if still not enabled
        rewardEnabled[configs[i].reward] = true;
        rewardList.push(configs[i].reward);
      }
      if (rewardData.lastUpdate == 0) {
        // add reward address to distribution data's available rewards if distribution is new
        dist.availableRewards[dist.availableRewardsCount++] = configs[i].reward;
        dist.baseUnit = 10 ** configs[i].market.decimals();
        // set initial parameters if distribution is new
        rewardData.start = configs[i].start;
        rewardData.lastUpdate = configs[i].start;
        rewardData.releaseRate = configs[i].totalDistribution / configs[i].distributionPeriod;
      } else {
        uint32 start = rewardData.start;
        uint32 end = rewardData.end;
        // update global indexes before updating distribution values
        bool[] memory ops = new bool[](1);
        ops[0] = true;
        update(
          address(0),
          configs[i].market,
          configs[i].reward,
          accountBalanceOperations(configs[i].market, ops, address(0), start)
        );
        // properly update release rate
        if (block.timestamp < end) {
          uint256 released = 0;
          uint256 elapsed = 0;
          if (block.timestamp > start) {
            released =
              rewardData.lastConfigReleased +
              rewardData.releaseRate *
              (block.timestamp - Math.max(rewardData.lastConfig, start));
            elapsed = block.timestamp - start;
            if (configs[i].totalDistribution <= released || configs[i].distributionPeriod <= elapsed) {
              revert InvalidConfig();
            }
            rewardData.lastConfigReleased = released;
          }

          rewardData.releaseRate =
            (configs[i].totalDistribution - released) /
            (configs[i].distributionPeriod - elapsed);
        } else if (rewardData.start != configs[i].start) {
          rewardData.start = configs[i].start;
          rewardData.lastUpdate = configs[i].start;
          rewardData.releaseRate = configs[i].totalDistribution / configs[i].distributionPeriod;
          rewardData.lastConfigReleased = 0;
        }
      }
      rewardData.lastConfig = uint32(block.timestamp);
      rewardData.end = rewardData.start + uint32(configs[i].distributionPeriod);
      rewardData.priceFeed = configs[i].priceFeed;
      // set emission and distribution parameters
      rewardData.totalDistribution = configs[i].totalDistribution;
      rewardData.targetDebt = configs[i].targetDebt;
      rewardData.undistributedFactor = configs[i].undistributedFactor;
      rewardData.flipSpeed = configs[i].flipSpeed;
      rewardData.compensationFactor = configs[i].compensationFactor;
      rewardData.borrowAllocationWeightFactor = configs[i].borrowAllocationWeightFactor;
      rewardData.depositAllocationWeightAddend = configs[i].depositAllocationWeightAddend;
      rewardData.transitionFactor = configs[i].transitionFactor;
      rewardData.depositAllocationWeightFactor = configs[i].depositAllocationWeightFactor;

      emit DistributionSet(configs[i].market, configs[i].reward, configs[i]);
      unchecked {
        ++i;
      }
    }
  }

  // solhint-disable-next-line func-name-mixedcase
  function DOMAIN_SEPARATOR() public view returns (bytes32) {
    return
      keccak256(
        abi.encode(
          keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
          keccak256("RewardsController"),
          keccak256("1"),
          block.chainid,
          address(this)
        )
      );
  }

  modifier claimSender() {
    if (_claimSender == address(0)) _claimSender = msg.sender;
    _;
    delete _claimSender;
  }

  modifier permitSender(ClaimPermit calldata permit) {
    assert(_claimSender == address(0));
    assert(permit.deadline >= block.timestamp);
    unchecked {
      address recoveredAddress = ecrecover(
        keccak256(
          abi.encodePacked(
            "\x19\x01",
            DOMAIN_SEPARATOR(),
            keccak256(
              abi.encode(
                keccak256("ClaimPermit(address owner,address spender,address[] assets,uint256 deadline)"),
                permit.owner,
                msg.sender,
                permit.assets,
                nonces[permit.owner]++,
                permit.deadline
              )
            )
          )
        ),
        permit.v,
        permit.r,
        permit.s
      );
      assert(recoveredAddress != address(0) && recoveredAddress == permit.owner);
      _claimSender = permit.owner;
    }
    _;
    assert(_claimSender == address(0));
  }

  struct TotalMarketBalance {
    uint256 debt;
    uint256 fixedBorrowShares;
    uint256 floatingDebt;
    uint256 floatingAssets;
  }

  struct TimeVars {
    uint256 start;
    uint256 end;
    uint256 period;
  }

  struct AllocationVars {
    uint256 globalUtilization;
    uint256 sigmoid;
    uint256 borrowRewardRule;
    uint256 depositRewardRule;
    uint256 borrowAllocation;
    uint256 depositAllocation;
    uint256 transitionFactor;
    int256 flipSpeed;
    uint256 borrowAllocationWeightFactor;
  }

  struct AccountOperation {
    bool operation;
    uint256 balance;
  }

  struct MarketOperation {
    Market market;
    bool[] operations;
  }

  struct AccountMarketOperation {
    Market market;
    AccountOperation[] accountOperations;
  }

  struct Account {
    // liquidity index of the reward distribution for the account
    uint128 index;
    // amount of accrued rewards for the account since last account index update
    uint128 accrued;
  }

  struct Config {
    Market market;
    ERC20 reward;
    IPriceFeed priceFeed;
    uint32 start;
    uint256 distributionPeriod;
    uint256 targetDebt;
    uint256 totalDistribution;
    uint256 undistributedFactor;
    int128 flipSpeed;
    uint64 compensationFactor;
    uint64 transitionFactor;
    uint64 borrowAllocationWeightFactor;
    uint64 depositAllocationWeightAddend;
    uint64 depositAllocationWeightFactor;
  }

  struct RewardData {
    // distribution model
    uint256 targetDebt;
    uint256 releaseRate;
    uint256 totalDistribution;
    uint256 undistributedFactor;
    uint256 lastUndistributed;
    // allocation model
    int128 flipSpeed;
    uint64 compensationFactor;
    uint64 transitionFactor;
    uint64 borrowAllocationWeightFactor;
    uint64 depositAllocationWeightAddend;
    uint64 depositAllocationWeightFactor;
    // liquidity indexes of the reward distribution
    uint128 borrowIndex;
    uint128 depositIndex;
    // distribution timestamps
    uint32 start;
    uint32 end;
    uint32 lastUpdate;
    // config helpers
    uint32 lastConfig;
    uint256 lastConfigReleased;
    // price feed
    IPriceFeed priceFeed;
    // account addresses and their rewards data (index & accrued)
    mapping(address => mapping(bool => Account)) accounts;
  }

  struct Distribution {
    // reward assets and their data
    mapping(ERC20 => RewardData) rewards;
    // list of reward asset addresses for the market
    mapping(uint128 => ERC20) availableRewards;
    // count of reward tokens for the market
    uint8 availableRewardsCount;
    // base unit of the market
    uint256 baseUnit;
  }

  /// @notice Emitted when rewards are accrued by an account.
  /// @param market Market where the operation was made.
  /// @param reward reward asset.
  /// @param account account that accrued the rewards.
  /// @param operation true if the operation was a borrow, false if it was a deposit.
  /// @param accountIndex previous account index.
  /// @param operationIndex new operation index that is assigned to the `accountIndex`.
  /// @param rewardsAccrued amount of rewards accrued.
  event Accrue(
    Market indexed market,
    ERC20 indexed reward,
    address indexed account,
    bool operation,
    uint256 accountIndex,
    uint256 operationIndex,
    uint256 rewardsAccrued
  );

  /// @notice Emitted when rewards are claimed by an account.
  /// @param account account that claimed the rewards.
  /// @param reward reward asset.
  /// @param to account that received the rewards.
  /// @param amount amount of rewards claimed.
  event Claim(address indexed account, ERC20 indexed reward, address indexed to, uint256 amount);

  /// @notice Emitted when a distribution is set.
  /// @param market Market whose distribution was set.
  /// @param reward reward asset to be distributed when operating with the Market.
  /// @param config configuration struct containing the distribution parameters.
  event DistributionSet(Market indexed market, ERC20 indexed reward, Config config);

  /// @notice Emitted when the distribution indexes are updated.
  /// @param market Market of the distribution.
  /// @param reward reward asset.
  /// @param borrowIndex index of the borrow operations of a distribution.
  /// @param depositIndex index of the deposit operations of a distribution.
  /// @param newUndistributed amount of undistributed rewards.
  /// @param lastUpdate current timestamp.
  event IndexUpdate(
    Market indexed market,
    ERC20 indexed reward,
    uint256 borrowIndex,
    uint256 depositIndex,
    uint256 newUndistributed,
    uint256 lastUpdate
  );
}

error IndexOverflow();
error InvalidConfig();
error NotKeeper();

struct ClaimPermit {
  address owner;
  ERC20[] assets;
  uint256 deadline;
  uint8 v;
  bytes32 r;
  bytes32 s;
}

// ============================================================
// FILE: contracts/StakedEXA.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";

import { IERC6372 } from "@openzeppelin/contracts/interfaces/IERC6372.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {
  ERC20PermitUpgradeable,
  ERC20Upgradeable,
  IERC20Permit
} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import { Market } from "./Market.sol";

/// @title StakedEXA Contract
/// @notice This contract allows users to stake EXA tokens and earn rewards.
/// The rewards are subject to a penalty if the staking duration is not optimal.
/// The optimal staking duration is defined by `refTime`.
/// Staking for a duration less than `minTime` results in no rewards,
/// the closer the staking duration is to `refTime`, the lower the penalty.
contract StakedEXA is
  Initializable,
  AccessControlUpgradeable,
  PausableUpgradeable,
  ERC4626Upgradeable,
  ERC20PermitUpgradeable,
  IERC6372
{
  using FixedPointMathLib for uint256;
  using FixedPointMathLib for int256;
  using SafeERC20 for IERC20;
  using SafeCast for int256;

  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant EMERGENCY_ADMIN_ROLE = keccak256("EMERGENCY_ADMIN_ROLE");

  /// @notice Rewards tokens.
  IERC20[] public rewardsTokens;
  /// @notice Maximum amount of rewards token.
  uint256 public constant MAX_REWARDS_TOKENS = 100;

  /// @notice Minimum time to stake and get rewards.
  uint256 public minTime;
  /// @notice Reference period to stake and get full rewards. Not possible to change after initilization.
  uint256 public refTime;
  /// @notice Discount factor for excess exposure. Not possible to change after initilization.
  uint256 public excessFactor;
  /// @notice Penalty growth factor.
  uint256 public penaltyGrowth;
  /// @notice Threshold penalty factor for withdrawing before the reference time.
  uint256 public penaltyThreshold;

  /// @notice market from which to harvest.
  Market public market;
  /// @notice provider of rewards when harvesting.
  address public provider;
  /// @notice savings address to send the rewards.
  address public savings;
  /// @notice ratio of withdrawn assets to provide when harvesting. The rest goes to savings
  uint256 public providerRatio;

  /// @notice Rewards data per token.
  mapping(IERC20 reward => RewardData data) public rewards;
  /// @notice Average starting time with the tokens staked per account.
  mapping(address account => uint256 time) public avgStart;
  /// @notice Accounts average indexes per reward token.
  mapping(address account => mapping(IERC20 reward => uint256 index)) public avgIndexes;
  /// @notice Accounts claimed rewards per reward token.
  mapping(address account => mapping(IERC20 reward => uint256 claimed)) public claimed;
  /// @notice Accounts saved rewards per reward token.
  mapping(address account => mapping(IERC20 reward => uint256 saved)) public saved;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /// @notice Initializes the contract.
  /// @dev can only be called once.
  /// @param p The parameters for initialization.
  function initialize(Parameters memory p) external initializer {
    __ERC20_init("staked EXA", "stEXA");
    __ERC4626_init(p.asset);
    __ERC20Permit_init("staked EXA");

    __AccessControl_init();

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    if (p.refTime == 0 || p.refTime <= p.minTime || p.excessFactor > 1e18) revert InvalidRange();
    setMinTime(p.minTime);
    refTime = p.refTime;
    excessFactor = p.excessFactor;
    setPenaltyGrowth(p.penaltyGrowth);
    setPenaltyThreshold(p.penaltyThreshold);

    setMarket(p.market);
    setRewardsDuration(IERC20(address(p.market)), p.duration);

    setProvider(p.provider);
    setProviderRatio(p.providerRatio);
    setSavings(p.savings);
  }

  /// @notice Updates the reward index for a given reward token.
  /// @param reward The reward token to update.
  function updateIndex(IERC20 reward) internal {
    RewardData storage rewardData = rewards[reward];
    rewardData.index = globalIndex(reward);
    rewardData.updatedAt = uint40(lastTimeRewardApplicable(rewardData.finishAt));
  }

  /// @notice Hook to handle updates during token transfer.
  /// @param from The address transferring the tokens.
  /// @param to The address receiving the tokens.
  /// @param amount The amount of tokens being transferred.
  function _update(address from, address to, uint256 amount) internal override whenNotPaused {
    if (amount == 0) revert ZeroAmount();
    if (from == address(0)) {
      if (to != msg.sender && allowance(to, msg.sender) == 0) revert NotAllowed();
      uint256 start = avgStart[to];
      uint256 time = start != 0 ? block.timestamp * 1e18 - start : 0;
      uint256 memRefTime = refTime * 1e18;
      uint256 balance = balanceOf(to);
      uint256 total = amount + balance;

      uint256 length = rewardsTokens.length;
      for (uint256 i = 0; i < length; ++i) {
        IERC20 reward = rewardsTokens[i];
        updateIndex(reward);

        if (time > memRefTime) {
          if (balance != 0) claimWithdraw(reward, to, balance);
          avgIndexes[to][reward] = rewards[reward].index;
        } else {
          if (balance != 0) claim_(reward, to);
          uint256 numerator = avgIndexes[to][reward] * balance + rewards[reward].index * amount;
          avgIndexes[to][reward] = numerator == 0 ? 0 : (numerator - 1) / total + 1;
        }
      }
      if (time > memRefTime) avgStart[to] = block.timestamp * 1e18;
      else {
        uint256 numerator = start * balance + block.timestamp * 1e18 * amount;
        avgStart[to] = numerator == 0 ? 0 : (numerator - 1) / total + 1;
      }
      try this.harvest() {} catch {} // solhint-disable-line no-empty-blocks
    } else if (to == address(0)) {
      uint256 length = rewardsTokens.length;
      for (uint256 i = 0; i < length; ++i) {
        IERC20 reward = rewardsTokens[i];
        updateIndex(reward);
        claimWithdraw(reward, from, amount);
      }
    } else revert Untransferable();

    super._update(from, to, amount);
  }

  /// @notice Permits a spender and deposits assets in a single transaction.
  /// @param assets The amount of assets to deposit.
  /// @param receiver The address receiving the deposited assets.
  /// @param p The permit parameters.
  /// @return The number of shares received.
  function permitAndDeposit(uint256 assets, address receiver, Permit calldata p) external returns (uint256) {
    // solhint-disable-next-line no-empty-blocks
    try IERC20Permit(asset()).permit(receiver, address(this), p.value, p.deadline, p.v, p.r, p.s) {} catch {}

    uint256 maxAssets = maxDeposit(receiver);
    if (assets > maxAssets) revert ERC4626ExceededMaxDeposit(receiver, assets, maxAssets);

    uint256 shares = previewDeposit(assets);
    _deposit(receiver, receiver, assets, shares);

    return shares;
  }

  /// @notice Claims unclaimed rewards when withdrawing an amount of assets.
  /// @param reward The reward token to claim.
  /// @param account The account receiving the withdrawn assets and rewards.
  /// @param amount The amount of assets being withdrawn.
  function claimWithdraw(IERC20 reward, address account, uint256 amount) internal {
    uint256 balance = balanceOf(account);
    uint256 claimedAmount = (claimed[account][reward] * amount) / balance;
    claimed[account][reward] -= claimedAmount;

    uint256 savedAmount = (saved[account][reward] * amount) / balance;
    saved[account][reward] -= savedAmount;

    uint256 claimableAmount = Math.max(rawClaimable(reward, account, amount), claimedAmount); // due to excess exposure
    uint256 claimAmount = claimableAmount - claimedAmount;
    if (claimAmount != 0) {
      reward.safeTransfer(account, claimAmount);
      emit RewardPaid(reward, account, claimAmount);
    }

    uint256 rawEarned = earned(reward, account, amount);
    // due to rounding
    uint256 saveAmount = rawEarned <= claimableAmount + savedAmount ? 0 : rawEarned - claimableAmount - savedAmount;
    if (saveAmount != 0) reward.safeTransfer(savings, saveAmount);
  }

  /// @notice Notifies the contract about a reward amount.
  /// @param reward The reward token.
  /// @param amount The amount of reward tokens.
  /// @param notifier The address notifying the reward amount.
  function notifyRewardAmount(IERC20 reward, uint256 amount, address notifier) internal onlyReward(reward) {
    updateIndex(reward);
    RewardData storage rewardData = rewards[reward];
    if (block.timestamp >= rewardData.finishAt) {
      rewardData.rate = (amount * 1e18) / rewardData.duration;
    } else {
      uint256 remainingRewards = (rewardData.finishAt - block.timestamp) * rewardData.rate;
      rewardData.rate = (amount * 1e18 + remainingRewards) / rewardData.duration;
    }

    if (rewardData.rate == 0) revert ZeroRate();
    if (
      rewardData.rate.mulWadDown(rewardData.duration) >
      reward.balanceOf(address(this)) - (address(reward) == asset() ? totalAssets() : 0)
    ) revert InsufficientBalance();

    rewardData.finishAt = uint40(block.timestamp) + rewardData.duration;
    rewardData.updatedAt = uint40(block.timestamp);

    emit RewardAmountNotified(reward, notifier, amount);
  }

  /// @notice Calculates the discount factor based on the staked time.
  /// @param time The time staked, represented with 18 decimals.
  /// @return The discount factor, which is always between 0 and 1e18.
  function discountFactor(uint256 time) internal view returns (uint256) {
    uint256 memMinTime = minTime * 1e18;
    if (time <= memMinTime) return 0;
    uint256 memRefTime = refTime * 1e18;
    if (time >= memRefTime) {
      uint256 memExcessFactor = excessFactor;
      return (1e18 - memExcessFactor).mulWadDown((memRefTime * 1e18) / time) + memExcessFactor;
    }

    uint256 timeRatio = ((time - memMinTime) * 1e18) / (memRefTime - memMinTime);
    if (timeRatio == 0) return 0;

    uint256 penalties = uint256(((int256(penaltyGrowth) * int256(timeRatio).lnWad()) / 1e18).expWad());

    uint256 memPenaltyThreshold = penaltyThreshold;
    return Math.min((1e18 - memPenaltyThreshold).mulWadDown(penalties) + memPenaltyThreshold, 1e18);
  }

  /// @notice Ensures the caller has pausing roles.
  /// @dev Throws if the caller is not an `EMERGENCY_ADMIN_ROLE` or `PAUSER_ROLE`.
  function requirePausingRoles() internal view {
    if (!hasRole(EMERGENCY_ADMIN_ROLE, msg.sender) && !hasRole(PAUSER_ROLE, msg.sender)) {
      revert NotPausingRole();
    }
  }

  /// @dev Modifier to restrict functions to pausing roles.
  modifier onlyPausingRoles() {
    requirePausingRoles();
    _;
  }

  /// @notice Modifier to restrict functions to enabled reward tokens.
  /// @param reward The reward token.
  modifier onlyReward(IERC20 reward) {
    if (rewards[reward].finishAt == 0) revert RewardNotListed();
    _;
  }

  /// @notice Returns the last time rewards are applicable.
  /// @param finishAt The time when the reward period finishes.
  /// @return The last applicable time.
  function lastTimeRewardApplicable(uint256 finishAt) public view returns (uint256) {
    return uint40(Math.min(finishAt, block.timestamp));
  }

  /// @notice Returns the global index for a reward token.
  /// @param reward The reward token.
  /// @return The global index.
  function globalIndex(IERC20 reward) public view returns (uint256) {
    RewardData storage rewardData = rewards[reward];
    if (totalSupply() == 0) return rewardData.index;

    return
      rewardData.index +
      rewardData.rate.mulDivDown(lastTimeRewardApplicable(rewardData.finishAt) - rewardData.updatedAt, totalSupply());
  }

  /// @notice Returns the average index for a reward token and account.
  /// @param reward The reward token.
  /// @param account The account.
  /// @return The average index.
  function avgIndex(IERC20 reward, address account) public view returns (uint256) {
    return avgIndexes[account][reward];
  }

  /// @notice Calculates the earned rewards for an account, without considering penalties.
  /// @param reward The reward token.
  /// @param account The account.
  /// @param shares The amount of shares.
  /// @return The earned rewards.
  function earned(IERC20 reward, address account, uint256 shares) public view returns (uint256) {
    return shares.mulWadDown(globalIndex(reward) - avgIndexes[account][reward]);
  }

  /// @notice Calculates the raw claimable rewards for an account, without considering already claimed rewards.
  /// @param reward The reward token.
  /// @param account The account.
  /// @param shares The amount of shares of the account involved.
  /// @return The raw claimable rewards.
  function rawClaimable(IERC20 reward, address account, uint256 shares) public view returns (uint256) {
    uint256 start = avgStart[account];
    if (start == 0) return 0;
    return earned(reward, account, shares).mulWadDown(discountFactor(block.timestamp * 1e18 - start));
  }

  /// @notice Calculates the claimable rewards for an account.
  /// @param reward The reward token.
  /// @param account The account.
  /// @param shares The amount of shares of the account involved.
  /// @return The claimable rewards.
  function claimable(IERC20 reward, address account, uint256 shares) public view returns (uint256) {
    uint256 start = avgStart[account];
    if (start == 0 || block.timestamp * 1e18 - start <= minTime * 1e18) return 0;

    uint256 rawClaimable_ = rawClaimable(reward, account, shares);
    uint256 balance = balanceOf(account);
    if (balance == 0) return 0;

    uint256 numerator = claimed[account][reward] * shares;
    uint256 claimedAmountProportion = numerator == 0 ? 0 : (numerator - 1) / balance + 1;
    return rawClaimable_ > claimedAmountProportion ? rawClaimable_ - claimedAmountProportion : 0;
  }

  /// @notice Harvests provider's market assets as rewards to be distributed among stakers.
  /// @dev This function withdraws the maximum allowable assets from the provider's market,
  /// calculates the portion to be distributed as rewards based on `providerRatio`,
  /// deposits any remaining assets back into savings, and notifies the contract of the new reward amount.
  function harvest() external whenNotPaused {
    Market memMarket = market;
    address memProvider = provider;
    uint256 shares = Math.min(memMarket.allowance(memProvider, address(this)), memMarket.maxRedeem(memProvider));
    uint256 sharesReward = shares.mulWadDown(providerRatio);

    memMarket.transferFrom(provider, address(this), sharesReward);
    uint256 save = shares - sharesReward;
    if (save != 0) memMarket.transferFrom(memProvider, savings, save);

    notifyRewardAmount(IERC20(address(memMarket)), sharesReward, address(this));
  }

  /// @notice Returns all reward tokens.
  /// @return The list of reward tokens.
  function allRewardsTokens() external view returns (IERC20[] memory) {
    return rewardsTokens;
  }

  /// @notice Internal function to claim rewards.
  /// @param reward The reward token.
  function claim_(IERC20 reward, address account) internal whenNotPaused {
    uint256 time = block.timestamp * 1e18 - avgStart[account];
    if (time <= minTime * 1e18) return;

    uint256 claimedAmount = claimed[account][reward];
    // due to excess exposure
    uint256 claimableAmount = Math.max(rawClaimable(reward, account, balanceOf(account)), claimedAmount);
    uint256 claimAmount = claimableAmount - claimedAmount;

    if (claimAmount != 0) claimed[account][reward] = claimedAmount + claimAmount;

    if (time > refTime * 1e18) {
      uint256 rawEarned = earned(reward, account, balanceOf(account));
      uint256 savedAmount = saved[account][reward];
      uint256 maxClaimed = Math.min(rawEarned, claimableAmount);
      uint256 saveAmount = rawEarned > maxClaimed + savedAmount ? rawEarned - maxClaimed - savedAmount : 0;

      if (saveAmount != 0) {
        saved[account][reward] = savedAmount + saveAmount;
        reward.safeTransfer(savings, saveAmount);
      }
    }
    if (claimAmount != 0) {
      reward.safeTransfer(account, claimAmount);
      emit RewardPaid(reward, account, claimAmount);
    }
  }

  /// @notice Claims rewards for a specific reward token.
  /// @param reward The reward token.
  function claim(IERC20 reward) external {
    claim_(reward, msg.sender);
  }

  /// @notice Claims rewards for all reward tokens.
  function claimAll() external {
    for (uint256 i = 0; i < rewardsTokens.length; ++i) {
      claim_(rewardsTokens[i], msg.sender);
    }
  }

  /// @notice Withdraws `amount` of `reward` from contract to `savings`.
  /// @param reward The reward token.
  /// @param amount The amount of reward tokens to withdraw.
  function withdrawRewards(IERC20 reward, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) onlyReward(reward) {
    if (address(reward) == asset() && amount > reward.balanceOf(address(this)) - totalAssets()) {
      revert InsufficientBalance();
    }
    address memSavings = savings;
    reward.safeTransfer(memSavings, amount);
    emit RewardsWithdrawn(msg.sender, memSavings, reward, amount);
  }

  /// @notice Enables a new reward token.
  /// @param reward The reward token.
  function enableReward(IERC20 reward) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (rewardsTokens.length >= MAX_REWARDS_TOKENS) revert MaxRewardsTokensExceeded();
    if (rewards[reward].finishAt != 0) revert AlreadyEnabled();

    rewards[reward].finishAt = uint40(block.timestamp);
    rewardsTokens.push(reward);

    emit RewardListed(reward, msg.sender);
  }

  /// @notice Finishes the distribution of a reward token.
  /// @param reward The reward token.
  function finishDistribution(IERC20 reward) public onlyRole(DEFAULT_ADMIN_ROLE) onlyReward(reward) {
    updateIndex(reward);

    if (block.timestamp < rewards[reward].finishAt) {
      uint256 finishAt = rewards[reward].finishAt;
      rewards[reward].finishAt = uint40(block.timestamp);
      reward.safeTransfer(savings, (finishAt - block.timestamp).mulWadDown(rewards[reward].rate));
    }

    if (reward == IERC20(address(market))) setProvider(address(0));

    emit DistributionFinished(reward, msg.sender);
  }

  /// @notice Sets the rewards duration for a reward token.
  /// @dev Can only change the duration if the reward is finished.
  /// @param reward The reward token.
  /// @param duration The new duration.
  function setRewardsDuration(IERC20 reward, uint40 duration) public onlyRole(DEFAULT_ADMIN_ROLE) {
    RewardData storage rewardData = rewards[reward];
    if (rewardData.finishAt > block.timestamp) revert NotFinished();

    rewardData.duration = duration;

    emit RewardsDurationSet(reward, msg.sender, duration);
  }

  /// @notice Notifies the contract about a reward amount.
  /// @param reward The reward token.
  /// @param amount The amount of reward tokens.
  function notifyRewardAmount(IERC20 reward, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
    notifyRewardAmount(reward, amount, msg.sender);
  }

  /// @notice Sets the market.
  /// @param market_ The new market.
  function setMarket(Market market_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (address(market_) == address(0)) revert ZeroAddress();
    market = market_;

    if (rewards[IERC20(address(market_))].finishAt == 0) enableReward(IERC20(address(market_)));

    emit MarketSet(market_, msg.sender);
  }

  /// @notice Sets the provider address.
  /// @param provider_ The new provider address.
  function setProvider(address provider_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    provider = provider_;
    emit ProviderSet(provider_, msg.sender);
  }

  /// @notice Sets the provider ratio.
  /// @param providerRatio_ The new provider ratio.
  function setProviderRatio(uint256 providerRatio_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (providerRatio_ > 1e18) revert InvalidRatio();
    providerRatio = providerRatio_;
    emit ProviderRatioSet(providerRatio_, msg.sender);
  }

  /// @notice Sets the savings address.
  /// @param savings_ The new savings address.
  function setSavings(address savings_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (savings_ == address(0)) revert ZeroAddress();
    savings = savings_;
    emit SavingsSet(savings_, msg.sender);
  }

  /// @notice Sets the minimum time to stake for rewards.
  /// @param minTime_ The new minimum time.
  function setMinTime(uint256 minTime_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    minTime = minTime_;
    emit MinTimeSet(minTime_, msg.sender);
  }

  /// @notice Sets the penalty growth factor.
  /// @param penaltyGrowth_ The new penalty growth factor.
  function setPenaltyGrowth(uint256 penaltyGrowth_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (penaltyGrowth_ < 0.1e18 || penaltyGrowth_ > 100e18) revert InvalidRange();
    penaltyGrowth = penaltyGrowth_;
    emit PenaltyGrowthSet(penaltyGrowth_, msg.sender);
  }

  /// @notice Sets the penalty threshold.
  /// @param penaltyThreshold_ The new penalty threshold.
  function setPenaltyThreshold(uint256 penaltyThreshold_) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (penaltyThreshold_ > 1e18) revert InvalidRange();
    penaltyThreshold = penaltyThreshold_;
    emit PenaltyThresholdSet(penaltyThreshold_, msg.sender);
  }

  /// @notice Sets the pause state to true in case of emergency, triggered by an authorized account.
  function pause() external onlyPausingRoles {
    _pause();
  }

  /// @notice Sets the pause state to false when threat is gone, triggered by an authorized account.
  function unpause() external onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  /// @notice Returns the total assets of the contract.
  /// @return The total assets.
  function totalAssets() public view override returns (uint256) {
    return totalSupply();
  }

  /// @notice Returns the number of decimals used by the token.
  /// @return The number of decimals.
  function decimals() public view override(ERC4626Upgradeable, ERC20Upgradeable) returns (uint8) {
    return ERC4626Upgradeable.decimals();
  }

  /// @notice Returns the current timepoint of stEXA, as per ERC-6372.
  function clock() public view override returns (uint48) {
    return uint48(block.timestamp);
  }

  /// @notice Returns the current clock mode of stEXA, as per ERC-6372.
  // solhint-disable-next-line func-name-mixedcase
  function CLOCK_MODE() public pure override returns (string memory) {
    return "mode=timestamp";
  }

  event DistributionFinished(IERC20 indexed reward, address indexed account);
  event MarketSet(Market indexed market, address indexed account);
  event MinTimeSet(uint256 minTime, address indexed account);
  event PenaltyGrowthSet(uint256 penaltyGrowth, address indexed account);
  event PenaltyThresholdSet(uint256 penaltyThreshold, address indexed account);
  event ProviderRatioSet(uint256 providerRatio, address indexed account);
  event ProviderSet(address indexed provider, address indexed account);
  event RefTimeSet(uint256 refTime, address indexed account);
  event RewardAmountNotified(IERC20 indexed reward, address indexed notifier, uint256 amount);
  event RewardListed(IERC20 indexed reward, address indexed account);
  event RewardPaid(IERC20 indexed reward, address indexed account, uint256 amount);
  event RewardsDurationSet(IERC20 indexed reward, address indexed account, uint256 duration);
  event RewardsWithdrawn(address indexed account, address indexed receiver, IERC20 indexed reward, uint256 amount);
  event SavingsSet(address indexed savings, address indexed account);
}

error AlreadyEnabled();
error InsufficientBalance();
error InvalidRange();
error InvalidRatio();
error MaxRewardsTokensExceeded();
error NotAllowed();
error NotFinished();
error NotPausingRole();
error RewardNotListed();
error Untransferable();
error ZeroAddress();
error ZeroRate();
error ZeroAmount();

struct Parameters {
  IERC20 asset;
  uint256 minTime;
  uint256 refTime;
  uint256 excessFactor;
  uint256 penaltyGrowth;
  uint256 penaltyThreshold;
  Market market;
  address provider;
  address savings;
  uint40 duration;
  uint256 providerRatio;
}

struct RewardData {
  uint40 duration;
  uint40 finishAt;
  uint40 updatedAt;
  uint256 index;
  /// @notice rate in assets per second with 18 extra decimals
  uint256 rate;
}

struct Permit {
  uint256 value;
  uint256 deadline;
  uint8 v;
  bytes32 r;
  bytes32 s;
}

// ============================================================
// FILE: contracts/utils/FixedLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import { Math } from "@openzeppelin/contracts-v4/utils/math/Math.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";

library FixedLib {
  using FixedPointMathLib for uint256;

  uint256 internal constant INTERVAL = 4 weeks;

  /// @notice Gets the amount of revenue sharing between the backup supplier and the new fixed pool supplier.
  /// @param pool fixed rate pool.
  /// @param amount amount being provided by the fixed pool supplier.
  /// @param backupFeeRate rate charged to the fixed pool supplier to be accrued by the backup supplier.
  /// @return yield amount to be offered to the fixed pool supplier.
  /// @return backupFee yield to be accrued by the backup supplier for initially providing the liquidity.
  function calculateDeposit(
    Pool memory pool,
    uint256 amount,
    uint256 backupFeeRate
  ) internal pure returns (uint256 yield, uint256 backupFee) {
    uint256 memBackupSupplied = backupSupplied(pool);
    if (memBackupSupplied != 0) {
      yield = pool.unassignedEarnings.mulDivDown(Math.min(amount, memBackupSupplied), memBackupSupplied);
      backupFee = yield.mulWadDown(backupFeeRate);
      yield -= backupFee;
    }
  }

  /// @notice Registers an operation to add supply to a fixed rate pool and potentially reduce backup debt.
  /// @param pool fixed rate pool where an amount will be added to the supply.
  /// @param amount amount to be added to the supply.
  /// @return backupDebtReduction amount that will be reduced from the backup debt.
  function deposit(Pool storage pool, uint256 amount) internal returns (uint256 backupDebtReduction) {
    uint256 borrowed = pool.borrowed;
    uint256 supplied = pool.supplied;
    pool.supplied = supplied + amount;
    backupDebtReduction = Math.min(borrowed - Math.min(borrowed, supplied), amount);
  }

  /// @notice Registers an operation to reduce borrowed amount from a fixed rate pool
  /// and potentially reduce backup debt.
  /// @param pool fixed rate pool where an amount will be repaid.
  /// @param amount amount to be added to the fixed rate pool.
  /// @return backupDebtReduction amount that will be reduced from the backup debt.
  function repay(Pool storage pool, uint256 amount) internal returns (uint256 backupDebtReduction) {
    uint256 borrowed = pool.borrowed;
    uint256 supplied = pool.supplied;
    pool.borrowed = borrowed - amount;
    backupDebtReduction = Math.min(borrowed - Math.min(borrowed, supplied), amount);
  }

  /// @notice Registers an operation to increase borrowed amount of a fixed rate pool
  /// and potentially increase backup debt.
  /// @param pool fixed rate pool where an amount will be borrowed.
  /// @param amount amount to be borrowed from the fixed rate pool.
  /// @return backupDebtAddition amount of new debt that needs to be borrowed from the backup supplier.
  function borrow(Pool storage pool, uint256 amount) internal returns (uint256 backupDebtAddition) {
    uint256 borrowed = pool.borrowed;
    uint256 newBorrowed = borrowed + amount;

    backupDebtAddition = newBorrowed - Math.min(Math.max(borrowed, pool.supplied), newBorrowed);
    pool.borrowed = newBorrowed;
  }

  /// @notice Registers an operation to reduce supply from a fixed rate pool and potentially increase backup debt.
  /// @param pool fixed rate pool where amount will be withdrawn.
  /// @param amountToDiscount amount to be withdrawn from the fixed rate pool.
  /// @return backupDebtAddition amount of new debt that needs to be borrowed from the backup supplier.
  function withdraw(Pool storage pool, uint256 amountToDiscount) internal returns (uint256 backupDebtAddition) {
    uint256 borrowed = pool.borrowed;
    uint256 supplied = pool.supplied;
    uint256 newSupply = supplied - amountToDiscount;

    backupDebtAddition = Math.min(supplied, borrowed) - Math.min(newSupply, borrowed);
    pool.supplied = newSupply;
  }

  /// @notice Accrues backup earnings from `unassignedEarnings` based on the `lastAccrual` time.
  /// @param pool fixed rate pool where earnings will be accrued.
  /// @param maturity maturity date of the pool.
  /// @return backupEarnings amount of earnings to be distributed to the backup supplier.
  function accrueEarnings(Pool storage pool, uint256 maturity) internal returns (uint256 backupEarnings) {
    uint256 lastAccrual = pool.lastAccrual;

    if (block.timestamp < maturity) {
      uint256 unassignedEarnings = pool.unassignedEarnings;
      pool.lastAccrual = block.timestamp;
      backupEarnings = unassignedEarnings.mulDivDown(block.timestamp - lastAccrual, maturity - lastAccrual);
      pool.unassignedEarnings = unassignedEarnings - backupEarnings;
    } else if (lastAccrual == maturity) {
      backupEarnings = 0;
    } else {
      pool.lastAccrual = maturity;
      backupEarnings = pool.unassignedEarnings;
      pool.unassignedEarnings = 0;
    }
  }

  /// @notice Calculates the amount that a fixed rate pool borrowed from the backup supplier.
  /// @param pool fixed rate pool.
  /// @return amount borrowed from the fixed rate pool.
  function backupSupplied(Pool memory pool) internal pure returns (uint256) {
    uint256 borrowed = pool.borrowed;
    uint256 supplied = pool.supplied;
    return borrowed - Math.min(borrowed, supplied);
  }

  /// @notice Modify positions based on a certain amount, keeping the original principal/fee ratio.
  /// @dev modifies the original struct and returns it. Needs for the amount to be less than the principal and the fee
  /// @param position original position to be scaled.
  /// @param amount to be used as a full value (principal + interest).
  /// @return scaled position.
  function scaleProportionally(Position memory position, uint256 amount) internal pure returns (Position memory) {
    uint256 principal = amount.mulDivDown(position.principal, position.principal + position.fee);
    position.principal = principal;
    position.fee = amount - principal;
    return position;
  }

  /// @notice Reduce positions based on a certain amount, keeping the original principal/fee ratio.
  /// @dev modifies the original struct and returns it.
  /// @param position original position to be reduced.
  /// @param amount to be used as a full value (principal + interest).
  /// @return reduced position.
  function reduceProportionally(Position memory position, uint256 amount) internal pure returns (Position memory) {
    uint256 positionAssets = position.principal + position.fee;
    uint256 newPositionAssets = positionAssets - amount;
    position.principal = newPositionAssets.mulDivDown(position.principal, positionAssets);
    position.fee = newPositionAssets - position.principal;
    return position;
  }

  /// @notice Calculates what proportion of earnings would `borrowAmount` represent considering `backupSupplied`.
  /// @param earnings amount to be distributed.
  /// @param borrowAmount amount that will be checked if came from the backup supplier or fixed rate pool.
  /// @return unassignedEarnings earnings to be added to `unassignedEarnings`.
  /// @return backupEarnings earnings to be distributed to the backup supplier.
  function distributeEarnings(
    Pool memory pool,
    uint256 earnings,
    uint256 borrowAmount
  ) internal pure returns (uint256 unassignedEarnings, uint256 backupEarnings) {
    backupEarnings = borrowAmount == 0
      ? 0
      : earnings.mulDivDown(borrowAmount - Math.min(backupSupplied(pool), borrowAmount), borrowAmount);
    unassignedEarnings = earnings - backupEarnings;
  }

  /// @notice Adds a maturity date to the borrow or supply positions of the account.
  /// @param encoded encoded maturity dates where the account borrowed or supplied to.
  /// @param maturity the new maturity where the account will borrow or supply to.
  /// @return updated encoded maturity dates.
  function setMaturity(uint256 encoded, uint256 maturity) internal pure returns (uint256) {
    // initialize the maturity with also the 1st bit on the 33th position set
    if (encoded == 0) return maturity | (1 << 32);

    uint256 baseMaturity = encoded & ((1 << 32) - 1);
    if (maturity < baseMaturity) {
      // if the new maturity is lower than the base, set it as the new base
      // wipe clean the last 32 bits, shift the amount of `INTERVAL` and set the new value with the 33rd bit set
      uint256 range = (baseMaturity - maturity) / INTERVAL;
      if (encoded >> (256 - range) != 0) revert MaturityOverflow();
      encoded = ((encoded >> 32) << (32 + range));
      return maturity | encoded | (1 << 32);
    } else {
      uint256 range = (maturity - baseMaturity) / INTERVAL;
      if (range > 223) revert MaturityOverflow();
      return encoded | (1 << (32 + range));
    }
  }

  /// @notice Remove maturity from account's borrow or supplied positions.
  /// @param encoded encoded maturity dates where the account borrowed or supplied to.
  /// @param maturity maturity date to be removed.
  /// @return updated encoded maturity dates.
  function clearMaturity(uint256 encoded, uint256 maturity) internal pure returns (uint256) {
    if (encoded == 0 || encoded == maturity | (1 << 32)) return 0;

    uint256 baseMaturity = encoded & ((1 << 32) - 1);
    // if the baseMaturity is the one being cleaned
    if (maturity == baseMaturity) {
      // wipe 32 bytes + 1 for the old base flag
      uint256 packed = encoded >> 33;
      uint256 range = 1;
      while ((packed & 1) == 0 && packed != 0) {
        unchecked {
          ++range;
        }
        packed >>= 1;
      }
      encoded = ((encoded >> (32 + range)) << 32);
      return (maturity + (range * INTERVAL)) | encoded;
    } else {
      // otherwise just clear the bit
      return encoded & ~(1 << (32 + ((maturity - baseMaturity) / INTERVAL)));
    }
  }

  /// @notice Verifies that a maturity is `VALID`, `MATURED`, `NOT_READY` or `INVALID`.
  /// @dev if expected state doesn't match the calculated one, it reverts with a custom error `UnmatchedPoolState`.
  /// @param maturity timestamp of the maturity date to be verified.
  /// @param maxPools number of pools available in the time horizon.
  /// @param requiredState state required by the caller to be verified (see `State` for description).
  /// @param alternativeState state required by the caller to be verified (see `State` for description).
  function checkPoolState(uint256 maturity, uint8 maxPools, State requiredState, State alternativeState) internal view {
    State state;
    if (maturity % INTERVAL != 0) {
      state = State.INVALID;
    } else if (maturity <= block.timestamp) {
      state = State.MATURED;
    } else if (maturity > block.timestamp - (block.timestamp % INTERVAL) + (INTERVAL * maxPools)) {
      state = State.NOT_READY;
    } else {
      state = State.VALID;
    }

    if (state != requiredState && state != alternativeState) {
      if (alternativeState == State.NONE) revert UnmatchedPoolState(uint8(state), uint8(requiredState));

      revert UnmatchedPoolStates(uint8(state), uint8(requiredState), uint8(alternativeState));
    }
  }

  /// @notice Stores the accountability of a fixed interest rate pool.
  /// @param borrowed total amount borrowed from the pool.
  /// @param supplied total amount supplied to the pool.
  /// @param unassignedEarnings total amount of earnings not yet distributed and accrued.
  /// @param lastAccrual timestamp for the last time that some earnings have been distributed to the backup supplier.
  struct Pool {
    uint256 borrowed;
    uint256 supplied;
    uint256 unassignedEarnings;
    uint256 lastAccrual;
  }

  /// @notice Stores principal and fee of a borrow or a supply position of a account in a fixed rate pool.
  /// @param principal amount borrowed or supplied to the fixed rate pool.
  /// @param fee amount of fees to be repaid or earned at the maturity of the fixed rate pool.
  struct Position {
    uint256 principal;
    uint256 fee;
  }

  enum State {
    NONE,
    INVALID,
    MATURED,
    VALID,
    NOT_READY
  }
}

error MaturityOverflow();
error UnmatchedPoolState(uint8 state, uint8 requiredState);
error UnmatchedPoolStates(uint8 state, uint8 requiredState, uint8 alternativeState);

// ============================================================
// FILE: contracts/utils/IPriceFeed.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

interface IPriceFeed {
  function decimals() external view returns (uint8);

  function latestAnswer() external view returns (int256);
}

// ============================================================
// FILE: solmate/src/mixins/ERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {ERC20} from "../tokens/ERC20.sol";
import {SafeTransferLib} from "../utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "../utils/FixedPointMathLib.sol";

/// @notice Minimal ERC4626 tokenized Vault implementation.
/// @author Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/mixins/ERC4626.sol)
abstract contract ERC4626 is ERC20 {
    using SafeTransferLib for ERC20;
    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Deposit(address indexed caller, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed caller,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /*//////////////////////////////////////////////////////////////
                               IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    ERC20 public immutable asset;

    constructor(
        ERC20 _asset,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol, _asset.decimals()) {
        asset = _asset;
    }

    /*//////////////////////////////////////////////////////////////
                        DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    function deposit(uint256 assets, address receiver) public virtual returns (uint256 shares) {
        // Check for rounding error since we round down in previewDeposit.
        require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");

        // Need to transfer before minting or ERC777s could reenter.
        asset.safeTransferFrom(msg.sender, address(this), assets);

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);

        afterDeposit(assets, shares);
    }

    function mint(uint256 shares, address receiver) public virtual returns (uint256 assets) {
        assets = previewMint(shares); // No need to check for rounding error, previewMint rounds up.

        // Need to transfer before minting or ERC777s could reenter.
        asset.safeTransferFrom(msg.sender, address(this), assets);

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);

        afterDeposit(assets, shares);
    }

    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) public virtual returns (uint256 shares) {
        shares = previewWithdraw(assets); // No need to check for rounding error, previewWithdraw rounds up.

        if (msg.sender != owner) {
            uint256 allowed = allowance[owner][msg.sender]; // Saves gas for limited approvals.

            if (allowed != type(uint256).max) allowance[owner][msg.sender] = allowed - shares;
        }

        beforeWithdraw(assets, shares);

        _burn(owner, shares);

        emit Withdraw(msg.sender, receiver, owner, assets, shares);

        asset.safeTransfer(receiver, assets);
    }

    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) public virtual returns (uint256 assets) {
        if (msg.sender != owner) {
            uint256 allowed = allowance[owner][msg.sender]; // Saves gas for limited approvals.

            if (allowed != type(uint256).max) allowance[owner][msg.sender] = allowed - shares;
        }

        // Check for rounding error since we round down in previewRedeem.
        require((assets = previewRedeem(shares)) != 0, "ZERO_ASSETS");

        beforeWithdraw(assets, shares);

        _burn(owner, shares);

        emit Withdraw(msg.sender, receiver, owner, assets, shares);

        asset.safeTransfer(receiver, assets);
    }

    /*//////////////////////////////////////////////////////////////
                            ACCOUNTING LOGIC
    //////////////////////////////////////////////////////////////*/

    function totalAssets() public view virtual returns (uint256);

    function convertToShares(uint256 assets) public view virtual returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? assets : assets.mulDivDown(supply, totalAssets());
    }

    function convertToAssets(uint256 shares) public view virtual returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? shares : shares.mulDivDown(totalAssets(), supply);
    }

    function previewDeposit(uint256 assets) public view virtual returns (uint256) {
        return convertToShares(assets);
    }

    function previewMint(uint256 shares) public view virtual returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? shares : shares.mulDivUp(totalAssets(), supply);
    }

    function previewWithdraw(uint256 assets) public view virtual returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? assets : assets.mulDivUp(supply, totalAssets());
    }

    function previewRedeem(uint256 shares) public view virtual returns (uint256) {
        return convertToAssets(shares);
    }

    /*//////////////////////////////////////////////////////////////
                     DEPOSIT/WITHDRAWAL LIMIT LOGIC
    //////////////////////////////////////////////////////////////*/

    function maxDeposit(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    function maxMint(address) public view virtual returns (uint256) {
        return type(uint256).max;
    }

    function maxWithdraw(address owner) public view virtual returns (uint256) {
        return convertToAssets(balanceOf[owner]);
    }

    function maxRedeem(address owner) public view virtual returns (uint256) {
        return balanceOf[owner];
    }

    /*//////////////////////////////////////////////////////////////
                          INTERNAL HOOKS LOGIC
    //////////////////////////////////////////////////////////////*/

    function beforeWithdraw(uint256 assets, uint256 shares) internal virtual {}

    function afterDeposit(uint256 assets, uint256 shares) internal virtual {}
}

// ============================================================
// FILE: solmate/src/tokens/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256(
                                    "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                                ),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}

// ============================================================
// FILE: solmate/src/utils/FixedPointMathLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @notice Arithmetic library with operations for fixed-point numbers.
/// @author Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/utils/FixedPointMathLib.sol)
library FixedPointMathLib {
    /*//////////////////////////////////////////////////////////////
                    SIMPLIFIED FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    uint256 internal constant WAD = 1e18; // The scalar of ETH and most ERC20s.

    function mulWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, y, WAD); // Equivalent to (x * y) / WAD rounded down.
    }

    function mulWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, y, WAD); // Equivalent to (x * y) / WAD rounded up.
    }

    function divWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, WAD, y); // Equivalent to (x * WAD) / y rounded down.
    }

    function divWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, WAD, y); // Equivalent to (x * WAD) / y rounded up.
    }

    function powWad(int256 x, int256 y) internal pure returns (int256) {
        // Equivalent to x to the power of y because x ** y = (e ** ln(x)) ** y = e ** (ln(x) * y)
        return expWad((lnWad(x) * y) / int256(WAD)); // Using ln(x) means x must be greater than 0.
    }

    function expWad(int256 x) internal pure returns (int256 r) {
        unchecked {
            // When the result is < 0.5 we return zero. This happens when
            // x <= floor(log(0.5e18) * 1e18) ~ -42e18
            if (x <= -42139678854452767551) return 0;

            // When the result is > (2**255 - 1) / 1e18 we can not represent it as an
            // int. This happens when x >= floor(log((2**255 - 1) / 1e18) * 1e18) ~ 135.
            if (x >= 135305999368893231589) revert("EXP_OVERFLOW");

            // x is now in the range (-42, 136) * 1e18. Convert to (-42, 136) * 2**96
            // for more intermediate precision and a binary basis. This base conversion
            // is a multiplication by 1e18 / 2**96 = 5**18 / 2**78.
            x = (x << 78) / 5**18;

            // Reduce range of x to (-½ ln 2, ½ ln 2) * 2**96 by factoring out powers
            // of two such that exp(x) = exp(x') * 2**k, where k is an integer.
            // Solving this gives k = round(x / log(2)) and x' = x - k * log(2).
            int256 k = ((x << 96) / 54916777467707473351141471128 + 2**95) >> 96;
            x = x - k * 54916777467707473351141471128;

            // k is in the range [-61, 195].

            // Evaluate using a (6, 7)-term rational approximation.
            // p is made monic, we'll multiply by a scale factor later.
            int256 y = x + 1346386616545796478920950773328;
            y = ((y * x) >> 96) + 57155421227552351082224309758442;
            int256 p = y + x - 94201549194550492254356042504812;
            p = ((p * y) >> 96) + 28719021644029726153956944680412240;
            p = p * x + (4385272521454847904659076985693276 << 96);

            // We leave p in 2**192 basis so we don't need to scale it back up for the division.
            int256 q = x - 2855989394907223263936484059900;
            q = ((q * x) >> 96) + 50020603652535783019961831881945;
            q = ((q * x) >> 96) - 533845033583426703283633433725380;
            q = ((q * x) >> 96) + 3604857256930695427073651918091429;
            q = ((q * x) >> 96) - 14423608567350463180887372962807573;
            q = ((q * x) >> 96) + 26449188498355588339934803723976023;

            assembly {
                // Div in assembly because solidity adds a zero check despite the unchecked.
                // The q polynomial won't have zeros in the domain as all its roots are complex.
                // No scaling is necessary because p is already 2**96 too large.
                r := sdiv(p, q)
            }

            // r should be in the range (0.09, 0.25) * 2**96.

            // We now need to multiply r by:
            // * the scale factor s = ~6.031367120.
            // * the 2**k factor from the range reduction.
            // * the 1e18 / 2**96 factor for base conversion.
            // We do this all at once, with an intermediate result in 2**213
            // basis, so the final right shift is always by a positive amount.
            r = int256((uint256(r) * 3822833074963236453042738258902158003155416615667) >> uint256(195 - k));
        }
    }

    function lnWad(int256 x) internal pure returns (int256 r) {
        unchecked {
            require(x > 0, "UNDEFINED");

            // We want to convert x from 10**18 fixed point to 2**96 fixed point.
            // We do this by multiplying by 2**96 / 10**18. But since
            // ln(x * C) = ln(x) + ln(C), we can simply do nothing here
            // and add ln(2**96 / 10**18) at the end.

            // Reduce range of x to (1, 2) * 2**96
            // ln(2^k * x) = k * ln(2) + ln(x)
            int256 k = int256(log2(uint256(x))) - 96;
            x <<= uint256(159 - k);
            x = int256(uint256(x) >> 159);

            // Evaluate using a (8, 8)-term rational approximation.
            // p is made monic, we will multiply by a scale factor later.
            int256 p = x + 3273285459638523848632254066296;
            p = ((p * x) >> 96) + 24828157081833163892658089445524;
            p = ((p * x) >> 96) + 43456485725739037958740375743393;
            p = ((p * x) >> 96) - 11111509109440967052023855526967;
            p = ((p * x) >> 96) - 45023709667254063763336534515857;
            p = ((p * x) >> 96) - 14706773417378608786704636184526;
            p = p * x - (795164235651350426258249787498 << 96);

            // We leave p in 2**192 basis so we don't need to scale it back up for the division.
            // q is monic by convention.
            int256 q = x + 5573035233440673466300451813936;
            q = ((q * x) >> 96) + 71694874799317883764090561454958;
            q = ((q * x) >> 96) + 283447036172924575727196451306956;
            q = ((q * x) >> 96) + 401686690394027663651624208769553;
            q = ((q * x) >> 96) + 204048457590392012362485061816622;
            q = ((q * x) >> 96) + 31853899698501571402653359427138;
            q = ((q * x) >> 96) + 909429971244387300277376558375;
            assembly {
                // Div in assembly because solidity adds a zero check despite the unchecked.
                // The q polynomial is known not to have zeros in the domain.
                // No scaling required because p is already 2**96 too large.
                r := sdiv(p, q)
            }

            // r is in the range (0, 0.125) * 2**96

            // Finalization, we need to:
            // * multiply by the scale factor s = 5.549…
            // * add ln(2**96 / 10**18)
            // * add k * ln(2)
            // * multiply by 10**18 / 2**96 = 5**18 >> 78

            // mul s * 5e18 * 2**96, base is now 5**18 * 2**192
            r *= 1677202110996718588342820967067443963516166;
            // add ln(2) * k * 5e18 * 2**192
            r += 16597577552685614221487285958193947469193820559219878177908093499208371 * k;
            // add ln(2**96 / 10**18) * 5e18 * 2**192
            r += 600920179829731861736702779321621459595472258049074101567377883020018308;
            // base conversion: mul 2**18 / 2**192
            r >>= 174;
        }
    }

    /*//////////////////////////////////////////////////////////////
                    LOW LEVEL FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function mulDivDown(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(denominator != 0 && (x == 0 || (x * y) / x == y))
            if iszero(and(iszero(iszero(denominator)), or(iszero(x), eq(div(z, x), y)))) {
                revert(0, 0)
            }

            // Divide z by the denominator.
            z := div(z, denominator)
        }
    }

    function mulDivUp(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        assembly {
            // Store x * y in z for now.
            z := mul(x, y)

            // Equivalent to require(denominator != 0 && (x == 0 || (x * y) / x == y))
            if iszero(and(iszero(iszero(denominator)), or(iszero(x), eq(div(z, x), y)))) {
                revert(0, 0)
            }

            // First, divide z - 1 by the denominator and add 1.
            // We allow z - 1 to underflow if z is 0, because we multiply the
            // end result by 0 if z is zero, ensuring we return 0 if z is zero.
            z := mul(iszero(iszero(z)), add(div(sub(z, 1), denominator), 1))
        }
    }

    function rpow(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) internal pure returns (uint256 z) {
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    // 0 ** 0 = 1
                    z := scalar
                }
                default {
                    // 0 ** n = 0
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    // If n is even, store scalar in z for now.
                    z := scalar
                }
                default {
                    // If n is odd, store x in z for now.
                    z := x
                }

                // Shifting right by 1 is like dividing by 2.
                let half := shr(1, scalar)

                for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {
                    // Revert immediately if x ** 2 would overflow.
                    // Equivalent to iszero(eq(div(xx, x), x)) here.
                    if shr(128, x) {
                        revert(0, 0)
                    }

                    // Store x squared.
                    let xx := mul(x, x)

                    // Round to the nearest number.
                    let xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)

                    // If n is even:
                    if mod(n, 2) {
                        // Compute z * x.
                        let zx := mul(z, x)

                        // If z * x overflowed:
                        if iszero(eq(div(zx, x), z)) {
                            // Revert if x is non-zero.
                            if iszero(iszero(x)) {
                                revert(0, 0)
                            }
                        }

                        // Round to the nearest number.
                        let zxRound := add(zx, half)

                        // Revert if zx + half overflowed.
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }

                        // Return properly scaled zxRound.
                        z := div(zxRound, scalar)
                    }
                }
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                        GENERAL NUMBER UTILITIES
    //////////////////////////////////////////////////////////////*/

    function sqrt(uint256 x) internal pure returns (uint256 z) {
        assembly {
            let y := x // We start y at x, which will help us make our initial estimate.

            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // We check y >= 2^(k + 8) but shift right by k bits
            // each branch to ensure that if x >= 256, then y >= 256.
            if iszero(lt(y, 0x10000000000000000000000000000000000)) {
                y := shr(128, y)
                z := shl(64, z)
            }
            if iszero(lt(y, 0x1000000000000000000)) {
                y := shr(64, y)
                z := shl(32, z)
            }
            if iszero(lt(y, 0x10000000000)) {
                y := shr(32, y)
                z := shl(16, z)
            }
            if iszero(lt(y, 0x1000000)) {
                y := shr(16, y)
                z := shl(8, z)
            }

            // Goal was to get z*z*y within a small factor of x. More iterations could
            // get y in a tighter range. Currently, we will have y in [256, 256*2^16).
            // We ensured y >= 256 so that the relative difference between y and y+1 is small.
            // That's not possible if x < 256 but we can just verify those cases exhaustively.

            // Now, z*z*y <= x < z*z*(y+1), and y <= 2^(16+8), and either y >= 256, or x < 256.
            // Correctness can be checked exhaustively for x < 256, so we assume y >= 256.
            // Then z*sqrt(y) is within sqrt(257)/sqrt(256) of sqrt(x), or about 20bps.

            // For s in the range [1/256, 256], the estimate f(s) = (181/1024) * (s+1) is in the range
            // (1/2.84 * sqrt(s), 2.84 * sqrt(s)), with largest error when s = 1 and when s = 256 or 1/256.

            // Since y is in [256, 256*2^16), let a = y/65536, so that a is in [1/256, 256). Then we can estimate
            // sqrt(y) using sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2^18.

            // There is no overflow risk here since y < 2^136 after the first branch above.
            z := shr(18, mul(z, add(y, 65536))) // A mul() is saved from starting z at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If x+1 is a perfect square, the Babylonian method cycles between
            // floor(sqrt(x)) and ceil(sqrt(x)). This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            // Since the ceil is rare, we save gas on the assignment and repeat division in the rare case.
            // If you don't care whether the floor or ceil square root is returned, you can remove this statement.
            z := sub(z, lt(div(x, z), z))
        }
    }

    function log2(uint256 x) internal pure returns (uint256 r) {
        require(x > 0, "UNDEFINED");

        assembly {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            r := or(r, shl(2, lt(0xf, shr(r, x))))
            r := or(r, shl(1, lt(0x3, shr(r, x))))
            r := or(r, lt(0x1, shr(r, x)))
        }
    }

    function unsafeMod(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            // z will equal 0 if y is 0, unlike in Solidity where it will revert.
            z := mod(x, y)
        }
    }

    function unsafeDiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            // z will equal 0 if y is 0, unlike in Solidity where it will revert.
            z := div(x, y)
        }
    }

    /// @dev Will return 0 instead of reverting if y is zero.
    function unsafeDivUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            // Add 1 to x * y if x % y > 0.
            z := add(gt(mod(x, y), 0), div(x, y))
        }
    }
}

// ============================================================
// FILE: solmate/src/utils/SafeTransferLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {ERC20} from "../tokens/ERC20.sol";

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @dev Caution! This library won't check that a token has code, responsibility is delegated to the caller.
library SafeTransferLib {
    /*//////////////////////////////////////////////////////////////
                             ETH OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferETH(address to, uint256 amount) internal {
        bool success;

        assembly {
            // Transfer the ETH and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        require(success, "ETH_TRANSFER_FAILED");
    }

    /*//////////////////////////////////////////////////////////////
                            ERC20 OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferFrom(
        ERC20 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        bool success;

        assembly {
            // We'll write our calldata to this slot below, but restore it later.
            let memPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(0, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
            mstore(4, and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
            mstore(36, and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(68, amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 100 because that's the total length of our calldata (4 + 32 * 3)
                // Counterintuitively, this call() must be positioned after the or() in the
                // surrounding and() because and() evaluates its arguments from right to left.
                call(gas(), token, 0, 0, 100, 0, 32)
            )

            mstore(0x60, 0) // Restore the zero slot to zero.
            mstore(0x40, memPointer) // Restore the memPointer.
        }

        require(success, "TRANSFER_FROM_FAILED");
    }

    function safeTransfer(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        assembly {
            // We'll write our calldata to this slot below, but restore it later.
            let memPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(0, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            mstore(4, and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(36, amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because that's the total length of our calldata (4 + 32 * 2)
                // Counterintuitively, this call() must be positioned after the or() in the
                // surrounding and() because and() evaluates its arguments from right to left.
                call(gas(), token, 0, 0, 68, 0, 32)
            )

            mstore(0x60, 0) // Restore the zero slot to zero.
            mstore(0x40, memPointer) // Restore the memPointer.
        }

        require(success, "TRANSFER_FAILED");
    }

    function safeApprove(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        assembly {
            // We'll write our calldata to this slot below, but restore it later.
            let memPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(0, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
            mstore(4, to) // Append the "to" argument.
            mstore(36, amount) // Append the "amount" argument.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because that's the total length of our calldata (4 + 32 * 2)
                // Counterintuitively, this call() must be positioned after the or() in the
                // surrounding and() because and() evaluates its arguments from right to left.
                call(gas(), token, 0, 0, 68, 0, 32)
            )

            mstore(0x60, 0) // Restore the zero slot to zero.
            mstore(0x40, memPointer) // Restore the memPointer.
        }

        require(success, "APPROVE_FAILED");
    }
}
