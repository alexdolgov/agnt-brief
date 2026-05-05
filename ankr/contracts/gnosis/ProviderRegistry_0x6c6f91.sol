// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/Ownable.sol)

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
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
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
// FILE: @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (proxy/utils/Initializable.sol)

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
        bool isTopLevelCall = _setInitializedVersion(1);
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
        bool isTopLevelCall = _setInitializedVersion(version);
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(version);
        }
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
        _setInitializedVersion(type(uint8).max);
    }

    function _setInitializedVersion(uint8 version) private returns (bool) {
        // If the contract is initializing we ignore whether _initialized is set in order to support multiple
        // inheritance patterns, but we only do this in the context of a constructor, and for the lowest level
        // of initializers, because in other contexts the contract may have been reentered.
        if (_initializing) {
            require(
                version == 1 && !AddressUpgradeable.isContract(address(this)),
                "Initializable: contract is already initialized"
            );
            return false;
        } else {
            require(_initialized < version, "Initializable: contract is already initialized");
            _initialized = version;
            return true;
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (utils/Address.sol)

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
// FILE: @openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
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
        return a / b + (a % b == 0 ? 0 : 1);
    }
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
// FILE: /contracts/interfaces/IProviderRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IProviderRegistry {

    event ProviderRegistered(address indexed provider, uint16 commission, uint256 providersCount);

    event KeysIncreased(address indexed provider, uint32 totalKeys, uint32 fromKey, uint32 toKey);

    event KeysUsed(address indexed provider, uint32 totalKeysUsed);

    event StakingPoolChanged(address newPool, address oldPool);

    event IssueLimitChanged(uint32 newLimit, uint32 oldLimit);

    event ValidatorManagerChanged(address sender, address oldManager, address newManager);

    function registerProvider(address provider, uint16 commission) external;

    function issueKeys(uint32 count) external;

    function useKeys(address provider, uint32 count) external;

    // @return tuple <commission, totalKeys, usedKeys, registered>
    function getProvider(address providerAddress) external view returns (uint16, uint32, uint32, bool);

    // @return tuple <available capacity, total capacity, available keys>
    function getProviderStats(address providerAddress) external view returns (uint128, uint128, uint32);

    // @return key count * 32 ether
    function getTotalCapacity(address provider) external view returns (uint128);

    function getProvidersCount() external view returns (uint32);

    function getProviders() external view returns (address[] memory);

    function getTotalCommission(address provider) external view returns (uint16);
}

// ============================================================
// FILE: /contracts/interfaces/IStakingConfig.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./IProviderRegistry.sol";
import "./IStakingPool.sol";
import "./IValidatorManager.sol";

interface IStakingConfig {

    event StakingPoolChanged(IStakingPool oldPool, IStakingPool newPool);

    event ProviderRegistryChanged(IProviderRegistry oldRegistry, IProviderRegistry newRegistry);

    event ValidatorManagerChanged(IValidatorManager oldManager, IValidatorManager newManager);

    event CommissionChanged(uint16 oldCommission, uint16 newCommission);

    function changeStakingPool(IStakingPool pool) external;

    function changeProviderRegistry(IProviderRegistry registry) external;

    function changeValidatorManager(IValidatorManager validatorManager) external;

    function changeCommission(uint16 commission) external;

    function getStakingPool() external view returns (IStakingPool);

    function getProviderRegistry() external view returns (IProviderRegistry);

    function getValidatorManager() external view returns (IValidatorManager);

    function getCommission() external view returns (uint16);

    function getGovernance() external view returns (address);

    function getConsensus() external view returns (address);

    function getStakeToken() external view returns (IERC20);

    function isNative() external view returns (bool);
}

// ============================================================
// FILE: /contracts/interfaces/IStakingPool.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IStakingPool {

    event StakePending(address indexed staker, address provider, uint128 amount, uint128 totalStaked, uint256 shares);

    event StakedPool(address indexed provider, uint128 totalPending, uint128 totalStaked, uint128 toStake);

    event StakePushed(address indexed provider, bytes pubkey, bytes withdrawalCredentials, uint128 totalStaked, uint128 totalPending);

    function getStaker(address provider, address staker) external view returns (uint128, uint128);

    function getValidationReward(address provider, address staker) external view returns (uint256);

    function getTotalValidationReward(address staker) external view returns (uint256);

    function getProviderBalance(address provider) external view returns (uint128, uint128);

    function getProvidersBalance(address[] calldata providers) external view returns (uint128[] memory, uint128[] memory);

    function getStakesTo(address[] calldata providers) external view returns (uint128[] memory);

    function getAvailable(address provider) external view returns (uint128);

    // @dev method for gnosis staking, stake token should be mGNO
    function stakeGNO(address provider, uint128 amount) external;

    // @dev method for native ETH staking
    function stake(address provider) external payable;

    function depositToBeacon(address provider, bytes calldata pubkey, bytes calldata withdrawal_credentials, bytes calldata signature, bytes32 deposit_data_root) external;
}

// ============================================================
// FILE: /contracts/interfaces/IValidatorManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IValidatorManager {

    event TipCollectorAdded(address indexed provider, address tipCollector);

    event RewardPoolAdded(address indexed provider, address rewardPool);

    event StakerKeyRewardClaimed(address indexed staker, address indexed provider, uint128 amount);

    function deployCollector(address provider) external;

    function deployRewardPool(address provider) external;

    function getTotalTipReward(address provider) external view returns (uint256);

    function getPendingReward(address provider) external view returns (uint256);
}

// ============================================================
// FILE: /contracts/ProviderRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

import "./interfaces/IProviderRegistry.sol";
import "./interfaces/IStakingConfig.sol";

// @dev manage providers, issued and used key count
contract ProviderRegistry is IProviderRegistry, OwnableUpgradeable {

    using MathUpgradeable for uint256;

    uint72 public constant KEY_CAPACITY = 32 ether;

    // limit the issue in one transaction to prevent spending of all available key indexes
    uint32 internal _issueLimit;
    uint32 internal _totalKeys;
    uint32 internal _usedKeys;
    IStakingConfig internal _config;

    Registry internal _registry;
    struct Registry {
        address[] providers;
        mapping(address => Provider) values;
        mapping(address => uint32) indexOf;
        mapping(address => bool) registered;
    }

    struct Provider {
        uint32 totalKeys;
        uint32 usedKeys;
        // scale is 2; 0-100.00%, not changeable
        uint16 commission;
    }

    modifier onlyStakingPool() {
        require(msg.sender == address(_config.getStakingPool()), "ProviderRegistry: pool not allowed");
        _;
    }

    modifier onlyGovernance() {
        require(msg.sender == _config.getGovernance(), "ProviderRegistry: governance not allowed");
        _;
    }

    modifier onlyRegisteredProvider() {
        require(_registry.registered[msg.sender], "ProviderRegistry: provider not registered");
        _;
    }

    function initialize(IStakingConfig config) public initializer {
        __Ownable_init();
        _config = config;
        _issueLimit = 2000;
    }

    // register new provider by governance
    function registerProvider(address provider, uint16 commission) external override onlyGovernance {
        require(commission <= 10000, "ProviderRegistry: commission must be not greater than 10000");
        require(!_registry.registered[provider], "ProviderRegistry: provider already registered");

        Provider memory providerData = Provider(0, 0, commission);
        _setProvider(provider, providerData);

        if (_config.isNative()) {
            _config.getValidatorManager().deployCollector(provider);
        }
        _config.getValidatorManager().deployRewardPool(provider);
        emit ProviderRegistered(provider, commission, _registry.providers.length);
    }

    // issue N keys for provider, to increase capacity
    function issueKeys(uint32 count) external override onlyRegisteredProvider {
        require(count <= _issueLimit, "ProviderRegistry: key issue limit reach");
        uint32 fromKey = _totalKeys;
        _registry.values[msg.sender].totalKeys += count;
        _totalKeys += count;
        emit KeysIncreased(msg.sender, _registry.values[msg.sender].totalKeys, fromKey, _totalKeys);
    }

    // mark N keys as used, this keys should be deposited to beacon chain by backend
    function useKeys(address provider, uint32 count) external override onlyStakingPool {
        _registry.values[provider].usedKeys += count;
        _usedKeys += count;
        require(_registry.values[provider].usedKeys <= _registry.values[provider].totalKeys, "ProviderRegistry: provider keys overflow");
        require(_usedKeys <= _totalKeys, "ProviderRegistry: contract keys overflow");
        emit KeysUsed(provider, _registry.values[provider].usedKeys);
    }

    function changeIssueLimit(uint32 limit) external onlyGovernance {
        uint32 oldLimit = _issueLimit;
        _issueLimit = limit;
        emit IssueLimitChanged(limit, oldLimit);
    }

    // @return provider data such as commission, total keys, used keys, register status
    function getProvider(address providerAddress) public override view returns (uint16 commission, uint32 totalKeys, uint32 usedKeys, bool registered) {
        Provider storage provider = _get(providerAddress);
        return (provider.commission, provider.totalKeys, provider.usedKeys, _getRegistered(providerAddress));
    }

    // @returns total staking capacity of provider
    function getTotalCapacity(address provider) external override view returns (uint128) {
        (,uint32 totalKeys,,) = getProvider(provider);
        return uint128(totalKeys) * KEY_CAPACITY;
    }

    // @returns available capacity, total capacity, not used keys count
    function getProviderStats(address providerAddress) external override view returns (uint128 availableCap, uint128 totalCap, uint32 availableKeys) {
        (,uint32 totalKeys, uint32 usedKeys,) = getProvider(providerAddress);
        uint32 notUsed = totalKeys - usedKeys;

        return (uint128(notUsed) * KEY_CAPACITY, uint128(totalKeys) * KEY_CAPACITY, notUsed);
    }

    function getProvidersCount() public override view returns (uint32) {
        return uint32(_registry.providers.length);
    }

    function getProviders() public override view returns (address[] memory) {
        return _registry.providers;
    }

    function getTotalCommission(address provider) external override view returns (uint16) {
        return _config.getCommission() + _get(provider).commission;
    }

    function _get(address key) internal view returns (Provider storage) {
        return _registry.values[key];
    }

    function _getRegistered(address key) internal view returns (bool) {
        return _registry.registered[key];
    }

    function _getProviderAtIndex(uint32 index) internal view returns (address) {
        return _registry.providers[index];
    }

    function _setProvider(address provider, Provider memory val) internal {
        if (_registry.registered[provider]) {
            _registry.values[provider] = val;
        } else {
            _registry.registered[provider] = true;
            _registry.values[provider] = val;
            _registry.indexOf[provider] = uint32(_registry.providers.length);
            _registry.providers.push(provider);
        }
    }

    // to support remove of bad providers in future
    function _removeProvider(address provider) internal {
        if (!_registry.registered[provider]) {
            return;
        }

        delete _registry.registered[provider];
        delete _registry.values[provider];

        uint256 index = _registry.indexOf[provider];
        uint256 lastIndex = _registry.providers.length - 1;
        address lastProvider = _registry.providers[lastIndex];

        _registry.indexOf[lastProvider] = uint32(index);
        delete _registry.indexOf[provider];

        _registry.providers[index] = lastProvider;
        _registry.providers.pop();
    }
}
