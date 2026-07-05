// SPDX-License-Identifier: BUSL-1.1
pragma solidity <0.9.0 =0.8.28 >=0.7.0 >=0.8.0 ^0.8.0 ^0.8.19 ^0.8.4;

// node_modules/@stake-dao/address-book/src/CurveEthereum.sol

library CurveProtocol {
    address internal constant CRV = 0xD533a949740bb3306d119CC777fa900bA034cd52;
    address internal constant VECRV = 0x5f3b5DfEb7B28CDbD7FAba78963EE202a494e2A2;
    address internal constant CRV_USD = 0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E;
    address internal constant SD_VE_CRV = 0x478bBC744811eE8310B461514BDc29D03739084D;

    address internal constant FEE_DISTRIBUTOR = 0xD16d5eC345Dd86Fb63C6a9C43c517210F1027914;
    address internal constant GAUGE_CONTROLLER = 0x2F50D538606Fa9EDD2B11E2446BEb18C9D5846bB;
    address internal constant SMART_WALLET_CHECKER = 0xca719728Ef172d0961768581fdF35CB116e0B7a4;
    address internal constant CURVE_REGISTRY = 0xc522A6606BBA746d7960404F22a3DB936B6F4F50;

    address internal constant VOTING_APP_OWNERSHIP = 0xE478de485ad2fe566d49342Cbd03E49ed7DB3356;
    address internal constant VOTING_APP_PARAMETER = 0xBCfF8B0b9419b9A88c44546519b1e909cF330399;
    address internal constant MINTER = 0xd061D61a4d941c39E5453435B6345Dc261C2fcE0;
    address internal constant VE_BOOST = 0xD37A6aa3d8460Bd2b6536d608103D880695A23CD;

    // Convex
    address internal constant CONVEX_PROXY = 0x989AEb4d175e16225E39E87d0D97A3360524AD80;
    address internal constant CONVEX_BOOSTER = 0xF403C135812408BFbE8713b5A23a04b3D48AAE31;
    address internal constant CONVEX_TOKEN = 0x4e3FBD56CD56c3e72c1403e103b45Db9da5B9D2B; // CVX

    address internal constant META_REGISTRY = 0xF98B45FA17DE75FB1aD0e7aFD971b0ca00e379fC;
}

library CurveLocker {
    address internal constant TOKEN = 0xD533a949740bb3306d119CC777fa900bA034cd52;
    address internal constant SDTOKEN = 0xD1b5651E55D4CeeD36251c61c50C889B36F6abB5;
    address internal constant ASDTOKEN = 0x43E54C2E7b3e294De3A155785F52AB49d87B9922;
    address internal constant ASDTOKEN_ADAPTER = 0x4e8DA27Fa7F109565De6FdB813D5AA1A6F73c75f;
    address internal constant SYASDTOKEN = 0x18C11b1DC74cAB82AD18d5034FDe93FE90a41D99;
    address internal constant LOCKER = 0x52f541764E6e90eeBc5c21Ff570De0e2D63766B6;
    address internal constant DEPOSITOR = 0x88C88Aa6a9cedc2aff9b4cA6820292F39cc64026;
    address internal constant GAUGE = 0x7f50786A0b15723D741727882ee99a0BF34e3466;
    address internal constant ACCUMULATOR = 0x615959a1d3E2740054d7130028613ECfa988056f;
    address internal constant VOTER = 0x20b22019406Cf990F0569a6161cf30B8e6651dDa;

    address internal constant STRATEGY = 0x69D61428d089C2F35Bf6a472F540D0F82D1EA2cd;
    address internal constant FACTORY = 0xDC9718E7704f10DB1aFaad737f8A04bcd14C20AA;
    address internal constant VE_BOOST_DELEGATION = 0xe1F9C8ebBC80A013cAf0940fdD1A8554d763b9cf;
}

library CurveVotemarket {
    address internal constant PLATFORM = 0x0000000895cB182E6f983eb4D8b4E0Aa0B31Ae4c;
}

library CurveStrategy {
    address internal constant ACCOUNTANT = 0x93b4B9bd266fFA8AF68e39EDFa8cFe2A62011Ce0;
    address internal constant PROTOCOL_CONTROLLER = 0x2d8BcE1FaE00a959354aCD9eBf9174337A64d4fb;
    address internal constant GATEWAY = 0xe5d6D047DF95c6627326465cB27B64A8b77A8b91;

    address internal constant STRATEGY = 0x7D0775442d5961AE7090e4EC6C76180e8EEeEf54;

    address internal constant CONVEX_SIDECAR_IMPLEMENTATION = 0x66c3ce4718A39d44CE2430eB3E8B8d43c18bA1fa;
    address internal constant CONVEX_SIDECAR_FACTORY = 0x7Fa7fDb80b17f502C323D14Fa654a1e56B03C592;

    address internal constant FACTORY = 0x37B015FA4Ba976c57E8e3A0084288d9DcEA06003;
    address internal constant ALLOCATOR = 0x6Dbf307916Ae9c47549AbaF11Cb476252a14Ee9D;

    address internal constant REWARD_VAULT_IMPLEMENTATION = 0x74D8dd40118B13B210D0a1639141cE4458CAe0c0;
    address internal constant REWARD_RECEIVER_IMPLEMENTATION = 0x4E35037263f75F9fFE191B5f9B5C7cd0c3169019;

    address internal constant ROUTER = 0xc3a6CfC4c8112fBfd77f0d095a0eE2f2F4505Eef;
    address internal constant ROUTER_MODULE_DEPOSIT = 0xBf0a5d6a1f9A4098c69cE660F8b115dc8509b7C9;
    address internal constant ROUTER_MODULE_WITHDRAW = 0xE88772DFB857317476b77F1A25b888b9424Cf63c;
    address internal constant ROUTER_MODULE_CLAIM = 0xFD98cEcB88FC61101D4beBf1b6f9E65572222Ff5;
    address internal constant ROUTER_MODULE_MIGRATION_CURVE = 0x0e5Ca5f4989637d480968325B716Db7A6e46466B;
    address internal constant ROUTER_MODULE_MIGRATION_STAKE_DAO_V1 = 0xf0b84B9334132843fc256830Fb941d535853C120;
    address internal constant ROUTER_MODULE_MIGRATION_YEARN = 0x267C77f0616d44eD6D816527974a624B2Ba65eE3;
}

// node_modules/@safe-global/safe-smart-account/contracts/common/Enum.sol

/**
 * @title Enum - Collection of enums used in Safe contracts.
 * @author Richard Meissner - @rmeissner
 */
abstract contract Enum {
    enum Operation {
        Call,
        DelegateCall
    }
}

// node_modules/@solady/src/utils/FixedPointMathLib.sol

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

// node_modules/@stake-dao/interfaces/src/governance/Governance.sol

abstract contract Governance {
    address public governance;
    address public futureGovernance;

    ////////////////////////////////////////////////////////////////
    /// --- EVENTS & ERRORS
    ///////////////////////////////////////////////////////////////

    /// @notice Event emitted when governance is changed.
    /// @param newGovernance Address of the new governance.
    event GovernanceChanged(address indexed newGovernance);

    /// @notice Error emitted when auth failed
    error OnlyGovernance();

    ////////////////////////////////////////////////////////////////
    /// --- MODIFIERS
    ///////////////////////////////////////////////////////////////

    modifier onlyGovernance() {
        if (msg.sender != governance) revert OnlyGovernance();
        _;
    }

    ////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ////////////////////////////////////////////////////////////

    constructor(address _governance) {
        governance = _governance;
    }

    ////////////////////////////////////////////////////////////
    /// --- FUNCTIONS
    ////////////////////////////////////////////////////////////

    /// @notice Transfer the governance to a new address.
    /// @param _governance Address of the new governance.
    function transferGovernance(address _governance) public onlyGovernance {
        require(_governance != address(0), "Governance address cannot be 0x0");
        futureGovernance = _governance;
    }

    /// @notice Accept the governance transfer.
    function acceptGovernance() public {
        if (msg.sender != futureGovernance) revert OnlyGovernance();

        governance = msg.sender;
        emit GovernanceChanged(msg.sender);
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/interfaces/IERC165.sol

/// @notice More details at https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by `interfaceId`.
     * See the corresponding EIP section
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// node_modules/@stake-dao/interfaces/src/interfaces/curve/IGaugeController.sol

interface IGaugeController {
    struct VotedSlope {
        uint256 slope;
        uint256 power;
        uint256 end;
    }

    struct Points {
        uint256 bias;
        uint256 slope;
    }

    event AddType(string name, int128 type_id);
    event NewGauge(address addr, int128 gauge_type, uint256 weight);
    event NewGaugeWeight(address gauge_address, uint256 time, uint256 weight, uint256 total_weight);
    event NewTypeWeight(int128 type_id, uint256 time, uint256 weight, uint256 total_weight);
    event VoteForGauge(uint256 time, address user, address gauge_addr, uint256 weight);

    function add_gauge(address addr, int128 gauge_type) external;
    function add_gauge(address addr, int128 gauge_type, uint256 weight) external;
    function add_type(string calldata _name) external;
    function add_type(string calldata _name, uint256 weight) external;
    function change_gauge_weight(address addr, uint256 weight) external;
    function change_type_weight(int128 type_id, uint256 weight) external;
    function checkpoint() external;
    function checkpoint_gauge(address addr) external;
    function gauge_relative_weight_write(address addr) external returns (uint256);
    function gauge_relative_weight_write(address addr, uint256 time) external returns (uint256);
    function vote_for_gauge_weights(address _gauge_addr, uint256 _user_weight) external;
    function vote_for_many_gauge_weights(address[8] calldata _gauge_addrs, uint256[8] calldata _user_weight) external;
    function admin() external view returns (address);
    function gauge_exists(address _addr) external view returns (bool);
    function gauge_relative_weight(address addr) external view returns (uint256);
    function gauge_relative_weight(address addr, uint256 time) external view returns (uint256);
    function gauge_type_names(int128 arg0) external view returns (string memory);
    function gauge_types(address _addr) external view returns (int128);
    function gauges(uint256 arg0) external view returns (address);
    function get_gauge_weight(address addr) external view returns (uint256);
    function get_total_weight() external view returns (uint256);
    function get_type_weight(int128 type_id) external view returns (uint256);
    function get_weights_sum_per_type(int128 type_id) external view returns (uint256);
    function last_user_vote(address arg0, address arg1) external view returns (uint256);
    function n_gauge_types() external view returns (int128);
    function n_gauges() external view returns (int128);
    function points_sum(int128 arg0, uint256 arg1) external view returns (Points memory);
    function points_total(uint256 arg0) external view returns (uint256);
    function points_type_weight(int128 arg0, uint256 arg1) external view returns (uint256);
    function points_weight(address arg0, uint256 arg1) external view returns (Points memory);
    function time_sum(uint256 arg0) external view returns (uint256);
    function time_total() external view returns (uint256);
    function time_type_weight(uint256 arg0) external view returns (uint256);
    function time_weight(address arg0) external view returns (uint256);
    function token() external view returns (address);
    function vote_user_power(address arg0) external view returns (uint256);
    function vote_user_slopes(address arg0, address arg1) external view returns (VotedSlope memory);
    function voting_escrow() external view returns (address);
}

// node_modules/@safe-global/safe-smart-account/contracts/interfaces/ISignatureValidator.sol

contract ISignatureValidatorConstants {
    // bytes4(keccak256("isValidSignature(bytes,bytes)")
    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x20c13b0b;
}

abstract contract ISignatureValidator is ISignatureValidatorConstants {
    /**
     * @notice Legacy EIP1271 method to validate a signature.
     * @param _data Arbitrary length data signed on the behalf of address(this).
     * @param _signature Signature byte array associated with _data.
     *
     * MUST return the bytes4 magic value 0x20c13b0b when function passes.
     * MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5)
     * MUST allow external calls
     */
    function isValidSignature(bytes memory _data, bytes memory _signature) public view virtual returns (bytes4);
}

// node_modules/@stake-dao/interfaces/src/interfaces/curve/IVoting.sol

enum VoterState {
    Absent, // 0 -- No vote
    Yea, // 1 -- Vote in favor of the proposal
    Nay, // 2 -- Vote against the proposal
    Even
}

interface IVoting {
    event CastVote(uint256 indexed voteId, address indexed voter, bool _supports, uint256 stake);
    event ChangeMinQuorum(uint64 minAcceptQuorumPct);
    event ChangeSupportRequired(uint64 supportRequiredPct);
    event ExecuteVote(uint256 indexed voteId);
    event MinimumBalanceSet(uint256 minBalance);
    event MinimumTimeSet(uint256 minTime);
    event RecoverToVault(address indexed vault, address indexed token, uint256 amount);
    event ScriptResult(address indexed executor, bytes script, bytes input, bytes returnData);
    event StartVote(
        uint256 indexed voteId,
        address indexed creator,
        string metadata,
        uint256 minBalance,
        uint256 minTime,
        uint256 totalSupply,
        uint256 creatorVotingPower
    );

    function changeMinAcceptQuorumPct(uint64 _minAcceptQuorumPct) external;
    function changeSupportRequiredPct(uint64 _supportRequiredPct) external;
    function disableVoteCreationOnce() external;
    function enableVoteCreationOnce() external;
    function executeVote(uint256 _voteId) external;
    function forward(bytes calldata _evmScript) external;
    function initialize(
        address _token,
        uint64 _supportRequiredPct,
        uint64 _minAcceptQuorumPct,
        uint64 _voteTime,
        uint256 _minBalance,
        uint256 _minTime,
        uint256 _minBalanceLowerLimit,
        uint256 _minBalanceUpperLimit,
        uint256 _minTimeLowerLimit,
        uint256 _minTimeUpperLimit
    ) external;
    function newVote(bytes calldata _executionScript, string calldata _metadata) external returns (uint256 voteId);
    function newVote(
        bytes calldata _executionScript,
        string calldata _metadata,
        bool _castVote,
        bool _executesIfDecided
    ) external returns (uint256 voteId);
    function setMinBalance(uint256 _minBalance) external;
    function setMinTime(uint256 _minTime) external;
    function transferToVault(address _token) external;
    function vote(uint256 _voteData, bool _supports, bool _executesIfDecided) external;
    function votePct(uint256 _voteId, uint256 _yeaPct, uint256 _nayPct, bool _executesIfDecided) external;
    function isForwarder() external pure returns (bool);
    function CREATE_VOTES_ROLE() external view returns (bytes32);
    function DISABLE_VOTE_CREATION() external view returns (bytes32);
    function ENABLE_VOTE_CREATION() external view returns (bytes32);
    function MODIFY_QUORUM_ROLE() external view returns (bytes32);
    function MODIFY_SUPPORT_ROLE() external view returns (bytes32);
    function PCT_BASE() external view returns (uint64);
    function SET_MIN_BALANCE_ROLE() external view returns (bytes32);
    function SET_MIN_TIME_ROLE() external view returns (bytes32);
    function allowRecoverability(address token) external view returns (bool);
    function appId() external view returns (bytes32);
    function canCreateNewVote(address _sender) external view returns (bool);
    function canExecute(uint256 _voteId) external view returns (bool);
    function canForward(address _sender, bytes calldata) external view returns (bool);
    function canPerform(address _sender, bytes32 _role, uint256[] calldata _params) external view returns (bool);
    function canVote(uint256 _voteId, address _voter) external view returns (bool);
    function enableVoteCreation() external view returns (bool);
    function getEVMScriptExecutor(bytes calldata _script) external view returns (address);
    function getEVMScriptRegistry() external view returns (address);
    function getInitializationBlock() external view returns (uint256);
    function getRecoveryVault() external view returns (address);
    function getVote(uint256 _voteId)
        external
        view
        returns (
            bool open,
            bool executed,
            uint64 startDate,
            uint64 snapshotBlock,
            uint64 supportRequired,
            uint64 minAcceptQuorum,
            uint256 yea,
            uint256 nay,
            uint256 votingPower,
            bytes memory script
        );
    function getVoterState(uint256 _voteId, address _voter) external view returns (VoterState);
    function hasInitialized() external view returns (bool);
    function isPetrified() external view returns (bool);
    function kernel() external view returns (address);
    function lastCreateVoteTimes(address) external view returns (uint256);
    function minAcceptQuorumPct() external view returns (uint64);
    function minBalance() external view returns (uint256);
    function minBalanceLowerLimit() external view returns (uint256);
    function minBalanceUpperLimit() external view returns (uint256);
    function minTime() external view returns (uint256);
    function minTimeLowerLimit() external view returns (uint256);
    function minTimeUpperLimit() external view returns (uint256);
    function supportRequiredPct() external view returns (uint64);
    function token() external view returns (address);
    function voteTime() external view returns (uint64);
    function votesLength() external view returns (uint256);
}

// node_modules/@safe-global/safe-smart-account/contracts/common/NativeCurrencyPaymentFallback.sol

/**
 * @title NativeCurrencyPaymentFallback - A contract that has a fallback to accept native currency payments.
 * @author Richard Meissner - @rmeissner
 */
abstract contract NativeCurrencyPaymentFallback {
    event SafeReceived(address indexed sender, uint256 value);

    /**
     * @notice Receive function accepts native currency transactions.
     * @dev Emits an event with sender and received value.
     */
    receive() external payable {
        emit SafeReceived(msg.sender, msg.value);
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/external/SafeMath.sol

/**
 * @title SafeMath
 * @notice Math operations with safety checks that revert on error (overflow/underflow)
 */
library SafeMath {
    /**
     * @notice Multiplies two numbers, reverts on overflow.
     * @param a First number
     * @param b Second number
     * @return Product of a and b
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    /**
     * @notice Subtracts two numbers, reverts on overflow (i.e. if subtrahend is greater than minuend).
     * @param a First number
     * @param b Second number
     * @return Difference of a and b
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    /**
     * @notice Adds two numbers, reverts on overflow.
     * @param a First number
     * @param b Second number
     * @return Sum of a and b
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    /**
     * @notice Returns the largest of two numbers.
     * @param a First number
     * @param b Second number
     * @return Largest of a and b
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/common/SecuredTokenTransfer.sol

/**
 * @title SecuredTokenTransfer - Secure token transfer.
 * @author Richard Meissner - @rmeissner
 */
abstract contract SecuredTokenTransfer {
    /**
     * @notice Transfers a token and returns a boolean if it was a success
     * @dev It checks the return data of the transfer call and returns true if the transfer was successful.
     *      It doesn't check if the `token` address is a contract or not.
     * @param token Token that should be transferred
     * @param receiver Receiver to whom the token should be transferred
     * @param amount The amount of tokens that should be transferred
     * @return transferred Returns true if the transfer was successful
     */
    function transferToken(address token, address receiver, uint256 amount) internal returns (bool transferred) {
        // 0xa9059cbb - keccack("transfer(address,uint256)")
        bytes memory data = abi.encodeWithSelector(0xa9059cbb, receiver, amount);
        // solhint-disable-next-line no-inline-assembly
        assembly {
            // We write the return value to scratch space.
            // See https://docs.soliditylang.org/en/v0.7.6/internals/layout_in_memory.html#layout-in-memory
            let success := call(sub(gas(), 10000), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            switch returndatasize()
            case 0 {
                transferred := success
            }
            case 0x20 {
                transferred := iszero(or(iszero(success), iszero(mload(0))))
            }
            default {
                transferred := 0
            }
        }
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/common/SelfAuthorized.sol

/**
 * @title SelfAuthorized - Authorizes current contract to perform actions to itself.
 * @author Richard Meissner - @rmeissner
 */
abstract contract SelfAuthorized {
    function requireSelfCall() private view {
        require(msg.sender == address(this), "GS031");
    }

    modifier authorized() {
        // Modifiers are copied around during compilation. This is a function call as it minimized the bytecode size
        requireSelfCall();
        _;
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/common/SignatureDecoder.sol

/**
 * @title SignatureDecoder - Decodes signatures encoded as bytes
 * @author Richard Meissner - @rmeissner
 */
abstract contract SignatureDecoder {
    /**
     * @notice Splits signature bytes into `uint8 v, bytes32 r, bytes32 s`.
     * @dev Make sure to perform a bounds check for @param pos, to avoid out of bounds access on @param signatures
     *      The signature format is a compact form of {bytes32 r}{bytes32 s}{uint8 v}
     *      Compact means uint8 is not padded to 32 bytes.
     * @param pos Which signature to read.
     *            A prior bounds check of this parameter should be performed, to avoid out of bounds access.
     * @param signatures Concatenated {r, s, v} signatures.
     * @return v Recovery ID or Safe signature type.
     * @return r Output value r of the signature.
     * @return s Output value s of the signature.
     */
    function signatureSplit(bytes memory signatures, uint256 pos) internal pure returns (uint8 v, bytes32 r, bytes32 s) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            let signaturePos := mul(0x41, pos)
            r := mload(add(signatures, add(signaturePos, 0x20)))
            s := mload(add(signatures, add(signaturePos, 0x40)))
            /**
             * Here we are loading the last 32 bytes, including 31 bytes
             * of 's'. There is no 'mload8' to do this.
             * 'byte' is not working due to the Solidity parser, so lets
             * use the second best option, 'and'
             */
            v := and(mload(add(signatures, add(signaturePos, 0x41))), 0xff)
        }
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/common/Singleton.sol

/**
 * @title Singleton - Base for singleton contracts (should always be the first super contract)
 *        This contract is tightly coupled to our proxy contract (see `proxies/SafeProxy.sol`)
 * @author Richard Meissner - @rmeissner
 */
abstract contract Singleton {
    // singleton always has to be the first declared variable to ensure the same location as in the Proxy contract.
    // It should also always be ensured the address is stored alone (uses a full word)
    address private singleton;
}

// node_modules/@safe-global/safe-smart-account/contracts/common/StorageAccessible.sol

/**
 * @title StorageAccessible - A generic base contract that allows callers to access all internal storage.
 * @notice See https://github.com/gnosis/util-contracts/blob/bb5fe5fb5df6d8400998094fb1b32a178a47c3a1/contracts/StorageAccessible.sol
 *         It removes a method from the original contract not needed for the Safe contracts.
 * @author Gnosis Developers
 */
abstract contract StorageAccessible {
    /**
     * @notice Reads `length` bytes of storage in the currents contract
     * @param offset - the offset in the current contract's storage in words to start reading from
     * @param length - the number of words (32 bytes) of data to read
     * @return the bytes that were read.
     */
    function getStorageAt(uint256 offset, uint256 length) public view returns (bytes memory) {
        bytes memory result = new bytes(length * 32);
        for (uint256 index = 0; index < length; index++) {
            // solhint-disable-next-line no-inline-assembly
            assembly {
                let word := sload(add(offset, index))
                mstore(add(add(result, 0x20), mul(index, 0x20)), word)
            }
        }
        return result;
    }

    /**
     * @dev Performs a delegatecall on a targetContract in the context of self.
     * Internally reverts execution to avoid side effects (making it static).
     *
     * This method reverts with data equal to `abi.encode(bool(success), bytes(response))`.
     * Specifically, the `returndata` after a call to this method will be:
     * `success:bool || response.length:uint256 || response:bytes`.
     *
     * @param targetContract Address of the contract containing the code to execute.
     * @param calldataPayload Calldata that should be sent to the target contract (encoded method name and arguments).
     */
    function simulateAndRevert(address targetContract, bytes memory calldataPayload) external {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            let success := delegatecall(gas(), targetContract, add(calldataPayload, 0x20), mload(calldataPayload), 0, 0)

            mstore(0x00, success)
            mstore(0x20, returndatasize())
            returndatacopy(0x40, 0, returndatasize())
            revert(0, add(returndatasize(), 0x40))
        }
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/base/Executor.sol

/**
 * @title Executor - A contract that can execute transactions
 * @author Richard Meissner - @rmeissner
 */
abstract contract Executor {
    /**
     * @notice Executes either a delegatecall or a call with provided parameters.
     * @dev This method doesn't perform any sanity check of the transaction, such as:
     *      - if the contract at `to` address has code or not
     *      It is the responsibility of the caller to perform such checks.
     * @param to Destination address.
     * @param value Ether value.
     * @param data Data payload.
     * @param operation Operation type.
     * @return success boolean flag indicating if the call succeeded.
     */
    function execute(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation,
        uint256 txGas
    ) internal returns (bool success) {
        if (operation == Enum.Operation.DelegateCall) {
            // solhint-disable-next-line no-inline-assembly
            assembly {
                success := delegatecall(txGas, to, add(data, 0x20), mload(data), 0, 0)
            }
        } else {
            // solhint-disable-next-line no-inline-assembly
            assembly {
                success := call(txGas, to, value, add(data, 0x20), mload(data), 0, 0)
            }
        }
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/base/FallbackManager.sol

/**
 * @title Fallback Manager - A contract managing fallback calls made to this contract
 * @author Richard Meissner - @rmeissner
 */
abstract contract FallbackManager is SelfAuthorized {
    event ChangedFallbackHandler(address indexed handler);

    // keccak256("fallback_manager.handler.address")
    bytes32 internal constant FALLBACK_HANDLER_STORAGE_SLOT = 0x6c9a6c4a39284e37ed1cf53d337577d14212a4870fb976a4366c693b939918d5;

    /**
     *  @notice Internal function to set the fallback handler.
     *  @param handler contract to handle fallback calls.
     */
    function internalSetFallbackHandler(address handler) internal {
        /*
            If a fallback handler is set to self, then the following attack vector is opened:
            Imagine we have a function like this:
            function withdraw() internal authorized {
                withdrawalAddress.call.value(address(this).balance)("");
            }

            If the fallback method is triggered, the fallback handler appends the msg.sender address to the calldata and calls the fallback handler.
            A potential attacker could call a Safe with the 3 bytes signature of a withdraw function. Since 3 bytes do not create a valid signature,
            the call would end in a fallback handler. Since it appends the msg.sender address to the calldata, the attacker could craft an address 
            where the first 3 bytes of the previous calldata + the first byte of the address make up a valid function signature. The subsequent call would result in unsanctioned access to Safe's internal protected methods.
            For some reason, solidity matches the first 4 bytes of the calldata to a function signature, regardless if more data follow these 4 bytes.
        */
        require(handler != address(this), "GS400");

        bytes32 slot = FALLBACK_HANDLER_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            sstore(slot, handler)
        }
    }

    /**
     * @notice Set Fallback Handler to `handler` for the Safe.
     * @dev Only fallback calls without value and with data will be forwarded.
     *      This can only be done via a Safe transaction.
     *      Cannot be set to the Safe itself.
     * @param handler contract to handle fallback calls.
     */
    function setFallbackHandler(address handler) public authorized {
        internalSetFallbackHandler(handler);
        emit ChangedFallbackHandler(handler);
    }

    // @notice Forwards all calls to the fallback handler if set. Returns 0 if no handler is set.
    // @dev Appends the non-padded caller address to the calldata to be optionally used in the handler
    //      The handler can make us of `HandlerContext.sol` to extract the address.
    //      This is done because in the next call frame the `msg.sender` will be FallbackManager's address
    //      and having the original caller address may enable additional verification scenarios.
    // solhint-disable-next-line payable-fallback,no-complex-fallback
    fallback() external {
        bytes32 slot = FALLBACK_HANDLER_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            let handler := sload(slot)
            if iszero(handler) {
                return(0, 0)
            }
            calldatacopy(0, 0, calldatasize())
            // The msg.sender address is shifted to the left by 12 bytes to remove the padding
            // Then the address without padding is stored right after the calldata
            mstore(calldatasize(), shl(96, caller()))
            // Add 20 bytes for the address appended add the end
            let success := call(gas(), handler, 0, 0, add(calldatasize(), 20), 0, 0)
            returndatacopy(0, 0, returndatasize())
            if iszero(success) {
                revert(0, returndatasize())
            }
            return(0, returndatasize())
        }
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/base/OwnerManager.sol

/**
 * @title OwnerManager - Manages Safe owners and a threshold to authorize transactions.
 * @dev Uses a linked list to store the owners because the code generate by the solidity compiler
 *      is more efficient than using a dynamic array.
 * @author Stefan George - @Georgi87
 * @author Richard Meissner - @rmeissner
 */
abstract contract OwnerManager is SelfAuthorized {
    event AddedOwner(address indexed owner);
    event RemovedOwner(address indexed owner);
    event ChangedThreshold(uint256 threshold);

    address internal constant SENTINEL_OWNERS = address(0x1);

    mapping(address => address) internal owners;
    uint256 internal ownerCount;
    uint256 internal threshold;

    /**
     * @notice Sets the initial storage of the contract.
     * @param _owners List of Safe owners.
     * @param _threshold Number of required confirmations for a Safe transaction.
     */
    function setupOwners(address[] memory _owners, uint256 _threshold) internal {
        // Threshold can only be 0 at initialization.
        // Check ensures that setup function can only be called once.
        require(threshold == 0, "GS200");
        // Validate that threshold is smaller than number of added owners.
        require(_threshold <= _owners.length, "GS201");
        // There has to be at least one Safe owner.
        require(_threshold >= 1, "GS202");
        // Initializing Safe owners.
        address currentOwner = SENTINEL_OWNERS;
        for (uint256 i = 0; i < _owners.length; i++) {
            // Owner address cannot be null.
            address owner = _owners[i];
            require(owner != address(0) && owner != SENTINEL_OWNERS && owner != address(this) && currentOwner != owner, "GS203");
            // No duplicate owners allowed.
            require(owners[owner] == address(0), "GS204");
            owners[currentOwner] = owner;
            currentOwner = owner;
        }
        owners[currentOwner] = SENTINEL_OWNERS;
        ownerCount = _owners.length;
        threshold = _threshold;
    }

    /**
     * @notice Adds the owner `owner` to the Safe and updates the threshold to `_threshold`.
     * @dev This can only be done via a Safe transaction.
     * @param owner New owner address.
     * @param _threshold New threshold.
     */
    function addOwnerWithThreshold(address owner, uint256 _threshold) public authorized {
        // Owner address cannot be null, the sentinel or the Safe itself.
        require(owner != address(0) && owner != SENTINEL_OWNERS && owner != address(this), "GS203");
        // No duplicate owners allowed.
        require(owners[owner] == address(0), "GS204");
        owners[owner] = owners[SENTINEL_OWNERS];
        owners[SENTINEL_OWNERS] = owner;
        ownerCount++;
        emit AddedOwner(owner);
        // Change threshold if threshold was changed.
        if (threshold != _threshold) changeThreshold(_threshold);
    }

    /**
     * @notice Removes the owner `owner` from the Safe and updates the threshold to `_threshold`.
     * @dev This can only be done via a Safe transaction.
     * @param prevOwner Owner that pointed to the owner to be removed in the linked list
     * @param owner Owner address to be removed.
     * @param _threshold New threshold.
     */
    function removeOwner(address prevOwner, address owner, uint256 _threshold) public authorized {
        // Only allow to remove an owner, if threshold can still be reached.
        require(ownerCount - 1 >= _threshold, "GS201");
        // Validate owner address and check that it corresponds to owner index.
        require(owner != address(0) && owner != SENTINEL_OWNERS, "GS203");
        require(owners[prevOwner] == owner, "GS205");
        owners[prevOwner] = owners[owner];
        owners[owner] = address(0);
        ownerCount--;
        emit RemovedOwner(owner);
        // Change threshold if threshold was changed.
        if (threshold != _threshold) changeThreshold(_threshold);
    }

    /**
     * @notice Replaces the owner `oldOwner` in the Safe with `newOwner`.
     * @dev This can only be done via a Safe transaction.
     * @param prevOwner Owner that pointed to the owner to be replaced in the linked list
     * @param oldOwner Owner address to be replaced.
     * @param newOwner New owner address.
     */
    function swapOwner(address prevOwner, address oldOwner, address newOwner) public authorized {
        // Owner address cannot be null, the sentinel or the Safe itself.
        require(newOwner != address(0) && newOwner != SENTINEL_OWNERS && newOwner != address(this), "GS203");
        // No duplicate owners allowed.
        require(owners[newOwner] == address(0), "GS204");
        // Validate oldOwner address and check that it corresponds to owner index.
        require(oldOwner != address(0) && oldOwner != SENTINEL_OWNERS, "GS203");
        require(owners[prevOwner] == oldOwner, "GS205");
        owners[newOwner] = owners[oldOwner];
        owners[prevOwner] = newOwner;
        owners[oldOwner] = address(0);
        emit RemovedOwner(oldOwner);
        emit AddedOwner(newOwner);
    }

    /**
     * @notice Changes the threshold of the Safe to `_threshold`.
     * @dev This can only be done via a Safe transaction.
     * @param _threshold New threshold.
     */
    function changeThreshold(uint256 _threshold) public authorized {
        // Validate that threshold is smaller than number of owners.
        require(_threshold <= ownerCount, "GS201");
        // There has to be at least one Safe owner.
        require(_threshold >= 1, "GS202");
        threshold = _threshold;
        emit ChangedThreshold(threshold);
    }

    /**
     * @notice Returns the number of required confirmations for a Safe transaction aka the threshold.
     * @return Threshold number.
     */
    function getThreshold() public view returns (uint256) {
        return threshold;
    }

    /**
     * @notice Returns if `owner` is an owner of the Safe.
     * @return Boolean if owner is an owner of the Safe.
     */
    function isOwner(address owner) public view returns (bool) {
        return owner != SENTINEL_OWNERS && owners[owner] != address(0);
    }

    /**
     * @notice Returns a list of Safe owners.
     * @return Array of Safe owners.
     */
    function getOwners() public view returns (address[] memory) {
        address[] memory array = new address[](ownerCount);

        // populate return array
        uint256 index = 0;
        address currentOwner = owners[SENTINEL_OWNERS];
        while (currentOwner != SENTINEL_OWNERS) {
            array[index] = currentOwner;
            currentOwner = owners[currentOwner];
            index++;
        }
        return array;
    }
}

// src/VoterPermissionManager.sol

contract VoterPermissionManager is Governance {
    ////////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @dev Instead of using a traditional mapping that hashes the key to calculate the slot,
    ///      we directly use the unique identifier of each module as the storage slot.
    ///
    ///      The storage buffer exists to avoid future collisions. Note the owner of this
    ///      contract takes one slot in storage (slot 0).
    ///
    ///      The value of the buffer is equal to the keccak256 hash of the constant
    ///      string ""STAKEDAO.LOCKER.V2.VOTER_ALLOWANCE_MANAGER.V1"", meaning the modules will be
    ///      stored starting at slot `0x65a8012b7737dd00fb2623a75e13d3926cb7a6c59e6b502af4b6718938bb9be4`.
    ///      This is a gas cost optimization made possible due to the simplicity of the storage layout.
    bytes32 internal constant BUFFER = keccak256("STAKEDAO.LOCKER.V2.VOTER_ALLOWANCE_MANAGER.V1");

    ////////////////////////////////////////////////////////////////
    /// --- STATE
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Enum representing the different permission levels for voter actions.
     * @dev
     * - `NONE`: Default permission. The address cannot call any permissioned functions.
     * - `PROPOSALS_ONLY`: The address can call functions that interact with proposals, e.g., voting on protocol proposals.
     * - `GAUGES_ONLY`: The address can call functions that interact with gauges, e.g., voting for gauge weights.
     * - `ALL`: The address can call all permissioned functions, including both proposal-related and gauge-related actions.
     */
    enum Permission {
        NONE, // 0: No permissions granted (default)
        PROPOSALS_ONLY, // 1: Can interact with proposals (e.g., {CurveVoter} functions)
        GAUGES_ONLY, // 2: Can interact with gauges (e.g., {VoterBase-voteGauges})
        ALL // 3: Can interact with all permissioned functions

    }

    ////////////////////////////////////////////////////////////////
    /// --- EVENTS & ERRORS
    ///////////////////////////////////////////////////////////////

    /// @notice Event emitted when a permission is set for an address
    /// @param account The address of the account
    /// @param permission The permission
    event PermissionSet(address indexed account, Permission indexed permission);

    /// @notice Error emitted when a caller is not authorized
    error NOT_AUTHORIZED();

    /// @notice Error emitted when the length of the addresses and permissions are not the same
    error INVALID_LENGTH();

    /// @notice Error emitted when an unknown permission is requested
    /// @dev Should never happen
    error UNKNOWN_PERMISSION();

    constructor(address _governance) Governance(_governance) {}

    ////////////////////////////////////////////////////////////////
    /// --- MODIFIERS
    ///////////////////////////////////////////////////////////////

    /// @notice Modifier to check if the caller has proposals or all permission
    modifier hasProposalsOrAllPermission() {
        Permission permission = getPermission(msg.sender);
        require(permission == Permission.PROPOSALS_ONLY || permission == Permission.ALL, NOT_AUTHORIZED());
        _;
    }

    /// @notice Modifier to check if the caller has gauges or all permission
    modifier hasGaugesOrAllPermission() {
        Permission permission = getPermission(msg.sender);
        require(permission == Permission.GAUGES_ONLY || permission == Permission.ALL, NOT_AUTHORIZED());
        _;
    }

    ////////////////////////////////////////////////////////////////
    /// --- PUBLIC FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Sets the permission for an address
    /// @param _address The address of the account
    /// @param _permission The permission
    function setPermission(address _address, Permission _permission) public onlyGovernance {
        bytes32 buffer = BUFFER;

        assembly ("memory-safe") {
            sstore(add(buffer, _address), _permission)
        }

        emit PermissionSet(_address, _permission);
    }

    /// @notice Sets the permissions for a list of addresses
    /// @param _addresses The addresses of the accounts
    /// @param _permissions The permissions
    function setPermissions(address[] calldata _addresses, Permission[] calldata _permissions)
        external
        onlyGovernance
    {
        require(_addresses.length == _permissions.length, INVALID_LENGTH());

        for (uint256 i; i < _addresses.length; i++) {
            setPermission(_addresses[i], _permissions[i]);
        }
    }

    /// @notice Gets the permission for an address
    /// @param _address The address of the account
    /// @return permission The permission
    function getPermission(address _address) public view returns (Permission permission) {
        bytes32 buffer = BUFFER;
        assembly ("memory-safe") {
            permission := sload(add(buffer, _address))
        }
    }

    /// @notice Gets the permission label for an address
    /// @dev This function is a helper for off-chain tools
    /// @param _address The address of the account
    /// @return The permission label
    function getPermissionLabel(address _address) external view returns (string memory) {
        Permission permission = getPermission(_address);

        if (permission == Permission.ALL) return "ALL";
        else if (permission == Permission.PROPOSALS_ONLY) return "PROPOSALS_ONLY";
        else if (permission == Permission.GAUGES_ONLY) return "GAUGES_ONLY";
        else if (permission == Permission.NONE) return "NONE";
        else revert UNKNOWN_PERMISSION();
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/base/GuardManager.sol

interface Guard is IERC165 {
    function checkTransaction(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures,
        address msgSender
    ) external;

    function checkAfterExecution(bytes32 txHash, bool success) external;
}

abstract contract BaseGuard is Guard {
    function supportsInterface(bytes4 interfaceId) external view virtual override returns (bool) {
        return
            interfaceId == type(Guard).interfaceId || // 0xe6d7a83a
            interfaceId == type(IERC165).interfaceId; // 0x01ffc9a7
    }
}

/**
 * @title Guard Manager - A contract managing transaction guards which perform pre and post-checks on Safe transactions.
 * @author Richard Meissner - @rmeissner
 */
abstract contract GuardManager is SelfAuthorized {
    event ChangedGuard(address indexed guard);

    // keccak256("guard_manager.guard.address")
    bytes32 internal constant GUARD_STORAGE_SLOT = 0x4a204f620c8c5ccdca3fd54d003badd85ba500436a431f0cbda4f558c93c34c8;

    /**
     * @dev Set a guard that checks transactions before execution
     *      This can only be done via a Safe transaction.
     *      ⚠️ IMPORTANT: Since a guard has full power to block Safe transaction execution,
     *        a broken guard can cause a denial of service for the Safe. Make sure to carefully
     *        audit the guard code and design recovery mechanisms.
     * @notice Set Transaction Guard `guard` for the Safe. Make sure you trust the guard.
     * @param guard The address of the guard to be used or the 0 address to disable the guard
     */
    function setGuard(address guard) external authorized {
        if (guard != address(0)) {
            require(Guard(guard).supportsInterface(type(Guard).interfaceId), "GS300");
        }
        bytes32 slot = GUARD_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            sstore(slot, guard)
        }
        emit ChangedGuard(guard);
    }

    /**
     * @dev Internal method to retrieve the current guard
     *      We do not have a public method because we're short on bytecode size limit,
     *      to retrieve the guard address, one can use `getStorageAt` from `StorageAccessible` contract
     *      with the slot `GUARD_STORAGE_SLOT`
     * @return guard The address of the guard
     */
    function getGuard() internal view returns (address guard) {
        bytes32 slot = GUARD_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            guard := sload(slot)
        }
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/base/ModuleManager.sol

/**
 * @title Module Manager - A contract managing Safe modules
 * @notice Modules are extensions with unlimited access to a Safe that can be added to a Safe by its owners.
           ⚠️ WARNING: Modules are a security risk since they can execute arbitrary transactions, 
           so only trusted and audited modules should be added to a Safe. A malicious module can
           completely takeover a Safe.
 * @author Stefan George - @Georgi87
 * @author Richard Meissner - @rmeissner
 */
abstract contract ModuleManager is SelfAuthorized, Executor {
    event EnabledModule(address indexed module);
    event DisabledModule(address indexed module);
    event ExecutionFromModuleSuccess(address indexed module);
    event ExecutionFromModuleFailure(address indexed module);

    address internal constant SENTINEL_MODULES = address(0x1);

    mapping(address => address) internal modules;

    /**
     * @notice Setup function sets the initial storage of the contract.
     *         Optionally executes a delegate call to another contract to setup the modules.
     * @param to Optional destination address of call to execute.
     * @param data Optional data of call to execute.
     */
    function setupModules(address to, bytes memory data) internal {
        require(modules[SENTINEL_MODULES] == address(0), "GS100");
        modules[SENTINEL_MODULES] = SENTINEL_MODULES;
        if (to != address(0)) {
            require(isContract(to), "GS002");
            // Setup has to complete successfully or transaction fails.
            require(execute(to, 0, data, Enum.Operation.DelegateCall, type(uint256).max), "GS000");
        }
    }

    /**
     * @notice Enables the module `module` for the Safe.
     * @dev This can only be done via a Safe transaction.
     * @param module Module to be whitelisted.
     */
    function enableModule(address module) public authorized {
        // Module address cannot be null or sentinel.
        require(module != address(0) && module != SENTINEL_MODULES, "GS101");
        // Module cannot be added twice.
        require(modules[module] == address(0), "GS102");
        modules[module] = modules[SENTINEL_MODULES];
        modules[SENTINEL_MODULES] = module;
        emit EnabledModule(module);
    }

    /**
     * @notice Disables the module `module` for the Safe.
     * @dev This can only be done via a Safe transaction.
     * @param prevModule Previous module in the modules linked list.
     * @param module Module to be removed.
     */
    function disableModule(address prevModule, address module) public authorized {
        // Validate module address and check that it corresponds to module index.
        require(module != address(0) && module != SENTINEL_MODULES, "GS101");
        require(modules[prevModule] == module, "GS103");
        modules[prevModule] = modules[module];
        modules[module] = address(0);
        emit DisabledModule(module);
    }

    /**
     * @notice Execute `operation` (0: Call, 1: DelegateCall) to `to` with `value` (Native Token)
     * @dev Function is virtual to allow overriding for L2 singleton to emit an event for indexing.
     * @param to Destination address of module transaction.
     * @param value Ether value of module transaction.
     * @param data Data payload of module transaction.
     * @param operation Operation type of module transaction.
     * @return success Boolean flag indicating if the call succeeded.
     */
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation
    ) public virtual returns (bool success) {
        // Only whitelisted modules are allowed.
        require(msg.sender != SENTINEL_MODULES && modules[msg.sender] != address(0), "GS104");
        // Execute transaction without further confirmations.
        success = execute(to, value, data, operation, type(uint256).max);
        if (success) emit ExecutionFromModuleSuccess(msg.sender);
        else emit ExecutionFromModuleFailure(msg.sender);
    }

    /**
     * @notice Execute `operation` (0: Call, 1: DelegateCall) to `to` with `value` (Native Token) and return data
     * @param to Destination address of module transaction.
     * @param value Ether value of module transaction.
     * @param data Data payload of module transaction.
     * @param operation Operation type of module transaction.
     * @return success Boolean flag indicating if the call succeeded.
     * @return returnData Data returned by the call.
     */
    function execTransactionFromModuleReturnData(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation
    ) public returns (bool success, bytes memory returnData) {
        success = execTransactionFromModule(to, value, data, operation);
        // solhint-disable-next-line no-inline-assembly
        assembly {
            // Load free memory location
            let ptr := mload(0x40)
            // We allocate memory for the return data by setting the free memory location to
            // current free memory location + data size + 32 bytes for data size value
            mstore(0x40, add(ptr, add(returndatasize(), 0x20)))
            // Store the size
            mstore(ptr, returndatasize())
            // Store the data
            returndatacopy(add(ptr, 0x20), 0, returndatasize())
            // Point the return data to the correct memory location
            returnData := ptr
        }
    }

    /**
     * @notice Returns if an module is enabled
     * @return True if the module is enabled
     */
    function isModuleEnabled(address module) public view returns (bool) {
        return SENTINEL_MODULES != module && modules[module] != address(0);
    }

    /**
     * @notice Returns an array of modules.
     *         If all entries fit into a single page, the next pointer will be 0x1.
     *         If another page is present, next will be the last element of the returned array.
     * @param start Start of the page. Has to be a module or start pointer (0x1 address)
     * @param pageSize Maximum number of modules that should be returned. Has to be > 0
     * @return array Array of modules.
     * @return next Start of the next page.
     */
    function getModulesPaginated(address start, uint256 pageSize) external view returns (address[] memory array, address next) {
        require(start == SENTINEL_MODULES || isModuleEnabled(start), "GS105");
        require(pageSize > 0, "GS106");
        // Init array with max page size
        array = new address[](pageSize);

        // Populate return array
        uint256 moduleCount = 0;
        next = modules[start];
        while (next != address(0) && next != SENTINEL_MODULES && moduleCount < pageSize) {
            array[moduleCount] = next;
            next = modules[next];
            moduleCount++;
        }

        /**
          Because of the argument validation, we can assume that the loop will always iterate over the valid module list values
          and the `next` variable will either be an enabled module or a sentinel address (signalling the end). 
          
          If we haven't reached the end inside the loop, we need to set the next pointer to the last element of the modules array
          because the `next` variable (which is a module by itself) acting as a pointer to the start of the next page is neither 
          included to the current page, nor will it be included in the next one if you pass it as a start.
        */
        if (next != SENTINEL_MODULES) {
            next = array[moduleCount - 1];
        }
        // Set correct size of returned array
        // solhint-disable-next-line no-inline-assembly
        assembly {
            mstore(array, moduleCount)
        }
    }

    /**
     * @notice Returns true if `account` is a contract.
     * @dev This function will return false if invoked during the constructor of a contract,
     *      as the code is not actually created until after the constructor finishes.
     * @param account The address being queried
     */
    function isContract(address account) internal view returns (bool) {
        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }
}

// node_modules/@safe-global/safe-smart-account/contracts/Safe.sol

/**
 * @title Safe - A multisignature wallet with support for confirmations using signed messages based on EIP-712.
 * @dev Most important concepts:
 *      - Threshold: Number of required confirmations for a Safe transaction.
 *      - Owners: List of addresses that control the Safe. They are the only ones that can add/remove owners, change the threshold and
 *        approve transactions. Managed in `OwnerManager`.
 *      - Transaction Hash: Hash of a transaction is calculated using the EIP-712 typed structured data hashing scheme.
 *      - Nonce: Each transaction should have a different nonce to prevent replay attacks.
 *      - Signature: A valid signature of an owner of the Safe for a transaction hash.
 *      - Guard: Guard is a contract that can execute pre- and post- transaction checks. Managed in `GuardManager`.
 *      - Modules: Modules are contracts that can be used to extend the write functionality of a Safe. Managed in `ModuleManager`.
 *      - Fallback: Fallback handler is a contract that can provide additional read-only functional for Safe. Managed in `FallbackManager`.
 *      Note: This version of the implementation contract doesn't emit events for the sake of gas efficiency and therefore requires a tracing node for indexing/
 *      For the events-based implementation see `SafeL2.sol`.
 * @author Stefan George - @Georgi87
 * @author Richard Meissner - @rmeissner
 */
contract Safe is
    Singleton,
    NativeCurrencyPaymentFallback,
    ModuleManager,
    OwnerManager,
    SignatureDecoder,
    SecuredTokenTransfer,
    ISignatureValidatorConstants,
    FallbackManager,
    StorageAccessible,
    GuardManager
{
    using SafeMath for uint256;

    string public constant VERSION = "1.4.1";

    // keccak256(
    //     "EIP712Domain(uint256 chainId,address verifyingContract)"
    // );
    bytes32 private constant DOMAIN_SEPARATOR_TYPEHASH = 0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218;

    // keccak256(
    //     "SafeTx(address to,uint256 value,bytes data,uint8 operation,uint256 safeTxGas,uint256 baseGas,uint256 gasPrice,address gasToken,address refundReceiver,uint256 nonce)"
    // );
    bytes32 private constant SAFE_TX_TYPEHASH = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8;

    event SafeSetup(address indexed initiator, address[] owners, uint256 threshold, address initializer, address fallbackHandler);
    event ApproveHash(bytes32 indexed approvedHash, address indexed owner);
    event SignMsg(bytes32 indexed msgHash);
    event ExecutionFailure(bytes32 indexed txHash, uint256 payment);
    event ExecutionSuccess(bytes32 indexed txHash, uint256 payment);

    uint256 public nonce;
    bytes32 private _deprecatedDomainSeparator;
    // Mapping to keep track of all message hashes that have been approved by ALL REQUIRED owners
    mapping(bytes32 => uint256) public signedMessages;
    // Mapping to keep track of all hashes (message or transaction) that have been approved by ANY owners
    mapping(address => mapping(bytes32 => uint256)) public approvedHashes;

    // This constructor ensures that this contract can only be used as a singleton for Proxy contracts
    constructor() {
        /**
         * By setting the threshold it is not possible to call setup anymore,
         * so we create a Safe with 0 owners and threshold 1.
         * This is an unusable Safe, perfect for the singleton
         */
        threshold = 1;
    }

    /**
     * @notice Sets an initial storage of the Safe contract.
     * @dev This method can only be called once.
     *      If a proxy was created without setting up, anyone can call setup and claim the proxy.
     * @param _owners List of Safe owners.
     * @param _threshold Number of required confirmations for a Safe transaction.
     * @param to Contract address for optional delegate call.
     * @param data Data payload for optional delegate call.
     * @param fallbackHandler Handler for fallback calls to this contract
     * @param paymentToken Token that should be used for the payment (0 is ETH)
     * @param payment Value that should be paid
     * @param paymentReceiver Address that should receive the payment (or 0 if tx.origin)
     */
    function setup(
        address[] calldata _owners,
        uint256 _threshold,
        address to,
        bytes calldata data,
        address fallbackHandler,
        address paymentToken,
        uint256 payment,
        address payable paymentReceiver
    ) external {
        // setupOwners checks if the Threshold is already set, therefore preventing that this method is called twice
        setupOwners(_owners, _threshold);
        if (fallbackHandler != address(0)) internalSetFallbackHandler(fallbackHandler);
        // As setupOwners can only be called if the contract has not been initialized we don't need a check for setupModules
        setupModules(to, data);

        if (payment > 0) {
            // To avoid running into issues with EIP-170 we reuse the handlePayment function (to avoid adjusting code of that has been verified we do not adjust the method itself)
            // baseGas = 0, gasPrice = 1 and gas = payment => amount = (payment + 0) * 1 = payment
            handlePayment(payment, 0, 1, paymentToken, paymentReceiver);
        }
        emit SafeSetup(msg.sender, _owners, _threshold, to, fallbackHandler);
    }

    /** @notice Executes a `operation` {0: Call, 1: DelegateCall}} transaction to `to` with `value` (Native Currency)
     *          and pays `gasPrice` * `gasLimit` in `gasToken` token to `refundReceiver`.
     * @dev The fees are always transferred, even if the user transaction fails.
     *      This method doesn't perform any sanity check of the transaction, such as:
     *      - if the contract at `to` address has code or not
     *      - if the `gasToken` is a contract or not
     *      It is the responsibility of the caller to perform such checks.
     * @param to Destination address of Safe transaction.
     * @param value Ether value of Safe transaction.
     * @param data Data payload of Safe transaction.
     * @param operation Operation type of Safe transaction.
     * @param safeTxGas Gas that should be used for the Safe transaction.
     * @param baseGas Gas costs that are independent of the transaction execution(e.g. base transaction fee, signature check, payment of the refund)
     * @param gasPrice Gas price that should be used for the payment calculation.
     * @param gasToken Token address (or 0 if ETH) that is used for the payment.
     * @param refundReceiver Address of receiver of gas payment (or 0 if tx.origin).
     * @param signatures Signature data that should be verified.
     *                   Can be packed ECDSA signature ({bytes32 r}{bytes32 s}{uint8 v}), contract signature (EIP-1271) or approved hash.
     * @return success Boolean indicating transaction's success.
     */
    function execTransaction(
        address to,
        uint256 value,
        bytes calldata data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures
    ) public payable virtual returns (bool success) {
        bytes32 txHash;
        // Use scope here to limit variable lifetime and prevent `stack too deep` errors
        {
            bytes memory txHashData = encodeTransactionData(
                // Transaction info
                to,
                value,
                data,
                operation,
                safeTxGas,
                // Payment info
                baseGas,
                gasPrice,
                gasToken,
                refundReceiver,
                // Signature info
                nonce
            );
            // Increase nonce and execute transaction.
            nonce++;
            txHash = keccak256(txHashData);
            checkSignatures(txHash, txHashData, signatures);
        }
        address guard = getGuard();
        {
            if (guard != address(0)) {
                Guard(guard).checkTransaction(
                    // Transaction info
                    to,
                    value,
                    data,
                    operation,
                    safeTxGas,
                    // Payment info
                    baseGas,
                    gasPrice,
                    gasToken,
                    refundReceiver,
                    // Signature info
                    signatures,
                    msg.sender
                );
            }
        }
        // We require some gas to emit the events (at least 2500) after the execution and some to perform code until the execution (500)
        // We also include the 1/64 in the check that is not send along with a call to counteract potential shortings because of EIP-150
        require(gasleft() >= ((safeTxGas * 64) / 63).max(safeTxGas + 2500) + 500, "GS010");
        // Use scope here to limit variable lifetime and prevent `stack too deep` errors
        {
            uint256 gasUsed = gasleft();
            // If the gasPrice is 0 we assume that nearly all available gas can be used (it is always more than safeTxGas)
            // We only substract 2500 (compared to the 3000 before) to ensure that the amount passed is still higher than safeTxGas
            success = execute(to, value, data, operation, gasPrice == 0 ? (gasleft() - 2500) : safeTxGas);
            gasUsed = gasUsed.sub(gasleft());
            // If no safeTxGas and no gasPrice was set (e.g. both are 0), then the internal tx is required to be successful
            // This makes it possible to use `estimateGas` without issues, as it searches for the minimum gas where the tx doesn't revert
            require(success || safeTxGas != 0 || gasPrice != 0, "GS013");
            // We transfer the calculated tx costs to the tx.origin to avoid sending it to intermediate contracts that have made calls
            uint256 payment = 0;
            if (gasPrice > 0) {
                payment = handlePayment(gasUsed, baseGas, gasPrice, gasToken, refundReceiver);
            }
            if (success) emit ExecutionSuccess(txHash, payment);
            else emit ExecutionFailure(txHash, payment);
        }
        {
            if (guard != address(0)) {
                Guard(guard).checkAfterExecution(txHash, success);
            }
        }
    }

    /**
     * @notice Handles the payment for a Safe transaction.
     * @param gasUsed Gas used by the Safe transaction.
     * @param baseGas Gas costs that are independent of the transaction execution (e.g. base transaction fee, signature check, payment of the refund).
     * @param gasPrice Gas price that should be used for the payment calculation.
     * @param gasToken Token address (or 0 if ETH) that is used for the payment.
     * @return payment The amount of payment made in the specified token.
     */
    function handlePayment(
        uint256 gasUsed,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver
    ) private returns (uint256 payment) {
        // solhint-disable-next-line avoid-tx-origin
        address payable receiver = refundReceiver == address(0) ? payable(tx.origin) : refundReceiver;
        if (gasToken == address(0)) {
            // For ETH we will only adjust the gas price to not be higher than the actual used gas price
            payment = gasUsed.add(baseGas).mul(gasPrice < tx.gasprice ? gasPrice : tx.gasprice);
            require(receiver.send(payment), "GS011");
        } else {
            payment = gasUsed.add(baseGas).mul(gasPrice);
            require(transferToken(gasToken, receiver, payment), "GS012");
        }
    }

    /**
     * @notice Checks whether the signature provided is valid for the provided data and hash. Reverts otherwise.
     * @param dataHash Hash of the data (could be either a message hash or transaction hash)
     * @param data That should be signed (this is passed to an external validator contract)
     * @param signatures Signature data that should be verified.
     *                   Can be packed ECDSA signature ({bytes32 r}{bytes32 s}{uint8 v}), contract signature (EIP-1271) or approved hash.
     */
    function checkSignatures(bytes32 dataHash, bytes memory data, bytes memory signatures) public view {
        // Load threshold to avoid multiple storage loads
        uint256 _threshold = threshold;
        // Check that a threshold is set
        require(_threshold > 0, "GS001");
        checkNSignatures(dataHash, data, signatures, _threshold);
    }

    /**
     * @notice Checks whether the signature provided is valid for the provided data and hash. Reverts otherwise.
     * @dev Since the EIP-1271 does an external call, be mindful of reentrancy attacks.
     * @param dataHash Hash of the data (could be either a message hash or transaction hash)
     * @param data That should be signed (this is passed to an external validator contract)
     * @param signatures Signature data that should be verified.
     *                   Can be packed ECDSA signature ({bytes32 r}{bytes32 s}{uint8 v}), contract signature (EIP-1271) or approved hash.
     * @param requiredSignatures Amount of required valid signatures.
     */
    function checkNSignatures(bytes32 dataHash, bytes memory data, bytes memory signatures, uint256 requiredSignatures) public view {
        // Check that the provided signature data is not too short
        require(signatures.length >= requiredSignatures.mul(65), "GS020");
        // There cannot be an owner with address 0.
        address lastOwner = address(0);
        address currentOwner;
        uint8 v;
        bytes32 r;
        bytes32 s;
        uint256 i;
        for (i = 0; i < requiredSignatures; i++) {
            (v, r, s) = signatureSplit(signatures, i);
            if (v == 0) {
                require(keccak256(data) == dataHash, "GS027");
                // If v is 0 then it is a contract signature
                // When handling contract signatures the address of the contract is encoded into r
                currentOwner = address(uint160(uint256(r)));

                // Check that signature data pointer (s) is not pointing inside the static part of the signatures bytes
                // This check is not completely accurate, since it is possible that more signatures than the threshold are send.
                // Here we only check that the pointer is not pointing inside the part that is being processed
                require(uint256(s) >= requiredSignatures.mul(65), "GS021");

                // Check that signature data pointer (s) is in bounds (points to the length of data -> 32 bytes)
                require(uint256(s).add(32) <= signatures.length, "GS022");

                // Check if the contract signature is in bounds: start of data is s + 32 and end is start + signature length
                uint256 contractSignatureLen;
                // solhint-disable-next-line no-inline-assembly
                assembly {
                    contractSignatureLen := mload(add(add(signatures, s), 0x20))
                }
                require(uint256(s).add(32).add(contractSignatureLen) <= signatures.length, "GS023");

                // Check signature
                bytes memory contractSignature;
                // solhint-disable-next-line no-inline-assembly
                assembly {
                    // The signature data for contract signatures is appended to the concatenated signatures and the offset is stored in s
                    contractSignature := add(add(signatures, s), 0x20)
                }
                require(ISignatureValidator(currentOwner).isValidSignature(data, contractSignature) == EIP1271_MAGIC_VALUE, "GS024");
            } else if (v == 1) {
                // If v is 1 then it is an approved hash
                // When handling approved hashes the address of the approver is encoded into r
                currentOwner = address(uint160(uint256(r)));
                // Hashes are automatically approved by the sender of the message or when they have been pre-approved via a separate transaction
                require(msg.sender == currentOwner || approvedHashes[currentOwner][dataHash] != 0, "GS025");
            } else if (v > 30) {
                // If v > 30 then default va (27,28) has been adjusted for eth_sign flow
                // To support eth_sign and similar we adjust v and hash the messageHash with the Ethereum message prefix before applying ecrecover
                currentOwner = ecrecover(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", dataHash)), v - 4, r, s);
            } else {
                // Default is the ecrecover flow with the provided data hash
                // Use ecrecover with the messageHash for EOA signatures
                currentOwner = ecrecover(dataHash, v, r, s);
            }
            require(currentOwner > lastOwner && owners[currentOwner] != address(0) && currentOwner != SENTINEL_OWNERS, "GS026");
            lastOwner = currentOwner;
        }
    }

    /**
     * @notice Marks hash `hashToApprove` as approved.
     * @dev This can be used with a pre-approved hash transaction signature.
     *      IMPORTANT: The approved hash stays approved forever. There's no revocation mechanism, so it behaves similarly to ECDSA signatures
     * @param hashToApprove The hash to mark as approved for signatures that are verified by this contract.
     */
    function approveHash(bytes32 hashToApprove) external {
        require(owners[msg.sender] != address(0), "GS030");
        approvedHashes[msg.sender][hashToApprove] = 1;
        emit ApproveHash(hashToApprove, msg.sender);
    }

    /**
     * @notice Returns the ID of the chain the contract is currently deployed on.
     * @return The ID of the current chain as a uint256.
     */
    function getChainId() public view returns (uint256) {
        uint256 id;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            id := chainid()
        }
        return id;
    }

    /**
     * @dev Returns the domain separator for this contract, as defined in the EIP-712 standard.
     * @return bytes32 The domain separator hash.
     */
    function domainSeparator() public view returns (bytes32) {
        return keccak256(abi.encode(DOMAIN_SEPARATOR_TYPEHASH, getChainId(), this));
    }

    /**
     * @notice Returns the pre-image of the transaction hash (see getTransactionHash).
     * @param to Destination address.
     * @param value Ether value.
     * @param data Data payload.
     * @param operation Operation type.
     * @param safeTxGas Gas that should be used for the safe transaction.
     * @param baseGas Gas costs for that are independent of the transaction execution(e.g. base transaction fee, signature check, payment of the refund)
     * @param gasPrice Maximum gas price that should be used for this transaction.
     * @param gasToken Token address (or 0 if ETH) that is used for the payment.
     * @param refundReceiver Address of receiver of gas payment (or 0 if tx.origin).
     * @param _nonce Transaction nonce.
     * @return Transaction hash bytes.
     */
    function encodeTransactionData(
        address to,
        uint256 value,
        bytes calldata data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address refundReceiver,
        uint256 _nonce
    ) public view returns (bytes memory) {
        bytes32 safeTxHash = keccak256(
            abi.encode(
                SAFE_TX_TYPEHASH,
                to,
                value,
                keccak256(data),
                operation,
                safeTxGas,
                baseGas,
                gasPrice,
                gasToken,
                refundReceiver,
                _nonce
            )
        );
        return abi.encodePacked(bytes1(0x19), bytes1(0x01), domainSeparator(), safeTxHash);
    }

    /**
     * @notice Returns transaction hash to be signed by owners.
     * @param to Destination address.
     * @param value Ether value.
     * @param data Data payload.
     * @param operation Operation type.
     * @param safeTxGas Fas that should be used for the safe transaction.
     * @param baseGas Gas costs for data used to trigger the safe transaction.
     * @param gasPrice Maximum gas price that should be used for this transaction.
     * @param gasToken Token address (or 0 if ETH) that is used for the payment.
     * @param refundReceiver Address of receiver of gas payment (or 0 if tx.origin).
     * @param _nonce Transaction nonce.
     * @return Transaction hash.
     */
    function getTransactionHash(
        address to,
        uint256 value,
        bytes calldata data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address refundReceiver,
        uint256 _nonce
    ) public view returns (bytes32) {
        return keccak256(encodeTransactionData(to, value, data, operation, safeTxGas, baseGas, gasPrice, gasToken, refundReceiver, _nonce));
    }
}

// src/interfaces/ISafe.sol

interface ISafe {
    /**
     * @notice Enables the module `module` for the Safe.
     * @dev This can only be done via a Safe transaction.
     * @param module Module to be whitelisted.
     */
    function enableModule(address module) external;

    /**
     * @notice Execute `operation` (0: Call, 1: DelegateCall) to `to` with `value` (Native Token)
     * @dev Function is virtual to allow overriding for L2 singleton to emit an event for indexing.
     * @param to Destination address of module transaction.
     * @param value Ether value of module transaction.
     * @param data Data payload of module transaction.
     * @param operation Operation type of module transaction.
     * @return success Boolean flag indicating if the call succeeded.
     */
    function execTransactionFromModule(address to, uint256 value, bytes memory data, Enum.Operation operation)
        external
        returns (bool success);

    /**
     * @notice Execute `operation` (0: Call, 1: DelegateCall) to `to` with `value` (Native Token) and return data
     * @param to Destination address of module transaction.
     * @param value Ether value of module transaction.
     * @param data Data payload of module transaction.
     * @param operation Operation type of module transaction.
     * @return success Boolean flag indicating if the call succeeded.
     * @return returnData Data returned by the call.
     */
    function execTransactionFromModuleReturnData(address to, uint256 value, bytes memory data, Enum.Operation operation)
        external
        returns (bool success, bytes memory returnData);

    /**
     * @notice Executes a `operation` {0: Call, 1: DelegateCall}} transaction to `to` with `value` (Native Currency)
     *          and pays `gasPrice` * `gasLimit` in `gasToken` token to `refundReceiver`.
     * @dev The fees are always transferred, even if the user transaction fails.
     *      This method doesn't perform any sanity check of the transaction, such as:
     *      - if the contract at `to` address has code or not
     *      - if the `gasToken` is a contract or not
     *      It is the responsibility of the caller to perform such checks.
     * @param to Destination address of Safe transaction.
     * @param value Ether value of Safe transaction.
     * @param data Data payload of Safe transaction.
     * @param operation Operation type of Safe transaction.
     * @param safeTxGas Gas that should be used for the Safe transaction.
     * @param baseGas Gas costs that are independent of the transaction execution(e.g. base transaction fee, signature check, payment of the refund)
     * @param gasPrice Gas price that should be used for the payment calculation.
     * @param gasToken Token address (or 0 if ETH) that is used for the payment.
     * @param refundReceiver Address of receiver of gas payment (or 0 if tx.origin).
     * @param signatures Signature data that should be verified.
     *                   Can be packed ECDSA signature ({bytes32 r}{bytes32 s}{uint8 v}), contract signature (EIP-1271) or approved hash.
     * @return success Boolean indicating transaction's success.
     */
    function execTransaction(
        address to,
        uint256 value,
        bytes calldata data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures
    ) external returns (bool success);

    /**
     * @notice Returns a list of Safe owners.
     * @return Array of Safe owners.
     */
    function getOwners() external view returns (address[] memory);

    /**
     * @notice Adds the owner `owner` to the Safe and updates the threshold to `_threshold`.
     * @dev This can only be done via a Safe transaction.
     * @param owner New owner address.
     * @param _threshold New threshold.
     */
    function addOwnerWithThreshold(address owner, uint256 _threshold) external;

    /**
     * @notice Removes the owner `owner` from the Safe and updates the threshold to `_threshold`.
     * @dev This can only be done via a Safe transaction.
     * @param prevOwner Owner that pointed to the owner to be removed in the linked list
     * @param owner Owner address to be removed.
     * @param _threshold New threshold.
     */
    function removeOwner(address prevOwner, address owner, uint256 _threshold) external;

    function swapOwner(address prevOwner, address owner, address newOwner) external;

    function isModuleEnabled(address module) external view returns (bool);

    /**
     * @notice Sets the fallback handler for the Safe.
     * @param fallbackHandler The address of the fallback handler.
     */
    function setFallbackHandler(address fallbackHandler) external;
}

// src/interfaces/ISafeLocker.sol

interface ISafeLocker is ISafe {}

// src/utils/SafeModule.sol

/// @title Stake DAO Safe Module
/// @notice Defining logic to call execute as a Safe module on the locker
/// @author StakeDAO
/// @custom:contact contact@stakedao.org
abstract contract SafeModule {
    ///////////////////////////////////////////////////////////////
    /// --- ERRORS
    ///////////////////////////////////////////////////////////////
    error ExecFromSafeModuleFailed();

    /// @notice Error thrown when the provided gateway is a zero address
    error InvalidGateway();

    ///////////////////////////////////////////////////////////////
    /// --- CONSTANT
    ///////////////////////////////////////////////////////////////

    /// @notice The gateway contract address
    address public immutable GATEWAY;

    /// @notice Constructor for the SafeModule contract
    /// @dev The address of the gateway can be the same as the locker.
    ///      In that case, the execution is done directly on the target from the gateway.
    ///      Otherwise, the gateway will pass the execution to the locker to call the target contracts.
    /// @param _gateway The address of the gateway contract.
    /// @custom:throws InvalidGateway if the provided gateway is a zero address
    constructor(address _gateway) {
        if (_gateway == address(0)) revert InvalidGateway();
        GATEWAY = _gateway;
    }

    ///////////////////////////////////////////////////////////////
    /// --- INTERNAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Executes a transaction through the Safe module system
    /// @dev Handle execution through either the gateway directly or through a locker's execute function
    /// @param _target The contract address to execute the transaction on
    /// @param _data The calldata to execute on the target contract
    /// @return returnData The data returned from the executed transaction
    /// @custom:throws ExecFromSafeModuleFailed if the Safe module execution fails
    function _executeTransaction(address _target, bytes memory _data) internal returns (bytes memory returnData) {
        address locker = _getLocker();
        bool success;

        // If the `gateway` is the locker, tell the `gateway` to directly call `target`
        if (locker == GATEWAY) {
            (success, returnData) =
                ISafe(locker).execTransactionFromModuleReturnData(_target, 0, _data, Enum.Operation.Call);
        } else {
            // Otherwise, the `gateway` pass the execution to the `locker` to call `target`
            (success, returnData) = ISafe(GATEWAY).execTransactionFromModuleReturnData(
                locker,
                0,
                abi.encodeWithSignature("execute(address,uint256,bytes)", _target, 0, _data),
                Enum.Operation.Call
            );
        }

        if (!success) revert ExecFromSafeModuleFailed();
        return returnData;
    }

    ///////////////////////////////////////////////////////////////
    /// --- VIRTUAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    function _getLocker() internal view virtual returns (address);
}

// src/VoterBase.sol

/// @title VoterBase
/// @notice This contract is the base contract for all the voting related to the different protocols
/// @author StakeDAO
/// @custom:contact contact@stakedao.org
abstract contract VoterBase is VoterPermissionManager, SafeModule {
    ////////////////////////////////////////////////////////////////
    /// --- EVENTS & ERRORS
    ///////////////////////////////////////////////////////////////

    /// @notice Error emitted when the length of the gauges and weights are not the same
    error INCORRECT_LENGTH();

    constructor(address gateway) VoterPermissionManager(msg.sender) SafeModule(gateway) {}

    ////////////////////////////////////////////////////////////////
    /// --- PUBLIC FUNCTIONS
    ///////////////////////////////////////////////////////////////

    function voteGauges(address[] calldata _gauges, uint256[] calldata _weights)
        external
        virtual
        hasGaugesOrAllPermission
    {
        require(_gauges.length == _weights.length, INCORRECT_LENGTH());

        for (uint256 i; i < _gauges.length; i++) {
            bytes memory voteData =
                abi.encodeWithSelector(IGaugeController.vote_for_gauge_weights.selector, _gauges[i], _weights[i]);

            _executeTransaction(_getController(), voteData);
        }
    }

    ////////////////////////////////////////////////////////////////
    /// --- VIRTUAL FUNCTIONS -- MUST BE IMPLEMENTED
    ///////////////////////////////////////////////////////////////

    function _getController() internal view virtual returns (address);
    function _getLocker() internal view virtual override returns (address);
}

// src/integrations/curve/CurveVoter.sol

enum VoteType {
    Ownership,
    Parameter
}

struct Vote {
    uint256 _voteId;
    uint256 _yeaPct;
    uint256 _nayPct;
    VoteType _voteType;
}

/// @title CurveVoter
/// @notice This contract manages all the voting related to Curve protocols
/// @author StakeDAO
/// @custom:contact contact@stakedao.org
contract CurveVoter is VoterBase {
    using FixedPointMathLib for uint256;

    ////////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @notice Curve voter for ownership proposals
    address public immutable VOTER_OWNERSHIP = CurveProtocol.VOTING_APP_OWNERSHIP;

    /// @notice Curve voter for parameter proposals
    address public immutable VOTER_PARAMETER = CurveProtocol.VOTING_APP_PARAMETER;

    /// @notice Curve gauge controller
    address public immutable CONTROLLER = CurveProtocol.GAUGE_CONTROLLER;

    /// @notice Curve locker
    address public immutable LOCKER = CurveLocker.LOCKER;

    ////////////////////////////////////////////////////////////////
    /// --- EVENTS & ERRORS
    ///////////////////////////////////////////////////////////////

    /// @notice Error emitted when the pct is different than the voter pct
    error WRONG_PCT();

    /// @notice Error emitted when the vote type is not valid (neither Ownership nor Parameter)
    error WRONG_VOTE_TYPE();

    constructor(address _gateway) VoterBase(_gateway) {}

    ////////////////////////////////////////////////////////////////
    /// --- PUBLIC FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Bundle ownership and parameter votes
    /// @param _votes Array of votes to bundle
    /// @dev The given vote type must be either Ownership (0) or Parameter (1)
    /// @custom:throws WRONG_VOTE_TYPE when the vote type is not valid
    /// @custom:throws NotAuthorized when the caller is not allowed
    function votes(Vote[] calldata _votes) external hasProposalsOrAllPermission {
        uint256 length = _votes.length;

        // Vote for each proposal atomically
        for (uint256 i; i < length; i++) {
            Vote memory vote = _votes[i];

            if (vote._voteType == VoteType.Ownership) {
                voteOwnership(vote._voteId, vote._yeaPct, vote._nayPct);
            } else if (vote._voteType == VoteType.Parameter) {
                voteParameter(vote._voteId, vote._yeaPct, vote._nayPct);
            } else {
                revert WRONG_VOTE_TYPE();
            }
        }
    }

    /// @notice Vote for a ownership proposal
    /// @param _voteId The ID of the proposal
    /// @param _yeaPct Percent of votes in favor of the proposal
    /// @param _nayPct Percent of votes against the proposal
    /// @custom:throws NotAuthorized when the caller is not allowed
    function voteOwnership(uint256 _voteId, uint256 _yeaPct, uint256 _nayPct) public hasProposalsOrAllPermission {
        _votePercent(_voteId, _yeaPct, _nayPct, VOTER_OWNERSHIP);
    }

    /// @notice Vote for a parameter proposal
    /// @param _voteId The ID of the proposal
    /// @param _yeaPct Percent of votes in favor of the proposal
    /// @param _nayPct Percent of votes against the proposal
    /// @custom:throws NotAuthorized when the caller is not allowed
    function voteParameter(uint256 _voteId, uint256 _yeaPct, uint256 _nayPct) public hasProposalsOrAllPermission {
        _votePercent(_voteId, _yeaPct, _nayPct, VOTER_PARAMETER);
    }

    ////////////////////////////////////////////////////////////////
    /// --- INTERNAL FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Vote for a proposal
    /// @param _voteId The ID of the proposal
    /// @param _yeaPct Percent of votes in favor of the proposal
    /// @param _nayPct Percent of votes against the proposal
    /// @param _voter The address of the voter
    /// @custom:throws WRONG_PCT when the pct is not valid
    function _votePercent(uint256 _voteId, uint256 _yeaPct, uint256 _nayPct, address _voter) internal {
        uint64 pctBase = IVoting(_voter).PCT_BASE();
        require(pctBase == (_yeaPct + _nayPct), WRONG_PCT());

        bytes memory data = abi.encodeWithSelector(IVoting.votePct.selector, _voteId, _yeaPct, _nayPct, false);
        _executeTransaction(_voter, data);
    }

    /// @notice Get the locker address
    /// @dev Must be implemented for the SafeModule contract
    function _getLocker() internal view override returns (address) {
        return LOCKER;
    }

    function _getController() internal view override returns (address) {
        return CONTROLLER;
    }
}