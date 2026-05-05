// ============================================================
// FILE: lib/solmate/src/auth/Owned.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Simple single owner authorization mixin.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/Owned.sol)
abstract contract Owned {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnershipTransferred(address indexed user, address indexed newOwner);

    /*//////////////////////////////////////////////////////////////
                            OWNERSHIP STORAGE
    //////////////////////////////////////////////////////////////*/

    address public owner;

    modifier onlyOwner() virtual {
        require(msg.sender == owner, "UNAUTHORIZED");

        _;
    }

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        owner = _owner;

        emit OwnershipTransferred(address(0), _owner);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNERSHIP LOGIC
    //////////////////////////////////////////////////////////////*/

    function transferOwnership(address newOwner) public virtual onlyOwner {
        owner = newOwner;

        emit OwnershipTransferred(msg.sender, newOwner);
    }
}

// ============================================================
// FILE: lib/solmate/src/tokens/ERC20.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256(
                                    "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                                ),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}

// ============================================================
// FILE: lib/solmate/src/utils/FixedPointMathLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Arithmetic library with operations for fixed-point numbers.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/FixedPointMathLib.sol)
/// @author Inspired by USM (https://github.com/usmfum/USM/blob/master/contracts/WadMath.sol)
library FixedPointMathLib {
    /*//////////////////////////////////////////////////////////////
                    SIMPLIFIED FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    uint256 internal constant MAX_UINT256 = 2**256 - 1;

    uint256 internal constant WAD = 1e18; // The scalar of ETH and most ERC20s.

    function mulWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, y, WAD); // Equivalent to (x * y) / WAD rounded down.
    }

    function mulWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, y, WAD); // Equivalent to (x * y) / WAD rounded up.
    }

    function divWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, WAD, y); // Equivalent to (x * WAD) / y rounded down.
    }

    function divWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, WAD, y); // Equivalent to (x * WAD) / y rounded up.
    }

    /*//////////////////////////////////////////////////////////////
                    LOW LEVEL FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function mulDivDown(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to require(denominator != 0 && (y == 0 || x <= type(uint256).max / y))
            if iszero(mul(denominator, iszero(mul(y, gt(x, div(MAX_UINT256, y)))))) {
                revert(0, 0)
            }

            // Divide x * y by the denominator.
            z := div(mul(x, y), denominator)
        }
    }

    function mulDivUp(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to require(denominator != 0 && (y == 0 || x <= type(uint256).max / y))
            if iszero(mul(denominator, iszero(mul(y, gt(x, div(MAX_UINT256, y)))))) {
                revert(0, 0)
            }

            // If x * y modulo the denominator is strictly greater than 0,
            // 1 is added to round up the division of x * y by the denominator.
            z := add(gt(mod(mul(x, y), denominator), 0), div(mul(x, y), denominator))
        }
    }

    function rpow(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    // 0 ** 0 = 1
                    z := scalar
                }
                default {
                    // 0 ** n = 0
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    // If n is even, store scalar in z for now.
                    z := scalar
                }
                default {
                    // If n is odd, store x in z for now.
                    z := x
                }

                // Shifting right by 1 is like dividing by 2.
                let half := shr(1, scalar)

                for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {
                    // Revert immediately if x ** 2 would overflow.
                    // Equivalent to iszero(eq(div(xx, x), x)) here.
                    if shr(128, x) {
                        revert(0, 0)
                    }

                    // Store x squared.
                    let xx := mul(x, x)

                    // Round to the nearest number.
                    let xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)

                    // If n is even:
                    if mod(n, 2) {
                        // Compute z * x.
                        let zx := mul(z, x)

                        // If z * x overflowed:
                        if iszero(eq(div(zx, x), z)) {
                            // Revert if x is non-zero.
                            if iszero(iszero(x)) {
                                revert(0, 0)
                            }
                        }

                        // Round to the nearest number.
                        let zxRound := add(zx, half)

                        // Revert if zx + half overflowed.
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }

                        // Return properly scaled zxRound.
                        z := div(zxRound, scalar)
                    }
                }
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                        GENERAL NUMBER UTILITIES
    //////////////////////////////////////////////////////////////*/

    function sqrt(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            let y := x // We start y at x, which will help us make our initial estimate.

            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // We check y >= 2^(k + 8) but shift right by k bits
            // each branch to ensure that if x >= 256, then y >= 256.
            if iszero(lt(y, 0x10000000000000000000000000000000000)) {
                y := shr(128, y)
                z := shl(64, z)
            }
            if iszero(lt(y, 0x1000000000000000000)) {
                y := shr(64, y)
                z := shl(32, z)
            }
            if iszero(lt(y, 0x10000000000)) {
                y := shr(32, y)
                z := shl(16, z)
            }
            if iszero(lt(y, 0x1000000)) {
                y := shr(16, y)
                z := shl(8, z)
            }

            // Goal was to get z*z*y within a small factor of x. More iterations could
            // get y in a tighter range. Currently, we will have y in [256, 256*2^16).
            // We ensured y >= 256 so that the relative difference between y and y+1 is small.
            // That's not possible if x < 256 but we can just verify those cases exhaustively.

            // Now, z*z*y <= x < z*z*(y+1), and y <= 2^(16+8), and either y >= 256, or x < 256.
            // Correctness can be checked exhaustively for x < 256, so we assume y >= 256.
            // Then z*sqrt(y) is within sqrt(257)/sqrt(256) of sqrt(x), or about 20bps.

            // For s in the range [1/256, 256], the estimate f(s) = (181/1024) * (s+1) is in the range
            // (1/2.84 * sqrt(s), 2.84 * sqrt(s)), with largest error when s = 1 and when s = 256 or 1/256.

            // Since y is in [256, 256*2^16), let a = y/65536, so that a is in [1/256, 256). Then we can estimate
            // sqrt(y) using sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2^18.

            // There is no overflow risk here since y < 2^136 after the first branch above.
            z := shr(18, mul(z, add(y, 65536))) // A mul() is saved from starting z at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If x+1 is a perfect square, the Babylonian method cycles between
            // floor(sqrt(x)) and ceil(sqrt(x)). This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            // Since the ceil is rare, we save gas on the assignment and repeat division in the rare case.
            // If you don't care whether the floor or ceil square root is returned, you can remove this statement.
            z := sub(z, lt(div(x, z), z))
        }
    }

    function unsafeMod(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Mod x by y. Note this will return
            // 0 instead of reverting if y is zero.
            z := mod(x, y)
        }
    }

    function unsafeDiv(uint256 x, uint256 y) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            // Divide x by y. Note this will return
            // 0 instead of reverting if y is zero.
            r := div(x, y)
        }
    }

    function unsafeDivUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Add 1 to x * y if x % y > 0. Note this will
            // return 0 instead of reverting if y is zero.
            z := add(gt(mod(x, y), 0), div(x, y))
        }
    }
}

// ============================================================
// FILE: lib/solmate/src/utils/SafeCastLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Safe unsigned integer casting library that reverts on overflow.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeCastLib.sol)
/// @author Modified from OpenZeppelin (https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeCast.sol)
library SafeCastLib {
    function safeCastTo248(uint256 x) internal pure returns (uint248 y) {
        require(x < 1 << 248);

        y = uint248(x);
    }

    function safeCastTo240(uint256 x) internal pure returns (uint240 y) {
        require(x < 1 << 240);

        y = uint240(x);
    }

    function safeCastTo232(uint256 x) internal pure returns (uint232 y) {
        require(x < 1 << 232);

        y = uint232(x);
    }

    function safeCastTo224(uint256 x) internal pure returns (uint224 y) {
        require(x < 1 << 224);

        y = uint224(x);
    }

    function safeCastTo216(uint256 x) internal pure returns (uint216 y) {
        require(x < 1 << 216);

        y = uint216(x);
    }

    function safeCastTo208(uint256 x) internal pure returns (uint208 y) {
        require(x < 1 << 208);

        y = uint208(x);
    }

    function safeCastTo200(uint256 x) internal pure returns (uint200 y) {
        require(x < 1 << 200);

        y = uint200(x);
    }

    function safeCastTo192(uint256 x) internal pure returns (uint192 y) {
        require(x < 1 << 192);

        y = uint192(x);
    }

    function safeCastTo184(uint256 x) internal pure returns (uint184 y) {
        require(x < 1 << 184);

        y = uint184(x);
    }

    function safeCastTo176(uint256 x) internal pure returns (uint176 y) {
        require(x < 1 << 176);

        y = uint176(x);
    }

    function safeCastTo168(uint256 x) internal pure returns (uint168 y) {
        require(x < 1 << 168);

        y = uint168(x);
    }

    function safeCastTo160(uint256 x) internal pure returns (uint160 y) {
        require(x < 1 << 160);

        y = uint160(x);
    }

    function safeCastTo152(uint256 x) internal pure returns (uint152 y) {
        require(x < 1 << 152);

        y = uint152(x);
    }

    function safeCastTo144(uint256 x) internal pure returns (uint144 y) {
        require(x < 1 << 144);

        y = uint144(x);
    }

    function safeCastTo136(uint256 x) internal pure returns (uint136 y) {
        require(x < 1 << 136);

        y = uint136(x);
    }

    function safeCastTo128(uint256 x) internal pure returns (uint128 y) {
        require(x < 1 << 128);

        y = uint128(x);
    }

    function safeCastTo120(uint256 x) internal pure returns (uint120 y) {
        require(x < 1 << 120);

        y = uint120(x);
    }

    function safeCastTo112(uint256 x) internal pure returns (uint112 y) {
        require(x < 1 << 112);

        y = uint112(x);
    }

    function safeCastTo104(uint256 x) internal pure returns (uint104 y) {
        require(x < 1 << 104);

        y = uint104(x);
    }

    function safeCastTo96(uint256 x) internal pure returns (uint96 y) {
        require(x < 1 << 96);

        y = uint96(x);
    }

    function safeCastTo88(uint256 x) internal pure returns (uint88 y) {
        require(x < 1 << 88);

        y = uint88(x);
    }

    function safeCastTo80(uint256 x) internal pure returns (uint80 y) {
        require(x < 1 << 80);

        y = uint80(x);
    }

    function safeCastTo72(uint256 x) internal pure returns (uint72 y) {
        require(x < 1 << 72);

        y = uint72(x);
    }

    function safeCastTo64(uint256 x) internal pure returns (uint64 y) {
        require(x < 1 << 64);

        y = uint64(x);
    }

    function safeCastTo56(uint256 x) internal pure returns (uint56 y) {
        require(x < 1 << 56);

        y = uint56(x);
    }

    function safeCastTo48(uint256 x) internal pure returns (uint48 y) {
        require(x < 1 << 48);

        y = uint48(x);
    }

    function safeCastTo40(uint256 x) internal pure returns (uint40 y) {
        require(x < 1 << 40);

        y = uint40(x);
    }

    function safeCastTo32(uint256 x) internal pure returns (uint32 y) {
        require(x < 1 << 32);

        y = uint32(x);
    }

    function safeCastTo24(uint256 x) internal pure returns (uint24 y) {
        require(x < 1 << 24);

        y = uint24(x);
    }

    function safeCastTo16(uint256 x) internal pure returns (uint16 y) {
        require(x < 1 << 16);

        y = uint16(x);
    }

    function safeCastTo8(uint256 x) internal pure returns (uint8 y) {
        require(x < 1 << 8);

        y = uint8(x);
    }
}

// ============================================================
// FILE: src/asset-modules/abstracts/AbstractAM.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity 0.8.22;

import { IAssetModule } from "../../interfaces/IAssetModule.sol";
import { Owned } from "../../../lib/solmate/src/auth/Owned.sol";

/**
 * @title Abstract Asset Module
 * @author Pragma Labs
 * @notice Abstract contract with the minimal implementation of an Asset Module.
 * @dev Each different asset class should have its own Oracle Module.
 * The Asset Modules will:
 *  - Implement the pricing logic to calculate the USD value (with 18 decimals precision).
 *  - Process Deposits and Withdrawals.
 *  - Manage the risk parameters.
 */
abstract contract AssetModule is Owned, IAssetModule {
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // Identifier for the type of the asset.
    uint256 public immutable ASSET_TYPE;
    // The contract address of the Registry.
    address public immutable REGISTRY;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // Map asset => flag.
    mapping(address => bool) public inAssetModule;

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error ExposureNotInLimits();
    error OnlyRegistry();
    error Overflow();

    /* //////////////////////////////////////////////////////////////
                                MODIFIERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @dev Only the Registry can call functions with this modifier.
     */
    modifier onlyRegistry() {
        if (msg.sender != REGISTRY) revert OnlyRegistry();
        _;
    }

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param registry_ The contract address of the Registry.
     * @param assetType_ Identifier for the token standard of the asset.
     * 0 = Unknown asset.
     * 1 = ERC20.
     * 2 = ERC721.
     * 3 = ERC1155.
     */
    constructor(address registry_, uint256 assetType_) Owned(msg.sender) {
        REGISTRY = registry_;
        ASSET_TYPE = assetType_;
    }

    /*///////////////////////////////////////////////////////////////
                        ASSET INFORMATION
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Checks for a token address and the corresponding id if it is allowed.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @return A boolean, indicating if the asset is allowed.
     * @dev For assets without id (ERC20, ERC4626...), the id should be set to 0.
     */
    function isAllowed(address asset, uint256 assetId) public view virtual returns (bool);

    /**
     * @notice Returns the unique identifier of an asset based on the contract address and id.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @return key The unique identifier.
     * @dev Unsafe bitshift from uint256 to uint96, use only when the ids of the assets cannot exceed type(uint96).max.
     * For asset where the id can be bigger than a uint96, use a mapping of asset and assetId to storage.
     * These assets can however NOT be used as underlying assets (processIndirectDeposit() must revert).
     */
    function _getKeyFromAsset(address asset, uint256 assetId) internal view virtual returns (bytes32 key) {
        assembly {
            // Shift the assetId to the left by 20 bytes (160 bits).
            // Then OR the result with the address.
            key := or(shl(160, assetId), asset)
        }
    }

    /**
     * @notice Returns the contract address and id of an asset based on the unique identifier.
     * @param key The unique identifier.
     * @return asset The contract address of the asset.
     * @return assetId The id of the asset.
     */
    function _getAssetFromKey(bytes32 key) internal view virtual returns (address asset, uint256 assetId) {
        assembly {
            // Shift to the right by 20 bytes (160 bits) to extract the uint96 assetId.
            assetId := shr(160, key)

            // Use bitmask to extract the address from the rightmost 160 bits.
            asset := and(key, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
        }
    }

    /*///////////////////////////////////////////////////////////////
                          PRICING LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the usd value of an asset.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param assetAmount The amount of assets.
     * @return valueInUsd The value of the asset denominated in USD, with 18 Decimals precision.
     * @return collateralFactor The collateral factor of the asset for a given Creditor, with 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for a given Creditor, with 4 decimals precision.
     */
    function getValue(address creditor, address asset, uint256 assetId, uint256 assetAmount)
        public
        view
        virtual
        returns (uint256, uint256, uint256);

    /*///////////////////////////////////////////////////////////////
                    RISK VARIABLES MANAGEMENT
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the risk factors of an asset for a Creditor.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @return collateralFactor The collateral factor of the asset for the Creditor, 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for the Creditor, 4 decimals precision.
     */
    function getRiskFactors(address creditor, address asset, uint256 assetId)
        external
        view
        virtual
        returns (uint16 collateralFactor, uint16 liquidationFactor);

    /*///////////////////////////////////////////////////////////////
                    WITHDRAWALS AND DEPOSITS
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Increases the exposure to an asset on a direct deposit.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param amount The amount of tokens.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     */
    function processDirectDeposit(address creditor, address asset, uint256 assetId, uint256 amount)
        public
        virtual
        returns (uint256 recursiveCalls);

    /**
     * @notice Increases the exposure to an asset on an indirect deposit.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     * @return usdExposureUpperAssetToAsset The USD value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     */
    function processIndirectDeposit(
        address creditor,
        address asset,
        uint256 assetId,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) public virtual returns (uint256 recursiveCalls, uint256 usdExposureUpperAssetToAsset);

    /**
     * @notice Decreases the exposure to an asset on a direct withdrawal.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param amount The amount of tokens.
     */
    function processDirectWithdrawal(address creditor, address asset, uint256 assetId, uint256 amount) public virtual;

    /**
     * @notice Decreases the exposure to an asset on an indirect withdrawal.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return usdExposureUpperAssetToAsset The USD value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     */
    function processIndirectWithdrawal(
        address creditor,
        address asset,
        uint256 assetId,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) public virtual returns (uint256 usdExposureUpperAssetToAsset);
}

// ============================================================
// FILE: src/asset-modules/abstracts/AbstractDerivedAM.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity 0.8.22;

import { AssetModule } from "./AbstractAM.sol";
import { FixedPointMathLib } from "../../../lib/solmate/src/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "../../../lib/solmate/src/utils/SafeCastLib.sol";
import { IRegistry } from "../interfaces/IRegistry.sol";
import { AssetValuationLib, AssetValueAndRiskFactors } from "../../libraries/AssetValuationLib.sol";

/**
 * @title Derived Asset Module
 * @author Pragma Labs
 * @notice Abstract contract with the minimal implementation of a Derived Asset Module.
 * @dev Derived Assets are assets with underlying assets, the underlying assets can be Primary Assets or also Derived Assets.
 * For Derived Assets there are no direct external oracles.
 * USD values of assets must be calculated in a recursive manner via the pricing logic of the Underlying Assets.
 */
abstract contract DerivedAM is AssetModule {
    using FixedPointMathLib for uint256;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // Map with the risk parameters of the protocol for each Creditor.
    mapping(address creditor => RiskParameters riskParameters) public riskParams;
    // Map with the last exposures of each asset for each Creditor.
    mapping(address creditor => mapping(bytes32 assetKey => ExposuresPerAsset)) public lastExposuresAsset;
    // Map with the last amount of exposure of each underlying asset for each asset for each Creditor.
    mapping(address creditor => mapping(bytes32 assetKey => mapping(bytes32 underlyingAssetKey => uint256 exposure)))
        public lastExposureAssetToUnderlyingAsset;

    // Struct with the risk parameters of the protocol for a specific Creditor.
    struct RiskParameters {
        // The exposure in USD of the Creditor to the protocol at the last interaction, 18 decimals precision.
        uint112 lastUsdExposureProtocol;
        // The maximum exposure in USD of the Creditor to the protocol, 18 decimals precision.
        uint112 maxUsdExposureProtocol;
        // The risk factor of the protocol for a Creditor, 4 decimals precision.
        uint16 riskFactor;
    }

    // Struct with the exposures of a specific asset for a specific Creditor.
    struct ExposuresPerAsset {
        // The amount of exposure of the Creditor to the asset at the last interaction.
        uint112 lastExposureAsset;
        // The exposure in USD of the Creditor to the asset at the last interaction, 18 decimals precision.
        uint112 lastUsdExposureAsset;
    }

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error RiskFactorNotInLimits();

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param registry_ The contract address of the Registry.
     * @param assetType_ Identifier for the token standard of the asset.
     * 0 = Unknown asset.
     * 1 = ERC20.
     * 2 = ERC721.
     * 3 = ERC1155.
     * ...
     */
    constructor(address registry_, uint256 assetType_) AssetModule(registry_, assetType_) { }

    /*///////////////////////////////////////////////////////////////
                        ASSET INFORMATION
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the unique identifiers of the underlying assets.
     * @param assetKey The unique identifier of the asset.
     * @return underlyingAssetKeys The unique identifiers of the underlying assets.
     */
    function _getUnderlyingAssets(bytes32 assetKey)
        internal
        view
        virtual
        returns (bytes32[] memory underlyingAssetKeys);

    /**
     * @notice Calculates the USD rate of 10**18 underlying assets.
     * @param creditor The contract address of the Creditor.
     * @param underlyingAssetKeys The unique identifiers of the underlying assets.
     * @return rateUnderlyingAssetsToUsd The USD rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     * @dev The USD price per 10**18 tokens is used (instead of the USD price per token) to guarantee sufficient precision.
     */
    function _getRateUnderlyingAssetsToUsd(address creditor, bytes32[] memory underlyingAssetKeys)
        internal
        view
        virtual
        returns (AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd)
    {
        uint256 length = underlyingAssetKeys.length;

        address[] memory underlyingAssets = new address[](length);
        uint256[] memory underlyingAssetIds = new uint256[](length);
        uint256[] memory amounts = new uint256[](length);
        for (uint256 i; i < length; ++i) {
            (underlyingAssets[i], underlyingAssetIds[i]) = _getAssetFromKey(underlyingAssetKeys[i]);
            // We use the USD price per 10**18 tokens instead of the USD price per token to guarantee
            // sufficient precision.
            amounts[i] = 1e18;
        }

        rateUnderlyingAssetsToUsd =
            IRegistry(REGISTRY).getValuesInUsdRecursive(creditor, underlyingAssets, underlyingAssetIds, amounts);
    }

    /**
     * @notice Calculates for a given amount of an Asset the corresponding amount(s) of Underlying Asset(s).
     * @param creditor The contract address of the Creditor.
     * @param assetKey The unique identifier of the asset.
     * @param assetAmount The amount of the asset, in the decimal precision of the Asset.
     * @param underlyingAssetKeys The unique identifiers of the underlying assets.
     * @return underlyingAssetsAmounts The corresponding amount(s) of Underlying Asset(s), in the decimal precision of the Underlying Asset.
     * @return rateUnderlyingAssetsToUsd The USD rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     * @dev The USD price per 10**18 tokens is used (instead of the USD price per token) to guarantee sufficient precision.
     */
    function _getUnderlyingAssetsAmounts(
        address creditor,
        bytes32 assetKey,
        uint256 assetAmount,
        bytes32[] memory underlyingAssetKeys
    )
        internal
        view
        virtual
        returns (uint256[] memory underlyingAssetsAmounts, AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd);

    /*///////////////////////////////////////////////////////////////
                    RISK VARIABLES MANAGEMENT
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the risk factors of an asset for a Creditor.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @return collateralFactor The collateral factor of the asset for the Creditor, 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for the Creditor, 4 decimals precision.
     */
    function getRiskFactors(address creditor, address asset, uint256 assetId)
        external
        view
        virtual
        override
        returns (uint16 collateralFactor, uint16 liquidationFactor);

    /**
     * @notice Sets the risk parameters of the Protocol for a given Creditor.
     * @param creditor The contract address of the Creditor.
     * @param maxUsdExposureProtocol_ The maximum USD exposure of the protocol for each Creditor, denominated in USD with 18 decimals precision.
     * @param riskFactor The risk factor of the asset for the Creditor, 4 decimals precision.
     */
    function setRiskParameters(address creditor, uint112 maxUsdExposureProtocol_, uint16 riskFactor)
        external
        onlyRegistry
    {
        if (riskFactor > AssetValuationLib.ONE_4) revert RiskFactorNotInLimits();

        riskParams[creditor].maxUsdExposureProtocol = maxUsdExposureProtocol_;
        riskParams[creditor].riskFactor = riskFactor;
    }

    /*///////////////////////////////////////////////////////////////
                          PRICING LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the USD value of an asset.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param assetAmount The amount of assets.
     * @return valueInUsd The value of the asset denominated in USD, with 18 Decimals precision.
     * @return collateralFactor The collateral factor of the asset for a given Creditor, with 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for a given Creditor, with 4 decimals precision.
     */
    function getValue(address creditor, address asset, uint256 assetId, uint256 assetAmount)
        public
        view
        virtual
        override
        returns (uint256 valueInUsd, uint256 collateralFactor, uint256 liquidationFactor)
    {
        bytes32 assetKey = _getKeyFromAsset(asset, assetId);
        bytes32[] memory underlyingAssetKeys = _getUnderlyingAssets(assetKey);

        (uint256[] memory underlyingAssetsAmounts, AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd) =
            _getUnderlyingAssetsAmounts(creditor, assetKey, assetAmount, underlyingAssetKeys);

        // Check if rateToUsd for the underlying assets was already calculated in _getUnderlyingAssetsAmounts().
        if (rateUnderlyingAssetsToUsd.length == 0) {
            // If not, get the USD value of the underlying assets recursively.
            rateUnderlyingAssetsToUsd = _getRateUnderlyingAssetsToUsd(creditor, underlyingAssetKeys);
        }

        (valueInUsd, collateralFactor, liquidationFactor) =
            _calculateValueAndRiskFactors(creditor, underlyingAssetsAmounts, rateUnderlyingAssetsToUsd);
    }

    /**
     * @notice Returns the USD value of an asset.
     * @param creditor The contract address of the Creditor.
     * @param underlyingAssetsAmounts The corresponding amount(s) of Underlying Asset(s), in the decimal precision of the Underlying Asset.
     * @param rateUnderlyingAssetsToUsd The USD rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     * @return valueInUsd The value of the asset denominated in USD, with 18 Decimals precision.
     * @return collateralFactor The collateral factor of the asset for a given Creditor, with 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for a given Creditor, with 4 decimals precision.
     * @dev We take the most conservative (lowest) risk factor of all underlying assets.
     */
    function _calculateValueAndRiskFactors(
        address creditor,
        uint256[] memory underlyingAssetsAmounts,
        AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd
    ) internal view virtual returns (uint256 valueInUsd, uint256 collateralFactor, uint256 liquidationFactor);

    /*///////////////////////////////////////////////////////////////
                    WITHDRAWALS AND DEPOSITS
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Increases the exposure to an asset on a direct deposit.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param amount The amount of tokens.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     */
    function processDirectDeposit(address creditor, address asset, uint256 assetId, uint256 amount)
        public
        virtual
        override
        onlyRegistry
        returns (uint256 recursiveCalls)
    {
        bytes32 assetKey = _getKeyFromAsset(asset, assetId);

        // Calculate and update the new exposure to Asset.
        uint256 exposureAsset = _getAndUpdateExposureAsset(creditor, assetKey, int256(amount));

        (uint256 underlyingCalls,) = _processDeposit(exposureAsset, creditor, assetKey);

        unchecked {
            recursiveCalls = underlyingCalls + 1;
        }
    }

    /**
     * @notice Increases the exposure to an asset on an indirect deposit.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     * @return usdExposureUpperAssetToAsset The USD value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     * @dev An indirect deposit, is initiated by a deposit of another derived asset (the upper asset),
     * from which the asset of this Asset Module is an underlying asset.
     */
    function processIndirectDeposit(
        address creditor,
        address asset,
        uint256 assetId,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) public virtual override onlyRegistry returns (uint256 recursiveCalls, uint256 usdExposureUpperAssetToAsset) {
        bytes32 assetKey = _getKeyFromAsset(asset, assetId);

        // Calculate and update the new exposure to "Asset".
        uint256 exposureAsset = _getAndUpdateExposureAsset(creditor, assetKey, deltaExposureUpperAssetToAsset);

        (uint256 underlyingCalls, uint256 usdExposureAsset) = _processDeposit(exposureAsset, creditor, assetKey);

        if (exposureAsset == 0 || usdExposureAsset == 0) {
            usdExposureUpperAssetToAsset = 0;
        } else {
            // Calculate the USD value of the exposure of the upper asset to the underlying asset.
            usdExposureUpperAssetToAsset = usdExposureAsset.mulDivDown(exposureUpperAssetToAsset, exposureAsset);
        }

        unchecked {
            recursiveCalls = underlyingCalls + 1;
        }
    }

    /**
     * @notice Decreases the exposure to an asset on a direct withdrawal.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param amount The amount of tokens.
     */
    function processDirectWithdrawal(address creditor, address asset, uint256 assetId, uint256 amount)
        public
        virtual
        override
        onlyRegistry
    {
        bytes32 assetKey = _getKeyFromAsset(asset, assetId);

        // Calculate and update the new exposure to "Asset".
        uint256 exposureAsset = _getAndUpdateExposureAsset(creditor, assetKey, -int256(amount));

        _processWithdrawal(creditor, assetKey, exposureAsset);
    }

    /**
     * @notice Decreases the exposure to an asset on an indirect withdrawal.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return usdExposureUpperAssetToAsset The USD value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     * @dev An indirect withdrawal is initiated by a withdrawal of another Derived Asset (the upper asset),
     * from which the asset of this Asset Module is an Underlying Asset.
     */
    function processIndirectWithdrawal(
        address creditor,
        address asset,
        uint256 assetId,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) public virtual override onlyRegistry returns (uint256 usdExposureUpperAssetToAsset) {
        bytes32 assetKey = _getKeyFromAsset(asset, assetId);

        // Calculate and update the new exposure to "Asset".
        uint256 exposureAsset = _getAndUpdateExposureAsset(creditor, assetKey, deltaExposureUpperAssetToAsset);

        uint256 usdExposureAsset = _processWithdrawal(creditor, assetKey, exposureAsset);

        if (exposureAsset == 0 || usdExposureAsset == 0) {
            usdExposureUpperAssetToAsset = 0;
        } else {
            // Calculate the USD value of the exposure of the Upper Asset to the Underlying asset.
            usdExposureUpperAssetToAsset = usdExposureAsset.mulDivDown(exposureUpperAssetToAsset, exposureAsset);
        }
    }

    /**
     * @notice Update the exposure to an asset and its underlying asset(s) on deposit.
     * @param exposureAsset The updated exposure to the asset.
     * @param creditor The contract address of the Creditor.
     * @param assetKey The unique identifier of the asset.
     * @return underlyingCalls The number of calls done to different asset modules to process the deposit/withdrawal of the underlying assets.
     * @return usdExposureAsset The USD value of the exposure of the asset, 18 decimals precision.
     * @dev The checks on exposures are only done to block deposits that would over-expose a Creditor to a certain asset or protocol.
     * Underflows will not revert, but the exposure is instead set to 0.
     */
    function _processDeposit(uint256 exposureAsset, address creditor, bytes32 assetKey)
        internal
        virtual
        returns (uint256 underlyingCalls, uint256 usdExposureAsset)
    {
        uint256 usdExposureProtocol;
        {
            // Get the unique identifier(s) of the underlying asset(s).
            bytes32[] memory underlyingAssetKeys = _getUnderlyingAssets(assetKey);

            // Get the exposure to the asset's underlying asset(s) (in the decimal precision of the underlying assets).
            (uint256[] memory exposureAssetToUnderlyingAssets,) =
                _getUnderlyingAssetsAmounts(creditor, assetKey, exposureAsset, underlyingAssetKeys);

            int256 deltaExposureAssetToUnderlyingAsset;
            address underlyingAsset;
            uint256 underlyingId;
            uint256 underlyingCalls_;
            uint256 usdExposureToUnderlyingAsset;

            for (uint256 i; i < underlyingAssetKeys.length; ++i) {
                // Calculate the change in exposure to the underlying assets since last interaction.
                deltaExposureAssetToUnderlyingAsset = int256(exposureAssetToUnderlyingAssets[i])
                    - int256(uint256(lastExposureAssetToUnderlyingAsset[creditor][assetKey][underlyingAssetKeys[i]]));

                // Update "lastExposureAssetToUnderlyingAsset".
                lastExposureAssetToUnderlyingAsset[creditor][assetKey][underlyingAssetKeys[i]] =
                    exposureAssetToUnderlyingAssets[i];

                // Get the USD Value of the total exposure of "Asset" for its "Underlying Assets" at index "i".
                // If the "underlyingAsset" has one or more underlying assets itself, the lower level
                // Asset Module(s) will recursively update their respective exposures and return
                // the requested USD value to this Asset Module.
                (underlyingAsset, underlyingId) = _getAssetFromKey(underlyingAssetKeys[i]);
                (underlyingCalls_, usdExposureToUnderlyingAsset) = IRegistry(REGISTRY)
                    .getUsdValueExposureToUnderlyingAssetAfterDeposit(
                    creditor,
                    underlyingAsset,
                    underlyingId,
                    exposureAssetToUnderlyingAssets[i],
                    deltaExposureAssetToUnderlyingAsset
                );
                usdExposureAsset += usdExposureToUnderlyingAsset;
                unchecked {
                    underlyingCalls += underlyingCalls_;
                }
            }

            // Cache and update lastUsdExposureAsset.
            uint256 lastUsdExposureAsset = lastExposuresAsset[creditor][assetKey].lastUsdExposureAsset;
            // If usdExposureAsset is bigger than uint112, then check on usdExposureProtocol below will revert.
            lastExposuresAsset[creditor][assetKey].lastUsdExposureAsset = uint112(usdExposureAsset);

            // Cache lastUsdExposureProtocol.
            uint256 lastUsdExposureProtocol = riskParams[creditor].lastUsdExposureProtocol;

            // Update lastUsdExposureProtocol.
            unchecked {
                if (usdExposureAsset >= lastUsdExposureAsset) {
                    usdExposureProtocol = lastUsdExposureProtocol + (usdExposureAsset - lastUsdExposureAsset);
                } else if (lastUsdExposureProtocol > lastUsdExposureAsset - usdExposureAsset) {
                    usdExposureProtocol = lastUsdExposureProtocol - (lastUsdExposureAsset - usdExposureAsset);
                }
                // For the else case: (lastUsdExposureProtocol < lastUsdExposureAsset - usdExposureAsset),
                // usdExposureProtocol is set to 0, but usdExposureProtocol is already 0.
            }
            // The exposure must be strictly smaller than the maxExposure, not equal to or smaller than.
            // This is to ensure that all deposits revert when maxExposure is set to 0, also deposits with 0 amounts.
            if (usdExposureProtocol >= riskParams[creditor].maxUsdExposureProtocol) {
                revert AssetModule.ExposureNotInLimits();
            }
        }
        riskParams[creditor].lastUsdExposureProtocol = uint112(usdExposureProtocol);
    }

    /**
     * @notice Update the exposure to an asset and its underlying asset(s) on withdrawal.
     * @param creditor The contract address of the Creditor.
     * @param assetKey The unique identifier of the asset.
     * @param exposureAsset The updated exposure to the asset.
     * @return usdExposureAsset The USD value of the exposure of the asset, 18 decimals precision.
     * @dev The checks on exposures are only done to block deposits that would over-expose a Creditor to a certain asset or protocol.
     * Underflows will not revert, but the exposure is instead set to 0.
     * @dev Due to changing usd-prices of underlying assets, or due to changing compositions of upper assets,
     * the exposure to a derived asset can increase or decrease over time independent of deposits/withdrawals.
     * When derived assets are deposited/withdrawn, these changes in exposure since last interaction are also synced.
     * As such the actual exposure on a withdrawal of a derived asset can exceed the maxExposure, but this should never be blocked,
     * (the withdrawal actually improves the situation by making the asset less over-exposed).
     */
    function _processWithdrawal(address creditor, bytes32 assetKey, uint256 exposureAsset)
        internal
        virtual
        returns (uint256 usdExposureAsset)
    {
        // Get the unique identifier(s) of the underlying asset(s).
        bytes32[] memory underlyingAssetKeys = _getUnderlyingAssets(assetKey);

        // Get the exposure to the asset's underlying asset(s) (in the decimal precision of the underlying assets).
        (uint256[] memory exposureAssetToUnderlyingAssets,) =
            _getUnderlyingAssetsAmounts(creditor, assetKey, exposureAsset, underlyingAssetKeys);

        int256 deltaExposureAssetToUnderlyingAsset;
        address underlyingAsset;
        uint256 underlyingId;

        for (uint256 i; i < underlyingAssetKeys.length; ++i) {
            // Calculate the change in exposure to the underlying assets since last interaction.
            deltaExposureAssetToUnderlyingAsset = int256(exposureAssetToUnderlyingAssets[i])
                - int256(uint256(lastExposureAssetToUnderlyingAsset[creditor][assetKey][underlyingAssetKeys[i]]));

            // Update "lastExposureAssetToUnderlyingAsset".
            lastExposureAssetToUnderlyingAsset[creditor][assetKey][underlyingAssetKeys[i]] =
                exposureAssetToUnderlyingAssets[i];

            // Get the USD Value of the total exposure of "Asset" for for all of its "Underlying Assets".
            // If an "underlyingAsset" has one or more underlying assets itself, the lower level
            // Asset Modules will recursively update their respective exposures and return
            // the requested USD value to this Asset Module.
            (underlyingAsset, underlyingId) = _getAssetFromKey(underlyingAssetKeys[i]);
            usdExposureAsset += IRegistry(REGISTRY).getUsdValueExposureToUnderlyingAssetAfterWithdrawal(
                creditor,
                underlyingAsset,
                underlyingId,
                exposureAssetToUnderlyingAssets[i],
                deltaExposureAssetToUnderlyingAsset
            );
        }

        // Cache and update lastUsdExposureAsset.
        uint256 lastUsdExposureAsset = lastExposuresAsset[creditor][assetKey].lastUsdExposureAsset;
        // If usdExposureAsset is bigger than uint112, then safecast on usdExposureProtocol below will revert.
        lastExposuresAsset[creditor][assetKey].lastUsdExposureAsset = uint112(usdExposureAsset);

        // Cache lastUsdExposureProtocol.
        uint256 lastUsdExposureProtocol = riskParams[creditor].lastUsdExposureProtocol;

        // Update lastUsdExposureProtocol.
        uint256 usdExposureProtocol;
        unchecked {
            if (usdExposureAsset >= lastUsdExposureAsset) {
                usdExposureProtocol = lastUsdExposureProtocol + (usdExposureAsset - lastUsdExposureAsset);
            } else if (lastUsdExposureProtocol > lastUsdExposureAsset - usdExposureAsset) {
                usdExposureProtocol = lastUsdExposureProtocol - (lastUsdExposureAsset - usdExposureAsset);
            }
            // For the else case: (lastUsdExposureProtocol < lastUsdExposureAsset - usdExposureAsset),
            // usdExposureProtocol is set to 0, but usdExposureProtocol is already 0.
        }
        riskParams[creditor].lastUsdExposureProtocol = SafeCastLib.safeCastTo112(usdExposureProtocol);
    }

    /**
     * @notice Updates the exposure to the asset.
     * @param creditor The contract address of the Creditor.
     * @param assetKey The unique identifier of the asset.
     * @param deltaAsset The increase or decrease in asset amount since the last interaction.
     * @return exposureAsset The updated exposure to the asset.
     * @dev The checks on exposures are only done to block deposits that would over-expose a Creditor to a certain asset or protocol.
     * Underflows will not revert, but the exposure is instead set to 0.
     */
    function _getAndUpdateExposureAsset(address creditor, bytes32 assetKey, int256 deltaAsset)
        internal
        returns (uint256 exposureAsset)
    {
        // Update exposureAssetLast.
        if (deltaAsset > 0) {
            exposureAsset = lastExposuresAsset[creditor][assetKey].lastExposureAsset + uint256(deltaAsset);
        } else {
            uint256 exposureAssetLast = lastExposuresAsset[creditor][assetKey].lastExposureAsset;
            exposureAsset = exposureAssetLast > uint256(-deltaAsset) ? exposureAssetLast - uint256(-deltaAsset) : 0;
        }
        lastExposuresAsset[creditor][assetKey].lastExposureAsset = SafeCastLib.safeCastTo112(exposureAsset);
    }
}

// ============================================================
// FILE: src/asset-modules/Aerodrome-Finance/AerodromePoolAM.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity 0.8.22;

import { AssetValuationLib, AssetValueAndRiskFactors } from "../../libraries/AssetValuationLib.sol";
import { DerivedAM, FixedPointMathLib, IRegistry } from "../abstracts/AbstractDerivedAM.sol";
import { ERC20 } from "../../../lib/solmate/src/tokens/ERC20.sol";
import { FullMath } from "../../../src/asset-modules/UniswapV3/libraries/FullMath.sol";
import { IAeroFactory } from "./interfaces/IAeroFactory.sol";
import { IAeroPool } from "./interfaces/IAeroPool.sol";

/**
 * @title Asset-Module for Aerodrome Finance Pools
 * @author Pragma Labs
 * @notice The AerodromePoolAM stores pricing logic and basic information for Aerodrome Finance Pools
 * @dev No end-user should directly interact with the AerodromePoolAM, only the Registry, the contract owner or via the actionHandler
 */
contract AerodromePoolAM is DerivedAM {
    using FixedPointMathLib for uint256;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The Aerodrome Finance Factory
    IAeroFactory public immutable AERO_FACTORY;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // Maps an Aerodrome Finance pool to its underlying assets.
    mapping(bytes32 asset => bytes32[] underlyingAssets) public assetToUnderlyingAssets;

    // Maps an asset to its struct with information.
    mapping(address asset => AssetInformation) public assetToInformation;

    // Struct with additional information for a specific pool.
    struct AssetInformation {
        bool stable;
        uint64 unitCorrection0;
        uint64 unitCorrection1;
    }

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error AssetNotAllowed();
    error InvalidPool();

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param registry_ The address of the Registry.
     * @param aerodromeFactory The contract address of the pool factory of Aerodrome Finance.
     * @dev The ASSET_TYPE, necessary for the deposit and withdraw logic in the Accounts, is "1" for ERC20 tokens.
     */
    constructor(address registry_, address aerodromeFactory) DerivedAM(registry_, 1) {
        AERO_FACTORY = IAeroFactory(aerodromeFactory);
    }

    /*///////////////////////////////////////////////////////////////
                        ASSET MANAGEMENT
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds a new Aerodrome pool to the AerodromePoolAM.
     * @param pool The contract address of the Aerodrome Finance pool.
     * @dev Owner should not add stable pools where one of the tokens has or can have a very high supply (>15511800964 * 10 ** decimals)
     * Since tokens with very high supply might cause an overflow in _getTrustedReservesStable().
     */
    function addAsset(address pool) external onlyOwner {
        if (AERO_FACTORY.isPool(pool) != true) revert InvalidPool();

        (address token0, address token1) = IAeroPool(pool).tokens();
        if (!IRegistry(REGISTRY).isAllowed(token0, 0)) revert AssetNotAllowed();
        if (!IRegistry(REGISTRY).isAllowed(token1, 0)) revert AssetNotAllowed();

        if (IAeroPool(pool).stable()) {
            assetToInformation[pool] = AssetInformation({
                stable: true,
                unitCorrection0: uint64(10 ** (18 - ERC20(token0).decimals())),
                unitCorrection1: uint64(10 ** (18 - ERC20(token1).decimals()))
            });
        }

        inAssetModule[pool] = true;

        bytes32[] memory underlyingAssetsKey = new bytes32[](2);
        underlyingAssetsKey[0] = _getKeyFromAsset(token0, 0);
        underlyingAssetsKey[1] = _getKeyFromAsset(token1, 0);

        assetToUnderlyingAssets[_getKeyFromAsset(pool, 0)] = underlyingAssetsKey;

        // Will revert in Registry if Aerodrome Finance pool was already added.
        IRegistry(REGISTRY).addAsset(uint96(ASSET_TYPE), pool);
    }

    /*///////////////////////////////////////////////////////////////
                        ASSET INFORMATION
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Checks for a token address and the corresponding id if it is allowed.
     * @param asset The contract address of the asset.
     * @return allowed A boolean, indicating if the asset is allowed.
     */
    function isAllowed(address asset, uint256) public view override returns (bool allowed) {
        if (inAssetModule[asset]) allowed = true;
    }

    /**
     * @notice Returns the unique identifier of an asset based on the contract address and id.
     * @param asset The contract address of the asset.
     * param assetId The Id of the asset.
     * @return key The unique identifier.
     * @dev The assetId is hard-coded to 0, since both the assets as underlying assets for this Asset Module are ERC20's.
     */
    function _getKeyFromAsset(address asset, uint256) internal pure override returns (bytes32 key) {
        assembly {
            key := asset
        }
    }

    /**
     * @notice Returns the contract address and id of an asset based on the unique identifier.
     * @param key The unique identifier.
     * @return asset The contract address of the asset.
     * @return assetId The Id of the asset.
     * @dev The assetId is hard-coded to 0, since both the assets as underlying assets for this Asset Module are ERC20's.
     */
    function _getAssetFromKey(bytes32 key) internal pure override returns (address asset, uint256) {
        assembly {
            asset := key
        }

        return (asset, 0);
    }

    /**
     * @notice Returns the unique identifiers of the underlying assets.
     * @param assetKey The unique identifier of the asset.
     * @return underlyingAssetKeys The unique identifiers of the underlying assets.
     */
    function _getUnderlyingAssets(bytes32 assetKey)
        internal
        view
        override
        returns (bytes32[] memory underlyingAssetKeys)
    {
        underlyingAssetKeys = assetToUnderlyingAssets[assetKey];
    }

    /**
     * @notice Calculates for a given amount of Asset the corresponding amount(s) of underlying asset(s).
     * @param creditor The contract address of the creditor.
     * @param assetKey The unique identifier of the asset.
     * @param amount The amount of the Asset, in the decimal precision of the Asset.
     * @param underlyingAssetKeys The unique identifiers of the underlying assets.
     * @return underlyingAssetsAmounts The corresponding amount(s) of Underlying Asset(s), in the decimal precision of the Underlying Asset.
     * @return rateUnderlyingAssetsToUsd The usd rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     */
    function _getUnderlyingAssetsAmounts(
        address creditor,
        bytes32 assetKey,
        uint256 amount,
        bytes32[] memory underlyingAssetKeys
    )
        internal
        view
        override
        returns (uint256[] memory underlyingAssetsAmounts, AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd)
    {
        underlyingAssetsAmounts = new uint256[](2);
        rateUnderlyingAssetsToUsd = _getRateUnderlyingAssetsToUsd(creditor, underlyingAssetKeys);

        // If one of the assets has a rate of 0, the whole LP positions will have a value of zero.
        if (rateUnderlyingAssetsToUsd[0].assetValue == 0 || rateUnderlyingAssetsToUsd[1].assetValue == 0) {
            return (underlyingAssetsAmounts, rateUnderlyingAssetsToUsd);
        }

        (address pool,) = _getAssetFromKey(assetKey);

        // Calculate the trusted reserves of the pool.
        (uint256 trustedReserve0, uint256 trustedReserve1) = assetToInformation[pool].stable
            ? _getTrustedReservesStable(pool, rateUnderlyingAssetsToUsd)
            : _getTrustedReservesVolatile(pool, rateUnderlyingAssetsToUsd);

        // Cache totalSupply
        uint256 totalSupply = IAeroPool(pool).totalSupply();

        underlyingAssetsAmounts[0] = trustedReserve0.mulDivDown(amount, totalSupply);
        underlyingAssetsAmounts[1] = trustedReserve1.mulDivDown(amount, totalSupply);

        return (underlyingAssetsAmounts, rateUnderlyingAssetsToUsd);
    }

    /**
     * @notice Calculates the trusted reserves of a volatile Aerodrome pool.
     * @param pool The contract address of the pool.
     * @param rateUnderlyingAssetsToUsd The usd rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     * @return trustedReserve0 The trusted reserve of token0.
     * @return trustedReserve1 The trusted reserve of token1.
     * @dev The trusted reserves (r0' and r1') must satisfy two conditions:
     *  1) The pool is in equilibrium with external markets.
     *     r0' * P0usd = r1' * P1usd
     *     With P0usd and P1usd the trusted usd prices of both Underlying Assets.
     *  2) The invariant, k, of the pool is equal for both the trusted and untrusted reserves.
     *     k(r0', r1') = k(r0, r1)
     *     The invariant is defined as: k(r0, r1) = r0 * r1
     * From these two conditions, the trusted reserves can be calculated as follows:
     *  3) Condition 1) can be rewritten as:
     *     r1' = r0' * P0usd / P1usd
     *  4) We plug 3) into 2) and solve for r0':
     *     r0' = √[P1usd * k / P0usd]
     *  5) Calculate r1' from r1':
     *     r1' = r0' * P0usd / P1usd
     */
    function _getTrustedReservesVolatile(address pool, AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd)
        internal
        view
        returns (uint256 trustedReserve0, uint256 trustedReserve1)
    {
        // Calculate k from the untrusted reserves:
        // k = r0 * r1
        (uint256 reserve0, uint256 reserve1,) = IAeroPool(pool).getReserves();
        uint256 k = reserve0 * reserve1;

        // Calculate trusted reserves:
        // r0' = √[P1usd * k / P0usd]
        trustedReserve0 = FixedPointMathLib.sqrt(
            FullMath.mulDiv(rateUnderlyingAssetsToUsd[1].assetValue, k, rateUnderlyingAssetsToUsd[0].assetValue)
        );

        // r1' = r0' * P0usd / P1usd
        trustedReserve1 = FullMath.mulDiv(
            trustedReserve0, rateUnderlyingAssetsToUsd[0].assetValue, rateUnderlyingAssetsToUsd[1].assetValue
        );
    }

    /**
     * @notice Calculates the trusted reserves of a stable Aerodrome pool.
     * @param pool The contract address of the pool.
     * @param rateUnderlyingAssetsToUsd The usd rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     * @return trustedReserve0 The trusted reserve of token0.
     * @return trustedReserve1 The trusted reserve of token1.
     * @dev The trusted reserves (r0' and r1') must satisfy two conditions:
     *  1) The pool is in equilibrium with external markets.
     *     r0' * P0usd = r1' * P1usd
     *     With P0usd and P1usd the trusted usd prices of both Underlying Assets.
     *  2) The invariant, k, of the pool is equal for both the trusted and untrusted reserves.
     *     k(r0', r1') = k(r0, r1)
     *     Stable aerodrome pools use a correction for the underlying token amounts to bring them to 18 decimals:
     *     x = r0 * 10^(18 - D0).
     *     y = r1 * 10^(18 - D1).
     *     The invariant is defined as: k = x³y + y³x
     * From these two conditions, the trusted reserves can be calculated as follows:
     *  3) We plug the definition of x and y into 1) and rewrite it as:
     *     y = x * [P0usd / 10^(18 - D0)] / [P1usd / 10^(18 - D1)]
     *     => y = x * p0 / p1
     *     With p0 = P0usd / 10^(18 - D0) and p1 = P1usd / 10^(18 - D1)
     *  4) We plug 3) into 2) and solve for x:
     *     x = ∜[k(r0, r1) * p1³ / (p0 * p1² + p0³)]
     *  5) Calculate r0' and r1' from x:
     *     r0' = x / 10^(18 - D0)
     *     r1' = r0' * P0usd / P1usd
     */
    function _getTrustedReservesStable(address pool, AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd)
        internal
        view
        returns (uint256 trustedReserve0, uint256 trustedReserve1)
    {
        // Calculate k from the untrusted reserves:
        // k = x³y + y³x
        // => k = xy * (x² + y²)
        // => k = a * b
        // Note: we use 36 decimals precision for k, instead of the 18 decimals used in Aerodromes Pool.sol.
        uint256 k;
        uint256 unitCorrection0 = assetToInformation[pool].unitCorrection0;
        uint256 unitCorrection1 = assetToInformation[pool].unitCorrection1;
        {
            (uint256 reserve0, uint256 reserve1,) = IAeroPool(pool).getReserves();
            // Stable aerodrome pools use a correction for the underlying token amounts to bring them to 18 decimals:
            // x = r0 * 10^(18 - D0).
            // y = r1 * 10^(18 - D1).
            uint256 x = reserve0 * unitCorrection0; // 18 decimals.
            uint256 y = reserve1 * unitCorrection1; // 18 decimals.
            uint256 a = x.mulDivDown(y, 1e18); // 18 decimals.
            uint256 b = (x * x + y * y) / 1e18; // 18 decimals.
            k = a * b; // 36 decimals.
        }

        // Calculate x:
        // x = ∜[k(r0, r1) * p1³ / (p0 * p1² + p0³)]
        // => x = √{p1 * √[(k * p1 / p0) / (p0² + p1²)]}
        // => x = √{p1 * √[c / d]}
        {
            // USD rates also have to be corrected as shown in 3).
            uint256 p0 = rateUnderlyingAssetsToUsd[0].assetValue / unitCorrection0; // 18 decimals.
            uint256 p1 = rateUnderlyingAssetsToUsd[1].assetValue / unitCorrection1; // 18 decimals.
            uint256 c = FullMath.mulDiv(k, p1, p0); // 36 decimals.
            uint256 d = p0 * p0 + p1 * p1; // 36 decimals.
            // Sqrt halves the number of decimals.
            uint256 x = FixedPointMathLib.sqrt(p1 * FixedPointMathLib.sqrt(FullMath.mulDiv(1e36, c, d))); // 18 decimals.

            // Bring reserve0 from 18 decimals precision to the actual token decimals.
            // r0' = x / 10^(18 - D0).
            trustedReserve0 = x / unitCorrection0;
        }

        // r1' = r0' * P0usd / P1usd
        trustedReserve1 = FullMath.mulDiv(
            trustedReserve0, rateUnderlyingAssetsToUsd[0].assetValue, rateUnderlyingAssetsToUsd[1].assetValue
        );
    }

    /*///////////////////////////////////////////////////////////////
                    RISK VARIABLES MANAGEMENT
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the risk factors of an asset for a Creditor.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @return collateralFactor The collateral factor of the asset for the Creditor, 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for the Creditor, 4 decimals precision.
     */
    function getRiskFactors(address creditor, address asset, uint256 assetId)
        external
        view
        override
        returns (uint16 collateralFactor, uint16 liquidationFactor)
    {
        bytes32[] memory underlyingAssetKeys = _getUnderlyingAssets(_getKeyFromAsset(asset, assetId));

        address[] memory assets = new address[](2);
        (assets[0],) = _getAssetFromKey(underlyingAssetKeys[0]);
        (assets[1],) = _getAssetFromKey(underlyingAssetKeys[1]);

        (uint16[] memory collateralFactors, uint16[] memory liquidationFactors) =
            IRegistry(REGISTRY).getRiskFactors(creditor, assets, new uint256[](2));

        // Lower risk factors with the protocol wide risk factor.
        uint256 riskFactor = riskParams[creditor].riskFactor;

        // Keep the lowest risk factor of all underlying assets.
        // Unsafe cast: collateralFactor and liquidationFactor are smaller than or equal to 1e4.
        collateralFactor = uint16(
            collateralFactors[0] < collateralFactors[1]
                ? riskFactor.mulDivDown(collateralFactors[0], AssetValuationLib.ONE_4)
                : riskFactor.mulDivDown(collateralFactors[1], AssetValuationLib.ONE_4)
        );
        liquidationFactor = uint16(
            liquidationFactors[0] < liquidationFactors[1]
                ? riskFactor.mulDivDown(liquidationFactors[0], AssetValuationLib.ONE_4)
                : riskFactor.mulDivDown(liquidationFactors[1], AssetValuationLib.ONE_4)
        );
    }

    /*///////////////////////////////////////////////////////////////
                          PRICING LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the USD value of an asset.
     * @param creditor The contract address of the Creditor.
     * @param underlyingAssetsAmounts The corresponding amount(s) of Underlying Asset(s), in the decimal precision of the Underlying Asset.
     * @param rateUnderlyingAssetsToUsd The USD rates of 10**18 tokens of underlying asset, with 18 decimals precision.
     * @return valueInUsd The value of the asset denominated in USD, with 18 Decimals precision.
     * @return collateralFactor The collateral factor of the asset for a given Creditor, with 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for a given Creditor, with 4 decimals precision.
     * @dev We take the most conservative (lowest) risk factor of all underlying assets.
     */
    function _calculateValueAndRiskFactors(
        address creditor,
        uint256[] memory underlyingAssetsAmounts,
        AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd
    ) internal view override returns (uint256 valueInUsd, uint256 collateralFactor, uint256 liquidationFactor) {
        // "rateUnderlyingAssetsToUsd" is the USD value with 18 decimals precision for 10**18 tokens of Underlying Asset.
        // To get the USD value (also with 18 decimals) of the actual amount of underlying assets, we have to multiply
        // the actual amount with the rate for 10**18 tokens, and divide by 10**18.
        valueInUsd = underlyingAssetsAmounts[0].mulDivDown(rateUnderlyingAssetsToUsd[0].assetValue, 1e18)
            + underlyingAssetsAmounts[1].mulDivDown(rateUnderlyingAssetsToUsd[1].assetValue, 1e18);

        // Lower risk factors with the protocol wide risk factor.
        uint256 riskFactor = riskParams[creditor].riskFactor;

        // Keep the lowest risk factor of all underlying assets.
        collateralFactor = rateUnderlyingAssetsToUsd[0].collateralFactor < rateUnderlyingAssetsToUsd[1].collateralFactor
            ? riskFactor.mulDivDown(rateUnderlyingAssetsToUsd[0].collateralFactor, AssetValuationLib.ONE_4)
            : riskFactor.mulDivDown(rateUnderlyingAssetsToUsd[1].collateralFactor, AssetValuationLib.ONE_4);
        liquidationFactor = rateUnderlyingAssetsToUsd[0].liquidationFactor
            < rateUnderlyingAssetsToUsd[1].liquidationFactor
            ? riskFactor.mulDivDown(rateUnderlyingAssetsToUsd[0].liquidationFactor, AssetValuationLib.ONE_4)
            : riskFactor.mulDivDown(rateUnderlyingAssetsToUsd[1].liquidationFactor, AssetValuationLib.ONE_4);
    }
}

// ============================================================
// FILE: src/asset-modules/Aerodrome-Finance/interfaces/IAeroFactory.sol
// ============================================================

/**
 * Created by Arcadia Finance
 * https://www.arcadia.finance
 *
 * SPDX-License-Identifier: MIT
 */
pragma solidity 0.8.22;

interface IAeroFactory {
    function isPool(address) external view returns (bool);
}

// ============================================================
// FILE: src/asset-modules/Aerodrome-Finance/interfaces/IAeroPool.sol
// ============================================================

/**
 * Created by Arcadia Finance
 * https://www.arcadia.finance
 *
 * SPDX-License-Identifier: MIT
 */
pragma solidity 0.8.22;

interface IAeroPool {
    function index0() external view returns (uint256);
    function index1() external view returns (uint256);
    function supplyIndex0(address) external view returns (uint256);
    function supplyIndex1(address) external view returns (uint256);
    function claimable0(address) external view returns (uint256);
    function claimable1(address) external view returns (uint256);
    function tokens() external view returns (address token0, address token1);
    function getK() external view returns (uint256);
    function claimFees() external returns (uint256, uint256);
    function getReserves() external view returns (uint256 reserve0, uint256 reserve1, uint256 blockTimestampLast);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function stable() external returns (bool);
}

// ============================================================
// FILE: src/asset-modules/interfaces/IRegistry.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity 0.8.22;

import { AssetValueAndRiskFactors } from "../../libraries/AssetValuationLib.sol";

interface IRegistry {
    /**
     * @notice Checks for a token address and the corresponding Id if it is allowed.
     * @param asset The contract address of the asset.
     * @param assetId The Id of the asset.
     * @return A boolean, indicating if the asset is allowed.
     */
    function isAllowed(address asset, uint256 assetId) external view returns (bool);

    /**
     * @notice Adds a new asset to the Registry.
     * @param assetType Identifier for the type of the asset.
     * @param asset The contract address of the asset.
     */
    function addAsset(uint96 assetType, address asset) external;

    /**
     * @notice Verifies whether a sequence of oracles complies with a predetermined set of criteria.
     * @param oracleSequence The sequence of the oracles to price a certain asset in USD,
     * packed in a single bytes32 object.
     * @return A boolean, indicating if the sequence complies with the set of criteria.
     */
    function checkOracleSequence(bytes32 oracleSequence) external view returns (bool);

    /**
     * @notice Returns the risk factors per asset for a creditor.
     * @param creditor The contract address of the creditor.
     * @param assetAddresses Array of the contract addresses of the assets.
     * @param assetIds Array of the IDs of the assets.
     * @return collateralFactors Array of the collateral factors of the assets for the creditor, 4 decimals precision.
     * @return liquidationFactors Array of the liquidation factors of the assets for the creditor, 4 decimals precision.
     */
    function getRiskFactors(address creditor, address[] calldata assetAddresses, uint256[] calldata assetIds)
        external
        view
        returns (uint16[] memory, uint16[] memory);

    /**
     * @notice This function is called by pricing modules of non-primary assets in order to update the exposure of an underlying asset after a deposit.
     * @param creditor The contract address of the creditor.
     * @param underlyingAsset The underlying asset.
     * @param underlyingAssetId The underlying asset ID.
     * @param exposureAssetToUnderlyingAsset The amount of exposure of the asset to the underlying asset.
     * @param deltaExposureAssetToUnderlyingAsset The increase or decrease in exposure of the asset to the underlying asset since the last interaction.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     * @return usdExposureAssetToUnderlyingAsset The Usd value of the exposure of the asset to the underlying asset, 18 decimals precision.
     */
    function getUsdValueExposureToUnderlyingAssetAfterDeposit(
        address creditor,
        address underlyingAsset,
        uint256 underlyingAssetId,
        uint256 exposureAssetToUnderlyingAsset,
        int256 deltaExposureAssetToUnderlyingAsset
    ) external returns (uint256, uint256);

    /**
     * @notice This function is called by pricing modules of non-primary assets in order to update the exposure of an underlying asset after a withdrawal.
     * @param creditor The contract address of the creditor.
     * @param underlyingAsset The underlying asset.
     * @param underlyingAssetId The underlying asset ID.
     * @param exposureAssetToUnderlyingAsset The amount of exposure of the asset to the underlying asset.
     * @param deltaExposureAssetToUnderlyingAsset The increase or decrease in exposure of the asset to the underlying asset since the last interaction.
     * @return usdExposureAssetToUnderlyingAsset The Usd value of the exposure of the asset to the underlying asset, 18 decimals precision.
     */
    function getUsdValueExposureToUnderlyingAssetAfterWithdrawal(
        address creditor,
        address underlyingAsset,
        uint256 underlyingAssetId,
        uint256 exposureAssetToUnderlyingAsset,
        int256 deltaExposureAssetToUnderlyingAsset
    ) external returns (uint256 usdExposureAssetToUnderlyingAsset);

    /**
     * @notice Returns the rate of a certain asset in USD.
     * @param oracleSequence The sequence of the oracles to price a certain asset in USD,
     * packed in a single bytes32 object.
     * @return rate The USD rate of an asset with 18 decimals precision.
     */
    function getRateInUsd(bytes32 oracleSequence) external view returns (uint256);

    /**
     * @notice Calculates the USD values of underlying assets.
     * @param creditor The contract address of the creditor.
     * @param assets Array of the contract addresses of the assets.
     * @param assetIds Array of the IDs of the assets.
     * @param assetAmounts Array with the amounts of the assets.
     * @return valuesAndRiskFactors The value of the asset denominated in USD, with 18 Decimals precision.
     */
    function getValuesInUsdRecursive(
        address creditor,
        address[] calldata assets,
        uint256[] calldata assetIds,
        uint256[] calldata assetAmounts
    ) external view returns (AssetValueAndRiskFactors[] memory valuesAndRiskFactors);
}

// ============================================================
// FILE: src/asset-modules/UniswapV3/libraries/FullMath.sol
// ============================================================

// https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/FullMath.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.22;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
    /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
    function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = a * b
            // Compute the product mod 2**256 and mod 2**256 - 1
            // then use the Chinese Remainder Theorem to reconstruct
            // the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2**256 + prod0
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(a, b, not(0))
                prod0 := mul(a, b)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division
            if (prod1 == 0) {
                require(denominator > 0);
                assembly {
                    result := div(prod0, denominator)
                }
                return result;
            }

            // Make sure the result is less than 2**256.
            // Also prevents denominator == 0
            require(denominator > prod1);

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0]
            // Compute remainder using mulmod
            uint256 remainder;
            assembly {
                remainder := mulmod(a, b, denominator)
            }
            // Subtract 256 bit number from 512 bit number
            assembly {
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator
            // Compute largest power of two divisor of denominator.
            // Always >= 1.
            uint256 twos = (type(uint256).max - denominator + 1) & denominator;
            // Divide denominator by power of two
            assembly {
                denominator := div(denominator, twos)
            }

            // Divide [prod1 prod0] by the factors of two
            assembly {
                prod0 := div(prod0, twos)
            }
            // Shift in bits from prod1 into prod0. For this we need
            // to flip `twos` such that it is 2**256 / twos.
            // If twos is zero, then it becomes one
            assembly {
                twos := add(div(sub(0, twos), twos), 1)
            }
            prod0 |= prod1 * twos;

            // Invert denominator mod 2**256
            // Now that denominator is an odd number, it has an inverse
            // modulo 2**256 such that denominator * inv = 1 mod 2**256.
            // Compute the inverse by starting with a seed that is correct
            // correct for four bits. That is, denominator * inv = 1 mod 2**4
            uint256 inv = (3 * denominator) ^ 2;
            // Now use Newton-Raphson iteration to improve the precision.
            // Thanks to Hensel's lifting lemma, this also works in modular
            // arithmetic, doubling the correct bits in each step.
            inv *= 2 - denominator * inv; // inverse mod 2**8
            inv *= 2 - denominator * inv; // inverse mod 2**16
            inv *= 2 - denominator * inv; // inverse mod 2**32
            inv *= 2 - denominator * inv; // inverse mod 2**64
            inv *= 2 - denominator * inv; // inverse mod 2**128
            inv *= 2 - denominator * inv; // inverse mod 2**256

            // Because the division is now exact we can divide by multiplying
            // with the modular inverse of denominator. This will give us the
            // correct result modulo 2**256. Since the precoditions guarantee
            // that the outcome is less than 2**256, this is the final result.
            // We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inv;
        }
        return result;
    }
}

// ============================================================
// FILE: src/interfaces/IAssetModule.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity 0.8.22;

interface IAssetModule {
    /**
     * @notice Checks for a token address and the corresponding Id if it is allowed.
     * @param asset The contract address of the asset.
     * @param assetId The Id of the asset.
     * @return A boolean, indicating if the asset is allowed.
     * @dev For assets without Id (ERC20, ERC4626...), the Id should be set to 0.
     */
    function isAllowed(address asset, uint256 assetId) external view returns (bool);

    /**
     * @notice Returns the usd value of an asset.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param assetId The Id of the asset.
     * @param assetAmount The amount of assets.
     * @return valueInUsd The value of the asset denominated in USD, with 18 Decimals precision.
     * @return collateralFactor The collateral factor of the asset for a given creditor, with 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for a given creditor, with 4 decimals precision.
     */
    function getValue(address creditor, address asset, uint256 assetId, uint256 assetAmount)
        external
        view
        returns (uint256, uint256, uint256);

    /**
     * @notice Returns the risk factors of an asset for a creditor.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param assetId The Id of the asset.
     * @return collateralFactor The collateral factor of the asset for the creditor, 4 decimals precision.
     * @return liquidationFactor The liquidation factor of the asset for the creditor, 4 decimals precision.
     */
    function getRiskFactors(address creditor, address asset, uint256 assetId) external view returns (uint16, uint16);

    /**
     * @notice Increases the exposure to an asset on a direct deposit.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param id The Id of the asset.
     * @param amount The amount of tokens.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     */
    function processDirectDeposit(address creditor, address asset, uint256 id, uint256 amount)
        external
        returns (uint256);

    /**
     * @notice Increases the exposure to an asset on an indirect deposit.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param id The Id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return recursiveCalls The number of calls done to different asset modules to process the deposit/withdrawal of the asset.
     * @return usdExposureUpperAssetToAsset The Usd value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     */
    function processIndirectDeposit(
        address creditor,
        address asset,
        uint256 id,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) external returns (uint256, uint256);

    /**
     * @notice Decreases the exposure to an asset on a direct withdrawal.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param id The Id of the asset.
     * @param amount The amount of tokens.
     */
    function processDirectWithdrawal(address creditor, address asset, uint256 id, uint256 amount) external;

    /**
     * @notice Decreases the exposure to an asset on an indirect withdrawal.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param id The Id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return usdExposureUpperAssetToAsset The Usd value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     */
    function processIndirectWithdrawal(
        address creditor,
        address asset,
        uint256 id,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) external returns (uint256);
}

// ============================================================
// FILE: src/libraries/AssetValuationLib.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity 0.8.22;

// Struct with risk and valuation related information for a certain asset.
struct AssetValueAndRiskFactors {
    // The value of the asset.
    uint256 assetValue;
    // The collateral factor of the asset, for a given creditor.
    uint256 collateralFactor;
    // The liquidation factor of the asset, for a given creditor.
    uint256 liquidationFactor;
}

/**
 * @title Asset Valuation Library
 * @author Pragma Labs
 * @notice The Asset Valuation Library is responsible for calculating the risk weighted values of combinations of assets.
 */
library AssetValuationLib {
    /*///////////////////////////////////////////////////////////////
                        CONSTANTS
    ///////////////////////////////////////////////////////////////*/

    uint256 internal constant ONE_4 = 10_000;

    /*///////////////////////////////////////////////////////////////
                        RISK FACTORS
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Calculates the collateral value given a combination of asset values and corresponding collateral factors.
     * @param valuesAndRiskFactors Array of asset values and corresponding collateral factors.
     * @return collateralValue The collateral value of the given assets.
     */
    function _calculateCollateralValue(AssetValueAndRiskFactors[] memory valuesAndRiskFactors)
        internal
        pure
        returns (uint256 collateralValue)
    {
        for (uint256 i; i < valuesAndRiskFactors.length; ++i) {
            collateralValue += valuesAndRiskFactors[i].assetValue * valuesAndRiskFactors[i].collateralFactor;
        }
        collateralValue = collateralValue / ONE_4;
    }

    /**
     * @notice Calculates the liquidation value given a combination of asset values and corresponding liquidation factors.
     * @param valuesAndRiskFactors List of asset values and corresponding liquidation factors.
     * @return liquidationValue The liquidation value of the given assets.
     */
    function _calculateLiquidationValue(AssetValueAndRiskFactors[] memory valuesAndRiskFactors)
        internal
        pure
        returns (uint256 liquidationValue)
    {
        for (uint256 i; i < valuesAndRiskFactors.length; ++i) {
            liquidationValue += valuesAndRiskFactors[i].assetValue * valuesAndRiskFactors[i].liquidationFactor;
        }
        liquidationValue = liquidationValue / ONE_4;
    }
}
