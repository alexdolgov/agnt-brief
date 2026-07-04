// File: @openzeppelin/contracts/utils/math/SignedMath.sol


// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.18;

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

// File: @openzeppelin/contracts/utils/math/Math.sol


// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.18;

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

// File: @openzeppelin/contracts/utils/Strings.sol


// OpenZeppelin Contracts (last updated v5.0.0) (utils/Strings.sol)

pragma solidity ^0.8.18;



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

// File: Futuresv9.sol

/*
    SPDX-License-Identifier: MIT
    A Bankteller Production
    Elephant Money
    Copyright 2024
*/

/*
    Elephant Money Futures

    - A high yield cashhflow engine that earns up to 0.5% daily on cash 
    - 100% on-chain
    - Scalable and always open for business
    - Core yield generation is provided by the unstoppable and proven ELEPHANT Treasury buyback program
    - Deposit BNB and earn BNB rewards; no stable coin risk
    - Paid out at up to 0.5% daily of your remaining balance
    - Health checks establish a safe base group rate the system can handle
    - Regular deposits provide up to a 0.5% bonus daily rate
    - Auto compound rewards on ever deposit 
    - Claim at any time down to the second
    - No fees or taxes of any kind
    - Yield is paid by a growing Elephant Treasury
    - 50% of deposits market buy ELEPHANT
    - 10% of deposits are held in a BNB Reserve for yield repayment
    - 10% of deposits buy and hold BTC with variable ELEPHANT buybacks
    - 20% of deposits buy and hold TRUNK with variable ELEPHANT buybacks
    - 10% of deposits fund a Rainy Day Fund for 50% redemption of principal  
    - 200 USD deposit minimum, 1M USD max balance, 2.5M USD max payouts, and 50K USD max daily claim 

    Only at https://elephant.money

*/


pragma solidity ^0.8.18;


abstract contract ReentrancyGuard {
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

    constructor() {
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
}

abstract contract Context is ReentrancyGuard {

    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }

}



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
abstract contract Ownable is Context {
    address private _owner;
    address private _previousOwner;
    bool private _paused;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );
    event RunStatusUpdated(bool indexed paused);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        _paused = false;
        emit RunStatusUpdated(_paused);
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Returns if paused status
     */
    function isPaused() public view returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Throws if called when contract is paused
     */
    modifier isRunning() {
        require(
            _paused == false,
            "Function unavailable because contract is paused"
        );
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
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    /**
     * @dev Pause the contract for functions that check run status
     * Can only be called by the current owner.
     */
    function updateRunStatus(bool paused) public virtual onlyOwner {
        emit RunStatusUpdated(paused);
        _paused = paused;
    }

}

/**
 * @title Whitelist
 * @dev The Whitelist contract has a whitelist of addresses, and provides basic authorization control functions.
 * @dev This simplifies the implementation of "user permissions".
 */
contract Whitelist is Ownable {
    mapping(address => bool) public whitelist;

    event WhitelistedAddressAdded(address addr);
    event WhitelistedAddressRemoved(address addr);

    /**
     * @dev Throws if called by any account that's not whitelisted.
     */
    modifier onlyWhitelisted() {
        require(whitelist[msg.sender], "not whitelisted");
        _;
    }

    function addAddressToWhitelist(address addr)
        public
        onlyOwner
        returns (bool success)
    {
        if (!whitelist[addr]) {
            whitelist[addr] = true;
            emit WhitelistedAddressAdded(addr);
            success = true;
        }
    }

    function addAddressesToWhitelist(address[] memory addrs)
        public
        onlyOwner
        returns (bool success)
    {
        for (uint256 i = 0; i < addrs.length; i++) {
            if (addAddressToWhitelist(addrs[i])) {
                success = true;
            }
        }
    }

    function removeAddressFromWhitelist(address addr)
        public
        onlyOwner
        returns (bool success)
    {
        if (whitelist[addr]) {
            whitelist[addr] = false;
            emit WhitelistedAddressRemoved(addr);
            success = true;
        }
    }

    function removeAddressesFromWhitelist(address[] memory addrs)
        public
        onlyOwner
        returns (bool success)
    {
        for (uint256 i = 0; i < addrs.length; i++) {
            if (removeAddressFromWhitelist(addrs[i])) {
                success = true;
            }
        }
    }
}

// pragma solidity >=0.5.0;

interface IUniswapV2Factory {
    event PairCreated(
        address indexed token0,
        address indexed token1,
        address pair,
        uint256
    );

    function feeTo() external view returns (address);

    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB)
        external
        view
        returns (address pair);

    function allPairs(uint256) external view returns (address pair);

    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB)
        external
        returns (address pair);

    function setFeeTo(address) external;

    function setFeeToSetter(address) external;
}

// pragma solidity >=0.5.0;

interface IUniswapV2Pair {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Transfer(address indexed from, address indexed to, uint256 value);

    function name() external pure returns (string memory);

    function symbol() external pure returns (string memory);

    function decimals() external pure returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external pure returns (bytes32);

    function nonces(address owner) external view returns (uint256);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Burn(
        address indexed sender,
        uint256 amount0,
        uint256 amount1,
        address indexed to
    );
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint256);

    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );

    function price0CumulativeLast() external view returns (uint256);

    function price1CumulativeLast() external view returns (uint256);

    function kLast() external view returns (uint256);

    function mint(address to) external returns (uint256 liquidity);

    function burn(address to)
        external
        returns (uint256 amount0, uint256 amount1);

    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data
    ) external;

    function skim(address to) external;

    function sync() external;

    function initialize(address, address) external;
}

// pragma solidity >=0.6.2;

interface IUniswapV2Router01 {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
        );

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        );

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETHWithPermit(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountToken, uint256 amountETH);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB);

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountOut);

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountIn);

    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external
        view
        returns (uint256[] memory amounts);

    function getAmountsIn(uint256 amountOut, address[] calldata path)
        external
        view
        returns (uint256[] memory amounts);
}

// pragma solidity >=0.6.2;

interface IUniswapV2Router02 is IUniswapV2Router01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountETH);

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}

interface IERC20 {
    /**
     * @dev Function to mint tokens
     * @param _to The address that will receive the minted tokens.
     * @param _amount The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address _to, uint256 _amount) external returns (bool);

    /**
     * @dev Burns the amount of tokens owned by `msg.sender`.
     */
    function burn(uint256 _value) external;

    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

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
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

interface IElephantYieldEngine {

    function yield(address _user, uint256 _amount)
        external
        returns (uint256  yieldAmount);

    function estimateCollateralToCore(uint256 collateralAmount)
        external
        view
        returns (uint256 wethAmount, uint256 coreAmount);
}

interface ITreasury {
    function withdraw(uint256 tokenAmount) external;

    function withdrawTo(address _to, uint256 _amount) external;
}

interface ITreasuryV2 {
    function withdraw(address _to, uint256 _amount, bool _force) external;

    function withdrawToken(address _to, address _tokenAddress, uint256 _amount, bool _force) external;
}

interface ISponsorData {
    
    function add(address _user, uint256 _amount) external;

    function settle(address _user) external;
}

//@dev Callback function called by FarmEngine.yield upon completion
interface IReferralReport {
    function reward_distribution(address _referrer, address _user, uint _referrer_reward, uint _user_reward) external;

}

interface IEACAggregatorProxy {

    function latestRoundData() external view returns (uint80 roundId , int256 answer , uint256 startedAt , uint256 updatedAt , uint80 answeredInRound);

    function decimals() external view returns (uint8);

}

interface IPcsPeriodicTwapOracle {

    // performs chained update calculations on any number of pairs
    //whitelisted to avoid DDOS attacks since new pairs will be registered
    function updatePath(address[] memory path) external;

    //updates all pairs registered 
    function updateAll() external returns (uint updatedPairs) ;
    
    // performs chained getAmountOut calculations on any number of pairs
    function consultAmountsOut(uint amountIn, address[] memory path) external view returns (uint[] memory amounts);

    // returns the amount out corresponding to the amount in for a given token using the moving average over the time
    // range [now - [windowSize, windowSize - periodSize * 2], now]
    // update must have been called for the bucket corresponding to timestamp `now - windowSize`
    function consult(address tokenIn, uint amountIn, address tokenOut) external view returns (uint amountOut);

}

//@dev Tracks summary information for users across all farms
struct FuturesUser {
    bool exists; //has the user joined
    uint deposits; //total inbound deposits
    uint compound_deposits; //compound deposit; not fresh capital 
    uint current_balance; //current balance
    uint payouts;  //total yield payouts across all farms
    uint rewards; //partner rewards
    uint last_time; //last interaction
}

//@dev Tracks time that user last completed an action
struct FuturesUserAction {
    uint last_deposit;
    uint last_claim;
}

//@dev Tracks Rainy Day Fund Stats
struct FuturesRDFUser {
    uint last_claim;
    uint payouts; //actual cash value payed out to user
}

//@dev Tracks Rainy Day Major Stats
struct FuturesRDFGlobals {
    uint total_claimed;
    uint total_txs;
}

struct FuturesGlobals {
    uint256  total_users;
    uint256  total_deposited;
    uint256  total_compound_deposited;
    uint256  total_claimed;
    uint256  total_rewards;
    uint256  total_txs;
    uint256  current_balance;
}

//@dev Immutable Vault that stores ledger for Elephant Money Futures
contract FuturesVault is Whitelist {
    mapping(address => FuturesUser) private users; //Asset -> User

    FuturesGlobals private globals;

    constructor() Ownable() {}


    //@dev Get User info
    function getUser(address _user) external view returns (FuturesUser memory) {
        return users[_user];
    }

    //@dev Get FuturesGlobal info
    function getGlobals() external view returns (FuturesGlobals memory) {
        return globals;
    }

    //@dev commit User Info
    function commitUser(address _user, FuturesUser memory _user_data)  onlyWhitelisted isRunning external {

        //update user
        users[_user].exists = _user_data.exists; 
        users[_user].deposits = _user_data.deposits; 
        users[_user].compound_deposits = _user_data.compound_deposits;  
        users[_user].current_balance = _user_data.current_balance; 
        users[_user].payouts = _user_data.payouts;  
        users[_user].rewards = _user_data.rewards; 
        users[_user].last_time = _user_data.last_time;

    }

    //@dev commit Globals Info
    function commitGlobals(FuturesGlobals memory _globals) onlyWhitelisted isRunning external {

        //update globals
        globals.total_users = _globals.total_users;
        globals.total_deposited = _globals.total_deposited;
        globals.total_compound_deposited = _globals.total_compound_deposited;
        globals.total_claimed = _globals.total_claimed;
        globals.total_rewards = _globals.total_rewards;
        globals.total_txs = _globals.total_txs;
        globals.current_balance = _globals.current_balance ;
        
    }

}

//@dev Immutable Vault that stores ledger for Elephant Money Futures
contract FuturesRDFVault is Whitelist {
    mapping(address => FuturesRDFUser) private users; //Asset -> User

    FuturesRDFGlobals private globals;

    constructor() Ownable() {}


    //@dev Get User info
    function getUser(address _user) external view returns (FuturesRDFUser memory) {
        return users[_user];
    }

    //@dev Get FuturesGlobal info
    function getGlobals() external view returns (FuturesRDFGlobals memory) {
        return globals;
    }

    //@dev commit User Info
    function commitUser(address _user, FuturesRDFUser memory _user_data)  onlyWhitelisted isRunning external {

        //update user  
        users[_user].payouts = _user_data.payouts; 
        users[_user].last_claim = _user_data.last_claim;

    }

    //@dev commit Globals Info
    function commitGlobals(FuturesRDFGlobals memory _globals) onlyWhitelisted isRunning external {

        //update globals
        globals.total_claimed = _globals.total_claimed;
        globals.total_txs = _globals.total_txs;
        
    }

}

//@dev Immutable Vault that stores ledger for Elephant Money Futures Actions (Deposit / Claim)
contract FuturesActionVault is Whitelist {
    mapping(address => FuturesUserAction) private users; //Asset -> User

    constructor() Ownable() {}


    //@dev Get User info
    function getUser(address _user) external view returns (FuturesUserAction memory) {
        return users[_user];
    }

    //@dev commit User Info
    function commitUser(address _user, FuturesUserAction memory _user_data)  onlyWhitelisted isRunning external {

        //update user
        users[_user].last_deposit = _user_data.last_deposit; 
        users[_user].last_claim = _user_data.last_claim;
    }

}

contract UintToStringTest {

    using Strings for uint256;

    function uintToString(uint256 number) external pure returns (string memory) {
       return number.toString();
    }
}

//@dev  Business logic for Elephan Money Futures
//Engine can be swapped out if upgrades are needed
//Only yield infrastructure and vault can be updated
contract FuturesEngine is Ownable {
    using SafeMath for uint256;
    using Strings for uint256;

    AddressRegistry internal registry;

    //Financial Model
    uint256 public constant rainyDayPercentage = 10; //share of rainyDayFund
    uint256 public constant referenceApr = 182.5e18; //0.5% daily
    uint256 public constant bonusApr = 182.5e18; //0.5% daily
    uint256 public constant bonusPeriod = 45 days;
    uint256 public constant maxBalance = 1000000e18; //1M
    uint256 public constant minimumDeposit = 200e18; //200+ deposits; will compound available rewards
    uint256 public constant maxAvailable = 50000e18; //50K max claim daily, 10 days missed claims 
    uint256 public constant maxPayouts = (maxBalance * 5e18) / 2e18; //2.5M

    bool public forceLiquidity = true; //topOff reserve if claim is large
    uint256 public slippage = 995; //slippage control for buys / sell
    uint public rdfCooldown = 7 days; //cool down between RDF claims
    uint public maxTreasuryPayoutPercentage = 5; // X/1000 , 1 = 0.1%

    
    //Immutable long term network contracts
    ITreasuryV2 public immutable wethTreasury;
    ITreasuryV2 public immutable rainyDayFund;
    IEACAggregatorProxy public immutable chainlinkProxy;
    ITreasury public immutable coreTreasury;
    IERC20 public immutable coreToken;
    IUniswapV2Router02 public  immutable collateralRouter;
    IPcsPeriodicTwapOracle public immutable oracle;
    
    //Updatable components
    FuturesVault public vault;
    FuturesActionVault public actionVault;
    FuturesRDFVault public rdfVault; 
   

    //events
    event Deposit(address indexed user, uint256 amount, uint256 wethAmount);
    event CompoundDeposit(address indexed user, uint256 amount);
    event Claim(address indexed user, uint256 amount, uint256 wethAmount);
    event RDFClaim(address indexed user, uint256 amount, uint256 wethAmount);
    event Transfer(address indexed user, address indexed new_user, uint256 current_balance);
    event UpdateVault(address prev_vault, address vault);
    event UpdateActionVault(address prev_vault, address vault);
    event UpdateSlippage(uint oldSlippage, uint newSlippage);
    event UpdateForceLiquidity(bool value, bool new_value);
    event UpdateRDFVault(address oldVault, address newVault);
    event UpdateRDFCooldown(uint oldCooldown, uint newCooldown);
    event UpdateMaxTreasuryPayoutPercentage(uint oldPercentage, uint newPercentage);


    //@dev Creates a FuturesEngine that contains upgradeable business logic for Futures Vault
    constructor() Ownable() {

         //init reg
        registry = new AddressRegistry();

        /* mythx-disable SWC-113 */

        //treasury setup
        wethTreasury = ITreasuryV2(registry.bnbReserveAddress()); 
        rainyDayFund = ITreasuryV2(registry.rainyDayFundAddress());

          //setup the core tokens
        coreToken = IERC20(registry.coreAddress());

        //the collateral router can be upgraded in the future
        collateralRouter = IUniswapV2Router02(registry.routerAddress());

        //treasury setup
        coreTreasury = ITreasury(registry.coreTreasuryAddress());
        
        chainlinkProxy = IEACAggregatorProxy(registry.chainlinkBNBAddress());

        oracle = IPcsPeriodicTwapOracle(registry.oracleAddress());
       

    }

    //Administrative//

    //@dev Update the FuturesVault
    function updateFuturesVault(address _vault) external onlyOwner {
        require(_vault != address(0), "non-zero");

        emit UpdateVault(address(vault), _vault);

        vault = FuturesVault(_vault);
    }

    //@dev Update the FuturesVault
    function updateFuturesActionVault(address _vault) external onlyOwner {
        require(_vault != address(0), "non-zero");

        emit UpdateActionVault(address(actionVault), _vault);

        actionVault = FuturesActionVault(_vault);
    }

    //@dev Update the FuturesVault
    function updateFuturesRDFVault(address _vault) external onlyOwner {
        require(_vault != address(0), "non-zero");

        emit UpdateRDFVault(address(rdfVault), _vault);

        rdfVault = FuturesRDFVault(_vault);

    }

    //@dev Updates slippage used when setting thresholds for buys
    function updateSlippage(uint _slippage) onlyOwner external {
        require(_slippage < 1000, "slippage < 1000");

        emit UpdateSlippage(slippage, _slippage);

        slippage = _slippage;
        
    } 

    //@dev Updates slippage used when setting thresholds for buys
    function updateMaxTreasuryPayoutPercentage(uint _percentage) onlyOwner external {
        require(_percentage > 0 && _percentage <= 20, "_percentage <= 20, non-zero, <= 2%");

        emit UpdateMaxTreasuryPayoutPercentage(maxTreasuryPayoutPercentage, _percentage);

        maxTreasuryPayoutPercentage = _percentage;
        
    } 

    //@dev Updates the cooldown which controls RDF claim frequency
    function updateRDFCooldown(uint _cooldown) onlyOwner external {
        require(_cooldown >= 7 days && _cooldown <= 90 days, "cooldown must be between 30 - 90 days (seconds)");

        emit UpdateRDFCooldown(rdfCooldown, _cooldown);

        rdfCooldown = _cooldown;

    }

    //@dev Forces the yield engine to topoff liquidity in the collateral buffer on every tx
    //a test harness
    function updateForceLiquidity(bool _force) external onlyOwner {
        
        emit UpdateForceLiquidity(forceLiquidity, _force);
        forceLiquidity = _force;
    }


    ///  Views  ///

    //@dev Get User info
    function getUser(address _user)
        external
        view
        returns (FuturesUser memory)
    {
        return vault.getUser(_user);
    }

    //@dev Get contract snapshot
    function getInfo()
        external
        view
        returns (
            FuturesGlobals memory
        )
    {
        return vault.getGlobals();
    }

    //@dev Converts USD amount to BNB 
    function estimateWethAmount(uint collateralAmount) public view returns (uint wethAmount){
        (, int256 answer , , , ) = chainlinkProxy.latestRoundData();
        uint8 decimals  = chainlinkProxy.decimals();

        wethAmount = collateralAmount * (10 ** decimals) / uint(answer); 
    }

    //@dev Converts BNB amount to USD
    function estimateCollateralAmount(uint wethAmount) public view returns (uint collateralAmount){
        (, int256 answer , , , ) = chainlinkProxy.latestRoundData();
        uint8 decimals  = chainlinkProxy.decimals();

        collateralAmount = wethAmount * uint(answer) / (10 ** decimals);
    }

    //@dev Converts BNB amount to ELEPHANT 
    function estimateCoreAmount(uint wethAmount) public view returns (uint coreAmount) {
        address[] memory path = new address[](2);

        path[0] = collateralRouter.WETH();
        path[1] = registry.coreAddress();

        uint[] memory output =  oracle.consultAmountsOut(wethAmount, path);

        coreAmount = output[1];

    }

     // Estimates the amount of  core tokens getting transfered to USD collateral tokens
    function estimateCoreToCollateral(uint coreAmount) public view returns (uint wethAmount, uint collateralAmount) {
         //Convert from core to WETH using the core's Oracle
        address[] memory path = new address[](2);
        path[0] = address(coreToken);
        path[1] = collateralRouter.WETH();

        uint[] memory amounts = oracle.consultAmountsOut(coreAmount, path);
        
        wethAmount = amounts[1];
        collateralAmount = estimateCollateralAmount(wethAmount);
    }

    //@dev Returns the value of the treasury based on percentage of the treasury. _percentage/1000, 1 = 0.1 %
    function estimatePercentageTreasuryBalance(uint _percentage) public view returns (uint coreAmount, uint wethAmount, uint collateralAmount) {
        
        require(_percentage > 0, "must be greater than 0");

        uint256 coreTreasuryBalance = coreToken.balanceOf(address(coreTreasury));

        coreAmount = coreTreasuryBalance * _percentage / 1000;

        (wethAmount, collateralAmount) = estimateCoreToCollateral(coreAmount); 

    }

    //@dev Scales an amount by how close the wethTreasury is to dailyLiability
    function scaleByPeg(uint amount) public view returns (uint scaledAmount) {

        FuturesGlobals memory globalsData = vault.getGlobals();

        uint dailyLiability = globalsData.current_balance * 5 / 1000; //0.5% (0.005) per day

        uint wethTreasuryInCollateral = estimateCollateralAmount(registry.bnbReserveAddress().balance);

        scaledAmount = amount * wethTreasuryInCollateral / dailyLiability;

        scaledAmount = scaledAmount.min(amount);

    }

    //@dev Scales amount by how recently a deposit has been made a given user
    function depositAPR(address _user) public view returns (uint scaledAmount) {

        FuturesUserAction memory userData = actionVault.getUser(_user);

        uint share = bonusApr / bonusPeriod;

        uint elapsed = block.timestamp.safeSub(userData.last_deposit);

        if (elapsed < bonusPeriod){ //not over period
            scaledAmount = bonusApr.safeSub(share * elapsed); 
        } else {
            scaledAmount = 0;
        }

    }

    //@dev Checks if account is eligible for deposits
    function isEligibleForDeposit(address _user) public view returns (bool eligible) {

        //Load data
        FuturesUser memory userData = vault.getUser(_user);

        eligible = !isPaused() || userData.current_balance > 0;
    }

    //@dev Checks if account  is eligible for rainyday fund claim
    function isEligibleForRDF(address _user) public  view returns (bool eligible, uint returnCode) {
        FuturesUser memory userData = vault.getUser(_user);
        FuturesRDFUser memory userRDFData = rdfVault.getUser(_user);

        //checks
        
        //User is not registered
        if (!userData.exists){
            return (false, 1);
        }

        //balance is required to earn yield
        if(!(userData.current_balance > minimumDeposit * 2)){
            return (false, 2);
        }

        //check time 
        uint elapsed = block.timestamp - userRDFData.last_claim;
        if(!(elapsed >= rdfCooldown)){
            return (false, 3);
        }

        //success
        return (true, 0);

    }

    //@dev Returns maximum RDF claim
    function maxAvailableRDF() public view returns (uint _available, uint _availableWeth) {
        _availableWeth = registry.rainyDayFundAddress().balance / rainyDayPercentage;
        _available = estimateCollateralAmount(_availableWeth);

    }

    //@dev Returns maximum user specific RDF Info
    function maxUserAvailableRDF(address _user) public view returns (uint _userAvailable, uint _eligible_claim, uint _remainingCooldown, uint _last_claim) {
        (uint _maxAvailable,) = maxAvailableRDF();

        FuturesUser memory userData = vault.getUser(_user);
        FuturesRDFUser memory userRDFData = rdfVault.getUser(_user);

        _last_claim = userRDFData.last_claim;

        uint elapsed = block.timestamp - userRDFData.last_claim;

        _remainingCooldown  = rdfCooldown.safeSub(elapsed);

        _userAvailable = userData.current_balance / 2;

        _eligible_claim = _userAvailable;

        (bool eligible, ) = isEligibleForRDF(_user);

        _userAvailable = (eligible) ? _userAvailable.min(_maxAvailable) : 0;
    }


    //@dev Returns tax bracket and adjusted amount based on the bracket 
    function available(address _user) public view returns (uint256 _limiterRate, uint256 _adjustedAmount) {

        (_limiterRate, _adjustedAmount) = availableUncapped(_user);
        
        //available should not be more than maxTreasuryPayoutPercentage
        (,,uint _collateralAmount) = estimatePercentageTreasuryBalance(maxTreasuryPayoutPercentage);

        _adjustedAmount = _adjustedAmount.min(_collateralAmount);

    }

    //@dev Returns tax bracket and adjusted amount based on the bracket 
    function availableUncapped(address _user) public view returns (uint256 _limiterRate, uint256 _adjustedAmount) {

        //Load data
        FuturesUser memory userData = vault.getUser(_user);

        //calculate gross available
        uint share;

        //max of referenceAPR or add personal bonus when severly below peg
        uint totalApr = referenceApr.min(scaleByPeg(referenceApr) + depositAPR(_user)); 

        if(userData.current_balance > 0) {
            //Using 1e18 we capture all significant digits when calculating available divs
            share = userData.current_balance //payout is asymptotic and uses the current balance
                    * totalApr //convert to daily apr
                    / (365 * 100e18)
                    / 24 hours; //divide the profit by payout rate and seconds in the day;
            _adjustedAmount = share * block.timestamp.safeSub(userData.last_time); 

            _adjustedAmount = maxAvailable.min(_adjustedAmount); //minimize red candles

        }

        //apply compound rate limiter
        uint256 _comp_surplus = userData.compound_deposits.safeSub(userData.deposits);

        if (_comp_surplus < 50000e18){
            _limiterRate = 0;
        } else if ( 50000e18 <= _comp_surplus && _comp_surplus < 250000e18 ){
            _limiterRate = 10;
        } else if ( 250000e18 <= _comp_surplus && _comp_surplus < 500000e18 ){
            _limiterRate = 15;
        } else if ( 500000e18 <= _comp_surplus && _comp_surplus < 750000e18 ){
            _limiterRate = 25;
        } else if ( 750000e18 <= _comp_surplus && _comp_surplus < 1000000e18 ){
            _limiterRate = 35;
        } else if (_comp_surplus >= 1000000e18 ){
            _limiterRate = 50;
        }

        _adjustedAmount = _adjustedAmount * (100 - _limiterRate) / 100;


        // payout greater than the balance just pay the balance
        if(_adjustedAmount > userData.current_balance) {
            _adjustedAmount = userData.current_balance;
        }

    }


    /// Internal Functions ////

    //@dev Checks if yield is available and distributes before performing additional operations
    //distributes only when yield is positive
    //inputs are validated by external facing functions 
    function distributeYield(address _user) internal returns (bool success) {

        FuturesUser memory userData = vault.getUser(_user);
        FuturesUserAction memory userActionData = actionVault.getUser(_user);
        FuturesGlobals memory globalsData = vault.getGlobals();
        
        //get available
        (, uint256 _amount) = available(_user);

        // payout remaining allowable divs if exceeds
        if(userData.payouts + _amount > maxPayouts) {
            _amount = maxPayouts.safeSub(userData.payouts);
            _amount = _amount.min(userData.current_balance);  //withdraw up to the current balance
        }

        //attempt to payout yield and update stats;
        if (_amount > 0) {

            //transfer amount to user; mutable
            uint _wethAmount = yield(_user, _amount);

            //reload data after a mutable function
            userData = vault.getUser(_user);
            globalsData = vault.getGlobals();
        
            //user stats
            userData.payouts += _amount;
            userData.current_balance = userData.current_balance.safeSub(_amount);
            userData.last_time = block.timestamp;
            userActionData.last_claim = block.timestamp;

            //total stats
            globalsData.total_claimed += _amount;
            globalsData.total_txs += 1;
            globalsData.current_balance = globalsData.current_balance.safeSub(_amount);

            //commit updates
            vault.commitUser(_user, userData);
            actionVault.commitUser(_user, userActionData);

            vault.commitGlobals(globalsData);

            //log events
            emit Claim(_user, _amount, _wethAmount);

            return true;

        } 

        //default
        return false;
    } 

    //@dev Checks if yield is available and distributes before performing additional operations
    //distributes only when yield is positive
    //inputs are validated by external facing functions 
    function distributeRDF(address _user, uint _amount) internal returns (bool success) {

        FuturesUser memory userData = vault.getUser(_user);
        FuturesUserAction memory userActionData = actionVault.getUser(_user);
        FuturesGlobals memory globalsData = vault.getGlobals();
        
        FuturesRDFUser memory userRDFData = rdfVault.getUser(_user);
        FuturesRDFGlobals memory globalsRDFData = rdfVault.getGlobals();

        // payout remaining allowable divs if exceeds
        if(userData.payouts + _amount > maxPayouts) {
            _amount = maxPayouts.safeSub(userData.payouts);
            _amount = _amount.min(userData.current_balance);  //withdraw up to the current balance
        }

        uint _liquidations = _amount * 2;

        //attempt to payout yield and update stats;
        if (_amount > 0) {

            //transfer amount to user; mutable
            uint _wethAmount = rainyDayPayout(_user, _amount);
        
            //user stats
            //a rdf claim does not penalize your max payout; you lose time, but not the ability to earn
            userData.payouts += _amount;
            userData.current_balance = userData.current_balance.safeSub(_liquidations); 
            
            userData.last_time = block.timestamp;
            userActionData.last_claim = block.timestamp;
            
            userRDFData.payouts += _amount;
            userRDFData.last_claim = block.timestamp;    

            //total stats
            globalsData.total_claimed += _amount;
            globalsData.total_txs += 1;
            globalsData.current_balance = globalsData.current_balance.safeSub(_liquidations);
            
            globalsRDFData.total_claimed += _amount;
            globalsRDFData.total_txs += 1;


            //core commit updates
            vault.commitUser(_user, userData);
            actionVault.commitUser(_user, userActionData);
            vault.commitGlobals(globalsData);

            //rdf updates
            rdfVault.commitUser(_user, userRDFData);
            rdfVault.commitGlobals(globalsRDFData);


            //log events
            emit RDFClaim(_user, _amount, _wethAmount);

            return true;

        } 

        //default
        return false;
    } 

    //@dev Checks if yield is available and compound before performing additional operations
    //compound only when yield is positive
    function compoundYield(address _user) internal returns (bool success) {

        FuturesUser memory userData = vault.getUser(_user);
        FuturesGlobals memory globalsData = vault.getGlobals();
        
        //get available
        ( , uint256 _amount) = available(_user);

        // payout remaining allowable divs if exceeds
        if(userData.payouts + _amount > maxPayouts) {
            _amount = maxPayouts.safeSub(userData.payouts);
        }

        //attempt to compound yield and update stats;
        if (_amount > 0) {

            //user stats
            userData.deposits += 0; //compounding is not a deposit; here for clarity
            userData.compound_deposits += _amount;
            userData.payouts += _amount;
            userData.current_balance += _amount; 
            userData.last_time = block.timestamp;

            //total stats
            globalsData.total_deposited += 0; //compounding  doesn't move the needle; here for clarity
            globalsData.total_compound_deposited += _amount;
            globalsData.total_claimed += _amount;
            globalsData.current_balance += _amount;
            globalsData.total_txs += 1;
            
            //commit updates
            vault.commitUser(_user, userData);
            vault.commitGlobals(globalsData);

            //log events
            emit Claim(_user, _amount, 0);
            emit CompoundDeposit(_user, _amount);

            return true;

        } else {
            //do nothing upon failure
            return false;
        }
    } 

    //@dev Claim and payout using the reserve
    function yield(address _user, uint256 _amount)
        internal
        
        returns (uint wethAmount)
    {
        if (_amount == 0) {
            return 0;
        }

        wethAmount = estimateWethAmount(_amount);

        uint coreAmount = estimateCoreAmount(wethAmount);

        //if yield is greater than 1%
        if (forceLiquidity && wethAmount > registry.bnbReserveAddress().balance / 100){
            liquidateCore(registry.bnbReserveAddress(), coreAmount * 110 / 100);
        }

        wethTreasury.withdraw(_user, wethAmount, false);  //will fail if funds aren't available
            
        return wethAmount;
    }

    //@dev Payout using the rainyDayFund
    function rainyDayPayout(address _user, uint256 _amount)
        internal
        
        returns (uint _wethAmount)
    {
        
        _wethAmount = estimateWethAmount(_amount); //based on all previous conversions in the block

        rainyDayFund.withdraw(_user, _wethAmount, false);  //will fail if funds aren't available
    
    }

    function buyForTreasury(uint _amount)  internal {
        address[] memory path = new address[](2);

        path[0] = collateralRouter.WETH();
        path[1] = registry.coreAddress();

        uint[] memory output =  oracle.consultAmountsOut(_amount, path);

        uint minimum =  output[1] * slippage / 1000;


        //buy immediately and send to the treasury
        collateralRouter.swapExactETHForTokensSupportingFeeOnTransferTokens{value: _amount}(minimum, path, registry.coreTreasuryAddress(), block.timestamp);

    }

    //@dev liquidate core tokens from the treasury to the destination
    function liquidateCore(address destination, uint256 _amount) internal returns (uint wethAmount) {
   
        //Convert from collateral to backed
        address[] memory path = new address[](2);

        path[0] = address(coreToken);
        path[1] = collateralRouter.WETH();

        //withdraw from treasury
        coreTreasury.withdraw(_amount);
        
        //approve & swap
        TransferHelper.safeApprove(address(coreToken), address(collateralRouter), _amount, 'FuturesEngine: liquidateCore, approve');

        uint[] memory output =  oracle.consultAmountsOut(_amount, path);

        uint minimumOut = output[1] * slippage / 1000;

        uint initialBalance = destination.balance;

        collateralRouter.swapExactTokensForETHSupportingFeeOnTransferTokens(
            _amount,
            minimumOut, 
            path,
            destination, 
            block.timestamp 
        );
    
        wethAmount = destination.balance - initialBalance;

  }

    function updatePaths() internal  {
        address[] memory path = new address[](2);
        
        // BNB -> ELEPHANT
        path[0] = collateralRouter.WETH();
        path[1] = registry.coreAddress();
        oracle.updatePath(path);

        // BNB -> BTCB
        path[1] = registry.BTCBAddress();
        oracle.updatePath(path);

        // BNB -> TRUNK
        path[1] = registry.backedAddress();
        oracle.updatePath(path);

    }

    ////  User Functions ////

    //@dev Deposit BNB and get credit with dollar amount
    //Is not available if the system is paused
    function deposit() nonReentrant external payable {

        //optimistically update price
        updatePaths();
        
        uint _wethAmount = msg.value;
        uint _amount =  estimateCollateralAmount(_wethAmount);
        
        //Only the key holder can invest their funds
        address _user = msg.sender; 

        FuturesUser memory userData = vault.getUser(_user);
        FuturesUserAction memory userActionData = actionVault.getUser(_user);
        FuturesGlobals memory globalsData = vault.getGlobals();

        //if paused, require a balance
        require(isEligibleForDeposit(_user), "DT1");
        
        require(_amount >= minimumDeposit, "DT2");
        require(userData.current_balance + _amount <= maxBalance, "DT3" );
        require(userData.payouts <= maxPayouts, "DT4");

        //Deposit distribution accounting
        uint defaultDepositDistribution = _wethAmount / 10;
        uint _bnbReserveAmount = defaultDepositDistribution;
        uint _btcTurbineAmount = defaultDepositDistribution;
        uint _rainydayFundAmount = defaultDepositDistribution;
        uint _trunkTurbineAmount = 2 * defaultDepositDistribution;
        uint _trunkSuperChargerAmount = 4 * defaultDepositDistribution;
        uint _treasuryAmount = _wethAmount - (_bnbReserveAmount +  _btcTurbineAmount + _rainydayFundAmount +  _trunkTurbineAmount + _trunkSuperChargerAmount);   
        
        //Send distributions to repos
        payable(registry.bnbReserveAddress()).transfer(_bnbReserveAmount);
        payable(registry.rainyDayFundAddress()).transfer(_rainydayFundAmount);
        payable(registry.BTCTurbineAddress()).transfer(_btcTurbineAmount);
        payable(registry.TRUNKTurbineAddress()).transfer(_trunkTurbineAmount);
        payable(registry.TRUNKSuperChargerAddress()).transfer(_trunkSuperChargerAmount);

        //Buy ELEPHANT
        buyForTreasury(_treasuryAmount);
        
        //END WETH ACCOUNTING 

        //update user stats
        if (userData.exists == false) {
            //attempt to migrate user
            userData.exists = true;
            globalsData.total_users += 1;  

            //commit updates
            vault.commitUser(_user, userData);
            vault.commitGlobals(globalsData);

        } 

        //if user has an existing balance see if we have to claim yield before proceeding
        //optimistically claim yield before reset
        //if there is a balance we potentially have yield
        if (userData.current_balance > 0){
            compoundYield(_user);

            //reload user data after a mutable function
            userData = vault.getUser(_user); 
            globalsData = vault.getGlobals();
        }

        //update user
        userData.deposits += _amount;
        userData.last_time = block.timestamp;
        userData.current_balance += _amount;
        userActionData.last_deposit = block.timestamp;

        globalsData.total_deposited += _amount; 
        globalsData.current_balance += _amount;
        globalsData.total_txs += 1;

        //commit updates
        vault.commitUser(_user, userData);
        actionVault.commitUser(_user, userActionData);

        vault.commitGlobals(globalsData);

        //events
        emit Deposit(_user, _amount, msg.value);
    }


    //@dev Claims earned interest for the caller
    function claim() nonReentrant external returns (bool success){

        //optimistically update price
        updatePaths();
        
        //Only the owner of funds can claim funds
        address _user = msg.sender;

        FuturesUser memory userData = vault.getUser(_user);

        //checks
        require(
            userData.exists,
            "CM1"
        );
        require(
            userData.current_balance > 0 ,
            "CM2"
        );

        success = distributeYield(_user);
      
    }

    //@dev Claims earned interest for the caller
    function claimRDF(uint _amount) nonReentrant external returns (bool success){

        //optimistically update price
        updatePaths();
        
        //Only the owner of funds can claim funds
        address _user = msg.sender;

        //Check eligibilty
        (bool eligible, ) = isEligibleForRDF(_user);
        require(eligible, "CF1");

        //Check amount
        (uint _available,,,) = maxUserAvailableRDF(_user);
        require(_amount <= _available, "CF2");

        success = distributeRDF(_user, _amount);
      
    }

    
    //@dev Transfer account to another wallet address
    function transfer(address _newUser) nonReentrant external  {

        address _user = msg.sender;

        FuturesUser memory userData = vault.getUser(_user);
        FuturesUser memory newData =  vault.getUser(_newUser);
        FuturesUserAction memory userActionData = actionVault.getUser(_user);
        FuturesUserAction memory newActionData = actionVault.getUser(_newUser);

        FuturesGlobals memory globalsData = vault.getGlobals();

        FuturesRDFUser memory userRDFData = rdfVault.getUser(_user);
        FuturesRDFUser memory newUserRDFData = rdfVault.getUser(_newUser);
        

        //Only the owner can transfer
        require(userData.exists, "TR1");
        require(newData.exists == false && _newUser != address(0), "TR2");

        //Transfer
        newData.exists = true;
        newData.deposits = userData.deposits;
        newData.current_balance = userData.current_balance;
        newData.payouts = userData.payouts;
        newData.compound_deposits = userData.compound_deposits;
        newData.rewards = userData.rewards;
        newData.last_time = userData.last_time;

        newActionData.last_deposit = userActionData.last_deposit;
        newActionData.last_claim = userActionData.last_claim; 

        newUserRDFData.last_claim = userRDFData.last_claim;
        newUserRDFData.payouts = userRDFData.payouts;

        //Zero out old account
        userData.exists = true; //once an account is created source streams are only counted once
        userData.deposits = 0;
        userData.current_balance = 0;
        userData.compound_deposits = 0;
        userData.payouts = 0;
        userData.rewards = 0;
        userData.last_time = 0;

        userActionData.last_deposit = 0;
        userActionData.last_claim = 0;

        userRDFData.last_claim = 0;
        userRDFData.payouts = 0;

        //house keeping
        globalsData.total_txs += 1;

        //commit
        vault.commitUser(_user, userData);
        vault.commitUser(_newUser, newData);

        actionVault.commitUser(_user, userActionData);
        actionVault.commitUser(_newUser, newActionData);

        rdfVault.commitUser(_user, userRDFData);
        rdfVault.commitUser(_newUser, newUserRDFData);

        vault.commitGlobals(globalsData);

        //log
        emit Transfer(_user, _newUser, newData.current_balance);

    }

}

//@dev Simple onchain oracle for important Elephant Money smart contracts
contract AddressRegistry {
    address public constant TRUNKSuperChargerAddress = 
        address(0xec8c93d29418b4D3E13EdB18cc6dBc24606D7305); //TRUNK Supercharger
    address public constant rainyDayFundAddress = 
        address(0xc6a42b74867D1F7049192FfB6d0A9D77696d18bb); //Rainy Day Fund
    address public constant BTCTurbineAddress = 
        address(0x6bEaDd1Bc88C0caad109f46Ba72e5842E442deD1); // BTC Turbine Proxy
    address public constant TRUNKTurbineAddress = 
        address(0x2E390C82116870f5f59B48Cdd05eAd3063A2cB89); //TRUNK Turbine Proxy
    address public constant bnbReserveAddress = 
        address(0x98F6c7c953Cf4cef0fd632b2509c9e349687FC92); //WETH Treasury
    address public constant BTCBAddress = 
        address(0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c);
    address public constant coreAddress =
        address(0xE283D0e3B8c102BAdF5E8166B73E02D96d92F688); //ELEPHANT
    address public constant coreTreasuryAddress =
        address(0xAF0980A0f52954777C491166E7F40DB2B6fBb4Fc); //ELEPHANT Treasury
    address public constant collateralAddress =
        address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56); //BUSD
    address public constant collateralTreasuryAddress =
        address(0xCb5a02BB3a38e92E591d323d6824586608cE8cE4); //BUSD Treasury
    address public constant collateralRedemptionAddress =
        address(0xD3B4fB63e249a727b9976864B28184b85aBc6fDf); //BUSD Redemption Pool
    address public constant collateralBufferAddress =
        address(0xd9dE89efB084FfF7900Eac23F2A991894500Ec3E); //BUSD Buffer Pool
    address public constant backedAddress =
        address(0xdd325C38b12903B727D16961e61333f4871A70E0); //TRUNK Stable coin
    address public constant backedTreasuryAddress =
        address(0xaCEf13009D7E5701798a0D2c7cc7E07f6937bfDd); //TRUNK Treasury
    address public constant backedLPAddress =
        address(0xf15A72B15fC4CAeD6FaDB1ba7347f6CCD1E0Aede); //TRUNK/BUSD LP
    address public constant routerAddress =
        address(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    address public constant chainlinkBNBAddress = 
        address(0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE); //BNB/USD Price
    address public constant oracleAddress = address(0x5606ee12d741716c260fDA2f6C89EfDf60326D3C); //TWAPOracle
    //PCS Factory - 0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73
    
}

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {
    /**
     * @dev Multiplies two numbers, throws on overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
        if (a == 0) {
            return 0;
        }
        c = a * b;
        assert(c / a == b);
        return c;
    }

    /**
     * @dev Integer division of two numbers, truncating the quotient.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // assert(b > 0); // Solidity automatically throws when dividing by 0
        // uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold
        return a / b;
    }

    /**
     * @dev Subtracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    /* @dev Subtracts two numbers, else returns zero */
    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b > a) {
            return 0;
        } else {
            return a - b;
        }
    }

    /**
     * @dev Adds two numbers, throws on overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
        c = a + b;
        assert(c >= a);
        return c;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

}

library TransferHelper {
    /// @notice Transfers tokens from the targeted address to the given destination
    /// @notice Errors with 'STF' if transfer fails
    /// @param token The contract address of the token to be transferred
    /// @param from The originating address from which the tokens will be transferred
    /// @param to The destination address of the transfer
    /// @param value The amount to be transferred
    function safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value,
        string memory notes
    ) internal {
        (bool success, bytes memory data) =
            token.call(abi.encodeWithSelector(IERC20.transferFrom.selector, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), string.concat('STF', notes));
    }

    /// @notice Transfers tokens from msg.sender to a recipient
    /// @dev Errors with ST if transfer fails
    /// @param token The contract address of the token which will be transferred
    /// @param to The recipient of the transfer
    /// @param value The value of the transfer
    function safeTransfer(
        address token,
        address to,
        uint256 value,
        string memory notes
    ) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), string.concat('ST', notes));
    }

    /// @notice Approves the stipulated contract to spend the given allowance in the given token
    /// @dev Errors with 'SA' if transfer fails
    /// @param token The contract address of the token to be approved
    /// @param to The target of the approval
    /// @param value The amount of the given token the target will be allowed to spend
    function safeApprove(
        address token,
        address to,
        uint256 value,
        string memory notes
    ) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.approve.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), string.concat('SA', notes));
    }

    /// @notice Transfers ETH to the recipient address
    /// @dev Fails with `STE`
    /// @param to The destination of the transfer
    /// @param value The value to be transferred
    function safeTransferETH(address to, uint256 value, string memory notes) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        require(success, string.concat('STE', notes));
    }
}