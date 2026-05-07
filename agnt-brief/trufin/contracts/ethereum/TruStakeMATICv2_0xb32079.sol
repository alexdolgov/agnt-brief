// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20Upgradeable.sol";
import "./extensions/IERC20MetadataUpgradeable.sol";
import "../../utils/ContextUpgradeable.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
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
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
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
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
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
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

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
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
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
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

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
    function _approve(address owner, address spender, uint256 amount) internal virtual {
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
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
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
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

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
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[45] private __gap;
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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

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
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

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
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";
import "../extensions/IERC20PermitUpgradeable.sol";
import "../../../utils/AddressUpgradeable.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using AddressUpgradeable for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20Upgradeable token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20Upgradeable token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20Upgradeable token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20Upgradeable token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20PermitUpgradeable token,
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
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20Upgradeable token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && AddressUpgradeable.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol
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
// FILE: @openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol
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
// FILE: contracts/interfaces/IDelegateRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/// @title Delegate Registry Interface
/// @notice Interface for a contract that manages POL voting delegations.
interface IDelegateRegistry {
    struct Delegation {
        bytes32 delegate;
        uint256 ratio;
    }

    // --- Functions ---

    /// @notice Sets a delegate for the msg.sender and a specific context.
    /// @param context ID of the context in which delegation should be set.
    /// @param delegation Array of delegations. Must be sorted in numerical order, from smallest to largest.
    /// @param expirationTimestamp Unix timestamp at which this delegation should expire.
    /// @notice setDelegation() will overwrite the user's previous delegation for the given context.
    function setDelegation(string memory context, Delegation[] memory delegation, uint256 expirationTimestamp) external;

    /// @notice Clears msg.sender's delegation in a given context.
    /// @param context ID of the context in which delegation should be cleared.
    function clearDelegation(string memory context) external;
}

// ============================================================
// FILE: contracts/interfaces/IMasterWhitelist.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity =0.8.19;

/// @title Master Whitelist Interface
/// @notice Interface for a contract that manages a whitelist of users.
interface IMasterWhitelist {
    // The whitelisting status.
    enum WhitelistingStatus {
        None,
        Whitelisted,
        Blacklisted
    }

    // --- Events ---

    /// @notice Emits an event when an agent is added.
    /// @param _agent The address of the agent.
    event AgentAdded(address indexed _agent);

    /// @notice Emits an event when an agent is removed.
    /// @param _agent The address of the agent.
    event AgentRemoved(address indexed _agent);

    /// @notice Emitted when a user's whitelist status has changed.
    /// @param _user The address of the user.
    /// @param _oldStatus The status before the change.
    /// @param _newStatus The status after the change.
    event WhitelistingStatusChanged(
        address indexed _user,
        WhitelistingStatus indexed _oldStatus,
        WhitelistingStatus indexed _newStatus
    );

    // --- Errors ---

    /// @notice Error thrown when trying to perform an action reserved for agents.
    error CallerIsNotAnAgent();

    /// @notice Error thrown when trying to whitelist a user that's already whitelisted.
    error UserAlreadyWhitelisted();

    /// @notice Error thrown when trying to blacklist a user that's already blacklisted.
    error UserAlreadyBlacklisted();

    /// @notice Error thrown when trying to clear a user status.
    error WhitelistingStatusAlreadyCleared();

    // --- Functions ---

    /// @notice Checks if a user is in the whitelist.
    /// @param _user The address to check.
    /// @return A value indicating whether this user is whitelisted.
    function isUserWhitelisted(address _user) external view returns (bool);

    /// @notice Checks if a user is in the blacklist.
    /// @param _user The address to check.
    /// @return A value indicating whether this user is blacklisted.
    function isUserBlacklisted(address _user) external view returns (bool);

    /// @notice Checks if this address is an agent.
    /// @param _agent The address to check.
    /// @return A value indicating whether this address is that of an agent.
    function isAgent(address _agent) external view returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/IStakeManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

interface IStakeManager {
    // validator replacement
    function startAuction(
        uint256 validatorId,
        uint256 amount,
        bool acceptDelegation,
        bytes calldata signerPubkey
    ) external;

    function confirmAuctionBid(uint256 validatorId, uint256 heimdallFee) external;

    function transferFunds(uint256 validatorId, uint256 amount, address delegator) external returns (bool);

    function delegationDeposit(uint256 validatorId, uint256 amount, address delegator) external returns (bool);

    function unstake(uint256 validatorId) external;

    function stakeFor(
        address user,
        uint256 amount,
        uint256 heimdallFee,
        bool acceptDelegation,
        bytes memory signerPubkey
    ) external;

    function checkSignatures(
        uint256 blockInterval,
        bytes32 voteHash,
        bytes32 stateRoot,
        address proposer,
        uint[3][] calldata sigs
    ) external returns (uint256);

    function updateValidatorState(uint256 validatorId, int256 amount) external;

    function slash(bytes calldata slashingInfoList) external returns (uint256);

    function decreaseValidatorDelegatedAmount(uint256 validatorId, uint256 amount) external;

    function withdrawDelegatorsReward(uint256 validatorId) external returns (uint256);

    function dethroneAndStake(
        address auctionUser,
        uint256 heimdallFee,
        uint256 validatorId,
        uint256 auctionAmount,
        bool acceptDelegation,
        bytes calldata signerPubkey
    ) external;

    function totalStakedFor(address addr) external view returns (uint256);

    function ownerOf(uint256 tokenId) external view returns (address);

    function validatorStake(uint256 validatorId) external view returns (uint256);

    function epoch() external view returns (uint256);

    function getRegistry() external view returns (address);

    function withdrawalDelay() external view returns (uint256);

    function delegatedAmount(uint256 validatorId) external view returns (uint256);

    function delegatorsReward(uint256 validatorId) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/ITruStakeMATICv2.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

import {ValidatorState} from "../main/Types.sol";
import {IDelegateRegistry} from "../interfaces/IDelegateRegistry.sol";

interface ITruStakeMATICv2 {
    // --- Events ---

    /// @notice Emitted on initialize.
    /// @dev Params same as initialize function.
    event StakerInitialized(
        address _stakingTokenAddress,
        address _stakeManagerContractAddress,
        address _validator,
        address _whitelistAddress,
        address _treasuryAddress,
        uint256 _phi,
        uint256 _distPhi
    );

    // User Tracking

    /// @notice Emitted on user deposit.
    /// @param _user User which made the deposit tx.
    /// @param _treasuryShares Newly minted shares added to the treasury user's balance.
    /// @param _userShares Newly minted shares added to the depositing user's balance.
    /// @param _amount Amount of MATIC transferred by user into the staker.
    /// @param _stakedAmount Deposit _amount + any auto-claimed MATIC rewards sitting in the
    /// staker from previous deposits or withdrawal requests made by any user.
    /// @param _totalAssets Auto-claimed MATIC rewards that will sit in the staker
    /// until the next deposit made by any user.
    /// @param _validator Address of the validator the user has deposited to.
    event Deposited(
        address indexed _user,
        uint256 _treasuryShares,
        uint256 _userShares,
        uint256 _amount,
        uint256 _stakedAmount,
        uint256 _totalAssets,
        address indexed _validator
    );

    /// @notice Emitted on user requesting a withdrawal.
    /// @param _user User which made the withdraw request tx.
    /// @param _treasuryShares Newly minted shares added to the treasury user's balance
    /// (fees taken: shares are newly minted as a result of the auto-claimed MATIC rewards).
    /// @param _userShares Burnt shares removed from the depositing user's balance.
    /// @param _amount Amount of MATIC unbonding, which will be claimable by user in
    /// 80 checkpoints.
    /// @param _totalAssets Auto-claimed MATIC rewards that will sit in the staker
    /// until the next deposit made by any user.
    /// @param _validator Address of the validator the withdrawal was requested from.
    /// @param _unbondNonce Nonce of this unbond, which will be passed into the function
    /// withdrawClaim(uint256 _unbondNonce)` in 80 checkpoints in order to claim this
    /// the amount from this request.
    /// @param _epoch The current checkpoint the stake manager is at, used to track how
    /// how far from claiming the request is.
    event WithdrawalRequested(
        address indexed _user,
        uint256 _treasuryShares,
        uint256 _userShares,
        uint256 _amount,
        uint256 _totalAssets,
        address indexed _validator,
        uint256 _unbondNonce,
        uint256 indexed _epoch
    );

    /// @notice Emitted on user claiming a withdrawal.
    /// @param _user User which made the withdraw claim tx.
    /// @param _validator Address of the validator the withdrawal was claimed from.
    /// @param _unbondNonce Nonce of the original withdrawal request, which was passed
    /// into the `withdrawClaim` function.
    /// @param _claimedAmount Amount of MATIC claimed by the user.
    /// @param _transferredAmount Amount of MATIC transferred to the user (originally from stake manager).
    event WithdrawalClaimed(
        address indexed _user,
        address indexed _validator,
        uint256 indexed _unbondNonce,
        uint256 _claimedAmount,
        uint256 _transferredAmount
    );

    // global tracking

    /// @notice Emitted on rewards compound call.
    /// @param _amount Amount of MATIC moved from rewards on the validator to staked funds.
    /// @param _shares Newly minted shares added to the treasury user's balance (fees taken).
    event RewardsCompounded(uint256 indexed _amount, uint256 indexed _shares);

    // allocations

    /// @notice Emitted on allocation.
    /// @param _distributor Address of user who has allocated to someone else.
    /// @param _recipient Address of user to whom something was allocated.
    /// @param _individualAmount Total amount allocated to recipient by this distributor.
    /// @param _individualNum Average share price numerator at which allocations occurred.
    /// @param _individualDenom Average share price denominator at which allocations occurred.
    event Allocated(
        address indexed _distributor,
        address indexed _recipient,
        uint256 _individualAmount,
        uint256 _individualNum,
        uint256 _individualDenom
    );

    /// @notice Emitted on deallocations.
    /// @param _distributor Address of user who has allocated to someone else.
    /// @param _recipient Address of user to whom something was allocated.
    /// @param _individualAmount Remaining amount allocated to recipient.
    event Deallocated(address indexed _distributor, address indexed _recipient, uint256 _individualAmount);

    /// @notice Emitted when rewards are distributed.
    /// @param _distributor Address of user who has allocated to someone else.
    /// @param _recipient Address of user to whom something was allocated.
    /// @param _amount Amount of MATIC being distributed.
    /// @param _shares Amount of shares being distributed.
    /// @param _individualNum Average share price numerator at which distributor allocated.
    /// @param _individualDenom Average share price numerator at which distributor allocated.
    event DistributedRewards(
        address indexed _distributor,
        address indexed _recipient,
        uint256 _amount,
        uint256 _shares,
        uint256 _individualNum,
        uint256 _individualDenom
    );

    /// @notice Emitted when rewards are distributed.
    /// @param _distributor Address of user who has allocated to someone else.
    event DistributedAll(address indexed _distributor);

    // Setter Tracking

    event SetWhitelist(address indexed _oldWhitelistAddress, address indexed _newWhitelistAddress);

    event SetTreasury(address indexed _oldTreasuryAddress, address indexed _newTreasuryAddress);

    event SetDelegateRegistry(address indexed _oldDelegateRegistry, address indexed _newDelegateRegistry);

    event SetDefaultValidator(address indexed _oldDefaultValidator, address indexed _newDefaultValidator);

    event SetPhi(uint256 indexed _oldPhi, uint256 indexed _newPhi);

    event SetDistPhi(uint256 indexed _oldDistPhi, uint256 indexed _newDistPhi);

    event SetEpsilon(uint256 indexed _oldEpsilon, uint256 indexed _newEpsilon);

    event SetMinDeposit(uint256 indexed _oldMinDeposit, uint256 indexed _newMinDeposit);

    event ValidatorAdded(address indexed _validator, uint256 _stakedAmount, bool _isPrivate);

    event ValidatorStateChanged(
        address indexed _validator,
        ValidatorState indexed _oldState,
        ValidatorState indexed _newState
    );

    event RestakeError(address indexed _validator, string _reason);

    event PrivateAccessGiven(address indexed _user, address indexed _validator);

    event PrivateAccessRemoved(address indexed _user, address indexed _validator);

    event ValidatorPrivacyChanged(address indexed _validator, bool _oldIsPrivate, bool _newIsPrivate);

    event GovernanceDelegationSet(
        string context,
        IDelegateRegistry.Delegation[] delegation,
        uint256 expirationTimestamp
    );

    event GovernanceDelegationCleared(string context);

    // --- Errors ---

    /// @notice Error thrown when user tries to transfer or approve to zero address.
    error ZeroAddressNotSupported();

    /// @notice Error thrown when a user tries to interact with a whitelisted-only function.
    error UserNotWhitelisted();

    /// @notice Error thrown when a user tries to deposit less than the minimum deposit amount.
    error DepositBelowMinDeposit();

    /// @notice Error thrown when a user tries to request a withdrawal with an amount larger
    /// than their shares entitle them to.
    error WithdrawalAmountTooLarge();

    /// @notice Error thrown when a user tries to request a withdrawal of amount zero.
    error WithdrawalRequestAmountCannotEqualZero();

    /// @notice Error thrown when a user tries to claim a withdrawal they did not request.
    error SenderMustHaveInitiatedWithdrawalRequest();

    /// @notice Error thrown when a user tries to claim a withdrawal that does not exist.
    error WithdrawClaimNonExistent();

    /// @notice Error thrown when user allocates more MATIC than available.
    error InsufficientDistributorBalance();

    /// @notice Error thrown when a user attempts to allocate less than one MATIC.
    error AllocationUnderOneMATIC();

    /// @notice Error thrown when deallocation is greater than allocated amount.
    error ExcessDeallocation();

    /// @notice Error thrown when a user tries to deallocate from a user they do
    /// not currently have anything allocated to.
    error AllocationNonExistent();

    /// @notice Error thrown when user calls distributeRewards when the allocation
    /// share price is the same as the current share price.
    error NothingToDistribute();

    /// @notice Error thrown when no recipients are found to distribute to.
    error NoRecipientsFound();

    /// @notice Error thrown when the distribution fee is higher than the fee precision.
    error DistPhiTooLarge();

    /// @notice Error thrown when epsilon is set too high.
    error EpsilonTooLarge();

    /// @notice Error thrown when the new minimum deposit amount is too small.
    error MinDepositTooSmall();

    /// @notice Error thrown when the phi value is larger than the phi precision constant.
    error PhiTooLarge();

    /// @notice Error thrown when trying to add an existing validator.
    error ValidatorAlreadyExists();

    /// @notice Error thrown when trying to disable a validator that is not enabled.
    error ValidatorNotEnabled();

    /// @notice Error thrown when trying to enable a validator that is not disabled.
    error ValidatorNotDisabled();

    /// @notice Error thrown when trying to perform actions on a non-existent validator.
    error ValidatorDoesNotExist();

    /// @notice Error thrown when trying to privatise a validator that has assets remaining.
    error ValidatorHasAssets();

    /// @notice Error thrown when trying to give private validator access to a user who already got it.
    error PrivateAccessAlreadyGiven();

    /// @notice Error thrown when trying to remove private validator access to a user who hasn't got it.
    error PrivateAccessNotGiven();

    /// @notice Error thrown when trying to give a user private access to a validator that is non-private.
    error ValidatorNotPrivate();

    /// @notice Error thrown when a user is trying to access a validator they should not access.
    error ValidatorAccessDenied();

    /// @notice Error thrown when trying to set private status on an private validator.
    error ValidatorAlreadyPrivate();

    /// @notice Error thrown when trying to remove private status on a non-private validator.
    error ValidatorAlreadyNonPrivate();
}

// ============================================================
// FILE: contracts/interfaces/IValidatorShare.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

interface IValidatorShare {
    function buyVoucher(uint256 _amount, uint256 _minSharesToMint) external returns (uint256 amountToDeposit);

    // solhint-disable-next-line func-name-mixedcase
    function sellVoucher_new(uint256 claimAmount, uint256 maximumSharesToBurn) external;

    // solhint-disable-next-line func-name-mixedcase
    function unstakeClaimTokens_new(uint256 unbondNonce) external;

    function restake() external returns (uint256 amountRestaked, uint256 liquidReward);

    function approve(address spender, uint256 amount) external;

    function transfer(address to, uint256 value) external;

    function transferFrom(address sender, address recipient, uint256 amount) external;

    function getLiquidRewards(address user) external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function exchangeRate() external view returns (uint256);

    function getTotalStake(address user) external view returns (uint256, uint256);

    // automatically generated getter of a public mapping
    // solhint-disable-next-line func-name-mixedcase
    function unbonds_new(address user, uint256 unbondNonce) external view returns (uint256, uint256);

    // automatically generated getter of a public mapping
    function unbondNonces(address user) external view returns (uint256);
}

// ============================================================
// FILE: contracts/main/ERC4626Storage.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

/// @title ERC4626Storage
/// @notice This contract includes storage variables from OpenZeppelin's ERC4626Upgradeable.
/// @dev Needed for compatibility with prior versions of the staker contract that inherited from ERC4626Upgradeable.
abstract contract ERC4626Storage is ERC20Upgradeable {
    address private _asset;
    uint8 private _underlyingDecimals;
    uint256[49] private __gap;
}

// ============================================================
// FILE: contracts/main/TruStakeMATICv2.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

// OpenZeppelin
import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import {MathUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {SafeERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

// Polygon
import {IValidatorShare} from "../interfaces/IValidatorShare.sol";
import {IStakeManager} from "../interfaces/IStakeManager.sol";
import {IDelegateRegistry} from "../interfaces/IDelegateRegistry.sol";

// TruFin
import {ERC4626Storage} from "./ERC4626Storage.sol";
import {ITruStakeMATICv2} from "../interfaces/ITruStakeMATICv2.sol";
import {TruStakeMATICv2Storage} from "./TruStakeMATICv2Storage.sol";
import {Withdrawal, Allocation, ValidatorState, Validator} from "./Types.sol";
import {IMasterWhitelist} from "../interfaces/IMasterWhitelist.sol";

uint256 constant PHI_PRECISION = 1e4;
uint256 constant MAX_EPSILON = 1e12;
uint256 constant ONE_MATIC = 1e18;
uint256 constant SHARE_PRICE_PRECISION = 1e22;

/// @title TruStakeMATICv2
/// @notice An auto-compounding liquid staking MATIC vault with reward-allocating functionality.
contract TruStakeMATICv2 is
    TruStakeMATICv2Storage,
    ITruStakeMATICv2,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    ERC4626Storage,
    PausableUpgradeable
{
    // *** LIBRARIES ***

    using SafeERC20Upgradeable for IERC20Upgradeable;

    // *** MODIFIERS ***
    // Reverts call if caller is not whitelisted
    modifier onlyWhitelist() {
        if (!IMasterWhitelist(whitelistAddress).isUserWhitelisted(msg.sender)) {
            revert UserNotWhitelisted();
        }
        _;
    }

    // *** CONSTRUCTOR & INITIALIZER ***
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Vault state initializer.
    /// @param _stakingTokenAddress MATIC token address.
    /// @param _stakeManagerContractAddress Polygon's StakeManager contract address.
    /// @param _validator Share contract address of the validator the vault delegates to.
    /// @param _whitelistAddress The vault's whitelist contract address.
    /// @param _treasuryAddress Treasury address that receives vault fees.
    /// @param _phi Fee taken on restake in basis points.
    /// @param _distPhi Fee taken during the distribution of rewards earned from allocations.
    function initialize(
        address _stakingTokenAddress,
        address _stakeManagerContractAddress,
        address _validator,
        address _whitelistAddress,
        address _treasuryAddress,
        uint256 _phi,
        uint256 _distPhi
    ) external initializer {
        // Initialize derived state
        __ReentrancyGuard_init();
        __Ownable_init();
        __ERC20_init("TruStake MATIC Vault Shares", "TruMATIC");
        __Pausable_init();

        // Ensure addresses are non-zero
        _checkNotZeroAddress(_stakingTokenAddress);
        _checkNotZeroAddress(_stakeManagerContractAddress);
        _checkNotZeroAddress(_validator);
        _checkNotZeroAddress(_whitelistAddress);
        _checkNotZeroAddress(_treasuryAddress);

        if (_phi > PHI_PRECISION) revert PhiTooLarge();

        if (_distPhi > PHI_PRECISION) revert DistPhiTooLarge();

        // Initialize contract state
        stakingTokenAddress = _stakingTokenAddress;
        stakeManagerContractAddress = _stakeManagerContractAddress;
        defaultValidatorAddress = _validator;
        validatorAddresses.push(_validator);
        validators[_validator].state = ValidatorState.ENABLED;
        whitelistAddress = _whitelistAddress;
        treasuryAddress = _treasuryAddress;
        phi = _phi;
        distPhi = _distPhi;
        epsilon = 1e4;
        minDeposit = ONE_MATIC; // default minimum is 1 MATIC

        emit StakerInitialized(
            _stakingTokenAddress,
            _stakeManagerContractAddress,
            _validator,
            _whitelistAddress,
            _treasuryAddress,
            _phi,
            _distPhi
        );
    }

    /// *** EXTERNAL METHODS ***
    // *** VAULT OWNER ADMIN ACTIONS ***
    /// @notice Allows owner to pause the contract. Requires the contract to be unpaused.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Allows owner to unpause the contract. Requires the contract to be paused.
    function unpause() external onlyOwner {
        _unpause();
    }

    // *** VAULT OWNER ADMIN SETTERS ***
    /// @notice Sets the whitelist used to check user status.
    /// @param _whitelistAddress to point to.
    function setWhitelist(address _whitelistAddress) external onlyOwner {
        _checkNotZeroAddress(_whitelistAddress);
        emit SetWhitelist(whitelistAddress, _whitelistAddress);
        whitelistAddress = _whitelistAddress;
    }

    /// @notice Sets the treasury used to accumulate rewards.
    /// @param _treasuryAddress to receive rewards and fees.
    function setTreasury(address _treasuryAddress) external onlyOwner {
        _checkNotZeroAddress(_treasuryAddress);
        emit SetTreasury(treasuryAddress, _treasuryAddress);
        treasuryAddress = _treasuryAddress;
    }

    /// @notice Sets the default validator used for staking.
    /// @param _validator New default validator to stake to and withdraw from.
    function setDefaultValidator(address _validator) external onlyOwner {
        _checkNotZeroAddress(_validator);
        if (validators[_validator].state != ValidatorState.ENABLED) revert ValidatorNotEnabled();

        emit SetDefaultValidator(defaultValidatorAddress, _validator);
        defaultValidatorAddress = _validator;
    }

    /// @notice Sets the fee on certain actions within the protocol.
    /// @param _phi New fee cannot be larger than phi precision.
    function setPhi(uint256 _phi) external onlyOwner {
        if (_phi > PHI_PRECISION) revert PhiTooLarge();

        emit SetPhi(phi, _phi);
        phi = _phi;
    }

    /// @notice Sets the distribution fee.
    /// @param _distPhi New distribution fee.
    function setDistPhi(uint256 _distPhi) external onlyOwner {
        if (_distPhi > PHI_PRECISION) revert DistPhiTooLarge();

        emit SetDistPhi(distPhi, _distPhi);
        distPhi = _distPhi;
    }

    /// @notice Sets the epsilon for rounding.
    /// @param _epsilon Buffer amount for rounding.
    function setEpsilon(uint256 _epsilon) external onlyOwner {
        if (_epsilon > MAX_EPSILON) revert EpsilonTooLarge();

        emit SetEpsilon(epsilon, _epsilon);
        epsilon = _epsilon;
    }

    /// @notice Sets the lower deposit limit.
    /// @param _newMinDeposit New minimum amount of MATIC one has to deposit (default 1e18 = 1 MATIC).
    function setMinDeposit(uint256 _newMinDeposit) external onlyOwner {
        if (_newMinDeposit < ONE_MATIC) revert MinDepositTooSmall();

        emit SetMinDeposit(minDeposit, _newMinDeposit);
        minDeposit = _newMinDeposit;
    }

    /// @notice Adds a new validator to the list of validators supported by the Staker.
    /// @param _validator The share contract address of the validator to add.
    /// @param _isPrivate A boolean indicating whether access to the validator is limited to some users.
    /// @dev Newly added validators are considered enabled by default.
    /// @dev This function reverts when a validator with the same share contract address already exists.
    function addValidator(address _validator, bool _isPrivate) external onlyOwner {
        _checkNotZeroAddress(_validator);

        if (validators[_validator].state != ValidatorState.NONE) revert ValidatorAlreadyExists();

        validatorAddresses.push(_validator);

        (uint256 stakedAmount, ) = IValidatorShare(_validator).getTotalStake(address(this));
        validators[_validator].state = ValidatorState.ENABLED;
        validators[_validator].stakedAmount = stakedAmount;
        validators[_validator].isPrivate = _isPrivate;

        emit ValidatorAdded(_validator, stakedAmount, _isPrivate);
    }

    /// @notice Disable an enabled validator to prevent depositing and staking to it.
    /// @param _validator The share contract address of the validator to disable.
    function disableValidator(address _validator) external onlyOwner {
        _checkNotZeroAddress(_validator);

        if (validators[_validator].state != ValidatorState.ENABLED) revert ValidatorNotEnabled();

        validators[_validator].state = ValidatorState.DISABLED;

        emit ValidatorStateChanged(_validator, ValidatorState.ENABLED, ValidatorState.DISABLED);
    }

    /// @notice Enable a disabled validator to allow depositing and staking to it.
    /// @param _validator The share contract address of the validator to enable.
    function enableValidator(address _validator) external onlyOwner {
        _checkNotZeroAddress(_validator);

        if (validators[_validator].state != ValidatorState.DISABLED) revert ValidatorNotDisabled();

        validators[_validator].state = ValidatorState.ENABLED;

        emit ValidatorStateChanged(_validator, ValidatorState.DISABLED, ValidatorState.ENABLED);
    }

    /// @notice Gives a user private access to a validator.
    /// @param _user The user address.
    /// @param _validator The private validator address.
    function givePrivateAccess(address _user, address _validator) external onlyOwner {
        _checkNotZeroAddress(_user);
        Validator memory validator = validators[_validator];
        if (validator.state == ValidatorState.NONE) revert ValidatorDoesNotExist();
        if (!validator.isPrivate) revert ValidatorNotPrivate();
        if (usersPrivateAccess[_user] != address(0)) revert PrivateAccessAlreadyGiven();

        usersPrivateAccess[_user] = _validator;

        emit PrivateAccessGiven(_user, _validator);
    }

    /// @notice Removes private access to a private validator from a user.
    /// @param _user The user address.
    function removePrivateAccess(address _user) external onlyOwner {
        address oldValidator = usersPrivateAccess[_user];
        if (oldValidator == address(0)) revert PrivateAccessNotGiven();

        delete usersPrivateAccess[_user];

        emit PrivateAccessRemoved(_user, oldValidator);
    }

    /// @notice Changes the privacy status of a validator.
    /// @param _validator The validator address.
    /// @param _isPrivate Whether the validator should be private or not.
    function changeValidatorPrivacy(address _validator, bool _isPrivate) external onlyOwner {
        Validator storage validator = validators[_validator];
        if (validator.state == ValidatorState.NONE) revert ValidatorDoesNotExist();

        bool oldIsPrivate = validator.isPrivate;
        if (oldIsPrivate && _isPrivate) revert ValidatorAlreadyPrivate();
        if (!oldIsPrivate && !_isPrivate) revert ValidatorAlreadyNonPrivate();

        // check assets are zero before privatising. Otherwise, assets on validator would be limited to private users.
        if (!oldIsPrivate && validator.stakedAmount >= ONE_MATIC) revert ValidatorHasAssets();

        validator.isPrivate = _isPrivate;

        emit ValidatorPrivacyChanged(_validator, oldIsPrivate, _isPrivate);
    }

    function setDelegateRegistry(address _delegateRegistry) external onlyOwner {
        _checkNotZeroAddress(_delegateRegistry);
        emit SetDelegateRegistry(delegateRegistry, _delegateRegistry);
        delegateRegistry = _delegateRegistry;
    }

    function setGovernanceDelegation(string calldata context, IDelegateRegistry.Delegation[] calldata delegates, uint256 expirationTimestamp) external onlyOwner {
        if (delegates.length == 0) {
            IDelegateRegistry(delegateRegistry).clearDelegation(context);
            emit GovernanceDelegationCleared(context);
            return;
        }
        IDelegateRegistry(delegateRegistry).setDelegation(context, delegates, expirationTimestamp);
        emit GovernanceDelegationSet(context, delegates, expirationTimestamp);
    }

    /// @notice Claims a previously requested and now unbonded withdrawal.
    /// @param _unbondNonce Nonce of the corresponding delegator unbond.
    /// @param _validator Address of the validator to claim the withdrawal from.
    function withdrawClaim(uint256 _unbondNonce, address _validator) external onlyWhitelist nonReentrant whenNotPaused {
        _withdrawClaim(_unbondNonce, _validator);
    }

    /// @notice Claims multiple previously requested and now unbonded withdrawals from a specified validator.
    /// @param _unbondNonces List of delegator unbond nonces corresponding to said withdrawals.
    /// @param _validator Address of the validator to claim the withdrawals from.
    function claimList(
        uint256[] calldata _unbondNonces,
        address _validator
    ) external onlyWhitelist nonReentrant whenNotPaused {
        uint256 len = _unbondNonces.length;

        for (uint256 i; i < len; ) {
            _withdrawClaim(_unbondNonces[i], _validator);

            unchecked {
                ++i;
            }
        }
    }

    /// @notice Restakes the vault's current unclaimed delegation-earned rewards on the respective validators and
    /// stakes MATIC lingering in the vault to the validator provided.
    /// @dev Can be called manually to prevent the rewards surpassing reserves. This could lead to insufficient funds for
    /// withdrawals, as they are taken from delegated MATIC and not its rewards.
    /// @dev This method should prevent staking the vault's assets on a private validator where they can't be withdrawn by non-private users.
    /// @param _validator Address of the validator where MATIC in the vault should be staked to.
    function compoundRewards(address _validator) external nonReentrant whenNotPaused {
        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();
        uint256 amountRestaked = _restake();

        // To keep share price constant when rewards are staked, new shares need to be minted
        uint256 shareIncrease = (amountRestaked * phi * 1e18 * globalPriceDenom) / (globalPriceNum * PHI_PRECISION);

        // Minted shares are given to the treasury to effectively take a fee
        _mint(treasuryAddress, shareIncrease);

        // if there is MATIC in the vault, stake it with the provided validator
        if (totalAssets() > 0) {
            _deposit(address(0), 0, _validator);
        }

        emit RewardsCompounded(amountRestaked, shareIncrease);
    }

    // *** ALLOCATIONS ***

    /// @notice Allocates the validation rewards earned by an amount of the caller's staked MATIC to a user.
    /// @param _amount The amount of staked MATIC to allocate.
    /// @param _recipient The address of the target recipient.
    function allocate(uint256 _amount, address _recipient) external onlyWhitelist nonReentrant whenNotPaused {
        _checkNotZeroAddress(_recipient);

        // can only allocate up to allocator's balance
        if (_amount > maxWithdraw(msg.sender)) revert InsufficientDistributorBalance();

        if (_amount < ONE_MATIC) revert AllocationUnderOneMATIC();

        // variables up here for stack too deep issues
        uint256 individualAmount;
        uint256 individualPriceNum;
        uint256 individualPriceDenom;

        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();
        {
            Allocation storage oldIndividualAllocation = allocations[msg.sender][_recipient][false];
            uint256 oldIndividualAllocationMaticAmount = oldIndividualAllocation.maticAmount;

            if (oldIndividualAllocationMaticAmount == 0) {
                // if this is a new allocation
                individualAmount = _amount;
                individualPriceNum = globalPriceNum;
                individualPriceDenom = globalPriceDenom;

                // update mappings to keep track of recipients for each dist and vice versa
                distributors[_recipient][false].push(msg.sender);
                recipients[msg.sender][false].push(_recipient);
            } else {
                // if this adds to an existing allocation, update the individual allocation

                individualAmount = oldIndividualAllocationMaticAmount + _amount;
                individualPriceNum =
                    oldIndividualAllocationMaticAmount *
                    SHARE_PRICE_PRECISION +
                    _amount *
                    SHARE_PRICE_PRECISION;

                individualPriceDenom =
                    MathUpgradeable.mulDiv(
                        oldIndividualAllocationMaticAmount * SHARE_PRICE_PRECISION,
                        oldIndividualAllocation.sharePriceDenom,
                        oldIndividualAllocation.sharePriceNum,
                        MathUpgradeable.Rounding.Down
                    ) +
                    MathUpgradeable.mulDiv(
                        _amount * SHARE_PRICE_PRECISION,
                        globalPriceDenom,
                        globalPriceNum,
                        MathUpgradeable.Rounding.Down
                    );
                // rounding individual allocation share price denominator DOWN, in order to maximise the individual allocation share price
                // which minimises the amount that is distributed in `distributeRewards()`
            }

            allocations[msg.sender][_recipient][false] = Allocation(
                individualAmount,
                individualPriceNum,
                individualPriceDenom
            );
        }

        emit Allocated(msg.sender, _recipient, individualAmount, individualPriceNum, individualPriceDenom);
    }

    /// @notice Deallocates an amount of MATIC previously allocated to a user.
    /// @param _amount The amount the caller wishes to reduce the target's allocation by.
    /// @param _recipient The address of the user whose allocation is being reduced.
    function deallocate(uint256 _amount, address _recipient) external onlyWhitelist nonReentrant whenNotPaused {
        Allocation storage individualAllocation = allocations[msg.sender][_recipient][false];

        uint256 individualMaticAmount = individualAllocation.maticAmount;

        if (individualMaticAmount == 0) revert AllocationNonExistent();

        if (individualMaticAmount < _amount) revert ExcessDeallocation();

        unchecked {
            individualMaticAmount -= _amount;
        }

        if (individualMaticAmount < ONE_MATIC && individualMaticAmount != 0) revert AllocationUnderOneMATIC();

        // check if this is a complete deallocation
        if (individualMaticAmount == 0) {
            // remove recipient from distributor's recipient array
            delete allocations[msg.sender][_recipient][false];

            address[] storage rec = recipients[msg.sender][false];
            removeAddress(rec, _recipient);

            // remove distributor from recipient's distributor array
            address[] storage dist = distributors[_recipient][false];
            removeAddress(dist, msg.sender);
        } else {
            individualAllocation.maticAmount = individualMaticAmount;
        }

        emit Deallocated(msg.sender, _recipient, individualMaticAmount);
    }

    /// @notice Distributes the rewards from the caller's allocations to all their recipients.
    /// @param _inMatic A value indicating whether the reward is in MATIC or not.
    /// @dev If _inMatic is set to true, the MATIC will be transferred straight from the distributor's wallet.
    /// Their TruMATIC balance will not be altered.
    function distributeAll(bool _inMatic) external onlyWhitelist nonReentrant whenNotPaused {
        address[] storage rec = recipients[msg.sender][false];
        uint256 recipientsCount = rec.length;

        if (recipientsCount == 0) revert NoRecipientsFound();

        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();

        for (uint256 i; i < recipientsCount; ) {
            _distributeRewards(rec[i], msg.sender, _inMatic, globalPriceNum, globalPriceDenom);
            unchecked {
                ++i;
            }
        }

        emit DistributedAll(msg.sender);
    }

    /// *** EXTERNAL VIEW METHODS ***
    // *** VAULT INFO ***
    /// @notice Calculates the amount of fees from MATIC rewards that haven't yet been turned into shares.
    /// @return The amount of fees from rewards that haven't yet been turned into shares.
    function getDust() external view returns (uint256) {
        return (totalRewards() * phi) / PHI_PRECISION;
    }

    /// @notice Gets the latest unbond nonce from a specified validator.
    /// @param _validator The address of the validator.
    /// @return Current unbond nonce for vault-delegator unbonds.
    function getUnbondNonce(address _validator) external view returns (uint256) {
        return IValidatorShare(_validator).unbondNonces(address(this));
    }

    /// @notice Returns the addresses of the validators that are supported by the contract.
    function getValidators() external view returns (address[] memory) {
        return validatorAddresses;
    }

    /// @notice Checks if the unbond specified via the _unbondNonce can be claimed from the validator.
    /// @dev Cannot check the claimability of pre-upgrade unbonds.
    /// @param _unbondNonce Nonce of the unbond under consideration.
    /// @param _validator The address of the validator.
    /// @return  A value indicating whether the unbond can be claimed.
    function isClaimable(uint256 _unbondNonce, address _validator) external view returns (bool) {
        // Get epoch at which unbonding of delegated MATIC was initiated
        (, uint256 withdrawEpoch) = IValidatorShare(_validator).unbonds_new(address(this), _unbondNonce);

        // Check required epochs have passed
        bool epochsPassed = getCurrentEpoch() >=
            withdrawEpoch + IStakeManager(stakeManagerContractAddress).withdrawalDelay();

        bool withdrawalPresent = withdrawals[_validator][_unbondNonce].user != address(0);

        return withdrawalPresent && epochsPassed;
    }

    /// @notice Returns whether a user can access a validator.
    /// @dev A private validator can only be accessed by its users.
    /// Users who are not mapped to a private validator can only access validators that are not private.
    /// @param _user The user address.
    /// @param _validator The validator address.
    /// @return True if the user can access the validator, false otherwise.
    function canAccessValidator(address _user, address _validator) external view returns (bool) {
        _checkNotZeroAddress(_user);
        _checkNotZeroAddress(_validator);
        Validator memory validator = validators[_validator];
        if (validator.state == ValidatorState.NONE) revert ValidatorDoesNotExist();

        return _canAccessValidator(_user, _validator);
    }

    // *** PUBLIC METHODS ***
    /// @notice Deposits an amount of caller->-vault approved MATIC into the vault.
    /// @param _assets The amount of MATIC to deposit.
    /// @dev The MATIC is staked with the default validator.
    /// @return The resulting amount of TruMATIC shares minted to the caller.
    function deposit(uint256 _assets) public onlyWhitelist nonReentrant whenNotPaused returns (uint256) {
        if (_assets < minDeposit) revert DepositBelowMinDeposit();
        return _deposit(msg.sender, _assets, defaultValidatorAddress);
    }

    /// @notice Deposits an amount of caller->-vault approved MATIC into the vault.
    /// @param _assets The amount of MATIC to deposit.
    /// @param _validator Address of the validator you want to stake with.
    /// @return The resulting amount of TruMATIC shares minted to the caller.
    function depositToSpecificValidator(
        uint256 _assets,
        address _validator
    ) public onlyWhitelist nonReentrant whenNotPaused returns (uint256) {
        if (_assets < minDeposit) revert DepositBelowMinDeposit();
        return _deposit(msg.sender, _assets, _validator);
    }

    /// @notice Initiates a withdrawal request for an amount of MATIC from the vault and burns corresponding TruMATIC shares.
    /// @param _assets The amount of MATIC to withdraw.
    /// @dev The MATIC is unstaked from the default validator.
    /// @return The resulting amount of TruMATIC shares burned from the caller and the unbond nonce.
    function withdraw(uint256 _assets) public onlyWhitelist nonReentrant whenNotPaused returns (uint256, uint256) {
        return _withdrawRequest(msg.sender, _assets, defaultValidatorAddress);
    }

    /// @notice Initiates a withdrawal request for an amount of MATIC from the vault
    /// and burns corresponding TruMATIC shares.
    /// @param _assets The amount of MATIC to withdraw.
    /// @param _validator The address of the validator from which to unstake.
    /// @return The resulting amount of TruMATIC shares burned from the caller and the unbond nonce.
    function withdrawFromSpecificValidator(
        uint256 _assets,
        address _validator
    ) public onlyWhitelist nonReentrant whenNotPaused returns (uint256, uint256) {
        if (validators[_validator].state == ValidatorState.NONE) revert ValidatorDoesNotExist();
        return _withdrawRequest(msg.sender, _assets, _validator);
    }

    /// @notice Distributes allocation rewards from the caller to a recipient.
    /// @param _recipient Address of allocation's recipient.
    /// @param _inMatic A value indicating whether the reward is in MATIC or not.
    /// @dev If _inMatic is set to true, the MATIC will be transferred straight from the distributor's wallet.
    /// Their TruMATIC balance will not be altered.
    function distributeRewards(address _recipient, bool _inMatic) public onlyWhitelist nonReentrant whenNotPaused {
        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();
        _distributeRewards(_recipient, msg.sender, _inMatic, globalPriceNum, globalPriceDenom);
    }

    /// *** PUBLIC VIEW METHODS ***
    /// @notice Gets the total amount of MATIC currently held by the vault.
    /// @return Total amount of MATIC held by the vault.
    function totalAssets() public view returns (uint256) {
        return IERC20Upgradeable(stakingTokenAddress).balanceOf(address(this));
    }

    /// @notice Gets the total amount of MATIC currently staked by the vault.
    /// @return Total amount of MATIC staked by the vault across all validator delegations.
    function totalStaked() public view returns (uint256) {
        uint256 validatorCount = validatorAddresses.length;
        uint256 stake;
        for (uint256 i; i < validatorCount; ) {
            stake += validators[validatorAddresses[i]].stakedAmount;
            unchecked {
                ++i;
            }
        }
        return stake;
    }

    /// @notice Gets the total unclaimed MATIC rewards on all validators.
    /// @return Total amount of MATIC rewards earned through all validators.
    function totalRewards() public view returns (uint256) {
        uint256 validatorCount = validatorAddresses.length;
        uint256 validatorRewards;
        for (uint256 i; i < validatorCount; ) {
            validatorRewards += IValidatorShare(validatorAddresses[i]).getLiquidRewards(address(this));
            unchecked {
                ++i;
            }
        }
        return validatorRewards;
    }

    /// @notice Gets the price of one TruMATIC share in MATIC.
    /// @dev Represented via a fraction. Factor of 1e18 included in numerator to avoid rounding errors (currently redundant).
    /// @return Numerator of the vault's share price fraction.
    /// @return Denominator of the vault's share price fraction.
    function sharePrice() public view returns (uint256, uint256) {
        if (totalSupply() == 0) return (1e18, 1);

        uint256 totalCapitalTimesPhiPrecision = (totalStaked() + totalAssets()) *
            PHI_PRECISION +
            (PHI_PRECISION - phi) *
            totalRewards();

        return (totalCapitalTimesPhiPrecision * 1e18, totalSupply() * PHI_PRECISION);
    }

    /// @notice Convenience getter for retrieving user-relevant info.
    /// @param _user Address of the user.
    /// @return Maximum TruMATIC that can be redeemed by the user.
    /// @return Maximum MATIC that can be withdrawn by the user.
    /// @return Numerator of the vault's share price fraction.
    /// @return Denominator of the vault's share price fraction.
    /// @return Current Polygon epoch.
    function getUserInfo(address _user) public view returns (uint256, uint256, uint256, uint256, uint256) {
        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();
        uint256 maxRedeemable = balanceOf(_user);
        uint256 maxWithdrawAmount = maxWithdraw(_user);
        uint256 epoch = getCurrentEpoch();

        return (maxRedeemable, maxWithdrawAmount, globalPriceNum, globalPriceDenom, epoch);
    }

    /// @notice Retrieves information for all supported validators.
    /// @return An array of structs containing details for each validator.
    function getAllValidators() public view returns (Validator[] memory) {
        uint256 validatorCount = validatorAddresses.length;
        Validator[] memory validatorArray = new Validator[](validatorCount);
        for (uint256 i; i < validatorCount; ) {
            address validatorAddress = validatorAddresses[i];
            Validator memory validator = validators[validatorAddress];
            validator.validatorAddress = validatorAddress;
            validatorArray[i] = validator;
            unchecked {
                ++i;
            }
        }
        return validatorArray;
    }

    /// @notice Retrieves information for the validators a user can access.
    /// @param _user Address of the user.
    /// @return An array of structs containing details for each validator a user can access.
    function getUserValidators(address _user) public view returns (Validator[] memory) {
        // find the validators the user has access to
        Validator[] memory validators = getAllValidators();
        Validator[] memory userValidatorsAll = new Validator[](validators.length);
        uint256 userValidatorCount;
        for (uint256 i; i < validators.length; i++) {
            address validatorAddress = validators[i].validatorAddress;
            if (_canAccessValidator(_user, validatorAddress)) {
                userValidatorsAll[userValidatorCount] = validators[i];
                userValidatorCount++;
            }
        }

        // filter out zero items in userValidatorsAll
        Validator[] memory userValidators = new Validator[](userValidatorCount);
        for (uint256 i; i < userValidatorCount; i++) {
            userValidators[i] = userValidatorsAll[i];
        }

        return userValidators;
    }

    /// @notice Gets the total unclaimed MATIC rewards on a specific validator.
    /// @param _validator The address of the validator.
    /// @return Amount of MATIC rewards earned through this validator.
    function getRewardsFromValidator(address _validator) public view returns (uint256) {
        return IValidatorShare(_validator).getLiquidRewards(address(this));
    }

    /// @notice Gets a recipient's distributors.
    /// @param _user The recipient.
    /// @return The recipient's distributors.
    function getDistributors(address _user) public view returns (address[] memory) {
        return distributors[_user][false];
    }

    /// @notice Gets a distributor's recipients.
    /// @param _user The distributor.
    /// @return The distributor's recipients.
    function getRecipients(address _user) public view returns (address[] memory) {
        return recipients[_user][false];
    }

    /// @notice Gets the current epoch from Polygons's StakeManager contract.
    /// @return Current Polygon epoch.
    function getCurrentEpoch() public view returns (uint256) {
        return IStakeManager(stakeManagerContractAddress).epoch();
    }

    /// @notice Calculates the total amount of MATIC allocated by a distributor and the
    /// average share price fraction at which it was allocated.
    /// @param distributor The distributor.
    /// @return An allocation struct representing the distributor's total allocations.
    function getTotalAllocated(address distributor) public view returns (Allocation memory) {
        uint256 recipientsCount = recipients[distributor][false].length; // fetch all recipients
        uint256 totalAllocatedAmount;
        uint256 sharePriceNum;
        uint256 sharePriceDenom;

        for (uint256 i; i < recipientsCount; i++) {
            // loop through all recipient allocations
            address recipient = recipients[distributor][false][i];
            Allocation memory allocation = allocations[distributor][recipient][false];

            // if this is the first iteration of the for loop
            if (totalAllocatedAmount == 0) {
                totalAllocatedAmount = allocation.maticAmount;
                sharePriceNum = allocation.sharePriceNum;
                sharePriceDenom = allocation.sharePriceDenom;
                continue;
            }

            sharePriceDenom =
                MathUpgradeable.mulDiv(
                    totalAllocatedAmount * SHARE_PRICE_PRECISION,
                    sharePriceDenom,
                    sharePriceNum,
                    MathUpgradeable.Rounding.Up
                ) +
                MathUpgradeable.mulDiv(
                    allocation.maticAmount * SHARE_PRICE_PRECISION,
                    allocation.sharePriceDenom,
                    allocation.sharePriceNum,
                    MathUpgradeable.Rounding.Up
                );

            sharePriceNum =
                totalAllocatedAmount *
                SHARE_PRICE_PRECISION +
                allocation.maticAmount *
                SHARE_PRICE_PRECISION;
            totalAllocatedAmount += allocation.maticAmount;
        }
        return Allocation(totalAllocatedAmount, sharePriceNum, sharePriceDenom);
    }

    /// @notice Gets the maximum amount of MATIC a user can withdraw from the vault.
    /// @param _user The user under consideration.
    /// @return The amount of MATIC.
    function maxWithdraw(address _user) public view returns (uint256) {
        uint256 preview = previewRedeem(balanceOf(_user));

        if (preview == 0) return 0;

        return preview + epsilon;
    }

    /// @notice Returns the amount of TruMATIC needed to withdraw an amount of MATIC.
    /// @dev Returns no fewer than the exact amount of TruMATIC that would be burned
    /// in a withdraw request for the exact amount of MATIC.
    /// @param _assets The exact amount of MATIC to withdraw.
    /// @return The amount of TruMATIC burned.
    function previewWithdraw(uint256 _assets) public view returns (uint256) {
        return _convertToShares(_assets, MathUpgradeable.Rounding.Up);
    }

    /// @notice Returns the amount of MATIC that can be withdrawn for an amount of TruMATIC.
    /// @dev Returns no fewer than the exact amount of MATIC that would be withdrawn
    /// in a withdraw request that burns the exact amount of TruMATIC.
    /// @param _shares The exact amount of TruMATIC to redeem.
    /// @return The amount of MATIC withdrawn.
    function previewRedeem(uint256 _shares) public view returns (uint256) {
        return _convertToAssets(_shares, MathUpgradeable.Rounding.Up);
    }

    /// @notice Returns the amount of TruMATIC equivalent to an amount of MATIC.
    /// @param _assets The amount of MATIC to convert.
    /// @return The amount of TruMATIC that the Vault would exchange for the MATIC of assets provided.
    function convertToShares(uint256 _assets) public view returns (uint256) {
        return _convertToShares(_assets, MathUpgradeable.Rounding.Down);
    }

    /// @notice Returns the amount of MATIC equivalent to an amount of TruMATIC.
    /// @param _shares The amount of TruMATIC to convert.
    /// @return The amount of MATIC that the Vault would exchange for the amount of TruMATIC provided.
    function convertToAssets(uint256 _shares) public view returns (uint256) {
        return _convertToAssets(_shares, MathUpgradeable.Rounding.Down);
    }

    /// ***** PRIVATE METHODS *****
    /// @notice Private deposit function which stakes and mints shares for the user + treasury.
    /// @param _user User depositing the amount.
    /// @param _amount Amount to be deposited.
    /// @param _validator Address of the validator to stake to.
    function _deposit(address _user, uint256 _amount, address _validator) private returns (uint256) {
        if (!_canAccessValidator(_user, _validator)) revert ValidatorAccessDenied();
        if (validators[_validator].state != ValidatorState.ENABLED) revert ValidatorNotEnabled();

        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();

        // calculate share increase
        uint256 shareIncreaseUser = convertToShares(_amount);
        uint256 shareIncreaseTsy = (getRewardsFromValidator(_validator) * phi * 1e18 * globalPriceDenom) /
            (globalPriceNum * PHI_PRECISION);

        // piggyback previous withdrawn rewards in this staking call
        uint256 totalAssetBalance = totalAssets();
        uint256 stakeAmount = _amount + totalAssetBalance;

        _mint(treasuryAddress, shareIncreaseTsy);

        // mint shares to user and transfer staking token from user to Staker
        if (_user != address(0)) {
            _mint(_user, shareIncreaseUser);
            IERC20Upgradeable(stakingTokenAddress).safeTransferFrom(_user, address(this), _amount);
        }

        // approve funds to Stake Manager
        IERC20Upgradeable(stakingTokenAddress).safeIncreaseAllowance(stakeManagerContractAddress, stakeAmount);

        // interact with Validator Share contract to stake
        _stake(stakeAmount, _validator);
        // claimed rewards increase here as liquid rewards on validator share contract
        // are set to zero rewards and transferred to this vault

        emit Deposited(_user, shareIncreaseTsy, shareIncreaseUser, _amount, stakeAmount, totalAssetBalance, _validator);

        return shareIncreaseUser;
    }

    /// @notice Private function to handle withdrawals and burning shares.
    /// @param _user The user that is making the request.
    /// @param _amount The amount to be withdrawn.
    /// @param _validator Address of the validator to withdraw from.
    function _withdrawRequest(address _user, uint256 _amount, address _validator) private returns (uint256, uint256) {
        if (!_canAccessValidator(_user, _validator)) revert ValidatorAccessDenied();
        if (_amount == 0) revert WithdrawalRequestAmountCannotEqualZero();

        uint256 maxWithdrawal = maxWithdraw(_user);
        if (_amount > maxWithdrawal) revert WithdrawalAmountTooLarge();

        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();

        // calculate share decrease
        uint256 shareDecreaseUser = (_amount * globalPriceDenom * 1e18) / globalPriceNum;

        uint256 shareIncreaseTsy = (getRewardsFromValidator(_validator) * phi * globalPriceDenom * 1e18) /
            (globalPriceNum * PHI_PRECISION);

        // If remaining user balance is below 1 MATIC, entire balance is withdrawn and all shares
        // are burnt. We allow the user to withdraw their deposited amount + epsilon
        if (maxWithdrawal - _amount < ONE_MATIC) {
            _amount = maxWithdrawal;
            shareDecreaseUser = balanceOf(_user);
        }

        _burn(_user, shareDecreaseUser);

        _mint(treasuryAddress, shareIncreaseTsy);

        // interact with staking contract to initiate unbonding
        uint256 unbondNonce = _unbond(_amount, _validator);

        // store user under unbond nonce, used for fair claiming
        withdrawals[_validator][unbondNonce] = Withdrawal(_user, _amount);

        emit WithdrawalRequested(
            _user,
            shareIncreaseTsy,
            shareDecreaseUser,
            _amount,
            totalAssets(),
            _validator,
            unbondNonce,
            getCurrentEpoch() // only once 80 epochs have passed can this be claimed
        );

        return (shareDecreaseUser, unbondNonce);
    }

    /// @notice Handles withdraw claims internally according to unbond nonces (once unbonding period has passed).
    /// @param _unbondNonce The claim number the user got when initiating the withdrawal.
    /// @param _validator Address of the validator to claim from.
    function _withdrawClaim(uint256 _unbondNonce, address _validator) private {
        Withdrawal memory withdrawal = withdrawals[_validator][_unbondNonce];

        // if the nonce is linked to a withdrawal in the current mapping, use that
        if (withdrawal.user != address(0)) {
            delete withdrawals[_validator][_unbondNonce];
        } else if (
            _validator == 0xeA077b10A0eD33e4F68Edb2655C18FDA38F84712 &&
            unbondingWithdrawals[_unbondNonce].user != address(0)
        ) {
            // else if the claim is for the twinstake staker, check the legacy mapping for the withdrawal
            withdrawal = unbondingWithdrawals[_unbondNonce];
            delete unbondingWithdrawals[_unbondNonce];
        } else {
            // else withdraw claim does not exist
            revert WithdrawClaimNonExistent();
        }

        if (withdrawal.user != msg.sender) revert SenderMustHaveInitiatedWithdrawalRequest();

        // claim will revert if unbonding not finished for this unbond nonce
        uint256 receivedAmount = _claimStake(_unbondNonce, _validator);

        // transfer claimed MATIC to claimer
        IERC20Upgradeable(stakingTokenAddress).safeTransfer(msg.sender, receivedAmount);

        emit WithdrawalClaimed(msg.sender, _validator, _unbondNonce, withdrawal.amount, receivedAmount);
    }

    /// @notice Validator function that transfers the _amount to the stake manager and stakes the assets onto the validator.
    /// @param _amount Amount of MATIC to stake.
    /// @param _validator Address of the validator to stake with.
    function _stake(uint256 _amount, address _validator) private {
        uint256 amountToDeposit = IValidatorShare(_validator).buyVoucher(_amount, _amount);
        validators[_validator].stakedAmount += amountToDeposit;
    }

    /// @notice Requests to unstake a certain amount of MATIC from the specified validator.
    /// @param _amount Amount of MATIC to initiate the unstaking of.
    /// @param _validator Address of the validator to unstake from.
    function _unbond(uint256 _amount, address _validator) private returns (uint256) {
        validators[_validator].stakedAmount -= _amount;
        IValidatorShare(_validator).sellVoucher_new(_amount, _amount);
        return IValidatorShare(_validator).unbondNonces(address(this));
    }

    /// @notice Internal function for claiming the MATIC from a withdrawal request made previously.
    /// @param _unbondNonce Unbond nonce of the withdrawal request being claimed.
    /// @param _validator Address of the validator to claim from.
    /// @return The amount of MATIC received by the vault from the validator.
    function _claimStake(uint256 _unbondNonce, address _validator) private returns (uint256) {
        uint256 assetsBefore = totalAssets();
        IValidatorShare(_validator).unstakeClaimTokens_new(_unbondNonce);
        return totalAssets() - assetsBefore;
    }

    /// @notice Calls the validator share contract's restake functionality on all enabled validators
    /// to turn earned rewards into staked MATIC.
    /// @dev Logs a RestakeError event when an exception occurs while calling restake on a validator.
    function _restake() private returns (uint256) {
        uint256 validatorCount = validatorAddresses.length;
        uint256 totalAmountRestaked;
        for (uint256 i; i < validatorCount; ) {
            address validator = validatorAddresses[i];
            if (validators[validator].state == ValidatorState.ENABLED) {
                // log an event on "Too small rewards to restake" and other exceptions
                try IValidatorShare(validator).restake() returns (uint256 amountRestaked, uint256 liquidRewards) {
                    validators[validator].stakedAmount += amountRestaked;
                    totalAmountRestaked += liquidRewards;
                } catch Error(string memory reason) {
                    emit RestakeError(validator, reason);
                }
            }

            unchecked {
                ++i;
            }
        }
        return totalAmountRestaked;
    }

    /// @notice Distributes the rewards related to the allocation made to that receiver.
    /// @param _recipient Receives the rewards.
    /// @param _distributor Distributes their rewards.
    /// @param _inMatic A value indicating whether rewards are in MATIC.
    function _distributeRewards(
        address _recipient,
        address _distributor,
        bool _inMatic,
        uint256 globalPriceNum,
        uint256 globalPriceDenom
    ) private {
        Allocation storage individualAllocation = allocations[_distributor][_recipient][false];
        uint256 amt = individualAllocation.maticAmount;

        // if there is no allocation, revert. This should never happen during a distributeAll call.
        if (amt == 0) revert NothingToDistribute();

        // check if there are any rewards to distribute. If not, return.
        if (
            individualAllocation.sharePriceNum / individualAllocation.sharePriceDenom ==
            globalPriceNum / globalPriceDenom
        ) {
            return;
        }

        // calculate amount of TruMatic to move from distributor to recipient
        uint256 sharesToMove;
        {
            sharesToMove =
                MathUpgradeable.mulDiv(
                    amt,
                    individualAllocation.sharePriceDenom * 1e18,
                    individualAllocation.sharePriceNum,
                    MathUpgradeable.Rounding.Down
                ) -
                MathUpgradeable.mulDiv(amt, globalPriceDenom * 1e18, globalPriceNum, MathUpgradeable.Rounding.Up);

            // calculate fees and transfer
            uint256 fee = (sharesToMove * distPhi) / PHI_PRECISION;

            sharesToMove -= fee;

            _transfer(_distributor, treasuryAddress, fee);
        }

        if (_inMatic) {
            uint256 maticAmount = convertToAssets(sharesToMove);
            // transfer staking token from distributor to recipient
            IERC20Upgradeable(stakingTokenAddress).safeTransferFrom(_distributor, _recipient, maticAmount);
        } else {
            _transfer(_distributor, _recipient, sharesToMove);
        }

        individualAllocation.sharePriceNum = globalPriceNum;
        individualAllocation.sharePriceDenom = globalPriceDenom;

        emit DistributedRewards(
            _distributor,
            _recipient,
            convertToAssets(sharesToMove),
            sharesToMove,
            globalPriceNum,
            globalPriceDenom
        );
    }

    /// @notice Removes an address from an array of addresses.
    /// @param addresses A storage array of addresses.
    /// @param item The address to be removed.
    function removeAddress(address[] storage addresses, address item) private {
        uint256 addressCount = addresses.length;

        for (uint256 i; i < addressCount; ) {
            if (addresses[i] == item) {
                addresses[i] = addresses[addressCount - 1];
                addresses.pop();
                break;
            }

            unchecked {
                ++i;
            }
        }
    }

    /// ***** PRIVATE VIEW METHODS *****
    /// @notice Private function to convert MATIC to TruMATIC.
    /// @param assets Assets in MATIC to be converted into TruMATIC.
    function _convertToShares(uint256 assets, MathUpgradeable.Rounding rounding) private view returns (uint256) {
        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();
        return MathUpgradeable.mulDiv(assets * 1e18, globalPriceDenom, globalPriceNum, rounding);
    }

    /// @notice Private function to convert TruMATIC to MATIC.
    /// @param shares TruMATIC shares to be converted into MATIC.
    function _convertToAssets(uint256 shares, MathUpgradeable.Rounding rounding) private view returns (uint256) {
        (uint256 globalPriceNum, uint256 globalPriceDenom) = sharePrice();
        return MathUpgradeable.mulDiv(shares, globalPriceNum, globalPriceDenom * 1e18, rounding);
    }

    /// @notice Returns whether a user can access a validator.
    /// @param _user The user address.
    /// @param _validator The validator address.
    /// @return True if the user can access the validator, false otherwise.
    function _canAccessValidator(address _user, address _validator) private view returns (bool) {
        address privateValidator = usersPrivateAccess[_user];

        if (validators[privateValidator].isPrivate == true) {
            // if the user is limited to a private validator, only that validator is accessible
            return privateValidator == _validator;
        }

        // otherwise, non-private validators are accessible, private validators are not
        return !validators[_validator].isPrivate;
    }

    /// @notice Checks whether an address is the zero address.
    /// @dev Gas-efficient way to check using assembly.
    /// @param toCheck Address to be checked.
    function _checkNotZeroAddress(address toCheck) private pure {
        assembly {
            //more gas efficient to use assembly for zero address check
            if iszero(toCheck) {
                let ptr := mload(0x40)
                mstore(ptr, 0x1cb411bc00000000000000000000000000000000000000000000000000000000) // selector for `ZeroAddressNotSupported()`
                revert(ptr, 0x4)
            }
        }
    }
}

// ============================================================
// FILE: contracts/main/TruStakeMATICv2Storage.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

import {Withdrawal, Allocation, Validator} from "./Types.sol";

/// @title TruStakeMATICStorage
abstract contract TruStakeMATICv2Storage {
    /// @notice Address of MATIC on this chain (Ethereum and Goerli supported).
    address public stakingTokenAddress;

    /// @notice The stake manager contract deployed by Polygon.
    address public stakeManagerContractAddress;

    /// @notice The address of the default validator.
    address public defaultValidatorAddress;

    /// @notice The whitelist contract keeps track of what users can interact with
    ///   certain function in the TruStakeMATIC contract.
    address public whitelistAddress;

    /// @notice The treasury gathers fees during the restaking of rewards as shares.
    address public treasuryAddress;

    /// @notice Size of fee taken on rewards.
    /// @dev Fee in basis points.
    uint256 public phi;

    /// @notice Size of fee taken on allocations.
    /// @dev Distribution fee in basis points.
    uint256 public distPhi;

    /// @notice Deprecated but here for storage considerations.
    uint256 public deprecated1;

    /// @notice Mapping to keep track of (user, amount) values for each unbond nonce.
    /// @dev Legacy mapping to keep track of pre-upgrade withdrawal claims.
    /// @dev Maps nonce of validator unbonding to a Withdrawal (user & amount).
    mapping(uint256 => Withdrawal) public unbondingWithdrawals;

    /// @notice Deprecated but here for storage considerations.
    mapping(address => mapping(bool => Allocation)) public deprecated2;

    /// @notice Mapping of distributor to recipient to amount and share price.
    mapping(address => mapping(address => mapping(bool => Allocation))) public allocations;

    /// @notice Array of distributors to their recipients.
    mapping(address => mapping(bool => address[])) public recipients;

    /// @notice Array of recipients to their distributors.
    mapping(address => mapping(bool => address[])) public distributors;

    /// @notice Value to offset rounding errors.
    uint256 public epsilon;

    /// @notice Deprecated but here for storage considerations.
    bool public deprecated3;

    /// @notice Cap on the smallest amount one can deposit to the staker.
    uint256 public minDeposit;

    /// @notice Mapping of a validator address to the validator struct.
    mapping(address => Validator) public validators;

    /// @notice The array of validators share contract addresses configured in the contract.
    address[] public validatorAddresses;

    /// @notice Mapping to keep track of the withdrawals (user, amount) for each unbond nonce for each validator.
    mapping(address => mapping(uint256 => Withdrawal)) public withdrawals;

    /// @notice Mapping of users to the private validator they have access to.
    mapping(address => address) public usersPrivateAccess;

    /// @notice Address of the POL delegate registry contract.
    address public delegateRegistry;

    /// @notice Gap for upgradeability.
    uint256[42] private __gap;
}

// ============================================================
// FILE: contracts/main/Types.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.19;

/// @notice Struct to hold information on a user's withdrawal request for fair claiming.
/// @dev The epoch of withdrawal is not stored as that is the key in the `unbondingWithdrawals`
/// mapping.
/// @param user The user that made the withdrawal request.
/// @param amount The amount of MATIC that the user requested to withdraw.
struct Withdrawal {
    address user;
    uint256 amount;
}

/// @notice Struct to hold information on user allocations.
/// @dev The numerator and denominator update when the allocation amount increases,
/// or when a distribution occurs.
/// @param maticAmount the amount of MATIC allocated.
/// @param sharePriceNum numerator of the share price for this allocation.
/// @param sharePriceDenom denominator of the share price for this allocation.
struct Allocation {
    uint256 maticAmount;
    uint256 sharePriceNum;
    uint256 sharePriceDenom;
}

/// @notice Struct to track information on a validator.
/// @param state The state of the validator.
/// @param stakedAmount The amount of Matic staked on the validator. This is the maximum that can be withdrawn from this validator.
/// @param validatorAddress The address of the validator.
/// @param isPrivate Indicates whether access to the validator is limited to specific users.
struct Validator {
    ValidatorState state;
    uint256 stakedAmount;
    address validatorAddress;
    bool isPrivate;
}

/// @notice Enum for the possible validator states.
enum ValidatorState {
    NONE,
    ENABLED,
    DISABLED
}
