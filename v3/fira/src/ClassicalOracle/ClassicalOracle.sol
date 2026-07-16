// SPDX-License-Identifier: Apache-2.0
pragma solidity =0.8.20 ^0.8.20;

// lib/openzeppelin-contracts/contracts/access/IAccessControl.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/IAccessControl.sol)

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

// lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

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

// lib/openzeppelin-contracts/contracts/utils/math/Math.sol

// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

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

// lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

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

// src/constants.sol

bytes32 constant ADMIN = keccak256("ADMIN");
bytes32 constant DEFAULT_ADMIN_ROLE = 0x00;
bytes32 constant DAO_COLLATERAL = keccak256("DAO_COLLATERAL_CONTRACT");
bytes32 constant USD0_MINT = keccak256("USD0_MINT");
bytes32 constant USD0_BURN = keccak256("USD0_BURN");
bytes32 constant ALLOWLISTED = keccak256("ALLOWLISTED");
bytes32 constant ALLOWLISTED_ADMIN = keccak256("ALLOWLISTED_ADMIN");

/* Contracts */

bytes32 constant CONTRACT_REGISTRY_ACCESS = keccak256("CONTRACT_REGISTRY_ACCESS");
bytes32 constant CONTRACT_DAO_COLLATERAL = keccak256("CONTRACT_DAO_COLLATERAL");
bytes32 constant CONTRACT_TOKEN_MAPPING = keccak256("CONTRACT_TOKEN_MAPPING");
bytes32 constant CONTRACT_ORACLE = keccak256("CONTRACT_ORACLE");
bytes32 constant CONTRACT_TREASURY = keccak256("CONTRACT_TREASURY");

/* Contract tokens */
bytes32 constant CONTRACT_USD0 = keccak256("CONTRACT_USD0");

/* Constants */
uint256 constant SCALAR_ONE = 1e18;
uint256 constant SCALAR_TEN_KWEI = 10_000;
uint256 constant MAX_REDEEM_FEE = 2500;
uint256 constant MAX_CANCEL_FEE = 2500;
uint256 constant BASIS_POINT_BASE = 10_000;
uint64 constant ONE_WEEK = 604_800;
uint256 constant WAD_MINIMUM_RWA_CONSTRUCTOR = 10e18;
uint256 constant REDEEM_FEE = 10;

uint256 constant INITIAL_MAX_DEPEG_THRESHOLD = 100;

/* Maximum number of RWA tokens that can be associated with USD0 */
uint256 constant MAX_RWA_COUNT = 10;

// src/errors.sol

error AlreadyClaimed();
error AlreadyWhitelisted();
error AmountTooBig();
error AmountTooLow();
error AmountIsZero();
error Blacklisted();

error NotAllowlisted(address);

error Empty();
error SameValue();

error Invalid();
error InvalidToken();
error InvalidName();
error InvalidSymbol();

error LockedOffer();

error NotAuthorized();
error NotClaimableYet();
error NotWhitelisted();
error NullAddress();
error NullContract();

error PriceUpdateBlocked();
error OracleNotWorkingNotCurrent();
error OracleNotInitialized();
error OutOfBounds();
error InvalidTimeout();

error RedeemMustNotBePaused();
error RedeemMustBePaused();
error SwapMustNotBePaused();
error SwapMustBePaused();

error StablecoinDepeg();
error DepegThresholdTooHigh();

error TokenNotWhitelist();

error BondFinished();
error BondNotFinished();

error BeginInPast();

error CBRIsTooHigh();
error CBRIsNull();

error RedeemFeeTooBig();
error CancelFeeTooBig();
error MinterRewardTooBig();
error CollateralProviderRewardTooBig();
error DistributionRatioInvalid();
error TooManyRWA();
error FailingTransfer();

// src/interfaces/oracles/IAggregator.sol

interface IAggregator {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    function getRoundData(uint80 _roundId)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

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

// src/interfaces/oracles/IOracle.sol

interface IOracle {
    /// @notice Get the latest price of a token from the underlying oracle.
    /// @dev    View function which fetches the latest available oracle price from a Chainlink-compatible feed.
    /// @dev    The result is scaled to 18 decimals.
    /// @param  token The address of the token.
    /// @return The price of the token in USD with 18 decimals.
    function getPrice(address token) external view returns (uint256);

    /// @notice Compute a quote for the specified token and amount.
    /// @dev    This function fetches the latest available price from a Chainlink-compatible feed for the token and computes the quote based on the given amount.
    /// @dev    The quote is computed by multiplying the amount of tokens by the token price.
    /// @dev    The result is returned with as many decimals as the input amount.
    /// @param  token  The address of the token to calculate the quote for.
    /// @param  amount The amount of tokens for which to compute the quote.
    /// @return The computed quote in USD with as many decimals as the input.
    function getQuote(address token, uint256 amount) external returns (uint256);

    /// @notice Set the maximum allowed depeg threshold for stablecoins.
    /// @dev    The provided value should be in basis points relative to 1 USD.
    /// @dev    Valid values are from 0 (exact 1:1 peg required) to 10_000 ($0.00-$2.00 allowed).
    /// @dev    getPrice will revert if the price falls outside of this range.
    /// @param  maxAuthorizedDepegPrice The new maximum allowed depeg threshold.
    function setMaxDepegThreshold(uint256 maxAuthorizedDepegPrice) external;
}

// src/interfaces/registry/IRegistryContract.sol

interface IRegistryContract {
    function setContract(bytes32 name, address contractAddress) external;

    function getContract(bytes32 name) external view returns (address);
}

// lib/openzeppelin-contracts/contracts/access/extensions/IAccessControlDefaultAdminRules.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/extensions/IAccessControlDefaultAdminRules.sol)

/**
 * @dev External interface of AccessControlDefaultAdminRules declared to support ERC165 detection.
 */
interface IAccessControlDefaultAdminRules is IAccessControl {
    /**
     * @dev The new default admin is not a valid default admin.
     */
    error AccessControlInvalidDefaultAdmin(address defaultAdmin);

    /**
     * @dev At least one of the following rules was violated:
     *
     * - The `DEFAULT_ADMIN_ROLE` must only be managed by itself.
     * - The `DEFAULT_ADMIN_ROLE` must only be held by one account at the time.
     * - Any `DEFAULT_ADMIN_ROLE` transfer must be in two delayed steps.
     */
    error AccessControlEnforcedDefaultAdminRules();

    /**
     * @dev The delay for transferring the default admin delay is enforced and
     * the operation must wait until `schedule`.
     *
     * NOTE: `schedule` can be 0 indicating there's no transfer scheduled.
     */
    error AccessControlEnforcedDefaultAdminDelay(uint48 schedule);

    /**
     * @dev Emitted when a {defaultAdmin} transfer is started, setting `newAdmin` as the next
     * address to become the {defaultAdmin} by calling {acceptDefaultAdminTransfer} only after `acceptSchedule`
     * passes.
     */
    event DefaultAdminTransferScheduled(address indexed newAdmin, uint48 acceptSchedule);

    /**
     * @dev Emitted when a {pendingDefaultAdmin} is reset if it was never accepted, regardless of its schedule.
     */
    event DefaultAdminTransferCanceled();

    /**
     * @dev Emitted when a {defaultAdminDelay} change is started, setting `newDelay` as the next
     * delay to be applied between default admin transfer after `effectSchedule` has passed.
     */
    event DefaultAdminDelayChangeScheduled(uint48 newDelay, uint48 effectSchedule);

    /**
     * @dev Emitted when a {pendingDefaultAdminDelay} is reset if its schedule didn't pass.
     */
    event DefaultAdminDelayChangeCanceled();

    /**
     * @dev Returns the address of the current `DEFAULT_ADMIN_ROLE` holder.
     */
    function defaultAdmin() external view returns (address);

    /**
     * @dev Returns a tuple of a `newAdmin` and an accept schedule.
     *
     * After the `schedule` passes, the `newAdmin` will be able to accept the {defaultAdmin} role
     * by calling {acceptDefaultAdminTransfer}, completing the role transfer.
     *
     * A zero value only in `acceptSchedule` indicates no pending admin transfer.
     *
     * NOTE: A zero address `newAdmin` means that {defaultAdmin} is being renounced.
     */
    function pendingDefaultAdmin() external view returns (address newAdmin, uint48 acceptSchedule);

    /**
     * @dev Returns the delay required to schedule the acceptance of a {defaultAdmin} transfer started.
     *
     * This delay will be added to the current timestamp when calling {beginDefaultAdminTransfer} to set
     * the acceptance schedule.
     *
     * NOTE: If a delay change has been scheduled, it will take effect as soon as the schedule passes, making this
     * function returns the new delay. See {changeDefaultAdminDelay}.
     */
    function defaultAdminDelay() external view returns (uint48);

    /**
     * @dev Returns a tuple of `newDelay` and an effect schedule.
     *
     * After the `schedule` passes, the `newDelay` will get into effect immediately for every
     * new {defaultAdmin} transfer started with {beginDefaultAdminTransfer}.
     *
     * A zero value only in `effectSchedule` indicates no pending delay change.
     *
     * NOTE: A zero value only for `newDelay` means that the next {defaultAdminDelay}
     * will be zero after the effect schedule.
     */
    function pendingDefaultAdminDelay() external view returns (uint48 newDelay, uint48 effectSchedule);

    /**
     * @dev Starts a {defaultAdmin} transfer by setting a {pendingDefaultAdmin} scheduled for acceptance
     * after the current timestamp plus a {defaultAdminDelay}.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * Emits a DefaultAdminRoleChangeStarted event.
     */
    function beginDefaultAdminTransfer(address newAdmin) external;

    /**
     * @dev Cancels a {defaultAdmin} transfer previously started with {beginDefaultAdminTransfer}.
     *
     * A {pendingDefaultAdmin} not yet accepted can also be cancelled with this function.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * May emit a DefaultAdminTransferCanceled event.
     */
    function cancelDefaultAdminTransfer() external;

    /**
     * @dev Completes a {defaultAdmin} transfer previously started with {beginDefaultAdminTransfer}.
     *
     * After calling the function:
     *
     * - `DEFAULT_ADMIN_ROLE` should be granted to the caller.
     * - `DEFAULT_ADMIN_ROLE` should be revoked from the previous holder.
     * - {pendingDefaultAdmin} should be reset to zero values.
     *
     * Requirements:
     *
     * - Only can be called by the {pendingDefaultAdmin}'s `newAdmin`.
     * - The {pendingDefaultAdmin}'s `acceptSchedule` should've passed.
     */
    function acceptDefaultAdminTransfer() external;

    /**
     * @dev Initiates a {defaultAdminDelay} update by setting a {pendingDefaultAdminDelay} scheduled for getting
     * into effect after the current timestamp plus a {defaultAdminDelay}.
     *
     * This function guarantees that any call to {beginDefaultAdminTransfer} done between the timestamp this
     * method is called and the {pendingDefaultAdminDelay} effect schedule will use the current {defaultAdminDelay}
     * set before calling.
     *
     * The {pendingDefaultAdminDelay}'s effect schedule is defined in a way that waiting until the schedule and then
     * calling {beginDefaultAdminTransfer} with the new delay will take at least the same as another {defaultAdmin}
     * complete transfer (including acceptance).
     *
     * The schedule is designed for two scenarios:
     *
     * - When the delay is changed for a larger one the schedule is `block.timestamp + newDelay` capped by
     * {defaultAdminDelayIncreaseWait}.
     * - When the delay is changed for a shorter one, the schedule is `block.timestamp + (current delay - new delay)`.
     *
     * A {pendingDefaultAdminDelay} that never got into effect will be canceled in favor of a new scheduled change.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * Emits a DefaultAdminDelayChangeScheduled event and may emit a DefaultAdminDelayChangeCanceled event.
     */
    function changeDefaultAdminDelay(uint48 newDelay) external;

    /**
     * @dev Cancels a scheduled {defaultAdminDelay} change.
     *
     * Requirements:
     *
     * - Only can be called by the current {defaultAdmin}.
     *
     * May emit a DefaultAdminDelayChangeCanceled event.
     */
    function rollbackDefaultAdminDelay() external;

    /**
     * @dev Maximum time in seconds for an increase to {defaultAdminDelay} (that is scheduled using {changeDefaultAdminDelay})
     * to take effect. Default to 5 days.
     *
     * When the {defaultAdminDelay} is scheduled to be increased, it goes into effect after the new delay has passed with
     * the purpose of giving enough time for reverting any accidental change (i.e. using milliseconds instead of seconds)
     * that may lock the contract. However, to avoid excessive schedules, the wait is capped by this function and it can
     * be overrode for a custom {defaultAdminDelay} increase scheduling.
     *
     * IMPORTANT: Make sure to add a reasonable amount of time while overriding this value, otherwise,
     * there's a risk of setting a high new delay that goes into effect almost immediately without the
     * possibility of human intervention in the case of an input error (eg. set milliseconds instead of seconds).
     */
    function defaultAdminDelayIncreaseWait() external view returns (uint48);
}

// lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

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

// src/interfaces/registry/IRegistryAccess.sol

// solhint-disable-next-line no-empty-blocks
interface IRegistryAccess is IAccessControlDefaultAdminRules {}

// src/utils/CheckAccessControl.sol

/// @title Check Access control library
library CheckAccessControl {
    /// @dev Function to restrict to one access role.
    /// @param registryAccess The registry access contract.
    /// @param role The role being checked.
    function onlyMatchingRole(IRegistryAccess registryAccess, bytes32 role) internal view {
        if (!registryAccess.hasRole(role, msg.sender)) {
            revert NotAuthorized();
        }
    }

    /// @dev Function to restrict two access roles.
    /// @param registryAccess The registry access contract.
    /// @param role1 The first role being checked.
    /// @param role2 The second role being checked.
    function onlyMatchingTwoRoles(IRegistryAccess registryAccess, bytes32 role1, bytes32 role2)
        internal
        view
    {
        if (
            !registryAccess.hasRole(role1, msg.sender) && !registryAccess.hasRole(role2, msg.sender)
        ) {
            revert NotAuthorized();
        }
    }
}

// src/utils/normalize.sol

/// @title Normalize decimals between tokens
library Normalize {
    /// @notice Normalize token amount to target decimals
    /// @notice i.e 100 USDC with 6 decimals to 100e18 USDC with 18 decimals
    /// @param tokenAmount The token amount
    /// @param tokenDecimals The token decimals
    /// @param targetDecimals The target decimals
    function tokenAmountToDecimals(uint256 tokenAmount, uint8 tokenDecimals, uint8 targetDecimals)
        internal
        pure
        returns (uint256)
    {
        if (tokenDecimals < targetDecimals) {
            return tokenAmount * (10 ** uint256(targetDecimals - tokenDecimals));
        } else if (tokenDecimals > targetDecimals) {
            return tokenAmount / (10 ** uint256(tokenDecimals - targetDecimals));
        } else {
            return tokenAmount;
        }
    }

    /// @notice Normalize token amount to 18 decimals
    /// @notice i.e 100 USDC with 6 decimals to 100e18 USDC with 18 decimals
    /// @param tokenAmount The token amount
    /// @param tokenDecimals The token decimals
    function tokenAmountToWad(uint256 tokenAmount, uint8 tokenDecimals)
        internal
        pure
        returns (uint256)
    {
        return tokenAmountToDecimals(tokenAmount, tokenDecimals, 18);
    }

    /// @notice Normalize token amount to wad
    /// @notice i.e 10e6 USYC with 6 decimals will result in wadAmount = 10e18 and  tokenDecimals = 6
    /// @param token The token address
    /// @param tokenAmount The token amount
    /// @return wadAmount The normalized token amount in wad
    /// @return tokenDecimals The token decimals
    function tokenAmountToWadWithTokenAddress(uint256 tokenAmount, address token)
        internal
        view
        returns (uint256, uint8)
    {
        uint8 tokenDecimals = IERC20Metadata(token).decimals();
        uint256 wadAmount = tokenAmountToWad(tokenAmount, tokenDecimals);
        return (wadAmount, tokenDecimals);
    }

    /// @notice Returns wad amount of token at wad price.
    /// @notice i.e 10e6 USYC with 6 decimals will be wadAmount = 10e18
    /// @notice if wadPrice is 1e18 USD then 10e18 USD0 will be worth 10e18 USD
    /// @param wadAmount The wad amount (18 decimals)
    /// @param wadPrice The wad price (18 decimals)
    /// @return The normalized token amount for price
    function wadAmountByPrice(uint256 wadAmount, uint256 wadPrice)
        internal
        pure
        returns (uint256)
    {
        return Math.mulDiv(wadAmount, wadPrice, SCALAR_ONE, Math.Rounding.Floor);
    }

    /// @notice return how much token we can have for stable amount.
    /// @notice i.e 10 (10e18) USD0 with 18 decimals worth 2$ each (2e18) will return 5e6 USYC with 6 decimals
    /// @param wadStableAmount The wad stable token amount
    /// @param wadPrice The wad price with for the token in stable
    /// @param tokenDecimals The token decimals
    /// @return The token amount for price with token decimals
    function wadTokenAmountForPrice(uint256 wadStableAmount, uint256 wadPrice, uint8 tokenDecimals)
        internal
        pure
        returns (uint256)
    {
        return Math.mulDiv(wadStableAmount, 10 ** tokenDecimals, wadPrice, Math.Rounding.Floor);
    }

    /// @dev Converts a WAD amount to a different number of decimals.
    /// @param wadAmount The WAD amount to convert.
    /// @param targetDecimals The number of decimals to convert to.
    /// @return The converted amount with the target number of decimals.
    function wadAmountToDecimals(uint256 wadAmount, uint8 targetDecimals)
        internal
        pure
        returns (uint256)
    {
        return tokenAmountToDecimals(wadAmount, 18, targetDecimals);
    }
}

// src/oracles/AbstractOracle.sol

/// @author  Usual Tech Team
/// @title   Abstract Oracle contract
/// @dev     This contract returns the price of a token given its address.
/// @dev     It aggregates one Chainlink-compatible oracle per available token.
abstract contract AbstractOracle is IOracle, Initializable {
    using CheckAccessControl for IRegistryAccess;
    using Normalize for uint256;

    /// @notice Struct representing the oracle information for a token
    struct TokenOracle {
        address dataSource;
        /// @notice The oracle contract for the token
        bool isStablecoin;
        // timeout in seconds
        uint64 timeout;
    }
    /// @notice Flag indicating if the token is stable token

    /*//////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    /// @notice Event emitted when the value of the max depeg threshold change
    event SetMaxDepegThreshold(uint256 newMaxDepegThreshold);

    /*//////////////////////////////////////////////////////////////
                                Storage
    //////////////////////////////////////////////////////////////*/

    // Storage struct of the contract
    struct AbstractOracleStorageV0 {
        IRegistryContract registryContract;
        IRegistryAccess registryAccess;
        /// @notice mapping to get all oracle information from a token
        mapping(address token => TokenOracle) tokenToOracleInfo;
        uint256 maxDepegThreshold;
    }

    // keccak256(abi.encode(uint256(keccak256("abstractoracle.storage.v0")) - 1)) & ~bytes32(uint256(0xff))
    // solhint-disable-next-line
    bytes32 public constant AbstractOracleStorageV0Location =
        0x51aa7d76d8341fbde5c4ba9b425bca5cb989c0653f626e6ddb9e8c525c168300;

    /// @notice Returns the storage struct of the contract.
    /// @return $ The pointer to the storage struct of the contract.
    function _abstractOracleStorageV0() internal pure returns (AbstractOracleStorageV0 storage $) {
        bytes32 position = AbstractOracleStorageV0Location;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := position
        }
    }

    /*//////////////////////////////////////////////////////////////
                             Constructor
    //////////////////////////////////////////////////////////////*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Constructor for initializing the contract.
    /// @dev    This constructor is used to set the initial state of the contract.
    /// @param  registryContract The registry contract address.
    // solhint-disable-next-line func-name-mixedcase
    function __AbstractOracle_init_unchained(address registryContract) internal onlyInitializing {
        if (registryContract == address(0)) {
            revert NullAddress();
        }

        AbstractOracleStorageV0 storage $ = _abstractOracleStorageV0();
        $.registryContract = IRegistryContract(registryContract);
        $.registryAccess = IRegistryAccess($.registryContract.getContract(CONTRACT_REGISTRY_ACCESS));
        $.maxDepegThreshold = INITIAL_MAX_DEPEG_THRESHOLD;
        emit SetMaxDepegThreshold(INITIAL_MAX_DEPEG_THRESHOLD);
    }

    /// @notice Get the maximum allowed depeg threshold for stablecoins.
    /// @dev    The returned value is in basis points relative to 1 USD.
    /// @dev    Valid values are from 0 (exact 1:1 peg required) to 10_000 ($0.00-$2.00 allowed).
    /// @dev    getPrice will revert if the price falls outside of this range.
    /// @return The maximum allowed depeg threshold in basis points.
    function getMaxDepegThreshold() external view returns (uint256) {
        AbstractOracle.AbstractOracleStorageV0 storage $ = _abstractOracleStorageV0();
        return $.maxDepegThreshold;
    }

    /// @notice Set the maximum allowed depeg threshold for stablecoins.
    /// @dev    The provided value should be in basis points relative to 1 USD.
    /// @dev    Valid values are from 0 (exact 1:1 peg required) to 10_000 ($0.00-$2.00 allowed).
    /// @dev    getPrice will revert if the price falls outside of this range.
    /// @param  maxAuthorizedDepegPrice The new maximum allowed depeg threshold.
    function setMaxDepegThreshold(uint256 maxAuthorizedDepegPrice) external virtual {
        AbstractOracleStorageV0 storage $ = _abstractOracleStorageV0();
        $.registryAccess.onlyMatchingRole(DEFAULT_ADMIN_ROLE);

        if ($.maxDepegThreshold == maxAuthorizedDepegPrice) revert SameValue();
        if (maxAuthorizedDepegPrice > BASIS_POINT_BASE) revert DepegThresholdTooHigh();
        $.maxDepegThreshold = maxAuthorizedDepegPrice;
        emit SetMaxDepegThreshold(maxAuthorizedDepegPrice);
    }

    // --- Functions ---

    /// @inheritdoc IOracle
    function getPrice(address token) public view override returns (uint256) {
        (uint256 price, uint256 decimalsPrice) = _latestRoundData(token);
        price = price.tokenAmountToWad(uint8(decimalsPrice));
        _checkDepegPrice(token, price);
        return price;
    }

    /// @inheritdoc IOracle
    function getQuote(address token, uint256 amount) external view override returns (uint256) {
        return Math.mulDiv(getPrice(token), amount, SCALAR_ONE);
    }

    /*//////////////////////////////////////////////////////////////
                                Helpers
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the most recent oracle response for a token.
    /// @param  token    The address of the token
    /// @return price    The most recent oracle response.
    /// @return decimals The amount of decimals for the price.
    function _latestRoundData(address token)
        internal
        view
        virtual
        returns (uint256 price, uint256 decimals);

    /// @notice Check if a given token's price is around 1 USD.
    /// @dev    Reverts if the stablecoin has depegged.
    /// @dev    The allowed range is determined by maxDepegThreshold.
    /// @param  token         The address of the token.
    /// @param  wadPriceInUSD The price of the token returned by the underlying oracle.
    function _checkDepegPrice(address token, uint256 wadPriceInUSD) internal view {
        AbstractOracleStorageV0 storage $ = _abstractOracleStorageV0();

        // Skip the check if the token is not a stablecoin
        if (!$.tokenToOracleInfo[token].isStablecoin) return;

        uint256 threshold = Math.mulDiv($.maxDepegThreshold, SCALAR_ONE, BASIS_POINT_BASE);

        if (wadPriceInUSD > SCALAR_ONE + threshold || wadPriceInUSD < SCALAR_ONE - threshold) {
            revert StablecoinDepeg();
        }
    }
}

// src/oracles/ClassicalOracle.sol

/// @author  Usual Tech Team
/// @title   Classical Oracle System
/// @dev     This oracle aggregates existing oracles for various tokens.
/// @dev     It makes the price of these tokens available through a common interface.
contract ClassicalOracle is IOracle, AbstractOracle {
    using CheckAccessControl for IRegistryAccess;

    /*//////////////////////////////////////////////////////////////
                             Constructor
    //////////////////////////////////////////////////////////////*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Constructor for initializing the contract.
    /// @dev    This constructor is used to set the initial state of the contract.
    /// @param  registryContract The registry contract address.
    function initialize(address registryContract) public initializer {
        __AbstractOracle_init_unchained(registryContract);
    }

    /// @notice Initialize a new supported token.
    /// @dev    When adding a new token, we assume that the provided oracle is working.
    /// @param  token          The address of the new token.
    /// @param  dataSource The address of the Chainlink aggregator, i.e. underlying oracle.
    /// @param  timeout        The timeout in seconds.
    function initializeTokenOracle(
        address token,
        address dataSource,
        uint64 timeout,
        bool isStablecoin
    ) external {
        // best practice start with access control, followed by parameter validation
        AbstractOracle.AbstractOracleStorageV0 storage $ = _abstractOracleStorageV0();
        $.registryAccess.onlyMatchingRole(DEFAULT_ADMIN_ROLE);

        if (token == address(0)) revert NullAddress();
        if (dataSource == address(0)) revert NullAddress();
        // The timeout can't be zero and must be at most one week
        if (timeout == 0 || timeout > ONE_WEEK) revert InvalidTimeout();

        // slither-disable-next-line unused-return
        (, int256 answer,, uint256 updatedAt,) = IAggregator(dataSource).latestRoundData();
        if (answer <= 0 || updatedAt == 0 || block.timestamp > updatedAt + timeout) {
            revert OracleNotWorkingNotCurrent();
        }

        $.tokenToOracleInfo[token].dataSource = dataSource;
        $.tokenToOracleInfo[token].isStablecoin = isStablecoin;
        $.tokenToOracleInfo[token].timeout = timeout;
    }

    /// @inheritdoc AbstractOracle
    function _latestRoundData(address token) internal view override returns (uint256, uint256) {
        AbstractOracleStorageV0 storage $ = _abstractOracleStorageV0();
        IAggregator priceAggregatorProxy = IAggregator($.tokenToOracleInfo[token].dataSource);

        if (address(priceAggregatorProxy) == address(0)) revert OracleNotInitialized();

        uint256 decimals = priceAggregatorProxy.decimals();

        // slither-disable-next-line unused-return
        (, int256 answer,, uint256 updatedAt,) = priceAggregatorProxy.latestRoundData();
        // track the updatedAt value from  latestRoundData()
        // to make sure that the latest answer is recent enough for your application to use it
        // detects that the reported answer is not updated within the heartbeat timeout
        if (
            answer <= 0 || updatedAt > block.timestamp
                || block.timestamp > $.tokenToOracleInfo[token].timeout + updatedAt
        ) {
            revert OracleNotWorkingNotCurrent();
        }
        return (uint256(answer), decimals);
    }
}