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
// FILE: @openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/math/Math.sol)

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
     * @dev Returns the square root of a number. It the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`.
        // We also know that `k`, the position of the most significant bit, is such that `msb(a) = 2**k`.
        // This gives `2**k < a <= 2**(k+1)` → `2**(k/2) <= sqrt(a) < 2 ** (k/2+1)`.
        // Using an algorithm similar to the msb conmputation, we are able to compute `result = 2**(k/2)` which is a
        // good first aproximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1;
        uint256 x = a;
        if (x >> 128 > 0) {
            x >>= 128;
            result <<= 64;
        }
        if (x >> 64 > 0) {
            x >>= 64;
            result <<= 32;
        }
        if (x >> 32 > 0) {
            x >>= 32;
            result <<= 16;
        }
        if (x >> 16 > 0) {
            x >>= 16;
            result <<= 8;
        }
        if (x >> 8 > 0) {
            x >>= 8;
            result <<= 4;
        }
        if (x >> 4 > 0) {
            x >>= 4;
            result <<= 2;
        }
        if (x >> 2 > 0) {
            result <<= 1;
        }

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
        uint256 result = sqrt(a);
        if (rounding == Rounding.Up && result * result < a) {
            result += 1;
        }
        return result;
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
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/math/Math.sol)

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
     * @dev Returns the square root of a number. It the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`.
        // We also know that `k`, the position of the most significant bit, is such that `msb(a) = 2**k`.
        // This gives `2**k < a <= 2**(k+1)` → `2**(k/2) <= sqrt(a) < 2 ** (k/2+1)`.
        // Using an algorithm similar to the msb conmputation, we are able to compute `result = 2**(k/2)` which is a
        // good first aproximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1;
        uint256 x = a;
        if (x >> 128 > 0) {
            x >>= 128;
            result <<= 64;
        }
        if (x >> 64 > 0) {
            x >>= 64;
            result <<= 32;
        }
        if (x >> 32 > 0) {
            x >>= 32;
            result <<= 16;
        }
        if (x >> 16 > 0) {
            x >>= 16;
            result <<= 8;
        }
        if (x >> 8 > 0) {
            x >>= 8;
            result <<= 4;
        }
        if (x >> 4 > 0) {
            x >>= 4;
            result <<= 2;
        }
        if (x >> 2 > 0) {
            result <<= 1;
        }

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
        uint256 result = sqrt(a);
        if (rounding == Rounding.Up && result * result < a) {
            result += 1;
        }
        return result;
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
// FILE: /contracts/external/ethereum/DepositContract.sol
// ============================================================

// ┏━━━┓━┏┓━┏┓━━┏━━━┓━━┏━━━┓━━━━┏━━━┓━━━━━━━━━━━━━━━━━━━┏┓━━━━━┏━━━┓━━━━━━━━━┏┓━━━━━━━━━━━━━━┏┓━
// ┃┏━━┛┏┛┗┓┃┃━━┃┏━┓┃━━┃┏━┓┃━━━━┗┓┏┓┃━━━━━━━━━━━━━━━━━━┏┛┗┓━━━━┃┏━┓┃━━━━━━━━┏┛┗┓━━━━━━━━━━━━┏┛┗┓
// ┃┗━━┓┗┓┏┛┃┗━┓┗┛┏┛┃━━┃┃━┃┃━━━━━┃┃┃┃┏━━┓┏━━┓┏━━┓┏━━┓┏┓┗┓┏┛━━━━┃┃━┗┛┏━━┓┏━┓━┗┓┏┛┏━┓┏━━┓━┏━━┓┗┓┏┛
// ┃┏━━┛━┃┃━┃┏┓┃┏━┛┏┛━━┃┃━┃┃━━━━━┃┃┃┃┃┏┓┃┃┏┓┃┃┏┓┃┃━━┫┣┫━┃┃━━━━━┃┃━┏┓┃┏┓┃┃┏┓┓━┃┃━┃┏┛┗━┓┃━┃┏━┛━┃┃━
// ┃┗━━┓━┃┗┓┃┃┃┃┃┃┗━┓┏┓┃┗━┛┃━━━━┏┛┗┛┃┃┃━┫┃┗┛┃┃┗┛┃┣━━┃┃┃━┃┗┓━━━━┃┗━┛┃┃┗┛┃┃┃┃┃━┃┗┓┃┃━┃┗┛┗┓┃┗━┓━┃┗┓
// ┗━━━┛━┗━┛┗┛┗┛┗━━━┛┗┛┗━━━┛━━━━┗━━━┛┗━━┛┃┏━┛┗━━┛┗━━┛┗┛━┗━┛━━━━┗━━━┛┗━━┛┗┛┗┛━┗━┛┗┛━┗━━━┛┗━━┛━┗━┛
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┃┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┗┛━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.0;

// This interface is designed to be compatible with the Vyper version.
// @dev https://github.com/ethereum/consensus-specs/blob/master/solidity_deposit_contract/deposit_contract.sol
// Interface name was changed
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
interface IEthDepositContract {
    /// @notice A processed deposit event.
    event DepositEvent(
        bytes pubkey,
        bytes witthdrawal_credentials,
        bytes amount,
        bytes signature,
        bytes index
    );

    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes calldata pubkey,
        bytes calldata withdrawal_credentials,
        bytes calldata signature,
        bytes32 deposit_data_root
    ) external payable;

    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);

    /// @notice Query the current deposit count.
    /// @return The deposit count encoded as a little endian 64-bit number.
    function get_deposit_count() external view returns (bytes memory);
}

// ============================================================
// FILE: /contracts/external/gnosis/IDepositContract.sol
// ============================================================

// SPDX-License-Identifier: CC0-1.0

pragma solidity ^0.8.9;

// @dev https://github.com/gnosischain/deposit-contract/blob/develop/contracts/interfaces/IDepositContract.sol
// interface name was changed
interface IGnoDepositContract {
    /// @notice A processed deposit event.
    event DepositEvent(bytes pubkey, bytes withdrawal_credentials, bytes amount, bytes signature, bytes index);

    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes memory pubkey,
        bytes memory withdrawal_credentials,
        bytes memory signature,
        bytes32 deposit_data_root,
        uint256 stake_amount
    ) external;

    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);

    /// @notice Query the current deposit count.
    /// @return The deposit count encoded as a little endian 64-bit number.
    function get_deposit_count() external view returns (bytes memory);

    function withdrawableAmount(address _address) external view returns (uint256);

    /**
     * @dev Claim withdrawal amount for an address
     * @param _address Address to transfer withdrawable tokens
     */
    function claimWithdrawal(address _address) external;
}

// ============================================================
// FILE: /contracts/external/gnosis/IUnwrapper.sol
// ============================================================

// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.0;

interface IUnwrapper {
    /**
     * @dev Swaps some of the wrapped tokens to the whitelisted token.
     * Wrapped tokens will be burned.
     * @param _token Address of the whitelisted token contract.
     * @param _amount Amount of tokens to swap.
     * @return Amount of returned tokens.
     */
    function unwrap(address _token, uint256 _amount) external returns (uint256);
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
// FILE: /contracts/interfaces/IRewardPool.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IRewardPool {

    event RewardClaimed(address indexed staker, uint128 amount);

    function claimReward(address recipient, uint128 reward) external;

    function getBalance() external view returns (uint256);

    function getTotalRewarded() external view returns (uint256);
}

// ============================================================
// FILE: /contracts/interfaces/IStakingConfig_R2.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./IProviderRegistry.sol";
import "./IStakingPool.sol";
import "./IValidatorManager_R2.sol";

interface IStakingConfig_R2 {

    event StakingPoolChanged(IStakingPool oldPool, IStakingPool newPool);

    event ProviderRegistryChanged(IProviderRegistry oldRegistry, IProviderRegistry newRegistry);

    event ValidatorManagerChanged(IValidatorManager_R2 oldManager, IValidatorManager_R2 newManager);

    event DepositContractChanged(address oldDepositContract, address newDepositContract);

    event TreasuryChanged(address oldVal, address newVal);

    event CommissionChanged(uint16 oldCommission, uint16 newCommission);

    event StakeTokenChanged(IERC20 prevVal, IERC20 newVal);

    function changeStakingPool(IStakingPool pool) external;

    function changeProviderRegistry(IProviderRegistry registry) external;

    function changeDepositContract(address depositContract) external;

    function changeValidatorManager(IValidatorManager_R2 validatorManager) external;

    function changeCommission(uint16 commission) external;

    function getStakingPool() external view returns (IStakingPool);

    function getProviderRegistry() external view returns (IProviderRegistry);

    function getValidatorManager() external view returns (IValidatorManager_R2);

    function getCommission() external view returns (uint16);

    function getGovernance() external view returns (address);

    function getConsensus() external view returns (address);

    function getStakeToken() external view returns (IERC20);

    function isNative() external view returns (bool);

    function getDepositContract() external view returns (address);

    function getTreasury() external view returns (address);
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
// FILE: /contracts/interfaces/IStakingPool_R1.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IStakingPool_R1 {

    // @param shares is deprecated.
    event StakePending(address indexed staker, address provider, uint128 amount, uint128 totalStaked, uint256 shares);

    event StakedPool(address indexed provider, uint128 totalPending, uint128 totalStaked, uint128 toStake);

    event StakePushed(address indexed provider, bytes pubkey, bytes withdrawalCredentials, uint128 totalStaked, uint128 totalPending);

    event UnstakesDistributed(address provider, address[] claimers, uint256[] amounts);

    event DistributeGasLimitChanged(uint256 prevValue, uint256 newValue);

    event PendingUnstake(
        address indexed recipient,
        address indexed provider,
        uint128 amount,
        uint128 reward
    );

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

    function unstakeGNO(address receiver, address provider, uint128 amount) external;

    function depositToBeacon(address provider, bytes calldata pubkey, bytes calldata withdrawal_credentials, bytes calldata signature, bytes32 deposit_data_root) external;
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
// FILE: /contracts/interfaces/ITipCollector.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface ITipCollector {

    event RewardClaimed(address indexed recipient, uint128 amount);

    function claimReward(address recipient, uint128 reward) external;

    function getTotalRewarded() external view returns (uint256);

    function totalClaimed() external view returns (uint128);
}

// ============================================================
// FILE: /contracts/interfaces/IValidatorManager_R2.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IValidatorManager_R2 {

    event TipCollectorAdded(address indexed provider, address tipCollector);

    event RewardPoolAdded(address indexed provider, address rewardPool);

    event ProviderFeeClaimed(address indexed provider, uint128 amount);

    event SysFeeClaimed(address indexed provider, uint128 amount);

    event ExtraCommissionChanged(address indexed provider, uint16 prevPercent, uint16 newPercent);

    event RewardPublished(address indexed provider, uint64 totalReward, uint64 totalSysFee, uint64 totalProviderFee);

    event RewardNotPublished(address indexed provider, uint64 totalReward, uint64 newTotalReward);

    function deployCollector(address provider) external;

    function deployRewardPool(address provider) external;

    function getTotalTipReward(address provider) external view returns (uint256);

    function getReward(address provider) external view returns (uint128);

    function withdraw(address provider) external;

    function sendUnstake(address provider, address to, uint128 amount) external;

    function sendReward(address provider, address to, uint128 amount) external;

    function getWithdrawable(address provider) external view returns (uint128);

    function getProviderFeeStashed(address provider) external view returns (uint128);
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

    event ExtraCommissionChanged(address indexed provider, uint16 prevPercent, uint16 newPercent);

    event PendingRewardPublished(address indexed provider, uint64 totalReward, uint64 extraFee);

    function deployCollector(address provider) external;

    function deployRewardPool(address provider) external;

    function getTotalTipReward(address provider) external view returns (uint256);

    function getPendingReward(address provider) external view returns (uint256);
}

// ============================================================
// FILE: /contracts/libs/Converter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

library Converter {
    uint128 constant MGNO_PER_GNO = 32;

    function mgno(uint128 gnoAmount) internal pure returns (uint128) {
        return gnoAmount * MGNO_PER_GNO;
    }

    function gno(uint128 mgnoAmount) internal pure returns (uint128) {
        return mgnoAmount / MGNO_PER_GNO;
    }
}

// ============================================================
// FILE: /contracts/libs/Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

library Utils {
    // calculate commission for amount and convert to 18 decimals
    function calcCommission18(uint256 amount, uint16 commission) internal pure returns (uint256) {
        return amount * commission / 1e4;
    }
}

// ============================================================
// FILE: /contracts/RewardPool.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IRewardPool.sol";
import "./interfaces/IStakingConfig.sol";

contract RewardPool is IRewardPool {

    using Math for uint256;

    address public manager;
    uint128 internal _totalClaimed;
    IStakingConfig internal _config;

    modifier emptyManager() {
        require(manager == address(0x00), "RewardPool: manager already set");
        _;
    }

    modifier onlyManager() {
        require(msg.sender == manager, "RewardPool: manager not allowed");
        _;
    }

    function initAndObtainOwnership(IStakingConfig config) external emptyManager {
        manager = msg.sender;
        _config = config;
    }

    receive() external payable {
        require(false, "RewardPool: cannot receive");
    }

    function claimReward(address recipient, uint128 amount) external override onlyManager {
        require(getBalance() >= amount, "RewardPool: not enough balance");
        if (_config.isNative()) {
            address payable wallet = payable(recipient);
            require(wallet.send(amount), "RewardPool: cannot send reward");
        } else {
            require(_config.getStakeToken().transfer(recipient, amount), "RewardPool: cannot send reward");
        }
        _totalClaimed += amount;
        emit RewardClaimed(recipient, amount);
    }

    function getBalance() public override view returns (uint256) {
        return _config.isNative() ? address(this).balance : _config.getStakeToken().balanceOf(address(this));
    }

    function getTotalRewarded() external override view returns (uint256) {
        return getBalance() + _totalClaimed;
    }
}

// ============================================================
// FILE: /contracts/TipCollector.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/utils/math/Math.sol";

import "./interfaces/IStakingPool.sol";
import "./interfaces/ITipCollector.sol";

contract TipCollector is ITipCollector {

    using Math for uint256;

    address public manager; // aka owner
    uint128 public totalClaimed;

    modifier emptyManager() {
        require(manager == address(0x00), "TipCollector: manager already set");
        _;
    }

    modifier onlyManager() {
        require(msg.sender == manager, "TipCollector: manager not allowed");
        _;
    }

    function initAndObtainOwnership() external emptyManager {
        manager = msg.sender;
    }

    receive() external payable {
      revert("TipCollector: cannot receive");
    }

    function claimReward(address recipient, uint128 reward) external override onlyManager {
        require(address(this).balance >= reward, "TipCollector: not enough balance");
        address payable wallet = payable(recipient);
        require(wallet.send(reward), "TipCollector: cannot send reward");
        totalClaimed += reward;
        emit RewardClaimed(recipient, reward);
    }

    function getTotalRewarded() external override view returns (uint256) {
        return address(this).balance + totalClaimed;
    }
}

// ============================================================
// FILE: /contracts/upgrades/StakingPool_R3.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import "../external/ethereum/DepositContract.sol";
import "../external/gnosis/IDepositContract.sol";
import "../external/gnosis/IUnwrapper.sol";
import "../interfaces/IProviderRegistry.sol";
import "../interfaces/IStakingPool_R1.sol";
import "../interfaces/IStakingConfig_R2.sol";
import "../ValidatorManager.sol";
import "../libs/Utils.sol";
import "../libs/Converter.sol";

/**
 * @title A staking pool for ETH/GNO delegate staking, manages provider pools and store data about stakers
 * @author Ankr
 * @notice Entrypoint to stake and unstake ETH/GNO
 * @dev _config.isNative defines workflow of contract
 */
contract StakingPool_R3 is IStakingPool_R1, OwnableUpgradeable {

    using MathUpgradeable for uint256;

    // @dev deprecated
    uint72 public constant KEY_CAPACITY = 32 ether;

    // global staking configuration set
    IStakingConfig_R2 internal _config;
    // address of deposit contract
    address public depositContract;
    // minimal stake amount just to exclude dust
    uint64 public minStakeAmount;

    // stores pool data
    mapping(address => Pool) private _pools;
    // stores staker data
    mapping(address => Staker) internal _stakers;

    struct Pool {
        // amount that was deposited to beacon chain
        uint128 stakedBalance;
        // amount that was not deposited to beacon chain
        uint128 pendingBalance;

        // total supply of validator shares
        uint128 validationSharesSupply;
        // total supply of tip shares (applied only for ETH staking)
        uint128 tipSharesSupply;

        uint128 pendingUnstake;
        uint128 confirmedUnstake;
        uint128 claimedReward;
    }

    struct Staker {
        // total staked amount to provider
        mapping(address => uint128) staked;
        // total shares staked to provider;
        mapping(address => uint128) shares;
        // pending unstakes
        mapping(address => uint128) unstaked;

        mapping(address => uint128) claimedReward;
    }

    // unstakes
    uint256 public _DISTRIBUTE_GAS_LIMIT;
    mapping(address => uint256) internal _pendingProviderUnstakeGap;
    mapping(address => Unstake[]) internal _pendingProviderUnstakeRequests;

    struct Unstake {
        uint128 amount;
        address receiver;
    }

    modifier onlyGovernance() {
        require(msg.sender == _config.getGovernance(), "StakingPool: only governance not allowed");
        _;
    }

    modifier onlyConsensus() {
        require(msg.sender == _config.getConsensus(), "StakingPool: only consensus allowed");
        _;
    }

    modifier onlyNative() {
        require(_config.isNative(), "StakingPool: native staking are disabled");
        _;
    }

    modifier onlyERC20() {
        require(!_config.isNative(), "StakingPool: erc20 staking are disabled");
        _;
    }

    function initialize(IStakingConfig_R2 config, address _depositContract) public initializer {
        __Ownable_init();
        _config = config;
        minStakeAmount = 1e13;
        depositContract = _depositContract;
    }

    /**
     * @notice stake method for Gnosis staking, can be applied to any ERC20 staking
     */
    function stakeGNO(address provider, uint128 amount) external override onlyERC20 {
        require(_config.getStakeToken().transferFrom(msg.sender, address(this), amount), "StakingPool: cannot transfer tokens");
        uint128 mgnoAmount = Converter.mgno(amount);
        _stake(msg.sender, provider, mgnoAmount);
    }

    // stake method for ETH staking, can be applie to any native staking
    function stake(address provider) external override onlyNative payable {
        _stake(msg.sender, provider, uint128(msg.value));
    }

    function _stake(address staker, address provider, uint128 amount) internal {
        require(amount >= minStakeAmount, "StakingPool: value must be greater minimum stake amount");
        Pool storage pool = _pools[provider];
        require(_getAvailable(pool, provider) >= amount, "StakingPool: the maximum staked value is exceeded for provider"); // it also checks that provider registered

        // using this amount in logs backend can understand how many keys should be deposited to beacon chain after each stake
        uint128 toStake = _calcToStake(_pools[provider], amount, KEY_CAPACITY);

        Staker storage stakerData = _stakers[staker];

        uint256 validationShares = _toShares(provider, amount);

        pool.validationSharesSupply += uint128(validationShares);
        pool.pendingBalance += amount;

        stakerData.shares[provider] += uint128(validationShares);
        stakerData.staked[provider] += amount;

        if (_config.isNative()) {
            emit StakePending(staker, provider, amount, _stakers[staker].staked[provider], 0);
            emit StakedPool(provider, pool.pendingBalance, pool.stakedBalance, toStake);
        } else {
            emit StakePending(staker, provider, Converter.gno(amount), Converter.gno(_stakers[staker].staked[provider]), 0);
            emit StakedPool(provider, pool.pendingBalance, pool.stakedBalance, toStake);
        }
    }

    // calculate how amount will increase available to stake amount
    function _calcToStake(Pool memory pool, uint128 amount, uint72 keyCapacity) internal pure returns (uint128) {
        return pool.pendingBalance % keyCapacity + amount;
    }

    /**
     * @notice Make GNO unstake
     * @param receiver Recipient of unstake
     * @param provider Node provider
     * @param amount Amount which should be unstaked from delegation.
     * The rest amount must be greater than min stake amount, but in case if you want just claim reward amount can be zero.
     */
    function unstakeGNO(address receiver, address provider, uint128 amount) external onlyERC20 {
        _unstake(msg.sender, receiver, provider, Converter.mgno(amount));
    }

    /**
     * @dev unstake happens from body of stake
     */
    function _unstake(address staker, address receiver, address provider, uint128 unstakeAm) internal {
        require(receiver != address(0), "StakingPool: zero address");

        uint128 stakerStaked = _stakers[staker].staked[provider];
        uint128 stakerShares = _stakers[staker].shares[provider];

        require(stakerStaked >= unstakeAm, "StakingPool: insufficient balance");
        uint128 restakeAm = stakerStaked - unstakeAm;
        require(restakeAm >= minStakeAmount || restakeAm == 0, "StakingPool: restake must be greater than min stake or equal zero");

        // instant reward claim
        uint128 rewardAm = _claimReward(provider, staker);
        _config.getValidatorManager().sendReward(provider, receiver, rewardAm);

        _unstakeFrom(provider, staker, unstakeAm);
        _stakers[receiver].unstaked[provider] += unstakeAm;
        _pendingProviderUnstakeRequests[provider].push(Unstake({amount: unstakeAm, receiver: receiver}));

        if (_config.isNative()) {
            emit PendingUnstake(receiver, provider, unstakeAm, rewardAm);
        } else {
            emit PendingUnstake(receiver, provider, Converter.gno(unstakeAm), Converter.gno(rewardAm));
        }
    }

    function _claimReward(address provider, address staker) internal returns (uint128 reward) {
        uint128 stakerStaked = _stakers[staker].staked[provider];
        uint128 stakerShares = _stakers[staker].shares[provider];
        uint128 stakerClaimedReward = _stakers[staker].claimedReward[provider];

        uint128 balance = uint128(_fromShares(provider, stakerShares)) - stakerClaimedReward;
        if (balance > stakerStaked) {
            reward = balance - stakerStaked;
            _stakers[staker].claimedReward[provider] += reward;
        } else {
            reward = 0;
        }
    }

    function _unstakeFrom(
        address provider,
        address staker,
        uint128 amount
    ) internal {

        Pool memory pool = _pools[provider];


        uint128 stakerStaked = _stakers[staker].staked[provider];
        uint128 stakerShares = _stakers[staker].shares[provider];
        uint128 stakerClaimedReward = _stakers[staker].claimedReward[provider];

        uint256 spentShares;
        uint128 spentReward;

        // remove amount from staker
        if (stakerStaked > amount) {
            // calculate particular part of shares to remove
            // shares = expected / amount * shares;
            uint256 shares = (uint256(amount) * stakerShares).ceilDiv(stakerStaked);
            uint256 spentClaimed = uint256(amount) * stakerClaimedReward / stakerStaked;

            _stakers[staker].staked[provider] -= amount;
            _stakers[staker].shares[provider] -= uint128(shares);
            _stakers[staker].claimedReward[provider] -= uint128(spentClaimed);

            spentShares = shares;
            spentReward = uint128(spentClaimed);
        } else {
            spentShares = stakerShares;
            spentReward = stakerClaimedReward;
            delete _stakers[staker].staked[provider];
            delete _stakers[staker].shares[provider];
            delete _stakers[staker].claimedReward[provider];
        }

        // remove amount from pool
        require(pool.stakedBalance + pool.pendingBalance - pool.pendingUnstake >= amount, "StakingPool: not enough staked");
        require(pool.validationSharesSupply >= spentShares, "StakingPool: not enough shares");
        pool.validationSharesSupply -= uint128(spentShares);
        pool.pendingUnstake += amount;
        pool.claimedReward += spentReward;

        _pools[provider] = pool;
    }

    // call DepositContract to deposit new key
    function depositToBeacon(address provider, bytes calldata pubkey, bytes calldata withdrawal_credentials, bytes calldata signature, bytes32 deposit_data_root) external override onlyConsensus {
        Pool storage pool = _pools[provider];
        require(pool.pendingBalance / KEY_CAPACITY >= 1, "StakingPool: not enough pending balance to make deposit");
        pool.pendingBalance -= KEY_CAPACITY;
        pool.stakedBalance += KEY_CAPACITY;

        _config.getProviderRegistry().useKeys(provider, 1); // mark 1 key as used for provider
        if (_config.isNative()) {
            IEthDepositContract(depositContract).deposit{value: KEY_CAPACITY}(pubkey, withdrawal_credentials, signature, deposit_data_root);
        } else {
            uint128 gnoAmount = Converter.gno(KEY_CAPACITY);
            require(_config.getStakeToken().approve(depositContract, gnoAmount), "StakingPool: cannot approve");
            IGnoDepositContract(depositContract).deposit(pubkey, withdrawal_credentials, signature, deposit_data_root, gnoAmount);
        }
        emit StakePushed(provider, pubkey, withdrawal_credentials, pool.stakedBalance, pool.pendingBalance);
    }

    //
    /**
     * @return balance Currently staked to provider
     * @return totalCap Total capacity of provider
     */
    function getProviderBalance(address provider) public override view returns (uint128 balance, uint128 totalCap) {
        Pool memory pool = _pools[provider];
        uint128 balance = pool.stakedBalance + pool.pendingBalance - pool.pendingUnstake;
        if (_config.isNative()) {
            return (balance, _config.getProviderRegistry().getTotalCapacity(provider));
        } else {
            return (Converter.gno(balance), Converter.gno(_config.getProviderRegistry().getTotalCapacity(provider)));
        }

    }

    /**
     * @notice Returns total staked amount to provider (ignores unstakes)
     */
    function getTotalStaked(address provider) external view returns (uint128) {
        Pool memory pool = _pools[provider];
        if (_config.isNative()) {
            return _calcTotal(pool);
        } else {
            return Converter.gno(_calcTotal(pool));
        }
    }

    // @return sum of staked and pending balances
    function _calcTotal(Pool memory pool) internal pure returns (uint128) {
        return pool.stakedBalance + pool.pendingBalance + pool.confirmedUnstake;
    }

    // same as getProviderBalance, but accept array as parameter
    // @param providers array of providers
    // @return arrays of total staked and total capacity
    function getProvidersBalance(address[] calldata providers) external override view returns (uint128[] memory balances, uint128[] memory totalCaps) {
        uint128[] memory staked = new uint128[](providers.length);
        uint128[] memory max = new uint128[](providers.length);

        for (uint256 i = 0; i < providers.length; i++) {
            (uint128 s, uint128 m) = getProviderBalance(providers[i]);
            staked[i] = s;
            max[i] = m;
        }

        return (staked, max);
    }

    /**
     * @return available amount to stake
     */
    function getAvailable(address provider) external override view returns (uint128) {
        Pool memory pool = _pools[provider];
        if (_config.isNative()) {
            return _getAvailable(pool, provider);
        } else {
            return Converter.gno(_getAvailable(pool, provider));
        }
    }

    function _getAvailable(Pool memory pool, address provider) internal view returns (uint128) {
        uint128 pending;
        if (pool.pendingBalance > pool.pendingUnstake) {
            pending = pool.pendingBalance - pool.pendingUnstake;
        }
        (uint128 available,,) = _config.getProviderRegistry().getProviderStats(provider);
        if (available < pending) {
            return 0;
        }
        return available - pending;
    }

    /**
     * @notice Get staker delegation data
     * @param provider Address of node provider
     * @param staker Address of staker
     * @return staked Currently staked amount to the provider (in case for Gnosis in GNO)
     * @return shares Provider pool shares assigned to staker (in case for Gnosis divided by 32)
     */
    function getStaker(address provider, address staker) external override view returns (uint128 staked, uint128 shares) {
        Staker storage stakerData = _stakers[staker];
        if (_config.isNative()) {
            return (stakerData.staked[provider], stakerData.shares[provider]);
        } else {
            return (Converter.gno(stakerData.staked[provider]), Converter.gno(stakerData.shares[provider]));
        }
    }


    /*
     * @param providers Array of providers
     * @return array of total stakes to providers
     */
    function getStakesTo(address[] calldata providers) external override view returns (uint128[] memory) {
        uint128[] memory stakes = new uint128[](providers.length);

        for (uint32 i = 0; i < providers.length; i++) {
            stakes[i] = _stakers[msg.sender].staked[providers[i]];
        }

        return stakes;
    }

    /*
     * @notice Get rewards earned by staker at provider
     * @return amount of rewards which staker can claim
     */
    function getValidationReward(address provider, address staker) public override view returns (uint256) {
        uint128 staked = _stakers[staker].staked[provider];
        uint128 shares = _stakers[staker].shares[provider];
        uint128 claimed = _stakers[staker].claimedReward[provider];

        uint256 balance = _fromShares(provider, shares);
        if (balance < staked + claimed) {
            return 0;
        }
        uint256 reward = balance - (staked + claimed);
        if (_config.isNative()) {
            return reward;
        } else {
            return Converter.gno(uint128(reward));
        }
    }

    /**
     * @notice calculate total pending validation reward for all staked providers
     */
    function getTotalValidationReward(address staker) external override view returns (uint256) {
        address[] memory providers = _config.getProviderRegistry().getProviders();
        uint256 total = 0;

        for (uint256 i = 0; i < providers.length; i++) {
            total += getValidationReward(providers[i], staker);
        }
        return total;
    }

    /* Shares math */

    function _fromShares(address provider, uint256 shares) internal view returns (uint256) {
        Pool memory pool = _pools[provider];

        if (pool.validationSharesSupply == 0) {
            return shares;
        }

        uint128 currentRewards = _config.getValidatorManager().getReward(provider) - pool.claimedReward;
        uint128 currentBalance = pool.stakedBalance + pool.pendingBalance - pool.pendingUnstake;
        uint256 total = uint256(currentBalance + currentRewards);

        return shares.mulDiv(total, uint256(pool.validationSharesSupply));
    }

    function _toShares(address provider, uint256 amount) internal view returns (uint256) {
        Pool memory pool = _pools[provider];

        uint128 currentRewards = _config.getValidatorManager().getReward(provider) - pool.claimedReward;
        uint128 currentBalance = pool.stakedBalance + pool.pendingBalance - pool.pendingUnstake;
        uint256 total = uint256(currentBalance + currentRewards);

        if (total == 0) {
            return amount;
        }

        return (amount * pool.validationSharesSupply).ceilDiv(total);
    }

    /**
     * @notice Get the total amount of undistributed queue
     * @param provider Node provider address
     * @param staker Staker address
     * @return Amount which still not distributed to unstake recipient
     */
    function getPendingUnstakesOf(
        address provider,
        address staker
    ) external view returns (uint128) {
        if (_config.isNative()) {
            return _stakers[staker].unstaked[provider];
        } else {
            return Converter.gno(_stakers[staker].unstaked[provider]);
        }
    }

    function getProviderPendingUnstakes(address provider) external view returns (uint128) {
        if (_config.isNative()) {
            return _pools[provider].pendingUnstake;
        } else {
            return Converter.gno(_pools[provider].pendingUnstake);
        }
    }

    /*
     * @notice take fee from rewards, pay unstakes, restake the rest of rewards, claim withdrawals
     * @dev control fee from backend
     * @param provider - provider's address
     * @param claimWithdr - show is needed to withdraw exited amount or no
     */
    function distributeUnstakes(address provider) external onlyERC20 onlyConsensus {
        require(
            _DISTRIBUTE_GAS_LIMIT > 0,
            "StakingPool: DISTRIBUTE_GAS_LIMIT is not set"
        );

        Pool memory pool = _pools[provider];

        // claim withdrawals from depositContract
        _config.getValidatorManager().withdraw(provider);

        Unstake[] memory unstakes = _pendingProviderUnstakeRequests[provider];
        uint256 i = _pendingProviderUnstakeGap[provider];

        address[] memory claimers = new address[](
            unstakes.length - i
        );

        uint256[] memory amounts = new uint256[](
            unstakes.length - i
        );

        uint128 withdrawable = Converter.mgno(_config.getValidatorManager().getWithdrawable(provider));

        uint256 j = 0;
        while (
            i < unstakes.length &&
            withdrawable + pool.pendingBalance > 0 &&
            gasleft() > _DISTRIBUTE_GAS_LIMIT
        ) {
            Unstake memory unstake = unstakes[i];

            // empty unstake
            if (unstake.receiver == address(0) || unstake.amount == 0) {
                i++;
                continue;
            }

            if (withdrawable + pool.pendingBalance < unstake.amount) {
                break;
            }

            // sub first from pending
            if (pool.pendingBalance >= unstake.amount) {
                pool.pendingBalance -= unstake.amount;
                _config.getStakeToken().transfer(unstake.receiver, Converter.gno(unstake.amount));
            } else {
                uint128 restUnstakeAm = unstake.amount - pool.pendingBalance;
                _config.getStakeToken().transfer(unstake.receiver, Converter.gno(pool.pendingBalance));
                pool.pendingBalance = 0;

                pool.stakedBalance -= restUnstakeAm;
                withdrawable -= restUnstakeAm;
                _config.getValidatorManager().sendUnstake(provider, unstake.receiver, restUnstakeAm);
            }

            pool.pendingUnstake -= unstake.amount;
            pool.confirmedUnstake += unstake.amount;
            _stakers[unstake.receiver].unstaked[provider] -= unstake.amount;

            delete _pendingProviderUnstakeRequests[provider][i];
            i++;

            claimers[j] = unstake.receiver;
            if (_config.isNative()) {
                amounts[j] = unstake.amount;
            } else {
                amounts[j] = Converter.gno(unstake.amount);
            }
            j++;
        }

        // save gap, because some receivers could have zero values
        _pendingProviderUnstakeGap[provider] = i;
        _pools[provider] = pool;

        if (claimers.length > 0) {
            /* decrease arrays */
            uint256 removeCells = claimers.length - j;
            if (removeCells > 0) {
                assembly {
                    mstore(claimers, j)
                }
                assembly {
                    mstore(amounts, j)
                }
            }
        }

        emit UnstakesDistributed(provider, claimers, amounts);
    }

    function updateDistributeGasLimit(uint256 newValue) external onlyOwner {
        require(newValue > 0, "GlobalPool: cannot be zero");
        emit DistributeGasLimitChanged(_DISTRIBUTE_GAS_LIMIT, newValue);
        _DISTRIBUTE_GAS_LIMIT = newValue;
    }

    /**
     * @dev Allows to unwrap the mGNO in this contract to GNO
     * Only governance can call this method.
     * @param unwrapper address of the mGNO token unwrapper
     */
    function unwrapTokens(IUnwrapper unwrapper, IERC20 token) external onlyGovernance {
        unwrapper.unwrap(address(_config.getStakeToken()), token.balanceOf(address(this)));
    }
}

// ============================================================
// FILE: /contracts/ValidatorManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./interfaces/IStakingPool.sol";
import "./interfaces/IProviderRegistry.sol";
import "./interfaces/IValidatorManager.sol";
import "./interfaces/ITipCollector.sol";
import "./interfaces/IRewardPool.sol";
import "./interfaces/IStakingConfig.sol";
import "./TipCollector.sol";
import "./RewardPool.sol";

contract ValidatorManager is OwnableUpgradeable, IValidatorManager, ReentrancyGuardUpgradeable {

    mapping(address => RewardPoolData) internal _pools;
    struct RewardPoolData {
        // claimed rewards by users
        mapping(address => uint128) claimed;
        IRewardPool rewardPool;
        uint128 commissionClaimed;
        // pendingReward stores rewards on beacon chain with 9 decimals
        uint64 pendingReward;
    }

    mapping(address => CollectorData) internal _collectors;
    struct CollectorData {
        // claimed rewards by users
        mapping(address => uint128) claimed;
        ITipCollector collector;
        uint128 providerClaimed;
    }

    IStakingConfig internal _config;

    modifier onlyRegistry() {
        require(msg.sender == address(_config.getProviderRegistry()), "ValidatorManager: only registry allowed");
        _;
    }

    modifier onlyConsensus() {
        require(msg.sender == _config.getConsensus(), "ValidatorManager: only consensus allowed");
        _;
    }

    function initialize(IStakingConfig config) public initializer {
        __Ownable_init();
        __ReentrancyGuard_init();
        _config = config;
    }

    // Deployment

    // @dev not used in Gnosis staking
    function deployCollector(address provider) external override onlyRegistry {
        _deployCollectorIfNotExist(provider);
    }

    function deployRewardPool(address provider) external override onlyRegistry {
        _deployRewardPoolIfNotExist(provider);
    }

    // TODO: use proxy?
    function _deployCollectorIfNotExist(address provider) internal {
        require(_config.isNative(), "ValidatorManager: tip collector not available for ERC20 staking");
        CollectorData storage data = _collectors[provider];
        if (address(data.collector) == address(0x00)) {
            TipCollector collector = new TipCollector();
            collector.initAndObtainOwnership();
            data.collector = collector;
            emit TipCollectorAdded(provider, address(collector));
        }
    }

    // TODO: use proxy?
    function _deployRewardPoolIfNotExist(address provider) internal {
        if (address(_pools[provider].rewardPool) == address(0x00)) {
            RewardPool rewardPool = new RewardPool();
            rewardPool.initAndObtainOwnership(_config);
            _pools[provider].rewardPool = rewardPool;
            emit RewardPoolAdded(provider, address(rewardPool));
        }
    }

    function getCollector(address provider) external view returns (address) {
        return address(_collectors[provider].collector);
    }

    function getRewardPool(address provider) external view returns (address) {
        return address(_pools[provider].rewardPool);
    }

    // Tip Collectors

    function getTotalTipReward(address provider) public override view returns (uint256) {
        return _collectors[provider].collector.getTotalRewarded();
    }

    // Reward Pools

    function publishPendingRewards(address[] calldata providers, uint64[] calldata rewards) external onlyConsensus {
        require(providers.length == rewards.length, "ValidatorManager: providers length should be equal to rewards");
        for (uint256 i = 0; i < providers.length; i++) {
            require(_pools[providers[i]].pendingReward <= rewards[i], "ValidatorManager: reward cannot be decreased");
            _pools[providers[i]].pendingReward = rewards[i];
        }
    }

    // mul for 1e9 needed to convert from 9 decimals to 18
    function getPendingReward(address provider) public override view returns (uint256) {
        return uint256(_pools[provider].pendingReward) * 1e9;
    }
}
