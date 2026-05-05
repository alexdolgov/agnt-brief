// ============================================================
// FILE: lib/forge-std/src/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2;

/// @dev Interface of the ERC20 standard as defined in the EIP.
/// @dev This includes the optional name, symbol, and decimals metadata.
interface IERC20 {
    /// @dev Emitted when `value` tokens are moved from one account (`from`) to another (`to`).
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @dev Emitted when the allowance of a `spender` for an `owner` is set, where `value`
    /// is the new allowance.
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /// @notice Returns the amount of tokens in existence.
    function totalSupply() external view returns (uint256);

    /// @notice Returns the amount of tokens owned by `account`.
    function balanceOf(address account) external view returns (uint256);

    /// @notice Moves `amount` tokens from the caller's account to `to`.
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Returns the remaining number of tokens that `spender` is allowed
    /// to spend on behalf of `owner`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets `amount` as the allowance of `spender` over the caller's tokens.
    /// @dev Be aware of front-running risks: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Moves `amount` tokens from `from` to `to` using the allowance mechanism.
    /// `amount` is then deducted from the caller's allowance.
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Returns the name of the token.
    function name() external view returns (string memory);

    /// @notice Returns the symbol of the token.
    function symbol() external view returns (string memory);

    /// @notice Returns the decimals places of the token.
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: lib/solady/src/utils/EIP712.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Contract for EIP-712 typed structured data hashing and signing.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/EIP712.sol)
/// @author Modified from Solbase (https://github.com/Sol-DAO/solbase/blob/main/src/utils/EIP712.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/cryptography/EIP712.sol)
///
/// @dev Note, this implementation:
/// - Uses `address(this)` for the `verifyingContract` field.
/// - Does NOT use the optional EIP-712 salt.
/// - Does NOT use any EIP-712 extensions.
/// This is for simplicity and to save gas.
/// If you need to customize, please fork / modify accordingly.
abstract contract EIP712 {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  CONSTANTS AND IMMUTABLES                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev `keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)")`.
    bytes32 internal constant _DOMAIN_TYPEHASH =
        0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f;

    uint256 private immutable _cachedThis;
    uint256 private immutable _cachedChainId;
    bytes32 private immutable _cachedNameHash;
    bytes32 private immutable _cachedVersionHash;
    bytes32 private immutable _cachedDomainSeparator;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTRUCTOR                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Cache the hashes for cheaper runtime gas costs.
    /// In the case of upgradeable contracts (i.e. proxies),
    /// or if the chain id changes due to a hard fork,
    /// the domain separator will be seamlessly calculated on-the-fly.
    constructor() {
        _cachedThis = uint256(uint160(address(this)));
        _cachedChainId = block.chainid;

        string memory name;
        string memory version;
        if (!_domainNameAndVersionMayChange()) (name, version) = _domainNameAndVersion();
        bytes32 nameHash = _domainNameAndVersionMayChange() ? bytes32(0) : keccak256(bytes(name));
        bytes32 versionHash =
            _domainNameAndVersionMayChange() ? bytes32(0) : keccak256(bytes(version));
        _cachedNameHash = nameHash;
        _cachedVersionHash = versionHash;

        bytes32 separator;
        if (!_domainNameAndVersionMayChange()) {
            /// @solidity memory-safe-assembly
            assembly {
                let m := mload(0x40) // Load the free memory pointer.
                mstore(m, _DOMAIN_TYPEHASH)
                mstore(add(m, 0x20), nameHash)
                mstore(add(m, 0x40), versionHash)
                mstore(add(m, 0x60), chainid())
                mstore(add(m, 0x80), address())
                separator := keccak256(m, 0xa0)
            }
        }
        _cachedDomainSeparator = separator;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   FUNCTIONS TO OVERRIDE                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Please override this function to return the domain name and version.
    /// ```
    ///     function _domainNameAndVersion()
    ///         internal
    ///         pure
    ///         virtual
    ///         returns (string memory name, string memory version)
    ///     {
    ///         name = "Solady";
    ///         version = "1";
    ///     }
    /// ```
    ///
    /// Note: If the returned result may change after the contract has been deployed,
    /// you must override `_domainNameAndVersionMayChange()` to return true.
    function _domainNameAndVersion()
        internal
        view
        virtual
        returns (string memory name, string memory version);

    /// @dev Returns if `_domainNameAndVersion()` may change
    /// after the contract has been deployed (i.e. after the constructor).
    /// Default: false.
    function _domainNameAndVersionMayChange() internal pure virtual returns (bool result) {}

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     HASHING OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns the EIP-712 domain separator.
    function _domainSeparator() internal view virtual returns (bytes32 separator) {
        if (_domainNameAndVersionMayChange()) {
            separator = _buildDomainSeparator();
        } else {
            separator = _cachedDomainSeparator;
            if (_cachedDomainSeparatorInvalidated()) separator = _buildDomainSeparator();
        }
    }

    /// @dev Returns the hash of the fully encoded EIP-712 message for this domain,
    /// given `structHash`, as defined in
    /// https://eips.ethereum.org/EIPS/eip-712#definition-of-hashstruct.
    ///
    /// The hash can be used together with {ECDSA-recover} to obtain the signer of a message:
    /// ```
    ///     bytes32 digest = _hashTypedData(keccak256(abi.encode(
    ///         keccak256("Mail(address to,string contents)"),
    ///         mailTo,
    ///         keccak256(bytes(mailContents))
    ///     )));
    ///     address signer = ECDSA.recover(digest, signature);
    /// ```
    function _hashTypedData(bytes32 structHash) internal view virtual returns (bytes32 digest) {
        // We will use `digest` to store the domain separator to save a bit of gas.
        if (_domainNameAndVersionMayChange()) {
            digest = _buildDomainSeparator();
        } else {
            digest = _cachedDomainSeparator;
            if (_cachedDomainSeparatorInvalidated()) digest = _buildDomainSeparator();
        }
        /// @solidity memory-safe-assembly
        assembly {
            // Compute the digest.
            mstore(0x00, 0x1901000000000000) // Store "\x19\x01".
            mstore(0x1a, digest) // Store the domain separator.
            mstore(0x3a, structHash) // Store the struct hash.
            digest := keccak256(0x18, 0x42)
            // Restore the part of the free memory slot that was overwritten.
            mstore(0x3a, 0)
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    EIP-5267 OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev See: https://eips.ethereum.org/EIPS/eip-5267
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
        fields = hex"0f"; // `0b01111`.
        (name, version) = _domainNameAndVersion();
        chainId = block.chainid;
        verifyingContract = address(this);
        salt = salt; // `bytes32(0)`.
        extensions = extensions; // `new uint256[](0)`.
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      PRIVATE HELPERS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns the EIP-712 domain separator.
    function _buildDomainSeparator() private view returns (bytes32 separator) {
        // We will use `separator` to store the name hash to save a bit of gas.
        bytes32 versionHash;
        if (_domainNameAndVersionMayChange()) {
            (string memory name, string memory version) = _domainNameAndVersion();
            separator = keccak256(bytes(name));
            versionHash = keccak256(bytes(version));
        } else {
            separator = _cachedNameHash;
            versionHash = _cachedVersionHash;
        }
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Load the free memory pointer.
            mstore(m, _DOMAIN_TYPEHASH)
            mstore(add(m, 0x20), separator) // Name hash.
            mstore(add(m, 0x40), versionHash)
            mstore(add(m, 0x60), chainid())
            mstore(add(m, 0x80), address())
            separator := keccak256(m, 0xa0)
        }
    }

    /// @dev Returns if the cached domain separator has been invalidated.
    function _cachedDomainSeparatorInvalidated() private view returns (bool result) {
        uint256 cachedChainId = _cachedChainId;
        uint256 cachedThis = _cachedThis;
        /// @solidity memory-safe-assembly
        assembly {
            result := iszero(and(eq(chainid(), cachedChainId), eq(address(), cachedThis)))
        }
    }
}

// ============================================================
// FILE: lib/solady/src/utils/FixedPointMathLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Arithmetic library with operations for fixed-point numbers.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/FixedPointMathLib.sol)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/FixedPointMathLib.sol)
library FixedPointMathLib {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CUSTOM ERRORS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev The operation failed, as the output exceeds the maximum value of uint256.
    error ExpOverflow();

    /// @dev The operation failed, as the output exceeds the maximum value of uint256.
    error FactorialOverflow();

    /// @dev The operation failed, due to an overflow.
    error RPowOverflow();

    /// @dev The mantissa is too big to fit.
    error MantissaOverflow();

    /// @dev The operation failed, due to an multiplication overflow.
    error MulWadFailed();

    /// @dev The operation failed, due to an multiplication overflow.
    error SMulWadFailed();

    /// @dev The operation failed, either due to a multiplication overflow, or a division by a zero.
    error DivWadFailed();

    /// @dev The operation failed, either due to a multiplication overflow, or a division by a zero.
    error SDivWadFailed();

    /// @dev The operation failed, either due to a multiplication overflow, or a division by a zero.
    error MulDivFailed();

    /// @dev The division failed, as the denominator is zero.
    error DivFailed();

    /// @dev The full precision multiply-divide operation failed, either due
    /// to the result being larger than 256 bits, or a division by a zero.
    error FullMulDivFailed();

    /// @dev The output is undefined, as the input is less-than-or-equal to zero.
    error LnWadUndefined();

    /// @dev The input outside the acceptable domain.
    error OutOfDomain();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         CONSTANTS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev The scalar of ETH and most ERC20s.
    uint256 internal constant WAD = 1e18;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*              SIMPLIFIED FIXED POINT OPERATIONS             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Equivalent to `(x * y) / WAD` rounded down.
    function mulWad(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to `require(y == 0 || x <= type(uint256).max / y)`.
            if gt(x, div(not(0), y)) {
                if y {
                    mstore(0x00, 0xbac65e5b) // `MulWadFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            z := div(mul(x, y), WAD)
        }
    }

    /// @dev Equivalent to `(x * y) / WAD` rounded down.
    function sMulWad(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(x, y)
            // Equivalent to `require((x == 0 || z / x == y) && !(x == -1 && y == type(int256).min))`.
            if iszero(gt(or(iszero(x), eq(sdiv(z, x), y)), lt(not(x), eq(y, shl(255, 1))))) {
                mstore(0x00, 0xedcd4dd4) // `SMulWadFailed()`.
                revert(0x1c, 0x04)
            }
            z := sdiv(z, WAD)
        }
    }

    /// @dev Equivalent to `(x * y) / WAD` rounded down, but without overflow checks.
    function rawMulWad(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := div(mul(x, y), WAD)
        }
    }

    /// @dev Equivalent to `(x * y) / WAD` rounded down, but without overflow checks.
    function rawSMulWad(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := sdiv(mul(x, y), WAD)
        }
    }

    /// @dev Equivalent to `(x * y) / WAD` rounded up.
    function mulWadUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(x, y)
            // Equivalent to `require(y == 0 || x <= type(uint256).max / y)`.
            if iszero(eq(div(z, y), x)) {
                if y {
                    mstore(0x00, 0xbac65e5b) // `MulWadFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            z := add(iszero(iszero(mod(z, WAD))), div(z, WAD))
        }
    }

    /// @dev Equivalent to `(x * y) / WAD` rounded up, but without overflow checks.
    function rawMulWadUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := add(iszero(iszero(mod(mul(x, y), WAD))), div(mul(x, y), WAD))
        }
    }

    /// @dev Equivalent to `(x * WAD) / y` rounded down.
    function divWad(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to `require(y != 0 && x <= type(uint256).max / WAD)`.
            if iszero(mul(y, lt(x, add(1, div(not(0), WAD))))) {
                mstore(0x00, 0x7c5f487d) // `DivWadFailed()`.
                revert(0x1c, 0x04)
            }
            z := div(mul(x, WAD), y)
        }
    }

    /// @dev Equivalent to `(x * WAD) / y` rounded down.
    function sDivWad(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(x, WAD)
            // Equivalent to `require(y != 0 && ((x * WAD) / WAD == x))`.
            if iszero(mul(y, eq(sdiv(z, WAD), x))) {
                mstore(0x00, 0x5c43740d) // `SDivWadFailed()`.
                revert(0x1c, 0x04)
            }
            z := sdiv(z, y)
        }
    }

    /// @dev Equivalent to `(x * WAD) / y` rounded down, but without overflow and divide by zero checks.
    function rawDivWad(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := div(mul(x, WAD), y)
        }
    }

    /// @dev Equivalent to `(x * WAD) / y` rounded down, but without overflow and divide by zero checks.
    function rawSDivWad(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := sdiv(mul(x, WAD), y)
        }
    }

    /// @dev Equivalent to `(x * WAD) / y` rounded up.
    function divWadUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to `require(y != 0 && x <= type(uint256).max / WAD)`.
            if iszero(mul(y, lt(x, add(1, div(not(0), WAD))))) {
                mstore(0x00, 0x7c5f487d) // `DivWadFailed()`.
                revert(0x1c, 0x04)
            }
            z := add(iszero(iszero(mod(mul(x, WAD), y))), div(mul(x, WAD), y))
        }
    }

    /// @dev Equivalent to `(x * WAD) / y` rounded up, but without overflow and divide by zero checks.
    function rawDivWadUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := add(iszero(iszero(mod(mul(x, WAD), y))), div(mul(x, WAD), y))
        }
    }

    /// @dev Equivalent to `x` to the power of `y`.
    /// because `x ** y = (e ** ln(x)) ** y = e ** (ln(x) * y)`.
    /// Note: This function is an approximation.
    function powWad(int256 x, int256 y) internal pure returns (int256) {
        // Using `ln(x)` means `x` must be greater than 0.
        return expWad((lnWad(x) * y) / int256(WAD));
    }

    /// @dev Returns `exp(x)`, denominated in `WAD`.
    /// Credit to Remco Bloemen under MIT license: https://2π.com/22/exp-ln
    /// Note: This function is an approximation. Monotonically increasing.
    function expWad(int256 x) internal pure returns (int256 r) {
        unchecked {
            // When the result is less than 0.5 we return zero.
            // This happens when `x <= (log(1e-18) * 1e18) ~ -4.15e19`.
            if (x <= -41446531673892822313) return r;

            /// @solidity memory-safe-assembly
            assembly {
                // When the result is greater than `(2**255 - 1) / 1e18` we can not represent it as
                // an int. This happens when `x >= floor(log((2**255 - 1) / 1e18) * 1e18) ≈ 135`.
                if iszero(slt(x, 135305999368893231589)) {
                    mstore(0x00, 0xa37bfec9) // `ExpOverflow()`.
                    revert(0x1c, 0x04)
                }
            }

            // `x` is now in the range `(-42, 136) * 1e18`. Convert to `(-42, 136) * 2**96`
            // for more intermediate precision and a binary basis. This base conversion
            // is a multiplication by 1e18 / 2**96 = 5**18 / 2**78.
            x = (x << 78) / 5 ** 18;

            // Reduce range of x to (-½ ln 2, ½ ln 2) * 2**96 by factoring out powers
            // of two such that exp(x) = exp(x') * 2**k, where k is an integer.
            // Solving this gives k = round(x / log(2)) and x' = x - k * log(2).
            int256 k = ((x << 96) / 54916777467707473351141471128 + 2 ** 95) >> 96;
            x = x - k * 54916777467707473351141471128;

            // `k` is in the range `[-61, 195]`.

            // Evaluate using a (6, 7)-term rational approximation.
            // `p` is made monic, we'll multiply by a scale factor later.
            int256 y = x + 1346386616545796478920950773328;
            y = ((y * x) >> 96) + 57155421227552351082224309758442;
            int256 p = y + x - 94201549194550492254356042504812;
            p = ((p * y) >> 96) + 28719021644029726153956944680412240;
            p = p * x + (4385272521454847904659076985693276 << 96);

            // We leave `p` in `2**192` basis so we don't need to scale it back up for the division.
            int256 q = x - 2855989394907223263936484059900;
            q = ((q * x) >> 96) + 50020603652535783019961831881945;
            q = ((q * x) >> 96) - 533845033583426703283633433725380;
            q = ((q * x) >> 96) + 3604857256930695427073651918091429;
            q = ((q * x) >> 96) - 14423608567350463180887372962807573;
            q = ((q * x) >> 96) + 26449188498355588339934803723976023;

            /// @solidity memory-safe-assembly
            assembly {
                // Div in assembly because solidity adds a zero check despite the unchecked.
                // The q polynomial won't have zeros in the domain as all its roots are complex.
                // No scaling is necessary because p is already `2**96` too large.
                r := sdiv(p, q)
            }

            // r should be in the range `(0.09, 0.25) * 2**96`.

            // We now need to multiply r by:
            // - The scale factor `s ≈ 6.031367120`.
            // - The `2**k` factor from the range reduction.
            // - The `1e18 / 2**96` factor for base conversion.
            // We do this all at once, with an intermediate result in `2**213`
            // basis, so the final right shift is always by a positive amount.
            r = int256(
                (uint256(r) * 3822833074963236453042738258902158003155416615667) >> uint256(195 - k)
            );
        }
    }

    /// @dev Returns `ln(x)`, denominated in `WAD`.
    /// Credit to Remco Bloemen under MIT license: https://2π.com/22/exp-ln
    /// Note: This function is an approximation. Monotonically increasing.
    function lnWad(int256 x) internal pure returns (int256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            // We want to convert `x` from `10**18` fixed point to `2**96` fixed point.
            // We do this by multiplying by `2**96 / 10**18`. But since
            // `ln(x * C) = ln(x) + ln(C)`, we can simply do nothing here
            // and add `ln(2**96 / 10**18)` at the end.

            // Compute `k = log2(x) - 96`, `r = 159 - k = 255 - log2(x) = 255 ^ log2(x)`.
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // We place the check here for more optimal stack operations.
            if iszero(sgt(x, 0)) {
                mstore(0x00, 0x1615e638) // `LnWadUndefined()`.
                revert(0x1c, 0x04)
            }
            // forgefmt: disable-next-item
            r := xor(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff))

            // Reduce range of x to (1, 2) * 2**96
            // ln(2^k * x) = k * ln(2) + ln(x)
            x := shr(159, shl(r, x))

            // Evaluate using a (8, 8)-term rational approximation.
            // `p` is made monic, we will multiply by a scale factor later.
            // forgefmt: disable-next-item
            let p := sub( // This heavily nested expression is to avoid stack-too-deep for via-ir.
                sar(96, mul(add(43456485725739037958740375743393,
                sar(96, mul(add(24828157081833163892658089445524,
                sar(96, mul(add(3273285459638523848632254066296,
                    x), x))), x))), x)), 11111509109440967052023855526967)
            p := sub(sar(96, mul(p, x)), 45023709667254063763336534515857)
            p := sub(sar(96, mul(p, x)), 14706773417378608786704636184526)
            p := sub(mul(p, x), shl(96, 795164235651350426258249787498))
            // We leave `p` in `2**192` basis so we don't need to scale it back up for the division.

            // `q` is monic by convention.
            let q := add(5573035233440673466300451813936, x)
            q := add(71694874799317883764090561454958, sar(96, mul(x, q)))
            q := add(283447036172924575727196451306956, sar(96, mul(x, q)))
            q := add(401686690394027663651624208769553, sar(96, mul(x, q)))
            q := add(204048457590392012362485061816622, sar(96, mul(x, q)))
            q := add(31853899698501571402653359427138, sar(96, mul(x, q)))
            q := add(909429971244387300277376558375, sar(96, mul(x, q)))

            // `p / q` is in the range `(0, 0.125) * 2**96`.

            // Finalization, we need to:
            // - Multiply by the scale factor `s = 5.549…`.
            // - Add `ln(2**96 / 10**18)`.
            // - Add `k * ln(2)`.
            // - Multiply by `10**18 / 2**96 = 5**18 >> 78`.

            // The q polynomial is known not to have zeros in the domain.
            // No scaling required because p is already `2**96` too large.
            p := sdiv(p, q)
            // Multiply by the scaling factor: `s * 5**18 * 2**96`, base is now `5**18 * 2**192`.
            p := mul(1677202110996718588342820967067443963516166, p)
            // Add `ln(2) * k * 5**18 * 2**192`.
            // forgefmt: disable-next-item
            p := add(mul(16597577552685614221487285958193947469193820559219878177908093499208371, sub(159, r)), p)
            // Add `ln(2**96 / 10**18) * 5**18 * 2**192`.
            p := add(600920179829731861736702779321621459595472258049074101567377883020018308, p)
            // Base conversion: mul `2**18 / 2**192`.
            r := sar(174, p)
        }
    }

    /// @dev Returns `W_0(x)`, denominated in `WAD`.
    /// See: https://en.wikipedia.org/wiki/Lambert_W_function
    /// a.k.a. Product log function. This is an approximation of the principal branch.
    /// Note: This function is an approximation. Monotonically increasing.
    function lambertW0Wad(int256 x) internal pure returns (int256 w) {
        // forgefmt: disable-next-item
        unchecked {
            if ((w = x) <= -367879441171442322) revert OutOfDomain(); // `x` less than `-1/e`.
            (int256 wad, int256 p) = (int256(WAD), x);
            uint256 c; // Whether we need to avoid catastrophic cancellation.
            uint256 i = 4; // Number of iterations.
            if (w <= 0x1ffffffffffff) {
                if (-0x4000000000000 <= w) {
                    i = 1; // Inputs near zero only take one step to converge.
                } else if (w <= -0x3ffffffffffffff) {
                    i = 32; // Inputs near `-1/e` take very long to converge.
                }
            } else if (uint256(w >> 63) == uint256(0)) {
                /// @solidity memory-safe-assembly
                assembly {
                    // Inline log2 for more performance, since the range is small.
                    let v := shr(49, w)
                    let l := shl(3, lt(0xff, v))
                    l := add(or(l, byte(and(0x1f, shr(shr(l, v), 0x8421084210842108cc6318c6db6d54be)),
                        0x0706060506020504060203020504030106050205030304010505030400000000)), 49)
                    w := sdiv(shl(l, 7), byte(sub(l, 31), 0x0303030303030303040506080c13))
                    c := gt(l, 60)
                    i := add(2, add(gt(l, 53), c))
                }
            } else {
                int256 ll = lnWad(w = lnWad(w));
                /// @solidity memory-safe-assembly
                assembly {
                    // `w = ln(x) - ln(ln(x)) + b * ln(ln(x)) / ln(x)`.
                    w := add(sdiv(mul(ll, 1023715080943847266), w), sub(w, ll))
                    i := add(3, iszero(shr(68, x)))
                    c := iszero(shr(143, x))
                }
                if (c == uint256(0)) {
                    do { // If `x` is big, use Newton's so that intermediate values won't overflow.
                        int256 e = expWad(w);
                        /// @solidity memory-safe-assembly
                        assembly {
                            let t := mul(w, div(e, wad))
                            w := sub(w, sdiv(sub(t, x), div(add(e, t), wad)))
                        }
                        if (p <= w) break;
                        p = w;
                    } while (--i != uint256(0));
                    /// @solidity memory-safe-assembly
                    assembly {
                        w := sub(w, sgt(w, 2))
                    }
                    return w;
                }
            }
            do { // Otherwise, use Halley's for faster convergence.
                int256 e = expWad(w);
                /// @solidity memory-safe-assembly
                assembly {
                    let t := add(w, wad)
                    let s := sub(mul(w, e), mul(x, wad))
                    w := sub(w, sdiv(mul(s, wad), sub(mul(e, t), sdiv(mul(add(t, wad), s), add(t, t)))))
                }
                if (p <= w) break;
                p = w;
            } while (--i != c);
            /// @solidity memory-safe-assembly
            assembly {
                w := sub(w, sgt(w, 2))
            }
            // For certain ranges of `x`, we'll use the quadratic-rate recursive formula of
            // R. Iacono and J.P. Boyd for the last iteration, to avoid catastrophic cancellation.
            if (c == uint256(0)) return w;
            int256 t = w | 1;
            /// @solidity memory-safe-assembly
            assembly {
                x := sdiv(mul(x, wad), t)
            }
            x = (t * (wad + lnWad(x)));
            /// @solidity memory-safe-assembly
            assembly {
                w := sdiv(x, add(wad, t))
            }
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  GENERAL NUMBER UTILITIES                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns `a * b == x * y`, with full precision.
    function fullMulEq(uint256 a, uint256 b, uint256 x, uint256 y)
        internal
        pure
        returns (bool result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            result := and(eq(mul(a, b), mul(x, y)), eq(mulmod(x, y, not(0)), mulmod(a, b, not(0))))
        }
    }

    /// @dev Calculates `floor(x * y / d)` with full precision.
    /// Throws if result overflows a uint256 or when `d` is zero.
    /// Credit to Remco Bloemen under MIT license: https://2π.com/21/muldiv
    function fullMulDiv(uint256 x, uint256 y, uint256 d) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // 512-bit multiply `[p1 p0] = x * y`.
            // Compute the product mod `2**256` and mod `2**256 - 1`
            // then use the Chinese Remainder Theorem to reconstruct
            // the 512 bit result. The result is stored in two 256
            // variables such that `product = p1 * 2**256 + p0`.

            // Temporarily use `z` as `p0` to save gas.
            z := mul(x, y) // Lower 256 bits of `x * y`.
            for {} 1 {} {
                // If overflows.
                if iszero(mul(or(iszero(x), eq(div(z, x), y)), d)) {
                    let mm := mulmod(x, y, not(0))
                    let p1 := sub(mm, add(z, lt(mm, z))) // Upper 256 bits of `x * y`.

                    /*------------------- 512 by 256 division --------------------*/

                    // Make division exact by subtracting the remainder from `[p1 p0]`.
                    let r := mulmod(x, y, d) // Compute remainder using mulmod.
                    let t := and(d, sub(0, d)) // The least significant bit of `d`. `t >= 1`.
                    // Make sure `z` is less than `2**256`. Also prevents `d == 0`.
                    // Placing the check here seems to give more optimal stack operations.
                    if iszero(gt(d, p1)) {
                        mstore(0x00, 0xae47f702) // `FullMulDivFailed()`.
                        revert(0x1c, 0x04)
                    }
                    d := div(d, t) // Divide `d` by `t`, which is a power of two.
                    // Invert `d mod 2**256`
                    // Now that `d` is an odd number, it has an inverse
                    // modulo `2**256` such that `d * inv = 1 mod 2**256`.
                    // Compute the inverse by starting with a seed that is correct
                    // correct for four bits. That is, `d * inv = 1 mod 2**4`.
                    let inv := xor(2, mul(3, d))
                    // Now use Newton-Raphson iteration to improve the precision.
                    // Thanks to Hensel's lifting lemma, this also works in modular
                    // arithmetic, doubling the correct bits in each step.
                    inv := mul(inv, sub(2, mul(d, inv))) // inverse mod 2**8
                    inv := mul(inv, sub(2, mul(d, inv))) // inverse mod 2**16
                    inv := mul(inv, sub(2, mul(d, inv))) // inverse mod 2**32
                    inv := mul(inv, sub(2, mul(d, inv))) // inverse mod 2**64
                    inv := mul(inv, sub(2, mul(d, inv))) // inverse mod 2**128
                    z :=
                        mul(
                            // Divide [p1 p0] by the factors of two.
                            // Shift in bits from `p1` into `p0`. For this we need
                            // to flip `t` such that it is `2**256 / t`.
                            or(mul(sub(p1, gt(r, z)), add(div(sub(0, t), t), 1)), div(sub(z, r), t)),
                            mul(sub(2, mul(d, inv)), inv) // inverse mod 2**256
                        )
                    break
                }
                z := div(z, d)
                break
            }
        }
    }

    /// @dev Calculates `floor(x * y / d)` with full precision.
    /// Behavior is undefined if `d` is zero or the final result cannot fit in 256 bits.
    /// Performs the full 512 bit calculation regardless.
    function fullMulDivUnchecked(uint256 x, uint256 y, uint256 d)
        internal
        pure
        returns (uint256 z)
    {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(x, y)
            let mm := mulmod(x, y, not(0))
            let p1 := sub(mm, add(z, lt(mm, z)))
            let t := and(d, sub(0, d))
            let r := mulmod(x, y, d)
            d := div(d, t)
            let inv := xor(2, mul(3, d))
            inv := mul(inv, sub(2, mul(d, inv)))
            inv := mul(inv, sub(2, mul(d, inv)))
            inv := mul(inv, sub(2, mul(d, inv)))
            inv := mul(inv, sub(2, mul(d, inv)))
            inv := mul(inv, sub(2, mul(d, inv)))
            z :=
                mul(
                    or(mul(sub(p1, gt(r, z)), add(div(sub(0, t), t), 1)), div(sub(z, r), t)),
                    mul(sub(2, mul(d, inv)), inv)
                )
        }
    }

    /// @dev Calculates `floor(x * y / d)` with full precision, rounded up.
    /// Throws if result overflows a uint256 or when `d` is zero.
    /// Credit to Uniswap-v3-core under MIT license:
    /// https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/FullMath.sol
    function fullMulDivUp(uint256 x, uint256 y, uint256 d) internal pure returns (uint256 z) {
        z = fullMulDiv(x, y, d);
        /// @solidity memory-safe-assembly
        assembly {
            if mulmod(x, y, d) {
                z := add(z, 1)
                if iszero(z) {
                    mstore(0x00, 0xae47f702) // `FullMulDivFailed()`.
                    revert(0x1c, 0x04)
                }
            }
        }
    }

    /// @dev Calculates `floor(x * y / 2 ** n)` with full precision.
    /// Throws if result overflows a uint256.
    /// Credit to Philogy under MIT license:
    /// https://github.com/SorellaLabs/angstrom/blob/main/contracts/src/libraries/X128MathLib.sol
    function fullMulDivN(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Temporarily use `z` as `p0` to save gas.
            z := mul(x, y) // Lower 256 bits of `x * y`. We'll call this `z`.
            for {} 1 {} {
                if iszero(or(iszero(x), eq(div(z, x), y))) {
                    let k := and(n, 0xff) // `n`, cleaned.
                    let mm := mulmod(x, y, not(0))
                    let p1 := sub(mm, add(z, lt(mm, z))) // Upper 256 bits of `x * y`.
                    //         |      p1     |      z     |
                    // Before: | p1_0 ¦ p1_1 | z_0  ¦ z_1 |
                    // Final:  |   0  ¦ p1_0 | p1_1 ¦ z_0 |
                    // Check that final `z` doesn't overflow by checking that p1_0 = 0.
                    if iszero(shr(k, p1)) {
                        z := add(shl(sub(256, k), p1), shr(k, z))
                        break
                    }
                    mstore(0x00, 0xae47f702) // `FullMulDivFailed()`.
                    revert(0x1c, 0x04)
                }
                z := shr(and(n, 0xff), z)
                break
            }
        }
    }

    /// @dev Returns `floor(x * y / d)`.
    /// Reverts if `x * y` overflows, or `d` is zero.
    function mulDiv(uint256 x, uint256 y, uint256 d) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(x, y)
            // Equivalent to `require(d != 0 && (y == 0 || x <= type(uint256).max / y))`.
            if iszero(mul(or(iszero(x), eq(div(z, x), y)), d)) {
                mstore(0x00, 0xad251c27) // `MulDivFailed()`.
                revert(0x1c, 0x04)
            }
            z := div(z, d)
        }
    }

    /// @dev Returns `ceil(x * y / d)`.
    /// Reverts if `x * y` overflows, or `d` is zero.
    function mulDivUp(uint256 x, uint256 y, uint256 d) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(x, y)
            // Equivalent to `require(d != 0 && (y == 0 || x <= type(uint256).max / y))`.
            if iszero(mul(or(iszero(x), eq(div(z, x), y)), d)) {
                mstore(0x00, 0xad251c27) // `MulDivFailed()`.
                revert(0x1c, 0x04)
            }
            z := add(iszero(iszero(mod(z, d))), div(z, d))
        }
    }

    /// @dev Returns `x`, the modular multiplicative inverse of `a`, such that `(a * x) % n == 1`.
    function invMod(uint256 a, uint256 n) internal pure returns (uint256 x) {
        /// @solidity memory-safe-assembly
        assembly {
            let g := n
            let r := mod(a, n)
            for { let y := 1 } 1 {} {
                let q := div(g, r)
                let t := g
                g := r
                r := sub(t, mul(r, q))
                let u := x
                x := y
                y := sub(u, mul(y, q))
                if iszero(r) { break }
            }
            x := mul(eq(g, 1), add(x, mul(slt(x, 0), n)))
        }
    }

    /// @dev Returns `ceil(x / d)`.
    /// Reverts if `d` is zero.
    function divUp(uint256 x, uint256 d) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            if iszero(d) {
                mstore(0x00, 0x65244e4e) // `DivFailed()`.
                revert(0x1c, 0x04)
            }
            z := add(iszero(iszero(mod(x, d))), div(x, d))
        }
    }

    /// @dev Returns `max(0, x - y)`.
    function zeroFloorSub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(gt(x, y), sub(x, y))
        }
    }

    /// @dev Returns `condition ? x : y`, without branching.
    function ternary(bool condition, uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), iszero(condition)))
        }
    }

    /// @dev Returns `condition ? x : y`, without branching.
    function ternary(bool condition, bytes32 x, bytes32 y) internal pure returns (bytes32 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), iszero(condition)))
        }
    }

    /// @dev Returns `condition ? x : y`, without branching.
    function ternary(bool condition, address x, address y) internal pure returns (address z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), iszero(condition)))
        }
    }

    /// @dev Exponentiate `x` to `y` by squaring, denominated in base `b`.
    /// Reverts if the computation overflows.
    function rpow(uint256 x, uint256 y, uint256 b) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mul(b, iszero(y)) // `0 ** 0 = 1`. Otherwise, `0 ** n = 0`.
            if x {
                z := xor(b, mul(xor(b, x), and(y, 1))) // `z = isEven(y) ? scale : x`
                let half := shr(1, b) // Divide `b` by 2.
                // Divide `y` by 2 every iteration.
                for { y := shr(1, y) } y { y := shr(1, y) } {
                    let xx := mul(x, x) // Store x squared.
                    let xxRound := add(xx, half) // Round to the nearest number.
                    // Revert if `xx + half` overflowed, or if `x ** 2` overflows.
                    if or(lt(xxRound, xx), shr(128, x)) {
                        mstore(0x00, 0x49f7642b) // `RPowOverflow()`.
                        revert(0x1c, 0x04)
                    }
                    x := div(xxRound, b) // Set `x` to scaled `xxRound`.
                    // If `y` is odd:
                    if and(y, 1) {
                        let zx := mul(z, x) // Compute `z * x`.
                        let zxRound := add(zx, half) // Round to the nearest number.
                        // If `z * x` overflowed or `zx + half` overflowed:
                        if or(xor(div(zx, x), z), lt(zxRound, zx)) {
                            // Revert if `x` is non-zero.
                            if x {
                                mstore(0x00, 0x49f7642b) // `RPowOverflow()`.
                                revert(0x1c, 0x04)
                            }
                        }
                        z := div(zxRound, b) // Return properly scaled `zxRound`.
                    }
                }
            }
        }
    }

    /// @dev Returns the square root of `x`, rounded down.
    function sqrt(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // `floor(sqrt(2**15)) = 181`. `sqrt(2**15) - 181 = 2.84`.
            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // Let `y = x / 2**r`. We check `y >= 2**(k + 8)`
            // but shift right by `k` bits to ensure that if `x >= 256`, then `y >= 256`.
            let r := shl(7, lt(0xffffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffffff, shr(r, x))))
            z := shl(shr(1, r), z)

            // Goal was to get `z*z*y` within a small factor of `x`. More iterations could
            // get y in a tighter range. Currently, we will have y in `[256, 256*(2**16))`.
            // We ensured `y >= 256` so that the relative difference between `y` and `y+1` is small.
            // That's not possible if `x < 256` but we can just verify those cases exhaustively.

            // Now, `z*z*y <= x < z*z*(y+1)`, and `y <= 2**(16+8)`, and either `y >= 256`, or `x < 256`.
            // Correctness can be checked exhaustively for `x < 256`, so we assume `y >= 256`.
            // Then `z*sqrt(y)` is within `sqrt(257)/sqrt(256)` of `sqrt(x)`, or about 20bps.

            // For `s` in the range `[1/256, 256]`, the estimate `f(s) = (181/1024) * (s+1)`
            // is in the range `(1/2.84 * sqrt(s), 2.84 * sqrt(s))`,
            // with largest error when `s = 1` and when `s = 256` or `1/256`.

            // Since `y` is in `[256, 256*(2**16))`, let `a = y/65536`, so that `a` is in `[1/256, 256)`.
            // Then we can estimate `sqrt(y)` using
            // `sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2**18`.

            // There is no overflow risk here since `y < 2**136` after the first branch above.
            z := shr(18, mul(z, add(shr(r, x), 65536))) // A `mul()` is saved from starting `z` at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If `x+1` is a perfect square, the Babylonian method cycles between
            // `floor(sqrt(x))` and `ceil(sqrt(x))`. This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            z := sub(z, lt(div(x, z), z))
        }
    }

    /// @dev Returns the cube root of `x`, rounded down.
    /// Credit to bout3fiddy and pcaversaccio under AGPLv3 license:
    /// https://github.com/pcaversaccio/snekmate/blob/main/src/utils/Math.vy
    /// Formally verified by xuwinnie:
    /// https://github.com/vectorized/solady/blob/main/audits/xuwinnie-solady-cbrt-proof.pdf
    function cbrt(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            let r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // Makeshift lookup table to nudge the approximate log2 result.
            z := div(shl(div(r, 3), shl(lt(0xf, shr(r, x)), 0xf)), xor(7, mod(r, 3)))
            // Newton-Raphson's.
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            z := div(add(add(div(x, mul(z, z)), z), z), 3)
            // Round down.
            z := sub(z, lt(div(x, mul(z, z)), z))
        }
    }

    /// @dev Returns the square root of `x`, denominated in `WAD`, rounded down.
    function sqrtWad(uint256 x) internal pure returns (uint256 z) {
        unchecked {
            if (x <= type(uint256).max / 10 ** 18) return sqrt(x * 10 ** 18);
            z = (1 + sqrt(x)) * 10 ** 9;
            z = (fullMulDivUnchecked(x, 10 ** 18, z) + z) >> 1;
        }
        /// @solidity memory-safe-assembly
        assembly {
            z := sub(z, gt(999999999999999999, sub(mulmod(z, z, x), 1))) // Round down.
        }
    }

    /// @dev Returns the cube root of `x`, denominated in `WAD`, rounded down.
    /// Formally verified by xuwinnie:
    /// https://github.com/vectorized/solady/blob/main/audits/xuwinnie-solady-cbrt-proof.pdf
    function cbrtWad(uint256 x) internal pure returns (uint256 z) {
        unchecked {
            if (x <= type(uint256).max / 10 ** 36) return cbrt(x * 10 ** 36);
            z = (1 + cbrt(x)) * 10 ** 12;
            z = (fullMulDivUnchecked(x, 10 ** 36, z * z) + z + z) / 3;
        }
        /// @solidity memory-safe-assembly
        assembly {
            let p := x
            for {} 1 {} {
                if iszero(shr(229, p)) {
                    if iszero(shr(199, p)) {
                        p := mul(p, 100000000000000000) // 10 ** 17.
                        break
                    }
                    p := mul(p, 100000000) // 10 ** 8.
                    break
                }
                if iszero(shr(249, p)) { p := mul(p, 100) }
                break
            }
            let t := mulmod(mul(z, z), z, p)
            z := sub(z, gt(lt(t, shr(1, p)), iszero(t))) // Round down.
        }
    }

    /// @dev Returns the factorial of `x`.
    function factorial(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := 1
            if iszero(lt(x, 58)) {
                mstore(0x00, 0xaba0f2a2) // `FactorialOverflow()`.
                revert(0x1c, 0x04)
            }
            for {} x { x := sub(x, 1) } { z := mul(z, x) }
        }
    }

    /// @dev Returns the log2 of `x`.
    /// Equivalent to computing the index of the most significant bit (MSB) of `x`.
    /// Returns 0 if `x` is zero.
    function log2(uint256 x) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            r := or(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0x0706060506020504060203020504030106050205030304010505030400000000))
        }
    }

    /// @dev Returns the log2 of `x`, rounded up.
    /// Returns 0 if `x` is zero.
    function log2Up(uint256 x) internal pure returns (uint256 r) {
        r = log2(x);
        /// @solidity memory-safe-assembly
        assembly {
            r := add(r, lt(shl(r, 1), x))
        }
    }

    /// @dev Returns the log10 of `x`.
    /// Returns 0 if `x` is zero.
    function log10(uint256 x) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            if iszero(lt(x, 100000000000000000000000000000000000000)) {
                x := div(x, 100000000000000000000000000000000000000)
                r := 38
            }
            if iszero(lt(x, 100000000000000000000)) {
                x := div(x, 100000000000000000000)
                r := add(r, 20)
            }
            if iszero(lt(x, 10000000000)) {
                x := div(x, 10000000000)
                r := add(r, 10)
            }
            if iszero(lt(x, 100000)) {
                x := div(x, 100000)
                r := add(r, 5)
            }
            r := add(r, add(gt(x, 9), add(gt(x, 99), add(gt(x, 999), gt(x, 9999)))))
        }
    }

    /// @dev Returns the log10 of `x`, rounded up.
    /// Returns 0 if `x` is zero.
    function log10Up(uint256 x) internal pure returns (uint256 r) {
        r = log10(x);
        /// @solidity memory-safe-assembly
        assembly {
            r := add(r, lt(exp(10, r), x))
        }
    }

    /// @dev Returns the log256 of `x`.
    /// Returns 0 if `x` is zero.
    function log256(uint256 x) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(shr(3, r), lt(0xff, shr(r, x)))
        }
    }

    /// @dev Returns the log256 of `x`, rounded up.
    /// Returns 0 if `x` is zero.
    function log256Up(uint256 x) internal pure returns (uint256 r) {
        r = log256(x);
        /// @solidity memory-safe-assembly
        assembly {
            r := add(r, lt(shl(shl(3, r), 1), x))
        }
    }

    /// @dev Returns the scientific notation format `mantissa * 10 ** exponent` of `x`.
    /// Useful for compressing prices (e.g. using 25 bit mantissa and 7 bit exponent).
    function sci(uint256 x) internal pure returns (uint256 mantissa, uint256 exponent) {
        /// @solidity memory-safe-assembly
        assembly {
            mantissa := x
            if mantissa {
                if iszero(mod(mantissa, 1000000000000000000000000000000000)) {
                    mantissa := div(mantissa, 1000000000000000000000000000000000)
                    exponent := 33
                }
                if iszero(mod(mantissa, 10000000000000000000)) {
                    mantissa := div(mantissa, 10000000000000000000)
                    exponent := add(exponent, 19)
                }
                if iszero(mod(mantissa, 1000000000000)) {
                    mantissa := div(mantissa, 1000000000000)
                    exponent := add(exponent, 12)
                }
                if iszero(mod(mantissa, 1000000)) {
                    mantissa := div(mantissa, 1000000)
                    exponent := add(exponent, 6)
                }
                if iszero(mod(mantissa, 10000)) {
                    mantissa := div(mantissa, 10000)
                    exponent := add(exponent, 4)
                }
                if iszero(mod(mantissa, 100)) {
                    mantissa := div(mantissa, 100)
                    exponent := add(exponent, 2)
                }
                if iszero(mod(mantissa, 10)) {
                    mantissa := div(mantissa, 10)
                    exponent := add(exponent, 1)
                }
            }
        }
    }

    /// @dev Convenience function for packing `x` into a smaller number using `sci`.
    /// The `mantissa` will be in bits [7..255] (the upper 249 bits).
    /// The `exponent` will be in bits [0..6] (the lower 7 bits).
    /// Use `SafeCastLib` to safely ensure that the `packed` number is small
    /// enough to fit in the desired unsigned integer type:
    /// ```
    ///     uint32 packed = SafeCastLib.toUint32(FixedPointMathLib.packSci(777 ether));
    /// ```
    function packSci(uint256 x) internal pure returns (uint256 packed) {
        (x, packed) = sci(x); // Reuse for `mantissa` and `exponent`.
        /// @solidity memory-safe-assembly
        assembly {
            if shr(249, x) {
                mstore(0x00, 0xce30380c) // `MantissaOverflow()`.
                revert(0x1c, 0x04)
            }
            packed := or(shl(7, x), packed)
        }
    }

    /// @dev Convenience function for unpacking a packed number from `packSci`.
    function unpackSci(uint256 packed) internal pure returns (uint256 unpacked) {
        unchecked {
            unpacked = (packed >> 7) * 10 ** (packed & 0x7f);
        }
    }

    /// @dev Returns the average of `x` and `y`. Rounds towards zero.
    function avg(uint256 x, uint256 y) internal pure returns (uint256 z) {
        unchecked {
            z = (x & y) + ((x ^ y) >> 1);
        }
    }

    /// @dev Returns the average of `x` and `y`. Rounds towards negative infinity.
    function avg(int256 x, int256 y) internal pure returns (int256 z) {
        unchecked {
            z = (x >> 1) + (y >> 1) + (x & y & 1);
        }
    }

    /// @dev Returns the absolute value of `x`.
    function abs(int256 x) internal pure returns (uint256 z) {
        unchecked {
            z = (uint256(x) + uint256(x >> 255)) ^ uint256(x >> 255);
        }
    }

    /// @dev Returns the absolute distance between `x` and `y`.
    function dist(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := add(xor(sub(0, gt(x, y)), sub(y, x)), gt(x, y))
        }
    }

    /// @dev Returns the absolute distance between `x` and `y`.
    function dist(int256 x, int256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := add(xor(sub(0, sgt(x, y)), sub(y, x)), sgt(x, y))
        }
    }

    /// @dev Returns the minimum of `x` and `y`.
    function min(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), lt(y, x)))
        }
    }

    /// @dev Returns the minimum of `x` and `y`.
    function min(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), slt(y, x)))
        }
    }

    /// @dev Returns the maximum of `x` and `y`.
    function max(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), gt(y, x)))
        }
    }

    /// @dev Returns the maximum of `x` and `y`.
    function max(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, y), sgt(y, x)))
        }
    }

    /// @dev Returns `x`, bounded to `minValue` and `maxValue`.
    function clamp(uint256 x, uint256 minValue, uint256 maxValue)
        internal
        pure
        returns (uint256 z)
    {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, minValue), gt(minValue, x)))
            z := xor(z, mul(xor(z, maxValue), lt(maxValue, z)))
        }
    }

    /// @dev Returns `x`, bounded to `minValue` and `maxValue`.
    function clamp(int256 x, int256 minValue, int256 maxValue) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := xor(x, mul(xor(x, minValue), sgt(minValue, x)))
            z := xor(z, mul(xor(z, maxValue), slt(maxValue, z)))
        }
    }

    /// @dev Returns greatest common divisor of `x` and `y`.
    function gcd(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            for { z := x } y {} {
                let t := y
                y := mod(z, y)
                z := t
            }
        }
    }

    /// @dev Returns `a + (b - a) * (t - begin) / (end - begin)`,
    /// with `t` clamped between `begin` and `end` (inclusive).
    /// Agnostic to the order of (`a`, `b`) and (`end`, `begin`).
    /// If `begins == end`, returns `t <= begin ? a : b`.
    function lerp(uint256 a, uint256 b, uint256 t, uint256 begin, uint256 end)
        internal
        pure
        returns (uint256)
    {
        if (begin > end) (t, begin, end) = (~t, ~begin, ~end);
        if (t <= begin) return a;
        if (t >= end) return b;
        unchecked {
            if (b >= a) return a + fullMulDiv(b - a, t - begin, end - begin);
            return a - fullMulDiv(a - b, t - begin, end - begin);
        }
    }

    /// @dev Returns `a + (b - a) * (t - begin) / (end - begin)`.
    /// with `t` clamped between `begin` and `end` (inclusive).
    /// Agnostic to the order of (`a`, `b`) and (`end`, `begin`).
    /// If `begins == end`, returns `t <= begin ? a : b`.
    function lerp(int256 a, int256 b, int256 t, int256 begin, int256 end)
        internal
        pure
        returns (int256)
    {
        if (begin > end) (t, begin, end) = (~t, ~begin, ~end);
        if (t <= begin) return a;
        if (t >= end) return b;
        // forgefmt: disable-next-item
        unchecked {
            if (b >= a) return int256(uint256(a) + fullMulDiv(uint256(b - a),
                uint256(t - begin), uint256(end - begin)));
            return int256(uint256(a) - fullMulDiv(uint256(a - b),
                uint256(t - begin), uint256(end - begin)));
        }
    }

    /// @dev Returns if `x` is an even number. Some people may need this.
    function isEven(uint256 x) internal pure returns (bool) {
        return x & uint256(1) == uint256(0);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   RAW NUMBER OPERATIONS                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns `x + y`, without checking for overflow.
    function rawAdd(uint256 x, uint256 y) internal pure returns (uint256 z) {
        unchecked {
            z = x + y;
        }
    }

    /// @dev Returns `x + y`, without checking for overflow.
    function rawAdd(int256 x, int256 y) internal pure returns (int256 z) {
        unchecked {
            z = x + y;
        }
    }

    /// @dev Returns `x - y`, without checking for underflow.
    function rawSub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        unchecked {
            z = x - y;
        }
    }

    /// @dev Returns `x - y`, without checking for underflow.
    function rawSub(int256 x, int256 y) internal pure returns (int256 z) {
        unchecked {
            z = x - y;
        }
    }

    /// @dev Returns `x * y`, without checking for overflow.
    function rawMul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        unchecked {
            z = x * y;
        }
    }

    /// @dev Returns `x * y`, without checking for overflow.
    function rawMul(int256 x, int256 y) internal pure returns (int256 z) {
        unchecked {
            z = x * y;
        }
    }

    /// @dev Returns `x / y`, returning 0 if `y` is zero.
    function rawDiv(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := div(x, y)
        }
    }

    /// @dev Returns `x / y`, returning 0 if `y` is zero.
    function rawSDiv(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := sdiv(x, y)
        }
    }

    /// @dev Returns `x % y`, returning 0 if `y` is zero.
    function rawMod(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mod(x, y)
        }
    }

    /// @dev Returns `x % y`, returning 0 if `y` is zero.
    function rawSMod(int256 x, int256 y) internal pure returns (int256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := smod(x, y)
        }
    }

    /// @dev Returns `(x + y) % d`, return 0 if `d` if zero.
    function rawAddMod(uint256 x, uint256 y, uint256 d) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := addmod(x, y, d)
        }
    }

    /// @dev Returns `(x * y) % d`, return 0 if `d` if zero.
    function rawMulMod(uint256 x, uint256 y, uint256 d) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := mulmod(x, y, d)
        }
    }
}

// ============================================================
// FILE: lib/solady/src/utils/LibBit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Library for bit twiddling and boolean operations.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/LibBit.sol)
/// @author Inspired by (https://graphics.stanford.edu/~seander/bithacks.html)
library LibBit {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  BIT TWIDDLING OPERATIONS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Find last set.
    /// Returns the index of the most significant bit of `x`,
    /// counting from the least significant bit position.
    /// If `x` is zero, returns 256.
    function fls(uint256 x) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            r := or(shl(8, iszero(x)), shl(7, lt(0xffffffffffffffffffffffffffffffff, x)))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            r := or(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0x0706060506020504060203020504030106050205030304010505030400000000))
        }
    }

    /// @dev Count leading zeros.
    /// Returns the number of zeros preceding the most significant one bit.
    /// If `x` is zero, returns 256.
    function clz(uint256 x) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            r := add(xor(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff)), iszero(x))
        }
    }

    /// @dev Find first set.
    /// Returns the index of the least significant bit of `x`,
    /// counting from the least significant bit position.
    /// If `x` is zero, returns 256.
    /// Equivalent to `ctz` (count trailing zeros), which gives
    /// the number of zeros following the least significant one bit.
    function ffs(uint256 x) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            // Isolate the least significant bit.
            x := and(x, add(not(x), 1))
            // For the upper 3 bits of the result, use a De Bruijn-like lookup.
            // Credit to adhusson: https://blog.adhusson.com/cheap-find-first-set-evm/
            // forgefmt: disable-next-item
            r := shl(5, shr(252, shl(shl(2, shr(250, mul(x,
                0xb6db6db6ddddddddd34d34d349249249210842108c6318c639ce739cffffffff))),
                0x8040405543005266443200005020610674053026020000107506200176117077)))
            // For the lower 5 bits of the result, use a De Bruijn lookup.
            // forgefmt: disable-next-item
            r := or(r, byte(and(div(0xd76453e0, shr(r, x)), 0x1f),
                0x001f0d1e100c1d070f090b19131c1706010e11080a1a141802121b1503160405))
        }
    }

    /// @dev Returns the number of set bits in `x`.
    function popCount(uint256 x) internal pure returns (uint256 c) {
        /// @solidity memory-safe-assembly
        assembly {
            let max := not(0)
            let isMax := eq(x, max)
            x := sub(x, and(shr(1, x), div(max, 3)))
            x := add(and(x, div(max, 5)), and(shr(2, x), div(max, 5)))
            x := and(add(x, shr(4, x)), div(max, 17))
            c := or(shl(8, isMax), shr(248, mul(x, div(max, 255))))
        }
    }

    /// @dev Returns whether `x` is a power of 2.
    function isPo2(uint256 x) internal pure returns (bool result) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to `x && !(x & (x - 1))`.
            result := iszero(add(and(x, sub(x, 1)), iszero(x)))
        }
    }

    /// @dev Returns `x` reversed at the bit level.
    function reverseBits(uint256 x) internal pure returns (uint256 r) {
        uint256 m0 = 0x0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f;
        uint256 m1 = m0 ^ (m0 << 2);
        uint256 m2 = m1 ^ (m1 << 1);
        r = reverseBytes(x);
        r = (m2 & (r >> 1)) | ((m2 & r) << 1);
        r = (m1 & (r >> 2)) | ((m1 & r) << 2);
        r = (m0 & (r >> 4)) | ((m0 & r) << 4);
    }

    /// @dev Returns `x` reversed at the byte level.
    function reverseBytes(uint256 x) internal pure returns (uint256 r) {
        unchecked {
            // Computing masks on-the-fly reduces bytecode size by about 200 bytes.
            uint256 m0 = 0x100000000000000000000000000000001 * (~toUint(x == uint256(0)) >> 192);
            uint256 m1 = m0 ^ (m0 << 32);
            uint256 m2 = m1 ^ (m1 << 16);
            uint256 m3 = m2 ^ (m2 << 8);
            r = (m3 & (x >> 8)) | ((m3 & x) << 8);
            r = (m2 & (r >> 16)) | ((m2 & r) << 16);
            r = (m1 & (r >> 32)) | ((m1 & r) << 32);
            r = (m0 & (r >> 64)) | ((m0 & r) << 64);
            r = (r >> 128) | (r << 128);
        }
    }

    /// @dev Returns the common prefix of `x` and `y` at the bit level.
    function commonBitPrefix(uint256 x, uint256 y) internal pure returns (uint256) {
        unchecked {
            uint256 s = 256 - clz(x ^ y);
            return (x >> s) << s;
        }
    }

    /// @dev Returns the common prefix of `x` and `y` at the nibble level.
    function commonNibblePrefix(uint256 x, uint256 y) internal pure returns (uint256) {
        unchecked {
            uint256 s = (64 - (clz(x ^ y) >> 2)) << 2;
            return (x >> s) << s;
        }
    }

    /// @dev Returns the common prefix of `x` and `y` at the byte level.
    function commonBytePrefix(uint256 x, uint256 y) internal pure returns (uint256) {
        unchecked {
            uint256 s = (32 - (clz(x ^ y) >> 3)) << 3;
            return (x >> s) << s;
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     BOOLEAN OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // A Solidity bool on the stack or memory is represented as a 256-bit word.
    // Non-zero values are true, zero is false.
    // A clean bool is either 0 (false) or 1 (true) under the hood.
    // Usually, if not always, the bool result of a regular Solidity expression,
    // or the argument of a public/external function will be a clean bool.
    // You can usually use the raw variants for more performance.
    // If uncertain, test (best with exact compiler settings).
    // Or use the non-raw variants (compiler can sometimes optimize out the double `iszero`s).

    /// @dev Returns `x & y`. Inputs must be clean.
    function rawAnd(bool x, bool y) internal pure returns (bool z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := and(x, y)
        }
    }

    /// @dev Returns `x & y`.
    function and(bool x, bool y) internal pure returns (bool z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := and(iszero(iszero(x)), iszero(iszero(y)))
        }
    }

    /// @dev Returns `x | y`. Inputs must be clean.
    function rawOr(bool x, bool y) internal pure returns (bool z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := or(x, y)
        }
    }

    /// @dev Returns `x | y`.
    function or(bool x, bool y) internal pure returns (bool z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := or(iszero(iszero(x)), iszero(iszero(y)))
        }
    }

    /// @dev Returns 1 if `b` is true, else 0. Input must be clean.
    function rawToUint(bool b) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := b
        }
    }

    /// @dev Returns 1 if `b` is true, else 0.
    function toUint(bool b) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            z := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: lib/solady/src/utils/SafeCastLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Safe integer casting library that reverts on overflow.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/SafeCastLib.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeCast.sol)
/// @dev Optimized for runtime gas for very high number of optimizer runs (i.e. >= 1000000).
library SafeCastLib {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CUSTOM ERRORS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Unable to cast to the target type due to overflow.
    error Overflow();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*          UNSIGNED INTEGER SAFE CASTING OPERATIONS          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Casts `x` to a uint8. Reverts on overflow.
    function toUint8(uint256 x) internal pure returns (uint8) {
        if (x >= 1 << 8) _revertOverflow();
        return uint8(x);
    }

    /// @dev Casts `x` to a uint16. Reverts on overflow.
    function toUint16(uint256 x) internal pure returns (uint16) {
        if (x >= 1 << 16) _revertOverflow();
        return uint16(x);
    }

    /// @dev Casts `x` to a uint24. Reverts on overflow.
    function toUint24(uint256 x) internal pure returns (uint24) {
        if (x >= 1 << 24) _revertOverflow();
        return uint24(x);
    }

    /// @dev Casts `x` to a uint32. Reverts on overflow.
    function toUint32(uint256 x) internal pure returns (uint32) {
        if (x >= 1 << 32) _revertOverflow();
        return uint32(x);
    }

    /// @dev Casts `x` to a uint40. Reverts on overflow.
    function toUint40(uint256 x) internal pure returns (uint40) {
        if (x >= 1 << 40) _revertOverflow();
        return uint40(x);
    }

    /// @dev Casts `x` to a uint48. Reverts on overflow.
    function toUint48(uint256 x) internal pure returns (uint48) {
        if (x >= 1 << 48) _revertOverflow();
        return uint48(x);
    }

    /// @dev Casts `x` to a uint56. Reverts on overflow.
    function toUint56(uint256 x) internal pure returns (uint56) {
        if (x >= 1 << 56) _revertOverflow();
        return uint56(x);
    }

    /// @dev Casts `x` to a uint64. Reverts on overflow.
    function toUint64(uint256 x) internal pure returns (uint64) {
        if (x >= 1 << 64) _revertOverflow();
        return uint64(x);
    }

    /// @dev Casts `x` to a uint72. Reverts on overflow.
    function toUint72(uint256 x) internal pure returns (uint72) {
        if (x >= 1 << 72) _revertOverflow();
        return uint72(x);
    }

    /// @dev Casts `x` to a uint80. Reverts on overflow.
    function toUint80(uint256 x) internal pure returns (uint80) {
        if (x >= 1 << 80) _revertOverflow();
        return uint80(x);
    }

    /// @dev Casts `x` to a uint88. Reverts on overflow.
    function toUint88(uint256 x) internal pure returns (uint88) {
        if (x >= 1 << 88) _revertOverflow();
        return uint88(x);
    }

    /// @dev Casts `x` to a uint96. Reverts on overflow.
    function toUint96(uint256 x) internal pure returns (uint96) {
        if (x >= 1 << 96) _revertOverflow();
        return uint96(x);
    }

    /// @dev Casts `x` to a uint104. Reverts on overflow.
    function toUint104(uint256 x) internal pure returns (uint104) {
        if (x >= 1 << 104) _revertOverflow();
        return uint104(x);
    }

    /// @dev Casts `x` to a uint112. Reverts on overflow.
    function toUint112(uint256 x) internal pure returns (uint112) {
        if (x >= 1 << 112) _revertOverflow();
        return uint112(x);
    }

    /// @dev Casts `x` to a uint120. Reverts on overflow.
    function toUint120(uint256 x) internal pure returns (uint120) {
        if (x >= 1 << 120) _revertOverflow();
        return uint120(x);
    }

    /// @dev Casts `x` to a uint128. Reverts on overflow.
    function toUint128(uint256 x) internal pure returns (uint128) {
        if (x >= 1 << 128) _revertOverflow();
        return uint128(x);
    }

    /// @dev Casts `x` to a uint136. Reverts on overflow.
    function toUint136(uint256 x) internal pure returns (uint136) {
        if (x >= 1 << 136) _revertOverflow();
        return uint136(x);
    }

    /// @dev Casts `x` to a uint144. Reverts on overflow.
    function toUint144(uint256 x) internal pure returns (uint144) {
        if (x >= 1 << 144) _revertOverflow();
        return uint144(x);
    }

    /// @dev Casts `x` to a uint152. Reverts on overflow.
    function toUint152(uint256 x) internal pure returns (uint152) {
        if (x >= 1 << 152) _revertOverflow();
        return uint152(x);
    }

    /// @dev Casts `x` to a uint160. Reverts on overflow.
    function toUint160(uint256 x) internal pure returns (uint160) {
        if (x >= 1 << 160) _revertOverflow();
        return uint160(x);
    }

    /// @dev Casts `x` to a uint168. Reverts on overflow.
    function toUint168(uint256 x) internal pure returns (uint168) {
        if (x >= 1 << 168) _revertOverflow();
        return uint168(x);
    }

    /// @dev Casts `x` to a uint176. Reverts on overflow.
    function toUint176(uint256 x) internal pure returns (uint176) {
        if (x >= 1 << 176) _revertOverflow();
        return uint176(x);
    }

    /// @dev Casts `x` to a uint184. Reverts on overflow.
    function toUint184(uint256 x) internal pure returns (uint184) {
        if (x >= 1 << 184) _revertOverflow();
        return uint184(x);
    }

    /// @dev Casts `x` to a uint192. Reverts on overflow.
    function toUint192(uint256 x) internal pure returns (uint192) {
        if (x >= 1 << 192) _revertOverflow();
        return uint192(x);
    }

    /// @dev Casts `x` to a uint200. Reverts on overflow.
    function toUint200(uint256 x) internal pure returns (uint200) {
        if (x >= 1 << 200) _revertOverflow();
        return uint200(x);
    }

    /// @dev Casts `x` to a uint208. Reverts on overflow.
    function toUint208(uint256 x) internal pure returns (uint208) {
        if (x >= 1 << 208) _revertOverflow();
        return uint208(x);
    }

    /// @dev Casts `x` to a uint216. Reverts on overflow.
    function toUint216(uint256 x) internal pure returns (uint216) {
        if (x >= 1 << 216) _revertOverflow();
        return uint216(x);
    }

    /// @dev Casts `x` to a uint224. Reverts on overflow.
    function toUint224(uint256 x) internal pure returns (uint224) {
        if (x >= 1 << 224) _revertOverflow();
        return uint224(x);
    }

    /// @dev Casts `x` to a uint232. Reverts on overflow.
    function toUint232(uint256 x) internal pure returns (uint232) {
        if (x >= 1 << 232) _revertOverflow();
        return uint232(x);
    }

    /// @dev Casts `x` to a uint240. Reverts on overflow.
    function toUint240(uint256 x) internal pure returns (uint240) {
        if (x >= 1 << 240) _revertOverflow();
        return uint240(x);
    }

    /// @dev Casts `x` to a uint248. Reverts on overflow.
    function toUint248(uint256 x) internal pure returns (uint248) {
        if (x >= 1 << 248) _revertOverflow();
        return uint248(x);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*           SIGNED INTEGER SAFE CASTING OPERATIONS           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Casts `x` to a int8. Reverts on overflow.
    function toInt8(int256 x) internal pure returns (int8) {
        unchecked {
            if (((1 << 7) + uint256(x)) >> 8 == uint256(0)) return int8(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int16. Reverts on overflow.
    function toInt16(int256 x) internal pure returns (int16) {
        unchecked {
            if (((1 << 15) + uint256(x)) >> 16 == uint256(0)) return int16(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int24. Reverts on overflow.
    function toInt24(int256 x) internal pure returns (int24) {
        unchecked {
            if (((1 << 23) + uint256(x)) >> 24 == uint256(0)) return int24(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int32. Reverts on overflow.
    function toInt32(int256 x) internal pure returns (int32) {
        unchecked {
            if (((1 << 31) + uint256(x)) >> 32 == uint256(0)) return int32(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int40. Reverts on overflow.
    function toInt40(int256 x) internal pure returns (int40) {
        unchecked {
            if (((1 << 39) + uint256(x)) >> 40 == uint256(0)) return int40(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int48. Reverts on overflow.
    function toInt48(int256 x) internal pure returns (int48) {
        unchecked {
            if (((1 << 47) + uint256(x)) >> 48 == uint256(0)) return int48(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int56. Reverts on overflow.
    function toInt56(int256 x) internal pure returns (int56) {
        unchecked {
            if (((1 << 55) + uint256(x)) >> 56 == uint256(0)) return int56(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int64. Reverts on overflow.
    function toInt64(int256 x) internal pure returns (int64) {
        unchecked {
            if (((1 << 63) + uint256(x)) >> 64 == uint256(0)) return int64(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int72. Reverts on overflow.
    function toInt72(int256 x) internal pure returns (int72) {
        unchecked {
            if (((1 << 71) + uint256(x)) >> 72 == uint256(0)) return int72(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int80. Reverts on overflow.
    function toInt80(int256 x) internal pure returns (int80) {
        unchecked {
            if (((1 << 79) + uint256(x)) >> 80 == uint256(0)) return int80(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int88. Reverts on overflow.
    function toInt88(int256 x) internal pure returns (int88) {
        unchecked {
            if (((1 << 87) + uint256(x)) >> 88 == uint256(0)) return int88(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int96. Reverts on overflow.
    function toInt96(int256 x) internal pure returns (int96) {
        unchecked {
            if (((1 << 95) + uint256(x)) >> 96 == uint256(0)) return int96(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int104. Reverts on overflow.
    function toInt104(int256 x) internal pure returns (int104) {
        unchecked {
            if (((1 << 103) + uint256(x)) >> 104 == uint256(0)) return int104(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int112. Reverts on overflow.
    function toInt112(int256 x) internal pure returns (int112) {
        unchecked {
            if (((1 << 111) + uint256(x)) >> 112 == uint256(0)) return int112(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int120. Reverts on overflow.
    function toInt120(int256 x) internal pure returns (int120) {
        unchecked {
            if (((1 << 119) + uint256(x)) >> 120 == uint256(0)) return int120(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int128. Reverts on overflow.
    function toInt128(int256 x) internal pure returns (int128) {
        unchecked {
            if (((1 << 127) + uint256(x)) >> 128 == uint256(0)) return int128(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int136. Reverts on overflow.
    function toInt136(int256 x) internal pure returns (int136) {
        unchecked {
            if (((1 << 135) + uint256(x)) >> 136 == uint256(0)) return int136(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int144. Reverts on overflow.
    function toInt144(int256 x) internal pure returns (int144) {
        unchecked {
            if (((1 << 143) + uint256(x)) >> 144 == uint256(0)) return int144(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int152. Reverts on overflow.
    function toInt152(int256 x) internal pure returns (int152) {
        unchecked {
            if (((1 << 151) + uint256(x)) >> 152 == uint256(0)) return int152(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int160. Reverts on overflow.
    function toInt160(int256 x) internal pure returns (int160) {
        unchecked {
            if (((1 << 159) + uint256(x)) >> 160 == uint256(0)) return int160(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int168. Reverts on overflow.
    function toInt168(int256 x) internal pure returns (int168) {
        unchecked {
            if (((1 << 167) + uint256(x)) >> 168 == uint256(0)) return int168(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int176. Reverts on overflow.
    function toInt176(int256 x) internal pure returns (int176) {
        unchecked {
            if (((1 << 175) + uint256(x)) >> 176 == uint256(0)) return int176(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int184. Reverts on overflow.
    function toInt184(int256 x) internal pure returns (int184) {
        unchecked {
            if (((1 << 183) + uint256(x)) >> 184 == uint256(0)) return int184(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int192. Reverts on overflow.
    function toInt192(int256 x) internal pure returns (int192) {
        unchecked {
            if (((1 << 191) + uint256(x)) >> 192 == uint256(0)) return int192(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int200. Reverts on overflow.
    function toInt200(int256 x) internal pure returns (int200) {
        unchecked {
            if (((1 << 199) + uint256(x)) >> 200 == uint256(0)) return int200(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int208. Reverts on overflow.
    function toInt208(int256 x) internal pure returns (int208) {
        unchecked {
            if (((1 << 207) + uint256(x)) >> 208 == uint256(0)) return int208(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int216. Reverts on overflow.
    function toInt216(int256 x) internal pure returns (int216) {
        unchecked {
            if (((1 << 215) + uint256(x)) >> 216 == uint256(0)) return int216(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int224. Reverts on overflow.
    function toInt224(int256 x) internal pure returns (int224) {
        unchecked {
            if (((1 << 223) + uint256(x)) >> 224 == uint256(0)) return int224(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int232. Reverts on overflow.
    function toInt232(int256 x) internal pure returns (int232) {
        unchecked {
            if (((1 << 231) + uint256(x)) >> 232 == uint256(0)) return int232(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int240. Reverts on overflow.
    function toInt240(int256 x) internal pure returns (int240) {
        unchecked {
            if (((1 << 239) + uint256(x)) >> 240 == uint256(0)) return int240(x);
            _revertOverflow();
        }
    }

    /// @dev Casts `x` to a int248. Reverts on overflow.
    function toInt248(int256 x) internal pure returns (int248) {
        unchecked {
            if (((1 << 247) + uint256(x)) >> 248 == uint256(0)) return int248(x);
            _revertOverflow();
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*               OTHER SAFE CASTING OPERATIONS                */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Casts `x` to a int8. Reverts on overflow.
    function toInt8(uint256 x) internal pure returns (int8) {
        if (x >= 1 << 7) _revertOverflow();
        return int8(int256(x));
    }

    /// @dev Casts `x` to a int16. Reverts on overflow.
    function toInt16(uint256 x) internal pure returns (int16) {
        if (x >= 1 << 15) _revertOverflow();
        return int16(int256(x));
    }

    /// @dev Casts `x` to a int24. Reverts on overflow.
    function toInt24(uint256 x) internal pure returns (int24) {
        if (x >= 1 << 23) _revertOverflow();
        return int24(int256(x));
    }

    /// @dev Casts `x` to a int32. Reverts on overflow.
    function toInt32(uint256 x) internal pure returns (int32) {
        if (x >= 1 << 31) _revertOverflow();
        return int32(int256(x));
    }

    /// @dev Casts `x` to a int40. Reverts on overflow.
    function toInt40(uint256 x) internal pure returns (int40) {
        if (x >= 1 << 39) _revertOverflow();
        return int40(int256(x));
    }

    /// @dev Casts `x` to a int48. Reverts on overflow.
    function toInt48(uint256 x) internal pure returns (int48) {
        if (x >= 1 << 47) _revertOverflow();
        return int48(int256(x));
    }

    /// @dev Casts `x` to a int56. Reverts on overflow.
    function toInt56(uint256 x) internal pure returns (int56) {
        if (x >= 1 << 55) _revertOverflow();
        return int56(int256(x));
    }

    /// @dev Casts `x` to a int64. Reverts on overflow.
    function toInt64(uint256 x) internal pure returns (int64) {
        if (x >= 1 << 63) _revertOverflow();
        return int64(int256(x));
    }

    /// @dev Casts `x` to a int72. Reverts on overflow.
    function toInt72(uint256 x) internal pure returns (int72) {
        if (x >= 1 << 71) _revertOverflow();
        return int72(int256(x));
    }

    /// @dev Casts `x` to a int80. Reverts on overflow.
    function toInt80(uint256 x) internal pure returns (int80) {
        if (x >= 1 << 79) _revertOverflow();
        return int80(int256(x));
    }

    /// @dev Casts `x` to a int88. Reverts on overflow.
    function toInt88(uint256 x) internal pure returns (int88) {
        if (x >= 1 << 87) _revertOverflow();
        return int88(int256(x));
    }

    /// @dev Casts `x` to a int96. Reverts on overflow.
    function toInt96(uint256 x) internal pure returns (int96) {
        if (x >= 1 << 95) _revertOverflow();
        return int96(int256(x));
    }

    /// @dev Casts `x` to a int104. Reverts on overflow.
    function toInt104(uint256 x) internal pure returns (int104) {
        if (x >= 1 << 103) _revertOverflow();
        return int104(int256(x));
    }

    /// @dev Casts `x` to a int112. Reverts on overflow.
    function toInt112(uint256 x) internal pure returns (int112) {
        if (x >= 1 << 111) _revertOverflow();
        return int112(int256(x));
    }

    /// @dev Casts `x` to a int120. Reverts on overflow.
    function toInt120(uint256 x) internal pure returns (int120) {
        if (x >= 1 << 119) _revertOverflow();
        return int120(int256(x));
    }

    /// @dev Casts `x` to a int128. Reverts on overflow.
    function toInt128(uint256 x) internal pure returns (int128) {
        if (x >= 1 << 127) _revertOverflow();
        return int128(int256(x));
    }

    /// @dev Casts `x` to a int136. Reverts on overflow.
    function toInt136(uint256 x) internal pure returns (int136) {
        if (x >= 1 << 135) _revertOverflow();
        return int136(int256(x));
    }

    /// @dev Casts `x` to a int144. Reverts on overflow.
    function toInt144(uint256 x) internal pure returns (int144) {
        if (x >= 1 << 143) _revertOverflow();
        return int144(int256(x));
    }

    /// @dev Casts `x` to a int152. Reverts on overflow.
    function toInt152(uint256 x) internal pure returns (int152) {
        if (x >= 1 << 151) _revertOverflow();
        return int152(int256(x));
    }

    /// @dev Casts `x` to a int160. Reverts on overflow.
    function toInt160(uint256 x) internal pure returns (int160) {
        if (x >= 1 << 159) _revertOverflow();
        return int160(int256(x));
    }

    /// @dev Casts `x` to a int168. Reverts on overflow.
    function toInt168(uint256 x) internal pure returns (int168) {
        if (x >= 1 << 167) _revertOverflow();
        return int168(int256(x));
    }

    /// @dev Casts `x` to a int176. Reverts on overflow.
    function toInt176(uint256 x) internal pure returns (int176) {
        if (x >= 1 << 175) _revertOverflow();
        return int176(int256(x));
    }

    /// @dev Casts `x` to a int184. Reverts on overflow.
    function toInt184(uint256 x) internal pure returns (int184) {
        if (x >= 1 << 183) _revertOverflow();
        return int184(int256(x));
    }

    /// @dev Casts `x` to a int192. Reverts on overflow.
    function toInt192(uint256 x) internal pure returns (int192) {
        if (x >= 1 << 191) _revertOverflow();
        return int192(int256(x));
    }

    /// @dev Casts `x` to a int200. Reverts on overflow.
    function toInt200(uint256 x) internal pure returns (int200) {
        if (x >= 1 << 199) _revertOverflow();
        return int200(int256(x));
    }

    /// @dev Casts `x` to a int208. Reverts on overflow.
    function toInt208(uint256 x) internal pure returns (int208) {
        if (x >= 1 << 207) _revertOverflow();
        return int208(int256(x));
    }

    /// @dev Casts `x` to a int216. Reverts on overflow.
    function toInt216(uint256 x) internal pure returns (int216) {
        if (x >= 1 << 215) _revertOverflow();
        return int216(int256(x));
    }

    /// @dev Casts `x` to a int224. Reverts on overflow.
    function toInt224(uint256 x) internal pure returns (int224) {
        if (x >= 1 << 223) _revertOverflow();
        return int224(int256(x));
    }

    /// @dev Casts `x` to a int232. Reverts on overflow.
    function toInt232(uint256 x) internal pure returns (int232) {
        if (x >= 1 << 231) _revertOverflow();
        return int232(int256(x));
    }

    /// @dev Casts `x` to a int240. Reverts on overflow.
    function toInt240(uint256 x) internal pure returns (int240) {
        if (x >= 1 << 239) _revertOverflow();
        return int240(int256(x));
    }

    /// @dev Casts `x` to a int248. Reverts on overflow.
    function toInt248(uint256 x) internal pure returns (int248) {
        if (x >= 1 << 247) _revertOverflow();
        return int248(int256(x));
    }

    /// @dev Casts `x` to a int256. Reverts on overflow.
    function toInt256(uint256 x) internal pure returns (int256) {
        if (int256(x) >= 0) return int256(x);
        _revertOverflow();
    }

    /// @dev Casts `x` to a uint256. Reverts on overflow.
    function toUint256(int256 x) internal pure returns (uint256) {
        if (x >= 0) return uint256(x);
        _revertOverflow();
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      PRIVATE HELPERS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _revertOverflow() private pure {
        /// @solidity memory-safe-assembly
        assembly {
            // Store the function selector of `Overflow()`.
            mstore(0x00, 0x35278d12)
            // Revert with (offset, size).
            revert(0x1c, 0x04)
        }
    }
}

// ============================================================
// FILE: lib/solady/src/utils/SafeTransferLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/SafeTransferLib.sol)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @author Permit2 operations from (https://github.com/Uniswap/permit2/blob/main/src/libraries/Permit2Lib.sol)
///
/// @dev Note:
/// - For ETH transfers, please use `forceSafeTransferETH` for DoS protection.
library SafeTransferLib {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CUSTOM ERRORS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev The ETH transfer has failed.
    error ETHTransferFailed();

    /// @dev The ERC20 `transferFrom` has failed.
    error TransferFromFailed();

    /// @dev The ERC20 `transfer` has failed.
    error TransferFailed();

    /// @dev The ERC20 `approve` has failed.
    error ApproveFailed();

    /// @dev The ERC20 `totalSupply` query has failed.
    error TotalSupplyQueryFailed();

    /// @dev The Permit2 operation has failed.
    error Permit2Failed();

    /// @dev The Permit2 amount must be less than `2**160 - 1`.
    error Permit2AmountOverflow();

    /// @dev The Permit2 approve operation has failed.
    error Permit2ApproveFailed();

    /// @dev The Permit2 lockdown operation has failed.
    error Permit2LockdownFailed();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         CONSTANTS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Suggested gas stipend for contract receiving ETH that disallows any storage writes.
    uint256 internal constant GAS_STIPEND_NO_STORAGE_WRITES = 2300;

    /// @dev Suggested gas stipend for contract receiving ETH to perform a few
    /// storage reads and writes, but low enough to prevent griefing.
    uint256 internal constant GAS_STIPEND_NO_GRIEF = 100000;

    /// @dev The unique EIP-712 domain domain separator for the DAI token contract.
    bytes32 internal constant DAI_DOMAIN_SEPARATOR =
        0xdbb8cf42e1ecb028be3f3dbc922e1d878b963f411dc388ced501601c60f7c6f7;

    /// @dev The address for the WETH9 contract on Ethereum mainnet.
    address internal constant WETH9 = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    /// @dev The canonical Permit2 address.
    /// [Github](https://github.com/Uniswap/permit2)
    /// [Etherscan](https://etherscan.io/address/0x000000000022D473030F116dDEE9F6B43aC78BA3)
    address internal constant PERMIT2 = 0x000000000022D473030F116dDEE9F6B43aC78BA3;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ETH OPERATIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // If the ETH transfer MUST succeed with a reasonable gas budget, use the force variants.
    //
    // The regular variants:
    // - Forwards all remaining gas to the target.
    // - Reverts if the target reverts.
    // - Reverts if the current contract has insufficient balance.
    //
    // The force variants:
    // - Forwards with an optional gas stipend
    //   (defaults to `GAS_STIPEND_NO_GRIEF`, which is sufficient for most cases).
    // - If the target reverts, or if the gas stipend is exhausted,
    //   creates a temporary contract to force send the ETH via `SELFDESTRUCT`.
    //   Future compatible with `SENDALL`: https://eips.ethereum.org/EIPS/eip-4758.
    // - Reverts if the current contract has insufficient balance.
    //
    // The try variants:
    // - Forwards with a mandatory gas stipend.
    // - Instead of reverting, returns whether the transfer succeeded.

    /// @dev Sends `amount` (in wei) ETH to `to`.
    function safeTransferETH(address to, uint256 amount) internal {
        /// @solidity memory-safe-assembly
        assembly {
            if iszero(call(gas(), to, amount, codesize(), 0x00, codesize(), 0x00)) {
                mstore(0x00, 0xb12d13eb) // `ETHTransferFailed()`.
                revert(0x1c, 0x04)
            }
        }
    }

    /// @dev Sends all the ETH in the current contract to `to`.
    function safeTransferAllETH(address to) internal {
        /// @solidity memory-safe-assembly
        assembly {
            // Transfer all the ETH and check if it succeeded or not.
            if iszero(call(gas(), to, selfbalance(), codesize(), 0x00, codesize(), 0x00)) {
                mstore(0x00, 0xb12d13eb) // `ETHTransferFailed()`.
                revert(0x1c, 0x04)
            }
        }
    }

    /// @dev Force sends `amount` (in wei) ETH to `to`, with a `gasStipend`.
    function forceSafeTransferETH(address to, uint256 amount, uint256 gasStipend) internal {
        /// @solidity memory-safe-assembly
        assembly {
            if lt(selfbalance(), amount) {
                mstore(0x00, 0xb12d13eb) // `ETHTransferFailed()`.
                revert(0x1c, 0x04)
            }
            if iszero(call(gasStipend, to, amount, codesize(), 0x00, codesize(), 0x00)) {
                mstore(0x00, to) // Store the address in scratch space.
                mstore8(0x0b, 0x73) // Opcode `PUSH20`.
                mstore8(0x20, 0xff) // Opcode `SELFDESTRUCT`.
                if iszero(create(amount, 0x0b, 0x16)) { revert(codesize(), codesize()) } // For gas estimation.
            }
        }
    }

    /// @dev Force sends all the ETH in the current contract to `to`, with a `gasStipend`.
    function forceSafeTransferAllETH(address to, uint256 gasStipend) internal {
        /// @solidity memory-safe-assembly
        assembly {
            if iszero(call(gasStipend, to, selfbalance(), codesize(), 0x00, codesize(), 0x00)) {
                mstore(0x00, to) // Store the address in scratch space.
                mstore8(0x0b, 0x73) // Opcode `PUSH20`.
                mstore8(0x20, 0xff) // Opcode `SELFDESTRUCT`.
                if iszero(create(selfbalance(), 0x0b, 0x16)) { revert(codesize(), codesize()) } // For gas estimation.
            }
        }
    }

    /// @dev Force sends `amount` (in wei) ETH to `to`, with `GAS_STIPEND_NO_GRIEF`.
    function forceSafeTransferETH(address to, uint256 amount) internal {
        /// @solidity memory-safe-assembly
        assembly {
            if lt(selfbalance(), amount) {
                mstore(0x00, 0xb12d13eb) // `ETHTransferFailed()`.
                revert(0x1c, 0x04)
            }
            if iszero(call(GAS_STIPEND_NO_GRIEF, to, amount, codesize(), 0x00, codesize(), 0x00)) {
                mstore(0x00, to) // Store the address in scratch space.
                mstore8(0x0b, 0x73) // Opcode `PUSH20`.
                mstore8(0x20, 0xff) // Opcode `SELFDESTRUCT`.
                if iszero(create(amount, 0x0b, 0x16)) { revert(codesize(), codesize()) } // For gas estimation.
            }
        }
    }

    /// @dev Force sends all the ETH in the current contract to `to`, with `GAS_STIPEND_NO_GRIEF`.
    function forceSafeTransferAllETH(address to) internal {
        /// @solidity memory-safe-assembly
        assembly {
            // forgefmt: disable-next-item
            if iszero(call(GAS_STIPEND_NO_GRIEF, to, selfbalance(), codesize(), 0x00, codesize(), 0x00)) {
                mstore(0x00, to) // Store the address in scratch space.
                mstore8(0x0b, 0x73) // Opcode `PUSH20`.
                mstore8(0x20, 0xff) // Opcode `SELFDESTRUCT`.
                if iszero(create(selfbalance(), 0x0b, 0x16)) { revert(codesize(), codesize()) } // For gas estimation.
            }
        }
    }

    /// @dev Sends `amount` (in wei) ETH to `to`, with a `gasStipend`.
    function trySafeTransferETH(address to, uint256 amount, uint256 gasStipend)
        internal
        returns (bool success)
    {
        /// @solidity memory-safe-assembly
        assembly {
            success := call(gasStipend, to, amount, codesize(), 0x00, codesize(), 0x00)
        }
    }

    /// @dev Sends all the ETH in the current contract to `to`, with a `gasStipend`.
    function trySafeTransferAllETH(address to, uint256 gasStipend)
        internal
        returns (bool success)
    {
        /// @solidity memory-safe-assembly
        assembly {
            success := call(gasStipend, to, selfbalance(), codesize(), 0x00, codesize(), 0x00)
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      ERC20 OPERATIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Sends `amount` of ERC20 `token` from `from` to `to`.
    /// Reverts upon failure.
    ///
    /// The `from` account must have at least `amount` approved for
    /// the current contract to manage.
    function safeTransferFrom(address token, address from, address to, uint256 amount) internal {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x60, amount) // Store the `amount` argument.
            mstore(0x40, to) // Store the `to` argument.
            mstore(0x2c, shl(96, from)) // Store the `from` argument.
            mstore(0x0c, 0x23b872dd000000000000000000000000) // `transferFrom(address,address,uint256)`.
            let success := call(gas(), token, 0, 0x1c, 0x64, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                    mstore(0x00, 0x7939f424) // `TransferFromFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            mstore(0x60, 0) // Restore the zero slot to zero.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Sends `amount` of ERC20 `token` from `from` to `to`.
    ///
    /// The `from` account must have at least `amount` approved for the current contract to manage.
    function trySafeTransferFrom(address token, address from, address to, uint256 amount)
        internal
        returns (bool success)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x60, amount) // Store the `amount` argument.
            mstore(0x40, to) // Store the `to` argument.
            mstore(0x2c, shl(96, from)) // Store the `from` argument.
            mstore(0x0c, 0x23b872dd000000000000000000000000) // `transferFrom(address,address,uint256)`.
            success := call(gas(), token, 0, 0x1c, 0x64, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                success := lt(or(iszero(extcodesize(token)), returndatasize()), success)
            }
            mstore(0x60, 0) // Restore the zero slot to zero.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Sends all of ERC20 `token` from `from` to `to`.
    /// Reverts upon failure.
    ///
    /// The `from` account must have their entire balance approved for the current contract to manage.
    function safeTransferAllFrom(address token, address from, address to)
        internal
        returns (uint256 amount)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40) // Cache the free memory pointer.
            mstore(0x40, to) // Store the `to` argument.
            mstore(0x2c, shl(96, from)) // Store the `from` argument.
            mstore(0x0c, 0x70a08231000000000000000000000000) // `balanceOf(address)`.
            // Read the balance, reverting upon failure.
            if iszero(
                and( // The arguments of `and` are evaluated from right to left.
                    gt(returndatasize(), 0x1f), // At least 32 bytes returned.
                    staticcall(gas(), token, 0x1c, 0x24, 0x60, 0x20)
                )
            ) {
                mstore(0x00, 0x7939f424) // `TransferFromFailed()`.
                revert(0x1c, 0x04)
            }
            mstore(0x00, 0x23b872dd) // `transferFrom(address,address,uint256)`.
            amount := mload(0x60) // The `amount` is already at 0x60. We'll need to return it.
            // Perform the transfer, reverting upon failure.
            let success := call(gas(), token, 0, 0x1c, 0x64, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                    mstore(0x00, 0x7939f424) // `TransferFromFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            mstore(0x60, 0) // Restore the zero slot to zero.
            mstore(0x40, m) // Restore the free memory pointer.
        }
    }

    /// @dev Sends `amount` of ERC20 `token` from the current contract to `to`.
    /// Reverts upon failure.
    function safeTransfer(address token, address to, uint256 amount) internal {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x14, to) // Store the `to` argument.
            mstore(0x34, amount) // Store the `amount` argument.
            mstore(0x00, 0xa9059cbb000000000000000000000000) // `transfer(address,uint256)`.
            // Perform the transfer, reverting upon failure.
            let success := call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                    mstore(0x00, 0x90b8ec18) // `TransferFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            mstore(0x34, 0) // Restore the part of the free memory pointer that was overwritten.
        }
    }

    /// @dev Sends all of ERC20 `token` from the current contract to `to`.
    /// Reverts upon failure.
    function safeTransferAll(address token, address to) internal returns (uint256 amount) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, 0x70a08231) // Store the function selector of `balanceOf(address)`.
            mstore(0x20, address()) // Store the address of the current contract.
            // Read the balance, reverting upon failure.
            if iszero(
                and( // The arguments of `and` are evaluated from right to left.
                    gt(returndatasize(), 0x1f), // At least 32 bytes returned.
                    staticcall(gas(), token, 0x1c, 0x24, 0x34, 0x20)
                )
            ) {
                mstore(0x00, 0x90b8ec18) // `TransferFailed()`.
                revert(0x1c, 0x04)
            }
            mstore(0x14, to) // Store the `to` argument.
            amount := mload(0x34) // The `amount` is already at 0x34. We'll need to return it.
            mstore(0x00, 0xa9059cbb000000000000000000000000) // `transfer(address,uint256)`.
            // Perform the transfer, reverting upon failure.
            let success := call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                    mstore(0x00, 0x90b8ec18) // `TransferFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            mstore(0x34, 0) // Restore the part of the free memory pointer that was overwritten.
        }
    }

    /// @dev Sets `amount` of ERC20 `token` for `to` to manage on behalf of the current contract.
    /// Reverts upon failure.
    function safeApprove(address token, address to, uint256 amount) internal {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x14, to) // Store the `to` argument.
            mstore(0x34, amount) // Store the `amount` argument.
            mstore(0x00, 0x095ea7b3000000000000000000000000) // `approve(address,uint256)`.
            let success := call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                    mstore(0x00, 0x3e3f8f73) // `ApproveFailed()`.
                    revert(0x1c, 0x04)
                }
            }
            mstore(0x34, 0) // Restore the part of the free memory pointer that was overwritten.
        }
    }

    /// @dev Sets `amount` of ERC20 `token` for `to` to manage on behalf of the current contract.
    /// If the initial attempt to approve fails, attempts to reset the approved amount to zero,
    /// then retries the approval again (some tokens, e.g. USDT, requires this).
    /// Reverts upon failure.
    function safeApproveWithRetry(address token, address to, uint256 amount) internal {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x14, to) // Store the `to` argument.
            mstore(0x34, amount) // Store the `amount` argument.
            mstore(0x00, 0x095ea7b3000000000000000000000000) // `approve(address,uint256)`.
            // Perform the approval, retrying upon failure.
            let success := call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
            if iszero(and(eq(mload(0x00), 1), success)) {
                if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                    mstore(0x34, 0) // Store 0 for the `amount`.
                    mstore(0x00, 0x095ea7b3000000000000000000000000) // `approve(address,uint256)`.
                    pop(call(gas(), token, 0, 0x10, 0x44, codesize(), 0x00)) // Reset the approval.
                    mstore(0x34, amount) // Store back the original `amount`.
                    // Retry the approval, reverting upon failure.
                    success := call(gas(), token, 0, 0x10, 0x44, 0x00, 0x20)
                    if iszero(and(eq(mload(0x00), 1), success)) {
                        // Check the `extcodesize` again just in case the token selfdestructs lol.
                        if iszero(lt(or(iszero(extcodesize(token)), returndatasize()), success)) {
                            mstore(0x00, 0x3e3f8f73) // `ApproveFailed()`.
                            revert(0x1c, 0x04)
                        }
                    }
                }
            }
            mstore(0x34, 0) // Restore the part of the free memory pointer that was overwritten.
        }
    }

    /// @dev Returns the amount of ERC20 `token` owned by `account`.
    /// Returns zero if the `token` does not exist.
    function balanceOf(address token, address account) internal view returns (uint256 amount) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x14, account) // Store the `account` argument.
            mstore(0x00, 0x70a08231000000000000000000000000) // `balanceOf(address)`.
            amount :=
                mul( // The arguments of `mul` are evaluated from right to left.
                    mload(0x20),
                    and( // The arguments of `and` are evaluated from right to left.
                        gt(returndatasize(), 0x1f), // At least 32 bytes returned.
                        staticcall(gas(), token, 0x10, 0x24, 0x20, 0x20)
                    )
                )
        }
    }

    /// @dev Returns the total supply of the `token`.
    /// Reverts if the token does not exist or does not implement `totalSupply()`.
    function totalSupply(address token) internal view returns (uint256 result) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, 0x18160ddd) // `totalSupply()`.
            if iszero(
                and(gt(returndatasize(), 0x1f), staticcall(gas(), token, 0x1c, 0x04, 0x00, 0x20))
            ) {
                mstore(0x00, 0x54cd9435) // `TotalSupplyQueryFailed()`.
                revert(0x1c, 0x04)
            }
            result := mload(0x00)
        }
    }

    /// @dev Sends `amount` of ERC20 `token` from `from` to `to`.
    /// If the initial attempt fails, try to use Permit2 to transfer the token.
    /// Reverts upon failure.
    ///
    /// The `from` account must have at least `amount` approved for the current contract to manage.
    function safeTransferFrom2(address token, address from, address to, uint256 amount) internal {
        if (!trySafeTransferFrom(token, from, to, amount)) {
            permit2TransferFrom(token, from, to, amount);
        }
    }

    /// @dev Sends `amount` of ERC20 `token` from `from` to `to` via Permit2.
    /// Reverts upon failure.
    function permit2TransferFrom(address token, address from, address to, uint256 amount)
        internal
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            mstore(add(m, 0x74), shr(96, shl(96, token)))
            mstore(add(m, 0x54), amount)
            mstore(add(m, 0x34), to)
            mstore(add(m, 0x20), shl(96, from))
            // `transferFrom(address,address,uint160,address)`.
            mstore(m, 0x36c78516000000000000000000000000)
            let p := PERMIT2
            let exists := eq(chainid(), 1)
            if iszero(exists) { exists := iszero(iszero(extcodesize(p))) }
            if iszero(
                and(
                    call(gas(), p, 0, add(m, 0x10), 0x84, codesize(), 0x00),
                    lt(iszero(extcodesize(token)), exists) // Token has code and Permit2 exists.
                )
            ) {
                mstore(0x00, 0x7939f4248757f0fd) // `TransferFromFailed()` or `Permit2AmountOverflow()`.
                revert(add(0x18, shl(2, iszero(iszero(shr(160, amount))))), 0x04)
            }
        }
    }

    /// @dev Permit a user to spend a given amount of
    /// another user's tokens via native EIP-2612 permit if possible, falling
    /// back to Permit2 if native permit fails or is not implemented on the token.
    function permit2(
        address token,
        address owner,
        address spender,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        bool success;
        /// @solidity memory-safe-assembly
        assembly {
            for {} shl(96, xor(token, WETH9)) {} {
                mstore(0x00, 0x3644e515) // `DOMAIN_SEPARATOR()`.
                if iszero(
                    and( // The arguments of `and` are evaluated from right to left.
                        lt(iszero(mload(0x00)), eq(returndatasize(), 0x20)), // Returns 1 non-zero word.
                        // Gas stipend to limit gas burn for tokens that don't refund gas when
                        // an non-existing function is called. 5K should be enough for a SLOAD.
                        staticcall(5000, token, 0x1c, 0x04, 0x00, 0x20)
                    )
                ) { break }
                // After here, we can be sure that token is a contract.
                let m := mload(0x40)
                mstore(add(m, 0x34), spender)
                mstore(add(m, 0x20), shl(96, owner))
                mstore(add(m, 0x74), deadline)
                if eq(mload(0x00), DAI_DOMAIN_SEPARATOR) {
                    mstore(0x14, owner)
                    mstore(0x00, 0x7ecebe00000000000000000000000000) // `nonces(address)`.
                    mstore(
                        add(m, 0x94),
                        lt(iszero(amount), staticcall(gas(), token, 0x10, 0x24, add(m, 0x54), 0x20))
                    )
                    mstore(m, 0x8fcbaf0c000000000000000000000000) // `IDAIPermit.permit`.
                    // `nonces` is already at `add(m, 0x54)`.
                    // `amount != 0` is already stored at `add(m, 0x94)`.
                    mstore(add(m, 0xb4), and(0xff, v))
                    mstore(add(m, 0xd4), r)
                    mstore(add(m, 0xf4), s)
                    success := call(gas(), token, 0, add(m, 0x10), 0x104, codesize(), 0x00)
                    break
                }
                mstore(m, 0xd505accf000000000000000000000000) // `IERC20Permit.permit`.
                mstore(add(m, 0x54), amount)
                mstore(add(m, 0x94), and(0xff, v))
                mstore(add(m, 0xb4), r)
                mstore(add(m, 0xd4), s)
                success := call(gas(), token, 0, add(m, 0x10), 0xe4, codesize(), 0x00)
                break
            }
        }
        if (!success) simplePermit2(token, owner, spender, amount, deadline, v, r, s);
    }

    /// @dev Simple permit on the Permit2 contract.
    function simplePermit2(
        address token,
        address owner,
        address spender,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            mstore(m, 0x927da105) // `allowance(address,address,address)`.
            {
                let addressMask := shr(96, not(0))
                mstore(add(m, 0x20), and(addressMask, owner))
                mstore(add(m, 0x40), and(addressMask, token))
                mstore(add(m, 0x60), and(addressMask, spender))
                mstore(add(m, 0xc0), and(addressMask, spender))
            }
            let p := mul(PERMIT2, iszero(shr(160, amount)))
            if iszero(
                and( // The arguments of `and` are evaluated from right to left.
                    gt(returndatasize(), 0x5f), // Returns 3 words: `amount`, `expiration`, `nonce`.
                    staticcall(gas(), p, add(m, 0x1c), 0x64, add(m, 0x60), 0x60)
                )
            ) {
                mstore(0x00, 0x6b836e6b8757f0fd) // `Permit2Failed()` or `Permit2AmountOverflow()`.
                revert(add(0x18, shl(2, iszero(p))), 0x04)
            }
            mstore(m, 0x2b67b570) // `Permit2.permit` (PermitSingle variant).
            // `owner` is already `add(m, 0x20)`.
            // `token` is already at `add(m, 0x40)`.
            mstore(add(m, 0x60), amount)
            mstore(add(m, 0x80), 0xffffffffffff) // `expiration = type(uint48).max`.
            // `nonce` is already at `add(m, 0xa0)`.
            // `spender` is already at `add(m, 0xc0)`.
            mstore(add(m, 0xe0), deadline)
            mstore(add(m, 0x100), 0x100) // `signature` offset.
            mstore(add(m, 0x120), 0x41) // `signature` length.
            mstore(add(m, 0x140), r)
            mstore(add(m, 0x160), s)
            mstore(add(m, 0x180), shl(248, v))
            if iszero( // Revert if token does not have code, or if the call fails.
            mul(extcodesize(token), call(gas(), p, 0, add(m, 0x1c), 0x184, codesize(), 0x00))) {
                mstore(0x00, 0x6b836e6b) // `Permit2Failed()`.
                revert(0x1c, 0x04)
            }
        }
    }

    /// @dev Approves `spender` to spend `amount` of `token` for `address(this)`.
    function permit2Approve(address token, address spender, uint160 amount, uint48 expiration)
        internal
    {
        /// @solidity memory-safe-assembly
        assembly {
            let addressMask := shr(96, not(0))
            let m := mload(0x40)
            mstore(m, 0x87517c45) // `approve(address,address,uint160,uint48)`.
            mstore(add(m, 0x20), and(addressMask, token))
            mstore(add(m, 0x40), and(addressMask, spender))
            mstore(add(m, 0x60), and(addressMask, amount))
            mstore(add(m, 0x80), and(0xffffffffffff, expiration))
            if iszero(call(gas(), PERMIT2, 0, add(m, 0x1c), 0xa0, codesize(), 0x00)) {
                mstore(0x00, 0x324f14ae) // `Permit2ApproveFailed()`.
                revert(0x1c, 0x04)
            }
        }
    }

    /// @dev Revokes an approval for `token` and `spender` for `address(this)`.
    function permit2Lockdown(address token, address spender) internal {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            mstore(m, 0xcc53287f) // `Permit2.lockdown`.
            mstore(add(m, 0x20), 0x20) // Offset of the `approvals`.
            mstore(add(m, 0x40), 1) // `approvals.length`.
            mstore(add(m, 0x60), shr(96, shl(96, token)))
            mstore(add(m, 0x80), shr(96, shl(96, spender)))
            if iszero(call(gas(), PERMIT2, 0, add(m, 0x1c), 0xa0, codesize(), 0x00)) {
                mstore(0x00, 0x96b3de23) // `Permit2LockdownFailed()`.
                revert(0x1c, 0x04)
            }
        }
    }
}

// ============================================================
// FILE: lib/solady/src/utils/SignatureCheckerLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Signature verification helper that supports both ECDSA signatures from EOAs
/// and ERC1271 signatures from smart contract wallets like Argent and Gnosis safe.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/SignatureCheckerLib.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/cryptography/SignatureChecker.sol)
///
/// @dev Note:
/// - The signature checking functions use the ecrecover precompile (0x1).
/// - The `bytes memory signature` variants use the identity precompile (0x4)
///   to copy memory internally.
/// - Unlike ECDSA signatures, contract signatures are revocable.
/// - As of Solady version 0.0.134, all `bytes signature` variants accept both
///   regular 65-byte `(r, s, v)` and EIP-2098 `(r, vs)` short form signatures.
///   See: https://eips.ethereum.org/EIPS/eip-2098
///   This is for calldata efficiency on smart accounts prevalent on L2s.
///
/// WARNING! Do NOT use signatures as unique identifiers:
/// - Use a nonce in the digest to prevent replay attacks on the same contract.
/// - Use EIP-712 for the digest to prevent replay attacks across different chains and contracts.
///   EIP-712 also enables readable signing of typed data for better user safety.
/// This implementation does NOT check if a signature is non-malleable.
library SignatureCheckerLib {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*               SIGNATURE CHECKING OPERATIONS                */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns whether `signature` is valid for `signer` and `hash`.
    /// If `signer.code.length == 0`, then validate with `ecrecover`, else
    /// it will validate with ERC1271 on `signer`.
    function isValidSignatureNow(address signer, bytes32 hash, bytes memory signature)
        internal
        view
        returns (bool isValid)
    {
        if (signer == address(0)) return isValid;
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            for {} 1 {} {
                if iszero(extcodesize(signer)) {
                    switch mload(signature)
                    case 64 {
                        let vs := mload(add(signature, 0x40))
                        mstore(0x20, add(shr(255, vs), 27)) // `v`.
                        mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    }
                    case 65 {
                        mstore(0x20, byte(0, mload(add(signature, 0x60)))) // `v`.
                        mstore(0x60, mload(add(signature, 0x40))) // `s`.
                    }
                    default { break }
                    mstore(0x00, hash)
                    mstore(0x40, mload(add(signature, 0x20))) // `r`.
                    let recovered := mload(staticcall(gas(), 1, 0x00, 0x80, 0x01, 0x20))
                    isValid := gt(returndatasize(), shl(96, xor(signer, recovered)))
                    mstore(0x60, 0) // Restore the zero slot.
                    mstore(0x40, m) // Restore the free memory pointer.
                    break
                }
                let f := shl(224, 0x1626ba7e)
                mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
                mstore(add(m, 0x04), hash)
                let d := add(m, 0x24)
                mstore(d, 0x40) // The offset of the `signature` in the calldata.
                // Copy the `signature` over.
                let n := add(0x20, mload(signature))
                let copied := staticcall(gas(), 4, signature, n, add(m, 0x44), n)
                isValid := staticcall(gas(), signer, m, add(returndatasize(), 0x44), d, 0x20)
                isValid := and(eq(mload(d), f), and(isValid, copied))
                break
            }
        }
    }

    /// @dev Returns whether `signature` is valid for `signer` and `hash`.
    /// If `signer.code.length == 0`, then validate with `ecrecover`, else
    /// it will validate with ERC1271 on `signer`.
    function isValidSignatureNowCalldata(address signer, bytes32 hash, bytes calldata signature)
        internal
        view
        returns (bool isValid)
    {
        if (signer == address(0)) return isValid;
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            for {} 1 {} {
                if iszero(extcodesize(signer)) {
                    switch signature.length
                    case 64 {
                        let vs := calldataload(add(signature.offset, 0x20))
                        mstore(0x20, add(shr(255, vs), 27)) // `v`.
                        mstore(0x40, calldataload(signature.offset)) // `r`.
                        mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    }
                    case 65 {
                        mstore(0x20, byte(0, calldataload(add(signature.offset, 0x40)))) // `v`.
                        calldatacopy(0x40, signature.offset, 0x40) // `r`, `s`.
                    }
                    default { break }
                    mstore(0x00, hash)
                    let recovered := mload(staticcall(gas(), 1, 0x00, 0x80, 0x01, 0x20))
                    isValid := gt(returndatasize(), shl(96, xor(signer, recovered)))
                    mstore(0x60, 0) // Restore the zero slot.
                    mstore(0x40, m) // Restore the free memory pointer.
                    break
                }
                let f := shl(224, 0x1626ba7e)
                mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
                mstore(add(m, 0x04), hash)
                let d := add(m, 0x24)
                mstore(d, 0x40) // The offset of the `signature` in the calldata.
                mstore(add(m, 0x44), signature.length)
                // Copy the `signature` over.
                calldatacopy(add(m, 0x64), signature.offset, signature.length)
                isValid := staticcall(gas(), signer, m, add(signature.length, 0x64), d, 0x20)
                isValid := and(eq(mload(d), f), isValid)
                break
            }
        }
    }

    /// @dev Returns whether the signature (`r`, `vs`) is valid for `signer` and `hash`.
    /// If `signer.code.length == 0`, then validate with `ecrecover`, else
    /// it will validate with ERC1271 on `signer`.
    function isValidSignatureNow(address signer, bytes32 hash, bytes32 r, bytes32 vs)
        internal
        view
        returns (bool isValid)
    {
        if (signer == address(0)) return isValid;
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            for {} 1 {} {
                if iszero(extcodesize(signer)) {
                    mstore(0x00, hash)
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x40, r) // `r`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                    let recovered := mload(staticcall(gas(), 1, 0x00, 0x80, 0x01, 0x20))
                    isValid := gt(returndatasize(), shl(96, xor(signer, recovered)))
                    mstore(0x60, 0) // Restore the zero slot.
                    mstore(0x40, m) // Restore the free memory pointer.
                    break
                }
                let f := shl(224, 0x1626ba7e)
                mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
                mstore(add(m, 0x04), hash)
                let d := add(m, 0x24)
                mstore(d, 0x40) // The offset of the `signature` in the calldata.
                mstore(add(m, 0x44), 65) // Length of the signature.
                mstore(add(m, 0x64), r) // `r`.
                mstore(add(m, 0x84), shr(1, shl(1, vs))) // `s`.
                mstore8(add(m, 0xa4), add(shr(255, vs), 27)) // `v`.
                isValid := staticcall(gas(), signer, m, 0xa5, d, 0x20)
                isValid := and(eq(mload(d), f), isValid)
                break
            }
        }
    }

    /// @dev Returns whether the signature (`v`, `r`, `s`) is valid for `signer` and `hash`.
    /// If `signer.code.length == 0`, then validate with `ecrecover`, else
    /// it will validate with ERC1271 on `signer`.
    function isValidSignatureNow(address signer, bytes32 hash, uint8 v, bytes32 r, bytes32 s)
        internal
        view
        returns (bool isValid)
    {
        if (signer == address(0)) return isValid;
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            for {} 1 {} {
                if iszero(extcodesize(signer)) {
                    mstore(0x00, hash)
                    mstore(0x20, and(v, 0xff)) // `v`.
                    mstore(0x40, r) // `r`.
                    mstore(0x60, s) // `s`.
                    let recovered := mload(staticcall(gas(), 1, 0x00, 0x80, 0x01, 0x20))
                    isValid := gt(returndatasize(), shl(96, xor(signer, recovered)))
                    mstore(0x60, 0) // Restore the zero slot.
                    mstore(0x40, m) // Restore the free memory pointer.
                    break
                }
                let f := shl(224, 0x1626ba7e)
                mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
                mstore(add(m, 0x04), hash)
                let d := add(m, 0x24)
                mstore(d, 0x40) // The offset of the `signature` in the calldata.
                mstore(add(m, 0x44), 65) // Length of the signature.
                mstore(add(m, 0x64), r) // `r`.
                mstore(add(m, 0x84), s) // `s`.
                mstore8(add(m, 0xa4), v) // `v`.
                isValid := staticcall(gas(), signer, m, 0xa5, d, 0x20)
                isValid := and(eq(mload(d), f), isValid)
                break
            }
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     ERC1271 OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // Note: These ERC1271 operations do NOT have an ECDSA fallback.

    /// @dev Returns whether `signature` is valid for `hash` for an ERC1271 `signer` contract.
    function isValidERC1271SignatureNow(address signer, bytes32 hash, bytes memory signature)
        internal
        view
        returns (bool isValid)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            let f := shl(224, 0x1626ba7e)
            mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
            mstore(add(m, 0x04), hash)
            let d := add(m, 0x24)
            mstore(d, 0x40) // The offset of the `signature` in the calldata.
            // Copy the `signature` over.
            let n := add(0x20, mload(signature))
            let copied := staticcall(gas(), 4, signature, n, add(m, 0x44), n)
            isValid := staticcall(gas(), signer, m, add(returndatasize(), 0x44), d, 0x20)
            isValid := and(eq(mload(d), f), and(isValid, copied))
        }
    }

    /// @dev Returns whether `signature` is valid for `hash` for an ERC1271 `signer` contract.
    function isValidERC1271SignatureNowCalldata(
        address signer,
        bytes32 hash,
        bytes calldata signature
    ) internal view returns (bool isValid) {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            let f := shl(224, 0x1626ba7e)
            mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
            mstore(add(m, 0x04), hash)
            let d := add(m, 0x24)
            mstore(d, 0x40) // The offset of the `signature` in the calldata.
            mstore(add(m, 0x44), signature.length)
            // Copy the `signature` over.
            calldatacopy(add(m, 0x64), signature.offset, signature.length)
            isValid := staticcall(gas(), signer, m, add(signature.length, 0x64), d, 0x20)
            isValid := and(eq(mload(d), f), isValid)
        }
    }

    /// @dev Returns whether the signature (`r`, `vs`) is valid for `hash`
    /// for an ERC1271 `signer` contract.
    function isValidERC1271SignatureNow(address signer, bytes32 hash, bytes32 r, bytes32 vs)
        internal
        view
        returns (bool isValid)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            let f := shl(224, 0x1626ba7e)
            mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
            mstore(add(m, 0x04), hash)
            let d := add(m, 0x24)
            mstore(d, 0x40) // The offset of the `signature` in the calldata.
            mstore(add(m, 0x44), 65) // Length of the signature.
            mstore(add(m, 0x64), r) // `r`.
            mstore(add(m, 0x84), shr(1, shl(1, vs))) // `s`.
            mstore8(add(m, 0xa4), add(shr(255, vs), 27)) // `v`.
            isValid := staticcall(gas(), signer, m, 0xa5, d, 0x20)
            isValid := and(eq(mload(d), f), isValid)
        }
    }

    /// @dev Returns whether the signature (`v`, `r`, `s`) is valid for `hash`
    /// for an ERC1271 `signer` contract.
    function isValidERC1271SignatureNow(address signer, bytes32 hash, uint8 v, bytes32 r, bytes32 s)
        internal
        view
        returns (bool isValid)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let m := mload(0x40)
            let f := shl(224, 0x1626ba7e)
            mstore(m, f) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
            mstore(add(m, 0x04), hash)
            let d := add(m, 0x24)
            mstore(d, 0x40) // The offset of the `signature` in the calldata.
            mstore(add(m, 0x44), 65) // Length of the signature.
            mstore(add(m, 0x64), r) // `r`.
            mstore(add(m, 0x84), s) // `s`.
            mstore8(add(m, 0xa4), v) // `v`.
            isValid := staticcall(gas(), signer, m, 0xa5, d, 0x20)
            isValid := and(eq(mload(d), f), isValid)
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     ERC6492 OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // Note: These ERC6492 operations now include an ECDSA fallback at the very end.
    // The calldata variants are excluded for brevity.

    /// @dev Returns whether `signature` is valid for `hash`.
    /// If the signature is postfixed with the ERC6492 magic number, it will attempt to
    /// deploy / prepare the `signer` smart account before doing a regular ERC1271 check.
    /// Note: This function is NOT reentrancy safe.
    /// The verifier must be deployed.
    /// Otherwise, the function will return false if `signer` is not yet deployed / prepared.
    /// See: https://gist.github.com/Vectorized/011d6becff6e0a73e42fe100f8d7ef04
    /// With a dedicated verifier, this function is safe to use in contracts
    /// that have been granted special permissions.
    function isValidERC6492SignatureNowAllowSideEffects(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal returns (bool isValid) {
        /// @solidity memory-safe-assembly
        assembly {
            function callIsValidSignature(signer_, hash_, signature_) -> _isValid {
                let m_ := mload(0x40)
                let f_ := shl(224, 0x1626ba7e)
                mstore(m_, f_) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
                mstore(add(m_, 0x04), hash_)
                let d_ := add(m_, 0x24)
                mstore(d_, 0x40) // The offset of the `signature` in the calldata.
                let n_ := add(0x20, mload(signature_))
                let copied_ := staticcall(gas(), 4, signature_, n_, add(m_, 0x44), n_)
                _isValid := staticcall(gas(), signer_, m_, add(returndatasize(), 0x44), d_, 0x20)
                _isValid := and(eq(mload(d_), f_), and(_isValid, copied_))
            }
            let noCode := iszero(extcodesize(signer))
            let n := mload(signature)
            for {} 1 {} {
                if iszero(eq(mload(add(signature, n)), mul(0x6492, div(not(isValid), 0xffff)))) {
                    if iszero(noCode) { isValid := callIsValidSignature(signer, hash, signature) }
                    break
                }
                if iszero(noCode) {
                    let o := add(signature, 0x20) // Signature bytes.
                    isValid := callIsValidSignature(signer, hash, add(o, mload(add(o, 0x40))))
                    if isValid { break }
                }
                let m := mload(0x40)
                mstore(m, signer)
                mstore(add(m, 0x20), hash)
                pop(
                    call(
                        gas(), // Remaining gas.
                        0x0000bc370E4DC924F427d84e2f4B9Ec81626ba7E, // Non-reverting verifier.
                        0, // Send zero ETH.
                        m, // Start of memory.
                        add(returndatasize(), 0x40), // Length of calldata in memory.
                        staticcall(gas(), 4, add(signature, 0x20), n, add(m, 0x40), n), // 1.
                        0x00 // Length of returndata to write.
                    )
                )
                isValid := returndatasize()
                break
            }
            // Do `ecrecover` fallback if `noCode && !isValid`.
            for {} gt(noCode, isValid) {} {
                switch n
                case 64 {
                    let vs := mload(add(signature, 0x40))
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                }
                case 65 {
                    mstore(0x20, byte(0, mload(add(signature, 0x60)))) // `v`.
                    mstore(0x60, mload(add(signature, 0x40))) // `s`.
                }
                default { break }
                let m := mload(0x40)
                mstore(0x00, hash)
                mstore(0x40, mload(add(signature, 0x20))) // `r`.
                let recovered := mload(staticcall(gas(), 1, 0x00, 0x80, 0x01, 0x20))
                isValid := gt(returndatasize(), shl(96, xor(signer, recovered)))
                mstore(0x60, 0) // Restore the zero slot.
                mstore(0x40, m) // Restore the free memory pointer.
                break
            }
        }
    }

    /// @dev Returns whether `signature` is valid for `hash`.
    /// If the signature is postfixed with the ERC6492 magic number, it will attempt
    /// to use a reverting verifier to deploy / prepare the `signer` smart account
    /// and do a `isValidSignature` check via the reverting verifier.
    /// Note: This function is reentrancy safe.
    /// The reverting verifier must be deployed.
    /// Otherwise, the function will return false if `signer` is not yet deployed / prepared.
    /// See: https://gist.github.com/Vectorized/846a474c855eee9e441506676800a9ad
    function isValidERC6492SignatureNow(address signer, bytes32 hash, bytes memory signature)
        internal
        returns (bool isValid)
    {
        /// @solidity memory-safe-assembly
        assembly {
            function callIsValidSignature(signer_, hash_, signature_) -> _isValid {
                let m_ := mload(0x40)
                let f_ := shl(224, 0x1626ba7e)
                mstore(m_, f_) // `bytes4(keccak256("isValidSignature(bytes32,bytes)"))`.
                mstore(add(m_, 0x04), hash_)
                let d_ := add(m_, 0x24)
                mstore(d_, 0x40) // The offset of the `signature` in the calldata.
                let n_ := add(0x20, mload(signature_))
                let copied_ := staticcall(gas(), 4, signature_, n_, add(m_, 0x44), n_)
                _isValid := staticcall(gas(), signer_, m_, add(returndatasize(), 0x44), d_, 0x20)
                _isValid := and(eq(mload(d_), f_), and(_isValid, copied_))
            }
            let noCode := iszero(extcodesize(signer))
            let n := mload(signature)
            for {} 1 {} {
                if iszero(eq(mload(add(signature, n)), mul(0x6492, div(not(isValid), 0xffff)))) {
                    if iszero(noCode) { isValid := callIsValidSignature(signer, hash, signature) }
                    break
                }
                if iszero(noCode) {
                    let o := add(signature, 0x20) // Signature bytes.
                    isValid := callIsValidSignature(signer, hash, add(o, mload(add(o, 0x40))))
                    if isValid { break }
                }
                let m := mload(0x40)
                mstore(m, signer)
                mstore(add(m, 0x20), hash)
                let willBeZeroIfRevertingVerifierExists :=
                    call(
                        gas(), // Remaining gas.
                        0x00007bd799e4A591FeA53f8A8a3E9f931626Ba7e, // Reverting verifier.
                        0, // Send zero ETH.
                        m, // Start of memory.
                        add(returndatasize(), 0x40), // Length of calldata in memory.
                        staticcall(gas(), 4, add(signature, 0x20), n, add(m, 0x40), n), // 1.
                        0x00 // Length of returndata to write.
                    )
                isValid := gt(returndatasize(), willBeZeroIfRevertingVerifierExists)
                break
            }
            // Do `ecrecover` fallback if `noCode && !isValid`.
            for {} gt(noCode, isValid) {} {
                switch n
                case 64 {
                    let vs := mload(add(signature, 0x40))
                    mstore(0x20, add(shr(255, vs), 27)) // `v`.
                    mstore(0x60, shr(1, shl(1, vs))) // `s`.
                }
                case 65 {
                    mstore(0x20, byte(0, mload(add(signature, 0x60)))) // `v`.
                    mstore(0x60, mload(add(signature, 0x40))) // `s`.
                }
                default { break }
                let m := mload(0x40)
                mstore(0x00, hash)
                mstore(0x40, mload(add(signature, 0x20))) // `r`.
                let recovered := mload(staticcall(gas(), 1, 0x00, 0x80, 0x01, 0x20))
                isValid := gt(returndatasize(), shl(96, xor(signer, recovered)))
                mstore(0x60, 0) // Restore the zero slot.
                mstore(0x40, m) // Restore the free memory pointer.
                break
            }
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     HASHING OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns an Ethereum Signed Message, created from a `hash`.
    /// This produces a hash corresponding to the one signed with the
    /// [`eth_sign`](https://eth.wiki/json-rpc/API#eth_sign)
    /// JSON-RPC method as part of EIP-191.
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x20, hash) // Store into scratch space for keccak256.
            mstore(0x00, "\x00\x00\x00\x00\x19Ethereum Signed Message:\n32") // 28 bytes.
            result := keccak256(0x04, 0x3c) // `32 * 2 - (32 - 28) = 60 = 0x3c`.
        }
    }

    /// @dev Returns an Ethereum Signed Message, created from `s`.
    /// This produces a hash corresponding to the one signed with the
    /// [`eth_sign`](https://eth.wiki/json-rpc/API#eth_sign)
    /// JSON-RPC method as part of EIP-191.
    /// Note: Supports lengths of `s` up to 999999 bytes.
    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            let sLength := mload(s)
            let o := 0x20
            mstore(o, "\x19Ethereum Signed Message:\n") // 26 bytes, zero-right-padded.
            mstore(0x00, 0x00)
            // Convert the `s.length` to ASCII decimal representation: `base10(s.length)`.
            for { let temp := sLength } 1 {} {
                o := sub(o, 1)
                mstore8(o, add(48, mod(temp, 10)))
                temp := div(temp, 10)
                if iszero(temp) { break }
            }
            let n := sub(0x3a, o) // Header length: `26 + 32 - o`.
            // Throw an out-of-offset error (consumes all gas) if the header exceeds 32 bytes.
            returndatacopy(returndatasize(), returndatasize(), gt(n, 0x20))
            mstore(s, or(mload(0x00), mload(n))) // Temporarily store the header.
            result := keccak256(add(s, sub(0x20, n)), add(n, sLength))
            mstore(s, sLength) // Restore the length.
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   EMPTY CALLDATA HELPERS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns an empty calldata bytes.
    function emptySignature() internal pure returns (bytes calldata signature) {
        /// @solidity memory-safe-assembly
        assembly {
            signature.length := 0
        }
    }
}

// ============================================================
// FILE: lib/super-sol/src/libraries/SignedUnsignedLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author philogy <https://github.com/philogy>
library SignedUnsignedLib {
    error Overflow();
    error Underflow();

    function signed(uint256 x) internal pure returns (int256) {
        if (x > uint256(type(int256).max)) revert Overflow();
        return int256(x);
    }

    function neg(uint256 x) internal pure returns (int256) {
        if (x > (1 << 255)) revert Overflow();
        unchecked {
            return int256(0 - x);
        }
    }

    function unsigned(int256 x) internal pure returns (uint256) {
        if (x < 0) revert Underflow();
        return uint256(x);
    }

    function neg(int256 x) internal pure returns (uint256) {
        if (x > 0) revert Underflow();
        unchecked {
            return uint256(-x);
        }
    }
}

// ============================================================
// FILE: lib/transient-goodies/src/TransientPrimitives.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @author philogy <https://github.com/philogy>

struct tuint256 {
    uint256 __placeholder;
}

struct tint256 {
    uint256 __placeholder;
}

struct tbytes32 {
    uint256 __placeholder;
}

struct taddress {
    uint256 __placeholder;
}

using TransientPrimitivesLib for tuint256 global;
using TransientPrimitivesLib for tint256 global;
using TransientPrimitivesLib for tbytes32 global;
using TransientPrimitivesLib for taddress global;

library TransientPrimitivesLib {
    error ArithmeticOverflowUnderflow();

    function get(tuint256 storage ptr) internal view returns (uint256 value) {
        /// @solidity memory-safe-assembly
        assembly {
            value := tload(ptr.slot)
        }
    }

    function get(tint256 storage ptr) internal view returns (int256 value) {
        /// @solidity memory-safe-assembly
        assembly {
            value := tload(ptr.slot)
        }
    }

    function get(tbytes32 storage ptr) internal view returns (bytes32 value) {
        /// @solidity memory-safe-assembly
        assembly {
            value := tload(ptr.slot)
        }
    }

    function get(taddress storage ptr) internal view returns (address value) {
        /// @solidity memory-safe-assembly
        assembly {
            value := tload(ptr.slot)
        }
    }

    function set(tuint256 storage ptr, uint256 value) internal {
        /// @solidity memory-safe-assembly
        assembly {
            tstore(ptr.slot, value)
        }
    }

    function inc(tuint256 storage ptr, uint256 change) internal returns (uint256 newValue) {
        ptr.set(newValue = ptr.get() + change);
    }

    function dec(tuint256 storage ptr, uint256 change) internal returns (uint256 newValue) {
        ptr.set(newValue = ptr.get() - change);
    }

    function inc(tuint256 storage ptr, int256 change) internal returns (uint256 newValue) {
        uint256 currentValue = ptr.get();
        assembly ("memory-safe") {
            newValue := add(currentValue, change)
            if iszero(eq(lt(newValue, currentValue), slt(change, 0))) {
                mstore(0x00, 0xc9654ed4 /* ArithmeticOverflowUnderflow() */ )
                revert(0x1c, 0x04)
            }
        }
        ptr.set(newValue);
    }

    function dec(tuint256 storage ptr, int256 change) internal returns (uint256 newValue) {
        uint256 currentValue = ptr.get();
        assembly ("memory-safe") {
            newValue := sub(currentValue, change)
            if iszero(eq(lt(newValue, currentValue), sgt(change, 0))) {
                mstore(0x00, 0xc9654ed4 /* ArithmeticOverflowUnderflow() */ )
                revert(0x1c, 0x04)
            }
        }
        ptr.set(newValue);
    }

    function set(tint256 storage ptr, int256 value) internal {
        /// @solidity memory-safe-assembly
        assembly {
            tstore(ptr.slot, value)
        }
    }

    function inc(tint256 storage ptr, int256 change) internal returns (int256 newValue) {
        ptr.set(newValue = ptr.get() + change);
    }

    function dec(tint256 storage ptr, int256 change) internal returns (int256 newValue) {
        ptr.set(newValue = ptr.get() - change);
    }

    function set(tbytes32 storage ptr, bytes32 value) internal {
        /// @solidity memory-safe-assembly
        assembly {
            tstore(ptr.slot, value)
        }
    }

    function set(taddress storage ptr, address value) internal {
        /// @solidity memory-safe-assembly
        assembly {
            tstore(ptr.slot, value)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/callback/IUnlockCallback.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for the callback executed when an address unlocks the pool manager
interface IUnlockCallback {
    /// @notice Called by the pool manager on `msg.sender` when the manager is unlocked
    /// @param data The data that was passed to the call to unlock
    /// @return Any data that you want to be returned from the unlock call
    function unlockCallback(bytes calldata data) external returns (bytes memory);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/external/IERC20Minimal.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Minimal ERC20 interface for Uniswap
/// @notice Contains a subset of the full ERC20 interface that is used in Uniswap V3
interface IERC20Minimal {
    /// @notice Returns an account's balance in the token
    /// @param account The account for which to look up the number of tokens it has, i.e. its balance
    /// @return The number of tokens held by the account
    function balanceOf(address account) external view returns (uint256);

    /// @notice Transfers the amount of token from the `msg.sender` to the recipient
    /// @param recipient The account that will receive the amount transferred
    /// @param amount The number of tokens to send from the sender to the recipient
    /// @return Returns true for a successful transfer, false for an unsuccessful transfer
    function transfer(address recipient, uint256 amount) external returns (bool);

    /// @notice Returns the current allowance given to a spender by an owner
    /// @param owner The account of the token owner
    /// @param spender The account of the token spender
    /// @return The current allowance granted by `owner` to `spender`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets the allowance of a spender from the `msg.sender` to the value `amount`
    /// @param spender The account which will be allowed to spend a given amount of the owners tokens
    /// @param amount The amount of tokens allowed to be used by `spender`
    /// @return Returns true for a successful approval, false for unsuccessful
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Transfers `amount` tokens from `sender` to `recipient` up to the allowance given to the `msg.sender`
    /// @param sender The account from which the transfer will be initiated
    /// @param recipient The recipient of the transfer
    /// @param amount The amount of the transfer
    /// @return Returns true for a successful transfer, false for unsuccessful
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /// @notice Event emitted when tokens are transferred from one address to another, either via `#transfer` or `#transferFrom`.
    /// @param from The account from which the tokens were sent, i.e. the balance decreased
    /// @param to The account to which the tokens were sent, i.e. the balance increased
    /// @param value The amount of tokens that were transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Event emitted when the approval amount for the spender of a given owner's tokens changes.
    /// @param owner The account that approved spending of its tokens
    /// @param spender The account for which the spending allowance was modified
    /// @param value The new allowance from the owner to the spender
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/external/IERC6909Claims.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for claims over a contract balance, wrapped as a ERC6909
interface IERC6909Claims {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OperatorSet(address indexed owner, address indexed operator, bool approved);

    event Approval(address indexed owner, address indexed spender, uint256 indexed id, uint256 amount);

    event Transfer(address caller, address indexed from, address indexed to, uint256 indexed id, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                                 FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Owner balance of an id.
    /// @param owner The address of the owner.
    /// @param id The id of the token.
    /// @return amount The balance of the token.
    function balanceOf(address owner, uint256 id) external view returns (uint256 amount);

    /// @notice Spender allowance of an id.
    /// @param owner The address of the owner.
    /// @param spender The address of the spender.
    /// @param id The id of the token.
    /// @return amount The allowance of the token.
    function allowance(address owner, address spender, uint256 id) external view returns (uint256 amount);

    /// @notice Checks if a spender is approved by an owner as an operator
    /// @param owner The address of the owner.
    /// @param spender The address of the spender.
    /// @return approved The approval status.
    function isOperator(address owner, address spender) external view returns (bool approved);

    /// @notice Transfers an amount of an id from the caller to a receiver.
    /// @param receiver The address of the receiver.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always, unless the function reverts
    function transfer(address receiver, uint256 id, uint256 amount) external returns (bool);

    /// @notice Transfers an amount of an id from a sender to a receiver.
    /// @param sender The address of the sender.
    /// @param receiver The address of the receiver.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always, unless the function reverts
    function transferFrom(address sender, address receiver, uint256 id, uint256 amount) external returns (bool);

    /// @notice Approves an amount of an id to a spender.
    /// @param spender The address of the spender.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always
    function approve(address spender, uint256 id, uint256 amount) external returns (bool);

    /// @notice Sets or removes an operator for the caller.
    /// @param operator The address of the operator.
    /// @param approved The approval status.
    /// @return bool True, always
    function setOperator(address operator, bool approved) external returns (bool);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IExtsload.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for functions to access any storage slot in a contract
interface IExtsload {
    /// @notice Called by external contracts to access granular pool state
    /// @param slot Key of slot to sload
    /// @return value The value of the slot as bytes32
    function extsload(bytes32 slot) external view returns (bytes32 value);

    /// @notice Called by external contracts to access granular pool state
    /// @param startSlot Key of slot to start sloading from
    /// @param nSlots Number of slots to load into return value
    /// @return values List of loaded values.
    function extsload(bytes32 startSlot, uint256 nSlots) external view returns (bytes32[] memory values);

    /// @notice Called by external contracts to access sparse pool state
    /// @param slots List of slots to SLOAD from.
    /// @return values List of loaded values.
    function extsload(bytes32[] calldata slots) external view returns (bytes32[] memory values);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IExttload.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Interface for functions to access any transient storage slot in a contract
interface IExttload {
    /// @notice Called by external contracts to access transient storage of the contract
    /// @param slot Key of slot to tload
    /// @return value The value of the slot as bytes32
    function exttload(bytes32 slot) external view returns (bytes32 value);

    /// @notice Called by external contracts to access sparse transient pool state
    /// @param slots List of slots to tload
    /// @return values List of loaded values
    function exttload(bytes32[] calldata slots) external view returns (bytes32[] memory values);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IHooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {IPoolManager} from "./IPoolManager.sol";
import {BeforeSwapDelta} from "../types/BeforeSwapDelta.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
/// See the Hooks library for the full spec.
/// @dev Should only be callable by the v4 PoolManager.
interface IHooks {
    /// @notice The hook called before the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @return bytes4 The function selector for the hook
    function beforeInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96) external returns (bytes4);

    /// @notice The hook called after the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @param tick The current tick after the state of a pool is initialized
    /// @return bytes4 The function selector for the hook
    function afterInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        returns (bytes4);

    /// @notice The hook called before liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param delta The caller's balance delta after adding liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param delta The caller's balance delta after removing liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BeforeSwapDelta The hook's delta in specified and unspecified currencies. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    /// @return uint24 Optionally override the lp fee, only used if three conditions are met: 1. the Pool has a dynamic fee, 2. the value's 2nd highest bit is set (23rd bit, 0x400000), and 3. the value is less than or equal to the maximum fee (1 million)
    function beforeSwap(
        address sender,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4, BeforeSwapDelta, uint24);

    /// @notice The hook called after a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param delta The amount owed to the caller (positive) or owed to the pool (negative)
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return int128 The hook's delta in unspecified currency. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterSwap(
        address sender,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, int128);

    /// @notice The hook called before donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function afterDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IPoolManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";
import {PoolKey} from "../types/PoolKey.sol";
import {IHooks} from "./IHooks.sol";
import {IERC6909Claims} from "./external/IERC6909Claims.sol";
import {IProtocolFees} from "./IProtocolFees.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {PoolId} from "../types/PoolId.sol";
import {IExtsload} from "./IExtsload.sol";
import {IExttload} from "./IExttload.sol";

/// @notice Interface for the PoolManager
interface IPoolManager is IProtocolFees, IERC6909Claims, IExtsload, IExttload {
    /// @notice Thrown when a currency is not netted out after the contract is unlocked
    error CurrencyNotSettled();

    /// @notice Thrown when trying to interact with a non-initialized pool
    error PoolNotInitialized();

    /// @notice Thrown when unlock is called, but the contract is already unlocked
    error AlreadyUnlocked();

    /// @notice Thrown when a function is called that requires the contract to be unlocked, but it is not
    error ManagerLocked();

    /// @notice Pools are limited to type(int16).max tickSpacing in #initialize, to prevent overflow
    error TickSpacingTooLarge(int24 tickSpacing);

    /// @notice Pools must have a positive non-zero tickSpacing passed to #initialize
    error TickSpacingTooSmall(int24 tickSpacing);

    /// @notice PoolKey must have currencies where address(currency0) < address(currency1)
    error CurrenciesOutOfOrderOrEqual(address currency0, address currency1);

    /// @notice Thrown when a call to updateDynamicLPFee is made by an address that is not the hook,
    /// or on a pool that does not have a dynamic swap fee.
    error UnauthorizedDynamicLPFeeUpdate();

    /// @notice Thrown when trying to swap amount of 0
    error SwapAmountCannotBeZero();

    ///@notice Thrown when native currency is passed to a non native settlement
    error NonzeroNativeValue();

    /// @notice Thrown when `clear` is called with an amount that is not exactly equal to the open currency delta.
    error MustClearExactPositiveDelta();

    /// @notice Emitted when a new pool is initialized
    /// @param id The abi encoded hash of the pool key struct for the new pool
    /// @param currency0 The first currency of the pool by address sort order
    /// @param currency1 The second currency of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks
    /// @param hooks The hooks contract address for the pool, or address(0) if none
    /// @param sqrtPriceX96 The price of the pool on initialization
    /// @param tick The initial tick of the pool corresponding to the initialized price
    event Initialize(
        PoolId indexed id,
        Currency indexed currency0,
        Currency indexed currency1,
        uint24 fee,
        int24 tickSpacing,
        IHooks hooks,
        uint160 sqrtPriceX96,
        int24 tick
    );

    /// @notice Emitted when a liquidity position is modified
    /// @param id The abi encoded hash of the pool key struct for the pool that was modified
    /// @param sender The address that modified the pool
    /// @param tickLower The lower tick of the position
    /// @param tickUpper The upper tick of the position
    /// @param liquidityDelta The amount of liquidity that was added or removed
    /// @param salt The extra data to make positions unique
    event ModifyLiquidity(
        PoolId indexed id, address indexed sender, int24 tickLower, int24 tickUpper, int256 liquidityDelta, bytes32 salt
    );

    /// @notice Emitted for swaps between currency0 and currency1
    /// @param id The abi encoded hash of the pool key struct for the pool that was modified
    /// @param sender The address that initiated the swap call, and that received the callback
    /// @param amount0 The delta of the currency0 balance of the pool
    /// @param amount1 The delta of the currency1 balance of the pool
    /// @param sqrtPriceX96 The sqrt(price) of the pool after the swap, as a Q64.96
    /// @param liquidity The liquidity of the pool after the swap
    /// @param tick The log base 1.0001 of the price of the pool after the swap
    /// @param fee The swap fee in hundredths of a bip
    event Swap(
        PoolId indexed id,
        address indexed sender,
        int128 amount0,
        int128 amount1,
        uint160 sqrtPriceX96,
        uint128 liquidity,
        int24 tick,
        uint24 fee
    );

    /// @notice Emitted for donations
    /// @param id The abi encoded hash of the pool key struct for the pool that was donated to
    /// @param sender The address that initiated the donate call
    /// @param amount0 The amount donated in currency0
    /// @param amount1 The amount donated in currency1
    event Donate(PoolId indexed id, address indexed sender, uint256 amount0, uint256 amount1);

    /// @notice All interactions on the contract that account deltas require unlocking. A caller that calls `unlock` must implement
    /// `IUnlockCallback(msg.sender).unlockCallback(data)`, where they interact with the remaining functions on this contract.
    /// @dev The only functions callable without an unlocking are `initialize` and `updateDynamicLPFee`
    /// @param data Any data to pass to the callback, via `IUnlockCallback(msg.sender).unlockCallback(data)`
    /// @return The data returned by the call to `IUnlockCallback(msg.sender).unlockCallback(data)`
    function unlock(bytes calldata data) external returns (bytes memory);

    /// @notice Initialize the state for a given pool ID
    /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
    /// @param key The pool key for the pool to initialize
    /// @param sqrtPriceX96 The initial square root price
    /// @return tick The initial tick of the pool
    function initialize(PoolKey memory key, uint160 sqrtPriceX96) external returns (int24 tick);

    struct ModifyLiquidityParams {
        // the lower and upper tick of the position
        int24 tickLower;
        int24 tickUpper;
        // how to modify the liquidity
        int256 liquidityDelta;
        // a value to set if you want unique liquidity positions at the same range
        bytes32 salt;
    }

    /// @notice Modify the liquidity for the given pool
    /// @dev Poke by calling with a zero liquidityDelta
    /// @param key The pool to modify liquidity in
    /// @param params The parameters for modifying the liquidity
    /// @param hookData The data to pass through to the add/removeLiquidity hooks
    /// @return callerDelta The balance delta of the caller of modifyLiquidity. This is the total of both principal, fee deltas, and hook deltas if applicable
    /// @return feesAccrued The balance delta of the fees generated in the liquidity range. Returned for informational purposes
    function modifyLiquidity(PoolKey memory key, ModifyLiquidityParams memory params, bytes calldata hookData)
        external
        returns (BalanceDelta callerDelta, BalanceDelta feesAccrued);

    struct SwapParams {
        /// Whether to swap token0 for token1 or vice versa
        bool zeroForOne;
        /// The desired input amount if negative (exactIn), or the desired output amount if positive (exactOut)
        int256 amountSpecified;
        /// The sqrt price at which, if reached, the swap will stop executing
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swap against the given pool
    /// @param key The pool to swap in
    /// @param params The parameters for swapping
    /// @param hookData The data to pass through to the swap hooks
    /// @return swapDelta The balance delta of the address swapping
    /// @dev Swapping on low liquidity pools may cause unexpected swap amounts when liquidity available is less than amountSpecified.
    /// Additionally note that if interacting with hooks that have the BEFORE_SWAP_RETURNS_DELTA_FLAG or AFTER_SWAP_RETURNS_DELTA_FLAG
    /// the hook may alter the swap input/output. Integrators should perform checks on the returned swapDelta.
    function swap(PoolKey memory key, SwapParams memory params, bytes calldata hookData)
        external
        returns (BalanceDelta swapDelta);

    /// @notice Donate the given currency amounts to the in-range liquidity providers of a pool
    /// @dev Calls to donate can be frontrun adding just-in-time liquidity, with the aim of receiving a portion donated funds.
    /// Donors should keep this in mind when designing donation mechanisms.
    /// @dev This function donates to in-range LPs at slot0.tick. In certain edge-cases of the swap algorithm, the `sqrtPrice` of
    /// a pool can be at the lower boundary of tick `n`, but the `slot0.tick` of the pool is already `n - 1`. In this case a call to
    /// `donate` would donate to tick `n - 1` (slot0.tick) not tick `n` (getTickAtSqrtPrice(slot0.sqrtPriceX96)).
    /// Read the comments in `Pool.swap()` for more information about this.
    /// @param key The key of the pool to donate to
    /// @param amount0 The amount of currency0 to donate
    /// @param amount1 The amount of currency1 to donate
    /// @param hookData The data to pass through to the donate hooks
    /// @return BalanceDelta The delta of the caller after the donate
    function donate(PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        external
        returns (BalanceDelta);

    /// @notice Writes the current ERC20 balance of the specified currency to transient storage
    /// This is used to checkpoint balances for the manager and derive deltas for the caller.
    /// @dev This MUST be called before any ERC20 tokens are sent into the contract, but can be skipped
    /// for native tokens because the amount to settle is determined by the sent value.
    /// However, if an ERC20 token has been synced and not settled, and the caller instead wants to settle
    /// native funds, this function can be called with the native currency to then be able to settle the native currency
    function sync(Currency currency) external;

    /// @notice Called by the user to net out some value owed to the user
    /// @dev Will revert if the requested amount is not available, consider using `mint` instead
    /// @dev Can also be used as a mechanism for free flash loans
    /// @param currency The currency to withdraw from the pool manager
    /// @param to The address to withdraw to
    /// @param amount The amount of currency to withdraw
    function take(Currency currency, address to, uint256 amount) external;

    /// @notice Called by the user to pay what is owed
    /// @return paid The amount of currency settled
    function settle() external payable returns (uint256 paid);

    /// @notice Called by the user to pay on behalf of another address
    /// @param recipient The address to credit for the payment
    /// @return paid The amount of currency settled
    function settleFor(address recipient) external payable returns (uint256 paid);

    /// @notice WARNING - Any currency that is cleared, will be non-retrievable, and locked in the contract permanently.
    /// A call to clear will zero out a positive balance WITHOUT a corresponding transfer.
    /// @dev This could be used to clear a balance that is considered dust.
    /// Additionally, the amount must be the exact positive balance. This is to enforce that the caller is aware of the amount being cleared.
    function clear(Currency currency, uint256 amount) external;

    /// @notice Called by the user to move value into ERC6909 balance
    /// @param to The address to mint the tokens to
    /// @param id The currency address to mint to ERC6909s, as a uint256
    /// @param amount The amount of currency to mint
    /// @dev The id is converted to a uint160 to correspond to a currency address
    /// If the upper 12 bytes are not 0, they will be 0-ed out
    function mint(address to, uint256 id, uint256 amount) external;

    /// @notice Called by the user to move value from ERC6909 balance
    /// @param from The address to burn the tokens from
    /// @param id The currency address to burn from ERC6909s, as a uint256
    /// @param amount The amount of currency to burn
    /// @dev The id is converted to a uint160 to correspond to a currency address
    /// If the upper 12 bytes are not 0, they will be 0-ed out
    function burn(address from, uint256 id, uint256 amount) external;

    /// @notice Updates the pools lp fees for the a pool that has enabled dynamic lp fees.
    /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
    /// @param key The key of the pool to update dynamic LP fees for
    /// @param newDynamicLPFee The new dynamic pool LP fee
    function updateDynamicLPFee(PoolKey memory key, uint24 newDynamicLPFee) external;
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IProtocolFees.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "../types/Currency.sol";
import {PoolId} from "../types/PoolId.sol";
import {PoolKey} from "../types/PoolKey.sol";

/// @notice Interface for all protocol-fee related functions in the pool manager
interface IProtocolFees {
    /// @notice Thrown when protocol fee is set too high
    error ProtocolFeeTooLarge(uint24 fee);

    /// @notice Thrown when collectProtocolFees or setProtocolFee is not called by the controller.
    error InvalidCaller();

    /// @notice Thrown when collectProtocolFees is attempted on a token that is synced.
    error ProtocolFeeCurrencySynced();

    /// @notice Emitted when the protocol fee controller address is updated in setProtocolFeeController.
    event ProtocolFeeControllerUpdated(address indexed protocolFeeController);

    /// @notice Emitted when the protocol fee is updated for a pool.
    event ProtocolFeeUpdated(PoolId indexed id, uint24 protocolFee);

    /// @notice Given a currency address, returns the protocol fees accrued in that currency
    /// @param currency The currency to check
    /// @return amount The amount of protocol fees accrued in the currency
    function protocolFeesAccrued(Currency currency) external view returns (uint256 amount);

    /// @notice Sets the protocol fee for the given pool
    /// @param key The key of the pool to set a protocol fee for
    /// @param newProtocolFee The fee to set
    function setProtocolFee(PoolKey memory key, uint24 newProtocolFee) external;

    /// @notice Sets the protocol fee controller
    /// @param controller The new protocol fee controller
    function setProtocolFeeController(address controller) external;

    /// @notice Collects the protocol fees for a given recipient and currency, returning the amount collected
    /// @dev This will revert if the contract is unlocked
    /// @param recipient The address to receive the protocol fees
    /// @param currency The currency to withdraw
    /// @param amount The amount of currency to withdraw
    /// @return amountCollected The amount of currency successfully withdrawn
    function collectProtocolFees(address recipient, Currency currency, uint256 amount)
        external
        returns (uint256 amountCollected);

    /// @notice Returns the current protocol fee controller address
    /// @return address The current protocol fee controller address
    function protocolFeeController() external view returns (address);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/BitMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title BitMath
/// @dev This library provides functionality for computing bit properties of an unsigned integer
/// @author Solady (https://github.com/Vectorized/solady/blob/8200a70e8dc2a77ecb074fc2e99a2a0d36547522/src/utils/LibBit.sol)
library BitMath {
    /// @notice Returns the index of the most significant bit of the number,
    ///     where the least significant bit is at index 0 and the most significant bit is at index 255
    /// @param x the value for which to compute the most significant bit, must be greater than 0
    /// @return r the index of the most significant bit
    function mostSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        assembly ("memory-safe") {
            r := shl(7, lt(0xffffffffffffffffffffffffffffffff, x))
            r := or(r, shl(6, lt(0xffffffffffffffff, shr(r, x))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            r := or(r, byte(and(0x1f, shr(shr(r, x), 0x8421084210842108cc6318c6db6d54be)),
                0x0706060506020500060203020504000106050205030304010505030400000000))
        }
    }

    /// @notice Returns the index of the least significant bit of the number,
    ///     where the least significant bit is at index 0 and the most significant bit is at index 255
    /// @param x the value for which to compute the least significant bit, must be greater than 0
    /// @return r the index of the least significant bit
    function leastSignificantBit(uint256 x) internal pure returns (uint8 r) {
        require(x > 0);

        assembly ("memory-safe") {
            // Isolate the least significant bit.
            x := and(x, sub(0, x))
            // For the upper 3 bits of the result, use a De Bruijn-like lookup.
            // Credit to adhusson: https://blog.adhusson.com/cheap-find-first-set-evm/
            // forgefmt: disable-next-item
            r := shl(5, shr(252, shl(shl(2, shr(250, mul(x,
                0xb6db6db6ddddddddd34d34d349249249210842108c6318c639ce739cffffffff))),
                0x8040405543005266443200005020610674053026020000107506200176117077)))
            // For the lower 5 bits of the result, use a De Bruijn lookup.
            // forgefmt: disable-next-item
            r := or(r, byte(and(div(0xd76453e0, shr(r, x)), 0x1f),
                0x001f0d1e100c1d070f090b19131c1706010e11080a1a141802121b1503160405))
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
    /// @dev ERC-7751 error for wrapping bubbled up reverts
    error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

    /// @dev Reverts with the selector of a custom error in the scratch space
    function revertWith(bytes4 selector) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            revert(0, 0x04)
        }
    }

    /// @dev Reverts with a custom error with an address argument in the scratch space
    function revertWith(bytes4 selector, address addr) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with an int24 argument in the scratch space
    function revertWith(bytes4 selector, int24 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, signextend(2, value))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with a uint160 argument in the scratch space
    function revertWith(bytes4 selector, uint160 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with two int24 arguments
    function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), signextend(2, value1))
            mstore(add(fmp, 0x24), signextend(2, value2))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two uint160 arguments
    function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two address arguments
    function revertWith(bytes4 selector, address value1, address value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
    /// @dev this method can be vulnerable to revert data bombs
    function bubbleUpAndRevertWith(
        address revertingContract,
        bytes4 revertingFunctionSelector,
        bytes4 additionalContext
    ) internal pure {
        bytes4 wrappedErrorSelector = WrappedError.selector;
        assembly ("memory-safe") {
            // Ensure the size of the revert data is a multiple of 32 bytes
            let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

            let fmp := mload(0x40)

            // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
            mstore(fmp, wrappedErrorSelector)
            mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(
                add(fmp, 0x24),
                and(revertingFunctionSelector, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            // offset revert reason
            mstore(add(fmp, 0x44), 0x80)
            // offset additional context
            mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
            // size revert reason
            mstore(add(fmp, 0x84), returndatasize())
            // revert reason
            returndatacopy(add(fmp, 0xa4), 0, returndatasize())
            // size additional context
            mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
            // additional context
            mstore(
                add(fmp, add(0xc4, encodedDataSize)),
                and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            revert(fmp, add(0xe4, encodedDataSize))
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/Hooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {SafeCast} from "./SafeCast.sol";
import {LPFeeLibrary} from "./LPFeeLibrary.sol";
import {BalanceDelta, toBalanceDelta, BalanceDeltaLibrary} from "../types/BalanceDelta.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary} from "../types/BeforeSwapDelta.sol";
import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {ParseBytes} from "./ParseBytes.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
library Hooks {
    using LPFeeLibrary for uint24;
    using Hooks for IHooks;
    using SafeCast for int256;
    using BeforeSwapDeltaLibrary for BeforeSwapDelta;
    using ParseBytes for bytes;
    using CustomRevert for bytes4;

    uint160 internal constant ALL_HOOK_MASK = uint160((1 << 14) - 1);

    uint160 internal constant BEFORE_INITIALIZE_FLAG = 1 << 13;
    uint160 internal constant AFTER_INITIALIZE_FLAG = 1 << 12;

    uint160 internal constant BEFORE_ADD_LIQUIDITY_FLAG = 1 << 11;
    uint160 internal constant AFTER_ADD_LIQUIDITY_FLAG = 1 << 10;

    uint160 internal constant BEFORE_REMOVE_LIQUIDITY_FLAG = 1 << 9;
    uint160 internal constant AFTER_REMOVE_LIQUIDITY_FLAG = 1 << 8;

    uint160 internal constant BEFORE_SWAP_FLAG = 1 << 7;
    uint160 internal constant AFTER_SWAP_FLAG = 1 << 6;

    uint160 internal constant BEFORE_DONATE_FLAG = 1 << 5;
    uint160 internal constant AFTER_DONATE_FLAG = 1 << 4;

    uint160 internal constant BEFORE_SWAP_RETURNS_DELTA_FLAG = 1 << 3;
    uint160 internal constant AFTER_SWAP_RETURNS_DELTA_FLAG = 1 << 2;
    uint160 internal constant AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG = 1 << 1;
    uint160 internal constant AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG = 1 << 0;

    struct Permissions {
        bool beforeInitialize;
        bool afterInitialize;
        bool beforeAddLiquidity;
        bool afterAddLiquidity;
        bool beforeRemoveLiquidity;
        bool afterRemoveLiquidity;
        bool beforeSwap;
        bool afterSwap;
        bool beforeDonate;
        bool afterDonate;
        bool beforeSwapReturnDelta;
        bool afterSwapReturnDelta;
        bool afterAddLiquidityReturnDelta;
        bool afterRemoveLiquidityReturnDelta;
    }

    /// @notice Thrown if the address will not lead to the specified hook calls being called
    /// @param hooks The address of the hooks contract
    error HookAddressNotValid(address hooks);

    /// @notice Hook did not return its selector
    error InvalidHookResponse();

    /// @notice Additional context for ERC-7751 wrapped error when a hook call fails
    error HookCallFailed();

    /// @notice The hook's delta changed the swap from exactIn to exactOut or vice versa
    error HookDeltaExceedsSwapAmount();

    /// @notice Utility function intended to be used in hook constructors to ensure
    /// the deployed hooks address causes the intended hooks to be called
    /// @param permissions The hooks that are intended to be called
    /// @dev permissions param is memory as the function will be called from constructors
    function validateHookPermissions(IHooks self, Permissions memory permissions) internal pure {
        if (
            permissions.beforeInitialize != self.hasPermission(BEFORE_INITIALIZE_FLAG)
                || permissions.afterInitialize != self.hasPermission(AFTER_INITIALIZE_FLAG)
                || permissions.beforeAddLiquidity != self.hasPermission(BEFORE_ADD_LIQUIDITY_FLAG)
                || permissions.afterAddLiquidity != self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG)
                || permissions.beforeRemoveLiquidity != self.hasPermission(BEFORE_REMOVE_LIQUIDITY_FLAG)
                || permissions.afterRemoveLiquidity != self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)
                || permissions.beforeSwap != self.hasPermission(BEFORE_SWAP_FLAG)
                || permissions.afterSwap != self.hasPermission(AFTER_SWAP_FLAG)
                || permissions.beforeDonate != self.hasPermission(BEFORE_DONATE_FLAG)
                || permissions.afterDonate != self.hasPermission(AFTER_DONATE_FLAG)
                || permissions.beforeSwapReturnDelta != self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)
                || permissions.afterSwapReturnDelta != self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)
                || permissions.afterAddLiquidityReturnDelta != self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG)
                || permissions.afterRemoveLiquidityReturnDelta
                    != self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
        ) {
            HookAddressNotValid.selector.revertWith(address(self));
        }
    }

    /// @notice Ensures that the hook address includes at least one hook flag or dynamic fees, or is the 0 address
    /// @param self The hook to verify
    /// @param fee The fee of the pool the hook is used with
    /// @return bool True if the hook address is valid
    function isValidHookAddress(IHooks self, uint24 fee) internal pure returns (bool) {
        // The hook can only have a flag to return a hook delta on an action if it also has the corresponding action flag
        if (!self.hasPermission(BEFORE_SWAP_FLAG) && self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)) return false;
        if (!self.hasPermission(AFTER_SWAP_FLAG) && self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)) return false;
        if (!self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG) && self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG))
        {
            return false;
        }
        if (
            !self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)
                && self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
        ) return false;

        // If there is no hook contract set, then fee cannot be dynamic
        // If a hook contract is set, it must have at least 1 flag set, or have a dynamic fee
        return address(self) == address(0)
            ? !fee.isDynamicFee()
            : (uint160(address(self)) & ALL_HOOK_MASK > 0 || fee.isDynamicFee());
    }

    /// @notice performs a hook call using the given calldata on the given hook that doesn't return a delta
    /// @return result The complete data returned by the hook
    function callHook(IHooks self, bytes memory data) internal returns (bytes memory result) {
        bool success;
        assembly ("memory-safe") {
            success := call(gas(), self, 0, add(data, 0x20), mload(data), 0, 0)
        }
        // Revert with FailedHookCall, containing any error message to bubble up
        if (!success) CustomRevert.bubbleUpAndRevertWith(address(self), bytes4(data), HookCallFailed.selector);

        // The call was successful, fetch the returned data
        assembly ("memory-safe") {
            // allocate result byte array from the free memory pointer
            result := mload(0x40)
            // store new free memory pointer at the end of the array padded to 32 bytes
            mstore(0x40, add(result, and(add(returndatasize(), 0x3f), not(0x1f))))
            // store length in memory
            mstore(result, returndatasize())
            // copy return data to result
            returndatacopy(add(result, 0x20), 0, returndatasize())
        }

        // Length must be at least 32 to contain the selector. Check expected selector and returned selector match.
        if (result.length < 32 || result.parseSelector() != data.parseSelector()) {
            InvalidHookResponse.selector.revertWith();
        }
    }

    /// @notice performs a hook call using the given calldata on the given hook
    /// @return int256 The delta returned by the hook
    function callHookWithReturnDelta(IHooks self, bytes memory data, bool parseReturn) internal returns (int256) {
        bytes memory result = callHook(self, data);

        // If this hook wasn't meant to return something, default to 0 delta
        if (!parseReturn) return 0;

        // A length of 64 bytes is required to return a bytes4, and a 32 byte delta
        if (result.length != 64) InvalidHookResponse.selector.revertWith();
        return result.parseReturnDelta();
    }

    /// @notice modifier to prevent calling a hook if they initiated the action
    modifier noSelfCall(IHooks self) {
        if (msg.sender != address(self)) {
            _;
        }
    }

    /// @notice calls beforeInitialize hook if permissioned and validates return value
    function beforeInitialize(IHooks self, PoolKey memory key, uint160 sqrtPriceX96) internal noSelfCall(self) {
        if (self.hasPermission(BEFORE_INITIALIZE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeInitialize, (msg.sender, key, sqrtPriceX96)));
        }
    }

    /// @notice calls afterInitialize hook if permissioned and validates return value
    function afterInitialize(IHooks self, PoolKey memory key, uint160 sqrtPriceX96, int24 tick)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(AFTER_INITIALIZE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.afterInitialize, (msg.sender, key, sqrtPriceX96, tick)));
        }
    }

    /// @notice calls beforeModifyLiquidity hook if permissioned and validates return value
    function beforeModifyLiquidity(
        IHooks self,
        PoolKey memory key,
        IPoolManager.ModifyLiquidityParams memory params,
        bytes calldata hookData
    ) internal noSelfCall(self) {
        if (params.liquidityDelta > 0 && self.hasPermission(BEFORE_ADD_LIQUIDITY_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeAddLiquidity, (msg.sender, key, params, hookData)));
        } else if (params.liquidityDelta <= 0 && self.hasPermission(BEFORE_REMOVE_LIQUIDITY_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeRemoveLiquidity, (msg.sender, key, params, hookData)));
        }
    }

    /// @notice calls afterModifyLiquidity hook if permissioned and validates return value
    function afterModifyLiquidity(
        IHooks self,
        PoolKey memory key,
        IPoolManager.ModifyLiquidityParams memory params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) internal returns (BalanceDelta callerDelta, BalanceDelta hookDelta) {
        if (msg.sender == address(self)) return (delta, BalanceDeltaLibrary.ZERO_DELTA);

        callerDelta = delta;
        if (params.liquidityDelta > 0) {
            if (self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG)) {
                hookDelta = BalanceDelta.wrap(
                    self.callHookWithReturnDelta(
                        abi.encodeCall(
                            IHooks.afterAddLiquidity, (msg.sender, key, params, delta, feesAccrued, hookData)
                        ),
                        self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG)
                    )
                );
                callerDelta = callerDelta - hookDelta;
            }
        } else {
            if (self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)) {
                hookDelta = BalanceDelta.wrap(
                    self.callHookWithReturnDelta(
                        abi.encodeCall(
                            IHooks.afterRemoveLiquidity, (msg.sender, key, params, delta, feesAccrued, hookData)
                        ),
                        self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
                    )
                );
                callerDelta = callerDelta - hookDelta;
            }
        }
    }

    /// @notice calls beforeSwap hook if permissioned and validates return value
    function beforeSwap(IHooks self, PoolKey memory key, IPoolManager.SwapParams memory params, bytes calldata hookData)
        internal
        returns (int256 amountToSwap, BeforeSwapDelta hookReturn, uint24 lpFeeOverride)
    {
        amountToSwap = params.amountSpecified;
        if (msg.sender == address(self)) return (amountToSwap, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride);

        if (self.hasPermission(BEFORE_SWAP_FLAG)) {
            bytes memory result = callHook(self, abi.encodeCall(IHooks.beforeSwap, (msg.sender, key, params, hookData)));

            // A length of 96 bytes is required to return a bytes4, a 32 byte delta, and an LP fee
            if (result.length != 96) InvalidHookResponse.selector.revertWith();

            // dynamic fee pools that want to override the cache fee, return a valid fee with the override flag. If override flag
            // is set but an invalid fee is returned, the transaction will revert. Otherwise the current LP fee will be used
            if (key.fee.isDynamicFee()) lpFeeOverride = result.parseFee();

            // skip this logic for the case where the hook return is 0
            if (self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)) {
                hookReturn = BeforeSwapDelta.wrap(result.parseReturnDelta());

                // any return in unspecified is passed to the afterSwap hook for handling
                int128 hookDeltaSpecified = hookReturn.getSpecifiedDelta();

                // Update the swap amount according to the hook's return, and check that the swap type doesn't change (exact input/output)
                if (hookDeltaSpecified != 0) {
                    bool exactInput = amountToSwap < 0;
                    amountToSwap += hookDeltaSpecified;
                    if (exactInput ? amountToSwap > 0 : amountToSwap < 0) {
                        HookDeltaExceedsSwapAmount.selector.revertWith();
                    }
                }
            }
        }
    }

    /// @notice calls afterSwap hook if permissioned and validates return value
    function afterSwap(
        IHooks self,
        PoolKey memory key,
        IPoolManager.SwapParams memory params,
        BalanceDelta swapDelta,
        bytes calldata hookData,
        BeforeSwapDelta beforeSwapHookReturn
    ) internal returns (BalanceDelta, BalanceDelta) {
        if (msg.sender == address(self)) return (swapDelta, BalanceDeltaLibrary.ZERO_DELTA);

        int128 hookDeltaSpecified = beforeSwapHookReturn.getSpecifiedDelta();
        int128 hookDeltaUnspecified = beforeSwapHookReturn.getUnspecifiedDelta();

        if (self.hasPermission(AFTER_SWAP_FLAG)) {
            hookDeltaUnspecified += self.callHookWithReturnDelta(
                abi.encodeCall(IHooks.afterSwap, (msg.sender, key, params, swapDelta, hookData)),
                self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)
            ).toInt128();
        }

        BalanceDelta hookDelta;
        if (hookDeltaUnspecified != 0 || hookDeltaSpecified != 0) {
            hookDelta = (params.amountSpecified < 0 == params.zeroForOne)
                ? toBalanceDelta(hookDeltaSpecified, hookDeltaUnspecified)
                : toBalanceDelta(hookDeltaUnspecified, hookDeltaSpecified);

            // the caller has to pay for (or receive) the hook's delta
            swapDelta = swapDelta - hookDelta;
        }
        return (swapDelta, hookDelta);
    }

    /// @notice calls beforeDonate hook if permissioned and validates return value
    function beforeDonate(IHooks self, PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(BEFORE_DONATE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData)));
        }
    }

    /// @notice calls afterDonate hook if permissioned and validates return value
    function afterDonate(IHooks self, PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(AFTER_DONATE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData)));
        }
    }

    function hasPermission(IHooks self, uint160 flag) internal pure returns (bool) {
        return uint160(address(self)) & flag != 0;
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/LPFeeLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @notice Library of helper functions for a pools LP fee
library LPFeeLibrary {
    using LPFeeLibrary for uint24;
    using CustomRevert for bytes4;

    /// @notice Thrown when the static or dynamic fee on a pool exceeds 100%.
    error LPFeeTooLarge(uint24 fee);

    /// @notice An lp fee of exactly 0b1000000... signals a dynamic fee pool. This isn't a valid static fee as it is > MAX_LP_FEE
    uint24 public constant DYNAMIC_FEE_FLAG = 0x800000;

    /// @notice the second bit of the fee returned by beforeSwap is used to signal if the stored LP fee should be overridden in this swap
    // only dynamic-fee pools can return a fee via the beforeSwap hook
    uint24 public constant OVERRIDE_FEE_FLAG = 0x400000;

    /// @notice mask to remove the override fee flag from a fee returned by the beforeSwaphook
    uint24 public constant REMOVE_OVERRIDE_MASK = 0xBFFFFF;

    /// @notice the lp fee is represented in hundredths of a bip, so the max is 100%
    uint24 public constant MAX_LP_FEE = 1000000;

    /// @notice returns true if a pool's LP fee signals that the pool has a dynamic fee
    /// @param self The fee to check
    /// @return bool True of the fee is dynamic
    function isDynamicFee(uint24 self) internal pure returns (bool) {
        return self == DYNAMIC_FEE_FLAG;
    }

    /// @notice returns true if an LP fee is valid, aka not above the maximum permitted fee
    /// @param self The fee to check
    /// @return bool True of the fee is valid
    function isValid(uint24 self) internal pure returns (bool) {
        return self <= MAX_LP_FEE;
    }

    /// @notice validates whether an LP fee is larger than the maximum, and reverts if invalid
    /// @param self The fee to validate
    function validate(uint24 self) internal pure {
        if (!self.isValid()) LPFeeTooLarge.selector.revertWith(self);
    }

    /// @notice gets and validates the initial LP fee for a pool. Dynamic fee pools have an initial fee of 0.
    /// @dev if a dynamic fee pool wants a non-0 initial fee, it should call `updateDynamicLPFee` in the afterInitialize hook
    /// @param self The fee to get the initial LP from
    /// @return initialFee 0 if the fee is dynamic, otherwise the fee (if valid)
    function getInitialLPFee(uint24 self) internal pure returns (uint24) {
        // the initial fee for a dynamic fee pool is 0
        if (self.isDynamicFee()) return 0;
        self.validate();
        return self;
    }

    /// @notice returns true if the fee has the override flag set (2nd highest bit of the uint24)
    /// @param self The fee to check
    /// @return bool True of the fee has the override flag set
    function isOverride(uint24 self) internal pure returns (bool) {
        return self & OVERRIDE_FEE_FLAG != 0;
    }

    /// @notice returns a fee with the override flag removed
    /// @param self The fee to remove the override flag from
    /// @return fee The fee without the override flag set
    function removeOverrideFlag(uint24 self) internal pure returns (uint24) {
        return self & REMOVE_OVERRIDE_MASK;
    }

    /// @notice Removes the override flag and validates the fee (reverts if the fee is too large)
    /// @param self The fee to remove the override flag from, and then validate
    /// @return fee The fee without the override flag set (if valid)
    function removeOverrideFlagAndValidate(uint24 self) internal pure returns (uint24 fee) {
        fee = self.removeOverrideFlag();
        fee.validate();
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/ParseBytes.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @notice Parses bytes returned from hooks and the byte selector used to check return selectors from hooks.
/// @dev parseSelector also is used to parse the expected selector
/// For parsing hook returns, note that all hooks return either bytes4 or (bytes4, 32-byte-delta) or (bytes4, 32-byte-delta, uint24).
library ParseBytes {
    function parseSelector(bytes memory result) internal pure returns (bytes4 selector) {
        // equivalent: (selector,) = abi.decode(result, (bytes4, int256));
        assembly ("memory-safe") {
            selector := mload(add(result, 0x20))
        }
    }

    function parseFee(bytes memory result) internal pure returns (uint24 lpFee) {
        // equivalent: (,, lpFee) = abi.decode(result, (bytes4, int256, uint24));
        assembly ("memory-safe") {
            lpFee := mload(add(result, 0x60))
        }
    }

    function parseReturnDelta(bytes memory result) internal pure returns (int256 hookReturn) {
        // equivalent: (, hookReturnDelta) = abi.decode(result, (bytes4, int256));
        assembly ("memory-safe") {
            hookReturn := mload(add(result, 0x40))
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @title Safe casting methods
/// @notice Contains methods for safely casting between types
library SafeCast {
    using CustomRevert for bytes4;

    error SafeCastOverflow();

    /// @notice Cast a uint256 to a uint160, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint160
    function toUint160(uint256 x) internal pure returns (uint160 y) {
        y = uint160(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint128
    function toUint128(uint256 x) internal pure returns (uint128 y) {
        y = uint128(x);
        if (x != y) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a int128 to a uint128, revert on overflow or underflow
    /// @param x The int128 to be casted
    /// @return y The casted integer, now type uint128
    function toUint128(int128 x) internal pure returns (uint128 y) {
        if (x < 0) SafeCastOverflow.selector.revertWith();
        y = uint128(x);
    }

    /// @notice Cast a int256 to a int128, revert on overflow or underflow
    /// @param x The int256 to be downcasted
    /// @return y The downcasted integer, now type int128
    function toInt128(int256 x) internal pure returns (int128 y) {
        y = int128(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int256, revert on overflow
    /// @param x The uint256 to be casted
    /// @return y The casted integer, now type int256
    function toInt256(uint256 x) internal pure returns (int256 y) {
        y = int256(x);
        if (y < 0) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return The downcasted integer, now type int128
    function toInt128(uint256 x) internal pure returns (int128) {
        if (x >= 1 << 127) SafeCastOverflow.selector.revertWith();
        return int128(int256(x));
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/TickMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BitMath} from "./BitMath.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @title Math library for computing sqrt prices from ticks and vice versa
/// @notice Computes sqrt price for ticks of size 1.0001, i.e. sqrt(1.0001^tick) as fixed point Q64.96 numbers. Supports
/// prices between 2**-128 and 2**128
library TickMath {
    using CustomRevert for bytes4;

    /// @notice Thrown when the tick passed to #getSqrtPriceAtTick is not between MIN_TICK and MAX_TICK
    error InvalidTick(int24 tick);
    /// @notice Thrown when the price passed to #getTickAtSqrtPrice does not correspond to a price between MIN_TICK and MAX_TICK
    error InvalidSqrtPrice(uint160 sqrtPriceX96);

    /// @dev The minimum tick that may be passed to #getSqrtPriceAtTick computed from log base 1.0001 of 2**-128
    /// @dev If ever MIN_TICK and MAX_TICK are not centered around 0, the absTick logic in getSqrtPriceAtTick cannot be used
    int24 internal constant MIN_TICK = -887272;
    /// @dev The maximum tick that may be passed to #getSqrtPriceAtTick computed from log base 1.0001 of 2**128
    /// @dev If ever MIN_TICK and MAX_TICK are not centered around 0, the absTick logic in getSqrtPriceAtTick cannot be used
    int24 internal constant MAX_TICK = 887272;

    /// @dev The minimum tick spacing value drawn from the range of type int16 that is greater than 0, i.e. min from the range [1, 32767]
    int24 internal constant MIN_TICK_SPACING = 1;
    /// @dev The maximum tick spacing value drawn from the range of type int16, i.e. max from the range [1, 32767]
    int24 internal constant MAX_TICK_SPACING = type(int16).max;

    /// @dev The minimum value that can be returned from #getSqrtPriceAtTick. Equivalent to getSqrtPriceAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_PRICE = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtPriceAtTick. Equivalent to getSqrtPriceAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_PRICE = 1461446703485210103287273052203988822378723970342;
    /// @dev A threshold used for optimized bounds check, equals `MAX_SQRT_PRICE - MIN_SQRT_PRICE - 1`
    uint160 internal constant MAX_SQRT_PRICE_MINUS_MIN_SQRT_PRICE_MINUS_ONE =
        1461446703485210103287273052203988822378723970342 - 4295128739 - 1;

    /// @notice Given a tickSpacing, compute the maximum usable tick
    function maxUsableTick(int24 tickSpacing) internal pure returns (int24) {
        unchecked {
            return (MAX_TICK / tickSpacing) * tickSpacing;
        }
    }

    /// @notice Given a tickSpacing, compute the minimum usable tick
    function minUsableTick(int24 tickSpacing) internal pure returns (int24) {
        unchecked {
            return (MIN_TICK / tickSpacing) * tickSpacing;
        }
    }

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the above formula
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the price of the two assets (currency1/currency0)
    /// at the given tick
    function getSqrtPriceAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        unchecked {
            uint256 absTick;
            assembly ("memory-safe") {
                tick := signextend(2, tick)
                // mask = 0 if tick >= 0 else -1 (all 1s)
                let mask := sar(255, tick)
                // if tick >= 0, |tick| = tick = 0 ^ tick
                // if tick < 0, |tick| = ~~|tick| = ~(-|tick| - 1) = ~(tick - 1) = (-1) ^ (tick - 1)
                // either way, |tick| = mask ^ (tick + mask)
                absTick := xor(mask, add(mask, tick))
            }

            if (absTick > uint256(int256(MAX_TICK))) InvalidTick.selector.revertWith(tick);

            // The tick is decomposed into bits, and for each bit with index i that is set, the product of 1/sqrt(1.0001^(2^i))
            // is calculated (using Q128.128). The constants used for this calculation are rounded to the nearest integer

            // Equivalent to:
            //     price = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000;
            //     or price = int(2**128 / sqrt(1.0001)) if (absTick & 0x1) else 1 << 128
            uint256 price;
            assembly ("memory-safe") {
                price := xor(shl(128, 1), mul(xor(shl(128, 1), 0xfffcb933bd6fad37aa2d162d1a594001), and(absTick, 0x1)))
            }
            if (absTick & 0x2 != 0) price = (price * 0xfff97272373d413259a46990580e213a) >> 128;
            if (absTick & 0x4 != 0) price = (price * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
            if (absTick & 0x8 != 0) price = (price * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
            if (absTick & 0x10 != 0) price = (price * 0xffcb9843d60f6159c9db58835c926644) >> 128;
            if (absTick & 0x20 != 0) price = (price * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
            if (absTick & 0x40 != 0) price = (price * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
            if (absTick & 0x80 != 0) price = (price * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
            if (absTick & 0x100 != 0) price = (price * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
            if (absTick & 0x200 != 0) price = (price * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
            if (absTick & 0x400 != 0) price = (price * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
            if (absTick & 0x800 != 0) price = (price * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
            if (absTick & 0x1000 != 0) price = (price * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
            if (absTick & 0x2000 != 0) price = (price * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
            if (absTick & 0x4000 != 0) price = (price * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
            if (absTick & 0x8000 != 0) price = (price * 0x31be135f97d08fd981231505542fcfa6) >> 128;
            if (absTick & 0x10000 != 0) price = (price * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
            if (absTick & 0x20000 != 0) price = (price * 0x5d6af8dedb81196699c329225ee604) >> 128;
            if (absTick & 0x40000 != 0) price = (price * 0x2216e584f5fa1ea926041bedfe98) >> 128;
            if (absTick & 0x80000 != 0) price = (price * 0x48a170391f7dc42444e8fa2) >> 128;

            assembly ("memory-safe") {
                // if (tick > 0) price = type(uint256).max / price;
                if sgt(tick, 0) { price := div(not(0), price) }

                // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
                // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
                // we round up in the division so getTickAtSqrtPrice of the output price is always consistent
                // `sub(shl(32, 1), 1)` is `type(uint32).max`
                // `price + type(uint32).max` will not overflow because `price` fits in 192 bits
                sqrtPriceX96 := shr(32, add(price, sub(shl(32, 1), 1)))
            }
        }
    }

    /// @notice Calculates the greatest tick value such that getSqrtPriceAtTick(tick) <= sqrtPriceX96
    /// @dev Throws in case sqrtPriceX96 < MIN_SQRT_PRICE, as MIN_SQRT_PRICE is the lowest value getSqrtPriceAtTick may
    /// ever return.
    /// @param sqrtPriceX96 The sqrt price for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the getSqrtPriceAtTick(tick) is less than or equal to the input sqrtPriceX96
    function getTickAtSqrtPrice(uint160 sqrtPriceX96) internal pure returns (int24 tick) {
        unchecked {
            // Equivalent: if (sqrtPriceX96 < MIN_SQRT_PRICE || sqrtPriceX96 >= MAX_SQRT_PRICE) revert InvalidSqrtPrice();
            // second inequality must be >= because the price can never reach the price at the max tick
            // if sqrtPriceX96 < MIN_SQRT_PRICE, the `sub` underflows and `gt` is true
            // if sqrtPriceX96 >= MAX_SQRT_PRICE, sqrtPriceX96 - MIN_SQRT_PRICE > MAX_SQRT_PRICE - MIN_SQRT_PRICE - 1
            if ((sqrtPriceX96 - MIN_SQRT_PRICE) > MAX_SQRT_PRICE_MINUS_MIN_SQRT_PRICE_MINUS_ONE) {
                InvalidSqrtPrice.selector.revertWith(sqrtPriceX96);
            }

            uint256 price = uint256(sqrtPriceX96) << 32;

            uint256 r = price;
            uint256 msb = BitMath.mostSignificantBit(r);

            if (msb >= 128) r = price >> (msb - 127);
            else r = price << (127 - msb);

            int256 log_2 = (int256(msb) - 128) << 64;

            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(63, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(62, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(61, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(60, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(59, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(58, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(57, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(56, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(55, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(54, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(53, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(52, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(51, f))
                r := shr(f, r)
            }
            assembly ("memory-safe") {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(50, f))
            }

            int256 log_sqrt10001 = log_2 * 255738958999603826347141; // Q22.128 number

            // Magic number represents the ceiling of the maximum value of the error when approximating log_sqrt10001(x)
            int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128);

            // Magic number represents the minimum value of the error when approximating log_sqrt10001(x), when
            // sqrtPrice is from the range (2^-64, 2^64). This is safe as MIN_SQRT_PRICE is more than 2^-64. If MIN_SQRT_PRICE
            // is changed, this may need to be changed too
            int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128);

            tick = tickLow == tickHi ? tickLow : getSqrtPriceAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow;
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/BalanceDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SafeCast} from "../libraries/SafeCast.sol";

/// @dev Two `int128` values packed into a single `int256` where the upper 128 bits represent the amount0
/// and the lower 128 bits represent the amount1.
type BalanceDelta is int256;

using {add as +, sub as -, eq as ==, neq as !=} for BalanceDelta global;
using BalanceDeltaLibrary for BalanceDelta global;
using SafeCast for int256;

function toBalanceDelta(int128 _amount0, int128 _amount1) pure returns (BalanceDelta balanceDelta) {
    assembly ("memory-safe") {
        balanceDelta := or(shl(128, _amount0), and(sub(shl(128, 1), 1), _amount1))
    }
}

function add(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := add(a0, b0)
        res1 := add(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function sub(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := sub(a0, b0)
        res1 := sub(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function eq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) == BalanceDelta.unwrap(b);
}

function neq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) != BalanceDelta.unwrap(b);
}

/// @notice Library for getting the amount0 and amount1 deltas from the BalanceDelta type
library BalanceDeltaLibrary {
    /// @notice A BalanceDelta of 0
    BalanceDelta public constant ZERO_DELTA = BalanceDelta.wrap(0);

    function amount0(BalanceDelta balanceDelta) internal pure returns (int128 _amount0) {
        assembly ("memory-safe") {
            _amount0 := sar(128, balanceDelta)
        }
    }

    function amount1(BalanceDelta balanceDelta) internal pure returns (int128 _amount1) {
        assembly ("memory-safe") {
            _amount1 := signextend(15, balanceDelta)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/BeforeSwapDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Return type of the beforeSwap hook.
// Upper 128 bits is the delta in specified tokens. Lower 128 bits is delta in unspecified tokens (to match the afterSwap hook)
type BeforeSwapDelta is int256;

// Creates a BeforeSwapDelta from specified and unspecified
function toBeforeSwapDelta(int128 deltaSpecified, int128 deltaUnspecified)
    pure
    returns (BeforeSwapDelta beforeSwapDelta)
{
    assembly ("memory-safe") {
        beforeSwapDelta := or(shl(128, deltaSpecified), and(sub(shl(128, 1), 1), deltaUnspecified))
    }
}

/// @notice Library for getting the specified and unspecified deltas from the BeforeSwapDelta type
library BeforeSwapDeltaLibrary {
    /// @notice A BeforeSwapDelta of 0
    BeforeSwapDelta public constant ZERO_DELTA = BeforeSwapDelta.wrap(0);

    /// extracts int128 from the upper 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap
    function getSpecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaSpecified) {
        assembly ("memory-safe") {
            deltaSpecified := sar(128, delta)
        }
    }

    /// extracts int128 from the lower 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap and afterSwap
    function getUnspecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaUnspecified) {
        assembly ("memory-safe") {
            deltaUnspecified := signextend(15, delta)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/Currency.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Minimal} from "../interfaces/external/IERC20Minimal.sol";
import {CustomRevert} from "../libraries/CustomRevert.sol";

type Currency is address;

using {greaterThan as >, lessThan as <, greaterThanOrEqualTo as >=, equals as ==} for Currency global;
using CurrencyLibrary for Currency global;

function equals(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) == Currency.unwrap(other);
}

function greaterThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) > Currency.unwrap(other);
}

function lessThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) < Currency.unwrap(other);
}

function greaterThanOrEqualTo(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) >= Currency.unwrap(other);
}

/// @title CurrencyLibrary
/// @dev This library allows for transferring and holding native tokens and ERC20 tokens
library CurrencyLibrary {
    /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
    error NativeTransferFailed();

    /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
    error ERC20TransferFailed();

    /// @notice A constant to represent the native currency
    Currency public constant ADDRESS_ZERO = Currency.wrap(address(0));

    function transfer(Currency currency, address to, uint256 amount) internal {
        // altered from https://github.com/transmissions11/solmate/blob/44a9963d4c78111f77caa0e65d677b8b46d6f2e6/src/utils/SafeTransferLib.sol
        // modified custom error selectors

        bool success;
        if (currency.isAddressZero()) {
            assembly ("memory-safe") {
                // Transfer the ETH and revert if it fails.
                success := call(gas(), to, amount, 0, 0, 0, 0)
            }
            // revert with NativeTransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
            }
        } else {
            assembly ("memory-safe") {
                // Get a pointer to some free memory.
                let fmp := mload(0x40)

                // Write the abi-encoded calldata into memory, beginning with the function selector.
                mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
                mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

                success :=
                    and(
                        // Set success to whether the call reverted, if not we check it either
                        // returned exactly 1 (can't just be non-zero data), or had no return data.
                        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                        // Counterintuitively, this call must be positioned second to the or() call in the
                        // surrounding and() call or else returndatasize() will be zero during the computation.
                        call(gas(), currency, 0, fmp, 68, 0, 32)
                    )

                // Now clean the memory we used
                mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
                mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
                mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
            }
            // revert with ERC20TransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(
                    Currency.unwrap(currency), IERC20Minimal.transfer.selector, ERC20TransferFailed.selector
                );
            }
        }
    }

    function balanceOfSelf(Currency currency) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return address(this).balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(address(this));
        }
    }

    function balanceOf(Currency currency, address owner) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return owner.balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(owner);
        }
    }

    function isAddressZero(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(ADDRESS_ZERO);
    }

    function toId(Currency currency) internal pure returns (uint256) {
        return uint160(Currency.unwrap(currency));
    }

    // If the upper 12 bytes are non-zero, they will be zero-ed out
    // Therefore, fromId() and toId() are not inverses of each other
    function fromId(uint256 id) internal pure returns (Currency) {
        return Currency.wrap(address(uint160(id)));
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/PoolId.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "./PoolKey.sol";

type PoolId is bytes32;

/// @notice Library for computing the ID of a pool
library PoolIdLibrary {
    /// @notice Returns value equal to keccak256(abi.encode(poolKey))
    function toId(PoolKey memory poolKey) internal pure returns (PoolId poolId) {
        assembly ("memory-safe") {
            // 0xa0 represents the total size of the poolKey struct (5 slots of 32 bytes)
            poolId := keccak256(poolKey, 0xa0)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/PoolKey.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "./Currency.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {PoolIdLibrary} from "./PoolId.sol";

using PoolIdLibrary for PoolKey global;

/// @notice Returns the key for identifying a pool
struct PoolKey {
    /// @notice The lower currency of the pool, sorted numerically
    Currency currency0;
    /// @notice The higher currency of the pool, sorted numerically
    Currency currency1;
    /// @notice The pool LP fee, capped at 1_000_000. If the highest bit is 1, the pool has a dynamic fee and must be exactly equal to 0x800000
    uint24 fee;
    /// @notice Ticks that involve positions must be a multiple of tick spacing
    int24 tickSpacing;
    /// @notice The hooks of the pool
    IHooks hooks;
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/Slot0.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev Slot0 is a packed version of solidity structure.
 * Using the packaged version saves gas by not storing the structure fields in memory slots.
 *
 * Layout:
 * 24 bits empty | 24 bits lpFee | 12 bits protocolFee 1->0 | 12 bits protocolFee 0->1 | 24 bits tick | 160 bits sqrtPriceX96
 *
 * Fields in the direction from the least significant bit:
 *
 * The current price
 * uint160 sqrtPriceX96;
 *
 * The current tick
 * int24 tick;
 *
 * Protocol fee, expressed in hundredths of a bip, upper 12 bits are for 1->0, and the lower 12 are for 0->1
 * the maximum is 1000 - meaning the maximum protocol fee is 0.1%
 * the protocolFee is taken from the input first, then the lpFee is taken from the remaining input
 * uint24 protocolFee;
 *
 * The current LP fee of the pool. If the pool is dynamic, this does not include the dynamic fee flag.
 * uint24 lpFee;
 */
type Slot0 is bytes32;

using Slot0Library for Slot0 global;

/// @notice Library for getting and setting values in the Slot0 type
library Slot0Library {
    uint160 internal constant MASK_160_BITS = 0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    uint24 internal constant MASK_24_BITS = 0xFFFFFF;

    uint8 internal constant TICK_OFFSET = 160;
    uint8 internal constant PROTOCOL_FEE_OFFSET = 184;
    uint8 internal constant LP_FEE_OFFSET = 208;

    // #### GETTERS ####
    function sqrtPriceX96(Slot0 _packed) internal pure returns (uint160 _sqrtPriceX96) {
        assembly ("memory-safe") {
            _sqrtPriceX96 := and(MASK_160_BITS, _packed)
        }
    }

    function tick(Slot0 _packed) internal pure returns (int24 _tick) {
        assembly ("memory-safe") {
            _tick := signextend(2, shr(TICK_OFFSET, _packed))
        }
    }

    function protocolFee(Slot0 _packed) internal pure returns (uint24 _protocolFee) {
        assembly ("memory-safe") {
            _protocolFee := and(MASK_24_BITS, shr(PROTOCOL_FEE_OFFSET, _packed))
        }
    }

    function lpFee(Slot0 _packed) internal pure returns (uint24 _lpFee) {
        assembly ("memory-safe") {
            _lpFee := and(MASK_24_BITS, shr(LP_FEE_OFFSET, _packed))
        }
    }

    // #### SETTERS ####
    function setSqrtPriceX96(Slot0 _packed, uint160 _sqrtPriceX96) internal pure returns (Slot0 _result) {
        assembly ("memory-safe") {
            _result := or(and(not(MASK_160_BITS), _packed), and(MASK_160_BITS, _sqrtPriceX96))
        }
    }

    function setTick(Slot0 _packed, int24 _tick) internal pure returns (Slot0 _result) {
        assembly ("memory-safe") {
            _result := or(and(not(shl(TICK_OFFSET, MASK_24_BITS)), _packed), shl(TICK_OFFSET, and(MASK_24_BITS, _tick)))
        }
    }

    function setProtocolFee(Slot0 _packed, uint24 _protocolFee) internal pure returns (Slot0 _result) {
        assembly ("memory-safe") {
            _result :=
                or(
                    and(not(shl(PROTOCOL_FEE_OFFSET, MASK_24_BITS)), _packed),
                    shl(PROTOCOL_FEE_OFFSET, and(MASK_24_BITS, _protocolFee))
                )
        }
    }

    function setLpFee(Slot0 _packed, uint24 _lpFee) internal pure returns (Slot0 _result) {
        assembly ("memory-safe") {
            _result :=
                or(and(not(shl(LP_FEE_OFFSET, MASK_24_BITS)), _packed), shl(LP_FEE_OFFSET, and(MASK_24_BITS, _lpFee)))
        }
    }
}

// ============================================================
// FILE: src/Angstrom.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.26;

import {EIP712} from "solady/src/utils/EIP712.sol";
import {TopLevelAuth} from "./modules/TopLevelAuth.sol";
import {Settlement} from "./modules/Settlement.sol";
import {PoolUpdates} from "./modules/PoolUpdates.sol";
import {UnlockHook} from "./modules/UnlockHook.sol";
import {OrderInvalidation} from "./modules/OrderInvalidation.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {UniConsumer} from "./modules/UniConsumer.sol";
import {PermitSubmitterHook} from "./modules/PermitSubmitterHook.sol";
import {IUnlockCallback} from "v4-core/src/interfaces/callback/IUnlockCallback.sol";

import {CalldataReader, CalldataReaderLib} from "./types/CalldataReader.sol";
import {AssetArray, AssetLib} from "./types/Asset.sol";
import {PairArray, PairLib} from "./types/Pair.sol";
import {TypedDataHasher, TypedDataHasherLib} from "./types/TypedDataHasher.sol";
import {HookBuffer, HookBufferLib} from "./types/HookBuffer.sol";
import {SignatureLib} from "./libraries/SignatureLib.sol";
import {
    PriceAB as PriceOutVsIn, AmountA as AmountOut, AmountB as AmountIn
} from "./types/Price.sol";
import {ToBOrderBuffer} from "./types/ToBOrderBuffer.sol";
import {ToBOrderVariantMap} from "./types/ToBOrderVariantMap.sol";
import {UserOrderBuffer} from "./types/UserOrderBuffer.sol";
import {UserOrderVariantMap} from "./types/UserOrderVariantMap.sol";

/// @author philogy <https://github.com/philogy>
contract Angstrom is
    EIP712,
    OrderInvalidation,
    Settlement,
    PoolUpdates,
    UnlockHook,
    IUnlockCallback,
    PermitSubmitterHook
{
    error LimitViolated();
    error ToBGasUsedAboveMax();

    constructor(IPoolManager uniV4, address controller)
        UniConsumer(uniV4)
        TopLevelAuth(controller)
    {
        _checkAngstromHookFlags();
    }

    /// @dev Angstrom entry point, use empty payload to short-circuit empty bundles and just unlock.
    function execute(bytes calldata encoded) external {
        _nodeBundleLock();
        if (encoded.length == 0) return;
        UNI_V4.unlock(encoded);
    }

    function unlockCallback(bytes calldata data) external override returns (bytes memory) {
        _onlyUniV4();

        CalldataReader reader = CalldataReaderLib.from(data);

        AssetArray assets;
        (reader, assets) = AssetLib.readFromAndValidate(reader);
        PairArray pairs;
        (reader, pairs) = PairLib.readFromAndValidate(reader, assets, _configStore);

        _takeAssets(assets);

        reader = _updatePools(reader, pairs);
        reader = _validateAndExecuteToBOrders(reader, pairs);
        reader = _validateAndExecuteUserOrders(reader, pairs);
        reader.requireAtEndOf(data);
        _saveAndSettle(assets);

        // Return empty bytes.
        assembly ("memory-safe") {
            mstore(0x00, 0x20) // Dynamic type relative offset
            mstore(0x20, 0x00) // Bytes length
            return(0x00, 0x40)
        }
    }

    /// @dev Load arbitrary storage slot from this contract, enables on-chain introspection without
    /// view methods.
    function extsload(uint256 slot) external view returns (uint256) {
        assembly ("memory-safe") {
            mstore(0x00, sload(slot))
            return(0x00, 0x20)
        }
    }

    function _validateAndExecuteToBOrders(CalldataReader reader, PairArray pairs)
        internal
        returns (CalldataReader)
    {
        CalldataReader end;
        (reader, end) = reader.readU24End();

        TypedDataHasher typedHasher = _erc712Hasher();
        ToBOrderBuffer memory buffer;
        buffer.init();

        // Purposefully devolve into an endless loop if the specified length isn't exactly used s.t.
        // `reader == end` at some point.
        while (reader != end) {
            reader = _validateAndExecuteToBOrder(reader, buffer, typedHasher, pairs);
        }

        return reader;
    }

    function _validateAndExecuteToBOrder(
        CalldataReader reader,
        ToBOrderBuffer memory buffer,
        TypedDataHasher typedHasher,
        PairArray pairs
    ) internal returns (CalldataReader) {
        // Load `TopOfBlockOrder` PADE variant map which will inform later variable-type encoding.
        ToBOrderVariantMap variantMap;
        {
            uint8 variantByte;
            (reader, variantByte) = reader.readU8();
            variantMap = ToBOrderVariantMap.wrap(variantByte);
        }

        buffer.useInternal = variantMap.useInternal();

        (reader, buffer.quantityIn) = reader.readU128();
        (reader, buffer.quantityOut) = reader.readU128();
        (reader, buffer.maxGasAsset0) = reader.readU128();
        // Decode, validate & apply gas fee.
        uint128 gasUsedAsset0;
        (reader, gasUsedAsset0) = reader.readU128();
        if (gasUsedAsset0 > buffer.maxGasAsset0) revert ToBGasUsedAboveMax();

        {
            uint16 pairIndex;
            (reader, pairIndex) = reader.readU16();
            (buffer.assetIn, buffer.assetOut) =
                pairs.get(pairIndex).getAssets(variantMap.zeroForOne());
        }

        (reader, buffer.recipient) =
            variantMap.recipientIsSome() ? reader.readAddr() : (reader, address(0));

        bytes32 orderHash = typedHasher.hashTypedData(buffer.hash());

        address from;
        (reader, from) = variantMap.isEcdsa()
            ? SignatureLib.readAndCheckEcdsa(reader, orderHash)
            : SignatureLib.readAndCheckERC1271(reader, orderHash);

        _invalidateOrderHash(orderHash, from);

        address to = buffer.recipient;
        assembly ("memory-safe") {
            to := or(mul(iszero(to), from), to)
        }

        if (variantMap.zeroForOne()) {
            buffer.quantityIn += gasUsedAsset0;
        } else {
            buffer.quantityOut -= gasUsedAsset0;
        }
        _settleOrderIn(from, buffer.assetIn, AmountIn.wrap(buffer.quantityIn), buffer.useInternal);
        _settleOrderOut(to, buffer.assetOut, AmountOut.wrap(buffer.quantityOut), buffer.useInternal);

        return reader;
    }

    function _validateAndExecuteUserOrders(CalldataReader reader, PairArray pairs)
        internal
        returns (CalldataReader)
    {
        TypedDataHasher typedHasher = _erc712Hasher();
        UserOrderBuffer memory buffer;

        CalldataReader end;
        (reader, end) = reader.readU24End();

        // Purposefully devolve into an endless loop if the specified length isn't exactly used s.t.
        // `reader == end` at some point.
        while (reader != end) {
            reader = _validateAndExecuteUserOrder(reader, buffer, typedHasher, pairs);
        }

        return reader;
    }

    function _validateAndExecuteUserOrder(
        CalldataReader reader,
        UserOrderBuffer memory buffer,
        TypedDataHasher typedHasher,
        PairArray pairs
    ) internal returns (CalldataReader) {
        UserOrderVariantMap variantMap;
        // Load variant map, ref id and set use internal.
        (reader, variantMap) = buffer.init(reader);

        // Load and lookup asset in/out and dependent values.
        PriceOutVsIn price;
        {
            uint256 priceOutVsIn;
            uint16 pairIndex;
            (reader, pairIndex) = reader.readU16();
            (buffer.assetIn, buffer.assetOut, priceOutVsIn) =
                pairs.get(pairIndex).getSwapInfo(variantMap.zeroForOne());
            price = PriceOutVsIn.wrap(priceOutVsIn);
        }

        (reader, buffer.minPrice) = reader.readU256();
        if (price.into() < buffer.minPrice) revert LimitViolated();

        (reader, buffer.recipient) =
            variantMap.recipientIsSome() ? reader.readAddr() : (reader, address(0));

        HookBuffer hook;
        (reader, hook, buffer.hookDataHash) = HookBufferLib.readFrom(reader, variantMap.noHook());

        // For flash orders sets the current block number as `validForBlock` so that it's
        // implicitly validated via hashing later.
        reader = buffer.readOrderValidation(reader, variantMap);
        AmountIn amountIn;
        AmountOut amountOut;
        (reader, amountIn, amountOut) = buffer.loadAndComputeQuantity(reader, variantMap, price);

        bytes32 orderHash = typedHasher.hashTypedData(buffer.structHash(variantMap));

        address from;
        (reader, from) = variantMap.isEcdsa()
            ? SignatureLib.readAndCheckEcdsa(reader, orderHash)
            : SignatureLib.readAndCheckERC1271(reader, orderHash);

        if (variantMap.isStanding()) {
            _checkDeadline(buffer.deadline_or_empty);
            _invalidateNonce(from, buffer.nonce_or_validForBlock);
        } else {
            _invalidateOrderHash(orderHash, from);
        }

        // Push before hook as a potential loan.
        address to = buffer.recipient;
        assembly ("memory-safe") {
            to := or(mul(iszero(to), from), to)
        }
        _settleOrderOut(to, buffer.assetOut, amountOut, buffer.useInternal);

        hook.tryTrigger(from);

        _settleOrderIn(from, buffer.assetIn, amountIn, buffer.useInternal);

        return reader;
    }

    function _domainNameAndVersion()
        internal
        pure
        override
        returns (string memory, string memory)
    {
        return ("Angstrom", "v1");
    }

    function _erc712Hasher() internal view returns (TypedDataHasher) {
        return TypedDataHasherLib.init(_domainSeparator());
    }
}

// ============================================================
// FILE: src/interfaces/IAngstromAuth.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {StoreKey} from "../types/StoreKey.sol";
import {PoolConfigStore} from "../libraries/PoolConfigStore.sol";

struct ConfigEntryUpdate {
    uint256 index;
    StoreKey key;
    uint24 bundleFee;
    uint24 unlockedFee;
    uint24 protocolUnlockedFee;
}

interface IAngstromAuth {
    function setController(address newController) external;

    function collect_unlock_swap_fees(address to, bytes calldata packed_assets) external;

    function configurePool(
        address assetA,
        address assetB,
        uint16 tickSpacing,
        uint24 bundleFee,
        uint24 unlockedFee,
        uint24 protocolUnlockedFee
    ) external;

    function removePool(StoreKey key, PoolConfigStore expectedStore, uint256 storeIndex) external;

    function batchUpdatePools(PoolConfigStore expected_store, ConfigEntryUpdate[] calldata updates)
        external;

    function pullFee(address asset, uint256 amount) external;

    function toggleNodes(address[] calldata nodes) external;

    function extsload(uint256 slot) external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/IAngstromComposable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @dev Expected return magic (`keccak256("Angstrom.hook.return-magic")[-4:]`).
uint32 constant EXPECTED_HOOK_RETURN_MAGIC = 0x24a2e44b;

/// @author philogy <https://github.com/philogy>
interface IAngstromComposable {
    function compose(address from, bytes calldata payload) external returns (uint32);
}

// ============================================================
// FILE: src/interfaces/IDaiPermit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author philogy <https://github.com/philogy>
interface IDaiPermit {
    function permit(
        address holder,
        address spender,
        uint256 nonce,
        uint256 expiry,
        bool allowed,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
}

// ============================================================
// FILE: src/interfaces/IERC2612.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author philogy <https://github.com/philogy>
interface IERC2612 {
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
}

// ============================================================
// FILE: src/interfaces/IHooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// Modified from v4-core's IHooks interface.

import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {BalanceDelta} from "v4-core/src/types/BalanceDelta.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {BeforeSwapDelta} from "v4-core/src/types/BeforeSwapDelta.sol";

interface IBeforeInitializeHook {
    /// @notice The hook called before the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @return bytes4 The function selector for the hook
    function beforeInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96)
        external
        returns (bytes4);
}

interface IAfterInitializeHook {
    /// @notice The hook called after the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @param tick The current tick after the state of a pool is initialized
    /// @return bytes4 The function selector for the hook
    function afterInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        returns (bytes4);
}

interface IBeforeAddLiquidityHook {
    /// @notice The hook called before liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);
}

interface IAfterAddLiquidityHook {
    /// @notice The hook called after liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param delta The caller's balance delta after adding liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);
}

interface IBeforeRemoveLiquidityHook {
    /// @notice The hook called before liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);
}

interface IAfterRemoveLiquidityHook {
    /// @notice The hook called after liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param delta The caller's balance delta after removing liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);
}

interface IBeforeSwapHook {
    /// @notice The hook called before a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BeforeSwapDelta The hook's delta in specified and unspecified currencies. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    /// @return uint24 Optionally override the lp fee, only used if three conditions are met: 1. the Pool has a dynamic fee, 2. the value's 2nd highest bit is set (23rd bit, 0x400000), and 3. the value is less than or equal to the maximum fee (1 million)
    function beforeSwap(
        address sender,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4, BeforeSwapDelta, uint24);
}

interface IAfterSwapHook {
    /// @notice The hook called after a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param delta The amount owed to the caller (positive) or owed to the pool (negative)
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return int128 The hook's delta in unspecified currency. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterSwap(
        address sender,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, int128);
}

interface IBeforeDonateHook {
    /// @notice The hook called before donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);
}

interface IAfterDonateHook {
    /// @notice The hook called after donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function afterDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);
}

// ============================================================
// FILE: src/interfaces/IUniV4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {Slot0} from "v4-core/src/types/Slot0.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";
import {TickLib} from "../libraries/TickLib.sol";

/// @dev Library/Interface that wraps Uniswap V4's `extsload` to add view calls. NOTE: While
/// technically a library, it behaves like an interface which is why it's here, under `/interfaces`.
library IUniV4 {
    using IUniV4 for IPoolManager;
    using TickLib for uint256;

    error ExtsloadFailed();

    /// @dev Selector of `IPoolManager.extsload`.
    uint256 internal constant EXTSLOAD_SELECTOR = 0x1e2eaeaf;

    uint256 private constant _OWNER_SLOT = 0;
    uint256 private constant _PROTOCOL_FEES_SLOT = 1;
    uint256 private constant _PROTOCOL_FEE_CONTROLLER_SLOT = 2;
    uint256 private constant _IS_OPERATOR_SLOT = 3;
    uint256 private constant _BALANCE_OF_SLOT = 4;
    uint256 private constant _ALLOWANCE_SLOT = 5;
    uint256 private constant _POOLS_SLOT = 6;

    uint256 private constant _POOL_STATE_SLOT0_OFFSET = 0;
    uint256 private constant _POOL_STATE_FEE0_OFFSET = 1;
    uint256 private constant _POOL_STATE_FEE1_OFFSET = 2;
    uint256 private constant _POOL_STATE_LIQUIDITY_OFFSET = 3;
    uint256 private constant _POOL_STATE_TICKS_OFFSET = 4;
    uint256 private constant _POOL_STATE_BITMAP_OFFSET = 5;
    uint256 private constant _POOL_STATE_POSITIONS_OFFSET = 6;

    uint256 private constant _POSITION_LIQUIDITY_OFFSET = 0;
    uint256 private constant _POSITION_FEE_GROWTH_OUTSIDE0_OFFSET = 1;
    uint256 private constant _POSITION_FEE_GROWTH_OUTSIDE1_OFFSET = 2;

    function gudExtsload(IPoolManager self, uint256 slot)
        internal
        view
        returns (uint256 rawValue)
    {
        assembly ("memory-safe") {
            mstore(0x20, slot)
            mstore(0x00, EXTSLOAD_SELECTOR)
            if iszero(staticcall(gas(), self, 0x1c, 0x24, 0x00, 0x20)) {
                mstore(0x00, 0x535cf94b /* ExtsloadFailed() */ )
                revert(0x1c, 0x04)
            }
            rawValue := mload(0x00)
        }
    }

    function computePoolStateSlot(IPoolManager, PoolId id) internal pure returns (uint256 slot) {
        assembly ("memory-safe") {
            mstore(0x00, id)
            mstore(0x20, _POOLS_SLOT)
            slot := keccak256(0x00, 0x40)
        }
    }

    /**
     * @dev WARNING: use of this method with a dirty `int16` for `wordPos` may be vulnerable as the
     * value is taken as is and used in assembly. If not sign extended will result in useless slots.
     */
    function computeBitmapWordSlot(IPoolManager, PoolId id, int16 wordPos)
        internal
        pure
        returns (uint256 slot)
    {
        assembly ("memory-safe") {
            // Pool state slot.
            mstore(0x00, id)
            mstore(0x20, _POOLS_SLOT)
            slot := keccak256(0x00, 0x40)
            // Compute relative map slot (Note: assumes `wordPos` is sanitized i.e. sign extended).
            mstore(0x00, wordPos)
            mstore(0x20, add(slot, _POOL_STATE_BITMAP_OFFSET))
            slot := keccak256(0x00, 0x40)
        }
    }

    function getSlot0(IPoolManager self, PoolId id) internal view returns (Slot0) {
        uint256 slot = self.computePoolStateSlot(id);
        return Slot0.wrap(bytes32(self.gudExtsload(slot)));
    }

    /**
     * @dev WARNING: use of this method with a dirty `int16` for `wordPos` may be vulnerable as the
     * value is taken as is and used in assembly. If not sign extended will result in useless slots.
     */
    function getPoolBitmapInfo(IPoolManager self, PoolId id, int16 wordPos)
        internal
        view
        returns (uint256)
    {
        uint256 slot = self.computeBitmapWordSlot(id, wordPos);
        return self.gudExtsload(slot);
    }

    /**
     * @dev WARNING: Calling this method without first sanitizing `tick` (to ensure it's sign
     * extended) is unsafe.
     */
    function getTickLiquidity(IPoolManager self, PoolId id, int24 tick)
        internal
        view
        returns (uint128 liquidityGross, int128 liquidityNet)
    {
        assembly ("memory-safe") {
            // Pool state slot derivation.
            mstore(0x20, _POOLS_SLOT)
            mstore(0x00, id)
            // Compute relative map slot (WARNING: assumes `tick` is sanitized i.e. sign extended).
            mstore(0x20, add(keccak256(0x00, 0x40), _POOL_STATE_TICKS_OFFSET))
            mstore(0x00, tick)
            // Encode calldata.
            mstore(0x20, keccak256(0x00, 0x40))
            mstore(0x00, EXTSLOAD_SELECTOR)
            if iszero(staticcall(gas(), self, 0x1c, 0x24, 0x00, 0x20)) {
                mstore(0x00, 0x535cf94b /* ExtsloadFailed() */ )
                revert(0x1c, 0x04)
            }
            let packed := mload(0x00)
            liquidityGross := and(packed, 0xffffffffffffffffffffffffffffffff)
            liquidityNet := sar(128, packed)
        }
    }

    function getPositionLiquidity(IPoolManager self, PoolId id, bytes32 positionKey)
        internal
        view
        returns (uint128 liquidity)
    {
        assembly ("memory-safe") {
            // Pool state slot.
            mstore(0x20, _POOLS_SLOT)
            mstore(0x00, id)
            // Position state slot.
            mstore(0x20, add(keccak256(0x00, 0x40), _POOL_STATE_POSITIONS_OFFSET))
            mstore(0x00, positionKey)
            // Inlined gudExtsload.
            mstore(0x20, keccak256(0x00, 0x40))
            mstore(0x00, EXTSLOAD_SELECTOR)
            if iszero(staticcall(gas(), self, 0x1c, 0x24, 0x00, 0x20)) {
                mstore(0x00, 0x535cf94b /* ExtsloadFailed() */ )
                revert(0x1c, 0x04)
            }
            liquidity := and(0xffffffffffffffffffffffffffffffff, mload(0x00))
        }
    }

    function getPoolLiquidity(IPoolManager self, PoolId id) internal view returns (uint128) {
        uint256 slot = self.computePoolStateSlot(id);
        unchecked {
            uint256 rawLiquidity = self.gudExtsload(slot + _POOL_STATE_LIQUIDITY_OFFSET);
            return uint128(rawLiquidity);
        }
    }

    /// @dev WARNING: Expects `owner` & `asset` to not have dirty bytes.
    function getDelta(IPoolManager self, address owner, address asset)
        internal
        view
        returns (int256 delta)
    {
        bytes32 tslot;
        assembly ("memory-safe") {
            mstore(0x00, owner)
            mstore(0x20, asset)
            tslot := keccak256(0x00, 0x40)
        }
        bytes32 value = self.exttload(tslot);
        delta = int256(uint256(value));
    }

    function isInitialized(IPoolManager self, PoolId id, int24 tick, int24 tickSpacing)
        internal
        view
        returns (bool initialized)
    {
        (int16 wordPos, uint8 bitPos) = TickLib.position(TickLib.compress(tick, tickSpacing));
        initialized = self.getPoolBitmapInfo(id, wordPos).isInitialized(bitPos);
    }

    /// @dev Gets the next tick down such that `tick ∉ [nextTick; nextTick + TICK_SPACING)`
    function getNextTickLt(IPoolManager self, PoolId id, int24 tick, int24 tickSpacing)
        internal
        view
        returns (bool initialized, int24 nextTick)
    {
        (int16 wordPos, uint8 bitPos) = TickLib.position(TickLib.compress(tick, tickSpacing) - 1);
        (initialized, bitPos) = self.getPoolBitmapInfo(id, wordPos).nextBitPosLte(bitPos);
        nextTick = TickLib.toTick(wordPos, bitPos, tickSpacing);
    }

    function getNextTickLe(IPoolManager self, PoolId id, int24 tick, int24 tickSpacing)
        internal
        view
        returns (bool initialized, int24 nextTick)
    {
        (int16 wordPos, uint8 bitPos) = TickLib.position(TickLib.compress(tick, tickSpacing));
        (initialized, bitPos) = self.getPoolBitmapInfo(id, wordPos).nextBitPosLte(bitPos);
        nextTick = TickLib.toTick(wordPos, bitPos, tickSpacing);
    }

    function getNextTickGt(IPoolManager self, PoolId id, int24 tick, int24 tickSpacing)
        internal
        view
        returns (bool initialized, int24 nextTick)
    {
        (int16 wordPos, uint8 bitPos) = TickLib.position(TickLib.compress(tick, tickSpacing) + 1);
        (initialized, bitPos) = self.getPoolBitmapInfo(id, wordPos).nextBitPosGte(bitPos);
        nextTick = TickLib.toTick(wordPos, bitPos, tickSpacing);
    }
}

// ============================================================
// FILE: src/libraries/MixedSignLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author philogy <https://github.com/philogy>
/// @dev Adds helper methods to enable safe, checked arithmetic between signed & unsigned types. Not
/// generalized as only these 4 particular instantiations were required.
library MixedSignLib {
    error ArithmeticOverflowUnderflow();

    function add(int256 x, uint256 y) internal pure returns (int256 z) {
        assembly ("memory-safe") {
            z := add(x, y)

            if slt(z, x) {
                mstore(0x00, 0xc9654ed4 /* ArithmeticOverflowUnderflow() */ )
                revert(0x1c, 0x04)
            }
        }
    }

    function sub(int256 x, uint256 y) internal pure returns (int256 z) {
        assembly ("memory-safe") {
            z := sub(x, y)

            if sgt(z, x) {
                mstore(0x00, 0xc9654ed4 /* ArithmeticOverflowUnderflow() */ )
                revert(0x1c, 0x04)
            }
        }
    }

    function add(uint128 x, int128 y) internal pure returns (uint128 z) {
        assembly ("memory-safe") {
            z := add(x, y)

            if shr(128, z) {
                mstore(0x00, 0xc9654ed4 /* ArithmeticOverflowUnderflow() */ )
                revert(0x1c, 0x04)
            }
        }
    }

    function sub(uint128 x, int128 y) internal pure returns (uint128 z) {
        assembly ("memory-safe") {
            z := sub(x, y)

            if shr(128, z) {
                mstore(0x00, 0xc9654ed4 /* ArithmeticOverflowUnderflow() */ )
                revert(0x1c, 0x04)
            }
        }
    }
}

// ============================================================
// FILE: src/libraries/PoolConfigStore.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {
    ConfigEntry,
    ConfigEntryLib,
    ENTRY_SIZE,
    KEY_MASK,
    TICK_SPACING_OFFSET,
    TICK_SPACING_MASK,
    FEE_OFFSET,
    FEE_MASK
} from "../types/ConfigEntry.sol";
import {StoreKey} from "../types/StoreKey.sol";
import {ConfigBuffer} from "../types/ConfigBuffer.sol";

type PoolConfigStore is address;

uint256 constant MEMORY_OFFSET_OFFSET = 192;
uint256 constant STORE_ADDR_OFFSET = 32;
uint256 constant SIZE_OFFSET = 0;
uint256 constant SIZE_MASK = 0xffffffff;
uint256 constant STORE_HEADER_SIZE = 1;

using PoolConfigStoreLib for PoolConfigStore global;

using {PoolConfigStore_neq as !=} for PoolConfigStore global;

function PoolConfigStore_neq(PoolConfigStore a, PoolConfigStore b) pure returns (bool neq) {
    return PoolConfigStore.unwrap(a) != PoolConfigStore.unwrap(b);
}

/// @author philogy <https://github.com/philogy>
/// @dev Handles deploying and querying of "pool config store contracts", SSTORE2 contracts that
/// store the list of configured pools in their bytecode for the sake of saving gas (cold contract
/// code read costs `2600 + 3 * n` vs. `2100 * ceil(n / 32)` for storage, where `n` is the number of
/// bytes to be read). Since the pool config is read with every bundle and we expect to very quickly
/// have more than 1 pair leveraging the "more expensive writes for cheaper reads" trade-off is worth it.
library PoolConfigStoreLib {
    PoolConfigStore internal constant NULL_CONFIG_CACHE = PoolConfigStore.wrap(address(0));

    error NoEntry();

    error FailedToDeployNewStore();

    /*
     * @dev Generated from ./StoreDeployer.huff using https://github.com/Philogy/py-huff (commit: 44bbb4b)
     *  PC   OP BYTES   INSTRUCTION   STACK (Top -> Down)          COMMENT
     * ----------------------------------------------------------------------------------------------
     * Constructor Code
     *   0   600b       PUSH1 11      [11]                         Push constructor size
     *   2   38         CODESIZE      [codesize, 11]               Sum of all bytes including runtime
     *   3   03         SUB           [run_size]                   Subtracting to compute the runtime size
     *   4   80         DUP1          [run_size, run_size]         Duplicate for later
     *   5   600b       PUSH1 11      [11, run_size, run_size]     Push constructor size again
     *   7   5f         PUSH0         [0, 11, run_size, run_size]
     *   8   39         CODECOPY      [run_size]                   Copy the runtime code into memory
     *                                                             (`memory[0:0+run_size] = code[11:11+run_size]`)
     *   9   5f         PUSH0         [0, run_size]
     *  10   f3         RETURN        []                           Return runtime from memory as final code
     *                                                             (`runtime = memory[0:runsize]`)
     * Runtime Code
     *   0   00         STOP          []                           Stop execution. Ensure that even if
     *                                                             called the store contract cannot do
     *                                                             anything like SELFDESTRUCTing itself.
     **/
    uint256 internal constant STORE_DEPLOYER = 0x600b380380600b5f395ff300;
    uint256 internal constant STORE_DEPLOYER_BYTES = 12;

    /// @dev Copy to the entries from the store to a new buffer. Does
    function read_to_buffer(PoolConfigStore self) internal view returns (ConfigBuffer memory) {
        return self.read_to_buffer(0);
    }

    function read_to_buffer(PoolConfigStore self, uint256 extra_capacity)
        internal
        view
        returns (ConfigBuffer memory buffer)
    {
        uint256 entry_count = self.totalEntries();
        uint256 capacity = entry_count + extra_capacity;

        buffer.reset_and_alloc_capacity(capacity);

        // Copy store contents into buffer.
        ConfigEntry[] memory entries = buffer.entries;
        assembly ("memory-safe") {
            // Copy all the entries from store into the buffer.
            let bytes_to_copy := mul(entry_count, ENTRY_SIZE)
            extcodecopy(self, add(entries, 0x20), STORE_HEADER_SIZE, bytes_to_copy)
        }

        // Safety: We allocated at least `entry_count` capacity and have copied exactly
        // `entry_count` valid entries from the store into the buffer.
        buffer.unsafe_resize(entry_count);
    }

    function store_from_buffer(ConfigBuffer memory buffer)
        internal
        returns (PoolConfigStore new_store)
    {
        ConfigEntry[] memory entries = buffer.entries;
        uint256 entry_count = entries.length;

        assembly ("memory-safe") {
            // Temporarily overwrite `entries.length` with deployer bytecode.
            mstore(entries, STORE_DEPLOYER)
            // Create store contract.
            new_store :=
                create(
                    0,
                    add(entries, sub(0x20, STORE_DEPLOYER_BYTES)),
                    add(STORE_DEPLOYER_BYTES, mul(entry_count, ENTRY_SIZE))
                )
            // Reset length to previous value.
            mstore(entries, entry_count)
        }

        /// Verify that the deployment was successful.
        if (PoolConfigStore.unwrap(new_store) == address(0)) {
            revert FailedToDeployNewStore();
        }
    }

    function totalEntries(PoolConfigStore self) internal view returns (uint256) {
        return PoolConfigStore.unwrap(self).code.length / ENTRY_SIZE;
    }

    function getWithDefaultEmpty(PoolConfigStore self, StoreKey key, uint256 index)
        internal
        view
        returns (ConfigEntry entry)
    {
        assembly ("memory-safe") {
            // Copy from store into scratch space.
            extcodecopy(self, 0x00, add(STORE_HEADER_SIZE, mul(ENTRY_SIZE, index)), ENTRY_SIZE)
            // Zero out entry if keys do not match.
            entry := mload(0x00)
            entry := mul(entry, eq(key, and(entry, KEY_MASK)))
        }
    }

    function get(PoolConfigStore self, StoreKey key, uint256 index)
        internal
        view
        returns (int24 tickSpacing, uint24 bundleFee)
    {
        ConfigEntry entry = self.getWithDefaultEmpty(key, index);
        if (entry.isEmpty()) revert NoEntry();
        tickSpacing = int24(uint24(entry.tickSpacing()));
        bundleFee = entry.bundleFee();
    }

    function into(PoolConfigStore self) internal pure returns (address) {
        return PoolConfigStore.unwrap(self);
    }
}

// ============================================================
// FILE: src/libraries/RayMathLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {FixedPointMathLib} from "solady/src/utils/FixedPointMathLib.sol";

/// @author philogy <https://github.com/philogy>
/// @dev Similar to "wad math" except that the decimals used is a bit higher for the sake of
/// precision. Done to accommodate tokens that maybe have very large denominations.
library RayMathLib {
    using FixedPointMathLib for uint256;

    uint256 internal constant RAY = 1e27;
    uint256 internal constant RAY_2 = 1e54;

    function mulRayDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return x * y / RAY;
    }

    function mulRayUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return x.mulDivUp(y, RAY);
    }

    function divRayDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return x * RAY / y;
    }

    function divRayUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return x.mulDivUp(RAY, y);
    }

    function invRayUnchecked(uint256 x) internal pure returns (uint256 y) {
        assembly ("memory-safe") {
            y := div(RAY_2, x)
        }
    }
}

// ============================================================
// FILE: src/libraries/SignatureLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CalldataReader} from "../types/CalldataReader.sol";
import {SignatureCheckerLib} from "solady/src/utils/SignatureCheckerLib.sol";

/// @author philogy <https://github.com/philogy>
library SignatureLib {
    error InvalidSignature();

    uint256 internal constant ECRECOVER_ADDR = 1;

    function readAndCheckEcdsa(CalldataReader reader, bytes32 hash)
        internal
        view
        returns (CalldataReader, address from)
    {
        assembly ("memory-safe") {
            let free := mload(0x40)
            mstore(free, hash)
            // Ensure next word is clear
            mstore(add(free, 0x20), 0)
            // Read signature.
            calldatacopy(add(free, 0x3f), reader, 65)
            reader := add(reader, 65)
            // Call ec-Recover pre-compile (addr: 0x01).
            // Credit to Vectorized's ECDSA in Solady: https://github.com/Vectorized/solady/blob/a95f6714868cfe5d590145f936d0661bddff40d2/src/utils/ECDSA.sol#L108-L123
            from := mload(staticcall(gas(), ECRECOVER_ADDR, free, 0x80, 0x01, 0x20))
            if iszero(returndatasize()) {
                mstore(0x00, 0x8baa579f /* InvalidSignature() */ )
                revert(0x1c, 0x04)
            }
        }

        return (reader, from);
    }

    function readAndCheckERC1271(CalldataReader reader, bytes32 hash)
        internal
        view
        returns (CalldataReader, address from)
    {
        (reader, from) = reader.readAddr();
        bytes calldata signature;
        (reader, signature) = reader.readBytes();
        if (!SignatureCheckerLib.isValidERC1271SignatureNowCalldata(from, hash, signature)) {
            revert InvalidSignature();
        }
        return (reader, from);
    }
}

// ============================================================
// FILE: src/libraries/TickLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {LibBit} from "solady/src/utils/LibBit.sol";

/// @author philogy <https://github.com/philogy>
library TickLib {
    int24 internal constant MIN_TICK = -887272;
    int24 internal constant MAX_TICK = 887272;

    function isInitialized(uint256 word, uint8 bitPos) internal pure returns (bool) {
        return word & (uint256(1) << bitPos) != 0;
    }

    function nextBitPosLte(uint256 word, uint8 bitPos)
        internal
        pure
        returns (bool initialized, uint8 nextBitPos)
    {
        unchecked {
            uint8 offset = 0xff - bitPos;

            uint256 relativePos = LibBit.fls(word << offset);
            initialized = relativePos != 256;
            nextBitPos = initialized ? uint8(relativePos - offset) : 0;
        }
    }

    function nextBitPosGte(uint256 word, uint8 bitPos)
        internal
        pure
        returns (bool initialized, uint8 nextBitPos)
    {
        unchecked {
            uint256 relativePos = LibBit.ffs(word >> bitPos);
            initialized = relativePos != 256;
            nextBitPos = initialized ? uint8(relativePos + bitPos) : type(uint8).max;
        }
    }

    function compress(int24 tick, int24 tickSpacing) internal pure returns (int24 compressed) {
        assembly ("memory-safe") {
            compressed := sub(sdiv(tick, tickSpacing), slt(smod(tick, tickSpacing), 0))
        }
    }

    /// @dev Normalize tick to its tick boundary (rounding towards negative infinity). WARN: Can underflow
    /// for values of `tick < mul(sdiv(type(int24).min, tickSpacing), tickSpacing)`.
    function normalizeUnchecked(int24 tick, int24 tickSpacing)
        internal
        pure
        returns (int24 normalized)
    {
        assembly ("memory-safe") {
            normalized :=
                mul(sub(sdiv(tick, tickSpacing), slt(smod(tick, tickSpacing), 0)), tickSpacing)
        }
    }

    function position(int24 compressed) internal pure returns (int16 wordPos, uint8 bitPos) {
        assembly ("memory-safe") {
            wordPos := sar(8, compressed)
            bitPos := and(compressed, 0xff)
        }
    }

    function toTick(int16 wordPos, uint8 bitPos, int24 tickSpacing) internal pure returns (int24) {
        return (int24(wordPos) * 256 + int24(uint24(bitPos))) * tickSpacing;
    }
}

// ============================================================
// FILE: src/libraries/X128MathLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author philogy <https://github.com/philogy>
library X128MathLib {
    error FullMulX128Failed();

    /// @dev Computes `(numerator * 2**128) / denominator` returning `0` if `denominator = 0`
    /// instead of reverting.
    function flatDivX128(uint128 numerator, uint256 denominator)
        internal
        pure
        returns (uint256 result)
    {
        assembly ("memory-safe") {
            result := div(shl(128, numerator), denominator)
        }
    }

    /// @dev Compute `floor((x * y) / 2**128)` with full precision. Revert if result is larger than / 256 bits.
    function fullMulX128(uint256 x, uint256 y) internal pure returns (uint256 z) {
        // Credit to solady under MIT license (https://github.com/Vectorized/solady/blob/7deab021af0426307ae79d091c4d1e26e9e89cf0/src/utils/FixedPointMathLib.sol).
        assembly ("memory-safe") {
            // Reuse `z` to store lower 256 bits of `x * y`.
            z := mul(x, y)
            for {} 1 {} {
                // We can skip the fancy 512-bit stuff if the 256-bit mul didn't overflow.
                if iszero(or(iszero(x), eq(div(z, x), y))) {
                    // Use mathemagic to compute the upper 256 bits of `x * y`.
                    // Credit to Remco Bloeman under MIT License: https://xn--2-umb.com/17/chinese-remainder-theorem/.
                    let mm := mulmod(x, y, not(0))
                    let p1 := sub(mm, add(z, lt(mm, z))) // Upper 256 bits of `x * y`.

                    // We now have the 512-bit numerator (`x * y`) in (p1, z):
                    // numerator:            |        p1        |       z       |
                    // In 128-bit chunks:    |  p1_0  ¦   p1_1  |  z_0  ¦  z_1  |
                    // Right shifted result: |    0   ¦   p1_0  |  p1_1 ¦  z_0  |
                    // The lower 128 bits of `z` (z_1) are part of the fraction which `floor` discards.

                    // We check the final result doesn't overflow by checking that p1_0 = 0.
                    if iszero(lt(p1, shl(128, 1))) {
                        mstore(0x00, 0xc56a0159 /* FullMulX128Failed() */ )
                        revert(0x1c, 0x04)
                    }

                    // We now know that our result doesn't overflow.
                    // Non-overflowing result: |    0   ¦    0    |  p1_1  ¦   z_0   |
                    // We compute p1_1 and z_0 and slice together.
                    z := add(shl(128, p1), shr(128, z))
                    break
                }

                z := shr(128, z)
                break
            }
        }
    }
}

// ============================================================
// FILE: src/modules/GrowthOutsideUpdater.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {PoolId} from "v4-core/src/types/PoolId.sol";
import {PoolRewards, REWARD_GROWTH_SIZE} from "../types/PoolRewards.sol";
import {CalldataReader} from "../types/CalldataReader.sol";
import {IPoolManager, IUniV4} from "../interfaces/IUniV4.sol";
import {UniConsumer} from "./UniConsumer.sol";

import {TickLib} from "../libraries/TickLib.sol";
import {MixedSignLib} from "../libraries/MixedSignLib.sol";
import {X128MathLib} from "../libraries/X128MathLib.sol";

/// @author philogy <https://github.com/philogy>
/// @dev Core logic responsible for updating reward accumulators to distribute rewards.
abstract contract GrowthOutsideUpdater is UniConsumer {
    using IUniV4 for IPoolManager;
    using TickLib for uint256;

    error WrongEndLiquidity(uint128 endLiquidity, uint128 actualCurrentLiquidity);
    error JustInTimeLiquidityChange();

    // Stack too deep shenanigan.
    struct RewardParams {
        PoolId id;
        int24 tickSpacing;
        int24 currentTick;
        uint256 rewardChecksum;
    }

    function _decodeAndReward(
        bool currentOnly,
        CalldataReader reader,
        PoolRewards storage poolRewards_,
        PoolId id,
        int24 tickSpacing,
        int24 currentTick
    ) internal returns (CalldataReader, uint256) {
        if (currentOnly) {
            uint128 amount;
            (reader, amount) = reader.readU128();
            uint128 expectedLiquidity;
            (reader, expectedLiquidity) = reader.readU128();
            // we sometimes have to do empty updates for swap encoding
            // purposes
            if (amount == 0 || expectedLiquidity == 0) {
                return (reader, amount);
            }

            uint128 pooLiquidity = UNI_V4.getPoolLiquidity(id);
            if (expectedLiquidity != pooLiquidity) {
                revert JustInTimeLiquidityChange();
            }
            unchecked {
                poolRewards_.globalGrowth += X128MathLib.flatDivX128(amount, pooLiquidity);
            }

            return (reader, amount);
        }

        uint256 cumulativeGrowth;
        uint128 endLiquidity;

        int24 startTick;
        (reader, startTick) = reader.readI24();
        uint128 liquidity;
        // start liq
        (reader, liquidity) = reader.readU128();
        (CalldataReader newReader, CalldataReader amountsEnd) = reader.readU24End();

        // Stack too deep shenanigan.
        PoolRewards storage poolRewards = poolRewards_;

        uint256 total;
        RewardParams memory pool = RewardParams(id, tickSpacing, currentTick, 0);
        (newReader, total, cumulativeGrowth, endLiquidity) = startTick <= pool.currentTick
            ? _rewardBelow(poolRewards.rewardGrowthOutside, startTick, newReader, liquidity, pool)
            : _rewardAbove(poolRewards.rewardGrowthOutside, startTick, newReader, liquidity, pool);

        uint128 donateToCurrent;
        (newReader, donateToCurrent) = newReader.readU128();
        unchecked {
            cumulativeGrowth += X128MathLib.flatDivX128(donateToCurrent, endLiquidity);
        }
        total += donateToCurrent;

        newReader.requireAtEndOf(amountsEnd);

        uint128 currentLiquidity = UNI_V4.getPoolLiquidity(pool.id);
        if (endLiquidity != currentLiquidity) {
            revert WrongEndLiquidity(endLiquidity, currentLiquidity);
        }

        {
            uint160 expectedRewardChecksum;
            (newReader, expectedRewardChecksum) = newReader.readU160();
            if (expectedRewardChecksum != pool.rewardChecksum >> 96) {
                revert JustInTimeLiquidityChange();
            }
        }

        unchecked {
            poolRewards.globalGrowth += cumulativeGrowth;
        }

        return (newReader, total);
    }

    function _rewardBelow(
        uint256[REWARD_GROWTH_SIZE] storage rewardGrowthOutside,
        int24 rewardTick,
        CalldataReader reader,
        uint128 liquidity,
        RewardParams memory pool
    ) internal returns (CalldataReader, uint256, uint256, uint128) {
        bool initialized = true;
        uint256 total = 0;
        uint256 cumulativeGrowth = 0;
        uint256 rewardChecksum = 0;

        do {
            if (initialized) {
                uint128 amount;
                (reader, amount) = reader.readU128();

                total += amount;
                unchecked {
                    cumulativeGrowth += X128MathLib.flatDivX128(amount, liquidity);
                    rewardGrowthOutside[uint24(rewardTick)] += cumulativeGrowth;
                }

                (, int128 netLiquidity) = UNI_V4.getTickLiquidity(pool.id, rewardTick);
                liquidity = MixedSignLib.add(liquidity, netLiquidity);

                assembly ("memory-safe") {
                    mstore(0x13, rewardTick)
                    mstore(0x10, liquidity)
                    mstore(0x00, rewardChecksum)
                    rewardChecksum := keccak256(0x00, 0x33)
                }
            }
            (initialized, rewardTick) = UNI_V4.getNextTickGt(pool.id, rewardTick, pool.tickSpacing);
        } while (rewardTick <= pool.currentTick);

        pool.rewardChecksum = rewardChecksum;

        return (reader, total, cumulativeGrowth, liquidity);
    }

    function _rewardAbove(
        uint256[REWARD_GROWTH_SIZE] storage rewardGrowthOutside,
        int24 rewardTick,
        CalldataReader reader,
        uint128 liquidity,
        RewardParams memory pool
    ) internal returns (CalldataReader, uint256, uint256, uint128) {
        bool initialized = true;
        uint256 total = 0;
        uint256 cumulativeGrowth = 0;
        uint256 rewardChecksum = 0;

        do {
            if (initialized) {
                uint128 amount;
                (reader, amount) = reader.readU128();

                total += amount;
                unchecked {
                    cumulativeGrowth += X128MathLib.flatDivX128(amount, liquidity);
                    rewardGrowthOutside[uint24(rewardTick)] += cumulativeGrowth;
                }

                (, int128 netLiquidity) = UNI_V4.getTickLiquidity(pool.id, rewardTick);
                liquidity = MixedSignLib.sub(liquidity, netLiquidity);

                assembly ("memory-safe") {
                    mstore(0x13, rewardTick)
                    mstore(0x10, liquidity)
                    mstore(0x00, rewardChecksum)
                    rewardChecksum := keccak256(0x00, 0x33)
                }
            }
            (initialized, rewardTick) = UNI_V4.getNextTickLt(pool.id, rewardTick, pool.tickSpacing);
        } while (rewardTick > pool.currentTick);

        pool.rewardChecksum = rewardChecksum;

        return (reader, total, cumulativeGrowth, liquidity);
    }
}

// ============================================================
// FILE: src/modules/OrderInvalidation.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author philogy <https://github.com/philogy>
abstract contract OrderInvalidation {
    error NonceReuse();
    error OrderAlreadyExecuted();
    error Expired();

    /// @dev `keccak256("angstrom-v1_0.unordered-nonces.slot")[0:4]`
    uint256 private constant UNORDERED_NONCES_SLOT = 0xdaa050e9;

    function invalidateNonce(uint64 nonce) external {
        _invalidateNonce(msg.sender, nonce);
    }

    function _checkDeadline(uint256 deadline) internal view {
        if (block.timestamp > deadline) revert Expired();
    }

    function _invalidateNonce(address owner, uint64 nonce) internal {
        assembly ("memory-safe") {
            mstore(12, nonce)
            mstore(4, UNORDERED_NONCES_SLOT)
            mstore(0, owner)
            // Memory slice implicitly chops off last byte of `nonce` so that it's the nonce word
            // index (nonce >> 8).
            let bitmapPtr := keccak256(12, 31)
            let flag := shl(and(nonce, 0xff), 1)
            let updated := xor(sload(bitmapPtr), flag)

            if iszero(and(updated, flag)) {
                mstore(0x00, 0x8cb88872 /* NonceReuse() */ )
                revert(0x1c, 0x04)
            }

            sstore(bitmapPtr, updated)
        }
    }

    function _invalidateOrderHash(bytes32 orderHash, address from) internal {
        assembly ("memory-safe") {
            mstore(20, from)
            mstore(0, orderHash)
            let slot := keccak256(0, 52)
            if tload(slot) {
                mstore(0x00, 0x8a2ef116 /* OrderAlreadyExecuted() */ )
                revert(0x1c, 0x04)
            }
            tstore(slot, 1)
        }
    }
}

// ============================================================
// FILE: src/modules/PermitSubmitterHook.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {
    IAngstromComposable, EXPECTED_HOOK_RETURN_MAGIC
} from "../interfaces/IAngstromComposable.sol";
import {IERC2612} from "../interfaces/IERC2612.sol";
import {IDaiPermit} from "../interfaces/IDaiPermit.sol";
import {CalldataReader, CalldataReaderLib} from "../types/CalldataReader.sol";

/// @author philogy <https://github.com/philogy>
abstract contract PermitSubmitterHook is IAngstromComposable {
    uint256 internal constant ERC2612_INFINITE = 0x00;
    uint256 internal constant ERC2612_SPECIFIC = 0x01;
    uint256 internal constant DAI_INFINITE = 0x02;

    error InvalidPermitType(uint8);

    function compose(address from, bytes calldata payload) external override returns (uint32) {
        CalldataReader reader = CalldataReaderLib.from(payload);
        uint8 permitType;
        (reader, permitType) = reader.readU8();

        if (permitType == ERC2612_INFINITE) {
            address token;
            (reader, token) = reader.readAddr();
            uint40 deadline;
            (reader, deadline) = reader.readU40();
            uint8 v;
            (reader, v) = reader.readU8();
            uint256 r;
            (reader, r) = reader.readU256();
            uint256 s;
            (reader, s) = reader.readU256();
            IERC2612(token).permit(
                from, msg.sender, type(uint256).max, deadline, v, bytes32(r), bytes32(s)
            );
        } else if (permitType == ERC2612_SPECIFIC) {
            address token;
            (reader, token) = reader.readAddr();
            uint128 value;
            (reader, value) = reader.readU128();
            uint40 deadline;
            (reader, deadline) = reader.readU40();
            uint8 v;
            (reader, v) = reader.readU8();
            uint256 r;
            (reader, r) = reader.readU256();
            uint256 s;
            (reader, s) = reader.readU256();
            IERC2612(token).permit(from, msg.sender, value, deadline, v, bytes32(r), bytes32(s));
        } else if (permitType == DAI_INFINITE) {
            address token;
            (reader, token) = reader.readAddr();
            uint32 nonce;
            (reader, nonce) = reader.readU32();
            uint40 deadline;
            (reader, deadline) = reader.readU40();
            uint8 v;
            (reader, v) = reader.readU8();
            uint256 r;
            (reader, r) = reader.readU256();
            uint256 s;
            (reader, s) = reader.readU256();
            IDaiPermit(token).permit(
                from, msg.sender, nonce, deadline, true, v, bytes32(r), bytes32(s)
            );
        } else {
            revert InvalidPermitType(permitType);
        }

        reader.requireAtEndOf(payload);

        return EXPECTED_HOOK_RETURN_MAGIC;
    }
}

// ============================================================
// FILE: src/modules/PoolUpdates.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {GrowthOutsideUpdater} from "./GrowthOutsideUpdater.sol";
import {UniConsumer} from "./UniConsumer.sol";
import {Settlement} from "./Settlement.sol";
import {TopLevelAuth} from "./TopLevelAuth.sol";
import {IBeforeAddLiquidityHook, IBeforeRemoveLiquidityHook} from "../interfaces/IHooks.sol";

import {PairArray} from "../types/Pair.sol";
import {CalldataReader} from "../types/CalldataReader.sol";
import {PoolRewards} from "../types/PoolRewards.sol";
import {Positions, Position} from "../types/Positions.sol";
import {SwapCall, SwapCallLib} from "../types/SwapCall.sol";
import {PoolUpdateVariantMap} from "../types/PoolUpdateVariantMap.sol";

import {SignedUnsignedLib} from "super-sol/libraries/SignedUnsignedLib.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";
import {IUniV4} from "../interfaces/IUniV4.sol";
import {IPoolManager} from "../interfaces/IUniV4.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {Currency} from "v4-core/src/types/Currency.sol";
import {FixedPointMathLib} from "solady/src/utils/FixedPointMathLib.sol";
import {X128MathLib} from "../libraries/X128MathLib.sol";
import {SafeCastLib} from "solady/src/utils/SafeCastLib.sol";

/// @author philogy <https://github.com/philogy>
/// @dev Top-level entry point for updating any state related to the underlying hooked Uniswap V4
/// pools. Updates individual positions rewards, initiates swaps and reward distribution.
abstract contract PoolUpdates is
    UniConsumer,
    GrowthOutsideUpdater,
    TopLevelAuth,
    Settlement,
    IBeforeAddLiquidityHook,
    IBeforeRemoveLiquidityHook
{
    using SafeTransferLib for address;
    using X128MathLib for uint256;
    using SafeCastLib for uint256;

    using IUniV4 for IPoolManager;
    using SignedUnsignedLib for *;

    Positions internal positions;
    mapping(PoolId id => PoolRewards) internal poolRewards;

    /// @dev Maintain reward growth & `poolRewards` values such that no one's owed rewards change.
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata
    ) external override returns (bytes4) {
        _onlyUniV4();

        PoolId id = _toId(key);
        PoolRewards storage rewards = poolRewards[id];

        uint256 growthInside;
        {
            int24 currentTick = UNI_V4.getSlot0(id).tick();
            uint256 lowerGrowth = rewards.rewardGrowthOutside[uint24(params.tickLower)];
            uint256 upperGrowth = rewards.rewardGrowthOutside[uint24(params.tickUpper)];

            if (currentTick < params.tickLower) {
                unchecked {
                    growthInside = lowerGrowth - upperGrowth;
                }
            } else if (params.tickUpper <= currentTick) {
                // Following Uniswap's convention, if tick is below and uninitialized initialize growth
                // outside to global accumulator.
                if (!UNI_V4.isInitialized(id, params.tickLower, key.tickSpacing)) {
                    rewards.rewardGrowthOutside[uint24(params.tickLower)] =
                        lowerGrowth = rewards.globalGrowth;
                }
                if (!UNI_V4.isInitialized(id, params.tickUpper, key.tickSpacing)) {
                    rewards.rewardGrowthOutside[uint24(params.tickUpper)] =
                        upperGrowth = rewards.globalGrowth;
                }
                unchecked {
                    growthInside = upperGrowth - lowerGrowth;
                }
            } else {
                if (!UNI_V4.isInitialized(id, params.tickLower, key.tickSpacing)) {
                    rewards.rewardGrowthOutside[uint24(params.tickLower)] =
                        lowerGrowth = rewards.globalGrowth;
                }
                unchecked {
                    growthInside = rewards.globalGrowth - lowerGrowth - upperGrowth;
                }
            }
        }

        (Position storage position, bytes32 positionKey) =
            positions.get(id, sender, params.tickLower, params.tickUpper, params.salt);

        uint128 lastLiquidity = UNI_V4.getPositionLiquidity(id, positionKey);
        uint128 liquidityDelta = uint128(uint256(params.liquidityDelta));
        uint128 newLiquidity = lastLiquidity + liquidityDelta;

        if (lastLiquidity == 0) {
            position.lastGrowthInside = growthInside;
        } else {
            // We want to update `lastGrowthInside` such that any previously accrued rewards are
            // preserved:
            // rewards' == rewards
            // (growth_inside - last') * L' = (growth_inside - last) * L
            //  growth_inside - last' = (growth_inside - last) * L / L'
            // last' = growth_inside - (growth_inside - last) * L / L'
            unchecked {
                uint256 lastGrowthAdjustment = FixedPointMathLib.fullMulDiv(
                    growthInside - position.lastGrowthInside, lastLiquidity, newLiquidity
                );
                position.lastGrowthInside = growthInside - lastGrowthAdjustment;
            }
        }

        return this.beforeAddLiquidity.selector;
    }

    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata
    ) external override returns (bytes4) {
        _onlyUniV4();

        unchecked {
            PoolId id = _toId(key);
            (Position storage position, bytes32 positionKey) =
                positions.get(id, sender, params.tickLower, params.tickUpper, params.salt);
            int24 currentTick = UNI_V4.getSlot0(id).tick();
            uint256 growthInside =
                poolRewards[id].getGrowthInside(currentTick, params.tickLower, params.tickUpper);

            uint128 positionTotalLiquidity = UNI_V4.getPositionLiquidity(id, positionKey);
            uint256 rewards = X128MathLib.fullMulX128(
                growthInside - position.lastGrowthInside, positionTotalLiquidity
            );

            if (rewards > 0) {
                // Pay rewards to owner via uniswap delta => assumes that router is not malicious.
                UNI_V4.sync(key.currency0);
                Currency.unwrap(key.currency0).safeTransfer(address(UNI_V4), rewards);
                UNI_V4.settleFor(sender);

                position.lastGrowthInside = growthInside;
            }
        }

        return this.beforeRemoveLiquidity.selector;
    }

    function _updatePools(CalldataReader reader, PairArray pairs)
        internal
        returns (CalldataReader)
    {
        CalldataReader end;
        (reader, end) = reader.readU24End();
        SwapCall memory swapCall = SwapCallLib.newSwapCall(address(this));
        while (reader != end) {
            reader = _updatePool(reader, swapCall, pairs);
        }

        return reader;
    }

    function _updatePool(CalldataReader reader, SwapCall memory swapCall, PairArray pairs)
        internal
        returns (CalldataReader)
    {
        PoolUpdateVariantMap variantMap;
        {
            uint8 variantByte;
            (reader, variantByte) = reader.readU8();
            variantMap = PoolUpdateVariantMap.wrap(variantByte);
        }
        swapCall.setZeroForOne(variantMap.zeroForOne());
        uint16 pairIndex;
        (reader, pairIndex) = reader.readU16();
        (swapCall.asset0, swapCall.asset1, swapCall.tickSpacing) =
            pairs.get(pairIndex).getPoolInfo();

        PoolId id = swapCall.getId();

        uint256 amountIn;
        (reader, amountIn) = reader.readU128();

        int24 currentTick;
        if (amountIn > 0) {
            int24 tickBefore = UNI_V4.getSlot0(id).tick();
            swapCall.amountSpecified = SignedUnsignedLib.neg(amountIn);
            // The swap delta is tracked on Uniswap's side so we don't need to here. It's accounted for in the asset
            // take & settle steps.
            swapCall.call(UNI_V4);

            currentTick = UNI_V4.getSlot0(id).tick();

            poolRewards[id].updateAfterTickMove(
                id, UNI_V4, tickBefore, currentTick, swapCall.tickSpacing
            );
        } else {
            currentTick = UNI_V4.getSlot0(id).tick();
        }

        uint256 rewardTotal;
        (reader, rewardTotal) = _decodeAndReward(
            variantMap.currentOnly(), reader, poolRewards[id], id, swapCall.tickSpacing, currentTick
        );
        bundleDeltas.sub(swapCall.asset0, rewardTotal);

        return reader;
    }

    function _toId(PoolKey calldata poolKey) internal pure returns (PoolId id) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            calldatacopy(ptr, poolKey, mul(32, 5))
            id := keccak256(ptr, mul(32, 5))
        }
    }
}

// ============================================================
// FILE: src/modules/Settlement.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {UniConsumer} from "./UniConsumer.sol";
import {IERC20} from "forge-std/interfaces/IERC20.sol";

import {DeltaTracker} from "../types/DeltaTracker.sol";
import {AssetArray, Asset, FEE_SUMMARY_ENTRY_SIZE} from "../types/Asset.sol";
import {AmountA as AmountOut, AmountB as AmountIn} from "../types/Price.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";

/// @author philogy <https://github.com/philogy>
/// @dev Handles settlement as well as maintaining Angstrom's solvency invariant.
abstract contract Settlement is UniConsumer {
    using SafeTransferLib for address;

    error BundlDeltaUnresolved(address asset);

    DeltaTracker internal bundleDeltas;

    mapping(address asset => mapping(address owner => uint256 balance)) internal _balances;

    /// @notice Pulls tokens from the caller and credits them to the caller for trading.
    /// @dev WARN: Assumes `asset` charges 0 fees upon transfers and is not rebasing.
    function deposit(address asset, uint256 amount) external {
        asset.safeTransferFrom(msg.sender, address(this), amount);
        _balances[asset][msg.sender] += amount;
    }

    /// @notice Pulls tokens from the caller and credits them to the `to` address for trading.
    /// @dev WARN: Assumes `asset` charges 0 fees upon transfers and is not rebasing.
    function deposit(address asset, address to, uint256 amount) external {
        asset.safeTransferFrom(msg.sender, address(this), amount);
        _balances[asset][to] += amount;
    }

    function withdraw(address asset, uint256 amount) external {
        _balances[asset][msg.sender] -= amount;
        asset.safeTransfer(msg.sender, amount);
    }

    function withdraw(address asset, address to, uint256 amount) external {
        _balances[asset][msg.sender] -= amount;
        asset.safeTransfer(to, amount);
    }

    function _takeAssets(AssetArray assets) internal {
        uint256 length = assets.len();
        for (uint256 i = 0; i < length; i++) {
            _take(assets.getUnchecked(i));
        }
    }

    function _take(Asset asset) internal {
        uint256 amount = asset.take();
        if (amount > 0) {
            address addr = asset.addr();
            UNI_V4.take(_c(addr), address(this), amount);
            bundleDeltas.add(addr, amount);
        }
    }

    function _saveAndSettle(AssetArray assets) internal {
        uint256 length = assets.len();

        // Allocate fee summary buffer.
        uint256 raw_feeSummaryStartPtr;
        assembly ("memory-safe") {
            raw_feeSummaryStartPtr := mload(0x40)
            mstore(0x40, add(raw_feeSummaryStartPtr, mul(length, FEE_SUMMARY_ENTRY_SIZE)))
        }
        uint256 raw_feeSummaryPtr = raw_feeSummaryStartPtr;

        for (uint256 i = 0; i < length; i++) {
            Asset asset = assets.getUnchecked(i);
            address addr = asset.addr();
            uint256 saving = asset.save();
            uint256 settle = asset.settle();

            int256 delta = bundleDeltas.sub(addr, saving + settle);

            if (delta != 0) {
                revert BundlDeltaUnresolved(addr);
            }

            if (settle > 0) {
                UNI_V4.sync(_c(addr));
                addr.safeTransfer(address(UNI_V4), settle);
                UNI_V4.settle();
            }

            asset.raw_copyFeeEntryToMemory(raw_feeSummaryPtr);
            unchecked {
                raw_feeSummaryPtr += FEE_SUMMARY_ENTRY_SIZE;
            }
        }

        // Hash buffer and emit unique log.
        assembly ("memory-safe") {
            mstore(0x00, keccak256(raw_feeSummaryStartPtr, mul(length, FEE_SUMMARY_ENTRY_SIZE)))
            log0(0x00, 0x20)
        }
    }

    function _settleOrderIn(address from, address asset, AmountIn amountIn, bool useInternal)
        internal
    {
        uint256 amount = amountIn.into();

        bundleDeltas.add(asset, amount);
        if (useInternal) {
            _balances[asset][from] -= amount;
        } else {
            asset.safeTransferFrom(from, address(this), amount);
        }
    }

    function _settleOrderOut(address to, address asset, AmountOut amountOut, bool useInternal)
        internal
    {
        uint256 amount = amountOut.into();
        bundleDeltas.sub(asset, amount);
        if (useInternal) {
            _balances[asset][to] += amount;
        } else {
            asset.safeTransfer(to, amount);
        }
    }
}

// ============================================================
// FILE: src/modules/TopLevelAuth.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IAngstromAuth, ConfigEntryUpdate} from "../interfaces/IAngstromAuth.sol";
import {UniConsumer} from "./UniConsumer.sol";
import {EIP712} from "solady/src/utils/EIP712.sol";

import {PoolConfigStore, PoolConfigStoreLib} from "../libraries/PoolConfigStore.sol";
import {StoreKey, StoreKeyLib} from "../types/StoreKey.sol";
import {ConfigEntry, ConfigEntryLib} from "../types/ConfigEntry.sol";
import {ConfigBuffer} from "../types/ConfigBuffer.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {SafeCastLib} from "solady/src/utils/SafeCastLib.sol";
import {LPFeeLibrary} from "v4-core/src/libraries/LPFeeLibrary.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";
import {SignatureCheckerLib} from "solady/src/utils/SignatureCheckerLib.sol";
import {UnlockSwapFeeCollector} from "./UnlockSwapFeeCollector.sol";

/// @dev Maximum fee that the `bundleFee` for any given pool should be settable to.
uint256 constant MAX_UNLOCK_FEE_E6 = 0.4e6;

/// @author philogy <https://github.com/philogy>
/// @author Will Smith <https://github.com/Will-Smith11>
abstract contract TopLevelAuth is EIP712, UniConsumer, IAngstromAuth {
    using LPFeeLibrary for uint24;
    using SafeTransferLib for address;

    error AssetsUnordered();
    error NotController();
    error UnlockedFeeNotSet(StoreKey key);
    error OnlyOncePerBlock();
    error NotNode();
    error IndexMayHaveChanged();
    error InvalidSignature();
    error UnlockFeeAboveMax();

    /// @dev `keccak256("AttestAngstromBlockEmpty(uint64 block_number)")`
    uint256 internal constant ATTEST_EMPTY_BLOCK_TYPE_HASH =
        0x3f25e551746414ff93f076a7dd83828ff53735b39366c74015637e004fcb0223;

    UnlockSwapFeeCollector internal immutable FEE_COLLECTOR;

    /// @dev Contract that manages all special privileges for contract (setting new nodes,
    /// configuring pools, pulling fees).
    address internal _controller;

    mapping(address => bool) internal _isNode;

    struct UnlockedFees {
        uint24 unlockedFee;
        uint24 protocolUnlockedFee;
    }

    /// @dev Stores the unlocked fees.
    mapping(StoreKey => UnlockedFees) internal _unlockedFees;

    uint64 internal _lastBlockUpdated;
    PoolConfigStore internal _configStore;

    constructor(address controller) {
        _controller = controller;
        FEE_COLLECTOR = new UnlockSwapFeeCollector(UNI_V4);
    }

    function setController(address newController) public override {
        _onlyController();
        _controller = newController;
    }

    function collect_unlock_swap_fees(address to, bytes calldata packed_assets) external override {
        _onlyController();
        FEE_COLLECTOR.withdraw_to(to, packed_assets);
    }

    /// @dev Configure an existing pool or allow the creation of a new pool. Permissioned, only
    /// controller should be allowed to configure.
    function configurePool(
        address asset0,
        address asset1,
        uint16 tickSpacing,
        uint24 bundleFee,
        uint24 unlockedFee,
        uint24 protocolUnlockedFee
    ) external override {
        _onlyController();

        if (asset0 >= asset1) revert AssetsUnordered();

        StoreKey key = StoreKeyLib.keyFromAssetsUnchecked(asset0, asset1);

        ConfigBuffer memory buffer = _configStore.read_to_buffer(1);
        uint256 i = 0;
        uint256 entry_count = buffer.entries.length;

        // Search existing entries and modify the respective entry if found.
        for (; i < entry_count; i++) {
            ConfigEntry entry = buffer.entries[i];
            if (entry.key() == key) {
                buffer.entries[i] =
                    buffer.entries[i].setTickSpacing(tickSpacing).setBundleFee(bundleFee);
                break;
            }
        }
        // If not found push new entry.
        if (i == entry_count) {
            // Safety: Know that `key` is unique because every other key was checked.
            buffer.unsafe_add(ConfigEntryLib.init(key, tickSpacing, bundleFee));
        }

        _configStore = PoolConfigStoreLib.store_from_buffer(buffer);

        _unlockedFees[key] =
            UnlockedFees({unlockedFee: unlockedFee, protocolUnlockedFee: protocolUnlockedFee});

        protocolUnlockedFee.validate();
        unlockedFee.validate();
    }

    function initializePool(
        address assetA,
        address assetB,
        uint256 storeIndex,
        uint160 sqrtPriceX96
    ) public {
        if (assetA > assetB) (assetA, assetB) = (assetB, assetA);
        StoreKey key = StoreKeyLib.keyFromAssetsUnchecked(assetA, assetB);
        (int24 tickSpacing,) = _configStore.get(key, storeIndex);
        UNI_V4.initialize(
            PoolKey(_c(assetA), _c(assetB), INIT_HOOK_FEE, tickSpacing, IHooks(address(this))),
            sqrtPriceX96
        );
    }

    function removePool(StoreKey key, PoolConfigStore expected_store, uint256 store_index)
        external
        override
    {
        _onlyController();

        PoolConfigStore store = _configStore;
        if (store != expected_store) revert IndexMayHaveChanged();

        ConfigBuffer memory buffer = _configStore.read_to_buffer();
        buffer.remove_entry(key, store_index);
        _configStore = PoolConfigStoreLib.store_from_buffer(buffer);

        delete _unlockedFees[key];
    }

    function batchUpdatePools(PoolConfigStore expected_store, ConfigEntryUpdate[] calldata updates)
        external
        override
    {
        _onlyController();

        PoolConfigStore store = _configStore;
        if (store != expected_store) revert IndexMayHaveChanged();

        ConfigBuffer memory buffer = _configStore.read_to_buffer(0);

        for (uint256 i = 0; i < updates.length; i++) {
            ConfigEntryUpdate calldata update = updates[i];
            buffer.entries[update.index] =
                buffer.get(update.key, update.index).setBundleFee(update.bundleFee);

            update.unlockedFee.validate();
            update.protocolUnlockedFee.validate();

            _unlockedFees[update.key] = UnlockedFees({
                unlockedFee: update.unlockedFee,
                protocolUnlockedFee: update.protocolUnlockedFee
            });
        }

        _configStore = PoolConfigStoreLib.store_from_buffer(buffer);
    }

    /// @dev Function to allow controller to pull an arbitrary amount of tokens from the contract.
    /// Assumed to be accrued validator fees.
    function pullFee(address asset, uint256 amount) external override {
        _onlyController();
        asset.safeTransfer(msg.sender, amount);
    }

    function toggleNodes(address[] calldata nodes) external override {
        _onlyController();
        for (uint256 i = 0; i < nodes.length; i++) {
            address node = nodes[i];
            _isNode[node] = !_isNode[node];
        }
    }

    function unlockWithEmptyAttestation(address node, bytes calldata signature) public {
        if (_isUnlocked()) revert OnlyOncePerBlock();
        if (!_isNode[node]) revert NotNode();

        bytes32 attestationStructHash;
        assembly ("memory-safe") {
            mstore(0x00, ATTEST_EMPTY_BLOCK_TYPE_HASH)
            mstore(0x20, number())
            attestationStructHash := keccak256(0x00, 0x40)
        }

        bytes32 digest = _hashTypedData(attestationStructHash);
        if (!SignatureCheckerLib.isValidSignatureNowCalldata(node, digest, signature)) {
            revert InvalidSignature();
        }

        _lastBlockUpdated = SafeCastLib.toUint64(block.number);
    }

    function _isUnlocked() internal view returns (bool) {
        return _lastBlockUpdated == block.number;
    }

    function _onlyController() internal view {
        if (msg.sender != _controller) revert NotController();
    }

    /// @dev Validates that the caller is a node and that the last call is at least 1 block old.
    /// Blocks reentrant calls as well as separate calls in the same block.
    function _nodeBundleLock() internal {
        if (_lastBlockUpdated == block.number) revert OnlyOncePerBlock();
        if (!_isNode[msg.sender]) revert NotNode();
        _lastBlockUpdated = SafeCastLib.toUint64(block.number);
    }
}

// ============================================================
// FILE: src/modules/UniConsumer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from "../interfaces/IUniV4.sol";
import {Hooks, IHooks} from "v4-core/src/libraries/Hooks.sol";
import {Currency} from "v4-core/src/types/Currency.sol";
import {LPFeeLibrary} from "v4-core/src/libraries/LPFeeLibrary.sol";

uint24 constant ANGSTROM_INIT_HOOK_FEE = LPFeeLibrary.DYNAMIC_FEE_FLAG;

/// @author philogy <https://github.com/philogy>
abstract contract UniConsumer {
    using Hooks for IHooks;

    error NotUniswap();

    IPoolManager internal immutable UNI_V4;

    uint24 internal constant INIT_HOOK_FEE = ANGSTROM_INIT_HOOK_FEE;

    error InvalidHookPermissions();

    constructor(IPoolManager uniV4) {
        UNI_V4 = uniV4;
    }

    function _onlyUniV4() internal view {
        if (msg.sender != address(UNI_V4)) revert NotUniswap();
    }

    function _checkAngstromHookFlags() internal view {
        if (!hasAngstromHookFlags(address(this))) {
            revert InvalidHookPermissions();
        }
    }

    function _c(address addr) internal pure returns (Currency) {
        return Currency.wrap(addr);
    }

    function _addr(Currency c) internal pure returns (address) {
        return Currency.unwrap(c);
    }
}

using Hooks for IHooks;

function hasAngstromHookFlags(address addr) pure returns (bool) {
    IHooks hook = IHooks(addr);

    // Need at least 1 of the flags to control initialization.
    if (!hook.hasPermission(Hooks.BEFORE_INITIALIZE_FLAG | Hooks.AFTER_INITIALIZE_FLAG)) {
        return false;
    }

    // Ensure that we exactly only enable before add & remove, no after hooks.
    if (!hook.hasPermission(Hooks.BEFORE_ADD_LIQUIDITY_FLAG)) return false;
    if (hook.hasPermission(Hooks.AFTER_ADD_LIQUIDITY_FLAG)) return false;
    if (!hook.hasPermission(Hooks.BEFORE_REMOVE_LIQUIDITY_FLAG)) return false;
    if (hook.hasPermission(Hooks.AFTER_REMOVE_LIQUIDITY_FLAG)) return false;

    // Ensure that we have some hook preventing 3rd party swapping.
    if (!hook.hasPermission(Hooks.BEFORE_SWAP_FLAG)) return false;
    if (
        !(
            hook.hasPermission(Hooks.AFTER_SWAP_FLAG)
                && hook.hasPermission(Hooks.AFTER_SWAP_RETURNS_DELTA_FLAG)
        )
    ) return false;

    return hook.isValidHookAddress(ANGSTROM_INIT_HOOK_FEE);
}

// ============================================================
// FILE: src/modules/UnlockHook.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IBeforeSwapHook, IAfterSwapHook} from "../interfaces/IHooks.sol";
import {UniConsumer} from "./UniConsumer.sol";
import {TopLevelAuth} from "./TopLevelAuth.sol";
import {PoolConfigStoreLib} from "../libraries/PoolConfigStore.sol";
import {StoreKey, StoreKeyLib} from "../types/StoreKey.sol";
import {tint256} from "transient-goodies/TransientPrimitives.sol";

import {IUniV4, IPoolManager} from "../interfaces/IUniV4.sol";
import {BeforeSwapDelta} from "v4-core/src/types/BeforeSwapDelta.sol";
import {BalanceDelta} from "v4-core/src/types/BalanceDelta.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {LPFeeLibrary} from "v4-core/src/libraries/LPFeeLibrary.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";

import {PoolUpdates} from "./PoolUpdates.sol";

/// @author philogy <https://github.com/philogy>
/// @author Will Smith <https://github.com/Will-Smith11>
abstract contract UnlockHook is
    UniConsumer,
    TopLevelAuth,
    PoolUpdates,
    IBeforeSwapHook,
    IAfterSwapHook
{
    using IUniV4 for IPoolManager;

    error UnlockDataTooShort();
    error CannotSwapWhileLocked();

    int24 internal constant ONE_E6 = 1e6;

    tint256 internal currentTickBeforeSwap;

    function beforeSwap(
        address,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata,
        bytes calldata optionalUnlockData
    ) external returns (bytes4 response, BeforeSwapDelta, uint24 swapFee) {
        _onlyUniV4();

        if (!_isUnlocked()) {
            if (optionalUnlockData.length < 20) {
                if (optionalUnlockData.length == 0) {
                    revert CannotSwapWhileLocked();
                }
                revert UnlockDataTooShort();
            } else {
                address node = address(bytes20(optionalUnlockData[:20]));
                bytes calldata signature = optionalUnlockData[20:];
                unlockWithEmptyAttestation(node, signature);
            }
        }

        StoreKey storeKey =
            StoreKeyLib.keyFromAssetsUnchecked(_addr(key.currency0), _addr(key.currency1));

        swapFee = _unlockedFees[storeKey].unlockedFee | LPFeeLibrary.OVERRIDE_FEE_FLAG;

        PoolId id = _toId(key);
        currentTickBeforeSwap.set(UNI_V4.getSlot0(id).tick());

        return (IBeforeSwapHook.beforeSwap.selector, BeforeSwapDelta.wrap(0), swapFee);
    }

    function afterSwap(
        address,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        BalanceDelta swap_delta,
        bytes calldata
    ) external returns (bytes4, int128) {
        _onlyUniV4();

        int128 fee;
        {
            StoreKey storeKey =
                StoreKeyLib.keyFromAssetsUnchecked(_addr(key.currency0), _addr(key.currency1));
            int24 fee_rate_e6 = int24(_unlockedFees[storeKey].protocolUnlockedFee);
            bool exactIn = params.amountSpecified < 0;

            {
                int128 target_amount =
                    exactIn != params.zeroForOne ? swap_delta.amount0() : swap_delta.amount1();
                int128 p_target_amount = target_amount < 0 ? -target_amount : target_amount;
                fee = exactIn
                    ? p_target_amount * fee_rate_e6 / ONE_E6
                    : p_target_amount * ONE_E6 / (ONE_E6 - fee_rate_e6) - p_target_amount;
            }

            UNI_V4.mint(
                address(FEE_COLLECTOR),
                (exactIn != params.zeroForOne ? key.currency0 : key.currency1).toId(),
                uint128(fee)
            );
        }

        PoolId id = _toId(key);
        int24 currentTick = UNI_V4.getSlot0(id).tick();
        poolRewards[id].updateAfterTickMove(
            id, UNI_V4, int24(currentTickBeforeSwap.get()), currentTick, key.tickSpacing
        );

        return (IAfterSwapHook.afterSwap.selector, fee);
    }
}

// ============================================================
// FILE: src/modules/UnlockSwapFeeCollector.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from "../interfaces/IUniV4.sol";
import {IUnlockCallback} from "v4-core/src/interfaces/callback/IUnlockCallback.sol";
import {Currency} from "v4-core/src/types/Currency.sol";

/// @author philogy <https://github.com/philogy>
contract UnlockSwapFeeCollector is IUnlockCallback {
    error NotUniswap();
    error NotOwner();

    address internal immutable _owner;
    IPoolManager internal immutable UNI_V4;

    constructor(IPoolManager uniV4) {
        _owner = msg.sender;
        UNI_V4 = uniV4;
    }

    function withdraw_to(address to, bytes calldata packed_assets) external {
        if (msg.sender != _owner) revert NotOwner();
        UNI_V4.unlock(bytes.concat(bytes20(to), packed_assets));
    }

    function unlockCallback(bytes calldata data) external override returns (bytes memory) {
        if (msg.sender != address(UNI_V4)) revert NotUniswap();

        address to = address(bytes20(data[:20]));
        data = data[20:];
        uint256 iters = data.length / 20;

        for (uint256 i = 0; i < iters; i++) {
            address asset;
            assembly {
                asset := shr(96, calldataload(add(data.offset, mul(i, 20))))
            }
            uint256 bal = UNI_V4.balanceOf(address(this), uint160(asset));
            UNI_V4.burn(address(this), uint160(asset), bal);
            UNI_V4.take(Currency.wrap(asset), to, bal);
        }

        return "";
    }
}

// ============================================================
// FILE: src/types/Asset.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {CalldataReader} from "./CalldataReader.sol";

uint256 constant FEE_SUMMARY_ENTRY_SIZE = 36;

type Asset is uint256;

type AssetArray is uint256;

using AssetLib for Asset global;
using AssetLib for AssetArray global;

/// @author philogy <https://github.com/philogy>
library AssetLib {
    error AssetsOutOfOrderOrNotUnique();
    error AssetAccessOutOfBounds(uint256 index, uint256 length);

    /// @dev Size of a single encoded asset (b20:addr ++ b16:save ++ b16:borrow ++ b16:settle)
    uint256 internal constant ASSET_CD_BYTES = 68;

    uint256 internal constant ADDR_OFFSET = 0;
    uint256 internal constant SAVE_OFFSET = 20;
    uint256 internal constant TAKE_OFFSET = 36;
    uint256 internal constant SETTLE_OFFSET = 52;

    uint256 internal constant LENGTH_MASK = 0xffffffff;
    uint256 internal constant CALLDATA_PTR_OFFSET = 32;

    function readFromAndValidate(CalldataReader reader)
        internal
        pure
        returns (CalldataReader, AssetArray assets)
    {
        CalldataReader end;
        (reader, end) = reader.readU24End();

        uint256 length = (end.offset() - reader.offset()) / ASSET_CD_BYTES;

        assets = AssetArray.wrap((reader.offset() << CALLDATA_PTR_OFFSET) | length);

        address lastAddr = address(0);
        for (uint256 i = 0; i < length; i++) {
            address newAddr = assets.getUnchecked(i).addr();
            if (newAddr <= lastAddr) revert AssetsOutOfOrderOrNotUnique();
            lastAddr = newAddr;
        }

        return (end, assets);
    }

    function len(AssetArray assets) internal pure returns (uint256) {
        return AssetArray.unwrap(assets) & LENGTH_MASK;
    }

    function get(AssetArray self, uint256 index) internal pure returns (Asset asset) {
        if (self.len() <= index) revert AssetAccessOutOfBounds(index, self.len());
        return self.getUnchecked(index);
    }

    function getUnchecked(AssetArray self, uint256 index) internal pure returns (Asset asset) {
        unchecked {
            uint256 raw_calldataOffset = AssetArray.unwrap(self) >> CALLDATA_PTR_OFFSET;
            return Asset.wrap(raw_calldataOffset + index * ASSET_CD_BYTES);
        }
    }

    function raw_copyFeeEntryToMemory(Asset self, uint256 raw_memOffset) internal pure {
        assembly ("memory-safe") {
            calldatacopy(raw_memOffset, add(self, ADDR_OFFSET), FEE_SUMMARY_ENTRY_SIZE)
        }
    }

    function addr(Asset self) internal pure returns (address value) {
        assembly ("memory-safe") {
            value := shr(96, calldataload(add(self, ADDR_OFFSET)))
        }
    }

    function take(Asset self) internal pure returns (uint128 amount) {
        assembly ("memory-safe") {
            amount := shr(128, calldataload(add(self, TAKE_OFFSET)))
        }
    }

    function save(Asset self) internal pure returns (uint128 amount) {
        assembly ("memory-safe") {
            amount := shr(128, calldataload(add(self, SAVE_OFFSET)))
        }
    }

    function settle(Asset self) internal pure returns (uint128 amount) {
        assembly ("memory-safe") {
            amount := shr(128, calldataload(add(self, SETTLE_OFFSET)))
        }
    }
}

// ============================================================
// FILE: src/types/CalldataReader.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @dev Represents a raw calldata offset.
type CalldataReader is uint256;

using CalldataReaderLib for CalldataReader global;
using {neq as !=, eq as ==, gt as >, lt as <, ge as >=, le as <=} for CalldataReader global;

function neq(CalldataReader a, CalldataReader b) pure returns (bool) {
    return CalldataReader.unwrap(a) != CalldataReader.unwrap(b);
}

function eq(CalldataReader a, CalldataReader b) pure returns (bool) {
    return CalldataReader.unwrap(a) == CalldataReader.unwrap(b);
}

function gt(CalldataReader a, CalldataReader b) pure returns (bool) {
    return CalldataReader.unwrap(a) > CalldataReader.unwrap(b);
}

function lt(CalldataReader a, CalldataReader b) pure returns (bool) {
    return CalldataReader.unwrap(a) < CalldataReader.unwrap(b);
}

function ge(CalldataReader a, CalldataReader b) pure returns (bool) {
    return CalldataReader.unwrap(a) >= CalldataReader.unwrap(b);
}

function le(CalldataReader a, CalldataReader b) pure returns (bool) {
    return CalldataReader.unwrap(a) <= CalldataReader.unwrap(b);
}

/// @author philogy <https://github.com/philogy>
library CalldataReaderLib {
    error ReaderNotAtEnd();

    function from(bytes calldata data) internal pure returns (CalldataReader reader) {
        assembly ("memory-safe") {
            reader := data.offset
        }
    }

    function requireAtEndOf(CalldataReader self, bytes calldata data) internal pure {
        assembly ("memory-safe") {
            let end := add(data.offset, data.length)
            if iszero(eq(self, end)) {
                mstore(0x00, 0x01842f8c /* ReaderNotAtEnd() */ )
                revert(0x1c, 0x04)
            }
        }
    }

    function requireAtEndOf(CalldataReader self, CalldataReader end) internal pure {
        if (self != end) revert ReaderNotAtEnd();
    }

    function offset(CalldataReader self) internal pure returns (uint256) {
        return CalldataReader.unwrap(self);
    }

    function readBool(CalldataReader self) internal pure returns (CalldataReader, bool value) {
        assembly ("memory-safe") {
            value := gt(byte(0, calldataload(self)), 0)
            self := add(self, 1)
        }
        return (self, value);
    }

    function readU8(CalldataReader self) internal pure returns (CalldataReader, uint8 value) {
        assembly ("memory-safe") {
            value := byte(0, calldataload(self))
            self := add(self, 1)
        }
        return (self, value);
    }

    function readU16(CalldataReader self) internal pure returns (CalldataReader, uint16 value) {
        assembly ("memory-safe") {
            value := shr(240, calldataload(self))
            self := add(self, 2)
        }
        return (self, value);
    }

    function readU32(CalldataReader self) internal pure returns (CalldataReader, uint32 value) {
        assembly ("memory-safe") {
            value := shr(224, calldataload(self))
            self := add(self, 4)
        }
        return (self, value);
    }

    function readI24(CalldataReader self) internal pure returns (CalldataReader, int24 value) {
        assembly ("memory-safe") {
            value := sar(232, calldataload(self))
            self := add(self, 3)
        }
        return (self, value);
    }

    function readU40(CalldataReader self) internal pure returns (CalldataReader, uint40 value) {
        assembly ("memory-safe") {
            value := shr(216, calldataload(self))
            self := add(self, 5)
        }
        return (self, value);
    }

    function readU64(CalldataReader self) internal pure returns (CalldataReader, uint64 value) {
        assembly ("memory-safe") {
            value := shr(192, calldataload(self))
            self := add(self, 8)
        }
        return (self, value);
    }

    function readU128(CalldataReader self) internal pure returns (CalldataReader, uint128 value) {
        assembly ("memory-safe") {
            value := shr(128, calldataload(self))
            self := add(self, 16)
        }
        return (self, value);
    }

    function readAddr(CalldataReader self) internal pure returns (CalldataReader, address addr) {
        assembly ("memory-safe") {
            addr := shr(96, calldataload(self))
            self := add(self, 20)
        }
        return (self, addr);
    }

    function readU160(CalldataReader self) internal pure returns (CalldataReader, uint160 value) {
        assembly ("memory-safe") {
            value := shr(96, calldataload(self))
            self := add(self, 20)
        }
        return (self, value);
    }

    function readU256(CalldataReader self) internal pure returns (CalldataReader, uint256 value) {
        assembly ("memory-safe") {
            value := calldataload(self)
            self := add(self, 32)
        }
        return (self, value);
    }

    function readU24End(CalldataReader self)
        internal
        pure
        returns (CalldataReader, CalldataReader end)
    {
        assembly ("memory-safe") {
            let len := shr(232, calldataload(self))
            self := add(self, 3)
            end := add(self, len)
        }
        return (self, end);
    }

    function readBytes(CalldataReader self)
        internal
        pure
        returns (CalldataReader, bytes calldata slice)
    {
        assembly ("memory-safe") {
            slice.length := shr(232, calldataload(self))
            self := add(self, 3)
            slice.offset := self
            self := add(self, slice.length)
        }
        return (self, slice);
    }
}

// ============================================================
// FILE: src/types/ConfigBuffer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ConfigEntry, ENTRY_SIZE} from "./ConfigEntry.sol";
import {StoreKey} from "./StoreKey.sol";

struct ConfigBuffer {
    ConfigEntry[] entries;
    uint256 capacity;
}

using ConfigBufferLib for ConfigBuffer global;

/// @author philogy <https://github.com/philogy>
library ConfigBufferLib {
    error InsufficientCapacity();
    error EntryKeyMismatch();

    function get(ConfigBuffer memory self, StoreKey key, uint256 index)
        internal
        pure
        returns (ConfigEntry entry)
    {
        entry = self.entries[index];
        if (entry.key() != key) revert EntryKeyMismatch();
        return entry;
    }

    /// @dev Allocate memory for `capacity` entries and resets le
    function reset_and_alloc_capacity(ConfigBuffer memory self, uint256 capacity) internal pure {
        self.capacity = capacity;
        assembly ("memory-safe") {
            // Alloc entry space.
            let entries := mload(0x40)
            mstore(0x40, add(entries, add(mul(capacity, ENTRY_SIZE), 0x20)))
            // Set  default length to 0.
            mstore(entries, 0)
            // Set ptr `self.entries`.
            mstore(self, entries)
        }
    }

    function remove_entry(ConfigBuffer memory self, StoreKey key, uint256 index) internal pure {
        if (self.entries[index].key() != key) revert EntryKeyMismatch();

        uint256 newLength = self.entries.length - 1;
        if (index < newLength) {
            self.entries[index] = self.entries[newLength];
        }
        // Set new length to `length - 1`.
        unsafe_resize(self, newLength);
    }

    /// @dev Add a new entry to the store. WARNING: Responsibility of caller to ensure that `entry`
    /// does *not* contain a duplicate key otherwise key uniqueness invariant will be broken.
    function unsafe_add(ConfigBuffer memory self, ConfigEntry entry) internal pure {
        uint256 prev_length = self.entries.length;
        if (prev_length == self.capacity) revert InsufficientCapacity();

        unsafe_resize(self, prev_length + 1);
        self.entries[prev_length] = entry;
    }

    /// @dev Sets the length of the buffer to an arbitrary length `new_length`. WARNING:
    /// Responsibility of the caller to ensure that the length is either being *decreased* from a
    /// valid length or increased at most to the capacity and only to contain valid entries.
    function unsafe_resize(ConfigBuffer memory self, uint256 new_length) internal pure {
        ConfigEntry[] memory entries = self.entries;
        assembly ("memory-safe") {
            mstore(entries, new_length)
        }
    }
}

// ============================================================
// FILE: src/types/ConfigEntry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {StoreKey} from "./StoreKey.sol";
import {TickMath} from "v4-core/src/libraries/TickMath.sol";

/// @dev Packed `storeKey:u216 ++ tickSpacing:u16 ++ feeInE6:u24`
type ConfigEntry is uint256;

uint256 constant ENTRY_SIZE = 32;
uint256 constant KEY_MASK = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000;
uint256 constant TICK_SPACING_MASK = 0xffff;
uint256 constant TICK_SPACING_OFFSET = 24;
uint256 constant FEE_MASK = 0xffffff;
uint256 constant FEE_OFFSET = 0;

/// @dev Max bundle fee.
uint24 constant MAX_FEE = 0.2e6;
/// @dev 100% fee in `bundleFee` units (pips).
uint24 constant ONE_E6 = 1.0e6;

using ConfigEntryLib for ConfigEntry global;

/// @author philogy <https://github.com/philogy>
library ConfigEntryLib {
    error InvalidTickSpacing();
    error FeeAboveMax();

    function isEmpty(ConfigEntry self) internal pure returns (bool) {
        return ConfigEntry.unwrap(self) == 0;
    }

    function init(StoreKey skey, uint16 spacing, uint24 fee) internal pure returns (ConfigEntry) {
        _checkTickSpacing(spacing);
        _checkBundleFee(fee);
        // forgefmt: disable-next-item
        return ConfigEntry.wrap(uint256(bytes32(StoreKey.unwrap(skey))))
            .setTickSpacing(spacing)
            .setBundleFee(fee);
    }

    function key(ConfigEntry self) internal pure returns (StoreKey) {
        return StoreKey.wrap(bytes27(bytes32(ConfigEntry.unwrap(self))));
    }

    uint256 internal constant MIN_TICK_SPACING = uint24(TickMath.MIN_TICK_SPACING);
    uint256 internal constant MAX_TICK_SPACING = uint24(TickMath.MAX_TICK_SPACING);

    function setTickSpacing(ConfigEntry self, uint16 spacing)
        internal
        pure
        returns (ConfigEntry updated)
    {
        _checkTickSpacing(spacing);
        uint256 backing = ConfigEntry.unwrap(self);
        uint256 xoredSpacing = spacing ^ uint24(self.tickSpacing());
        updated = ConfigEntry.wrap(backing ^ (xoredSpacing << TICK_SPACING_OFFSET));
        return updated;
    }

    function tickSpacing(ConfigEntry self) internal pure returns (uint16 spacing) {
        assembly ("memory-safe") {
            spacing := and(TICK_SPACING_MASK, shr(TICK_SPACING_OFFSET, self))
        }
    }

    function setBundleFee(ConfigEntry self, uint24 fee)
        internal
        pure
        returns (ConfigEntry updated)
    {
        _checkBundleFee(fee);
        uint256 backing = ConfigEntry.unwrap(self);
        uint256 xoredFee = fee ^ self.bundleFee();
        updated = ConfigEntry.wrap(backing ^ (xoredFee << FEE_OFFSET));
        return updated;
    }

    function bundleFee(ConfigEntry self) internal pure returns (uint24 fee) {
        assembly ("memory-safe") {
            fee := and(FEE_MASK, shr(FEE_OFFSET, self))
        }
    }

    function _checkTickSpacing(uint16 spacing) internal pure {
        if (spacing < MIN_TICK_SPACING || spacing > MAX_TICK_SPACING) {
            revert InvalidTickSpacing();
        }
    }

    function _checkBundleFee(uint24 fee) internal pure {
        if (fee > MAX_FEE) revert FeeAboveMax();
    }
}

// ============================================================
// FILE: src/types/DeltaTracker.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {MixedSignLib} from "../libraries/MixedSignLib.sol";
import {tint256} from "transient-goodies/TransientPrimitives.sol";

struct DeltaTracker {
    mapping(address asset => tint256 netBalances) deltas;
}

using DeltaTrackerLib for DeltaTracker global;

/// @author philogy <https://github.com/philogy>
/// @dev Tracks intermediate value changes in the contract that need to be resolved. A _negative_
/// delta means the contract is temporarily insolvent, a _positive_ delta means that contract has
/// funds to use for payouts of different kinds.
library DeltaTrackerLib {
    function add(DeltaTracker storage self, address asset, uint256 amount) internal {
        tint256 storage delta = self.deltas[asset];
        delta.set(MixedSignLib.add(delta.get(), amount));
    }

    function sub(DeltaTracker storage self, address asset, uint256 amount)
        internal
        returns (int256 newDelta)
    {
        tint256 storage delta = self.deltas[asset];
        delta.set(newDelta = MixedSignLib.sub(delta.get(), amount));
    }
}

// ============================================================
// FILE: src/types/HookBuffer.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import {EXPECTED_HOOK_RETURN_MAGIC} from "../interfaces/IAngstromComposable.sol";
import {CalldataReader} from "./CalldataReader.sol";

/// @dev 0 or packed (u64 memory pointer ++ u160 hook address ++ u32 calldata length)
type HookBuffer is uint256;

using HookBufferLib for HookBuffer global;

/// @author philogy <https://github.com/philogy>
/// @dev Custom bytes allocation that stores a partially encoded hook call such that hashing of
/// hook data for validation & actual hook triggering can be done in different parts of the order
/// processing lifecycle.
library HookBufferLib {
    error InvalidHookReturn();

    /// @dev Hash of empty sequence of bytes `keccak256("")`
    /// @custom:test test/types/OrderIterator.t.sol:test_emptyBytesHash
    uint256 internal constant EMPTY_BYTES_HASH =
        0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;

    uint256 internal constant HOOK_ADDR_OFFSET = 32;
    uint256 internal constant HOOK_MEM_PTR_OFFSET = 192;
    uint256 internal constant HOOK_LENGTH_MASK = 0xffffffff;

    /// @dev Left-shifted hook selector (`compose(address, bytes)`).
    uint256 internal constant HOOK_SELECTOR_LEFT_ALIGNED =
        0x7407905c00000000000000000000000000000000000000000000000000000000;

    function readFrom(CalldataReader reader, bool noHookToRead)
        internal
        pure
        returns (CalldataReader, HookBuffer hook, bytes32 hash)
    {
        assembly ("memory-safe") {
            hash := EMPTY_BYTES_HASH
            if iszero(noHookToRead) {
                // Load length of address + payload from reader.
                let hookDataLength := shr(232, calldataload(reader))
                reader := add(reader, 3)

                // Allocate memory for hook call.
                let memPtr := mload(0x40)
                let contentOffset := add(memPtr, sub(0x64, 20))
                mstore(0x40, add(contentOffset, hookDataLength))

                // Copy hook data into memory and hash.
                calldatacopy(contentOffset, reader, hookDataLength)
                hash := keccak256(contentOffset, hookDataLength)
                reader := add(reader, hookDataLength)

                // Load hook address from memory ensuring upper bytes are cleared.
                // If `hookDataLength` < 20 dirty lower bytes will become part of the hook address.
                // This could lead to an unexpected hook address being called on behalf of the
                // signer, however this can only occur if: 1. Said signer signs a malformed order
                // struct (hook data length < 20) and 2. The submitting node decides to maliciously
                // include the order despite it violating the encoding specification.
                let hookAddr := shr(96, mload(add(memPtr, add(0x44, 12))))

                // Setup memory for full call.
                mstore(memPtr, HOOK_SELECTOR_LEFT_ALIGNED) // 0x00:0x04 selector
                mstore(add(memPtr, 0x24), 0x40) // 0x24:0x44 calldata offset
                // Can underflow, which would result in an insanely high length being written to memory.
                let payloadLength := sub(hookDataLength, 20)
                mstore(add(memPtr, 0x44), payloadLength) // 0x44:0x64 payload length

                // Build packed hook pointer.
                // `payloadLength` bounded to [-20; 2^24-21], + 0x64 => [+80, 2^24+79] (cannot
                // overflow because its allotted 32 bits in the packed hook pointer).
                hook :=
                    or(
                        shl(HOOK_MEM_PTR_OFFSET, memPtr),
                        or(shl(HOOK_ADDR_OFFSET, hookAddr), add(payloadLength, 0x64))
                    )
            }
        }

        return (reader, hook, hash);
    }

    function tryTrigger(HookBuffer self, address from) internal {
        assembly ("memory-safe") {
            if self {
                // Unpack hook.
                let calldataLength := and(self, HOOK_LENGTH_MASK)
                let memPtr := shr(HOOK_MEM_PTR_OFFSET, self)
                // Encode `from`.
                mstore(add(memPtr, 0x04), from)
                // Call hook. The upper bytes of `hookAddr` will be dirty from the memory pointer
                // but the EVM discards upper bytes for calls. https://ethereum.github.io/execution-specs/src/ethereum/cancun/vm/instructions/system.py.html#ethereum.cancun.vm.instructions.system.call:0
                let hookAddr := shr(HOOK_ADDR_OFFSET, self)
                // In the case where `hookDataLength` < 20 the calldata will not represent a valid
                // ABI encoded call because the calldata length (0x44:0x64) will be truncated.
                let success := call(gas(), hookAddr, 0, memPtr, calldataLength, 0x00, 0x20)

                // Check that the call was successful, sufficient data was returned and the expected
                // return magic was returned.
                if iszero(
                    and(
                        success,
                        and(gt(returndatasize(), 31), eq(mload(0x00), EXPECTED_HOOK_RETURN_MAGIC))
                    )
                ) {
                    mstore(0x00, 0xf959fdae /* InvalidHookReturn() */ )
                    revert(0x1c, 0x04)
                }
            }
        }
    }
}

// ============================================================
// FILE: src/types/Pair.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {CalldataReader} from "./CalldataReader.sol";
import {AssetArray} from "./Asset.sol";
import {RayMathLib} from "../libraries/RayMathLib.sol";
import {PoolConfigStore, StoreKey} from "../libraries/PoolConfigStore.sol";
import {ONE_E6} from "./ConfigEntry.sol";
import {StoreKey, HASH_TO_STORE_KEY_SHIFT} from "../types/StoreKey.sol";

type Pair is uint256;

type PairArray is uint256;

using PairLib for Pair global;
using PairLib for PairArray global;

/// @author philogy <https://github.com/philogy>
/// @dev Keeps track of pairs used in a given transaction, ensuring they've been initialized and are
/// unique.
library PairLib {
    using RayMathLib for uint256;

    error OutOfOrderOrDuplicatePairs();
    error PairAccessOutOfBounds(uint256 index, uint256 length);

    uint256 internal constant PAIR_ARRAY_MEM_OFFSET_OFFSET = 32;
    uint256 internal constant PAIR_ARRAY_LENGTH_MASK = 0xffffffff;

    /// @dev 6 words for: asset0, asset1, priceAB, priceBA, tickSpacing, fee
    uint256 internal constant PAIR_MEM_BYTES = 0xc0;

    uint256 internal constant PAIR_ASSET0_OFFSET = 0x00;
    uint256 internal constant PAIR_ASSET1_OFFSET = 0x20;
    uint256 internal constant PAIR_TICK_SPACING_OFFSET = 0x40;
    uint256 internal constant PAIR_FEE_OFFSET = 0x60;
    uint256 internal constant PAIR_PRICE_0_OVER_1_OFFSET = 0x80;
    uint256 internal constant PAIR_PRICE_1_OVER_0_OFFSET = 0xa0;

    uint256 internal constant INDEX_A_OFFSET = 16;
    uint256 internal constant INDEX_B_MASK = 0xffff;

    uint256 internal constant PAIR_CD_BYTES = 38;

    function readFromAndValidate(CalldataReader reader, AssetArray assets, PoolConfigStore store)
        internal
        view
        returns (CalldataReader, PairArray pairs)
    {
        uint256 raw_memoryOffset;
        uint256 raw_memoryEnd;

        CalldataReader end;
        {
            (reader, end) = reader.readU24End();
            uint256 length = (end.offset() - reader.offset()) / PAIR_CD_BYTES;

            assembly ("memory-safe") {
                // WARN: Memory is allocated, but **not cleaned**.
                raw_memoryOffset := mload(0x40)
                raw_memoryEnd := add(raw_memoryOffset, mul(PAIR_MEM_BYTES, length))
                mstore(0x40, raw_memoryEnd)
                // No need to mask length because we know it's less than 4 bytes (u24.max / PAIR_BYTES < u32.max)
                pairs := or(shl(PAIR_ARRAY_MEM_OFFSET_OFFSET, raw_memoryOffset), length)
            }
        }

        uint32 lastIndices;
        for (; raw_memoryOffset < raw_memoryEnd;) {
            // Load, decode and validate assets of pair.
            {
                uint32 indices;
                (reader, indices) = reader.readU32();
                address asset0 = assets.get(indices >> INDEX_A_OFFSET).addr();
                address asset1 = assets.get(indices & INDEX_B_MASK).addr();
                // We ensure pair uniqueness by ensuring that the list is sorted and that every pair
                // is unique by ensuring there's only one valid ordering of asset 0 & 1.
                if (indices <= lastIndices || asset0 >= asset1) revert OutOfOrderOrDuplicatePairs();
                lastIndices = indices;

                assembly ("memory-safe") {
                    mstore(add(raw_memoryOffset, PAIR_ASSET0_OFFSET), asset0)
                    mstore(add(raw_memoryOffset, PAIR_ASSET1_OFFSET), asset1)
                }
            }

            // Load and store pool config.
            {
                StoreKey key;
                assembly ("memory-safe") {
                    key :=
                        shl(
                            HASH_TO_STORE_KEY_SHIFT,
                            keccak256(add(raw_memoryOffset, PAIR_ASSET0_OFFSET), 0x40)
                        )
                }

                uint16 storeIndex;
                (reader, storeIndex) = reader.readU16();
                (int24 tickSpacing, uint24 feeInE6) = store.get(key, storeIndex);

                assembly ("memory-safe") {
                    mstore(add(raw_memoryOffset, PAIR_TICK_SPACING_OFFSET), tickSpacing)
                    mstore(add(raw_memoryOffset, PAIR_FEE_OFFSET), feeInE6)
                }
            }

            // Load main AB price, compute inverse, store both.
            {
                uint256 price1Over0;
                (reader, price1Over0) = reader.readU256();
                uint256 price0Over1 = price1Over0.invRayUnchecked();
                assembly ("memory-safe") {
                    mstore(add(raw_memoryOffset, PAIR_PRICE_0_OVER_1_OFFSET), price0Over1)
                    mstore(add(raw_memoryOffset, PAIR_PRICE_1_OVER_0_OFFSET), price1Over0)
                }
            }

            unchecked {
                raw_memoryOffset += PAIR_MEM_BYTES;
            }
        }

        return (end, pairs);
    }

    function len(PairArray self) internal pure returns (uint256 length) {
        return PairArray.unwrap(self) & PAIR_ARRAY_LENGTH_MASK;
    }

    function get(PairArray self, uint256 index) internal pure returns (Pair pair) {
        if (self.len() <= index) revert PairAccessOutOfBounds(index, self.len());
        uint256 raw_memoryOffset = PairArray.unwrap(self) >> PAIR_ARRAY_MEM_OFFSET_OFFSET;
        unchecked {
            return Pair.wrap(raw_memoryOffset + index * PAIR_MEM_BYTES);
        }
    }

    function getPoolInfo(Pair self)
        internal
        pure
        returns (address asset0, address asset1, int24 tickSpacing)
    {
        assembly ("memory-safe") {
            asset0 := mload(add(self, PAIR_ASSET0_OFFSET))
            asset1 := mload(add(self, PAIR_ASSET1_OFFSET))
            tickSpacing := mload(add(self, PAIR_TICK_SPACING_OFFSET))
        }
    }

    function getAssets(Pair self, bool zeroToOne)
        internal
        pure
        returns (address assetIn, address assetOut)
    {
        assembly ("memory-safe") {
            let offsetIfZeroToOne := shl(5, zeroToOne)
            assetIn := mload(add(self, xor(offsetIfZeroToOne, 0x20)))
            assetOut := mload(add(self, offsetIfZeroToOne))
        }
    }

    function getSwapInfo(Pair self, bool zeroToOne)
        internal
        pure
        returns (address assetIn, address assetOut, uint256 priceOutVsIn)
    {
        uint256 oneMinusFee;
        assembly ("memory-safe") {
            let offsetIfZeroToOne := shl(5, zeroToOne)
            assetIn := mload(add(self, xor(offsetIfZeroToOne, 0x20)))
            assetOut := mload(add(self, offsetIfZeroToOne))
            priceOutVsIn := mload(add(self, add(PAIR_PRICE_0_OVER_1_OFFSET, offsetIfZeroToOne)))
            oneMinusFee := sub(ONE_E6, mload(add(self, PAIR_FEE_OFFSET)))
        }
        priceOutVsIn = priceOutVsIn * oneMinusFee / ONE_E6;
    }
}

// ============================================================
// FILE: src/types/PoolRewards.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";
import {IUniV4} from "../interfaces/IUniV4.sol";
import {TickLib} from "../libraries/TickLib.sol";

/// @dev Should accommodate all possible tick values.
uint256 constant REWARD_GROWTH_SIZE = 16777216;

struct PoolRewards {
    uint256[REWARD_GROWTH_SIZE] rewardGrowthOutside;
    uint256 globalGrowth;
}

using PoolRewardsLib for PoolRewards global;

/// @author philogy <https://github.com/philogy>
/// @dev Computes and maintains global LP rewards.
library PoolRewardsLib {
    using IUniV4 for IPoolManager;
    using TickLib for uint256;
    using TickLib for int24;

    function getGrowthInside(PoolRewards storage self, int24 current, int24 lower, int24 upper)
        internal
        view
        returns (uint256 growthInside)
    {
        unchecked {
            uint256 lowerGrowth = self.rewardGrowthOutside[uint24(lower)];
            uint256 upperGrowth = self.rewardGrowthOutside[uint24(upper)];

            if (current < lower) {
                return lowerGrowth - upperGrowth;
            }
            if (upper <= current) {
                return upperGrowth - lowerGrowth;
            }

            return self.globalGrowth - lowerGrowth - upperGrowth;
        }
    }

    /// @dev Update growth values for a valid tick move from `prevTick` to `newTick`. Expects
    /// `prevTick` and `newTick` to be valid Uniswap ticks (defined as tick ∈ [TickMath.MIN_TICK;
    /// TickMath.MAX_TICK]).
    function updateAfterTickMove(
        PoolRewards storage self,
        PoolId id,
        IPoolManager uniV4,
        int24 prevTick,
        int24 newTick,
        int24 tickSpacing
    ) internal {
        if (newTick > prevTick) {
            // We assume the ticks are valid so no risk of underflow with these calls.
            if (newTick.normalizeUnchecked(tickSpacing) > prevTick) {
                _updateTickMoveUp(self, uniV4, id, prevTick, newTick, tickSpacing);
            }
        } else if (newTick < prevTick) {
            // We assume the ticks are valid so no risk of underflow with these calls.
            if (newTick < prevTick.normalizeUnchecked(tickSpacing)) {
                _updateTickMoveDown(self, uniV4, id, prevTick, newTick, tickSpacing);
            }
        }
    }

    function _updateTickMoveUp(
        PoolRewards storage self,
        IPoolManager uniV4,
        PoolId id,
        int24 tick,
        int24 newTick,
        int24 tickSpacing
    ) private {
        uint256 globalGrowth = self.globalGrowth;

        while (true) {
            bool initialized;
            (initialized, tick) = uniV4.getNextTickGt(id, tick, tickSpacing);

            if (newTick < tick) break;
            if (initialized) {
                unchecked {
                    self.rewardGrowthOutside[uint24(tick)] =
                        globalGrowth - self.rewardGrowthOutside[uint24(tick)];
                }
            }
        }
    }

    function _updateTickMoveDown(
        PoolRewards storage self,
        IPoolManager uniV4,
        PoolId id,
        int24 tick,
        int24 newTick,
        int24 tickSpacing
    ) private {
        while (true) {
            bool initialized;
            (initialized, tick) = uniV4.getNextTickLe(id, tick, tickSpacing);

            if (tick <= newTick) break;

            if (initialized) {
                unchecked {
                    self.rewardGrowthOutside[uint24(tick)] =
                        self.globalGrowth - self.rewardGrowthOutside[uint24(tick)];
                }
            }
            tick--;
        }
    }
}

// ============================================================
// FILE: src/types/PoolUpdateVariantMap.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

type PoolUpdateVariantMap is uint8;

using PoolUpdateVariantMapLib for PoolUpdateVariantMap global;

/// @author philogy <https://github.com/philogy>
library PoolUpdateVariantMapLib {
    uint256 internal constant ZERO_FOR_ONE_FLAG = 0x01;
    uint256 internal constant CURRENT_ONLY_FLAG = 0x02;

    function zeroForOne(PoolUpdateVariantMap self) internal pure returns (bool) {
        return PoolUpdateVariantMap.unwrap(self) & ZERO_FOR_ONE_FLAG != 0;
    }

    function currentOnly(PoolUpdateVariantMap self) internal pure returns (bool) {
        return PoolUpdateVariantMap.unwrap(self) & CURRENT_ONLY_FLAG != 0;
    }
}

// ============================================================
// FILE: src/types/Positions.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import {PoolId} from "v4-core/src/types/PoolId.sol";

struct Positions {
    mapping(PoolId id => mapping(bytes32 uniPositionKey => Position)) positions;
}

struct Position {
    uint256 lastGrowthInside;
}

using PositionsLib for Positions global;

/// @author philogy <https://github.com/philogy>
library PositionsLib {
    function get(
        Positions storage self,
        PoolId id,
        address owner,
        int24 lowerTick,
        int24 upperTick,
        bytes32 salt
    ) internal view returns (Position storage position, bytes32 positionKey) {
        assembly ("memory-safe") {
            // Compute `positionKey` as `keccak256(abi.encodePacked(owner, lowerTick, upperTick, salt))`.
            // Less efficient than alternative ordering *but* lets us reuse as Uniswap position key.
            mstore(0x06, upperTick)
            mstore(0x03, lowerTick)
            mstore(0x00, owner)
            // WARN: Free memory pointer temporarily invalid from here on.
            mstore(0x26, salt)
            positionKey := keccak256(12, add(add(3, 3), add(20, 32)))
            // Upper bytes of free memory pointer cleared.
            mstore(0x26, 0)
        }
        position = self.positions[id][positionKey];
    }
}

// ============================================================
// FILE: src/types/Price.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {RayMathLib} from "../libraries/RayMathLib.sol";

type PriceAB is uint256;

type AmountA is uint256;

type AmountB is uint256;

using PriceLib for PriceAB global;
using PriceLib for AmountA global;
using {addA as +, subA as -, gtA as >, ltA as <} for AmountA global;
using PriceLib for AmountB global;
using {addB as +, subB as -, gtB as >, ltB as <} for AmountB global;

function addA(AmountA x, AmountA y) pure returns (AmountA) {
    return AmountA.wrap(x.into() + y.into());
}

function subA(AmountA x, AmountA y) pure returns (AmountA) {
    return AmountA.wrap(x.into() - y.into());
}

function gtA(AmountA x, AmountA y) pure returns (bool) {
    return x.into() > y.into();
}

function ltA(AmountA x, AmountA y) pure returns (bool) {
    return x.into() < y.into();
}

function addB(AmountB x, AmountB y) pure returns (AmountB) {
    return AmountB.wrap(x.into() + y.into());
}

function subB(AmountB x, AmountB y) pure returns (AmountB) {
    return AmountB.wrap(x.into() - y.into());
}

function gtB(AmountB x, AmountB y) pure returns (bool) {
    return x.into() > y.into();
}

function ltB(AmountB x, AmountB y) pure returns (bool) {
    return x.into() < y.into();
}

/// @author philogy <https://github.com/philogy>
library PriceLib {
    using RayMathLib for *;

    uint256 internal constant ONE_E6 = 1e6;

    function into(PriceAB price) internal pure returns (uint256) {
        return PriceAB.unwrap(price);
    }

    function into(AmountA amount) internal pure returns (uint256) {
        return AmountA.unwrap(amount);
    }

    function into(AmountB amount) internal pure returns (uint256) {
        return AmountB.unwrap(amount);
    }

    /// @dev Convert an amount in `A` to `B` based on `priceAB`, rounding the result *down*.
    function convertDown(PriceAB priceAB, AmountA amountA) internal pure returns (AmountB) {
        return AmountB.wrap(amountA.into().divRayDown(priceAB.into()));
    }

    /// @dev Convert an amount in `A` to `B` based on `priceAB`, rounding the result *up*.
    function convertUp(PriceAB priceAB, AmountA amountA) internal pure returns (AmountB) {
        return AmountB.wrap(amountA.into().divRayUp(priceAB.into()));
    }

    /// @dev Convert an amount in `B` to `A` based on `priceAB`, rounding the result *down*.
    function convertDown(PriceAB priceAB, AmountB amountB) internal pure returns (AmountA) {
        return AmountA.wrap(amountB.into().mulRayDown(priceAB.into()));
    }

    /// @dev Convert an amount in `B` to `A` based on `priceAB`, rounding the result *up*.
    function convertUp(PriceAB priceAB, AmountB amountB) internal pure returns (AmountA) {
        return AmountA.wrap(amountB.into().mulRayUp(priceAB.into()));
    }

    /// @dev Scale `price` by `(1 - feeE6)` such that `feeE6/1e6` A is received for every B.
    function reduceByFeeE6(PriceAB price, uint256 feeE6) internal pure returns (PriceAB) {
        uint256 oneMinusFee;
        unchecked {
            oneMinusFee = ONE_E6 - feeE6;
        }
        return PriceAB.wrap(PriceAB.unwrap(price) * oneMinusFee / ONE_E6);
    }
}

// ============================================================
// FILE: src/types/StoreKey.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @dev Left shift in bits to convert the full hash `keccak256(abi.encode(asset0, asset1))` to a store key.
uint256 constant HASH_TO_STORE_KEY_SHIFT = 40;

type StoreKey is bytes27;

using StoreKeyLib for StoreKey global;
using {StoreKey_eq as ==, StoreKey_neq as !=} for StoreKey global;

function StoreKey_eq(StoreKey a, StoreKey b) pure returns (bool) {
    return StoreKey.unwrap(a) == StoreKey.unwrap(b);
}

function StoreKey_neq(StoreKey a, StoreKey b) pure returns (bool) {
    return StoreKey.unwrap(a) != StoreKey.unwrap(b);
}

/// @author philogy <https://github.com/philogy>
library StoreKeyLib {
    /// @dev Computes the `StoreKey` from the inputs. WARN: Does not check that the assets are
    /// sorted and in unique order.
    function keyFromAssetsUnchecked(address asset0, address asset1)
        internal
        pure
        returns (StoreKey key)
    {
        assembly ("memory-safe") {
            mstore(0x00, asset0)
            mstore(0x20, asset1)
            key := shl(HASH_TO_STORE_KEY_SHIFT, keccak256(0x00, 0x40))
        }
    }
}

// ============================================================
// FILE: src/types/SwapCall.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {PoolId} from "v4-core/src/types/PoolId.sol";
import {ANGSTROM_INIT_HOOK_FEE} from "../modules/UniConsumer.sol";
import {BalanceDelta, BalanceDeltaLibrary} from "v4-core/src/types/BalanceDelta.sol";

// forgefmt: disable-next-item
struct SwapCall {
    uint256 leftPaddedSelector;
    /* 0x000 */ address asset0;
    /* 0x020 */ address asset1;
    /* 0x040 */ uint24 fee;
    /* 0x060 */ int24 tickSpacing;
    /* 0x080 */ address hook;
    /* 0x0a0 */ bool zeroForOne;
    /* 0x0c0 */ int256 amountSpecified;
    /* 0x0e0 */ uint160 sqrtPriceLimitX96;
    /* 0x100 */ uint256 hookDataRelativeOffset;
    /* 0x120 */ uint256 hookDataLength;
}

using SwapCallLib for SwapCall global;

/// @author philogy <https://github.com/philogy>
/// @dev Maintains a partially encoded swap call such that it doesn't have to be re-allocated and
/// set for every swap.
library SwapCallLib {
    error SwapFailed();

    /// @dev Uniswap's `MIN_SQRT_RATIO + 1` to pass the limit check.
    uint160 internal constant MIN_SQRT_RATIO = 4295128740;
    /// @dev Uniswap's `MAX_SQRT_RATIO - 1` to pass the limit check.
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970341;

    uint256 internal constant HOOK_DATA_CD_REL_OFFSET = 0x120;
    uint256 internal constant CALL_PAYLOAD_START_OFFSET = 28;
    uint256 internal constant CALL_PAYLOAD_CD_BYTES = 0x144;
    uint256 internal constant POOL_KEY_OFFSET = 0x20;
    uint256 internal constant POOL_KEY_SIZE = 0xa0;

    function newSwapCall(address hook) internal pure returns (SwapCall memory swapCall) {
        swapCall.leftPaddedSelector = uint256(uint32(IPoolManager.swap.selector));
        swapCall.fee = ANGSTROM_INIT_HOOK_FEE;
        swapCall.hook = hook;
        swapCall.hookDataRelativeOffset = HOOK_DATA_CD_REL_OFFSET;
    }

    function setZeroForOne(SwapCall memory self, bool zeroForOne) internal pure {
        self.zeroForOne = zeroForOne;
        self.sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO : MAX_SQRT_RATIO;
    }

    function getId(SwapCall memory self) internal pure returns (PoolId id) {
        assembly ("memory-safe") {
            id := keccak256(add(self, POOL_KEY_OFFSET), POOL_KEY_SIZE)
        }
    }

    function call(SwapCall memory self, IPoolManager uni) internal {
        assembly ("memory-safe") {
            let success :=
                call(gas(), uni, 0, add(self, CALL_PAYLOAD_START_OFFSET), CALL_PAYLOAD_CD_BYTES, 0, 0)
            if iszero(success) {
                let free := mload(0x40)
                returndatacopy(free, 0, returndatasize())
                revert(free, returndatasize())
            }
        }
    }
}

// ============================================================
// FILE: src/types/ToBOrderBuffer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

struct ToBOrderBuffer {
    bytes32 typeHash;
    uint256 quantityIn;
    uint256 quantityOut;
    uint256 maxGasAsset0;
    bool useInternal;
    address assetIn;
    address assetOut;
    address recipient;
    uint64 validForBlock;
}

using ToBOrderBufferLib for ToBOrderBuffer global;

/// @author philogy <https://github.com/philogy>
library ToBOrderBufferLib {
    uint256 internal constant BUFFER_BYTES = 288;

    /// forgefmt: disable-next-item
    bytes32 internal constant TOP_OF_BLOCK_ORDER_TYPEHASH = keccak256(
        "TopOfBlockOrder("
           "uint128 quantity_in,"
           "uint128 quantity_out,"
           "uint128 max_gas_asset0,"
           "bool use_internal,"
           "address asset_in,"
           "address asset_out,"
           "address recipient,"
           "uint64 valid_for_block"
        ")"
    );

    function init(ToBOrderBuffer memory self) internal view {
        self.typeHash = TOP_OF_BLOCK_ORDER_TYPEHASH;
        self.validForBlock = uint64(block.number);
    }

    function hash(ToBOrderBuffer memory self) internal pure returns (bytes32 orderHash) {
        assembly ("memory-safe") {
            orderHash := keccak256(self, BUFFER_BYTES)
        }
    }
}

// ============================================================
// FILE: src/types/ToBOrderVariantMap.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

type ToBOrderVariantMap is uint8;

using ToBOrderVariantMapLib for ToBOrderVariantMap global;

/// @author philogy <https://github.com/philogy>
library ToBOrderVariantMapLib {
    uint256 internal constant USE_INTERNAL_BIT = 0x01;
    uint256 internal constant ZERO_FOR_ONE_BIT = 0x02;
    uint256 internal constant HAS_RECIPIENT_BIT = 0x04;
    uint256 internal constant IS_ECDSA_BIT = 0x08;

    function useInternal(ToBOrderVariantMap variant) internal pure returns (bool) {
        return ToBOrderVariantMap.unwrap(variant) & USE_INTERNAL_BIT != 0;
    }

    function zeroForOne(ToBOrderVariantMap variant) internal pure returns (bool) {
        return ToBOrderVariantMap.unwrap(variant) & ZERO_FOR_ONE_BIT != 0;
    }

    function recipientIsSome(ToBOrderVariantMap variant) internal pure returns (bool) {
        return ToBOrderVariantMap.unwrap(variant) & HAS_RECIPIENT_BIT != 0;
    }

    function isEcdsa(ToBOrderVariantMap variant) internal pure returns (bool) {
        return ToBOrderVariantMap.unwrap(variant) & IS_ECDSA_BIT != 0;
    }
}

// ============================================================
// FILE: src/types/TypedDataHasher.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @dev Abstraction for memory pointer to 66 bytes of memory used for ERC712 typed data hashing.
type TypedDataHasher is uint256;

using TypedDataHasherLib for TypedDataHasher global;

/// @author philogy <https://github.com/philogy>
/// @dev Custom bytes allocation used to compute the EIP712 message digest from a struct hash and
/// domain hash.
library TypedDataHasherLib {
    function init(bytes32 separator) internal pure returns (TypedDataHasher hasher) {
        assembly ("memory-safe") {
            // Allocate 66 (0x42) bytes of memory (last 32 can be left uncleared because we
            // always overwrite it in `hashTypedData`).
            hasher := mload(0x40)
            mstore(0x40, add(hasher, 0x42))
            // Pre-store ERC712 header bytes and domain separator in memory.
            mstore(hasher, hex"1901")
            mstore(add(hasher, 2), separator)
        }
    }

    function hashTypedData(TypedDataHasher hasher, bytes32 structHash)
        internal
        pure
        returns (bytes32 digest)
    {
        assembly ("memory-safe") {
            mstore(add(hasher, 0x22), structHash)
            digest := keccak256(hasher, 0x42)
        }
    }
}

// ============================================================
// FILE: src/types/UserOrderBuffer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {CalldataReader} from "./CalldataReader.sol";
import {UserOrderVariantMap} from "./UserOrderVariantMap.sol";
import {PriceAB as PriceOutVsIn, AmountA as AmountOut, AmountB as AmountIn} from "./Price.sol";

struct UserOrderBuffer {
    bytes32 typeHash;
    uint32 refId;
    uint256 exactIn_or_minQuantityIn;
    uint256 quantity_or_maxQuantityIn;
    uint256 maxExtraFeeAsset0;
    uint256 minPrice;
    bool useInternal;
    address assetIn;
    address assetOut;
    address recipient;
    bytes32 hookDataHash;
    uint64 nonce_or_validForBlock;
    uint40 deadline_or_empty;
}

using UserOrderBufferLib for UserOrderBuffer global;

/// @author philogy <https://github.com/philogy>
library UserOrderBufferLib {
    error FillingTooLittle();
    error FillingTooMuch();
    error GasAboveMax();

    uint256 internal constant STANDING_ORDER_BYTES = 416;
    uint256 internal constant FLASH_ORDER_BYTES = 384;

    uint256 internal constant VARIANT_MAP_BYTES = 1;
    /// @dev Destination offset for direct calldatacopy of 4-byte ref ID (therefore not word aligned).
    uint256 internal constant REF_ID_MEM_OFFSET = 0x20;
    uint256 internal constant REF_ID_BYTES = 4;
    uint256 internal constant NONCE_MEM_OFFSET = 0x160;
    uint256 internal constant NONCE_BYTES = 8;
    uint256 internal constant DEADLINE_MEM_OFFSET = 0x180;
    uint256 internal constant DEADLINE_BYTES = 5;

    /// forgefmt: disable-next-item
    bytes32 internal constant PARTIAL_STANDING_ORDER_TYPEHASH =
        keccak256(
            "PartialStandingOrder("
            "uint32 ref_id,"
            "uint128 min_amount_in,"
            "uint128 max_amount_in,"
            "uint128 max_extra_fee_asset0,"
            "uint256 min_price,"
            "bool use_internal,"
            "address asset_in,"
            "address asset_out,"
            "address recipient,"
            "bytes hook_data,"
            "uint64 nonce,"
            "uint40 deadline"
            ")"
        );

    /// forgefmt: disable-next-item
    bytes32 internal constant EXACT_STANDING_ORDER_TYPEHASH =
        keccak256(
            "ExactStandingOrder("
            "uint32 ref_id,"
            "bool exact_in,"
            "uint128 amount,"
            "uint128 max_extra_fee_asset0,"
            "uint256 min_price,"
            "bool use_internal,"
            "address asset_in,"
            "address asset_out,"
            "address recipient,"
            "bytes hook_data,"
            "uint64 nonce,"
            "uint40 deadline"
            ")"
        );

    /// forgefmt: disable-next-item
    bytes32 internal constant PARTIAL_FLASH_ORDER_TYPEHASH =
        keccak256(
            "PartialFlashOrder("
            "uint32 ref_id,"
            "uint128 min_amount_in,"
            "uint128 max_amount_in,"
            "uint128 max_extra_fee_asset0,"
            "uint256 min_price,"
            "bool use_internal,"
            "address asset_in,"
            "address asset_out,"
            "address recipient,"
            "bytes hook_data,"
            "uint64 valid_for_block"
            ")"
        );

    /// forgefmt: disable-next-item
    bytes32 internal constant EXACT_FLASH_ORDER_TYPEHASH =
        keccak256(
            "ExactFlashOrder("
            "uint32 ref_id,"
            "bool exact_in,"
            "uint128 amount,"
            "uint128 max_extra_fee_asset0,"
            "uint256 min_price,"
            "bool use_internal,"
            "address asset_in,"
            "address asset_out,"
            "address recipient,"
            "bytes hook_data,"
            "uint64 valid_for_block"
            ")"
        );

    function init(UserOrderBuffer memory self, CalldataReader reader)
        internal
        pure
        returns (CalldataReader, UserOrderVariantMap variantMap)
    {
        assembly ("memory-safe") {
            variantMap := byte(0, calldataload(reader))
            reader := add(reader, VARIANT_MAP_BYTES)
            // Copy `refId` from calldata directly to memory.
            calldatacopy(
                add(self, add(REF_ID_MEM_OFFSET, sub(0x20, REF_ID_BYTES))), reader, REF_ID_BYTES
            )
            // Advance reader.
            reader := add(reader, REF_ID_BYTES)
        }
        // forgefmt: disable-next-item
        if (variantMap.quantitiesPartial()) {
            self.typeHash = variantMap.isStanding()
                ? PARTIAL_STANDING_ORDER_TYPEHASH
                : PARTIAL_FLASH_ORDER_TYPEHASH;
        } else {
            self.typeHash = variantMap.isStanding()
                ? EXACT_STANDING_ORDER_TYPEHASH
                : EXACT_FLASH_ORDER_TYPEHASH;
        }

        self.useInternal = variantMap.useInternal();

        return (reader, variantMap);
    }

    function structHash(UserOrderBuffer memory self, UserOrderVariantMap variant)
        internal
        pure
        returns (bytes32 hashed)
    {
        uint256 structLength = variant.isStanding() ? STANDING_ORDER_BYTES : FLASH_ORDER_BYTES;
        assembly ("memory-safe") {
            hashed := keccak256(self, structLength)
        }
    }

    function loadAndComputeQuantity(
        UserOrderBuffer memory self,
        CalldataReader reader,
        UserOrderVariantMap variant,
        PriceOutVsIn price
    ) internal pure returns (CalldataReader, AmountIn quantityIn, AmountOut quantityOut) {
        uint256 quantity;
        if (variant.quantitiesPartial()) {
            uint256 minQuantityIn;
            uint256 maxQuantityIn;
            (reader, minQuantityIn) = reader.readU128();
            (reader, maxQuantityIn) = reader.readU128();
            (reader, quantity) = reader.readU128();
            self.exactIn_or_minQuantityIn = minQuantityIn;
            self.quantity_or_maxQuantityIn = maxQuantityIn;

            if (quantity < minQuantityIn) revert FillingTooLittle();
            if (quantity > maxQuantityIn) revert FillingTooMuch();
        } else {
            (reader, quantity) = reader.readU128();
            self.exactIn_or_minQuantityIn = variant.exactIn() ? 1 : 0;
            self.quantity_or_maxQuantityIn = quantity;
        }

        uint128 extraFeeAsset0;
        {
            uint128 maxExtraFeeAsset0;
            (reader, maxExtraFeeAsset0) = reader.readU128();
            (reader, extraFeeAsset0) = reader.readU128();
            if (extraFeeAsset0 > maxExtraFeeAsset0) revert GasAboveMax();
            self.maxExtraFeeAsset0 = maxExtraFeeAsset0;
        }

        if (variant.zeroForOne()) {
            AmountIn fee = AmountIn.wrap(extraFeeAsset0);

            if (variant.specifyingInput()) {
                quantityIn = AmountIn.wrap(quantity);
                quantityOut = price.convertDown(quantityIn - fee);
            } else {
                quantityOut = AmountOut.wrap(quantity);
                quantityIn = price.convertUp(quantityOut) + fee;
            }
        } else {
            AmountOut fee = AmountOut.wrap(extraFeeAsset0);
            if (variant.specifyingInput()) {
                quantityIn = AmountIn.wrap(quantity);
                quantityOut = price.convertDown(quantityIn) - fee;
            } else {
                quantityOut = AmountOut.wrap(quantity);
                quantityIn = price.convertUp(quantityOut + fee);
            }
        }

        return (reader, quantityIn, quantityOut);
    }

    function readOrderValidation(
        UserOrderBuffer memory self,
        CalldataReader reader,
        UserOrderVariantMap variant
    ) internal view returns (CalldataReader) {
        if (variant.isStanding()) {
            // Copy slices directly from calldata into memory.
            assembly ("memory-safe") {
                calldatacopy(
                    add(self, add(NONCE_MEM_OFFSET, sub(0x20, NONCE_BYTES))), reader, NONCE_BYTES
                )
                reader := add(reader, NONCE_BYTES)
                calldatacopy(
                    add(self, add(DEADLINE_MEM_OFFSET, sub(0x20, DEADLINE_BYTES))),
                    reader,
                    DEADLINE_BYTES
                )
                reader := add(reader, DEADLINE_BYTES)
            }
        } else {
            // Nothing loaded from calldata, reader stays unmodified.
            self.nonce_or_validForBlock = uint64(block.number);
        }
        return reader;
    }
}

// ============================================================
// FILE: src/types/UserOrderVariantMap.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

type UserOrderVariantMap is uint8;

using UserOrderVariantMapLib for UserOrderVariantMap global;

/// @author philogy <https://github.com/philogy>
library UserOrderVariantMapLib {
    uint256 internal constant USE_INTERNAL_BIT = 0x01;
    uint256 internal constant HAS_RECIPIENT_BIT = 0x02;
    uint256 internal constant HAS_HOOK_BIT = 0x04;
    uint256 internal constant ZERO_FOR_ONE_BIT = 0x08;
    uint256 internal constant IS_STANDING_BIT = 0x10;
    uint256 internal constant QTY_PARTIAL_BIT = 0x20;
    uint256 internal constant IS_EXACT_IN_BIT = 0x40;
    uint256 internal constant IS_ECDSA_BIT = 0x80;

    uint256 internal constant SPECIFYING_IN_MASK = QTY_PARTIAL_BIT | IS_EXACT_IN_BIT;

    function useInternal(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & USE_INTERNAL_BIT != 0;
    }

    function recipientIsSome(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & HAS_RECIPIENT_BIT != 0;
    }

    function noHook(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & HAS_HOOK_BIT == 0;
    }

    function zeroForOne(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & ZERO_FOR_ONE_BIT != 0;
    }

    function specifyingInput(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & SPECIFYING_IN_MASK != 0;
    }

    function isStanding(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & IS_STANDING_BIT != 0;
    }

    function quantitiesPartial(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & QTY_PARTIAL_BIT != 0;
    }

    function exactIn(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & IS_EXACT_IN_BIT != 0;
    }

    function isEcdsa(UserOrderVariantMap variant) internal pure returns (bool) {
        return UserOrderVariantMap.unwrap(variant) & IS_ECDSA_BIT != 0;
    }
}
