// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol
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
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC20CappedUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/ERC20Capped.sol)

pragma solidity ^0.8.20;

import {ERC20Upgradeable} from "../ERC20Upgradeable.sol";
import {Initializable} from "../../../proxy/utils/Initializable.sol";

/**
 * @dev Extension of {ERC20} that adds a cap to the supply of tokens.
 */
abstract contract ERC20CappedUpgradeable is Initializable, ERC20Upgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.ERC20Capped
    struct ERC20CappedStorage {
        uint256 _cap;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20Capped")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC20CappedStorageLocation = 0x0f070392f17d5f958cc1ac31867dabecfc5c9758b4a419a200803226d7155d00;

    function _getERC20CappedStorage() private pure returns (ERC20CappedStorage storage $) {
        assembly {
            $.slot := ERC20CappedStorageLocation
        }
    }

    /**
     * @dev Total supply cap has been exceeded.
     */
    error ERC20ExceededCap(uint256 increasedSupply, uint256 cap);

    /**
     * @dev The supplied cap is not a valid cap.
     */
    error ERC20InvalidCap(uint256 cap);

    /**
     * @dev Sets the value of the `cap`. This value is immutable, it can only be
     * set once during construction.
     */
    function __ERC20Capped_init(uint256 cap_) internal onlyInitializing {
        __ERC20Capped_init_unchained(cap_);
    }

    function __ERC20Capped_init_unchained(uint256 cap_) internal onlyInitializing {
        ERC20CappedStorage storage $ = _getERC20CappedStorage();
        if (cap_ == 0) {
            revert ERC20InvalidCap(0);
        }
        $._cap = cap_;
    }

    /**
     * @dev Returns the cap on the token's total supply.
     */
    function cap() public view virtual returns (uint256) {
        ERC20CappedStorage storage $ = _getERC20CappedStorage();
        return $._cap;
    }

    /**
     * @dev See {ERC20-_update}.
     */
    function _update(address from, address to, uint256 value) internal virtual override {
        super._update(from, to, value);

        if (from == address(0)) {
            uint256 maxSupply = cap();
            uint256 supply = totalSupply();
            if (supply > maxSupply) {
                revert ERC20ExceededCap(supply, maxSupply);
            }
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
// FILE: lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol
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
// FILE: src/external/token/ERC20IssuanceUpgradeable_Blacklist_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

// Internal
import {ERC20IssuanceUpgradeable_v1} from
    "@ex/token/ERC20IssuanceUpgradeable_v1.sol";
import {IERC20Issuance_Blacklist_v1} from
    "@ex/token/interfaces/IERC20Issuance_Blacklist_v1.sol";

// External
import {IERC20} from "@oz/token/ERC20/IERC20.sol";
import {ERC20CappedUpgradeable} from
    "@oz-up/token/ERC20/extensions/ERC20CappedUpgradeable.sol";

/**
 * @title   ERC20 Issuance Token with Blacklist Functionality (Upgradeable)
 *
 * @notice  An upgradeable ERC20 token implementation that extends
 *          ERC20IssuanceUpgradeable_v1 with blacklisting capabilities, allowing
 *          designated managers to restrict specific addresses from token operations.
 *
 * @dev     This contract inherits from:
 *              - IERC20Issuance_Blacklist_v1
 *              - ERC20IssuanceUpgradeable_v1
 *
 *          Key features:
 *              - Individual address blacklisting
 *              - Batch blacklisting operations (multiple addresses at once)
 *              - Role-based access control:
 *                  * Contract owner assigns blacklist managers
 *                  * Only blacklist managers can add/remove addresses from blacklist
 *              - Support for contract upgrades through OpenZeppelin's
 *                upgradeable pattern
 *
 *          Access control structure:
 *              - Owner: Controls who can be a blacklist manager
 *              - Blacklist Manager: Controls which addresses are blacklisted
 *
 * @custom:setup    This contract requires the following MANDATORY setup steps:
 *
 *                  1. Set Minter:
 *                     - Purpose: The contract needs a minter to handle token
 *                                minting and burning operations. Without this
 *                                permission, the workflow cannot mint or burn
 *                                tokens.
 *                     - How:     The owner of the contract must call the
 *                                setMinter function to authorize the Funding
 *                                Manager of the workflow
 *                     - Example: token.setMinter(fundingManagerAddress, true);
 *
 *                  2. Set Blacklist Manager:
 *                     - Purpose: The contract needs a blacklist manager to handle
 *                                blacklisting operations. This role can add or
 *                                remove addresses from the blacklist.
 *                     - How:     The owner of the contract must call the
 *                                setBlacklistManager function to authorize a
 *                                trusted address
 *                     - Example: token.setBlacklistManager(trustedAddress, true);
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
contract ERC20IssuanceUpgradeable_Blacklist_v1 is
    IERC20Issuance_Blacklist_v1,
    ERC20IssuanceUpgradeable_v1
{
    // -------------------------------------------------------------------------
    // Constants

    /// @notice	Maximum number of addresses that can be blacklisted in a batch.
    uint public constant BATCH_LIMIT = 200;

    // -------------------------------------------------------------------------
    // Storage

    /// @notice	Mapping of blacklisted addresses.
    mapping(address account => bool isBlacklisted) private _blacklist;

    /// @notice	Mapping of blacklist manager addresses.
    mapping(address account => bool isManager) private _blacklistManager;

    /// @notice    Storage gap for future upgrades.
    uint[50] private __gap;

    // -------------------------------------------------------------------------
    // Modifiers

    /// @notice Modifier to check if the caller is a blacklist manager.
    modifier onlyBlacklistManager() {
        if (!_isBlacklistManager(_msgSender())) {
            revert ERC20Issuance_Blacklist_NotBlacklistManager();
        }
        _;
    }

    // -------------------------------------------------------------------------
    // Initializer

    /// @notice Initializes the ERC20IssuanceUpgradeable_Blacklist_v1 contract.
    /// @param name_ The name of the token.
    /// @param symbol_ The symbol of the token.
    /// @param decimals_ The number of decimals of the token.
    /// @param maxSupply_ The maximum supply of the token.
    function __ERC20IssuanceBlacklist_init(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint maxSupply_
    ) public initializer {
        __ERC20Issuance_init(name_, symbol_, decimals_, maxSupply_);
    }

    // -------------------------------------------------------------------------
    // View Functions

    /// @inheritdoc	IERC20Issuance_Blacklist_v1
    function isBlacklisted(address account_)
        public
        view
        virtual
        returns (bool)
    {
        return _blacklist[account_];
    }

    /// @inheritdoc	IERC20Issuance_Blacklist_v1
    function isBlacklistManager(address account_)
        external
        view
        virtual
        returns (bool)
    {
        return _isBlacklistManager(account_);
    }

    // -------------------------------------------------------------------------
    // External Functions

    /// @inheritdoc IERC20Issuance_Blacklist_v1
    function addToBlacklist(address account_)
        public
        virtual
        onlyBlacklistManager
    {
        _addToBlacklist(account_);
    }

    /// @inheritdoc IERC20Issuance_Blacklist_v1
    function removeFromBlacklist(address account_)
        public
        virtual
        onlyBlacklistManager
    {
        _removeFromBlacklist(account_);
    }

    /// @inheritdoc IERC20Issuance_Blacklist_v1
    function addToBlacklistBatched(address[] memory accounts_)
        external
        virtual
        onlyBlacklistManager
    {
        uint totalAccounts = accounts_.length;
        if (totalAccounts > BATCH_LIMIT) {
            revert ERC20Issuance_Blacklist_BatchLimitExceeded(
                totalAccounts, BATCH_LIMIT
            );
        }
        for (uint i; i < totalAccounts; ++i) {
            _addToBlacklist(accounts_[i]);
        }
    }

    /// @inheritdoc IERC20Issuance_Blacklist_v1
    function removeFromBlacklistBatched(address[] memory accounts_)
        external
        virtual
        onlyBlacklistManager
    {
        uint totalAccounts = accounts_.length;
        if (totalAccounts > BATCH_LIMIT) {
            revert ERC20Issuance_Blacklist_BatchLimitExceeded(
                totalAccounts, BATCH_LIMIT
            );
        }
        for (uint i; i < totalAccounts; ++i) {
            _removeFromBlacklist(accounts_[i]);
        }
    }

    /// @inheritdoc IERC20Issuance_Blacklist_v1
    function setBlacklistManager(address manager_, bool allowed_)
        external
        virtual
        onlyOwner
    {
        _setBlacklistManager(manager_, allowed_);
    }

    // -------------------------------------------------------------------------
    // Internal Functions

    /// @notice Internal hook to enforce blacklist restrictions on token
    ///         transfers.
    /// @dev    Overrides ERC20CappedUpgradeable._update to add blacklist checks.
    /// @param  from_ Address tokens are transferred from.
    /// @param  to_ Address tokens are transferred to.
    /// @param  amount_ Number of tokens to transfer.
    /// @inheritdoc ERC20CappedUpgradeable
    function _update(address from_, address to_, uint amount_)
        internal
        virtual
        override(ERC20CappedUpgradeable)
    {
        if (isBlacklisted(from_)) {
            revert ERC20Issuance_Blacklist_BlacklistedAddress(from_);
        }
        if (isBlacklisted(to_)) {
            revert ERC20Issuance_Blacklist_BlacklistedAddress(to_);
        }
        super._update(from_, to_, amount_);
    }

    /// @notice Internal function to set a blacklist manager.
    /// @param  manager_ Address to set as blacklist manager.
    /// @param  allowed_ Whether to grant or revoke the blacklist manager role.
    function _setBlacklistManager(address manager_, bool allowed_)
        internal
        virtual
    {
        if (manager_ == address(0)) {
            revert ERC20Issuance_Blacklist_ZeroAddress();
        }
        _blacklistManager[manager_] = allowed_;
        emit BlacklistManagerUpdated(manager_, allowed_, _msgSender());
    }

    /// @notice Internal function to check if an address is a blacklist manager.
    /// @param  manager_ Address to check.
    /// @return bool True if the address is a blacklist manager, false otherwise.
    function _isBlacklistManager(address manager_)
        internal
        view
        virtual
        returns (bool)
    {
        return _blacklistManager[manager_];
    }

    /// @notice Internal function to add an address to the blacklist.
    /// @dev    This function only updates the blacklist state if the address is
    ///         not already blacklisted to prevent unnecessary state changes.
    /// @param  account_ Address to add to the blacklist.
    function _addToBlacklist(address account_) internal virtual {
        if (account_ == address(0)) {
            revert ERC20Issuance_Blacklist_ZeroAddress();
        }
        if (!isBlacklisted(account_)) {
            _blacklist[account_] = true;
            emit AddedToBlacklist(account_, _msgSender());
        }
    }

    /// @notice Internal function to remove an address from the blacklist.
    /// @dev    This function only updates the blacklist state if the address is
    ///         currently blacklisted to prevent unnecessary state changes.
    /// @param  account_ Address to remove from the blacklist.
    function _removeFromBlacklist(address account_) internal virtual {
        if (isBlacklisted(account_)) {
            _blacklist[account_] = false;
            emit RemovedFromBlacklist(account_, _msgSender());
        }
    }
}

// ============================================================
// FILE: src/external/token/ERC20IssuanceUpgradeable_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

// External Interfaces
import {IERC20Issuance_v1} from "@ex/token/interfaces/IERC20Issuance_v1.sol";

// External Dependencies
import {
    ERC20Upgradeable,
    ERC20CappedUpgradeable
} from "@oz-up/token/ERC20/extensions/ERC20CappedUpgradeable.sol";
import {OwnableUpgradeable} from "@oz-up/access/OwnableUpgradeable.sol";

/**
 * @title   Inverter ERC20 Issuance Token (Upgradeable)
 *
 * @notice  An upgradeable ERC20 token implementation with a maximum supply cap
 *          and controlled minting/burning through a whitelist permission system.
 *
 * @dev     This contract implements the following key functionalities:
 *          - Role-based access control through a minter whitelist
 *          - Controlled token issuance (minting) by authorized addresses only
 *          - Controlled token redemption (burning) by authorized addresses only
 *          - Hard cap on total token supply to prevent inflation
 *          - Support for contract upgrades through OpenZeppelin's
 *            upgradeable pattern
 *
 * @custom:setup    This contract requires the following MANDATORY setup steps:
 *
 *                  Set Minter:
 *                     - Purpose: The contract needs a minter to handle token
 *                                minting and burning operations. Without this
 *                                permission, the workflow cannot mint or burn
 *                                tokens.
 *                     - How:     The owner of the contract must call the
 *                                setMinter function to authorize the Funding
 *                                Manager of the workflow
 *                     - Example: token.setMinter(fundingManagerAddress, true);
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
 * @author Inverter Network
 */
contract ERC20IssuanceUpgradeable_v1 is
    IERC20Issuance_v1,
    ERC20CappedUpgradeable,
    OwnableUpgradeable
{
    // State Variables
    // --------------------------------------------------------------------------

    /// @notice    The mapping of allowed minters.
    mapping(address => bool) public allowedMinters;
    /// @notice    The number of decimals of the token.
    uint8 internal _decimals;

    /// @notice    Storage gap for future upgrades.
    uint[50] private __gap;

    // --------------------------------------------------------------------------
    // Modifiers

    /// @dev    Modifier to guarantee the caller is a minter.
    modifier onlyMinter() {
        if (!allowedMinters[_msgSender()]) {
            revert IERC20Issuance__CallerIsNotMinter();
        }
        _;
    }

    // --------------------------------------------------------------------------
    // Initializer

    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the ERC20IssuanceUpgradeable_v1 contract.
    /// @param  name_ The name of the token.
    /// @param  symbol_ The symbol of the token.
    /// @param  decimals_ The number of decimals of the token.
    /// @param  maxSupply_ The maximum supply of the token.
    function __ERC20Issuance_init(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint maxSupply_
    ) public initializer {
        __ERC20_init(name_, symbol_);
        __ERC20Capped_init(maxSupply_);
        __Ownable_init(_msgSender());

        _decimals = decimals_;
    }

    // --------------------------------------------------------------------------
    // External Functions

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    /// @inheritdoc IERC20Issuance_v1
    function setMinter(address _minter, bool _allowed) external onlyOwner {
        _setMinter(_minter, _allowed);
    }

    /// @inheritdoc IERC20Issuance_v1
    function mint(address _to, uint _amount) external onlyMinter {
        _mint(_to, _amount);
    }

    /// @inheritdoc IERC20Issuance_v1
    function burn(address _from, uint _amount) external onlyMinter {
        _burn(_from, _amount);
    }

    /// @inheritdoc IERC20Issuance_v1
    function spendAllowance(address _from, address _spender, uint _amount)
        external
        onlyMinter
    {
        _spendAllowance(_from, _spender, _amount);
    }

    // --------------------------------------------------------------------------
    // Internal Functions

    /// @notice Sets the minting rights of an address.
    /// @param  _minter The address of the minter.
    /// @param  _allowed If the address is allowed to mint or not.
    function _setMinter(address _minter, bool _allowed) internal {
        allowedMinters[_minter] = _allowed;
        emit MinterSet(_minter, _allowed);
    }
}

// ============================================================
// FILE: src/external/token/interfaces/IERC20Issuance_Blacklist_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// Internal
import {IERC20Issuance_v1} from "@ex/token/interfaces/IERC20Issuance_v1.sol";

/**
 * @title   ERC20 Issuance Token with Blacklist Functionality
 *
 * @notice  An ERC20 token implementation that extends ERC20Issuance_v1 with
 *          blacklisting capabilities. This allows accounts with the blacklist
 *          manager role to restrict specific addresses from participating in
 *          token operations.
 *
 * @dev     This contract inherits from:
 *              - IERC20Issuance_Blacklist_v1.
 *              - ERC20Issuance_v1.
 *          Key features:
 *              - Individual address blacklisting.
 *              - Batch blacklisting operations.
 *              - Owner-controlled manager role assignment.
 *              - Blacklist manager controlled blacklist management.
 *              Blacklist operations are performed by accounts with the
 *              blacklist manager role, while the contract owner controls who
 *              can be a blacklist manager.
 *          All blacklist operations can only be performed by accounts with the
 *          blacklist manager role.
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
interface IERC20Issuance_Blacklist_v1 is IERC20Issuance_v1 {
    // -------------------------------------------------------------------------
    // Events

    /// @notice Emitted when an address is added to the blacklist.
    /// @param  account_ The address that was blacklisted.
    /// @param  blacklistManager_ The address that added the address to the blacklist.
    event AddedToBlacklist(
        address indexed account_, address indexed blacklistManager_
    );

    /// @notice Emitted when an address is removed from the blacklist.
    /// @param  account_ The address that was removed from blacklist.
    /// @param  blacklistManager_ The address that removed the address from the blacklist.
    event RemovedFromBlacklist(
        address indexed account_, address indexed blacklistManager_
    );

    /// @notice Emitted when a blacklist manager role is granted or revoked.
    /// @param  account_ The address that was granted or revoked the role.
    /// @param  allowed_ Whether the role was granted (true) or revoked (false).
    /// @param  tokenOwner_ The address that owns the token.
    event BlacklistManagerUpdated(
        address indexed account_, bool allowed_, address indexed tokenOwner_
    );

    // -------------------------------------------------------------------------
    // Errors

    /// @notice Thrown when attempting to blacklist the zero address.
    error ERC20Issuance_Blacklist_ZeroAddress();

    /// @notice Thrown when caller does not have blacklist manager role.
    error ERC20Issuance_Blacklist_NotBlacklistManager();

    /// @notice Thrown when attempting to mint tokens to a blacklisted address.
    error ERC20Issuance_Blacklist_BlacklistedAddress(address account_);

    /// @notice Thrown when batch operation exceeds the maximum allowed size.
    error ERC20Issuance_Blacklist_BatchLimitExceeded(
        uint provided_, uint limit_
    );

    // -------------------------------------------------------------------------
    // External Functions

    /// @notice Checks if an address is blacklisted.
    /// @param  account_ The address to check.
    /// @return isBlacklisted_ True if address is blacklisted.
    function isBlacklisted(address account_)
        external
        view
        returns (bool isBlacklisted_);

    /// @notice Checks if an address is a blacklist manager.
    /// @param  account_ The address to check.
    /// @return isBlacklistManager_ True if address is a blacklist manager.
    function isBlacklistManager(address account_)
        external
        view
        returns (bool isBlacklistManager_);

    /// @notice Adds an address to blacklist.
    /// @param  account_ The address to the blacklist.
    /// @dev    May revert with ERC20Issuance_Blacklist_ZeroAddress.
    function addToBlacklist(address account_) external;

    /// @notice Removes an address from the blacklist.
    /// @param  account_ The address to remove.
    /// @dev    May revert with ERC20Issuance_Blacklist_ZeroAddress.
    function removeFromBlacklist(address account_) external;

    /// @notice Adds multiple addresses to the blacklist.
    /// @param  accounts_ Array of addresses to the blacklist.
    /// @dev    May revert with ERC20Issuance_Blacklist_ZeroAddress
    ///         The array size should not exceed the block gas limit. Consider
    ///         using smaller batches (e.g., 100-200 addresses) to ensure
    ///         transaction success.
    function addToBlacklistBatched(address[] calldata accounts_) external;

    /// @notice Removes multiple addresses from the blacklist.
    /// @param  accounts_ Array of addresses to remove.
    /// @dev    May revert with ERC20Issuance_Blacklist_ZeroAddress
    ///         The array size should not exceed the block gas limit. Consider
    ///         using smaller batches (e.g., 100-200 addresses) to ensure
    ///         transaction success.
    function removeFromBlacklistBatched(address[] calldata accounts_)
        external;

    /// @notice Sets or revokes blacklist manager role for an address.
    /// @param  manager_ The address to grant or revoke the role from.
    /// @param  allowed_ Whether to grant (true) or revoke (false) the role.
    /// @dev    May revert with ERC20Issuance_Blacklist_ZeroAddress.
    function setBlacklistManager(address manager_, bool allowed_) external;
}

// ============================================================
// FILE: src/external/token/interfaces/IERC20Issuance_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// External Interfaces
import {IERC20} from "@oz/token/ERC20/IERC20.sol";

interface IERC20Issuance_v1 is IERC20 {
    //--------------------------------------------------------------------------
    // Events

    /// @notice Emitted when the minter is set.
    event MinterSet(address indexed minter, bool allowed);

    //--------------------------------------------------------------------------
    // Errors
    error IERC20Issuance__CallerIsNotMinter();

    //--------------------------------------------------------------------------
    // Functions

    // Write

    /// @notice Sets the minting rights of an address.
    /// @param  _minter The address of the minter.
    /// @param  _allowed If the address is allowed to mint or not.
    function setMinter(address _minter, bool _allowed) external;

    /// @notice Mints new tokens.
    /// @param  _to The address of the recipient.
    /// @param  _amount The amount of tokens to mint.
    function mint(address _to, uint _amount) external;

    /// @notice Burns tokens.
    /// @param  _from The address of the owner or approved address.
    /// @param  _amount The amount of tokens to burn.
    function burn(address _from, uint _amount) external;

    /// @notice Spend allowance.
    /// @param  _from The address of the owner.
    /// @param  _spender The address of the spender.
    /// @param  _amount The amount of tokens to spend.
    function spendAllowance(address _from, address _spender, uint _amount)
        external;

    // Read

    /// @notice Mapping of allowed minters.
    /// @param  _minter The address of the minter.
    /// @return If the address is allowed to mint or not.
    function allowedMinters(address _minter) external view returns (bool);
}
