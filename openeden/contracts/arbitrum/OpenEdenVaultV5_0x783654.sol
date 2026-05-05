// File: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol


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

// File: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol


// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;


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

// File: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol


// OpenZeppelin Contracts (last updated v4.8.0) (utils/Address.sol)

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

// File: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol


// OpenZeppelin Contracts (last updated v4.8.1) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;


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
        if (_initialized < type(uint8).max) {
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

// File: @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol


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

// File: @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol


// OpenZeppelin Contracts (last updated v4.8.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;





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

// File: @openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol


// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/Math.sol)

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
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 result) {
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
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1);

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
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator,
        Rounding rounding
    ) internal pure returns (uint256) {
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
            if (value >= 10**64) {
                value /= 10**64;
                result += 64;
            }
            if (value >= 10**32) {
                value /= 10**32;
                result += 32;
            }
            if (value >= 10**16) {
                value /= 10**16;
                result += 16;
            }
            if (value >= 10**8) {
                value /= 10**8;
                result += 8;
            }
            if (value >= 10**4) {
                value /= 10**4;
                result += 4;
            }
            if (value >= 10**2) {
                value /= 10**2;
                result += 2;
            }
            if (value >= 10**1) {
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
            return result + (rounding == Rounding.Up && 10**result < value ? 1 : 0);
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
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result * 8) < value ? 1 : 0);
        }
    }
}

// File: @openzeppelin/contracts-upgradeable/interfaces/draft-IERC1822Upgradeable.sol


// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.0;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822ProxiableUpgradeable {
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

// File: @openzeppelin/contracts-upgradeable/proxy/beacon/IBeaconUpgradeable.sol


// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.0;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeaconUpgradeable {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// File: @openzeppelin/contracts-upgradeable/utils/StorageSlotUpgradeable.sol


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
library StorageSlotUpgradeable {
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

// File: @openzeppelin/contracts-upgradeable/proxy/ERC1967/ERC1967UpgradeUpgradeable.sol


// OpenZeppelin Contracts (last updated v4.5.0) (proxy/ERC1967/ERC1967Upgrade.sol)

pragma solidity ^0.8.2;






/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 *
 * @custom:oz-upgrades-unsafe-allow delegatecall
 */
abstract contract ERC1967UpgradeUpgradeable is Initializable {
    function __ERC1967Upgrade_init() internal onlyInitializing {
    }

    function __ERC1967Upgrade_init_unchained() internal onlyInitializing {
    }
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
        return StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(AddressUpgradeable.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
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
            _functionDelegateCall(newImplementation, data);
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
        if (StorageSlotUpgradeable.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822ProxiableUpgradeable(newImplementation).proxiableUUID() returns (bytes32 slot) {
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
        return StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
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
        return StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(AddressUpgradeable.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            AddressUpgradeable.isContract(IBeaconUpgradeable(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value = newBeacon;
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
            _functionDelegateCall(IBeaconUpgradeable(newBeacon).implementation(), data);
        }
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function _functionDelegateCall(address target, bytes memory data) private returns (bytes memory) {
        require(AddressUpgradeable.isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return AddressUpgradeable.verifyCallResult(success, returndata, "Address: low-level delegate call failed");
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// File: @openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol


// OpenZeppelin Contracts (last updated v4.8.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.0;




/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822ProxiableUpgradeable, ERC1967UpgradeUpgradeable {
    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual override notDelegated returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeTo(address newImplementation) external virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) external payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// File: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol


// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

pragma solidity ^0.8.0;



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

// File: @openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol


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

// File: @openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol


// OpenZeppelin Contracts (last updated v4.8.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;




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

    function safeTransfer(
        IERC20Upgradeable token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20Upgradeable token,
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
        IERC20Upgradeable token,
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
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20Upgradeable token,
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
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// File: contracts/DoubleQueueModified.sol


// OpenZeppelin Contracts (last updated v4.6.0) (utils/structs/DoubleEndedQueue.sol)
pragma solidity =0.8.9;

/**
 * @dev A sequence of items with the ability to efficiently push and pop items (i.e. insert and remove) on both ends of
 * the sequence (called front and back). Among other access patterns, it can be used to implement efficient LIFO and
 * FIFO queues. Storage use is optimized, and all operations are O(1) constant time. This includes {clear}, given that
 * the existing queue contents are left in storage.
 *
 * The struct is called `Bytes32Deque`. Other types can be cast to and from `bytes32`. This data structure can only be
 * used in storage, and not in memory.
 * ```
 * DoubleEndedQueue.Bytes32Deque queue;
 * ```
 *
 * _Available since v4.6._
 */
library DoubleQueueModified {
    /**
     * @dev An operation (e.g. {front}) couldn't be completed due to the queue being empty.
     */
    error Empty();

    /**
     * @dev An operation (e.g. {at}) couldn't be completed due to an index being out of bounds.
     */
    error OutOfBounds();

    /**
     * @dev Indices are signed integers because the queue can grow in any direction. They are 128 bits so begin and end
     * are packed in a single storage slot for efficient access. Since the items are added one at a time we can safely
     * assume that these 128-bit indices will not overflow, and use unchecked arithmetic.
     *
     * Struct members have an underscore prefix indicating that they are "private" and should not be read or written to
     * directly. Use the functions provided below instead. Modifying the struct manually may violate assumptions and
     * lead to unexpected behavior.
     *
     * Indices are in the range [begin, end) which means the first item is at data[begin] and the last item is at
     * data[end - 1].
     */
    struct BytesDeque {
        int128 _begin;
        int128 _end;
        mapping(int128 => bytes) _data;
    }

    /**
     * @dev Inserts an item at the end of the queue.
     */
    function pushBack(BytesDeque storage deque, bytes memory value) internal {
        int128 backIndex = deque._end;
        deque._data[backIndex] = value;
        unchecked {
            deque._end = backIndex + 1;
        }
    }

    /**
     * @dev Removes the item at the beginning of the queue and returns it.
     *
     * Reverts with `Empty` if the queue is empty.
     */
    function popFront(
        BytesDeque storage deque
    ) internal returns (bytes memory value) {
        if (empty(deque)) revert Empty();
        int128 frontIndex = deque._begin;
        value = deque._data[frontIndex];
        delete deque._data[frontIndex];
        unchecked {
            deque._begin = frontIndex + 1;
        }
    }

    /**
     * @dev Returns the item at the beginning of the queue.
     *
     * Reverts with `Empty` if the queue is empty.
     */
    function front(
        BytesDeque storage deque
    ) internal view returns (bytes memory value) {
        if (empty(deque)) revert Empty();
        int128 frontIndex = deque._begin;
        return deque._data[frontIndex];
    }

    /**
     * @dev Return the item at a position in the queue given by `index`, with the first item at 0 and last item at
     * `length(deque) - 1`.
     *
     * Reverts with `OutOfBounds` if the index is out of bounds.
     */
    function at(
        BytesDeque storage deque,
        uint256 index
    ) internal view returns (bytes memory value) {
        // int256(deque._begin) is a safe upcast
        int128 idx = _toInt128(int256(deque._begin) + _toInt256(index));
        if (idx >= deque._end) revert OutOfBounds();
        return deque._data[idx];
    }

    function _toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 128 bits");
    }

    function _toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        require(
            value <= uint256(type(int256).max),
            "SafeCast: value doesn't fit in an int256"
        );
        return int256(value);
    }

    /**
     * @dev Resets the queue back to being empty.
     *
     * NOTE: The current items are left behind in storage. This does not affect the functioning of the queue, but misses
     * out on potential gas refunds.
     */
    function clear(BytesDeque storage deque) internal {
        deque._begin = 0;
        deque._end = 0;
    }

    /**
     * @dev Returns the number of items in the queue.
     */
    function length(BytesDeque storage deque) internal view returns (uint256) {
        // The interface preserves the invariant that begin <= end so we assume this will not overflow.
        // We also assume there are at most int256.max items in the queue.
        unchecked {
            return uint256(int256(deque._end) - int256(deque._begin));
        }
    }

    /**
     * @dev Returns true if the queue is empty.
     */
    function empty(BytesDeque storage deque) internal view returns (bool) {
        return deque._end <= deque._begin;
    }
}

// File: contracts/interfaces/ITypes.sol


pragma solidity =0.8.9;

enum ActionType {
    DEPOSIT,
    REDEEM
    // REDEEM_INSTANT
}

// File: contracts/interfaces/IFeeManagerV3.sol


pragma solidity =0.8.9;


interface IFeeManager {
    function getTxFeePct(
        ActionType _type,
        bool _isWeekend
    ) external view returns (uint256 txFee);

    function getMinMaxDeposit()
        external
        view
        returns (uint256 minDeposit, uint256 maxDeposit);

    function getMinMaxWithdraw()
        external
        view
        returns (uint256 minWithdraw, uint256 maxWithdraw);

    function getManagementFeeRate() external view returns (uint256 feeRate);

    function getFirstDeposit() external view returns (uint256 firstDeposit);

    function getMaxHolidayDepositPct()
        external
        view
        returns (uint256 maxDepositPct, uint256 maxDepositAggregatedPct);

    function getMinTxsFee() external view returns (uint256);
}

// File: contracts/interfaces/IPartnerShipV4.sol


pragma solidity =0.8.9;


interface IPartnerShipV4 {
    function getFeeByChildAndAction(
        address child,
        ActionType action
    ) external view returns (int256 _fee);

    function isChildHasParent(address child) external view returns (bool);
}

// File: contracts/interfaces/IOpenEdenVaultV4.sol


pragma solidity =0.8.9;

enum ServiceFeeType {
    ONCHAIN,
    OFFCHAIN
}

interface IOpenEdenVault {
    event Deposit(address indexed receiver, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    event SetOplTreasury(address oplTreasury);
    event SetMgtFeeTreasury(address treasury);
    event UpdateTreasury(address newAddress);
    event UpdateQTreasury(address newAddress);
    event SetBuidl(address buidl, address buidlRedemption);
    event SetBuidlTreasury(address buidlTreasury);

    event SetFeeManager(address feeManager);
    event SetKycManager(address kycManager);
    event SetTimelock(address timelock);
    event SetOperator(address operator, bool status);
    event SetMaintainer(address _maintainer);
    event SetTBillPriceFeed(address priceFeed);
    event SetController(address controller);
    event SetPartnerShip(address partnerShip);
    event SetTimeBuffer(uint256 timeBuffer);

    event ClaimServiceFee(address receiver, uint256 amount);
    event UpdateEpoch(uint256 unClaimedFee, uint256 epoch, bool isWeekend);
    event SetWeekendFlag(bool flag);
    event AddToWithdrawalQueue(
        address sender,
        address receiver,
        uint256 shares,
        bytes32 id
    );
    event ProcessWithdrawalQueue(
        uint256 totalAssets,
        uint256 totalShares,
        uint256 totalFees
    );
    event OffRamp(address treasury, uint256 assets);
    event OffRampQ(address qTreasury, uint256 assets);
    event ProcessDeposit(
        address sender,
        address receiver,
        uint256 assets,
        uint256 shares,
        uint256 oeFee,
        int256 pFee,
        uint256 totalFee,
        address oplTreasury,
        address treasury
    );
    event ProcessWithdraw(
        address sender,
        address receiver,
        uint256 assets,
        uint256 shares,
        uint256 actualAssets,
        uint256 actualShare,
        uint256 oeFee,
        int256 pFee,
        uint256 totalFee,
        bytes32 prevId,
        address oplTreasury
    );
    event ProcessRedeemCancel(
        address sender,
        address receiver,
        uint256 shares,
        bytes32 prevId
    );
    event Cancel(uint256 len, uint256 totalShares);
    event SetRedemption(address redemptionContract);
    event TotalSupplyCap(uint256 supplyCap);
    event BurnFrom(address indexed from, uint256 amount);
    event MintTo(address indexed to, uint256 amount);
    event ReIssue(
        address indexed oldWallet,
        address indexed newWallet,
        uint256 amount
    );

    error TBillNoPermission(address caller);
    error TBillInvalidateKyc(address sender, address receiver);
    error TBillLessThanFirstDeposit(uint256 amount, uint256 minDeposit);
    error TBillLessThanMin(uint256 amount, uint256 minDeposit);
    error TBillInvalidInput(uint256 amount);
    error TBillUpdateTooEarly(uint256 amount);
    error TBillZeroAddress();
    error TBillReceiveUSDCFailed(uint256 received, uint256 expected);
    error TBillInvalidPrice(int256 answer);
    error TBillPriceOutdated(uint256 updatedAt);
    error TotalSupplyCapExceeded(
        uint256 totalSupply,
        uint256 share,
        uint256 cap
    );
}

// File: contracts/interfaces/IKycManager.sol


pragma solidity =0.8.9;

interface IKycManager {
    enum KycType {
        NON_KYC,
        US_KYC,
        GENERAL_KYC
    }

    struct User {
        KycType kycType;
        bool isBanned;
    }

    function onlyNotBanned(address investor) external view;

    function onlyKyc(address investor) external view;

    function isBanned(address investor) external view returns (bool);

    function isKyc(address investor) external view returns (bool);

    function isUSKyc(address investor) external view returns (bool);

    function isNonUSKyc(address investor) external view returns (bool);

    function isStrict() external view returns (bool);
}

// File: contracts/interfaces/IPriceFeed.sol


pragma solidity =0.8.9;

interface IPriceFeed {
    function decimals() external view returns (uint8);

    function latestAnswer() external view returns (uint256);

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

// File: contracts/interfaces/IController.sol


pragma solidity =0.8.9;

interface IController {
    function requireNotPausedWithdraw() external view;

    function requireNotPausedDeposit() external view;

    function pausedWithdraw() external view returns (bool);

    function pausedDeposit() external view returns (bool);
}

// File: contracts/interfaces/IRedemption.sol


pragma solidity =0.8.9;

interface IRedemption {
    function checkLiquidity()
        external
        view
        returns (uint256, uint256, uint256, uint256, uint256, uint256);

    function checkPaused() external view returns (bool);

    function redeem(uint256 amount) external returns (uint256);
}

// File: contracts/OpenEdenVaultV5Impl.sol


pragma solidity =0.8.9;

// openzeppelin







// interface









/// @title  OpenEdenVaultV5
/// @author OpenEden
/// @notice This contract is the main contract for OpenEden T-Bills
contract OpenEdenVaultV5 is
    ERC20Upgradeable,
    OwnableUpgradeable,
    IOpenEdenVault,
    UUPSUpgradeable
{
    using DoubleQueueModified for DoubleQueueModified.BytesDeque;
    using MathUpgradeable for uint256;

    // indicate the fixed bps unit, 1e4, will be used for calculating the fee and the depeg threshold
    uint256 private constant BPSUNIT = 1e4;

    // indicates the fixed usdc price, 1 usdc = 1e8
    uint256 private constant ONE = 1e8;

    // the supply cap of the vault
    uint256 public totalSupplyCap;

    // chainlink usdc price feed max time delay, 24 hours
    uint256 private reserve1; //maxTimeDelay;

    // tbill decimal scale factor,
    uint256 private tbillDecimalScaleFactor;

    // underlying token, usdc
    IERC20MetadataUpgradeable public underlying;

    // controller contract, pause/unpause deposit and withdraw
    IController public controller;

    // used to maintain the vault
    address public maintainer; // operator in V3

    // tbill price feed, used to calculate the price of tbill
    IPriceFeed public tbillUsdPriceFeed;

    // the wallet address to hold BUIDL, will fetch BUIDL from it to Vault
    address public reserve2; // reserve

    // address to receive tx fee
    address public oplTreasury;

    // address to receive underlying token
    address public treasury;

    // address to receive unexpected quarantine tokens
    address public qTreasury;

    // fee manager contract, used to calculate the fee
    IFeeManager public feeManager;

    // kyc manager contract, used to check the kyc status
    IKycManager public kycManager;

    // management fee, will be charged daily based on the total assets
    uint256 public unClaimedFee;

    // current epoch, will be updated when updateEpoch
    uint256 public epoch;

    // we only allow the operator to call the function once per day
    uint256 public lastUpdateTS; // currWeekendDeposit in V3

    // current weekend withdraw amount, will be used to calculate the weekend withdraw limit
    uint256 public timeBuffer; // currWeekendWithdraw in V3

    // indicate whether it is weekend, will be updated when updateEpoch
    bool public isWeekend;

    // withdraw queue data structure
    DoubleQueueModified.BytesDeque private withdrawalQueue;

    // indicate whether the user has deposited before
    mapping(address => bool) public firstDepositMap;

    // deposit amount map, will be used to calculate the deposit limit
    mapping(uint256 => uint256) private reserve3; // depositAmountMap

    // withdraw amount map, will be used to calculate the withdraw limit
    mapping(uint256 => uint256) private reserve4; //withdrawAmountMap;

    // useded to query the withdraw shares of the user that in the queue
    mapping(address => uint256) private withdrawalInfo;

    // partner ship contract, used to calculate the fee
    IPartnerShipV4 public partnerShip;

    // maintain the operator status
    mapping(address => bool) public operators;

    // for instant redeem - pluggable redemption contract
    IRedemption public redemptionContract;

    // redemption token (e.g., USYC, BUIDL, etc.) - configurable
    IERC20Upgradeable public reserve5; // previous buidl

    // address to receive management fee
    address public mgtFeeTreasury;

    // only operator can call this function
    modifier onlyOperator() {
        if (!operators[msg.sender]) revert TBillNoPermission(msg.sender);
        _;
    }

    modifier onlyMaintainer() {
        if (msg.sender != maintainer) revert TBillNoPermission(msg.sender);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the contract and sets the initial state variables. This is called by the proxy and should only be called once.
     * @dev This function is intended for setting initial values for the contract's state variables. Ensure the provided holders have KYC granted before deploying this contract.
     * @param _underlying The underlying ERC20 token for the vault.
     * @param _controller Reference to the associated Controller contract.
     * @param _oplTreasury Address of the OPL treasury.
     * @param _mgtFeeTreasury Address of the management fee treasury.
     * @param _treasury Address of the main treasury.
     * @param _feeManager Reference to the associated Fee Manager contract.
     * @param _kycManager Reference to the KYC Manager contract.
     */
    function initialize(
        IERC20MetadataUpgradeable _underlying,
        IController _controller,
        IPriceFeed _tbillUsdPriceFeed,
        address _oplTreasury,
        address _mgtFeeTreasury,
        address _treasury,
        IFeeManager _feeManager,
        IKycManager _kycManager
    ) external initializer {
        __ERC20_init("OpenEden T-Bills", "TBILL");
        __Ownable_init();
        __UUPSUpgradeable_init();

        underlying = _underlying;
        tbillDecimalScaleFactor = 10 ** _underlying.decimals();

        controller = _controller;
        tbillUsdPriceFeed = _tbillUsdPriceFeed;

        oplTreasury = _oplTreasury;
        mgtFeeTreasury = _mgtFeeTreasury;
        treasury = _treasury;
        feeManager = _feeManager;
        kycManager = _kycManager;
    }

    /*//////////////////////////////////////////////////////////////
                          EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice deposit underlying to this contract and mint shares to the receiver
     * @dev will charge fees before mint, and the underlying will be transfered from the sender to Treasury
     * @param _assets a parameter just like in doxygen (must be followed by parameter name)
     * @param _receiver Documents the return variables of a contract's function state variable
     */
    function deposit(uint256 _assets, address _receiver) external {
        controller.requireNotPausedDeposit();

        address sender = _msgSender();
        _validateKyc(sender, _receiver);

        (uint256 minDeposit, ) = feeManager.getMinMaxDeposit();
        uint256 firstDepositAmt = feeManager.getFirstDeposit();

        if (_assets < minDeposit) revert TBillLessThanMin(_assets, minDeposit);
        if (!firstDepositMap[sender]) {
            if (_assets < firstDepositAmt)
                revert TBillLessThanFirstDeposit(_assets, firstDepositAmt);
            firstDepositMap[sender] = true;
        }

        _processDeposit(sender, _receiver, _assets);
    }

    /**
     * @notice redeem shares to underlying
     * @dev all withdraw requests will be put into a queue, and will be processed after get the sufficient assets
     * @param _shares the amount of shares to redeem
     * @param _receiver the address to receive the underlying
     */
    function redeem(uint256 _shares, address _receiver) external {
        controller.requireNotPausedWithdraw();

        address sender = _msgSender();
        _validateKyc(sender, _receiver);

        uint256 assets = _convertToAssets(_shares);
        (uint256 minWithdraw, ) = feeManager.getMinMaxWithdraw();
        if (assets < minWithdraw) revert TBillLessThanMin(assets, minWithdraw);

        _processWithdraw(sender, _receiver, _shares);
    }

    /**
     * @notice redeem shares to underlying instantly using the configured redemption system
     * @dev the withdraw request will be processed instantly, and the underlying will be transfered to the receiver
     * @param _shares the amount of shares to redeem
     * @param _receiver the address to receive the underlying
     */
    function redeemIns(
        uint256 _shares,
        address _receiver
    ) external returns (uint256) {
        controller.requireNotPausedWithdraw();

        address sender = _msgSender();
        _validateKyc(sender, _receiver);
        uint256 assets = _convertToAssets(_shares);

        // Step 1: Charge fees and get the request amount
        (, , uint256 totalFee) = txsFee(ActionType.REDEEM, sender, assets);

        (uint256 minWithdraw, ) = feeManager.getMinMaxWithdraw();
        if (assets < minWithdraw) revert TBillLessThanMin(assets, minWithdraw);

        // Step 2: Perform token transfers and redemptions
        return
            _processWithdrawIns(sender, _receiver, _shares, assets, totalFee);
    }

    /**
     * @notice cancel the first _len withdraw request in the queue, only maintainer can call this function
     * @dev will transfer the shares to the sender
     * @param _len the length of the cancel requests
     */
    function cancel(uint256 _len) external onlyMaintainer {
        if (_len > withdrawalQueue.length()) revert TBillInvalidInput(_len);
        controller.requireNotPausedWithdraw();
        uint256 totalShares;

        while (_len > 0) {
            bytes memory data = withdrawalQueue.popFront();

            (
                address sender,
                address receiver,
                uint256 shares,
                bytes32 prevId
            ) = _decodeData(data);

            unchecked {
                totalShares += shares;
                withdrawalInfo[receiver] -= shares;
                _len--;
            }
            _transfer(address(this), sender, shares);
            emit ProcessRedeemCancel(sender, receiver, shares, prevId);
        }
        emit Cancel(_len, totalShares);
    }

    /**
     * @dev transfer underlying from vault to treasury, only operator can call this function
     * @param _amt the amount of the token to transfer
     */
    function offRamp(uint256 _amt) external onlyOperator {
        _offRamp(address(underlying), treasury, _amt);
        emit OffRamp(treasury, _amt);
    }

    /**
     * @dev transfer unexpected tokens from vault to qtreasury, only operator can call this function
     * @param _token the address of the token to transfer
     * @param _amt the amount of the token to transfer
     */
    function offRampQ(address _token, uint256 _amt) external onlyOperator {
        if (_token == address(this))
            revert TBillInvalidInput(uint256(uint160(address(this))));
        _offRamp(_token, qTreasury, _amt);
        emit OffRampQ(qTreasury, _amt);
    }

    /**
     * @dev process the withdrawal queue, only operator can call this function
     * @param _len the length of the queue to process, 0 means process all
     */
    function processWithdrawalQueue(uint _len) external onlyOperator {
        uint256 length = withdrawalQueue.length();
        if (length == 0 || _len > length) revert TBillInvalidInput(_len);
        if (_len == 0) _len = length;

        uint256 totalWithdrawAssets;
        uint256 totalBurnShares;
        uint256 totalFees;

        for (uint count = 0; count < _len; ) {
            bytes memory data = withdrawalQueue.front();
            (
                address sender,
                address receiver,
                uint256 shares,
                bytes32 prevId
            ) = _decodeData(data);

            _validateKyc(sender, receiver);
            uint256 assets = _convertToAssets(shares);

            // 1. will not process the queue if the assets is not enough
            // 2. will process the queue by sequence, so if the first one is not enough, the rest will not be handled
            if (assets > onchainAssets()) {
                break;
            }

            // will calculate the fee based on the lastest fee rate, not the fee rate when the user redeem
            // if not enough, will revert
            (uint256 oeFee, int256 pFee, uint256 fee) = txsFee(
                ActionType.REDEEM,
                sender,
                assets
            );

            // collect the fee
            if (fee > 0) {
                SafeERC20Upgradeable.safeTransfer(
                    IERC20Upgradeable(underlying),
                    oplTreasury,
                    fee
                );
            }

            withdrawalQueue.popFront();
            uint256 trimmedAssets = assets - fee;
            unchecked {
                ++count;
                totalWithdrawAssets += trimmedAssets;
                totalBurnShares += shares;
                totalFees += fee;
                withdrawalInfo[receiver] -= shares;
            }

            _withdraw(
                address(this),
                receiver,
                address(this),
                trimmedAssets,
                shares
            );

            emit ProcessWithdraw(
                sender,
                receiver,
                assets,
                shares,
                trimmedAssets,
                shares,
                oeFee,
                pFee,
                fee,
                prevId,
                oplTreasury
            );
        }
        emit ProcessWithdrawalQueue(
            totalWithdrawAssets,
            totalBurnShares,
            totalFees
        );
    }

    /**
     * @dev will update the closeNavPrice, currently set to 7am sgt, 11:00 utc,
      Ensure the function can only be called after 20 hours
     * @param _isWeekend whether it is weekend
     */
    function updateEpoch(bool _isWeekend) external onlyOperator {
        if (lastUpdateTS != 0) {
            if (block.timestamp < lastUpdateTS + timeBuffer)
                revert TBillUpdateTooEarly(block.timestamp);
        }

        epoch++;
        isWeekend = _isWeekend;

        uint256 feeRate = feeManager.getManagementFeeRate();
        unClaimedFee += _calServiceFee(totalAssets(), feeRate);

        lastUpdateTS = block.timestamp;
        emit UpdateEpoch(unClaimedFee, epoch, isWeekend);
    }

    /**
     * @notice Set the flag indicating whether it's a weekend or not.
     * @dev Can only be called by the operator.
     * @param _isWeekend Boolean value indicating weekend status.
     */
    function setWeekendFlag(bool _isWeekend) external onlyOperator {
        isWeekend = _isWeekend;
        emit SetWeekendFlag(_isWeekend);
    }

    /**
     * @notice Claim a specified amount of service fees.
     * @dev Can only be called by the operator.
     * @param _amt Amount of service fees to be claimed.
     */
    function claimServiceFee(uint256 _amt) external onlyOperator {
        if (mgtFeeTreasury == address(0)) revert TBillZeroAddress();
        unClaimedFee -= _amt;

        SafeERC20Upgradeable.safeTransfer(
            IERC20Upgradeable(underlying),
            mgtFeeTreasury,
            _amt
        );
        emit ClaimServiceFee(mgtFeeTreasury, _amt);
    }

    /**
     * @notice Update the address that receives the tx fee.
     * @dev Can only be called by the contract owner.
     * @param _opl Address of the new treasury.
     */
    function setOplTreasury(address _opl) external onlyOwner {
        if (_opl == address(0)) revert TBillZeroAddress();
        oplTreasury = _opl;
        emit SetOplTreasury(_opl);
    }

    /**
     * @notice Update the address that receives the service fee.
     * @dev Can only be called by the contract owner.
     * @param _treasury Address of the new treasury.
     */
    function setMgtFeeTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert TBillZeroAddress();
        mgtFeeTreasury = _treasury;
        emit SetMgtFeeTreasury(_treasury);
    }

    /**
     * @notice Update the Fee Manager address.
     * @dev Can only be called by the contract owner.
     * @param _feeManager Address of the new Fee Manager.
     */
    function setFeeManager(address _feeManager) external onlyOwner {
        if (_feeManager == address(0)) revert TBillZeroAddress();
        feeManager = IFeeManager(_feeManager);
        emit SetFeeManager(_feeManager);
    }

    /**
     * @notice Update the KYC Manager address.
     * @dev Can only be called by the contract owner.
     * @param _kycManager Address of the new KYC Manager.
     */
    function setKycManager(address _kycManager) external onlyOwner {
        if (_kycManager == address(0)) revert TBillZeroAddress();
        kycManager = IKycManager(_kycManager);
        emit SetKycManager(_kycManager);
    }

    /**
     * @notice Set a new price feed for TBill/USD.
     * @dev Can only be called by the contract owner.
     * @param _priceFeed Address of the new price feed.
     */
    function setTBillPriceFeed(address _priceFeed) external onlyOwner {
        if (_priceFeed == address(0)) revert TBillZeroAddress();
        tbillUsdPriceFeed = IPriceFeed(_priceFeed);
        emit SetTBillPriceFeed(_priceFeed);
    }

    /**
     * @notice Update the Controller address.
     * @dev Can only be called by the contract owner.
     * @param _controller Address of the new Controller.
     */
    function setController(address _controller) external onlyOwner {
        if (_controller == address(0)) revert TBillZeroAddress();
        controller = IController(_controller);
        emit SetController(_controller);
    }

    /**
     * @notice Set a new address to receive the service fee.
     * @dev Can only be called by the contract owner.
     * @param _treasury Address of the new treasury.
     */
    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert TBillZeroAddress();
        treasury = _treasury;
        emit UpdateTreasury(_treasury);
    }

    /**
     * @notice Set a new address to receive the Q-treasury fee.
     * @dev Can only be called by the contract owner.
     * @param _qTreasury Address of the new Q-treasury.
     */
    function setQTreasury(address _qTreasury) external onlyOwner {
        if (_qTreasury == address(0)) revert TBillZeroAddress();
        qTreasury = _qTreasury;
        emit UpdateQTreasury(_qTreasury);
    }

    /**
     * @notice Set the partner ship contract address
     * @dev Can only be called by the contract owner.
     * @param _partnerShip Address of the new partner ship contract
     */
    function setPartnerShip(address _partnerShip) external onlyMaintainer {
        partnerShip = IPartnerShipV4(_partnerShip);
        emit SetPartnerShip(_partnerShip);
    }

    /**
     * @notice Set the maintainer address.
     * @dev Can only be called by the contract owner.
     * @param _maintainer Address of the new maintainer.
     */
    function setMaintainer(address _maintainer) external onlyOwner {
        maintainer = _maintainer;
        emit SetMaintainer(_maintainer);
    }

    /**
     * @notice Set the operator address.
     * @dev Can only be called by the contract owner.
     * @param _operators Array of operator addresses.
     * @param statuses Array of operator status.
     */
    function setOperator(
        address[] memory _operators,
        bool[] memory statuses
    ) external onlyMaintainer {
        for (uint i = 0; i < _operators.length; i++) {
            address op = _operators[i];
            bool status = statuses[i];
            operators[op] = status;
            emit SetOperator(op, status);
        }
    }

    /**
     * @notice Set the time buffer for the operator to call the updateEpoch function
     * @dev Can only be called by the contract maintainer
     * @param _timeBuffer Time buffer in seconds
     */
    function setTimeBuffer(uint256 _timeBuffer) external onlyMaintainer {
        timeBuffer = _timeBuffer;
        emit SetTimeBuffer(_timeBuffer);
    }

    /**
     * @notice Retrieve withdrawal queue information for a given index.
     * @param _index Index to retrieve data from.
     * @return sender The sender's address.
     * @return receiver The receiver's address.
     * @return shares The number of shares.
     * @return id The ID associated with the withdrawal.
     */
    function getWithdrawalQueueInfo(
        uint256 _index
    )
        external
        view
        returns (address sender, address receiver, uint256 shares, bytes32 id)
    {
        if (withdrawalQueue.empty() || _index > withdrawalQueue.length() - 1) {
            return (address(0), address(0), 0, 0x0);
        }

        bytes memory data = bytes(withdrawalQueue.at(_index));
        (sender, receiver, shares, id) = _decodeData(data);
    }

    /**
     * @notice Retrieve withdrawal information for a specific user that is in the queue.
     * @param _user Address of the user.
     * @return shares Number of shares associated with the user.
     */
    function getWithdrawalUserInfo(
        address _user
    ) external view returns (uint256 shares) {
        return withdrawalInfo[_user];
    }

    /**
     * @notice Retrieve the length of the withdrawal queue.
     * @return Length of the withdrawal queue.
     */
    function getWithdrawalQueueLength() external view returns (uint256) {
        return withdrawalQueue.length();
    }

    //////////////////////////////////////////////////////////////
    //                        PUBLIC FUNCTIONS                   //
    //////////////////////////////////////////////////////////////

    /**
     * @notice Compute the transaction fee for a given asset amount, minimum fee is 25 usdc by default
     * @param _type The Type of this action (Deposit or Redeem)
     * @param _sender The address of the asset's origin.
     * @param _assets Asset amount to compute fee for.
     * @return oeFee Calculated transaction fee for OpenEden.
     * @return pFee Calculated partnership fee (can be negative).
     * @return totalFee Total calculated fee.
     */
    function txsFee(
        ActionType _type,
        address _sender,
        uint256 _assets
    ) public view returns (uint256 oeFee, int256 pFee, uint256 totalFee) {
        uint256 feePct = feeManager.getTxFeePct(_type, isWeekend);
        oeFee = (_assets * feePct) / BPSUNIT; // OpenEden fee (always positive)

        if (
            address(partnerShip) != address(0) &&
            partnerShip.isChildHasParent(_sender)
        ) {
            int256 pfeePct = partnerShip.getFeeByChildAndAction(_sender, _type);
            pFee = (int256(_assets) * pfeePct) / int256(BPSUNIT); // Partnership fee can be negative
        }

        // Add OpenEden fee (oeFee) to the partnership fee (pFee) which can be negative
        int256 combinedFee = int256(oeFee) + pFee;

        // Ensure the total fee is non-negative
        totalFee = combinedFee < 0 ? 0 : uint256(combinedFee);

        // If pFee is positive, check for minimum transaction fee
        if (pFee >= 0) {
            uint256 minTxsFee = feeManager.getMinTxsFee();
            totalFee = totalFee < minTxsFee ? minTxsFee : totalFee;
        }
    }

    /**
     * @notice Retrieve the on-chain assets amount.
     * @return assetAmt Amount of on-chain assets.
     */
    function onchainAssets() public view returns (uint256 assetAmt) {
        return IERC20Upgradeable(underlying).balanceOf(address(this));
    }

    /**
     * @notice Calculates the total assets in USDC by multiplying the current total supply with the tbillUsdc rate.
     * @return assetAmt The total assets in USDC.
     */
    function totalAssets() public view returns (uint256 assetAmt) {
        assetAmt = (totalSupply() * tbillUsdcRate()) / tbillDecimalScaleFactor;
    }

    /**
     * @notice Converts the T-bill to USDC rate by dividing the tbill/usd rate by usdc/usd rate.
     * @return rate The conversion rate of T-bill to USDC.
     */
    function tbillUsdcRate() public view returns (uint256 rate) {
        (, int256 answer, , uint256 updatedAt, ) = tbillUsdPriceFeed
            .latestRoundData();
        uint256 tbillUsdPrice = uint256(answer);
        if (answer < 0 || tbillUsdPrice < ONE) revert TBillInvalidPrice(answer);

        // For example, the last update is Friday 8:10 SGT,
        // Public Holidays: Saturday 8:10 SGT, Sunday 8:10 SGT, Monday 8:10 SGT
        // Next update: Tuesday 8:10 SGT
        // normally, the price will be updated every day, the max delay is 24*4 hours due to the public holidays.
        // will use 7 days as the max delay, 3 days for buffer

        if (block.timestamp - updatedAt > 7 days)
            revert TBillPriceOutdated(updatedAt);

        rate = (tbillUsdPrice * tbillDecimalScaleFactor) / ONE;
    }

    /**
     * @notice Fetches the decimal places of the tbill token, same as the underlying token.
     * @return The number of decimal places.
     */
    function decimals() public view virtual override returns (uint8) {
        return underlying.decimals();
    }

    /**
     * @notice Gives a preview of the shares equivalent for the given assets.
     * @param _assets Amount of assets.
     * @return Equivalent shares for the given assets.
     */
    function previewDeposit(uint256 _assets) public view returns (uint256) {
        return _convertToShares(_assets);
    }

    /**
     * @notice Gives a preview of the assets equivalent for the given shares.
     * @param _shares Amount of shares.
     * @return Equivalent assets for the given shares.
     */
    function previewRedeem(
        uint256 _shares
    ) public view virtual returns (uint256) {
        return _convertToAssets(_shares);
    }

    /**
     * @notice Set the first deposit flag for the given investor.
     * @param _investor Address of the investor.
     * @param _flag Flag to set.
     */
    function setFirstDeposit(
        address _investor,
        bool _flag
    ) external onlyMaintainer {
        firstDepositMap[_investor] = _flag;
    }

    /**
     * @notice Set the redemption contract and token addresses.
     * @param _redemptionContract Address of the redemption contract.
     */
    function setRedemption(
        address _redemptionContract
    ) external onlyMaintainer {
        redemptionContract = IRedemption(_redemptionContract);
        emit SetRedemption(_redemptionContract);
    }

    /**
     * @notice Set the total supply cap.
     */
    function setTotalSupplyCap(uint256 _supplyCap) external onlyMaintainer {
        if (_supplyCap < totalSupply() || _supplyCap > type(uint256).max)
            revert TBillInvalidInput(_supplyCap);
        totalSupplyCap = _supplyCap;
        emit TotalSupplyCap(totalSupplyCap);
    }

    /**
     * @notice Burn tokens from a specific wallet. Only maintainer can call this function.
     * @dev This function allows the maintainer to burn tokens from any wallet without requiring approval.
     * @param _from The address to burn tokens from.
     * @param _amount The amount of tokens to burn.
     */
    function burnFrom(address _from, uint256 _amount) external onlyMaintainer {
        if (_from == address(0)) revert TBillZeroAddress();
        if (_amount == 0) revert TBillInvalidInput(_amount);
        if (balanceOf(_from) < _amount) revert TBillInvalidInput(_amount);

        _burn(_from, _amount);
        emit BurnFrom(_from, _amount);
    }

    /**
     * @notice Mint tokens to a specific wallet. Only maintainer can call this function.
     * @dev This function allows the maintainer to mint tokens to any wallet.
     * @param _to The address to mint tokens to.
     * @param _amount The amount of tokens to mint.
     */
    function mintTo(address _to, uint256 _amount) external onlyMaintainer {
        if (_to == address(0)) revert TBillZeroAddress();
        if (_amount == 0) revert TBillInvalidInput(_amount);
        // Check if minting would exceed the total supply cap
        if (totalSupply() + _amount > totalSupplyCap)
            revert TotalSupplyCapExceeded(
                totalSupply(),
                _amount,
                totalSupplyCap
            );

        // address(this) is a placeholder
        _validateKyc(address(this), _to);
        _mint(_to, _amount);
        emit MintTo(_to, _amount);
    }

    /**
     * @notice Reissue shares from one wallet to another.
     * @dev This function allows the maintainer to reissue shares from one wallet to another.
     * @param _oldWallet The address of the old wallet.
     * @param _newWallet The address of the new wallet.
     * @param _amount The amount of shares to reissue.
     */
    function reIssue(
        address _oldWallet,
        address _newWallet,
        uint256 _amount
    ) external onlyMaintainer {
        if (address(0) == _oldWallet || address(0) == _newWallet)
            revert TBillZeroAddress();
        if (_amount == 0) revert TBillInvalidInput(_amount);
        if (balanceOf(_oldWallet) < _amount) revert TBillInvalidInput(_amount);

        // address(this) is a placeholder
        _validateKyc(address(this), _newWallet);
        _burn(_oldWallet, _amount);
        _mint(_newWallet, _amount);
        emit ReIssue(_oldWallet, _newWallet, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                          INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Handles the deposit logic, converting assets into shares, managing fees, and updating relevant state.
     * @param _sender The sender of the assets.
     * @param _receiver The receiver of the shares.
     * @param _assets Amount of assets being deposited.
     */
    function _processDeposit(
        address _sender,
        address _receiver,
        uint256 _assets
    ) internal {
        (uint256 oeFee, int256 pFee, uint256 totalFee) = txsFee(
            ActionType.DEPOSIT,
            _sender,
            _assets
        );

        uint256 trimmedAssets = _assets - totalFee;
        uint256 shares = _convertToShares(trimmedAssets);

        if (totalSupply() + shares > totalSupplyCap)
            revert TotalSupplyCapExceeded(
                totalSupply(),
                shares,
                totalSupplyCap
            );

        // collect the fee
        if (totalFee > 0) {
            SafeERC20Upgradeable.safeTransferFrom(
                IERC20Upgradeable(underlying),
                _sender,
                oplTreasury,
                totalFee
            );
        }

        _deposit(_sender, _receiver, trimmedAssets, shares, treasury);
        emit ProcessDeposit(
            _sender,
            _receiver,
            _assets,
            shares,
            oeFee,
            pFee,
            totalFee,
            oplTreasury,
            treasury
        );
    }

    /**
     * @dev Internal function to process a withdrawal.
     * @param _sender Address of the sender.
     * @param _receiver Address of the receiver.
     * @param _shares Number of shares to withdraw.
     */
    function _processWithdraw(
        address _sender,
        address _receiver,
        uint256 _shares
    ) internal {
        withdrawalInfo[_receiver] += _shares;

        bytes32 id = keccak256(
            abi.encode(
                _sender,
                _receiver,
                _shares,
                block.timestamp,
                withdrawalQueue.length()
            )
        );

        bytes memory data = abi.encode(_sender, _receiver, _shares, id);
        withdrawalQueue.pushBack(data);

        _transfer(_sender, address(this), _shares);
        emit AddToWithdrawalQueue(_sender, _receiver, _shares, id);
    }

    function _processWithdrawIns(
        address _sender,
        address _receiver,
        uint256 _shares,
        uint256 _assets, // USDC
        uint256 _totalFee
    ) internal returns (uint256) {
        // transfer shares from sender to vault
        _transfer(_sender, address(this), _shares);

        // there may have some rounding error, so add 1e6 to avoid it
        uint256 usdcReceived = redemptionContract.redeem(_assets + 1e6);

        if (usdcReceived < _assets)
            revert TBillReceiveUSDCFailed(usdcReceived, _assets);

        // using _assets instead of usdcReceived by intention
        // the over-redeemed USDC will be off-ramped to the treasury
        uint256 _assetsToUser = _assets - _totalFee;

        // transfer assets to receiver
        _withdraw(
            address(this),
            _receiver,
            address(this),
            _assetsToUser,
            _shares
        );

        // transfer fee to treasury
        if (_totalFee > 0) {
            SafeERC20Upgradeable.safeTransfer(
                IERC20Upgradeable(underlying),
                oplTreasury,
                _totalFee
            );
        }

        emit ProcessWithdraw(
            _sender,
            _receiver,
            _assets,
            _shares,
            _assetsToUser,
            _shares,
            0,
            0,
            _totalFee,
            0x0,
            oplTreasury
        );
        return _assetsToUser;
    }

    /**
     * @dev Converts the number of shares to asset amount.
     * @param _shares Number of shares to convert.
     * @return assets Equivalent asset amount.
     */
    function _convertToAssets(
        uint256 _shares
    ) internal view returns (uint256 assets) {
        assets = _shares.mulDiv(tbillUsdcRate(), tbillDecimalScaleFactor);
    }

    /**
     * @dev Converts asset amount to the equivalent number of shares.
     * @param _assets Asset amount to convert.
     * @return shares Equivalent number of shares.
     */
    function _convertToShares(
        uint256 _assets
    ) internal view returns (uint256 shares) {
        shares = _assets.mulDiv(tbillDecimalScaleFactor, tbillUsdcRate());
    }

    /**
     * @dev Off-ramp function to transfer the specified token amount.
     * @param _token The token to transfer.
     * @param _to Destination address.
     * @param _amt Amount of token to transfer.
     */
    function _offRamp(address _token, address _to, uint256 _amt) internal {
        SafeERC20Upgradeable.safeTransfer(IERC20Upgradeable(_token), _to, _amt);
    }

    /**
     * @dev Hook that gets called before tokens are transferred. Used for KYC validations.
     * @param _from Sender address.
     * @param _to Receiver address.
     */
    function _beforeTokenTransfer(
        address _from,
        address _to,
        uint256
    ) internal view override {
        /* _mint() or _burn() will set one of to address(0)
         *  no need to limit for these scenarios
         */
        if (_from == address(0) || _to == address(0) || _from == address(this))
            return;

        _validateKyc(_from, _to);
    }

    /**
     * @dev Authorizes a new implementation upgrade.
     * @param _newImpl Address of the new implementation.
     */
    function _authorizeUpgrade(address _newImpl) internal override onlyOwner {}

    /**
     * @dev Calculate service fee for given asset amount.
     * @param _assets Asset amount.
     * @param _rate Rate for calculating service fee.
     * @return fee Calculated service fee.
     */
    function _calServiceFee(
        uint256 _assets,
        uint256 _rate
    ) internal pure returns (uint256 fee) {
        fee = (_assets * _rate) / (365 * BPSUNIT);
    }

    /**
     * @dev Common workflow for depositing/minting.
     * @param _sender Sender's address.
     * @param _receiver Receiver's address.
     * @param _assets Amount of assets to deposit.
     * @param _shares Number of shares to mint.
     * @param _assetsTo Address to transfer the assets to.
     */
    function _deposit(
        address _sender,
        address _receiver,
        uint256 _assets,
        uint256 _shares,
        address _assetsTo
    ) internal {
        SafeERC20Upgradeable.safeTransferFrom(
            IERC20Upgradeable(underlying),
            _sender,
            _assetsTo,
            _assets
        );
        _mint(_receiver, _shares);

        emit Deposit(_receiver, _assets, _shares);
    }

    /**
     * @dev Common workflow for withdrawing/redeeming.
     * @param _caller Caller's address.
     * @param _receiver Receiver's address.
     * @param _owner Owner's address.
     * @param _assets Amount of assets to withdraw.
     * @param _shares Number of shares to burn.
     */
    function _withdraw(
        address _caller,
        address _receiver,
        address _owner,
        uint256 _assets,
        uint256 _shares
    ) internal {
        if (_caller != _owner) {
            _spendAllowance(_owner, _caller, _shares);
        }

        _burn(_owner, _shares);
        SafeERC20Upgradeable.safeTransfer(
            IERC20Upgradeable(underlying),
            _receiver,
            _assets
        );

        emit Withdraw(_caller, _receiver, _owner, _assets, _shares);
    }

    /**
     * @dev Decodes a given data bytes into its components.
     * @param _data Encoded data bytes.
     * @return sender Sender's address.
     * @return receiver Receiver's address.
     * @return shares Number of shares.
     * @return prevId Previous ID.
     */
    function _decodeData(
        bytes memory _data
    )
        internal
        pure
        returns (
            address sender,
            address receiver,
            uint256 shares,
            bytes32 prevId
        )
    {
        (sender, receiver, shares, prevId) = abi.decode(
            _data,
            (address, address, uint256, bytes32)
        );
    }

    /**
     * @dev Validates the KYC status of the given addresses.
     * @param _from Sender's address.
     * @param _to Receiver's address.
     */
    function _validateKyc(address _from, address _to) internal view {
        bool res = kycManager.isKyc(_from) &&
            kycManager.isKyc(_to) &&
            !kycManager.isBanned(_from) &&
            !kycManager.isBanned(_to);

        if (!res) revert TBillInvalidateKyc(_from, _to);
    }
}
