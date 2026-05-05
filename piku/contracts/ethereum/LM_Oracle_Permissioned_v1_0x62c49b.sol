// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/metatx/ERC2771ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (metatx/ERC2771Context.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Context variant with ERC2771 support.
 *
 * WARNING: Avoid using this pattern in contracts that rely in a specific calldata length as they'll
 * be affected by any forwarder whose `msg.data` is suffixed with the `from` address according to the ERC2771
 * specification adding the address size in bytes (20) to the calldata size. An example of an unexpected
 * behavior could be an unintended fallback (or another function) invocation while trying to invoke the `receive`
 * function only accessible if `msg.data.length == 0`.
 *
 * WARNING: The usage of `delegatecall` in this contract is dangerous and may result in context corruption.
 * Any forwarded request to this contract triggering a `delegatecall` to itself will result in an invalid {_msgSender}
 * recovery.
 */
abstract contract ERC2771ContextUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable _trustedForwarder;

    /**
     * @dev Initializes the contract with a trusted forwarder, which will be able to
     * invoke functions on this contract on behalf of other accounts.
     *
     * NOTE: The trusted forwarder can be replaced by overriding {trustedForwarder}.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address trustedForwarder_) {
        _trustedForwarder = trustedForwarder_;
    }

    /**
     * @dev Returns the address of the trusted forwarder.
     */
    function trustedForwarder() public view virtual returns (address) {
        return _trustedForwarder;
    }

    /**
     * @dev Indicates whether any particular address is the trusted forwarder.
     */
    function isTrustedForwarder(address forwarder) public view virtual returns (bool) {
        return forwarder == trustedForwarder();
    }

    /**
     * @dev Override for `msg.sender`. Defaults to the original `msg.sender` whenever
     * a call is not performed by the trusted forwarder or the calldata length is less than
     * 20 bytes (an address length).
     */
    function _msgSender() internal view virtual override returns (address) {
        uint256 calldataLength = msg.data.length;
        uint256 contextSuffixLength = _contextSuffixLength();
        if (isTrustedForwarder(msg.sender) && calldataLength >= contextSuffixLength) {
            return address(bytes20(msg.data[calldataLength - contextSuffixLength:]));
        } else {
            return super._msgSender();
        }
    }

    /**
     * @dev Override for `msg.data`. Defaults to the original `msg.data` whenever
     * a call is not performed by the trusted forwarder or the calldata length is less than
     * 20 bytes (an address length).
     */
    function _msgData() internal view virtual override returns (bytes calldata) {
        uint256 calldataLength = msg.data.length;
        uint256 contextSuffixLength = _contextSuffixLength();
        if (isTrustedForwarder(msg.sender) && calldataLength >= contextSuffixLength) {
            return msg.data[:calldataLength - contextSuffixLength];
        } else {
            return super._msgData();
        }
    }

    /**
     * @dev ERC-2771 specifies the context as being a single address (20 bytes).
     */
    function _contextSuffixLength() internal view virtual override returns (uint256) {
        return 20;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/introspection/ERC165Upgradeable.sol
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
// FILE: lib/openzeppelin-contracts/contracts/access/extensions/IAccessControlEnumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/extensions/IAccessControlEnumerable.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "../IAccessControl.sol";

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
// FILE: lib/openzeppelin-contracts/contracts/access/IAccessControl.sol
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
// FILE: lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
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
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
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
// FILE: src/external/fees/interfaces/IFeeManager_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

interface IFeeManager_v1 {
    //--------------------------------------------------------------------------
    // Structs

    /// @notice Struct used to store fee information.
    /// @dev	When 'set' is true, the value is taken,
    ///         otherwise it reverts to the default value.
    ///         We need some indication here on whether
    ///         the value is set or not, to differentiate
    ///         between an uninitialized 0 and a real 0 fee.
    /// @param  set Whether the fee is set or not.
    /// @param  value The fee value.
    struct Fee {
        bool set;
        uint value;
    }

    //--------------------------------------------------------------------------
    // Errors

    /// @notice The given address is invalid.
    error FeeManager__InvalidAddress();

    /// @notice The given fee is invalid.
    error FeeManager__InvalidFee();

    /// @notice The given max fee is invalid.
    error FeeManager__InvalidMaxFee();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Event emitted when the max fee percentage is set.
    /// @param  maxFee The maximum fee percentage.
    event MaxFeeSet(uint maxFee);

    /// @notice Event emitted when the default protocol treasury is set.
    /// @param  defaultProtocolTreasury The address of the default protocol treasury.
    event DefaultProtocolTreasurySet(address defaultProtocolTreasury);

    /// @notice Event emitted when the workflow treasury is set.
    /// @param  workflow The address of the workflow.
    /// @param  treasury The address of the treasury.
    event WorkflowTreasurySet(address workflow, address treasury);

    /// @notice Event emitted when the default collateral fee is set.
    /// @param  fee The collateral fee amount in relation to the BPS.
    event DefaultCollateralFeeSet(uint fee);

    /// @notice Event emitted when the default issuance fee is set.
    /// @param  fee The issuance fee amount in relation to the BPS.
    event DefaultIssuanceFeeSet(uint fee);

    /// @notice Event emitted when the collateral workflow fee is set.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @param  set Boolean that determines if the fee is actually used or not.
    /// @param  fee The collateral fee in relation to the BPS.
    event CollateralWorkflowFeeSet(
        address workflow,
        address module,
        bytes4 functionSelector,
        bool set,
        uint fee
    );

    /// @notice Event emitted when the issuance workflow fee is set.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @param  set Boolean that determines if the fee is actually used or not.
    /// @param  fee The issuance fee in relation to the BPS.
    event IssuanceWorkflowFeeSet(
        address workflow,
        address module,
        bytes4 functionSelector,
        bool set,
        uint fee
    );

    //--------------------------------------------------------------------------
    // Getter Functions

    /// @dev	This function returns the Base Points used for percentage calculation.
    /// @return uint The Base Points used for percentage calculation. This value represents 100%.
    function BPS() external returns (uint);

    //---------------------------
    // Treasuries

    /// @notice Returns the default treasury for all workflows.
    /// @return The address of the treasury.
    function getDefaultProtocolTreasury() external view returns (address);

    /// @notice Returns the treasury assigned to the given workflow.
    /// @param  workflow The address of the workflow.
    /// @return The address of the treasury.
    function getWorkflowTreasuries(address workflow)
        external
        view
        returns (address);

    //---------------------------
    // Fees

    /// @notice Returns the default collateral fee for all workflows.
    /// @return The collateral fee amount in relation to the BPS.
    function getDefaultCollateralFee() external view returns (uint);

    /// @notice Returns the default issuance fee for all workflows.
    /// @return The issuance fee amount in relation to the BPS.
    function getDefaultIssuanceFee() external view returns (uint);

    /// @notice Returns the collateral fee for a specific workflow module function.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @return fee The collateral fee amount in relation to the BPS.
    function getCollateralWorkflowFee(
        address workflow,
        address module,
        bytes4 functionSelector
    ) external view returns (uint fee);

    /// @notice Returns the issuance fee for a specific workflow module function.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @return fee The issuance fee amount in relation to the BPS.
    function getIssuanceWorkflowFee(
        address workflow,
        address module,
        bytes4 functionSelector
    ) external view returns (uint fee);

    /// @notice Returns the collateral fee for a specific workflow module function and the according
    ///         treasury address of the workflow.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @return fee The collateral fee amount in relation to the BPS.
    /// @return treasury The address of the treasury.
    function getCollateralWorkflowFeeAndTreasury(
        address workflow,
        address module,
        bytes4 functionSelector
    ) external view returns (uint fee, address treasury);

    /// @notice Returns the issuance fee for a specific workflow module function and the according
    ///         treasury address of the workflow.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @return fee The issuance fee amount in relation to the BPS.
    /// @return treasury The address of the treasury.
    function getIssuanceWorkflowFeeAndTreasury(
        address workflow,
        address module,
        bytes4 functionSelector
    ) external view returns (uint fee, address treasury);

    //--------------------------------------------------------------------------
    // Setter Functions

    //---------------------------
    // MaxFee

    /// @notice Sets the maximum fee percentage that can be assigned.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given max fee can not be higher than the BPS.
    /// @param  _maxFee The max Fee in relation to the BPS.
    function setMaxFee(uint _maxFee) external;

    //---------------------------
    // Treasuries

    /// @notice Sets the default protocol treasury address.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given treasury address can not be address(0).
    /// @param  _defaultProtocolTreasury The address of the default protocol treasury.
    function setDefaultProtocolTreasury(address _defaultProtocolTreasury)
        external;

    /// @notice Sets the protocol treasury address for a specific workflow.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given treasury address can not be address(0).
    /// @param  workflow The address of the workflow.
    /// @param  treasury The address of the protocol treasury for that specific workflow.
    function setWorkflowTreasury(address workflow, address treasury) external;

    //---------------------------
    // Fees

    /// @notice Sets the default collateral fee of the protocol.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  _defaultCollateralFee The default collateral fee of the protocol in relation to the BPS.
    function setDefaultCollateralFee(uint _defaultCollateralFee) external;

    /// @notice Sets the default issuance fee of the protocol.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  _defaultIssuanceFee The default issuance fee of the protocol in relation to the BPS.
    function setDefaultIssuanceFee(uint _defaultIssuanceFee) external;

    /// @notice Sets the collateral fee for a specific workflow module function.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @param  set Boolean that determines if the fee is actually used or not.
    /// @param  fee The collateral fee in relation to the BPS.
    function setCollateralWorkflowFee(
        address workflow,
        address module,
        bytes4 functionSelector,
        bool set,
        uint fee
    ) external;

    /// @notice Sets the issuance fee for a specific workflow module function.
    /// @dev	This function can only be called by the owner.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @param  set Boolean that determines if the fee is actually used or not.
    /// @param  fee The issuance fee in relation to the BPS.
    function setIssuanceWorkflowFee(
        address workflow,
        address module,
        bytes4 functionSelector,
        bool set,
        uint fee
    ) external;
}

// ============================================================
// FILE: src/external/governance/interfaces/IGovernor_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Dependencies
import {IModule_v1} from "src/modules/base/IModule_v1.sol";
import {IModuleFactory_v1} from "src/factories/interfaces/IModuleFactory_v1.sol";

import {IInverterBeacon_v1} from "src/proxies/interfaces/IInverterBeacon_v1.sol";

interface IGovernor_v1 {
    //--------------------------------------------------------------------------
    // Structs

    /// @notice Struct used to store information about a timelock for a {IInverterBeacon_v1} upgrade.
    /// @dev	The timelock is needed to upgrade a {IInverterBeacon_v1} to new implementation.
    /// @param  timelockActive Is the timelock currently active.
    /// @param  timelockUntilTimestamp that represents from when the upgrade can be carried out.
    /// @param  intendedImplementation The new inteded Implementation address of the {IInverterBeacon_v1}.
    /// @param  intendedMinorVersion The new intended minor version of the {IInverterBeacon_v1}.
    /// @param  intendedPatchVersion The new intended patch version of the {IInverterBeacon_v1}.
    struct Timelock {
        bool timelockActive;
        uint timelockUntil;
        address intendedImplementation;
        uint intendedMinorVersion;
        uint intendedPatchVersion;
    }

    //--------------------------------------------------------------------------
    // Errors

    /// @notice This function can only be accessed by the linked {ModuleFactory_v1}.
    error Governor__OnlyLinkedModuleFactory();

    /// @notice This function can only be called when the linked {IInverterBeacon_v1} array is empty.
    error Governor__LinkedBeaconsNotEmpty();

    /// @notice The given address is invalid.
    error Governor__InvalidAddress(address adr);

    /// @notice The given amount is invalid.
    error Governor__InvalidTimelockPeriod(uint amt);

    /// @notice The given target address is not accessible.
    error Governor__BeaconNotAccessible(address target);

    /// @notice This function can only be accessed by the CommunityMultisig or TeamMultisig.
    error Governor__OnlyCommunityOrTeamMultisig();

    /// @notice The timelock period needed for the {IInverterBeacon_v1} to be upgraded has not been exceeded yet.
    error Governor__TimelockPeriodNotExceeded();

    /// @notice This upgrade process for this {IInverterBeacon_v1} has not yet been started.
    error Governor__UpgradeProcessNotStarted();

    /// @notice The call to the target contract has failed.
    error Governor__CallToTargetContractFailed();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Event emitted when a new beacon is added to the linked beacons.
    /// @param  beacon The address of the new beacon.
    event BeaconAddedToLinkedBeacons(address beacon);

    /// @notice Event emitted when a new timelock period for a upgrade of a {IInverterBeacon_v1} is started.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    /// @param  newImplementation The address of the new Implementation.
    /// @param  newMinorVersion The new minor version.
    /// @param  newPatchVersion The new patch version.
    /// @param  timelockExceeded Timestamp of when the timelock is exceeded.
    event BeaconTimelockStarted(
        address beacon,
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion,
        uint timelockExceeded
    );

    /// @notice Event emitted when a {IInverterBeacon_v1} is upgraded.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    /// @param  newImplementation The address of the new Implementation.
    /// @param  newMinorVersion The new minor version.
    /// @param  newPatchVersion The new patch version.
    event BeaconUpgraded(
        address beacon,
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion
    );

    /// @notice Event emitted when a {IInverterBeacon_v1} upgraded is canceled.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    event BeaconUpgradedCanceled(address beacon);

    /// @notice Event emitted when the fee manager is updated.
    /// @param  feeManager The address of the fee manager.
    event FeeManagerUpdated(address feeManager);

    /// @notice Event emitted when the module factory is updated.
    /// @param  moduleFactory The address of the module factory.
    event ModuleFactoryUpdated(address moduleFactory);

    /// @notice Event emitted when a timelock period is set.
    /// @param  newTimelockPeriod The new timelock period.
    event TimelockPeriodSet(uint newTimelockPeriod);

    /// @notice Event emitted when a {IInverterBeacon_v1} shutdown is initiated.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    event BeaconShutdownInitiated(address beacon);

    /// @notice Event emitted when a {IInverterBeacon_v1} is forcefully upgraded and the implementation gets restarted immediatly.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    /// @param  newImplementation The address of the new Implementation.
    /// @param  newMinorVersion The new minor version.
    /// @param  newPatchVersion The new patch version.
    event BeaconForcefullyUpgradedAndImplementationRestarted(
        address beacon,
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion
    );

    /// @notice Event emitted when a {IInverterBeacon_v1} implementation is restarted.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    event BeaconImplementationRestarted(address beacon);

    /// @notice Event emitted when a the governor contract accepts the ownership over another contract.
    /// @param  adr The address of the contract that distributed the ownership.
    event OwnershipAccepted(address adr);

    //--------------------------------------------------------------------------
    // Initialization

    /// @notice The module's initializer function.
    /// @param  _communityMultisig The address of the community multisig.
    /// @param  _teamMultisig The address of the team multisig.
    /// @param  _timelockPeriod The timelock period needed to upgrade a {IInverterBeacon_v1}.
    /// @param  _feeManager The address of the initial {FeeManager_v1}.
    /// @param  _moduleFactory The address of the initial {ModuleFactory_v1}.
    function init(
        address _communityMultisig,
        address _teamMultisig,
        uint _timelockPeriod,
        address _feeManager,
        address _moduleFactory
    ) external;

    /// @notice Callback function that is called by {ModuleFactory_v1} during initialization.
    /// @param  registeredBeacons The array of {IInverterBeacon_v1}s that will be registered.
    function moduleFactoryInitCallback(
        IInverterBeacon_v1[] calldata registeredBeacons
    ) external;

    //--------------------------------------------------------------------------
    // Getter Functions

    /// @notice Returns the current timelock of a {IInverterBeacon_v1} address.
    /// @param  beacon The address of the {IInverterBeacon_v1}.
    /// @return The timelock of the {IInverterBeacon_v1} address.
    function getBeaconTimelock(address beacon)
        external
        view
        returns (Timelock memory);

    /// @notice Returns the list of currently linked {IInverterBeacon_v1}s.
    /// @return LinkedBeacons The array of {IInverterBeacon_v1}s that are currently linked to the {Governor_v1}.
    function getLinkedBeacons()
        external
        view
        returns (IInverterBeacon_v1[] memory);

    //--------------------------------------------------------------------------
    // FeeManager

    /// @notice Returns the {FeeManager_v1} address.
    /// @return Address of the {FeeManager_v1}.
    function getFeeManager() external view returns (address);

    /// @notice Returns the {ModuleFactory_v1} address.
    /// @return Address of the {ModuleFactory_v1}.
    function getModuleFactory() external view returns (address);

    /// @notice Sets the address of the {FeeManager_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @param  newFeeManager The address of the new {FeeManager_v1}.
    function setFeeManager(address newFeeManager) external;

    /// @notice Sets the address of the {ModuleFactory_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @param  newModuleFactory The address of the new {ModuleFactory_v1}.
    function setModuleFactory(address newModuleFactory) external;

    /// @notice Sets the maximum fee percentage that can be assigned in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @dev	The given max fee can not be higher than the BPS.
    /// @param  maxFee The max Fee in relation to the BPS.
    function setFeeManagerMaxFee(uint maxFee) external;

    /// @notice Sets the default protocol treasury address in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @dev	The given treasury address can not be address(0).
    /// @param  _defaultProtocolTreasury The address of the default protocol treasury.
    function setFeeManagerDefaultProtocolTreasury(
        address _defaultProtocolTreasury
    ) external;

    /// @notice Sets the protocol treasury address for a specific workflow in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @dev	The given treasury address can not be address(0).
    /// @param  workflow The address of the workflow.
    /// @param  treasury The address of the protocol treasury for that specific workflow.
    function setFeeManagerWorkflowTreasuries(address workflow, address treasury)
        external;

    /// @notice Sets the default collateral fee of the protocol in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  _defaultCollateralFee The default collateral fee of the protocol in relation to the BPS.
    function setFeeManagerDefaultCollateralFee(uint _defaultCollateralFee)
        external;

    /// @notice Sets the default issuance fee of the protocol in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  _defaultIssuanceFee The default issuance fee of the protocol in relation to the BPS.
    function setFeeManagerDefaultIssuanceFee(uint _defaultIssuanceFee)
        external;

    /// @notice Sets the collateral fee for a specific workflow module function in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @param  set Boolean that determines if the fee is actually used or not.
    /// @param  fee The collateral fee in relation to the BPS.
    function setFeeManagerCollateralWorkflowFee(
        address workflow,
        address module,
        bytes4 functionSelector,
        bool set,
        uint fee
    ) external;

    /// @notice Sets the issuance fee for a specific workflow module function in the linked {FeeManager_v1}.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @dev	The given fee needs to be less than the BPS.
    /// @param  workflow The address of the workflow that contains the module function.
    /// @param  module The address of the module that contains the function.
    /// @param  functionSelector The function selector of the target function.
    /// @param  set Boolean that determines if the fee is actually used or not.
    /// @param  fee The issuance fee in relation to the BPS.
    function setFeeManagerIssuanceWorkflowFee(
        address workflow,
        address module,
        bytes4 functionSelector,
        bool set,
        uint fee
    ) external;

    //--------------------------------------------------------------------------
    // Register Beacons

    /// @notice Registers a {IInverterBeacon_v1} with the provided `metadata` in the target {ModuleFactory_v1}.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @param  metadata The metadata that will be registered.
    /// @param  beacon The {IInverterBeacon_v1} that will be registered.
    function registerMetadataInModuleFactory(
        IModule_v1.Metadata memory metadata,
        IInverterBeacon_v1 beacon
    ) external;

    /// @notice Registers an {IInverterBeacon_v1} as a linked beacon that is not a module.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @param  beacon The {IInverterBeacon_v1} that will be registered.
    function registerNonModuleBeacon(IInverterBeacon_v1 beacon) external;

    //--------------------------------------------------------------------------
    // Beacon Functions

    //---------------------------
    // Upgrade

    /// @notice Starts the upgrade process of a {IInverterBeacon_v1} by creating a timelock period after
    ///         which the {IInverterBeacon_v1} can be upgraded via `triggerUpgradeBeaconWithTimelock()`.
    /// @dev	This function will override previous timelocks even if they are active.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @param  beacon The address of the {IInverterBeacon_v1} that is intended to be upgraded.
    /// @param  newImplementation The address of the intended new Implementation of the {IInverterBeacon_v1}.
    /// @param  newMinorVersion The intended new minor version of the {IInverterBeacon_v1}.
    /// @param  newPatchVersion The intended new patch version of the {IInverterBeacon_v1}.
    function upgradeBeaconWithTimelock(
        address beacon,
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion
    ) external;

    /// @notice Upgrades a {IInverterBeacon_v1} with the data provided by the active timelock.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @param  beacon The address of the {IInverterBeacon_v1} that is intended to be upgraded.
    function triggerUpgradeBeaconWithTimelock(address beacon) external;

    /// @notice Cancels an upgrade of {IInverterBeacon_v1} by setting the active timelock to inactive.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @param  beacon The address of the {IInverterBeacon_v1} for which the timelock should be canceled.
    function cancelUpgrade(address beacon) external;

    /// @notice Sets the timelock period of a {IInverterBeacon_v1} upgrade process.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @param  newtimelockPeriod The new timelock period.
    function setTimelockPeriod(uint newtimelockPeriod) external;

    //---------------------------
    // Emergency Shutdown

    /// @notice Initiates the shutdown of a {IInverterBeacon_v1}.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    /// @param  beacon The address of the {IInverterBeacon_v1} that should be shut down.
    function initiateBeaconShutdown(address beacon) external;

    /// @notice Initiates the shutdown of all linked {IInverterBeacon_v1}s.
    /// @dev	Can only be accessed by either the `COMMUNITY_MULTISIG_ROLE` or the `TEAM_MULTISIG_ROLE`.
    function initiateBeaconShutdownForAllLinkedBeacons() external;

    /// @notice This function forces the upgrade of a beacon and restarts the implementation afterwards.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @param  beacon The address of the {IInverterBeacon_v1} that is intended to be upgraded and restarted.
    /// @param  newImplementation The address of the intended new Implementation of the {IInverterBeacon_v1}.
    /// @param  newMinorVersion The intended new minor version of the {IInverterBeacon_v1}.
    /// @param  newPatchVersion The intended new patch version of the {IInverterBeacon_v1}.
    function forceUpgradeBeaconAndRestartImplementation(
        address beacon,
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion
    ) external;

    /// @notice Restarts the {IInverterBeacon_v1} implementation.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE`.
    /// @param  beacon The address of the {IInverterBeacon_v1} that should restarted.
    function restartBeaconImplementation(address beacon) external;

    //---------------------------
    // Ownable2Step

    /// @notice Accepts the ownership over the target address.
    /// @dev	Can only be accessed by the `COMMUNITY_MULTISIG_ROLE` or `TEAM_MULTISIG_ROLE`.
    /// @param  adr The address of target that wants to hand over the ownership.
    function acceptOwnership(address adr) external;
}

// ============================================================
// FILE: src/external/interfaces/IERC2771Context.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

interface IERC2771Context {
    /// @notice Returns the trusted forwarder for the EIP2771 Standard.
    function isTrustedForwarder(address forwarder)
        external
        view
        returns (bool);
}

// ============================================================
// FILE: src/factories/interfaces/IModuleFactory_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IOrchestrator_v1} from
    "src/orchestrator/interfaces/IOrchestrator_v1.sol";
import {IModule_v1} from "src/modules/base/IModule_v1.sol";
import {IOrchestratorFactory_v1} from
    "src/factories/interfaces/IOrchestratorFactory_v1.sol";
import {IInverterBeacon_v1} from "src/proxies/interfaces/IInverterBeacon_v1.sol";

interface IModuleFactory_v1 {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice Given metadata invalid.
    error ModuleFactory__InvalidMetadata();

    /// @notice Given metadata invalid.
    error ModuleFactory__InvalidInitialRegistrationData();

    /// @notice Given beacon invalid.
    error ModuleFactory__InvalidInverterBeacon();

    /// @notice Given metadata unregistered.
    error ModuleFactory__UnregisteredMetadata();

    /// @notice Given metadata already registered.
    error ModuleFactory__MetadataAlreadyRegistered();

    /// @notice Given module version is sunset.
    error ModuleFactory__ModuleIsSunset();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Event emitted when new beacon registered for metadata.
    /// @param  metadata The registered Metadata.
    /// @param  beacon The registered Beacon.
    event MetadataRegistered(
        IModule_v1.Metadata metadata, IInverterBeacon_v1 indexed beacon
    );

    /// @notice Event emitted when new module created for an {Orchestrator_v1}.
    /// @param  orchestrator The corresponding {Orchestrator_v1}.
    /// @param  module The created module instance.
    /// @param  metadata The registered metadata.
    event ModuleCreated(
        address indexed orchestrator,
        address indexed module,
        IModule_v1.Metadata metadata
    );

    /// @notice Event emitted when {Governor_v1} is set.
    /// @param  governor The address of the {Governor_v1}.
    event GovernorSet(address indexed governor);

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Returns the address of the {InverterReverter_v1} contract.
    /// @return reverterAddress Returns the address of the {InverterReverter_v1} contract.
    function reverter() external view returns (address);

    /// @notice Returns the {Governor_v1} contract address.
    /// @return govnernorAddress Returns the address of the {Governor_v1} contract.
    function governor() external view returns (address);

    /// @notice Creates a module instance identified by given `metadata` and initiates it.
    /// @param  metadata The module's `metadata`.
    /// @param  orchestrator The {Orchestrator_v1} instance of the module.
    /// @param  configData The configData of the module.
    /// @param  workflowConfig The configData of the workflow.
    /// @return moduleProxyAddress Returns the address of the created module proxy.
    function createAndInitModule(
        IModule_v1.Metadata memory metadata,
        IOrchestrator_v1 orchestrator,
        bytes memory configData,
        IOrchestratorFactory_v1.WorkflowConfig memory workflowConfig
    ) external returns (address);

    /// @notice Creates a module proxy instance identified by given `metadata`.
    /// @param  metadata The module's metadata.
    /// @param  orchestrator The {Orchestrator_v1} instance of the module.
    /// @param  workflowConfig The configData of the workflow.
    /// @return Returns the address of the created module proxy.
    function createModuleProxy(
        IModule_v1.Metadata memory metadata,
        IOrchestrator_v1 orchestrator,
        IOrchestratorFactory_v1.WorkflowConfig memory workflowConfig
    ) external returns (address);

    /// @notice Returns the {IInverterBeacon_v1} instance registered and the `id` for given
    ///         `metadata`.
    /// @param  metadata The module's metadata.
    /// @return beacon The module's {IInverterBeacon_v1} instance registered.
    /// @return id The metadata's id.
    function getBeaconAndId(IModule_v1.Metadata memory metadata)
        external
        view
        returns (IInverterBeacon_v1, bytes32);

    /// @notice Returns the {Orchestrator_v1} address of a beacon proxy.
    /// @param  proxy The beacon proxy address.
    /// @return orchestratorAddress The corresponding {Orchestrator_v1} address for the provided proxy.
    function getOrchestratorOfProxy(address proxy)
        external
        view
        returns (address);

    /// @notice Registers metadata `metadata` with {IInverterBeacon_v1} implementation
    ///         `beacon`.
    /// @dev	Only callable by owner.
    /// @param  metadata The module's metadata.
    /// @param  beacon The module's {IInverterBeacon_v1} instance.
    function registerMetadata(
        IModule_v1.Metadata memory metadata,
        IInverterBeacon_v1 beacon
    ) external;
}

// ============================================================
// FILE: src/factories/interfaces/IOrchestratorFactory_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IOrchestrator_v1} from
    "src/orchestrator/interfaces/IOrchestrator_v1.sol";
import {IModule_v1} from "src/modules/base/IModule_v1.sol";

import {IInverterBeacon_v1} from "src/proxies/interfaces/IInverterBeacon_v1.sol";

// External Interfaces
import {IERC20} from "@oz/token/ERC20/IERC20.sol";

interface IOrchestratorFactory_v1 {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice The provided beacon address doesnt support the interface {IInverterBeacon_v1}.
    error OrchestratorFactory__InvalidBeacon();

    /// @notice Given id is invalid.
    error OrchestratorFactory__InvalidId();

    /// @notice The module's data arrays length mismatch.
    error OrchestratorFactory__ModuleDataLengthMismatch();

    /// @notice The orchestrator admin is address(0).
    error OrchestratorFactory__OrchestratorAdminIsInvalid();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Event emitted when a new {Orchestrator_v1} is created.
    /// @param  orchestratorId The id of the {Orchestrator_v1}.
    /// @param  orchestratorAddress The address of the {Orchestrator.
    event OrchestratorCreated(
        uint indexed orchestratorId, address indexed orchestratorAddress
    );

    /// @notice Event emitted when a new {OrchestratorFactory_v1} is initialized.
    /// @param  beacon The address of the {IInverterBeacon_v1} associated with the factory.
    /// @param  moduleFactory The address of the {ModuleFactory_v1}.
    event OrchestratorFactoryInitialized(
        address indexed beacon, address indexed moduleFactory
    );

    //--------------------------------------------------------------------------
    // Structs

    /// @notice Struct used to store information about a workflow configuration.
    /// @dev	When the `independentUpdates` is true, the `independentUpdateAdmin` will be disregarded.
    /// @param  independentUpdates bool wether the workflow should use the independent proxy structure.
    ///                           In case of true it will not use the standard beacon proxy structure.
    /// @param  independentUpdateAdmin The address that will be assigned the admin role of the independent update proxy.
    ///                               Will be disregarded in case `independentUpdates` is false.
    struct WorkflowConfig {
        bool independentUpdates;
        address independentUpdateAdmin;
    }

    /// @notice Struct used to store information about a module configuration.
    /// @param  metadata The module's metadata.
    /// @param  configData Variable config data for specific module implementations.
    struct ModuleConfig {
        IModule_v1.Metadata metadata;
        bytes configData;
    }

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Creates a new {Orchestrator_v1}.
    /// @param  workflowConfig The workflow's config data.
    /// @param  fundingManagerConfig The config data for the orchestrator's {IFundingManager_v1}
    ///                             instance.
    /// @param  authorizerConfig The config data for the {Orchestrator_v1}'s {IAuthorizer_v1}
    ///                         instance.
    /// @param  paymentProcessorConfig The config data for the orchestrator's
    ///                               {IPaymentProcessor_v1} instance.
    /// @param  moduleConfigs Variable length set of optional module's config
    ///                      data.
    /// @return CreatedOrchestrator Returns the created orchestrator instance
    function createOrchestrator(
        WorkflowConfig memory workflowConfig,
        ModuleConfig memory fundingManagerConfig,
        ModuleConfig memory authorizerConfig,
        ModuleConfig memory paymentProcessorConfig,
        ModuleConfig[] memory moduleConfigs
    ) external returns (IOrchestrator_v1);

    /// @notice Returns the {IOrchestrator_v1} {IInverterBeacon_v1} address.
    /// @return OrchestratorImplementationBeacon The {IInverterBeacon_v1} of the {Orchestrator_v1} Implementation.
    function beacon() external view returns (IInverterBeacon_v1);

    /// @notice Returns the {IModuleFactory_v1} implementation address.
    /// @return ModuleFactoryAddress The address of the linked {ModuleFactory_v1}.
    function moduleFactory() external view returns (address);

    /// @notice Returns the {IOrchestrator_v1} address that corresponds to the given id.
    /// @param  id The requested orchestrator's id.
    /// @return orchestratorAddress The address of the corresponding {Orchestrator_v1}.
    function getOrchestratorByID(uint id) external view returns (address);

    /// @notice Returns the counter of the current {Orchestrator_v1} id.
    /// @return id The id of the next created {Orchestrator_v1}.
    function getOrchestratorIDCounter() external view returns (uint);
}

// ============================================================
// FILE: src/modules/authorizer/IAuthorizer_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

import {IAccessControlEnumerable} from
    "@oz/access/extensions/IAccessControlEnumerable.sol";

interface IAuthorizer_v1 is IAccessControlEnumerable {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice The function is only callable by an active Module.
    /// @param  module The address of the module.
    error Module__Authorizer__NotActiveModule(address module);

    /// @notice The function is only callable if the Module is self-managing its roles.
    error Module__Authorizer__ModuleNotSelfManaged();

    /// @notice There always needs to be at least one admin.
    error Module__Authorizer__AdminRoleCannotBeEmpty();

    /// @notice The orchestrator cannot own itself.
    error Module__Authorizer__OrchestratorCannotHaveAdminRole();

    /// @notice The provided initial admin address is invalid.
    error Module__Authorizer__InvalidInitialAdmin();

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Checks whether an address holds the required role to execute
    ///         the current transaction.
    /// @dev	The calling contract needs to generate the right role ID using its
    ///         own address and the role identifier.
    ///         In modules, this function should be used instead of `hasRole`, as
    ///         there are Authorizer-specific checks that need to be performed.
    /// @param  role The identifier of the role we want to check
    /// @param  who  The address on which to perform the check.
    /// @return bool Returns if the address holds the role
    function checkForRole(bytes32 role, address who)
        external
        view
        returns (bool);

    /// @notice Helper function to generate a bytes32 role hash for a module role.
    /// @param  module The address of the module to generate the hash for.
    /// @param  role  The ID number of the role to generate the hash for.
    /// @return bytes32 Returns the generated role hash.
    function generateRoleId(address module, bytes32 role)
        external
        pure
        returns (bytes32);

    /// @notice Used by a Module to grant a role to a user.
    /// @param  role The identifier of the role to grant.
    /// @param  target  The address to which to grant the role.
    function grantRoleFromModule(bytes32 role, address target) external;

    /// @notice Used by a Module to grant a role to a set of users.
    /// @param  role The identifier of the role to grant.
    /// @param  targets  The addresses to which to grant the role.
    function grantRoleFromModuleBatched(
        bytes32 role,
        address[] calldata targets
    ) external;

    /// @notice Used by a Module to revoke a role from a user.
    /// @param  role The identifier of the role to revoke.
    /// @param  target  The address to revoke the role from.
    function revokeRoleFromModule(bytes32 role, address target) external;

    /// @notice Used by a Module to revoke a role from a set of users.
    /// @param  role The identifier of the role to revoke.
    /// @param  targets  The address to revoke the role from.
    function revokeRoleFromModuleBatched(
        bytes32 role,
        address[] calldata targets
    ) external;

    /// @notice Transfer the admin rights to a given role.
    /// @param  roleId The role on which to peform the admin transfer.
    /// @param  newAdmin The new role to which to transfer admin access to.
    function transferAdminRole(bytes32 roleId, bytes32 newAdmin) external;

    /// @notice Irreversibly burns the admin of a given role.
    /// @param  role The role to remove admin access from.
    /// @dev	The module itself can still grant and revoke it's own roles. This only burns third-party access to
    ///         the role.
    function burnAdminFromModuleRole(bytes32 role) external;

    /// @notice Grants a global role to a target.
    /// @param  role The role to grant.
    /// @param  target The address to grant the role to.
    /// @dev	Only the addresses with the Admin role should be able to call this function.
    function grantGlobalRole(bytes32 role, address target) external;

    /// @notice Grants a global role to a set of targets.
    /// @param  role The role to grant.
    /// @param  targets The addresses to grant the role to.
    /// @dev	Only the addresses with the Admin role should be able to call this function.
    function grantGlobalRoleBatched(bytes32 role, address[] calldata targets)
        external;

    /// @notice Revokes a global role from a target.
    /// @param  role The role to grant.
    /// @param  target The address to grant the role to.
    /// @dev	Only the addresses with the Admin role should be able to call this function.
    function revokeGlobalRole(bytes32 role, address target) external;

    /// @notice Revokes a global role from a set of targets.
    /// @param  role The role to grant.
    /// @param  targets The addresses to grant the role to.
    /// @dev	Only the addresses with the Admin role should be able to call this function.
    function revokeGlobalRoleBatched(bytes32 role, address[] calldata targets)
        external;

    /// @notice Returns the role ID of the admin role.
    /// @return The role ID.
    function getAdminRole() external view returns (bytes32);
}

// ============================================================
// FILE: src/modules/base/IModule_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IOrchestrator_v1} from
    "src/orchestrator/interfaces/IOrchestrator_v1.sol";

interface IModule_v1 {
    //--------------------------------------------------------------------------
    // Structs

    /// @notice The module's metadata.
    /// @param  majorVersion The module's major version.
    /// @param  minorVersion The module's minor version.
    /// @param  patchVersion The module's patch version.
    /// @param  url The module's URL.
    /// @param  title The module's title.
    struct Metadata {
        uint majorVersion;
        uint minorVersion;
        uint patchVersion;
        string url;
        string title;
    }

    //--------------------------------------------------------------------------
    // Events

    /// @notice Module has been initialized.
    /// @param  parentOrchestrator The address of the {Orchestrator_v1} the module is linked to.
    /// @param  metadata The metadata of the module.
    event ModuleInitialized(
        address indexed parentOrchestrator, Metadata metadata
    );

    /// @notice Event emitted when protocol fee has been transferred to the treasury.
    /// @param  token The token received as protocol fee.
    /// @param  treasury The protocol treasury address receiving the token fee amount.
    /// @param  feeAmount The fee amount transferred to the treasury.
    event ProtocolFeeTransferred(
        address indexed token, address indexed treasury, uint feeAmount
    );

    //--------------------------------------------------------------------------
    // Errors

    /// @notice Function is only callable by authorized caller.
    /// @param  role The role that is required.
    /// @param  caller The address that is required to have the role.
    error Module__CallerNotAuthorized(bytes32 role, address caller);

    /// @notice Function is only callable by the {Orchestrator_v1}.
    error Module__OnlyCallableByOrchestrator();

    /// @notice Function is only callable by a {IERC20PaymentClientBase_v2}.
    error Module__OnlyCallableByPaymentClient();

    /// @notice Given {Orchestrator_v1} address invalid.
    error Module__InvalidOrchestratorAddress();

    /// @notice Given metadata invalid.
    error Module__InvalidMetadata();

    /// @notice {Orchestrator_v1} callback triggered failed.
    /// @param  funcSig The signature of the function called.
    error Module_OrchestratorCallbackFailed(string funcSig);

    /// @dev	Invalid Address.
    error Module__InvalidAddress();

    //--------------------------------------------------------------------------
    // Functions

    /// @notice The module's initializer function.
    /// @dev	CAN be overridden by downstream contract.
    /// @dev	MUST call `__Module_init()`.
    /// @param  orchestrator The module's {Orchestrator_v1} instance.
    /// @param  metadata The module's metadata.
    /// @param  configData Variable config data for specific module
    ///                   implementations.
    function init(
        IOrchestrator_v1 orchestrator,
        Metadata memory metadata,
        bytes memory configData
    ) external;

    /// @notice Returns the module's identifier.
    /// @dev	The identifier is defined as the keccak256 hash of the module's
    ///         abi packed encoded major version, url and title.
    /// @return The module's identifier.
    function identifier() external view returns (bytes32);

    /// @notice Returns the module's version.
    /// @return The module's major version.
    /// @return The module's minor version.
    /// @return The module's patch version.
    function version() external view returns (uint, uint, uint);

    /// @notice Returns the module's URL.
    /// @return The module's URL.
    function url() external view returns (string memory);

    /// @notice Returns the module's title.
    /// @return The module's title.
    function title() external view returns (string memory);

    /// @notice Returns the module's {Orchestrator_v1} interface, {IOrchestrator_v1}.
    /// @return The module's {Orchestrator_1}.
    function orchestrator() external view returns (IOrchestrator_v1);

    /// @notice Grants a module role to a target address.
    /// @param  role The role to grant.
    /// @param  target The target address to grant the role to.
    function grantModuleRole(bytes32 role, address target) external;

    /// @notice Grants a module role to multiple target addresses.
    /// @param  role The role to grant.
    /// @param  targets The target addresses to grant the role to.
    function grantModuleRoleBatched(bytes32 role, address[] calldata targets)
        external;

    /// @notice Revokes a module role from a target address.
    /// @param  role The role to revoke.
    /// @param  target The target address to revoke the role from.
    function revokeModuleRole(bytes32 role, address target) external;

    /// @notice Revokes a module role from multiple target addresses.
    /// @param  role The role to revoke.
    /// @param  targets The target addresses to revoke the role from.
    function revokeModuleRoleBatched(bytes32 role, address[] calldata targets)
        external;
}

// ============================================================
// FILE: src/modules/base/Module_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

// Internal Interfaces
import {IModule_v1, IOrchestrator_v1} from "src/modules/base/IModule_v1.sol";
import {IAuthorizer_v1} from "@aut/IAuthorizer_v1.sol";
import {IGovernor_v1} from "@ex/governance/interfaces/IGovernor_v1.sol";
import {IFeeManager_v1} from "@ex/fees/interfaces/IFeeManager_v1.sol";

// Internal Dependencies
import {IERC20PaymentClientBase_v1} from
    "@lm/interfaces/IERC20PaymentClientBase_v1.sol";
import {IERC20PaymentClientBase_v2} from
    "@lm/interfaces/IERC20PaymentClientBase_v2.sol";

// Internal Libraries
import {LibMetadata} from "src/modules/lib/LibMetadata.sol";

// External Dependencies
import {Initializable} from "@oz-up/proxy/utils/Initializable.sol";
import {
    ERC2771ContextUpgradeable,
    ContextUpgradeable
} from "@oz-up/metatx/ERC2771ContextUpgradeable.sol";
import {ERC165Upgradeable} from
    "@oz-up/utils/introspection/ERC165Upgradeable.sol";

/**
 * @title   Inverter Module
 *
 * @dev     This Contract is the basic building block for all Modules in the Inverter Network.
 *          It contains references to other contracts, modifier for access restriction,
 *          metadata to identify the module type as well as utility functions for general
 *          module interactions.
 *
 *          This contract provides a framework for triggering and receiving {Orchestrator_v1}
 *          callbacks (via `call`) and a modifier to authenticate
 *          callers via the module's {Orchestrator_v1}.
 *
 *          Each module is identified via a unique identifier based on its major
 *          version, title, and url given in the metadata.
 *
 * @custom:security-contact security@inverter.network
 *                          In case of any concerns or findings, please refer to our Security Policy
 *                          at security.inverter.network or email us directly!
 *
 * @author  Inverter Network
 */
abstract contract Module_v1 is
    IModule_v1,
    Initializable,
    ERC2771ContextUpgradeable,
    ERC165Upgradeable
{
    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(ERC165Upgradeable)
        returns (bool)
    {
        return interfaceId == type(IModule_v1).interfaceId
            || super.supportsInterface(interfaceId);
    }

    //--------------------------------------------------------------------------
    // Storage
    //
    // Variables are prefixed with `__Module_`.

    /// @dev	The module's orchestrator instance.
    ///
    /// @custom:invariant Not mutated after initialization.
    IOrchestrator_v1 internal __Module_orchestrator;

    /// @dev	The module's metadata.
    ///
    /// @custom:invariant Not mutated after initialization.
    Metadata internal __Module_metadata;

    /// @dev	Storage gap for future upgrades.
    uint[50] private __gap;

    //--------------------------------------------------------------------------
    // Modifiers
    //
    // Note that the modifiers declared here are available in dowstream
    // contracts too. To not make unnecessary modifiers available, this contract
    // inlines argument validations not needed in downstream contracts.

    /// @dev    Modifier to guarantee function is only callable by addresses
    ///         authorized via {Orchestrator_v1}.
    modifier onlyOrchestratorAdmin() {
        _checkRoleModifier(
            __Module_orchestrator.authorizer().getAdminRole(), _msgSender()
        );
        _;
    }

    /// @dev    Modifier to guarantee function is only callable by a module registered within the
    ///         workflows's {Orchestrator_v1} and the module is implementing the {IERC20PaymentClientBase_v2} interface.
    modifier onlyPaymentClient() {
        _onlyPaymentClientModifier();
        _;
    }

    /// @dev    Modifier to guarantee function is only callable by addresses that hold a specific module-assigned role.
    modifier onlyModuleRole(bytes32 role) {
        _checkRoleModifier(
            __Module_orchestrator.authorizer().generateRoleId(
                address(this), role
            ),
            _msgSender()
        );
        _;
    }

    /// @dev    Modifier to guarantee function is only callable by addresses that hold a specific module-assigned role.
    modifier onlyModuleRoleAdmin(bytes32 role) {
        bytes32 moduleRole = __Module_orchestrator.authorizer().generateRoleId(
            address(this), role
        );
        _checkRoleModifier(
            __Module_orchestrator.authorizer().getRoleAdmin(moduleRole),
            _msgSender()
        );
        _;
    }

    /// @dev    Modifier to guarantee function is only callable by the {Orchestrator_v1}.
    /// @dev	onlyOrchestrator functions MUST only access the module's storage, i.e.
    ///         `__Module_` variables.
    /// @dev	Note to use function prefix `__Module_`.
    modifier onlyOrchestrator() {
        _onlyOrchestratorModifier();
        _;
    }

    /// @dev	Checks if the given Address is valid.
    /// @param  to The address to check.
    modifier validAddress(address to) {
        _validAddressModifier(to);
        _;
    }

    //--------------------------------------------------------------------------
    // Initialization

    constructor() ERC2771ContextUpgradeable(address(0)) {
        _disableInitializers();
    }

    /// @inheritdoc IModule_v1
    function init(
        IOrchestrator_v1 orchestrator_,
        Metadata memory metadata,
        bytes memory /*configData*/
    ) external virtual initializer {
        __Module_init(orchestrator_, metadata);
    }

    /// @dev	The initialization function MUST be called by the upstream
    ///      contract in their overridden `init()` function.
    /// @param  orchestrator_ The module's {Orchestrator_v1}.
    function __Module_init(
        IOrchestrator_v1 orchestrator_,
        Metadata memory metadata
    ) internal onlyInitializing {
        // Write orchestrator to storage.
        if (address(orchestrator_) == address(0)) {
            revert Module__InvalidOrchestratorAddress();
        }
        __Module_orchestrator = orchestrator_;

        // Write metadata to storage.
        if (!LibMetadata.isValid(metadata)) {
            revert Module__InvalidMetadata();
        }
        __Module_metadata = metadata;

        emit ModuleInitialized(address(orchestrator_), metadata);
    }

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @inheritdoc IModule_v1
    function identifier() public view returns (bytes32) {
        return LibMetadata.identifier(__Module_metadata);
    }

    /// @inheritdoc IModule_v1
    function version() public view returns (uint, uint, uint) {
        return (
            __Module_metadata.majorVersion,
            __Module_metadata.minorVersion,
            __Module_metadata.patchVersion
        );
    }

    /// @inheritdoc IModule_v1
    function url() public view returns (string memory) {
        return __Module_metadata.url;
    }

    /// @inheritdoc IModule_v1
    function title() public view returns (string memory) {
        return __Module_metadata.title;
    }

    /// @inheritdoc IModule_v1
    function orchestrator() public view returns (IOrchestrator_v1) {
        return __Module_orchestrator;
    }

    //--------------------------------------------------------------------------
    // Role Management

    /// @inheritdoc IModule_v1
    function grantModuleRole(bytes32 role, address target)
        external
        onlyModuleRoleAdmin(role)
    {
        __Module_orchestrator.authorizer().grantRoleFromModule(role, target);
    }

    /// @inheritdoc IModule_v1
    function grantModuleRoleBatched(bytes32 role, address[] calldata targets)
        external
        onlyModuleRoleAdmin(role)
    {
        __Module_orchestrator.authorizer().grantRoleFromModuleBatched(
            role, targets
        );
    }

    /// @inheritdoc IModule_v1
    function revokeModuleRole(bytes32 role, address target)
        external
        onlyModuleRoleAdmin(role)
    {
        __Module_orchestrator.authorizer().revokeRoleFromModule(role, target);
    }

    /// @inheritdoc IModule_v1
    function revokeModuleRoleBatched(bytes32 role, address[] calldata targets)
        external
        onlyModuleRoleAdmin(role)
    {
        __Module_orchestrator.authorizer().revokeRoleFromModuleBatched(
            role, targets
        );
    }

    //--------------------------------------------------------------------------
    // Internal Functions

    /// @notice Returns the collateral fee for the specified workflow module function and the according treasury
    ///         address of this workflow.
    /// @param  functionSelector The function selector of the target function.
    /// @dev	FunctionSelector is always passed as selector of this module / address.
    /// @return fee The collateral fee amount in relation to the BPS of the {FeeManager_v1}.
    /// @return treasury The address of the treasury.
    function _getFeeManagerCollateralFeeData(bytes4 functionSelector)
        internal
        view
        returns (uint fee, address treasury)
    {
        // Fetch fee manager address from orchestrator
        return IFeeManager_v1(__Module_orchestrator.governor().getFeeManager())
            .getCollateralWorkflowFeeAndTreasury(
            address(__Module_orchestrator), // Always take this modules orchestrator as the workflow address
            address(this), // always take this as the module address
            functionSelector
        );
    }

    /// @notice Returns the issuance fee for the specified workflow module function and the according treasury address
    ///         of this workflow.
    /// @param  functionSelector The function selector of the target function.
    /// @dev	FunctionSelector is always passed as selector of this module / address.
    /// @return fee The issuance fee amount in relation to the BPS of the {FeeManager_v1}.
    /// @return treasury The address of the treasury.
    function _getFeeManagerIssuanceFeeData(bytes4 functionSelector)
        internal
        view
        returns (uint fee, address treasury)
    {
        // Fetch fee manager address from orchestrator
        return IFeeManager_v1(__Module_orchestrator.governor().getFeeManager())
            .getIssuanceWorkflowFeeAndTreasury(
            address(__Module_orchestrator), // Always take this modules orchestrator as the workflow address
            address(this), // always take this as the module address
            functionSelector
        );
    }

    /// @dev	Checks if the caller has the specified role.
    /// @param  role The role to check.
    /// @param  addr The address to check.
    function _checkRoleModifier(bytes32 role, address addr) internal view {
        if (!__Module_orchestrator.authorizer().checkForRole(role, addr)) {
            revert Module__CallerNotAuthorized(role, addr);
        }
    }

    /// @dev	Checks if the caller is the orchestrator.
    function _onlyOrchestratorModifier() internal view {
        if (_msgSender() != address(__Module_orchestrator)) {
            revert Module__OnlyCallableByOrchestrator();
        }
    }

    /// @dev	Checks if the given address is an valid address.
    /// @param  to The address to check.
    function _validAddressModifier(address to) internal view {
        if (to == address(0) || to == address(this)) {
            revert Module__InvalidAddress();
        }
    }

    /// @dev	Checks if the caller is an {ERC20PaymentClientBase_v2} module.
    function _onlyPaymentClientModifier() internal view {
        if (
            !__Module_orchestrator.isModule(_msgSender())
                || (
                    !ERC165Upgradeable(_msgSender()).supportsInterface(
                        type(IERC20PaymentClientBase_v1).interfaceId
                    )
                        && !ERC165Upgradeable(_msgSender()).supportsInterface(
                            type(IERC20PaymentClientBase_v2).interfaceId
                        )
                )
        ) revert Module__OnlyCallableByPaymentClient();
    }

    //--------------------------------------------------------------------------
    // ERC2771 Context Upgradeable

    /// @notice Checks if the provided address is the trusted forwarder.
    /// @param  forwarder The contract address to be verified.
    /// @return bool Is the given address the trusted forwarder.
    /// @dev	We imitate here the EIP2771 Standard to enable metatransactions
    ///         As it currently stands we dont want to feed the forwarder address to each module individually and we decided to
    ///         move this to the orchestrator.
    function isTrustedForwarder(address forwarder)
        public
        view
        virtual
        override(ERC2771ContextUpgradeable)
        returns (bool)
    {
        return __Module_orchestrator.isTrustedForwarder(forwarder);
    }

    /// @notice Returns the trusted forwarder.
    /// @return address The trusted forwarder.
    /// @dev	We imitate here the EIP2771 Standard to enable metatransactions.
    ///         As it currently stands we dont want to feed the forwarder address to each module individually and we decided to
    ///         move this to the orchestrator.
    function trustedForwarder()
        public
        view
        virtual
        override(ERC2771ContextUpgradeable)
        returns (address)
    {
        return __Module_orchestrator.trustedForwarder();
    }
}

// ============================================================
// FILE: src/modules/fundingManager/IFundingManager_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// External Interfaces
import {IERC20} from "@oz/token/ERC20/IERC20.sol";

interface IFundingManager_v1 {
    /// @notice Funding manager does not hold the amount of collateral the payment client tries to transfer.
    error InvalidOrchestratorTokenWithdrawAmount();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Event emitted when a transferal of orchestrator tokens takes place.
    /// @param  _to The address that will receive the underlying tokens.
    /// @param  _amount The amount of underlying tokens transfered.
    event TransferOrchestratorToken(address indexed _to, uint _amount);

    /// @notice Event emitted when collateral token has been set.
    /// @param  token The token that serves as collateral token making up the curve's reserve.
    event OrchestratorTokenSet(address indexed token, uint8 decimals);

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Returns the token.
    /// @return The token.
    function token() external view returns (IERC20);

    /// @notice Transfer a specified amount of Tokens to a designated receiver address.
    /// @dev    This function MUST be restricted to be called only by the {Orchestrator_v1}.
    /// @dev    This function CAN update internal user balances to account for the new token balance.
    /// @param  to The address that will receive the tokens.
    /// @param  amount The amount of tokens to be transfered.
    function transferOrchestratorToken(address to, uint amount) external;
}

// ============================================================
// FILE: src/modules/lib/LibMetadata.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

// Internal Interfaces
import {IModule_v1} from "src/modules/base/IModule_v1.sol";

/**
 * @title   Inverter Metadata Library
 *
 * @dev     Provides common functions for {IModule_v1}'s Metadata type.
 *
 * @custom:security-contact security@inverter.network
 *                          In case of any concerns or findings, please refer to our Security Policy
 *                          at security.inverter.network or email us directly!
 *
 * @author  Inverter Network
 */
library LibMetadata {
    /// @dev    Returns the identifier for given metadata.
    /// @param  metadata The metadata.
    /// @return The metadata's identifier.
    function identifier(IModule_v1.Metadata memory metadata)
        internal
        pure
        returns (bytes32)
    {
        return keccak256(
            abi.encode(metadata.majorVersion, metadata.url, metadata.title)
        );
    }

    /// @dev	Returns whether the given metadata is valid.
    /// @param  metadata The metadata.
    /// @return True if metadata valid, false otherwise.
    function isValid(IModule_v1.Metadata memory metadata)
        internal
        pure
        returns (bool)
    {
        // Invalid if url empty.
        if (bytes(metadata.url).length == 0) {
            return false;
        }

        // Invalid if title empty.
        if (bytes(metadata.title).length == 0) {
            return false;
        }

        // Invalid if version is v0.0.0.
        if (
            metadata.majorVersion == 0 && metadata.minorVersion == 0
                && metadata.patchVersion == 0
        ) {
            return false;
        }

        return true;
    }
}

// ============================================================
// FILE: src/modules/logicModule/interfaces/IERC20PaymentClientBase_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IPaymentProcessor_v1} from
    "src/modules/paymentProcessor/IPaymentProcessor_v1.sol";

/**
 * @title   Inverter ERC20 Payment Client Base Interface
 *
 * @notice  Enables modules within the Inverter Network to create and manage
 *          payment orders that can be processed by authorized payment
 *          processors, ensuring efficient and secure transactions. Refer to
 *          the implementations contract for more details.
 *
 * @dev     STRUCTURING OF THE FLAGS AND DATA FIELDS
 *          The PaymentOrder struct implements a flag system to manage the
 *          information payloads received by the payment processor. It is
 *          comprised of a bytes32 value that indicates the number of flags
 *          that are active, and a bytes32[] value that stores the
 *          corresponding values.
 *
 *          For example:
 *          If the value of 'flags' is '0000 [...] 0000 1011', then that order
 *          stores values for the paramters 0, 1 and 3 of the master list. The
 *          byte code for simple flag setups might also be represented by
 *          hexadecimal values like 0xB, which has the same value as the bit
 *          combination above.
 *
 *          If a module wants to set flags, it can use bit shifts, in this case
 *          1 << 0, 1 << 1 and 1 << 3.
 *          Afterwards, to be correct, the following data variable should
 *          contain 3 elements of the type specified in the master list, each
 *          stored as bytes32 value.
 *
 * @author  Inverter Network
 */
interface IERC20PaymentClientBase_v1 {
    //-------------------------------------------------------------------------
    // MASTER LIST OF PAYMENT ORDER FLAGS

    /*
    | Flag | Variable type | Name       | Description                         |
    |------|---------------|------------|-------------------------------------|
    | 0    | uint256       | orderID    | ID of the order within the client.  |
    | 1    | uint256       | start      | Start date of the streaming period. | 
    | 2    | uint256       | cliff      | Duration of the cliff period.       |
    | 3    | uint256       | end        | Due Date of the order               |
    | ...  | ...           | ...        | (yet unassigned)                    |
    | 255  | .             | .          | (Max Value).                        | 
    |------|---------------|------------|-------------------------------------|
    */

    //--------------------------------------------------------------------------
    // Structs

    /// @notice Struct used to store information about a payment order.
    /// @param  recipient The recipient of the payment.
    /// @param  paymentToken The token in which to pay. Assumed to always
    ///         be on the local chain.
    /// @param  amount The amount of tokens to pay.
    /// @param  originChainId The id of the origin chain.
    /// @param  targetChainId The id of the target chain.
    /// @param  flags Flags that indicate which information the data array
    ///         contains.
    /// @param  data Array of additional data regarding the payment order.
    struct PaymentOrder {
        address recipient;
        address paymentToken;
        uint amount;
        uint originChainId;
        uint targetChainId;
        bytes32 flags;
        bytes32[] data;
    }

    //--------------------------------------------------------------------------
    // Errors

    /// @notice Function is only callable by authorized address.
    error Module__ERC20PaymentClientBase__CallerNotAuthorized();

    /// @notice ERC20 token transfer failed.
    error Module__ERC20PaymentClientBase__TokenTransferFailed();

    /// @notice Insufficient funds to fulfill the payment.
    /// @param  token The token in which the payment was made.
    error Module__ERC20PaymentClientBase__InsufficientFunds(address token);

    /// @notice Given recipient invalid.
    error Module__ERC20PaymentClientBase__InvalidRecipient();

    /// @notice Given token invalid.
    error Module__ERC20PaymentClientBase__InvalidToken();

    /// @notice Given amount invalid.
    error Module__ERC20PaymentClientBase__InvalidAmount();

    /// @notice Given paymentOrder is invalid.
    error Module__ERC20PaymentClientBase__InvalidPaymentOrder();

    /// @notice Given mismatch between flag count and supplied array length.
    error Module__ERC20PaymentClientBase__MismatchBetweenFlagCountAndArrayLength(
        uint8 flagCount, uint arrayLength
    );

    /// @notice Given number of flags exceeds the limit.
    error Module__ERC20PaymentClientBase_v1__FlagAmountTooHigh();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Added a payment order.
    /// @param  recipient The address that will receive the payment.
    /// @param  token The token in which to pay.
    /// @param  amount The amount of tokens the payment consists of.
    /// @param  originChainId The id of the origin chain.
    /// @param  targetChainId The id of the target chain.
    /// @param  flags Flags that indicate additional data used by the payment
    ///         order.
    /// @param  data Array of additional data regarding the payment order.
    event PaymentOrderAdded(
        address indexed recipient,
        address indexed token,
        uint amount,
        uint originChainId,
        uint targetChainId,
        bytes32 flags,
        bytes32[] data
    );

    /// @notice Emitted when the flags are set.
    /// @param  flagCount The number of flags set.
    /// @param  newFlags The newly set flags.
    event FlagsSet(uint8 flagCount, bytes32 newFlags);

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Returns the list of outstanding payment orders.
    /// @return list of payment orders.
    function paymentOrders() external view returns (PaymentOrder[] memory);

    /// @notice Returns the total outstanding token payment amount.
    /// @param  token_ The token in which to pay.
    /// @return total_ amount of token to pay.
    function outstandingTokenAmount(address token_)
        external
        view
        returns (uint total_);

    /// @notice Collects outstanding payment orders.
    /// @dev	Marks the orders as completed for the client.
    /// @return paymentOrders_ list of payment orders.
    /// @return tokens_ list of token addresses.
    /// @return totalAmounts_ list of amounts.
    function collectPaymentOrders()
        external
        returns (
            PaymentOrder[] memory paymentOrders_,
            address[] memory tokens_,
            uint[] memory totalAmounts_
        );

    /// @notice Notifies the PaymentClient, that tokens have been paid out accordingly.
    /// @dev	Payment Client will reduce the total amount of tokens it will stock up by the given amount.
    /// @dev	This has to be called by a paymentProcessor.
    /// @param  token_ The token in which the payment was made.
    /// @param  amount_ amount of tokens that have been paid out.
    function amountPaid(address token_, uint amount_) external;

    /// @notice Returns the flags used when creating payment orders in this
    ///         client.
    /// @return flags_ The flags this client will use.
    function getFlags() external view returns (bytes32 flags_);

    /// @notice Returns the number of flags this client uses for PaymentOrders.
    /// @return flagCount_ The number of flags.
    function getFlagCount() external view returns (uint8 flagCount_);
}

// ============================================================
// FILE: src/modules/logicModule/interfaces/IERC20PaymentClientBase_v2.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IPaymentProcessor_v2} from
    "src/modules/paymentProcessor/IPaymentProcessor_v2.sol";

/**
 * @title   Inverter ERC20 Payment Client Base Interface
 *
 * @notice  Enables modules within the Inverter Network to create and manage
 *          payment orders that can be processed by authorized payment
 *          processors, ensuring efficient and secure transactions. Refer to
 *          the implementations contract for more details.
 *
 * @dev     STRUCTURING OF THE FLAGS AND DATA FIELDS
 *          The PaymentOrder struct implements a flag system to manage the
 *          information payloads received by the payment processor. It is
 *          comprised of a bytes32 value that indicates the number of flags
 *          that are active, and a bytes32[] value that stores the
 *          corresponding values.
 *
 *          For example:
 *          If the value of 'flags' is '0000 [...] 0000 1011', then that order
 *          stores values for the paramters 0, 1 and 3 of the master list. The
 *          byte code for simple flag setups might also be represented by
 *          hexadecimal values like 0xB, which has the same value as the bit
 *          combination above.
 *
 *          If a module wants to set flags, it can use bit shifts, in this case
 *          1 << 0, 1 << 1 and 1 << 3.
 *          Afterwards, to be correct, the following data variable should
 *          contain 3 elements of the type specified in the master list, each
 *          stored as bytes32 value.
 *
 * @author  Inverter Network
 */
interface IERC20PaymentClientBase_v2 {
    //-------------------------------------------------------------------------
    // MASTER LIST OF PAYMENT ORDER FLAGS

    /*
    | Flag | Type    | Name     | Description                        |
    |------|---------|----------|------------------------------------|
    | 0    | uint256 | orderID  | ID of the order within the client  |
    | 1    | uint256 | start    | Start date of the streaming period | 
    | 2    | uint256 | cliff    | Duration of the cliff period       |
    | 3    | uint256 | end      | Due Date of the order              |
    | 4    | uint256 | projectFee | Project fee for the order           |
    | 5    | uint256 | maxFee   | Maximum fee                        |
    | 6    | uint256 | TTL      | Time-to-live                       |
    | ...  | ...     | ...      | (yet unassigned)                   |
    | 255  | .       | .        | (Max Value)                        | 
    |------|---------|----------|------------------------------------|
    */

    //--------------------------------------------------------------------------
    // Structs

    /// @notice Struct used to store information about a payment order.
    /// @param  recipient The recipient of the payment.
    /// @param  paymentToken The token in which to pay. Assumed to always
    ///         be on the local chain.
    /// @param  amount The amount of tokens to pay.
    /// @param  originChainId The id of the origin chain.
    /// @param  targetChainId The id of the target chain.
    /// @param  flags Flags that indicate which information the data array
    ///         contains.
    /// @param  data Array of additional data regarding the payment order.
    struct PaymentOrder {
        address recipient;
        address paymentToken;
        uint amount;
        uint originChainId;
        uint targetChainId;
        bytes32 flags;
        bytes32[] data;
    }

    //--------------------------------------------------------------------------
    // Errors

    /// @notice Function is only callable by authorized address.
    error Module__ERC20PaymentClientBase__CallerNotAuthorized();

    /// @notice ERC20 token transfer failed.
    error Module__ERC20PaymentClientBase__TokenTransferFailed();

    /// @notice Insufficient funds to fulfill the payment.
    /// @param  token The token in which the payment was made.
    error Module__ERC20PaymentClientBase__InsufficientFunds(address token);

    /// @notice Given recipient invalid.
    error Module__ERC20PaymentClientBase__InvalidRecipient();

    /// @notice Given token invalid.
    error Module__ERC20PaymentClientBase__InvalidToken();

    /// @notice Given amount invalid.
    error Module__ERC20PaymentClientBase__InvalidAmount();

    /// @notice Given paymentOrder is invalid.
    error Module__ERC20PaymentClientBase__InvalidPaymentOrder();

    /// @notice Given mismatch between flag count and supplied array length.
    error Module__ERC20PaymentClientBase__MismatchBetweenFlagCountAndArrayLength(
        uint8 flagCount, uint arrayLength
    );

    /// @notice Given number of flags exceeds the limit.
    error Module__ERC20PaymentClientBase_v2__FlagAmountTooHigh();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Added a payment order.
    /// @param  recipient The address that will receive the payment.
    /// @param  token The token in which to pay.
    /// @param  amount The amount of tokens the payment consists of.
    /// @param  originChainId The id of the origin chain.
    /// @param  targetChainId The id of the target chain.
    /// @param  flags Flags that indicate additional data used by the payment
    ///         order.
    /// @param  data Array of additional data regarding the payment order.
    event PaymentOrderAdded(
        address indexed recipient,
        address indexed token,
        uint amount,
        uint originChainId,
        uint targetChainId,
        bytes32 flags,
        bytes32[] data
    );

    /// @notice Emitted when the flags are set.
    /// @param  flagCount The number of flags set.
    /// @param  newFlags The newly set flags.
    event FlagsSet(uint8 flagCount, bytes32 newFlags);

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Returns the list of outstanding payment orders.
    /// @return list of payment orders.
    function paymentOrders() external view returns (PaymentOrder[] memory);

    /// @notice Returns the total outstanding token payment amount.
    /// @param  token_ The token in which to pay.
    /// @return total_ amount of token to pay.
    function outstandingTokenAmount(address token_)
        external
        view
        returns (uint total_);

    /// @notice Collects outstanding payment orders.
    /// @dev	Marks the orders as completed for the client.
    /// @return paymentOrders_ list of payment orders.
    /// @return tokens_ list of token addresses.
    /// @return totalAmounts_ list of amounts.
    function collectPaymentOrders()
        external
        returns (
            PaymentOrder[] memory paymentOrders_,
            address[] memory tokens_,
            uint[] memory totalAmounts_
        );

    /// @notice Notifies the PaymentClient, that tokens have been paid out accordingly.
    /// @dev	Payment Client will reduce the total amount of tokens it will stock up by the given amount.
    /// @dev	This has to be called by a paymentProcessor.
    /// @param  token_ The token in which the payment was made.
    /// @param  amount_ amount of tokens that have been paid out.
    function amountPaid(address token_, uint amount_) external;

    /// @notice Returns the flags used when creating payment orders in this
    ///         client.
    /// @return flags_ The flags this client will use.
    function getFlags() external view returns (bytes32 flags_);

    /// @notice Returns the number of flags this client uses for PaymentOrders.
    /// @return flagCount_ The number of flags.
    function getFlagCount() external view returns (uint8 flagCount_);
}

// ============================================================
// FILE: src/modules/logicModule/interfaces/ILM_Oracle_Permissioned_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal
import {IOraclePrice_v1} from "@lm/interfaces/IOraclePrice_v1.sol";

/**
 * @title   Manual External Price Oracle Implementation.
 *
 * @notice  This contract provides a manual price feed mechanism for token
 *          operations, allowing authorized users to set and update prices
 *          for both issuance (buying) and redemption (selling) operations.
 *
 * @dev     This contract inherits from:
 *          - ILM_Oracle_Permissioned_v1: Implementation interface.
 *          - IOraclePrice_v1: Oracle price interface.
 *          - Module_v1: Base module functionality.
 *
 *          Key features:
 *              - Two separate price feeds for issuance and redemption.
 *                The contract maintains two separate price feeds for issuance
 *                and redemption operations.
 *
 *              - Manual price setting.
 *                Prices are manually set by the price setter role and must be
 *                non-zero values.
 *
 *              - Price decimal denominations.
 *                Prices are always given as amount of collateral going in/coming
 *                out. Prices are denominated in collateral token decimals. For
 *                example:
 *                - To price issuing 1 token at 1.5 collateral with 6 decimal
 *                  collateral: 1_500_000
 *                - To price redeeming 1 token at 0.5 collateral with 6 decimal
 *                  collateral: 500_000
 *
 * @custom:setup   This module requires the following MANDATORY setup steps:
 *
 *                 1. Configure Price Setter Role:
 *                    - Purpose: The price setter role is authorized to set
 *                               prices for issuance and redemption operations.
 *                    - How:     The OrchestratorAdmin (or PRICE_SETTER_ROLE_ADMIN
 *                               if configured) must:
 *                               1. Retrieve the price setter role identifier.
 *                               2. Grant the role to desired addresses.
 *                    - Example: module.grantModuleRole(
 *                                module.getPriceSetterRole(),
 *                                operatorAddress
 *                               );
 *
 *                 OPTIONAL setup steps for enhanced administration:
 *
 *                 1. Custom Price Setter Role Admin:
 *                    - Purpose: Enables delegation of price setter role
 *                               management to a dedicated admin role instead of
 *                               relying on the OrchestratorAdmin. This allows
 *                               for more granular access control and operational
 *                               flexibility.
 *                    - How:     The OrchestratorAdmin must:
 *                               1. Generate the role IDs for both roles.
 *                               2. Transfer admin rights through the Authorizer.
 *                    - Example: authorizer.transferAdminRole(
 *                               authorizer.generateRoleId(
 *                                 moduleAddress,
 *                                 module.getPriceSetterRole()
 *                               ),
 *                               authorizer.generateRoleId(
 *                                 moduleAddress,
 *                                 module.getPriceSetterRoleAdmin()
 *                                )
 *                               );
 *
 * @custom:security-contact security@inverter.network
 *                          In case of any concerns or findings, please refer
 *                          to our Security Policy at security.inverter.network
 *                          or email us directly!
 *
 * @custom:version  v1.0.0
 *
 * @custom:standard-version v1.0.0
 *
 * @author  Zealynx Security
 */
interface ILM_Oracle_Permissioned_v1 is IOraclePrice_v1 {
    // -------------------------------------------------------------------------

    // Errors

    /// @notice Thrown when attempting to set a price to zero.
    error Module__LM_ExternalPriceSetter__InvalidPrice();

    // -------------------------------------------------------------------------
    // External Functions

    /// @notice Sets the issuance price for token issuance (buying tokens)
    ///         Price represents how much collateral is paid for 1 issuance token.
    /// @dev    Must be non-zero and denominated in collateral token decimals.
    ///         For example: With 6 decimal collateral token,
    ///         - To price 1 issuance token at 1.5 collateral, use 1_500_000
    ///         - To price 1 issuance token at 0.5 collateral, use 500_000
    /// @param  price_ The issuance price in collateral token decimals
    function setIssuancePrice(uint price_) external;

    /// @notice Sets the redemption price for token redemption (selling tokens)
    ///         Price represents how much collateral is returned for 1 issuance token.
    /// @dev    Must be non-zero and denominated in collateral token decimals.
    ///         For example: With 6 decimal collateral token,
    ///         - To price 1 issuance token at 1.5 collateral, use 1_500_000
    ///         - To price 1 issuance token at 0.5 collateral, use 500_000
    /// @param  price_ The redemption price in collateral token decimals
    function setRedemptionPrice(uint price_) external;

    /// @notice	Sets both issuance and redemption prices atomically, denominated
    ///         in the collateral token decimals.
    /// @dev    Both prices must be non-zero. Both the issuance and redemption
    ///         prices should be denominated in the collateral token decimals.
    ///         For example, if the collateral token has 6 decimals and the
    ///         issuance and redemption price are both 1.5, the issuancePrice_
    ///         and redemptionPrice_ parameters should be 1500000.
    /// @param	issuancePrice_ The issuance price to set, denominated in the
    ///         collateral token decimals.
    /// @param	redemptionPrice_ The redemption price to set, denominated in
    ///         the collateral token decimals.
    function setIssuanceAndRedemptionPrice(
        uint issuancePrice_,
        uint redemptionPrice_
    ) external;

    /// @notice	Gets the decimals of the collateral token.
    /// @dev    Decimals in which the issuance and redemption prices
    ///         are denominated.
    /// @return	decimals_ The decimals of the collateral token.
    function getCollateralTokenDecimals() external view returns (uint8);

    /// @notice Gets the price setter role identifier.
    /// @return bytes32 The PRICE_SETTER_ROLE identifier
    function getPriceSetterRole() external pure returns (bytes32);

    /// @notice Gets the price setter role admin identifier.
    /// @return bytes32 The PRICE_SETTER_ROLE_ADMIN identifier
    function getPriceSetterRoleAdmin() external pure returns (bytes32);
}

// ============================================================
// FILE: src/modules/logicModule/interfaces/IOraclePrice_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

/**
 * @title   Oracle Price Interface
 *
 * @notice  Interface for oracle price feed calculations that provides a
 *          standardized way to query token prices for both issuance and
 *          redemption operations.
 *          way to query token prices for both issuance and redemption operations.
 *
 * @dev     Designed to facilitate various oracle price implementations. Each
 *          implementation must provide methods to get current prices for both
 *          buying (issuance) and selling (redemption) operations.
 *
 * @custom:security-contact security@inverter.network
 *                          In case of any concerns or findings, please refer to
 *                          our Security Policy at security.inverter.network or
 *                          email us directly!
 *
 * @custom:version  v1.0.0
 *
 * @custom:standard-version v1.0.0
 *
 * @author  Zealynx Security
 */
interface IOraclePrice_v1 {
    // -------------------------------------------------------------------------
    // Events

    /// @notice	Emitted when an issuance price is set.
    /// @param	price_ The price that was set.
    /// @param	caller_ The address that set the price.
    event IssuancePriceSet(uint indexed price_, address indexed caller_);

    /// @notice	Emitted when a redemption price is set.
    /// @param	price_ The price that was set.
    /// @param  caller_ The address that set the price.
    event RedemptionPriceSet(uint indexed price_, address indexed caller_);

    // -------------------------------------------------------------------------
    // Errors

    /// @notice	Thrown when price returned is zero.
    error OraclePrice__ZeroPrice();

    // -------------------------------------------------------------------------
    // External Functions
    /// @notice Gets current price for token issuance (buying tokens)
    ///         Price represents how much collateral is paid for 1 issuance token.
    /// @dev    Must be non-zero and denominated in collateral token decimals.
    ///         For example: With 6 decimal collateral token,
    ///         - To price 1 issuance token at 1.5 collateral, returns 1_500_000
    ///         - To price 1 issuance token at 0.5 collateral, returns 500_000
    /// @return price_ Current issuance price in collateral token decimals
    function getPriceForIssuance() external view returns (uint price_);

    /// @notice Gets current price for token redemption (selling tokens)
    ///         Price represents how much collateral is returned for 1 issuance token.
    /// @dev    Must be non-zero and denominated in collateral token decimals.
    ///         For example: With 6 decimal collateral token,
    ///         - To price 1 issuance token at 1.5 collateral, returns 1_500_000
    ///         - To price 1 issuance token at 0.5 collateral, returns 500_000
    /// @return price_ Current redemption price in collateral token decimals
    function getPriceForRedemption() external view returns (uint price_);
}

// ============================================================
// FILE: src/modules/logicModule/LM_Oracle_Permissioned_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

// Internal
import {ILM_Oracle_Permissioned_v1} from
    "@lm/interfaces/ILM_Oracle_Permissioned_v1.sol";
import {Module_v1} from "src/modules/base/Module_v1.sol";
import {IOrchestrator_v1} from
    "src/orchestrator/interfaces/IOrchestrator_v1.sol";
import {IOraclePrice_v1} from "@lm/interfaces/IOraclePrice_v1.sol";

// External
import {IERC20Metadata} from "@oz/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC165Upgradeable} from
    "@oz-up/utils/introspection/ERC165Upgradeable.sol";

/**
 * @title   Manual External Price Oracle Implementation.
 *
 * @notice  This contract provides a manual price feed mechanism for token
 *          operations, allowing authorized users to set and update prices
 *          for both issuance (buying) and redemption (selling) operations.
 *
 * @dev     This contract inherits from:
 *          - ILM_Oracle_Permissioned_v1: Implementation interface.
 *          - IOraclePrice_v1: Oracle price interface.
 *          - Module_v1: Base module functionality.
 *
 *          Key features:
 *              - Two separate price feeds for issuance and redemption.
 *                The contract maintains two separate price feeds for issuance
 *                and redemption operations.
 *
 *              - Manual price setting.
 *                Prices are manually set by the price setter role and must be
 *                non-zero values.
 *
 *              - Price decimal denominations.
 *                Prices are always given as amount of collateral going in/coming
 *                out. Prices are denominated in collateral token decimals. For
 *                example:
 *                - To price issuing 1 token at 1.5 collateral with 6 decimal
 *                  collateral: 1_500_000
 *                - To price redeeming 1 token at 0.5 collateral with 6 decimal
 *                  collateral: 500_000
 *
 * @custom:setup   This module requires the following MANDATORY setup steps:
 *
 *                 1. Configure Price Setter Role:
 *                    - Purpose: The price setter role is authorized to set
 *                               prices for issuance and redemption operations.
 *                    - How:     The OrchestratorAdmin (or PRICE_SETTER_ROLE_ADMIN
 *                               if configured) must:
 *                               1. Retrieve the price setter role identifier.
 *                               2. Grant the role to desired addresses.
 *                    - Example: module.grantModuleRole(
 *                                module.getPriceSetterRole(),
 *                                operatorAddress
 *                               );
 *
 *                 OPTIONAL setup steps for enhanced administration:
 *
 *                 1. Custom Price Setter Role Admin:
 *                    - Purpose: Enables delegation of price setter role
 *                               management to a dedicated admin role instead of
 *                               relying on the OrchestratorAdmin. This allows
 *                               for more granular access control and operational
 *                               flexibility.
 *                    - How:     The OrchestratorAdmin must:
 *                               1. Generate the role IDs for both roles.
 *                               2. Transfer admin rights through the Authorizer.
 *                    - Example: authorizer.transferAdminRole(
 *                               authorizer.generateRoleId(
 *                                 moduleAddress,
 *                                 module.getPriceSetterRole()
 *                               ),
 *                               authorizer.generateRoleId(
 *                                 moduleAddress,
 *                                 module.getPriceSetterRoleAdmin()
 *                                )
 *                               );
 *
 * @custom:security-contact security@inverter.network
 *                          In case of any concerns or findings, please refer
 *                          to our Security Policy at security.inverter.network
 *                          or email us directly!
 *
 * @custom:version  v1.0.0
 *
 * @custom:standard-version v1.0.0
 *
 * @author  Zealynx Security
 */
contract LM_Oracle_Permissioned_v1 is ILM_Oracle_Permissioned_v1, Module_v1 {
    // -------------------------------------------------------------------------
    // ERC165

    /// @inheritdoc ERC165Upgradeable
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override
        returns (bool)
    {
        return interfaceId == type(ILM_Oracle_Permissioned_v1).interfaceId
            || interfaceId == type(IOraclePrice_v1).interfaceId
            || super.supportsInterface(interfaceId);
    }

    // -------------------------------------------------------------------------
    // Constants

    /// @notice Role identifier for accounts authorized to set prices.
    /// @dev    This role should be granted to trusted price feeders only.
    bytes32 internal constant PRICE_SETTER_ROLE = "PRICE_SETTER_ROLE";

    /// @notice Role identifier for the admin authorized to assign the price
    ///         setter role.
    /// @dev    This role should be set as the role admin within the Authorizer
    ///         module.
    bytes32 internal constant PRICE_SETTER_ROLE_ADMIN =
        "PRICE_SETTER_ROLE_ADMIN";

    // -------------------------------------------------------------------------
    // State Variables

    /// @notice The price for issuing tokens (in collateral token decimals)
    uint internal _issuancePrice;

    /// @notice The price for redeeming tokens (in collateral token decimals)
    uint internal _redemptionPrice;

    /// @notice Decimals of the collateral token (e.g., USDC with 6 decimals).
    /// @dev    This is the token used to pay/buy with.
    uint8 internal _collateralTokenDecimals;

    /// @dev    Storage gap for upgradeable contracts.
    uint[50] private __gap;

    // -------------------------------------------------------------------------
    // Initialization Function

    /// @notice The module's initializer function.
    /// @dev	CAN be overridden by downstream contract.
    /// @dev	MUST call `__Module_init()`.
    /// @param orchestrator_ The orchestrator contract.
    /// @param metadata_ The metadata of the module.
    /// @param configData_ The config data of the module, comprised of:
    ///     - address: collateralToken: The collateral token address.
    function init(
        IOrchestrator_v1 orchestrator_,
        Metadata memory metadata_,
        bytes memory configData_
    ) external override(Module_v1) initializer {
        __Module_init(orchestrator_, metadata_);

        // Decode collateral token address from configData_.
        (address collateralToken) = abi.decode(configData_, (address));

        // Store token decimals for price normalization.
        _collateralTokenDecimals = IERC20Metadata(collateralToken).decimals();
    }

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @inheritdoc ILM_Oracle_Permissioned_v1
    function getCollateralTokenDecimals()
        external
        view
        virtual
        returns (uint8)
    {
        return _collateralTokenDecimals;
    }

    /// @inheritdoc IOraclePrice_v1
    function getPriceForIssuance() external view virtual returns (uint) {
        return _issuancePrice;
    }

    /// @inheritdoc IOraclePrice_v1
    function getPriceForRedemption() external view virtual returns (uint) {
        return _redemptionPrice;
    }

    /// @inheritdoc ILM_Oracle_Permissioned_v1
    function getPriceSetterRole() external pure virtual returns (bytes32) {
        return PRICE_SETTER_ROLE;
    }

    /// @inheritdoc ILM_Oracle_Permissioned_v1
    function getPriceSetterRoleAdmin()
        external
        pure
        virtual
        returns (bytes32)
    {
        return PRICE_SETTER_ROLE_ADMIN;
    }

    //--------------------------------------------------------------------------
    // Public Mutating Functions

    /// @inheritdoc ILM_Oracle_Permissioned_v1
    function setIssuancePrice(uint price_)
        external
        virtual
        onlyModuleRole(PRICE_SETTER_ROLE)
    {
        _setIssuancePrice(price_);
    }

    /// @inheritdoc ILM_Oracle_Permissioned_v1
    function setRedemptionPrice(uint price_)
        external
        virtual
        onlyModuleRole(PRICE_SETTER_ROLE)
    {
        _setRedemptionPrice(price_);
    }

    /// @inheritdoc ILM_Oracle_Permissioned_v1
    function setIssuanceAndRedemptionPrice(
        uint issuancePrice_,
        uint redemptionPrice_
    ) external virtual onlyModuleRole(PRICE_SETTER_ROLE) {
        _setIssuancePrice(issuancePrice_);
        _setRedemptionPrice(redemptionPrice_);
    }

    //--------------------------------------------------------------------------
    // Internal Functions

    /// @notice Internal function to set the issuance price
    /// @param price_ The price to set
    function _setIssuancePrice(uint price_) internal virtual {
        if (price_ == 0) revert Module__LM_ExternalPriceSetter__InvalidPrice();
        _issuancePrice = price_;
        emit IssuancePriceSet(price_, _msgSender());
    }

    /// @notice Internal function to set the redemption price
    /// @param price_ The price to set
    function _setRedemptionPrice(uint price_) internal virtual {
        if (price_ == 0) revert Module__LM_ExternalPriceSetter__InvalidPrice();
        _redemptionPrice = price_;
        emit RedemptionPriceSet(price_, _msgSender());
    }
}

// ============================================================
// FILE: src/modules/paymentProcessor/IPaymentProcessor_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IERC20PaymentClientBase_v2} from
    "@lm/interfaces/IERC20PaymentClientBase_v2.sol";

// External Interfaces
import {IERC20} from "@oz/token/ERC20/IERC20.sol";

interface IPaymentProcessor_v1 {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice invalid caller.
    error Module__PaymentProcessor__OnlyCallableByModule();

    /// @notice a client can only execute on its own orders.
    error Module__PaymentProcessor__CannotCallOnOtherClientsOrders();

    /// @notice the paymentReceiver is not owed any money by the paymentClient.
    error Module__PaymentProcessor__NothingToClaim(
        address paymentClient, address paymentReceiver
    );

    //--------------------------------------------------------------------------
    // Events

    /// @notice Emitted when a payment gets processed for execution.
    /// @param  paymentClient The payment client that originated the order.
    /// @param  recipient The address that will receive the payment.
    /// @param  paymentToken The address of the token that will be used for the payment.
    /// @param  amount The amount of tokens the payment consists of.
    /// @param  originChainId The id of the origin chain.
    /// @param  targetChainId The id of the target chain.
    /// @param  flags Flags that indicate additional data used by the payment
    ///         order.
    /// @param  data Array of additional data regarding the payment order.
    event PaymentOrderProcessed(
        address indexed paymentClient,
        address indexed recipient,
        address indexed paymentToken,
        uint amount,
        uint originChainId,
        uint targetChainId,
        bytes32 flags,
        bytes32[] data
    );

    /// @notice Emitted when an amount of ERC20 tokens gets sent out of the contract.
    /// @param  recipient The address that will receive the payment.
    /// @param  token The token address in which the payment should have happened.
    /// @param  amount The amount of tokens the payment consists of.
    event TokensReleased(
        address indexed recipient, address indexed token, uint amount
    );

    /// @notice Emitted when a payment was unclaimable due to a token error.
    /// @param  paymentClient The payment client that originated the order.
    /// @param  paymentClient The token address in which the payment should have happened.
    /// @param  recipient The address that should have received the payment.
    /// @param  amount The amount of tokens that were unclaimable.
    event UnclaimableAmountAdded(
        address indexed paymentClient,
        address indexed token,
        address indexed recipient,
        uint amount
    );

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Processes all payments from an {IERC20PaymentClientBase_v2} instance. Please note:
    ///         this function does not support callbacks on transfer of tokens.
    /// @dev    It's up to the the implementation to keep up with what has been
    ///         paid out or not.
    /// @dev	Currently callback functions on token transfers are not supported and thus not checked.
    ///         This could lead to a failed transaction which could influence the batched processing of
    ///         payments.
    /// @param  client The {IERC20PaymentClientBase_v2} instance to process its to payments.
    function processPayments(IERC20PaymentClientBase_v2 client) external;

    /// @notice Cancels all unfinished payments from an {IERC20PaymentClientBase_v2} instance.
    /// @dev	It's up to the the implementation to keep up with what has been
    ///         paid out or not.
    /// @param  client The {IERC20PaymentClientBase_v2} instance to process its to payments.
    function cancelRunningPayments(IERC20PaymentClientBase_v2 client)
        external;

    /// @notice Getter for the amount of tokens that could not be claimed.
    /// @param  client address of the payment client.
    /// @param  token address of the payment token.
    /// @param  paymentReceiver PaymentReceiver's address.
    /// @return amount Amount of tokens that could not be claimed.
    function unclaimable(address client, address token, address paymentReceiver)
        external
        view
        returns (uint amount);

    /// @notice claim every unclaimable amount that the paymentClient owes to the _msgSender and send it to a
    ///         specified receiver.
    /// @dev	This function should be callable if the _msgSender has unclaimedAmounts.
    /// @param  client The IERC20PaymentClientBase_v2 instance address that processes all claims from _msgSender.
    /// @param  token address of the payment token.
    /// @param  receiver The address that will receive the previously unclaimable amount.
    function claimPreviouslyUnclaimable(
        address client,
        address token,
        address receiver
    ) external;

    /// @notice Function that checks if the given PaymentOrder was valid.
    /// @param  order The IERC20PaymentClientBase_v2 Order that needs to be checked.
    /// @return valid Bool if the Payment Order is valid.
    function validPaymentOrder(
        IERC20PaymentClientBase_v2.PaymentOrder memory order
    ) external returns (bool);
}

// ============================================================
// FILE: src/modules/paymentProcessor/IPaymentProcessor_v2.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IERC20PaymentClientBase_v2} from
    "@lm/interfaces/IERC20PaymentClientBase_v2.sol";

// External Interfaces
import {IERC20} from "@oz/token/ERC20/IERC20.sol";

interface IPaymentProcessor_v2 {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice invalid caller.
    error Module__PaymentProcessor__OnlyCallableByModule();

    /// @notice a client can only execute on its own orders.
    error Module__PaymentProcessor__CannotCallOnOtherClientsOrders();

    /// @notice the paymentReceiver is not owed any money by the paymentClient.
    error Module__PaymentProcessor__NothingToClaim(
        address paymentClient, address paymentReceiver
    );

    //--------------------------------------------------------------------------
    // Events

    /// @notice Emitted when a payment gets processed for execution.
    /// @param  paymentClient The payment client that originated the order.
    /// @param  recipient The address that will receive the payment.
    /// @param  paymentToken The address of the token that will be used for the payment.
    /// @param  amount The amount of tokens the payment consists of.
    /// @param  originChainId The id of the origin chain.
    /// @param  targetChainId The id of the target chain.
    /// @param  flags Flags that indicate additional data used by the payment
    ///         order.
    /// @param  data Array of additional data regarding the payment order.
    event PaymentOrderProcessed(
        address indexed paymentClient,
        address indexed recipient,
        address indexed paymentToken,
        uint amount,
        uint originChainId,
        uint targetChainId,
        bytes32 flags,
        bytes32[] data
    );

    /// @notice Emitted when an amount of ERC20 tokens gets sent out of the contract.
    /// @param  recipient The address that will receive the payment.
    /// @param  token The token address in which the payment should have happened.
    /// @param  amount The amount of tokens the payment consists of.
    event TokensReleased(
        address indexed recipient, address indexed token, uint amount
    );

    /// @notice Emitted when a payment was unclaimable due to a token error.
    /// @param  paymentClient The payment client that originated the order.
    /// @param  paymentClient The token address in which the payment should have happened.
    /// @param  recipient The address that should have received the payment.
    /// @param  amount The amount of tokens that were unclaimable.
    event UnclaimableAmountAdded(
        address indexed paymentClient,
        address indexed token,
        address indexed recipient,
        uint amount
    );

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Processes all payments from an {IERC20PaymentClientBase_v2} instance. Please note:
    ///         this function does not support callbacks on transfer of tokens.
    /// @dev    It's up to the the implementation to keep up with what has been
    ///         paid out or not.
    /// @dev	Currently callback functions on token transfers are not supported and thus not checked.
    ///         This could lead to a failed transaction which could influence the batched processing of
    ///         payments.
    /// @param  client The {IERC20PaymentClientBase_v2} instance to process its to payments.
    function processPayments(IERC20PaymentClientBase_v2 client) external;

    /// @notice Cancels all unfinished payments from an {IERC20PaymentClientBase_v2} instance.
    /// @dev	It's up to the the implementation to keep up with what has been
    ///         paid out or not.
    /// @param  client The {IERC20PaymentClientBase_v2} instance to process its to payments.
    function cancelRunningPayments(IERC20PaymentClientBase_v2 client)
        external;

    /// @notice Getter for the amount of tokens that could not be claimed.
    /// @param  client address of the payment client.
    /// @param  token address of the payment token.
    /// @param  paymentReceiver PaymentReceiver's address.
    /// @return amount Amount of tokens that could not be claimed.
    function unclaimable(address client, address token, address paymentReceiver)
        external
        view
        returns (uint amount);

    /// @notice claim every unclaimable amount that the paymentClient owes to the _msgSender and send it to a
    ///         specified receiver.
    /// @dev	This function should be callable if the _msgSender has unclaimedAmounts.
    /// @param  client The IERC20PaymentClientBase_v2 instance address that processes all claims from _msgSender.
    /// @param  token address of the payment token.
    /// @param  receiver The address that will receive the previously unclaimable amount.
    function claimPreviouslyUnclaimable(
        address client,
        address token,
        address receiver
    ) external;

    /// @notice Function that checks if the given PaymentOrder was valid.
    /// @param  order The IERC20PaymentClientBase_v2 Order that needs to be checked.
    /// @return valid Bool if the Payment Order is valid.
    function validPaymentOrder(
        IERC20PaymentClientBase_v2.PaymentOrder memory order
    ) external returns (bool);
}

// ============================================================
// FILE: src/orchestrator/interfaces/IModuleManagerBase_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// External Interfaces
import {IERC2771Context} from "src/external/interfaces/IERC2771Context.sol";

interface IModuleManagerBase_v1 is IERC2771Context {
    //--------------------------------------------------------------------------
    // Structs

    /// @notice The timelock struct to keep track of updating the registered modules.
    /// @param  timelockActive Is the timelock currently active.
    /// @param  timelockUntil Timestamp that represents from when the update can be carried out.
    struct ModuleUpdateTimelock {
        bool timelockActive;
        uint timelockUntil;
    }

    //--------------------------------------------------------------------------
    // Errors

    /// @notice Function is only callable by authorized address.
    error ModuleManagerBase__CallerNotAuthorized();

    /// @notice Function is only callable by modules.
    error ModuleManagerBase__OnlyCallableByModule();

    /// @notice Given module address invalid.
    error ModuleManagerBase__InvalidModuleAddress();

    /// @notice Given address is a module.
    error ModuleManagerBase__IsModule();

    /// @notice Given address is not a module.
    error ModuleManagerBase__IsNotModule();

    /// @notice The {ModuleManagerBase_v1} has reached the maximum amount of modules.
    error ModuleManagerBase__ModuleAmountOverLimits();

    /// @notice Timelock still active for the given module address.
    /// @param  _module The module address.
    /// @param  _timelockUntil The unix timestamp until the timelock is active.
    error ModuleManagerBase__ModuleUpdateTimelockStillActive(
        address _module, uint _timelockUntil
    );

    /// @notice Module update is already in progress.
    error ModuleManagerBase__ModuleUpdateAlreadyStarted();

    /// @notice Module has not been registered in our factory.
    error ModuleManagerBase__ModuleNotRegistered();

    /// @notice Referenced {ModuleFactory_v1} is invalid.
    error ModuleManagerBase__ModuleFactoryInvalid();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Event emitted when module added.
    /// @param  module The module's address.
    event ModuleAdded(address indexed module);

    /// @notice Event emitted when module removed.
    /// @param  module The module's address.
    event ModuleRemoved(address indexed module);

    /// @notice Event emitted when updating a module is initiated, and the timelock starts;.
    /// @param  module The module's address.
    /// @param  timelockUntil The unix timestamp until the timelock is active.
    event ModuleTimelockStarted(address module, uint timelockUntil);

    /// @notice Event emitted when a module update is canceled.
    /// @param  module The module's address.
    event ModuleUpdateCanceled(address module);

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Returns whether the address `module` is added as module.
    /// @param  module The module to check.
    /// @return True if module added, false otherwise.
    function isModule(address module) external view returns (bool);

    /// @notice Returns the list of all modules.
    /// @return List of all modules.
    function listModules() external view returns (address[] memory);

    /// @notice Returns the number of modules.
    /// @return The number of modules.
    function modulesSize() external view returns (uint8);

    //--------------------------------------------------------------------------
    // ERC2771 Context Upgradeable
    // @dev We imitate here the EIP2771 Standard to enable metatransactions

    /// @notice Returns wether the given address is the trusted forwarder or not.
    /// @dev	Exposes the ERC2771 isTrusted Forwarder.
    /// @param  forwarder The address to check.
    /// @return True if the address is the trusted forwarder, false otherwise.
    function isTrustedForwarder(address forwarder)
        external
        view
        returns (bool);

    /// @notice Returns the trusted forwarder for metatransactions.
    /// @dev	Exposes the ERC2771 isTrusted Forwarder.
    /// @return The trusted forwarder address.
    function trustedForwarder() external view returns (address);
}

// ============================================================
// FILE: src/orchestrator/interfaces/IOrchestrator_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal Interfaces
import {IModuleManagerBase_v1} from
    "src/orchestrator/interfaces/IModuleManagerBase_v1.sol";
import {IGovernor_v1} from "src/external/governance/interfaces/IGovernor_v1.sol";
import {IFundingManager_v1} from "@fm/IFundingManager_v1.sol";
import {IAuthorizer_v1} from "@aut/IAuthorizer_v1.sol";
import {IPaymentProcessor_v2} from
    "src/modules/paymentProcessor/IPaymentProcessor_v2.sol";

// External Interfaces
import {IERC20} from "@oz/token/ERC20/IERC20.sol";

interface IOrchestrator_v1 is IModuleManagerBase_v1 {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice Function is only callable by authorized caller.
    /// @param  role The role of the caller.
    /// @param  caller The caller address.
    error Orchestrator__CallerNotAuthorized(bytes32 role, address caller);

    /// @notice The given module is not used in the {Orchestrator_v1}.
    /// @param  module The module address.
    error Orchestrator__InvalidModuleType(address module);

    /// @notice The token of the new funding manager is not the same as the current funding manager.
    /// @param  currentToken The current token.
    /// @param  newToken The new token.
    error Orchestrator__MismatchedTokenForFundingManager(
        address currentToken, address newToken
    );

    /// @notice The given module is not used in the {Orchestrator_v1}.
    error Orchestrator__DependencyInjection__ModuleNotUsedInOrchestrator();

    /// @notice The Authorizer can not be removed through this function.
    error Orchestrator__InvalidRemovalOfAuthorizer();

    /// @notice The FundingManager can not be removed through this function.
    error Orchestrator__InvalidRemovalOfFundingManager();

    /// @notice The PaymentProcessor can not be removed through this function.
    error Orchestrator__InvalidRemovalOfPaymentProcessor();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Authorizer updated to new address.
    /// @param  _address The new address.
    event AuthorizerUpdated(address indexed _address);

    /// @notice FundingManager updated to new address.
    /// @param  _address The new address.
    event FundingManagerUpdated(address indexed _address);

    /// @notice PaymentProcessor updated to new address.
    /// @param  _address The new address.
    event PaymentProcessorUpdated(address indexed _address);

    /// @notice {Orchestrator_v1} has been initialized with the corresponding modules.
    /// @param  orchestratorId_ The id of the {Orchestrator_v1}.
    /// @param  fundingManager The address of the funding manager module.
    /// @param  authorizer The address of the authorizer module.
    /// @param  paymentProcessor The address of the payment processor module.
    /// @param  modules The addresses of the other modules used in the {Orchestrator_v1}.
    /// @param  governor The address of the {Governor_v1} contract used to reference protocol level interactions.
    event OrchestratorInitialized(
        uint indexed orchestratorId_,
        address fundingManager,
        address authorizer,
        address paymentProcessor,
        address[] modules,
        address governor
    );

    //--------------------------------------------------------------------------
    // Functions

    /// @notice Initialization function.
    /// @param  orchestratorId The id of the {Orchestrator_v1}.
    /// @param  moduleFactory_ The address of the module factory.
    /// @param  modules The addresses of the modules used in the {Orchestrator_v1}.
    /// @param  fundingManager The address of the funding manager module.
    /// @param  authorizer The address of the authorizer module.
    /// @param  paymentProcessor The address of the payment processor module.
    /// @param  governor The address of the governor contract.
    function init(
        uint orchestratorId,
        address moduleFactory_,
        address[] calldata modules,
        IFundingManager_v1 fundingManager,
        IAuthorizer_v1 authorizer,
        IPaymentProcessor_v2 paymentProcessor,
        IGovernor_v1 governor
    ) external;

    /// @notice Initiates replacing the current authorizer with `_authorizer` on a timelock.
    /// @dev	Only callable by authorized caller.
    /// @param  authorizer_ The address of the new authorizer module.
    function initiateSetAuthorizerWithTimelock(IAuthorizer_v1 authorizer_)
        external;

    /// @notice Initiates replaces the current funding manager with `fundingManager_` on a timelock.
    /// @dev	Only callable by authorized caller.
    /// @param  fundingManager_ The address of the new funding manager module.
    function initiateSetFundingManagerWithTimelock(
        IFundingManager_v1 fundingManager_
    ) external;

    /// @notice Initiates replaces the current payment processor with `paymentProcessor_` on a timelock.
    /// @dev	Only callable by authorized caller.
    /// @param  paymentProcessor_ The address of the new payment processor module.
    function initiateSetPaymentProcessorWithTimelock(
        IPaymentProcessor_v2 paymentProcessor_
    ) external;

    /// @notice Cancels the replacement of the current authorizer with `authorizer_`.
    /// @dev	Only callable by authorized caller.
    /// @param  authorizer_ The address of the new authorizer module, for which the update is canceled.
    function cancelAuthorizerUpdate(IAuthorizer_v1 authorizer_) external;

    /// @notice Cancels the replacement of the current funding manager with `fundingManager_`.
    /// @dev	Only callable by authorized caller.
    /// @param  fundingManager_ The address of the new funding manager module, for which the update is canceled.
    function cancelFundingManagerUpdate(IFundingManager_v1 fundingManager_)
        external;

    /// @notice Cancels the replacement of the current payment processor with `paymentProcessor_`.
    /// @dev	Only callable by authorized caller.
    /// @param  paymentProcessor_ The address of the new payment processro module, for which the update is canceled.
    function cancelPaymentProcessorUpdate(
        IPaymentProcessor_v2 paymentProcessor_
    ) external;

    /// @notice Executes replacing the current authorizer with `_authorizer`.
    /// @notice !!! IMPORTANT !!! When changing the Authorizer the current set of assigned addresses to Roles are lost.
    ///         Make sure initial owners are set properly.
    /// @dev	Only callable by authorized caller.
    /// @param  authorizer_ The address of the new authorizer module.
    function executeSetAuthorizer(IAuthorizer_v1 authorizer_) external;

    /// @notice Executes replaces the current funding manager with `fundingManager_`.
    /// @notice !!! IMPORTANT !!! When changing the FundingManager the current funds still contained in the module might
    ///         not be retrievable. Make sure to clean the FundingManager properly beforehand.
    /// @dev	Only callable by authorized caller.
    /// @param  fundingManager_ The address of the new funding manager module.
    function executeSetFundingManager(IFundingManager_v1 fundingManager_)
        external;

    /// @notice Executes replaces the current payment processor with `paymentProcessor_`.
    /// @notice !!! IMPORTANT !!! When changing the PaymentProcessor the current ongoing payment orders are lost.
    ///         Make sure to resolve those payments properly beforehand.
    /// @dev	Only callable by authorized caller.
    /// @param  paymentProcessor_ The address of the new payment processor module.
    function executeSetPaymentProcessor(IPaymentProcessor_v2 paymentProcessor_)
        external;

    /// @notice Initiates the adding of a module to the {Orchestrator_v1} on a timelock.
    /// @dev	Only callable by authorized address.
    /// @dev	Fails of adding module exeeds max modules limit.
    /// @dev	Fails if address invalid or address already added as module.
    /// @param  module The module address to add.
    function initiateAddModuleWithTimelock(address module) external;

    /// @notice Initiate the removal of a module from the {Orchestrator_v1} on a timelock.
    /// @dev	Reverts if module to be removed is the current authorizer/fundingManager/paymentProcessor.
    ///         The functions specific to updating these 3 module categories should be used instead.
    /// @dev	Only callable by authorized address.
    /// @dev	Fails if address not added as module.
    /// @param  module The module address to remove.
    function initiateRemoveModuleWithTimelock(address module) external;

    /// @notice Adds address `module` as module.
    /// @dev	Only callable by authorized address.
    /// @dev	Fails if adding of module has not been initiated.
    /// @dev	Fails if timelock has not been expired yet.
    /// @param  module The module address to add.
    function executeAddModule(address module) external;

    /// @notice Removes address `module` as module.
    /// @dev	Only callable by authorized address.
    /// @dev	Fails if removing of module has not been initiated.
    /// @dev	Fails if timelock has not been expired yet.
    /// @param  module The module address to remove.
    function executeRemoveModule(address module) external;

    /// @notice Cancels an initiated update for a module. Can be adding or removing a module
    ///         from the {Orchestrator_v1}.
    /// @dev	Only callable by authorized address.
    /// @dev	Fails if module update has not been initiated.
    /// @param  module The module address to remove.
    function cancelModuleUpdate(address module) external;

    /// @notice Returns the {Orchestrator_v1}'s id.
    /// @dev	Unique id set by the {OrchestratorFactory_v1} during initialization.
    /// @return The {Orchestrator_v1}'s id.
    function orchestratorId() external view returns (uint);

    /// @notice The {IFundingManager_v1} implementation used to hold and distribute Funds.
    /// @return The {IFundingManager_v1} implementation.
    function fundingManager() external view returns (IFundingManager_v1);

    /// @notice The {IAuthorizer_v1} implementation used to authorize addresses.
    /// @return The {IAuthorizer_v1} implementation.
    function authorizer() external view returns (IAuthorizer_v1);

    /// @notice The {IPaymentProcessor_v2} implementation used to process module
    ///         payments.
    /// @return The {IPaymentProcessor_v2} implementation.
    function paymentProcessor() external view returns (IPaymentProcessor_v2);

    /// @notice The {IGovernor_v1} implementation used for protocol level interactions.
    /// @return The {IGovernor_v1} implementation.
    function governor() external view returns (IGovernor_v1);
}

// ============================================================
// FILE: src/proxies/interfaces/IInverterBeacon_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// External Interfaces
import {IBeacon} from "@oz/proxy/beacon/IBeacon.sol";

interface IInverterBeacon_v1 is IBeacon {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice Given implementation invalid.
    error InverterBeacon__InvalidImplementation();

    /// @notice Given implementation minor and patch version is not higher than previous minor version.
    error InverterBeacon__InvalidImplementationMinorOrPatchVersion();

    //--------------------------------------------------------------------------
    // Events

    /// @notice The {InverterBeacon_v1} was constructed.
    /// @param  majorVersion The majorVersion of the implementation contract.
    event Constructed(uint majorVersion);

    /// @notice The {InverterBeacon_v1} was upgraded to a new implementation address.
    /// @param  implementation The new implementation address.
    /// @param  newMinorVersion The new minor version of the implementation contract.
    /// @param  newPatchVersion The new patch version of the implementation contract.
    event Upgraded(
        address indexed implementation,
        uint newMinorVersion,
        uint newPatchVersion
    );

    /// @notice The {InverterBeacon_v1} shutdown was initiated.
    event ShutdownInitiated();

    /// @notice The {InverterBeacon_v1} shutdown was reversed.
    event ShutdownReversed();

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @notice Returns the version of the linked implementation.
    /// @return Major version.
    /// @return Minor version.
    /// @return Patch version.
    function version() external view returns (uint, uint, uint);

    /// @notice Returns the {InverterReverter_v1} of the {InverterBeacon_v1}.
    /// @return ReverterAddress The address of the reverter contract.
    function getReverterAddress() external returns (address);

    /// @notice Returns the implementation address of the {InverterBeacon_v1}.
    /// @return ImplementationAddress The address of the implementation.
    function getImplementationAddress() external returns (address);

    /// @notice Returns wether the {InverterBeacon_v1} is in emergency mode or not.
    /// @return emergencyModeActive Is the beacon in emergency mode.
    function emergencyModeActive() external view returns (bool);

    //--------------------------------------------------------------------------
    // onlyOwner Mutating Functions

    /// @notice Upgrades the {InverterBeacon_v1} to a new implementation address.
    /// @dev	Only callable by owner.
    /// @dev	`overrideShutdown` Doesnt do anything if {InverterBeacon_v1} is not in emergency mode.
    /// @dev	Revert if new implementation invalid.
    /// @param  newImplementation The new implementation address.
    /// @param  newMinorVersion The new minor version of the implementation contract.
    /// @param  newPatchVersion The new patch version of the implementation contract.
    /// @param  overrideShutdown Flag to enable upgradeTo function to override the shutdown.
    function upgradeTo(
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion,
        bool overrideShutdown
    ) external;

    //--------------------------------------------------------------------------
    // onlyOwner Intervention Mechanism

    /// @notice Shuts down the {InverterBeacon_v1} and stops the system.
    /// @dev	Only callable by owner.
    /// @dev	Changes the implementation address to address(0).
    function shutDownImplementation() external;

    /// @notice Restarts the {InverterBeacon_v1} and the system.
    /// @dev	Only callable by owner.
    /// @dev	Changes the implementation address from address(0) to the original implementation.
    function restartImplementation() external;
}
