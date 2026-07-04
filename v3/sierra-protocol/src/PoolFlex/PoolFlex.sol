// Sources flattened with hardhat v2.22.19 https://hardhat.org

// SPDX-License-Identifier: MIT

// File @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

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


// File @openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

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


// File @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

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


// File @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File @openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

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


// File @openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20PermitUpgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File @openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

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


// File @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File @openzeppelin/contracts/token/ERC20/IERC20.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

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
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}


// File @openzeppelin/contracts/utils/Address.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

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


// File @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

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
library SafeERC20 {
    using Address for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
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
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
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
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
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
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}


// File contracts/interfaces/IPoolFlexStructures.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

struct IPoolAccountingsFlex {
  uint256 interestRate;
  uint256 dailyInterestRate;
  uint256 totalPrincipalEarningInterest;
  uint256 totalInterestAccrued;
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 exchangeRate;
  uint256 lastDayAccrued;
  uint256 totalFees;
  uint256 feesOutstanding;
  uint256 interstRateSetTime;
}

struct IPoolConfigurationStateFlex {
  address poolAddr;
  uint256 dailyOriginationFeeRate;
  uint256 originationFee;
  uint256 closeOfDepositTime;
  uint256 closeOfWithdrawTime;
  uint256 transferInDays;
  uint256 transferOutDays;
  address liquidityAssetAddr;
  address poolAdminAddr;
  address poolControllerAddr;
  address withdrawControllerAddr;
  address borrowerVaultAddr;
  string name;
  string symbol;
  address borrowerManagerAddr;
  address borrowerWalletAddr;
  uint256 maxCapacity;
  uint64[] nonBusinessDays;
  address businessDayRegistryAddr;
}

struct IPoolOverviewStateFlex {
  address poolAddr;
  uint256 interestRate;
  uint256 dailyInterestRate;
  uint256 totalPrincipalEarningInterest;
  uint256 totalInterestAccrued;
  uint256 totalAssetsDeposited;
  uint256 totalAssetsWithdrawn;
  uint256 exchangeRate;
  uint256 totalSupply;
  uint256 totalRequestedShares;
  uint256 totalRequestedAssets;
  uint256 totalAssetsTransitioningIn;
  uint256 totalSharesTransitioningIn;
  uint256 totalAssetsDueForWithdraws;
  uint256 totalFees;
  uint256 feesOutstanding;
  uint64[] nonBusinessDays;
  uint8 state;
  uint256 lastDayAccrued;
}

struct IPoolAccountStateFlex {
  address poolAddr;
  address accountAddr;
  uint256 tokenBalance;
  uint256 maxWithdrawRequest;
  uint256 maxRedeemRequest;
  uint256 requestedSharesOf;
  uint256 requestedAssetsOf;
  uint256 principalEarningInterest;
  uint256 interestAccrued;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
  uint256 sharesTransitioningIn;
  uint256 assetsTransitioningIn;
  uint256 assetsDueForWithdraws;
  uint256 sharesDueForWithdraws;
}

struct PoolAddressListFlex {
  address liquidityAsset;
  address poolAdmin;
  address serviceConfiguration;
  address withdrawDepositControllerFactoryFlex;
  address poolControllerFactoryFlex;
  address vaultFactory;
  address poolAccessControlFactory;
  address businessDayRegistryFactory;
}
/**
 * @dev Expresses the various states a pool can be in throughout its lifecycle.
 */
enum IPoolLifeCycleStateFlex {
  Initialized,
  Active,
  Closed,
  DisruptionOrDefault
}

/**
 * @title The various configurable settings that customize Pool behavior.
 */
struct IPoolConfigurableSettingsFlex {
  uint256 maxCapacity; // amount
  address borrowerManagerAddr;
  address borrowerWalletAddr;
  uint256 closeOfDepositTime;
  uint256 closeOfWithdrawTime;
  uint256 originationFee;
  uint256 dailyOriginationFeeRate;
  uint256 transferInDays;
  uint256 transferOutDays;
}

struct IPoolLenderWithdrawEvent {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  uint256 transferOutDayTimestamp;
  uint256 requestTimestamp;
  address lender;
  uint256 eventId;
}

struct IPoolLenderTotals {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  address lender;
  uint256 assetsDeposited;
  uint256 assetsWithdrawn;
  uint256 sharesTransitioningIn;
  uint256 assetsTransitioningIn;
  uint256 assetsDueForWithdraws;
  uint256 sharesDueForWithdraws;
}

struct IDailyWithdrawTotals {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
  uint256 transferOutDayTimestamp;
}

struct IPoolWithdrawTotal {
  uint256 requestedShares; // Number of shares requested in the `latestPeriod`
  uint256 requestedAssets;
}

struct IPoolLenderDepositEvent {
  uint256 mintedShares;
  uint256 depositedAssets;
  uint256 transferInDayTimestamp;
  address lender;
}

struct IDailyDepositTotals {
  uint256 mintedShares;
  uint256 depositedAssets;
  uint256 transferInDayTimestamp;
}

struct IPoolDepositsTotal {
  uint256 mintedShares;
  uint256 depositedAssets;
}

struct ICrossChainTransferFlexState {
  uint256 amount;
  bool isCrossChainSource;
}


// File contracts/controllers/interfaces/IPoolControllerFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title A Pool's Admin controller
 * @dev Pool Admin's interact with the pool via the controller, including funding loans and adjusting
 * settings.
 */
interface IPoolControllerFlex {
  /**
   * @dev Emitted when pool settings are updated.
   */
  event PoolSettingsUpdated();

  /**
   * @dev Emitted when the pool transitions a lifecycle state.
   */
  event LifeCycleStateTransition(IPoolLifeCycleStateFlex state);

  /**
   * @dev Emitted when a pool is marked as in DisruptionOrDefault.
   */
  event DisruptionOrDefault(address indexed pool);

  event Rescheduled(address indexed pool);

  function version() external returns (uint16);

  /**
   * @dev The Pool's admin
   */
  function admin() external view returns (address);

  /*//////////////////////////////////////////////////////////////
                Settings
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (IPoolConfigurableSettingsFlex memory);

  function serviceConfiguration() external view returns (address);

  /**
   * @dev Allow the current pool admin to update the pool capacity at any
   * time.
   */
  function updatePoolSettings(IPoolConfigurableSettingsFlex memory poolSettings_) external;

  function dailyOriginationFeeRate() external view returns (uint256);

  function originationFee() external view returns (uint256);

  function closeOfDepositTime() external view returns (uint256);

  function closeOfWithdrawTime() external view returns (uint256);

  function transferInDays() external view returns (uint256);

  function transferOutDays() external view returns (uint256);

  function borrowerManagerAddr() external view returns (address);

  function borrowerWalletAddr() external view returns (address);

  function disruptionOrDefault() external;

  /**
   * @dev Returns the current pool lifecycle state.
   */
  function state() external view returns (IPoolLifeCycleStateFlex);

  function activatePool() external;

  function crossChainTransferApproveSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external;

  function crossChainTransferApproveDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external;

  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external;
}


// File contracts/controllers/interfaces/IWithdrawDepositControllerFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title A Pool's Withdraw controller
 * @dev Holds state related to withdraw requests, and logic for snapshotting the
 * pool's liquidity reserve at regular intervals, earmarking funds for lenders according
 * to their withdrawal requests.
 */
interface IWithdrawDepositControllerFlex {
  function version() external pure returns (uint16);

  function poolAddr() external view returns (address);

  function pool() external view returns (address); // back compatible

  function feeVaultAddr() external view returns (address);

  function borrowerVaultAddr() external view returns (address);

  function lenderTotals(address lender) external view returns (IPoolLenderTotals memory);

  function borrowerVault() external view returns (address); // back compatible

  function borrowerWallet() external view returns (address);

  function borrowerWalletAddr() external view returns (address);

  function dailyInterestAccural(uint256 currentDay) external returns (uint256 inflows);

  function deposit(
    address lender,
    uint256 assets,
    uint256 exchangeRate,
    uint256 interestRate
  ) external returns (uint256 inflows, uint256 shares, uint256 transferInDayTimestamp);

  /*//////////////////////////////////////////////////////////////
                            Balance Views
    //////////////////////////////////////////////////////////////*/
  function drawDownToBorrowerWallet(uint256 amount) external;

  function requestedSharesOf(address owner) external view returns (uint256 shares);

  function requestedAssetsOf(address owner) external view returns (uint256 assets);

  function totalAssetsTransitioningIn() external view returns (uint256 assets);

  function totalSharesTransitioningIn() external view returns (uint256 shares);

  /**
   * @dev Returns the number of shares that are available to be redeemed by
   * the owner in the current block.
   */
  function totalRequestedShares() external view returns (uint256 shares);

  function totalRequestedAssets() external view returns (uint256 assets);

  /*//////////////////////////////////////////////////////////////
                            Max Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Returns the maximum number of `shares` that can be
   * requested to be redeemed from the owner balance with a single
   * `requestRedeem` call in the current block.
   *
   * Note: This is equivalent of EIP-4626 `maxRedeem`
   */
  function maxRedeemRequest(address) external view returns (uint256);

  /*//////////////////////////////////////////////////////////////
                            Request Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Requests redeeming a specific number of `shares` and `assets` from
   * the pool.
   *
   * NOTE: The pool is responsible for handling any fees, and for providing
   * the proper shares/assets ratio.
   */
  function performRequest(address, uint256, uint256) external;

  /*//////////////////////////////////////////////////////////////
                            Withdraw / Redeem
    //////////////////////////////////////////////////////////////*/

  function totalAssetsDueForWithdraws() external view returns (uint256);

  function releaseWithdrawal(uint256 eventId) external returns (IPoolLenderWithdrawEvent memory ev);

  function withdrawEvents() external view returns (IPoolLenderWithdrawEvent[] memory);

  function repayLoans(uint256 assets) external;

  function tokenTransfer(address from, address to, uint256 assetAmount) external;

  function crossChainTransferApproveSource(address sourceWalletAddr, uint256 amount) external;
  function crossChainTransferApproveDestination(address destinationWalletAddr, uint256 amount) external;

  function crossChainTransferBurnSource(address destinationWalletAddr, uint256 amount) external;
  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external;

  function crossChainTransferStatus(address walletAddr) external view returns (uint256 amount, bool isCrossChainSource);
}


// File contracts/factories/interfaces/IPoolControllerFactoryFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Interface for the PoolController factory.
 */
interface IPoolControllerFactoryFlex {
  /**
   * @dev Emitted when a pool is created.
   */
  event PoolControllerCreated(address indexed pool, address indexed addr);

  /**
   * @dev Creates a pool's PoolAdmin controller
   * @dev Emits `PoolControllerCreated` event.
   */
  function createController(
    address pool,
    address serviceConfiguration,
    address admin,
    address liquidityAsset,
    IPoolConfigurableSettingsFlex memory poolSettings
  ) external returns (address);
}


// File contracts/interfaces/IPoolAccessControl.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title The interface for controlling access to Pools
 */
interface IPoolAccessControl {
  /**
   * @dev Check if an address is allowed as a participant in the pool
   * @param addr The address to verify
   * @return whether the address is allowed as a participant
   */
  function isAllowed(address addr) external view returns (bool);
}


// File contracts/interfaces/IRequestWithdrawable.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Interface that exposes methods to request withdraws / redeems.
 * @dev Terminology and design informed to complement ERC4626.
 */
interface IRequestWithdrawable {
  /**
   * @dev Returns the maximum number of `shares` that can be
   * requested to be redeemed from the owner balance with a single
   * `requestRedeem` call in the current block.
   *
   * Note: This is equivalent of EIP-4626 `maxRedeem`
   */
  function maxRedeemRequest(address owner) external view returns (uint256 maxShares);

  /**
   * @dev Returns the maximum amount of underlying `assets` that can be
   * requested to be withdrawn from the owner balance with a single
   * `requestWithdraw` call in the current block.
   *
   * Note: This is equivalent of EIP-4626 `maxWithdraw`
   */
  function maxWithdrawRequest(address owner) external view returns (uint256 maxAssets);

  /**
   * @dev Simulate the effects of a redeem request at the current block.
   * Returns the amount of underlying assets that would be requested if this
   * entire redeem request were to be processed at the current block.
   *
   * Note: This is equivalent of EIP-4626 `previewRedeem`
   */
  function previewRedeemRequest(uint256 shares) external view returns (uint256 assets);

  /**
   * @dev Simulate the effects of a withdrawal request at the current block.
   * Returns the amount of `shares` that would be burned if this entire
   * withdrawal request were to be processed at the current block.
   *
   * Note: This is equivalent of EIP-4626 `previewWithdraw`
   */
  function previewWithdrawRequest(uint256 assets) external view returns (uint256 shares);
}


// File contracts/interfaces/IServiceConfiguration.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

struct SerivceAddressList {
  address[] liquidityAssets;
  address tosAcceptanceRegistry;
  address loanFactory;
  address poolFactoryAddress;
  address queryLibAddress;
  address poolLibAddress;
  address loanLibAddress;
  address poolControllerFactoryAddress;
  address withdrawControllerFactoryAddress;
  address vaultFactoryAddress;
  address poolAccessControlFactoryAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface IServiceConfiguration {
  /**
   * @dev Emitted when an address is changed.
   */
  event AddressSet(bytes32 which, address addr);

  /**
   * @dev Emitted when a liquidity asset is set.
   */
  event LiquidityAssetSet(address addr, bool value);

  /**
   * @dev Emitted when a parameter is set.
   */
  event ParameterSet(bytes32, uint256 value);

  /**
   * @dev Emitted when the protocol is paused.
   */
  event ProtocolPaused(bool paused);

  /**
   * @dev Emitted when a loan factory is set
   */
  event LoanFactorySet(address indexed factory);
  event PoolFactorySet(address indexed factory);
  event QueryLibSet(address indexed factory);
  event LoanLibSet(address indexed factory);
  event PoolLibSet(address indexed factory);
  event PoolAdminWalletSet(address indexed factory);

  /**
   * @dev Emitted when the TermsOfServiceRegistry is set
   */
  event TermsOfServiceRegistrySet(address indexed registry);

  /**
   * @dev checks if a given address has the Operator role
   */
  function isOperator(address addr) external view returns (bool);

  /**
   * @dev checks if a given address has the Deployer role
   */
  function isDeployer(address addr) external view returns (bool);

  /**
   * @dev checks if a given address has the Deployer role
   */
  function isPoolAdmin(address addr) external view returns (bool);

  /**
   * @dev checks if a given address has the Deployer role
   */
  function isBorrower(address addr) external view returns (bool);

  /**
   * @dev Whether the protocol is paused.
   */
  function paused() external view returns (bool);

  /**
   * @dev Whether an address is supported as a liquidity asset.
   */
  function isLiquidityAsset(address addr) external view returns (bool);

  /**
   * @dev Address of the Terms of Service acceptance registry.
   */
  function tosAcceptanceRegistry() external view returns (address);

  /**
   * @dev Sets whether a loan factory is valid
   * @param addr Address of loan factory
   */
  function setLoanFactory(address addr) external;

  function setPoolFactory(address addr) external;

  function setQueryLib(address addr) external;

  function setPoolLib(address addr) external;

  function setLoanLib(address addr) external;

  function getLoanFactory() external view returns (address);

  function getPoolFactory() external view returns (address);

  function getQueryLib() external view returns (address);

  function getLoanLib() external view returns (address);

  function getPoolLib() external view returns (address);

  function setPoolAdminWallet(address addr) external;

  function getPoolAdminWallet() external view returns (address);

  /**
   * @dev Sets the ToSAcceptanceRegistry for the protocol
   * @param addr Address of registry
   */
  function setToSAcceptanceRegistry(address addr) external;

  /**
   * @dev Sets supported liquidity assets for the protocol. Callable by the operator.
   * @param addr Address of liquidity asset
   * @param value Whether supported or not
   */
  function setLiquidityAsset(address addr, bool value) external;

  function getServiceAddressList() external view returns (SerivceAddressList memory setLoanFactoryerivceAddressList);
}


// File contracts/interfaces/IServiceConfigurationV3.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

struct SerivceAddressListV3 {
  address[] liquidityAssets;
  address tosAcceptanceRegistry;
  address loanFactory;
  address poolFactoryAddress;
  address poolFactoryFlexAddress;
  address queryLibAddress;
  address poolLibAddress;
  address poolLibFlexAddress;
  address loanLibAddress;
  address poolControllerFactoryAddress;
  address withdrawControllerFactoryAddress;
  address vaultFactoryAddress;
  address poolAccessControlFactoryAddress;
  address poolControllerFactoryFlexAddress;
  address withdrawDepositControllerFactoryFlexAddress;
  address poolRegistryAddress;
}

enum IFactoryType {
  PoolFactory,
  LoanFactory,
  VaultFactory,
  PoolFactoryFlex,
  PoolControllerFactory,
  PoolLibFlex,
  PoolControllerFactoryFlex,
  WithdrawDepositControllerFactoryFlex,
  WithdrawControllerFactory,
  PoolAccessControlFactory,
  PoolFactoryDynamic,
  FeeCollector
}
struct LegacyFactoryStruct {
  IFactoryType factoryType;
  address factoryAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface IServiceConfigurationV3 is IServiceConfiguration {
  event PoolFactoryFlexSet(address indexed factory);

  event PoolLibFlexSet(address indexed factory);

  event PoolRegistrySet(address indexed factory);

  function version() external pure returns (uint16);

  function isAutomation(address addr) external view returns (bool);

  function setPoolFactoryFlex(address addr) external;

  function setPoolLibFlex(address addr) external;

  function setPoolRegistry(address addr) external;

  function getPoolRegistry() external view returns (address);

  function getPoolFactoryFlex() external view returns (address);

  function getPoolLibFlex() external view returns (address);

  function getLegacyFactories() external view returns (LegacyFactoryStruct[] memory legacyFactories);

  function getServiceAddressListV3() external view returns (SerivceAddressListV3 memory addressList);
}


// File contracts/interfaces/IServiceConfigurationV5.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

struct SerivceAddressListV5 {
  address[] liquidityAssets;
  address tosAcceptanceRegistry;
  address loanFactory;
  address poolFactoryAddress;
  address poolFactoryFlexAddress;
  address queryLibAddress;
  address poolLibAddress;
  address poolLibFlexAddress;
  address loanLibAddress;
  address poolControllerFactoryAddress;
  address withdrawControllerFactoryAddress;
  address vaultFactoryAddress;
  address poolAccessControlFactoryAddress;
  address poolControllerFactoryFlexAddress;
  address withdrawDepositControllerFactoryFlexAddress;
  address poolRegistryAddress;
  address poolFactoryDynamicAddress;
  address poolControllerFactoryDynamicAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface IServiceConfigurationV5 is IServiceConfigurationV3 {
  event PoolFactoryDynamicSet(address indexed factory);

  function isFeeCollector(address addr) external view returns (bool);
  function isFiatGateway(address addr) external view returns (bool);
  function getPoolFactoryDynamic() external view returns (address);
  function setPoolFactoryDynamic(address addr) external;

  function getServiceAddressListV5()
    external
    view
    returns (SerivceAddressListV5 memory setLoanFactoryerivceAddressList);
}


// File contracts/interfaces/IPoolBase.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;



enum IPoolType {
  TermPool,
  FlexRatePool,
  DynamicPool
}

interface IPoolBase is IERC20Upgradeable, IRequestWithdrawable {
  function poolType() external view returns (IPoolType);

  function liquidityAssetAddr() external view returns (address);

  /**
   * @dev The ServiceConfiguration.
   */
  function serviceConfiguration() external view returns (IServiceConfigurationV5);

  /**
   * @dev The admin for the pool.
   */
  function admin() external view returns (address);

  function borrowerManagerAddr() external view returns (address);

  function borrowerWalletAddr() external view returns (address);

  function poolAccessControl() external view returns (IPoolAccessControl);

  function isPermittedLender(address) external view returns (bool);
}


// File contracts/interfaces/IBusinessDayRegistry.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title The interface for interacting with IBusinessDayRegistry
 */

interface IBusinessDayRegistry {
  event AddHoliday(uint256 _timestamp);

  function isBusinessDay(uint64 _timestamp) external view returns (bool);

  function isHoliday(uint64 _timestamp) external view returns (bool);

  function isWeekDay(uint64 _timestamp) external pure returns (bool);

  function addHoliday(uint64 _timestamp) external;

  function toMidnight(uint64 _timestamp) external pure returns (uint64);

  function nonBusinessDays() external view returns (uint64[] memory);

  function updateNonBusinessDays(uint64[] memory _timestamps) external;

  function businessDaysToCalendarDays(
    uint64 _timestamp,
    uint256 depositCutoffTime,
    uint256 transferBusinessDays
  ) external view returns (uint8 numberOfDays, uint256 transferDayTimestamp);
}


// File contracts/interfaces/IPoolFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;


// import "./IERC4626.sol";
// import "./IServiceConfigurationV5.sol";
// import "./IRequestWithdrawable.sol";


// import "../interfaces/IPoolAccessControl.sol";

/**
 * @title The interface for liquidity pools.
 */
interface IPoolFlex is IPoolBase {
  /**
   * @dev Emitted when tokens are deposited into the vault via the mint and deposit methods.
   */
  event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

  /**
   * @dev Emitted when shares are withdrawn from the vault by a depositor in the redeem or withdraw methods.
   */
  event Withdraw(
    address indexed sender,
    address indexed receiver,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );

  /**W
   * @dev The PoolController contract
   */
  function poolController() external view returns (IPoolControllerFlex);

  /**
   * @dev The WithdrawController contract
   */
  function withdrawDepositController() external view returns (IWithdrawDepositControllerFlex);

  /**
   * @dev The current configurable pool settings.
   */
  function settings() external view returns (IPoolConfigurableSettingsFlex calldata settings);

  function version() external view returns (uint16);
  /**
   * @dev The current pool state.
   */
  function state() external view returns (IPoolLifeCycleStateFlex);

  function borrowerVaultAddr() external view returns (address);

  /**
   * @dev The pool accounting variables;
   */
  function accountings() external view returns (IPoolAccountingsFlex memory);

  function closeOfWithdrawTime() external view returns (uint256);

  function closeOfDepositTime() external view returns (uint256);

  function transferInDays() external view returns (uint256);

  function transferOutDays() external view returns (uint256);

  function businessDayRegistry() external view returns (IBusinessDayRegistry);

  /**
   * @dev Callback from the pool controller when the pool is activated
   */
  function onActivated() external;

  function setDailyInterestRate(uint256 _interestRate, uint256 _estimatedDailyRate) external;

  function dailyInterestAccural() external;

  function applyDailyRate(uint256 principal) external returns (uint256);

  function annualAPRToDailyRate(
    uint256 annualAPR,
    uint256 _estimatedDailyRate
  ) external view returns (uint256 _dailyInterestRate);

  function interestRate() external view returns (uint256 assets);

  function exchangeRate() external view returns (uint256 _exchangeRate);

  function getPoolConfiguration() external view returns (IPoolConfigurationStateFlex memory);

  function getPoolOverview() external view returns (IPoolOverviewStateFlex memory);

  function getPoolAccountState(address accountAddr) external view returns (IPoolAccountStateFlex memory);

  /**
   * @dev Calculate the total amount of underlying assets held by the vault,
   * excluding any assets due for withdrawal.
   */
  function totalAvailableAssets() external view returns (uint256);
  /**
   * @dev The sum of all assets available in the liquidity pool, excluding
   * any assets that are marked for withdrawal.
   */
  function liquidityPoolAssets() external view returns (uint256);

  /**
   * @dev The total available supply that is not marked for withdrawal
   */
  function totalAvailableSupply() external view returns (uint256);

  function convertToShares(uint256 assets) external view returns (uint256 shares);

  function convertToAssets(uint256 shares) external view returns (uint256 assets);

  function deposit(uint256 assets, address lender) external returns (uint256 shares, uint256 transferInDayTimestamp);

  function totalAssetsDueForWithdraws() external view returns (uint256);

  function feesPaidDown(uint256 paidAmount) external;

  function withdrawEvents() external view returns (IPoolLenderWithdrawEvent[] memory);

  function releaseWithdrawal(uint256 eventId) external returns (IPoolLenderWithdrawEvent memory ev);

  function repayLoans(uint256 assets, uint256 eventId) external;

  function nonBusinessDays() external view returns (uint64[] memory);

  function updateNonBusinessDays(uint64[] memory _timestamps) external;

  function topOffSharesDueToExchangeRateDecrease(address lender, uint256 catchupShares) external;
  /**
   * @dev Submits a withdrawal request, incurring a fee.
   */
  function requestRedeem(uint256 shares) external returns (uint256 assets);

  function crossChainTransferApproveSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external;

  function crossChainTransferApproveDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external;

  function crossChainTransferBurnSource(uint256 amount) external;

  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external;

  function crossChainTransferStatus(address walletAddr) external returns (uint256 amount, bool isCrossChainSource);

  function activatedAt() external view returns (uint256);

  function maxDeposit(address owner) external view returns (uint256);
}


// File contracts/interfaces/IVault.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Interface for the Vault.
 * @dev Vaults simply hold a balance, and allow withdrawals by the Vault's owner.
 */
interface IVault {
  /**
   * @dev Emitted on ERC20 withdrawals
   */
  event WithdrewERC20(address indexed asset, uint256 amount, address indexed receiver);
  event TransferToFiatGateway(address indexed asset, uint256 amount, address indexed receiver);
  /**
   * @dev Emitted on ERC721 withdrawals
   */
  event WithdrewERC721(address indexed asset, uint256 tokenId, address receiver);

  /**
   * @dev Withdraws ERC20 of a given asset
   */
  function withdrawERC20(address asset, uint256 amount, address receiver) external;

  /**
   * @dev Withdraws ERC20 of a given asset
   */
  function withdrawERC20ToBorrowerWallet(address asset, uint256 amount) external;

  function payFees(address asset, uint256 amount) external;

  function repayLoan(address asset, uint256 amount) external;

  /**
   * @dev Withdraws ERC721 with specified tokenId
   */
  function withdrawERC721(address asset, uint256 tokenId, address receiver) external;
}


// File @openzeppelin/contracts/utils/math/Math.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File @openzeppelin/contracts/utils/math/SafeMath.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
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
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
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
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}


// File @openzeppelin/contracts/utils/structs/EnumerableSet.sol@v4.9.6

// Original license: SPDX_License_Identifier: MIT
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


// File contracts/interfaces/IPoolRegistry.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title The interface for interacting with Terms of Service Acceptance Registry.
 */
interface IPoolRegistry {
  function version() external pure returns (uint16);

  function addPool(address pool) external;

  function pools() external returns (address[] memory);

  function updatePoolData(address poolAddr) external;

  function isPoolRegistered(address poolAddr) external view returns (bool);
}


// File contracts/libraries/PoolLibFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;








/**
 * @title Collection of functions used by the Pool and PoolController.
 */
library PoolLibFlex {
  using SafeERC20 for IERC20;
  using SafeMath for uint256;
  using EnumerableSet for EnumerableSet.AddressSet;

  event PoolDeposit(address indexed lender, uint256 assets, uint256 shares, uint256 transferInDayTimestamp);
  event CrossChainTransferBurnSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    uint256 amount,
    uint256 shares
  );
  event CrossChainTransferMintDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address sourceWalletAddr,
    uint256 amount
  );
  event RedeemRequested(address indexed lender, uint256 assets, uint256 shares);

  event RepayToPoolProcessed(address indexed lender, uint256 indexed eventId, uint256 shares, uint256 assets);
  error ZeroDeposit(uint256, uint256, address);
  error ExceedsMaxDeposit(uint256, uint256, address);
  error PoolInvalidState();
  error AccuralCalledTooEarly(uint256, uint256);
  error InvalidRepayment();
  error InterestRateTooHigh(uint256);
  uint256 public constant RAY = 10 ** 27;

  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  function getPoolFlexConfigurationState(
    address pool
  ) public view returns (IPoolConfigurationStateFlex memory _poolConfigurationState) {
    IPoolFlex poolFlex = IPoolFlex(pool);
    IPoolControllerFlex poolController = IPoolControllerFlex(address(poolFlex.poolController()));

    return
      IPoolConfigurationStateFlex({
        poolAddr: pool,
        dailyOriginationFeeRate: poolController.dailyOriginationFeeRate(),
        originationFee: poolController.originationFee(),
        closeOfDepositTime: poolController.closeOfDepositTime(),
        closeOfWithdrawTime: poolController.closeOfWithdrawTime(),
        transferInDays: poolController.transferInDays(),
        transferOutDays: poolController.transferOutDays(),
        liquidityAssetAddr: poolFlex.liquidityAssetAddr(),
        poolAdminAddr: poolFlex.admin(),
        poolControllerAddr: address(poolFlex.poolController()),
        withdrawControllerAddr: address(poolFlex.withdrawDepositController()),
        borrowerVaultAddr: poolFlex.borrowerVaultAddr(),
        name: ERC20Upgradeable(pool).name(),
        symbol: ERC20Upgradeable(pool).symbol(),
        borrowerManagerAddr: poolFlex.borrowerManagerAddr(),
        borrowerWalletAddr: poolFlex.borrowerWalletAddr(),
        maxCapacity: poolController.settings().maxCapacity,
        nonBusinessDays: poolFlex.nonBusinessDays(),
        businessDayRegistryAddr: address(poolFlex.businessDayRegistry())
      });
  }

  function getPoolFlexOverviewState(
    address poolAddr
  ) public view returns (IPoolOverviewStateFlex memory _poolOverviewState) {
    IPoolFlex poolFlex = IPoolFlex(poolAddr);
    IWithdrawDepositControllerFlex withdrawDepositController = IWithdrawDepositControllerFlex(
      address(poolFlex.withdrawDepositController())
    );

    IPoolAccountingsFlex memory accountings = poolFlex.accountings();
    return
      IPoolOverviewStateFlex({
        poolAddr: poolAddr,
        interestRate: accountings.interestRate,
        dailyInterestRate: accountings.dailyInterestRate,
        totalPrincipalEarningInterest: accountings.totalPrincipalEarningInterest,
        totalInterestAccrued: accountings.totalInterestAccrued,
        totalAssetsDeposited: accountings.totalAssetsDeposited,
        totalAssetsWithdrawn: accountings.totalAssetsWithdrawn,
        exchangeRate: accountings.exchangeRate,
        totalSupply: poolFlex.totalSupply(),
        totalRequestedShares: withdrawDepositController.totalRequestedShares(),
        totalRequestedAssets: withdrawDepositController.totalRequestedAssets(),
        totalAssetsTransitioningIn: withdrawDepositController.totalAssetsTransitioningIn(),
        totalSharesTransitioningIn: withdrawDepositController.totalSharesTransitioningIn(),
        totalAssetsDueForWithdraws: withdrawDepositController.totalAssetsDueForWithdraws(),
        totalFees: accountings.totalFees,
        feesOutstanding: accountings.feesOutstanding,
        nonBusinessDays: poolFlex.nonBusinessDays(),
        state: uint8(poolFlex.state()),
        lastDayAccrued: accountings.lastDayAccrued
      });
  }

  function roundDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + (b / 2);
    return c / b;
  }

  function roundUpDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + (b - 1);
    return c / b;
  }

  function getPoolAccountState(
    address poolAddr,
    address accountAddr
  ) public view returns (IPoolAccountStateFlex memory _poolAccountState) {
    IPoolFlex pool = IPoolFlex(poolAddr);
    address withdrawDepositController = address(pool.withdrawDepositController());
    IWithdrawDepositControllerFlex withdrawDepositControllerFlex = IWithdrawDepositControllerFlex(
      withdrawDepositController
    );

    IPoolLenderTotals memory lenderTotals = withdrawDepositControllerFlex.lenderTotals(accountAddr);

    uint256 tokenBalance = pool.balanceOf(accountAddr);

    uint256 principalExpanded = ((tokenBalance - lenderTotals.sharesTransitioningIn - lenderTotals.requestedShares) *
      IPoolFlex(pool).accountings().exchangeRate);

    uint256 principalEarningInterest = roundDiv(principalExpanded, 1e18);

    uint256 interestAccrued;
    if (
      (principalEarningInterest +
        lenderTotals.assetsTransitioningIn +
        lenderTotals.requestedAssets +
        lenderTotals.assetsWithdrawn) > lenderTotals.assetsDeposited
    ) {
      interestAccrued =
        principalEarningInterest +
        lenderTotals.assetsTransitioningIn +
        lenderTotals.requestedAssets +
        lenderTotals.assetsWithdrawn -
        lenderTotals.assetsDeposited;
    } else {
      interestAccrued = 0;
    }

    uint256 maxWithdrawRequest = pool.maxWithdrawRequest(accountAddr);

    uint256 maxRedeemRequest = pool.maxRedeemRequest(accountAddr);

    return
      IPoolAccountStateFlex({
        poolAddr: address(pool),
        accountAddr: accountAddr,
        tokenBalance: tokenBalance,
        maxWithdrawRequest: maxWithdrawRequest,
        maxRedeemRequest: maxRedeemRequest,
        requestedSharesOf: lenderTotals.requestedShares,
        requestedAssetsOf: lenderTotals.requestedAssets,
        principalEarningInterest: principalEarningInterest,
        interestAccrued: interestAccrued,
        assetsDeposited: lenderTotals.assetsDeposited,
        assetsWithdrawn: lenderTotals.assetsWithdrawn,
        sharesTransitioningIn: lenderTotals.sharesTransitioningIn,
        assetsTransitioningIn: lenderTotals.assetsTransitioningIn,
        assetsDueForWithdraws: lenderTotals.assetsDueForWithdraws,
        sharesDueForWithdraws: lenderTotals.sharesDueForWithdraws
      });
  }

  function originalAnnualAPRToDailyRate(uint256 _interestRate) public pure returns (uint256) {
    if (_interestRate > 2000) revert InterestRateTooHigh(_interestRate);
    uint256 start = 1e18 + ((_interestRate * 1e18) / 1e4);

    uint256 ratio = 1e18 + ((_interestRate * 1e18) / 1e4 / 365);
    uint256 min = 1e18 + ((_interestRate * 1e18) / 1e4 / 400);

    uint256 max = ratio;
    while (max - min > 1e10) {
      uint256 mid = (min + max) / 2;
      uint256 midPow = pow365(mid);

      if (midPow == start) {
        return mid;
      } else if (midPow < start) {
        min = mid;
      } else {
        max = mid;
      }
    }

    return min - 1e18;
  }

  function annualAPRToDailyRate(uint256 _interestRate, uint256 _estimatedDailyRate) public pure returns (uint256) {
    // uint256 originalRet = originalAnnualAPRToDailyRate(_interestRate);

    if (_interestRate > 2000) revert InterestRateTooHigh(_interestRate);
    uint256 start = 1e18 + ((_interestRate * 1e18) / 1e4);

    uint256 ratio = 1e18 + ((_interestRate * 1e18) / 1e4 / 365);

    uint256 min;

    if (ratio < (1e18 + _estimatedDailyRate)) {
      min = 1e18 + ((_interestRate * 1e18) / 1e4 / 420);
    } else {
      uint256 diff = ratio - (1e18 + _estimatedDailyRate);

      min = ratio - 2 * (diff);
      if (pow365(min) > start) {
        min = 1e18 + ((_interestRate * 1e18) / 1e4 / 420);
      }
    }

    uint256 max = ratio;

    while (max - min > 1e10) {
      uint256 mid = (min + max) / 2;

      uint256 midPow = pow365(mid);

      if (midPow > start && midPow - start < 1e10) {
        return mid - 1e18;
      } else if (midPow < start && start - midPow < 1e10) {
        return mid - 1e18;
      } else if (midPow == start) {
        return mid - 1e18;
      } else if (midPow < start) {
        min = mid;
      } else {
        max = mid;
      }
    }

    return min - 1e18;
  }

  // Helper function to calculate power (base^exp)
  function pow365(uint256 base) internal pure returns (uint256) {
    uint256 result = (base * base) / 1e18; // 2
    result = (result * result) / 1e18; // 4
    uint256 result4 = result;
    result = (result * result) / 1e18; // 8
    uint256 result8 = result;
    result = (result * result) / 1e18; // 16

    result = (result * result) / 1e18; // 32
    uint256 result32 = result;
    result = (result * result) / 1e18; // 64
    uint256 result64 = result;
    result = (result * result) / 1e18; // 128
    result = (result * result) / 1e18; // 256
    result = (result * result64) / 1e18; // 320
    result = (result * result32) / 1e18; // 352
    result = (result * result8) / 1e18; // 360
    result = (result * result4) / 1e18; // 364
    result = (result * base) / 1e18; // 365
    return result;
  }
  function updatePoolData(address pool) internal {
    IPoolFlex poolContract = IPoolFlex(pool);
    address poolRegistryAddr = poolContract.serviceConfiguration().getPoolRegistry();

    IPoolRegistry(poolRegistryAddr).updatePoolData(pool);
  }

  function executeDailyInterestAccural(address pool, IPoolAccountingsFlex storage accountings) public {
    IPoolFlex poolContract = IPoolFlex(pool);

    uint256 midnight = uint256(block.timestamp - (block.timestamp % 1 days));

    if (block.timestamp % 1 days < poolContract.poolController().closeOfDepositTime()) {
      midnight = midnight - 1 days;
    }

    if (midnight <= accountings.lastDayAccrued) {
      revert AccuralCalledTooEarly(midnight, accountings.lastDayAccrued);
    }

    uint256 numberOfDaysToAccrue = (midnight - accountings.lastDayAccrued) / 1 days;

    uint256 currentDay = accountings.lastDayAccrued;

    for (uint256 i = 0; i < numberOfDaysToAccrue; i++) {
      currentDay = currentDay + 1 days;
      accountings.exchangeRate = accountings.exchangeRate.mul(accountings.dailyInterestRate + 1e18).div(1e18);

      uint256 todaysInterest = (accountings.totalPrincipalEarningInterest * (accountings.dailyInterestRate)) / 1e18;
      uint256 todaysFees = (accountings.totalPrincipalEarningInterest *
        (poolContract.poolController().dailyOriginationFeeRate())) / 1e18;
      accountings.totalPrincipalEarningInterest += todaysInterest;
      accountings.totalInterestAccrued += todaysInterest;
      accountings.totalFees += todaysFees;
      accountings.feesOutstanding += todaysFees;

      uint256 inflows = poolContract.withdrawDepositController().dailyInterestAccural(currentDay);

      accountings.totalPrincipalEarningInterest += inflows;
    }

    // uint256 expected = accountings.exchangeRate.mul(totalSupply()).div(1e18);
    // if (expected > accountings.totalPrincipalEarningInterest) {
    //   uint256 adjustment = expected.sub(accountings.totalPrincipalEarningInterest);
    //   if (0 < adjustment && adjustment < 10) {
    //     accountings.totalPrincipalEarningInterest += adjustment;
    //     accountings.totalInterestAccrued += adjustment;
    //   }
    // }

    uint256 newlastDayAccrued = uint256(block.timestamp - (block.timestamp % 1 days));

    if (block.timestamp % 1 days < poolContract.poolController().closeOfDepositTime()) {
      newlastDayAccrued = newlastDayAccrued - 1 days;
    }

    accountings.lastDayAccrued = newlastDayAccrued;
    updatePoolData(pool);
  }
  function executeRepayLoans(address pool, uint256 assets, uint256 eventId) external {
    IPoolFlex poolContract = IPoolFlex(pool);

    IPoolLenderWithdrawEvent[] memory _withdrawEvents = poolContract.withdrawDepositController().withdrawEvents();
    IPoolLenderWithdrawEvent memory ev;
    bool isFound = false;

    for (uint i = 0; i < _withdrawEvents.length; i++) {
      if (_withdrawEvents[i].eventId == eventId) {
        ev = _withdrawEvents[i];
        isFound = true;
      }
    }
    if (!isFound || ev.requestedAssets > assets) {
      revert InvalidRepayment();
    }

    poolContract.withdrawDepositController().repayLoans(assets);

    emit RepayToPoolProcessed(ev.lender, eventId, ev.requestedShares, ev.requestedAssets);

    updatePoolData(pool);
  }

  function executCrossChainTransferBurnSource(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 amount
  ) external returns (uint256 shares) {
    IPoolFlex poolContract = IPoolFlex(pool);

    shares = poolContract.convertToShares(amount);

    accountings.totalAssetsWithdrawn += amount;
    accountings.totalPrincipalEarningInterest -= Math.min(amount, accountings.totalPrincipalEarningInterest);

    updatePoolData(pool);
  }

  function executeRequestRedeem(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 shares
  ) external returns (uint256 assets) {
    IPoolFlex poolContract = IPoolFlex(pool);
    assets = poolContract.convertToAssets(shares);
    if (assets > accountings.totalPrincipalEarningInterest) {
      assets = accountings.totalPrincipalEarningInterest;
    }

    poolContract.withdrawDepositController().performRequest(msg.sender, shares, assets);

    accountings.totalPrincipalEarningInterest -= assets;

    updatePoolData(pool);

    emit RedeemRequested(msg.sender, assets, shares);
  }
  function executeDeposit(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 assets,
    address lender
  ) external returns (uint256 shares, uint256 transferInDayTimestamp) {
    IPoolFlex poolContract = IPoolFlex(pool);

    uint256 midnight = uint256(block.timestamp - (block.timestamp % 1 days));

    if (block.timestamp % 1 days < poolContract.poolController().closeOfDepositTime()) {
      midnight = midnight - 1 days;
    }

    if (midnight > accountings.lastDayAccrued) {
      executeDailyInterestAccural(address(this), accountings);
    }
    if (poolContract.poolController().state() == IPoolLifeCycleStateFlex.DisruptionOrDefault || msg.sender != lender)
      revert PoolInvalidState();
    if (assets > poolContract.maxDeposit(lender)) {
      revert ExceedsMaxDeposit(poolContract.maxDeposit(lender), assets, lender);
    }
    if (assets == 0) {
      revert ZeroDeposit(poolContract.maxDeposit(lender), assets, lender);
    }
    uint256 inflows;

    (inflows, shares, transferInDayTimestamp) = poolContract.withdrawDepositController().deposit(
      lender,
      assets,
      accountings.exchangeRate,
      accountings.dailyInterestRate
    );

    accountings.totalAssetsDeposited += assets;

    accountings.totalPrincipalEarningInterest += inflows;
    emit PoolDeposit(lender, assets, shares, transferInDayTimestamp);
    updatePoolData(pool);
  }

  function executeSetDailyInterestRate(
    address pool,
    IPoolAccountingsFlex storage accountings,
    uint256 _interestRate,
    uint256 _estimatedDailyRate
  ) external {
    uint256 _dailyInterestRate = annualAPRToDailyRate(_interestRate, _estimatedDailyRate);
    accountings.dailyInterestRate = _dailyInterestRate;
    accountings.interestRate = _interestRate;
    accountings.interstRateSetTime = block.timestamp;
    updatePoolData(pool);
  }
}


// File contracts/factories/interfaces/IBusinessDayRegistryFactory.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title An interface for a factory that creates BusinessDayRegistry contracts.
 */
interface IBusinessDayRegistryFactory {
  /**
   * @dev Creates a new BusinessDayRegistry
   */
  function create(address pool) external returns (address);
}


// File contracts/factories/interfaces/IPoolAccessControlFactory.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title An interface for a factory that creates PoolAccessControl contracts.
 */
interface IPoolAccessControlFactory {
  /**
   * @dev Creates a new PoolAccessControl.
   */
  function create(address pool) external returns (address);
}


// File contracts/factories/interfaces/IWithdrawDepositControllerFactoryFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Interface for the WithdrawDepositControllerFlex factory.
 */
interface IWithdrawDepositControllerFactoryFlex {
  /**
   * @dev Emitted when a pool WithdrawController is created.
   */
  event WithdrawDepositControllerCreated(address indexed addr);

  /**
   * @dev Creates a pool's withdraw controller
   * @dev Emits `WithdrawDepositControllerCreated` event.
   */
  function createController(
    address pool,
    address vaultFactory,
    address borrowerWalletAddress
  ) external returns (address);
}


// File contracts/upgrades/BeaconImplementation.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title BeaconImplementation base contract
 * @dev Base contract that overrides the constructor to disable initialization.
 */
abstract contract BeaconImplementation is Initializable {
  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}


// File contracts/PoolFlex.sol

//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.19;








// import "./interfaces/IPoolFlex.sol";
// import "./interfaces/IVault.sol";

// import "./interfaces/IPoolRegistry.sol";
// import "./interfaces/IServiceConfigurationV5.sol";
// import "./interfaces/IPoolAccessControl.sol";
// import "./factories/interfaces/IPoolAccessControlFactory.sol";

// import "./factories/interfaces/IBusinessDayRegistryFactory.sol";
// import "./controllers/interfaces/IWithdrawDepositControllerFlex.sol";
// import "./controllers/interfaces/IPoolControllerFlex.sol";
// import "./factories/interfaces/IWithdrawDepositControllerFactoryFlex.sol";
// import "./factories/interfaces/IPoolControllerFactoryFlex.sol";
// import "./factories/interfaces/IVaultFactory.sol";

/**
 * @title Liquidity pool for Perimeter.
 * @dev Used through a beacon proxy.
 */

contract PoolFlex is IPoolFlex, ERC20Upgradeable, BeaconImplementation {
  using SafeERC20Upgradeable for IERC20Upgradeable;
  using SafeMath for uint256;
  using EnumerableSet for EnumerableSet.AddressSet;
  /**
   * @dev The reference to the access control contract
   */
  IPoolAccessControl public poolAccessControl;
  uint256 private todo = 666;
  IPoolType private _poolType;
  event PoolCreated();

  event PoolDeposit(address indexed lender, uint256 assets, uint256 shares, uint256 transferInDayTimestamp);

  event RedeemRequested(address indexed lender, uint256 assets, uint256 shares);
  event RedeemReleased(address indexed lender, uint256 shares, uint256 assets);
  event RepayLoanToLender(address indexed lender, uint256 indexed eventId, uint256 shares, uint256 assets);
  event RepayToPoolProcessed(address indexed lender, uint256 indexed eventId, uint256 shares, uint256 assets);
  event Redeem(address indexed lender, uint256 shares, uint256 assets);

  event CrossChainTransferApproveSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  );
  event CrossChainTransferApproveDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  );
  event CrossChainTransferBurnSource(address sourceWalletAddr, uint256 amount, uint256 shares);
  event CrossChainTransferMintDestination(address destinationWalletAddr, uint256 amount, uint256 shares);

  /**
   * @dev Reference to the global service configuration.
   */
  IServiceConfigurationV5 private _serviceConfiguration;

  /**
   * @dev Reference to the underlying liquidity asset for the pool.
   */
  IERC20Upgradeable private _liquidityAsset;

  /**
   * @dev Various accounting statistics updated throughout the pool lifetime.
   */
  IPoolAccountingsFlex private _accountings;

  /**
   * @dev Reference to the withdraw controller for the pool.
   */
  IWithdrawDepositControllerFlex public withdrawDepositController;

  /**
   * @dev Reference to the admin's controller for the pool.
   */
  IPoolControllerFlex public poolController;

  IBusinessDayRegistry public businessDayRegistry;

  /**
   * @inheritdoc IPoolFlex
   */
  uint256 public activatedAt;

  error ZeroDeposit(uint256, uint256, address);
  error ExceedsMaxDeposit(uint256, uint256, address);
  error ExcessWithdraw(uint256, uint256, uint256);
  error NotPoolController();
  error NotWithdrawController();
  error NotLender();
  error NotBorrowerManager();
  error NotPoolAdmin();
  error PoolNotActive();
  error InvalidAccess();
  error InvalidLoan();
  error PoolInvalidState();
  error PoolPaused();
  error TransferDisabled();
  error AccuralCalledTooEarly(uint256, uint256);
  error ExcessFeePayment();
  error InvalidPoolSetting();
  error InvalidRepayment();
  error CrossChainError();
  /**
   * @dev Modifier to ensure only the PoolController calls a method.
   */
  modifier onlyPoolController() {
    if (msg.sender != address(poolController)) revert NotPoolController();
    _;
  }

  /**
   * @dev Modifier that checks that the caller is a pool lender
   */
  modifier onlyLenderWithPPT() {
    if (balanceOf(msg.sender) <= 0) revert NotLender();

    _;
  }

  /**
   * @dev Modifier to check that the pool has ever been activated
   */
  modifier onlyActivatedPool() {
    if (activatedAt == 0) revert PoolNotActive();
    _;
  }
  modifier onlyWithdrawController() {
    if (msg.sender != address(withdrawDepositController)) revert NotWithdrawController();
    _;
  }
  modifier onlyAutomationOrAdmin() {
    if (!_serviceConfiguration.isAutomation(msg.sender) && !_serviceConfiguration.isPoolAdmin(msg.sender))
      revert NotPoolAdmin();
    _;
  }
  /**
   * @dev Modifier to check that the protocol is not paused
   */
  modifier onlyNotPaused() {
    if (_serviceConfiguration.paused() == true) revert PoolPaused();
    _;
  }

  /**
   * @dev Modifier that checks that the pool is Initialized or Active
   */
  modifier atState(IPoolLifeCycleStateFlex state_) {
    if (poolController.state() != state_) revert PoolInvalidState();
    _;
  }

  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  function decimals() public pure override returns (uint8) {
    return 6;
  }

  function updatePoolData() internal {
    IPoolRegistry(_serviceConfiguration.getPoolRegistry()).updatePoolData(address(this));
  }

  modifier onlyPermittedLender() {
    if (!poolAccessControl.isAllowed(msg.sender)) revert NotLender();

    if (IPoolControllerFlex(poolController).borrowerManagerAddr() == msg.sender) revert NotLender();

    _;
  }
  modifier onlyBorrowerManger() {
    if (
      !_serviceConfiguration.isBorrower(msg.sender) ||
      IPoolControllerFlex(poolController).borrowerManagerAddr() != msg.sender
    ) revert NotBorrowerManager();

    _;
  }

  modifier onlyPoolAdmin() {
    if (!_serviceConfiguration.isPoolAdmin(msg.sender) || IPoolControllerFlex(poolController).admin() != msg.sender)
      revert NotPoolAdmin();

    _;
  }

  function isPermittedLender(address receiver) public view returns (bool) {
    return poolAccessControl.isAllowed(receiver);
  }

  /**
     * @dev Initializer for Pool

     * @param poolSettings configurable settings for the pool
     * @param tokenName Name used for issued pool tokens
     * @param tokenSymbol Symbol used for issued pool tokens
     */
  function initialize(
    PoolAddressListFlex memory poolAddressListFlex,
    IPoolConfigurableSettingsFlex memory poolSettings,
    string memory tokenName,
    string memory tokenSymbol
  ) public initializer {
    __ERC20_init(tokenName, tokenSymbol);
    _serviceConfiguration = IServiceConfigurationV5(poolAddressListFlex.serviceConfiguration);
    _poolType = IPoolType.FlexRatePool;

    if (
      poolSettings.dailyOriginationFeeRate > 1e18 ||
      poolSettings.originationFee > 100000 ||
      poolSettings.maxCapacity < 1e6 ||
      poolSettings.maxCapacity > 1e24 ||
      poolSettings.borrowerManagerAddr == address(0) ||
      poolSettings.borrowerWalletAddr == address(0) ||
      poolSettings.closeOfDepositTime > 1 days ||
      poolSettings.closeOfWithdrawTime > 1 days ||
      poolSettings.transferInDays > 5 ||
      poolSettings.transferOutDays > 5
    ) {
      revert InvalidPoolSetting();
    }

    poolSettings.dailyOriginationFeeRate = PoolLibFlex.annualAPRToDailyRate(
      poolSettings.originationFee,
      ((poolSettings.originationFee * 1e18) / 1e4 / 400)
    );

    if (!_serviceConfiguration.isPoolAdmin(poolAddressListFlex.poolAdmin)) {
      revert InvalidAccess();
    }
    _liquidityAsset = IERC20Upgradeable(poolAddressListFlex.liquidityAsset);

    // Build the withdraw controller
    // Build the admin controller
    poolController = IPoolControllerFlex(
      IPoolControllerFactoryFlex(poolAddressListFlex.poolControllerFactoryFlex).createController(
        address(this),
        poolAddressListFlex.serviceConfiguration,
        poolAddressListFlex.poolAdmin,
        poolAddressListFlex.liquidityAsset,
        poolSettings
      )
    );
    poolAccessControl = IPoolAccessControl(
      IPoolAccessControlFactory(poolAddressListFlex.poolAccessControlFactory).create(address(this))
    );
    IBusinessDayRegistry _businessDayRegistry = IBusinessDayRegistry(
      IBusinessDayRegistryFactory(poolAddressListFlex.businessDayRegistryFactory).create(address(this))
    );
    businessDayRegistry = _businessDayRegistry;

    uint256 lastDayAccrued;
    if (block.timestamp % 1 days < poolController.closeOfDepositTime()) {
      lastDayAccrued = _businessDayRegistry.toMidnight(uint64(block.timestamp) - 1 days);
    } else {
      lastDayAccrued = _businessDayRegistry.toMidnight(uint64(block.timestamp));
    }

    _accountings = IPoolAccountingsFlex({
      interestRate: 0,
      dailyInterestRate: 0,
      totalPrincipalEarningInterest: 0,
      totalInterestAccrued: 0,
      totalAssetsDeposited: 0,
      totalAssetsWithdrawn: 0,
      exchangeRate: 1e18,
      lastDayAccrued: lastDayAccrued,
      totalFees: 0,
      feesOutstanding: 0,
      interstRateSetTime: 0
    });

    withdrawDepositController = IWithdrawDepositControllerFlex(
      IWithdrawDepositControllerFactoryFlex(poolAddressListFlex.withdrawDepositControllerFactoryFlex).createController(
        address(this),
        address(poolAddressListFlex.vaultFactory),
        address(poolSettings.borrowerWalletAddr)
      )
    );

    // Allow the contract to move infinite amount of vault liquidity assets
    _liquidityAsset.safeApprove(address(this), type(uint256).max);
    emit PoolCreated();
  }

  /**
   * @inheritdoc IPoolBase
   */
  function serviceConfiguration() public view returns (IServiceConfigurationV5) {
    return _serviceConfiguration;
  }

  function poolType() external view returns (IPoolType) {
    return _poolType;
  }

  /**
   * @inheritdoc IPoolFlex
   */
  function settings() public view returns (IPoolConfigurableSettingsFlex memory poolSettings) {
    return poolController.settings();
  }

  function nonBusinessDays() public view returns (uint64[] memory) {
    return businessDayRegistry.nonBusinessDays();
  }

  function updateNonBusinessDays(uint64[] memory _timestamps) external onlyPoolAdmin {
    updatePoolData();
    return businessDayRegistry.updateNonBusinessDays(_timestamps);
  }

  function state() public view returns (IPoolLifeCycleStateFlex) {
    return poolController.state();
  }

  /**
   * @inheritdoc IPoolBase
   */
  function admin() external view override returns (address) {
    return poolController.admin();
  }

  function borrowerManagerAddr() external view override returns (address) {
    return poolController.borrowerManagerAddr();
  }

  function borrowerWalletAddr() external view override returns (address) {
    return poolController.borrowerWalletAddr();
  }

  function transferInDays() external view returns (uint256) {
    return poolController.transferInDays();
  }

  function transferOutDays() external view returns (uint256) {
    return poolController.transferOutDays();
  }

  /**
   * @inheritdoc IPoolFlex
   */
  function onActivated() external onlyPoolController {
    updatePoolData();
    activatedAt = block.timestamp;
  }

  /**
   * @inheritdoc IPoolFlex
   */
  function accountings() external view override returns (IPoolAccountingsFlex memory) {
    return _accountings;
  }

  /**
   * @inheritdoc IPoolFlex
   */
  function totalAvailableAssets() public view returns (uint256 assets) {
    return _accountings.totalPrincipalEarningInterest + withdrawDepositController.totalAssetsTransitioningIn();
  }

  function interestRate() public view override returns (uint256 assets) {
    return _accountings.interestRate;
  }

  function annualAPRToDailyRate(
    uint256 annualAPR,
    uint256 estimatedDailyRate
  ) external pure returns (uint256 _dailyInterestRate) {
    return PoolLibFlex.annualAPRToDailyRate(annualAPR, estimatedDailyRate);
  }

  function setDailyInterestRate(uint256 _interestRate, uint256 _estimatedDailyRate) public onlyBorrowerManger {
    PoolLibFlex.executeSetDailyInterestRate(address(this), _accountings, _interestRate, _estimatedDailyRate);
  }

  function dailyInterestAccural() public onlyAutomationOrAdmin {
    PoolLibFlex.executeDailyInterestAccural(address(this), _accountings);
  }

  function feesPaidDown(uint256 paidAmount) public onlyPoolAdmin {
    if (paidAmount > _accountings.feesOutstanding) {
      revert ExcessFeePayment();
    }
    _accountings.feesOutstanding -= paidAmount;
    updatePoolData();
  }

  function applyDailyRate(uint256 principal) public view returns (uint256) {
    return (principal * (1e18 + _accountings.dailyInterestRate)) / 1e18;
  }

  /**
   * @inheritdoc IPoolFlex
   */
  function totalAvailableSupply() public view override returns (uint256 shares) {
    return
      totalSupply() -
      withdrawDepositController.totalSharesTransitioningIn() -
      withdrawDepositController.totalRequestedShares();
  }

  /**
   * @inheritdoc IPoolFlex
   */
  function liquidityPoolAssets() public view returns (uint256 assets) {
    return _accountings.totalPrincipalEarningInterest + withdrawDepositController.totalAssetsTransitioningIn();
  }

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function previewRedeemRequest(uint256 shares) external view returns (uint256 assets) {
    assets = convertToAssets(shares);
  }

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function previewWithdrawRequest(uint256 assets) external view returns (uint256 shares) {
    shares = convertToShares(assets);
  }

  function requestRedeem(
    uint256 shares
  ) external onlyNotPaused onlyActivatedPool onlyPermittedLender onlyLenderWithPPT returns (uint256 assets) {
    assets = PoolLibFlex.executeRequestRedeem(address(this), _accountings, shares);
  }

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function maxRedeemRequest(address owner) public view returns (uint256 maxShares) {
    maxShares = withdrawDepositController.maxRedeemRequest(owner);
  }

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function maxWithdrawRequest(address owner) public view returns (uint256 maxAssets) {
    maxAssets = Math.min(convertToAssets(maxRedeemRequest(owner)), totalAvailableAssets());
  }

  function exchangeRate() public view override returns (uint256 _exchangeRate) {
    _exchangeRate = _accountings.exchangeRate;
  }

  /*//////////////////////////////////////////////////////////////
                        ERC-4626 Methods
    //////////////////////////////////////////////////////////////*/

  function liquidityAssetAddr() public view returns (address) {
    return address(_liquidityAsset);
  }

  function totalAssets() public view returns (uint256) {
    return _accountings.totalPrincipalEarningInterest + withdrawDepositController.totalAssetsTransitioningIn();
  }

  function convertToShares(uint256 assets) public view override returns (uint256 shares) {
    return (assets * 1e18) / exchangeRate();
  }

  function convertToAssets(uint256 shares) public view override returns (uint256 assets) {
    return shares.mul(exchangeRate()).div(1e18);
  }

  function closeOfDepositTime() external view returns (uint256) {
    return poolController.closeOfDepositTime();
  }

  function closeOfWithdrawTime() external view returns (uint256) {
    return poolController.closeOfWithdrawTime();
  }

  function getPoolConfiguration() external view returns (IPoolConfigurationStateFlex memory) {
    return PoolLibFlex.getPoolFlexConfigurationState(address(this));
  }

  function getPoolOverview() external view returns (IPoolOverviewStateFlex memory) {
    return PoolLibFlex.getPoolFlexOverviewState(address(this));
  }

  function getPoolAccountState(address accountAddr) external view returns (IPoolAccountStateFlex memory) {
    IPoolAccountStateFlex memory ret = PoolLibFlex.getPoolAccountState(address(this), accountAddr);

    return ret;
  }

  function maxDeposit(address owner) public view override returns (uint256) {
    if (
      _serviceConfiguration.paused() == true ||
      !isPermittedLender(owner) ||
      poolController.state() != IPoolLifeCycleStateFlex.Active
    ) {
      return 0;
    }

    return 1e18;
  }

  function topOffSharesDueToExchangeRateDecrease(
    address lender,
    uint256 catchupShares
  ) external onlyWithdrawController {
    _mint(lender, catchupShares);
  }

  function deposit(
    uint256 assets,
    address lender
  )
    public
    override
    onlyNotPaused
    atState(IPoolLifeCycleStateFlex.Active)
    onlyPermittedLender
    returns (uint256 shares, uint256 transferInDayTimestamp)
  {
    (shares, transferInDayTimestamp) = PoolLibFlex.executeDeposit(address(this), _accountings, assets, lender);
    _liquidityAsset.safeTransferFrom(msg.sender, address(this), assets);
    _mint(lender, shares);
    _liquidityAsset.safeTransferFrom(address(this), borrowerVaultAddr(), assets);
    withdrawDepositController.drawDownToBorrowerWallet(assets);
  }

  /**
   * @dev Redeem a number of shares for a given number of assets. This method
   * will transfer `assets` from the vault to the `receiver`, and burn `shares`
   * from `owner`.
   */
  function _performWithdrawTransfer(address owner, uint256 shares, uint256 assets) internal {
    // Transfer assets

    _liquidityAsset.safeTransferFrom(address(this), owner, assets);

    // Burn the shares
    _burn(owner, shares);

    emit Withdraw(owner, owner, owner, assets, shares);
    updatePoolData();
  }

  /*//////////////////////////////////////////////////////////////
                            ERC-20 Overrides
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Disables Perimeter Pool Token transfers.
   */
  function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override {
    super._beforeTokenTransfer(from, to, amount);

    if (to != address(0) && from != address(0)) {
      if (!poolAccessControl.isAllowed(from) || !poolAccessControl.isAllowed(to)) {
        revert TransferDisabled();
      }
      if (maxRedeemRequest(from) < amount) {
        revert TransferDisabled();
      }
    }

    if (from != address(0) && to != address(0)) {
      uint256 assetAmount = convertToAssets(amount);
      withdrawDepositController.tokenTransfer(from, to, assetAmount);
    }
  }

  function totalAssetsDueForWithdraws() public view returns (uint256) {
    return withdrawDepositController.totalAssetsDueForWithdraws();
  }

  function borrowerVaultAddr() public view override returns (address) {
    return withdrawDepositController.borrowerVaultAddr();
  }

  function withdrawEvents() public view returns (IPoolLenderWithdrawEvent[] memory) {
    return withdrawDepositController.withdrawEvents();
  }

  function transferToPoolAdmin( uint256 assets) public onlyPoolAdmin  {
     address poolAdmin = IPoolControllerFlex(poolController).admin();
    _liquidityAsset.safeTransferFrom(address(this), poolAdmin, assets);
  }

  function releaseWithdrawal(uint256 eventId) public onlyPoolAdmin returns (IPoolLenderWithdrawEvent memory ev) {
    ev = withdrawDepositController.releaseWithdrawal(eventId);
    emit RepayLoanToLender(ev.lender, eventId, ev.requestedShares, ev.requestedAssets);

    _performWithdrawTransfer(ev.lender, ev.requestedShares, ev.requestedAssets);
    _accountings.totalAssetsWithdrawn += ev.requestedAssets;
    updatePoolData();
  }

  function repayLoans(uint256 assets, uint256 eventId) public onlyBorrowerManger {
    PoolLibFlex.executeRepayLoans(address(this), assets, eventId);
  }

  function crossChainTransferApproveSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external override onlyPoolController {
    if (!poolAccessControl.isAllowed(sourceWalletAddr)) {
      revert CrossChainError();
    }

    try withdrawDepositController.crossChainTransferApproveSource(sourceWalletAddr, amount) {
      emit CrossChainTransferApproveSource(
        destinationChainId,
        destinationPoolAddr,
        destinationWalletAddr,
        sourceWalletAddr,
        amount
      );
    } catch {
      revert CrossChainError();
    }
  }

  function crossChainTransferApproveDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external override onlyPoolController {
    if (!poolAccessControl.isAllowed(destinationWalletAddr)) {
      revert CrossChainError();
    }

    try withdrawDepositController.crossChainTransferApproveDestination(destinationWalletAddr, amount) {
      emit CrossChainTransferApproveDestination(
        sourceChainId,
        sourcePoolAddr,
        destinationWalletAddr,
        sourceWalletAddr,
        amount
      );
    } catch {
      revert CrossChainError();
    }
  }

  function crossChainTransferBurnSource(uint256 amount) external override onlyPermittedLender onlyLenderWithPPT {
    try withdrawDepositController.crossChainTransferBurnSource(msg.sender, amount) {
      uint256 shares = PoolLibFlex.executCrossChainTransferBurnSource(address(this), _accountings, amount);
      emit CrossChainTransferBurnSource(msg.sender, amount, shares);

      _burn(msg.sender, shares);
      updatePoolData();
    } catch {
      revert CrossChainError();
    }
  }
  function crossChainTransferMintDestination(
    address destinationWalletAddr,
    uint256 amount
  ) external override onlyPoolController {
    uint256 shares = convertToShares(amount);

    _accountings.totalAssetsDeposited += amount;
    _accountings.totalPrincipalEarningInterest += amount;
    try withdrawDepositController.crossChainTransferMintDestination(destinationWalletAddr, amount) {
      _mint(destinationWalletAddr, shares);

      emit CrossChainTransferMintDestination(destinationWalletAddr, amount, shares);
      updatePoolData();
    } catch {
      revert CrossChainError();
    }
  }

  function crossChainTransferStatus(
    address walletAddr
  ) external view returns (uint256 amount, bool isCrossChainSource) {
    return withdrawDepositController.crossChainTransferStatus(walletAddr);
  }
}