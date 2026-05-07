// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/lib/solmate/src/auth/Owned.sol
// ============================================================

// SPDX-License-Identifier: MIT
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
// FILE: lib/lending-v2/lib/accounts-v2/lib/solmate/src/utils/FixedPointMathLib.sol
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
// FILE: lib/lending-v2/lib/accounts-v2/lib/solmate/src/utils/SafeCastLib.sol
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
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/abstracts/AbstractAM.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

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
     * @param owner_ The address of the Owner.
     * @param registry_ The contract address of the Registry.
     * @param assetType_ Identifier for the token standard of the asset.
     * 0 = Unknown asset.
     * 1 = ERC20.
     * 2 = ERC721.
     * 3 = ERC1155.
     */
    constructor(address owner_, address registry_, uint256 assetType_) Owned(owner_) {
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
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/abstracts/AbstractDerivedAM.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

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
    mapping(
        address creditor => mapping(bytes32 assetKey => mapping(bytes32 underlyingAssetKey => uint256 exposure))
    ) public lastExposureAssetToUnderlyingAsset;

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
     * @param owner_ The address of the Owner.
     * @param registry_ The contract address of the Registry.
     * @param assetType_ Identifier for the token standard of the asset.
     * 0 = Unknown asset.
     * 1 = ERC20.
     * 2 = ERC721.
     * 3 = ERC1155.
     * ...
     */
    constructor(address owner_, address registry_, uint256 assetType_) AssetModule(owner_, registry_, assetType_) { }

    /*///////////////////////////////////////////////////////////////
                        ASSET INFORMATION
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the unique identifiers of the underlying assets.
     * @param assetKey The unique identifier of the asset.
     * @return underlyingAssetKeys The unique identifiers of the underlying assets.
     */
    function _getUnderlyingAssets(bytes32 assetKey) internal view virtual returns (bytes32[] memory underlyingAssetKeys);

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
        // forge-lint: disable-next-line(unsafe-typecast)
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
        // forge-lint: disable-next-line(unsafe-typecast)
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
            // forge-lint: disable-next-line(unsafe-typecast)
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
        // unsafe cast: usdExposureProtocol is smaller than maxUsdExposureProtocol, which is a uint112.
        // forge-lint: disable-next-line(unsafe-typecast)
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
            usdExposureAsset += IRegistry(REGISTRY)
                .getUsdValueExposureToUnderlyingAssetAfterWithdrawal(
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
        // forge-lint: disable-next-line(unsafe-typecast)
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
        // forge-lint: disable-next-item(unsafe-typecast)
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
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/interfaces/IRegistry.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

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
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/Slipstream/interfaces/ICLFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface ICLFactory {
    function poolImplementation() external view returns (address);
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/Slipstream/interfaces/ICLPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface ICLPool {
    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            bool unlocked
        );

    function ticks(int24 tick)
        external
        view
        returns (
            uint128 liquidityGross,
            int128 liquidityNet,
            int128 stakedLiquidityNet,
            uint256 feeGrowthOutside0X128,
            uint256 feeGrowthOutside1X128,
            uint256 rewardGrowthOutsideX128,
            int56 tickCumulativeOutside,
            uint160 secondsPerLiquidityOutsideX128,
            uint32 secondsOutside,
            bool initialized
        );

    function feeGrowthGlobal0X128() external view returns (uint256 feeGrowthGlobal0X128_);

    function feeGrowthGlobal1X128() external view returns (uint256 feeGrowthGlobal1X128_);

    function token0() external returns (address);

    function token1() external returns (address);
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/Slipstream/interfaces/INonfungiblePositionManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

/// @title Non-fungible token for positions
/// @notice Wraps Slipstream positions in a non-fungible token interface which allows for them to be transferred
/// and authorized.
interface INonfungiblePositionManager {
    function approve(address to, uint256 tokenId) external;
    function positions(uint256 tokenId)
        external
        view
        returns (
            uint96 nonce,
            address operator,
            address token0,
            address token1,
            int24 tickSpacing,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    function factory() external returns (address factory_);

    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    function totalSupply() external view returns (uint256 totalSupply_);
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/Slipstream/libraries/PoolAddress.sol
// ============================================================

// https://github.com/velodrome-finance/slipstream/blob/main/contracts/periphery/libraries/PoolAddress.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.34;

import { ICLFactory } from "../interfaces/ICLFactory.sol";

/// @title Provides functions for deriving a pool address from the factory, tokens, and the tickSpacing
library PoolAddress {
    /// @notice The identifying key of the pool
    struct PoolKey {
        address token0;
        address token1;
        int24 tickSpacing;
    }

    /// @notice Deterministically computes the pool address given the factory and PoolKey
    /// @param factory The Slipstream factory contract address
    /// @param token0 Contract address of token0.
    /// @param token1 Contract address of token1.
    /// @param tickSpacing The tick spacing of the pool
    /// @return pool The contract address of the pool
    function computeAddress(address factory, address token0, address token1, int24 tickSpacing)
        internal
        view
        returns (address pool)
    {
        require(token0 < token1);
        pool = predictDeterministicAddress({
            master: ICLFactory(factory).poolImplementation(),
            salt: keccak256(abi.encode(token0, token1, tickSpacing)),
            deployer: factory
        });
    }

    /**
     * @dev Computes the address of a clone deployed using {Clones-cloneDeterministic}.
     */
    function predictDeterministicAddress(address master, bytes32 salt, address deployer)
        internal
        pure
        returns (address predicted)
    {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            let ptr := mload(0x40)
            mstore(ptr, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
            mstore(add(ptr, 0x14), shl(0x60, master))
            mstore(add(ptr, 0x28), 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000)
            mstore(add(ptr, 0x38), shl(0x60, deployer))
            mstore(add(ptr, 0x4c), salt)
            mstore(add(ptr, 0x6c), keccak256(ptr, 0x37))
            predicted := keccak256(add(ptr, 0x37), 0x55)
        }
    }
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/Slipstream/SlipstreamAM.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { AssetValuationLib, AssetValueAndRiskFactors } from "../../libraries/AssetValuationLib.sol";
import { DerivedAM, FixedPointMathLib, IRegistry } from "../abstracts/AbstractDerivedAM.sol";
import { FixedPoint96 } from "../UniswapV3/libraries/FixedPoint96.sol";
import { FixedPoint128 } from "../UniswapV3/libraries/FixedPoint128.sol";
import { FullMath } from "../UniswapV3/libraries/FullMath.sol";
import { INonfungiblePositionManager } from "./interfaces/INonfungiblePositionManager.sol";
import { ICLPool } from "./interfaces/ICLPool.sol";
import { LiquidityAmounts } from "../UniswapV3/libraries/LiquidityAmounts.sol";
import { PoolAddress } from "./libraries/PoolAddress.sol";
import { TickMath } from "../UniswapV3/libraries/TickMath.sol";

/**
 * @title Asset Module for Slipstream Liquidity Positions
 * @author Pragma Labs
 * @notice The pricing logic and basic information for Slipstream Liquidity Positions.
 * @dev The SlipstreamAM will not price the LP tokens via direct price oracles,
 * it will break down liquidity positions in the underlying tokens (ERC20s).
 * Only LP tokens for which the underlying tokens are allowed as collateral can be priced.
 * @dev No end-user should directly interact with the SlipstreamAM, only the Registry,
 * or the contract owner.
 */
contract SlipstreamAM is DerivedAM {
    using FixedPointMathLib for uint256;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The contract address of the NonfungiblePositionManager.
    INonfungiblePositionManager internal immutable NON_FUNGIBLE_POSITION_MANAGER;

    // The contract address of the Slipstream (or exact clone) Factory.
    address internal immutable CL_FACTORY;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // The liquidity of the Liquidity Position when it was deposited.
    mapping(uint256 assetId => uint256 liquidity) internal assetToLiquidity;

    // The unique identifiers of the Underlying Assets of a Liquidity Position.
    mapping(bytes32 assetKey => bytes32[] underlyingAssetKeys) public assetToUnderlyingAssets;

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error InvalidId();
    error ZeroLiquidity();
    error InvalidAmount();

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     * @param registry_ The contract address of the Registry.
     * @param nonFungiblePositionManager The contract address of the protocols NonFungiblePositionManager.
     * @dev The ASSET_TYPE, necessary for the deposit and withdraw logic in the Accounts, is "2" for Slipstream Liquidity Positions (ERC721).
     */
    constructor(address owner_, address registry_, address nonFungiblePositionManager) DerivedAM(owner_, registry_, 2) {
        NON_FUNGIBLE_POSITION_MANAGER = INonfungiblePositionManager(nonFungiblePositionManager);
        CL_FACTORY = INonfungiblePositionManager(nonFungiblePositionManager).factory();
    }

    /*///////////////////////////////////////////////////////////////
                        ASSET MANAGEMENT
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds the mapping from the NonfungiblePositionManager to this Asset Module in this Registry.
     * @dev Since all assets will have the same contract address, only the NonfungiblePositionManager has to be added to the Registry.
     */
    function setProtocol() external onlyOwner {
        inAssetModule[address(NON_FUNGIBLE_POSITION_MANAGER)] = true;

        // Will revert in Registry if asset was already added.
        // forge-lint: disable-next-line(unsafe-typecast)
        IRegistry(REGISTRY).addAsset(uint96(ASSET_TYPE), address(NON_FUNGIBLE_POSITION_MANAGER));
    }

    /**
     * @notice Adds a new asset (Liquidity Position) to the SlipstreamAM.
     * @param assetId The id of the asset.
     * @dev All assets (Liquidity Positions) will have the same contract address (the NonfungiblePositionManager),
     * but a different id.
     */
    function _addAsset(uint256 assetId) internal {
        if (assetId > type(uint96).max) revert InvalidId();

        (,, address token0, address token1,,,, uint128 liquidity,,,,) = NON_FUNGIBLE_POSITION_MANAGER.positions(assetId);

        // No need to explicitly check if token0 and token1 are allowed, _addAsset() is only called in the
        // deposit functions and there any deposit of non-allowed Underlying Assets will revert.
        if (liquidity == 0) revert ZeroLiquidity();

        // The liquidity of the Liquidity Position is stored in the Asset Module,
        // not fetched from the NonfungiblePositionManager.
        // Since liquidity of a position can be increased by a non-owner,
        // the max exposure checks could otherwise be circumvented.
        assetToLiquidity[assetId] = liquidity;

        bytes32 assetKey = _getKeyFromAsset(address(NON_FUNGIBLE_POSITION_MANAGER), assetId);
        bytes32[] memory underlyingAssetKeys = new bytes32[](2);
        underlyingAssetKeys[0] = _getKeyFromAsset(token0, 0);
        underlyingAssetKeys[1] = _getKeyFromAsset(token1, 0);
        assetToUnderlyingAssets[assetKey] = underlyingAssetKeys;
    }

    /*///////////////////////////////////////////////////////////////
                        ASSET INFORMATION
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Checks for a token address and the corresponding id if it is allowed.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @return A boolean, indicating if the asset is allowed.
     */
    function isAllowed(address asset, uint256 assetId) public view override returns (bool) {
        if (asset != address(NON_FUNGIBLE_POSITION_MANAGER)) return false;

        try NON_FUNGIBLE_POSITION_MANAGER.positions(assetId) returns (
            uint96,
            address,
            address token0,
            address token1,
            int24,
            int24,
            int24,
            uint128 liquidity,
            uint256,
            uint256,
            uint128,
            uint128
        ) {
            return IRegistry(REGISTRY).isAllowed(token0, 0) && IRegistry(REGISTRY).isAllowed(token1, 0) && liquidity > 0;
        } catch {
            return false;
        }
    }

    /**
     * @notice Returns the unique identifiers of the Underlying Assets.
     * @param assetKey The unique identifier of the asset.
     * @return underlyingAssetKeys The unique identifiers of the Underlying Assets.
     */
    function _getUnderlyingAssets(bytes32 assetKey)
        internal
        view
        override
        returns (bytes32[] memory underlyingAssetKeys)
    {
        underlyingAssetKeys = assetToUnderlyingAssets[assetKey];

        if (underlyingAssetKeys.length == 0) {
            // Only used as an off-chain view function by getValue() to return the value of a non deposited Liquidity Position.
            (, uint256 assetId) = _getAssetFromKey(assetKey);
            (,, address token0, address token1,,,,,,,,) = NON_FUNGIBLE_POSITION_MANAGER.positions(assetId);

            underlyingAssetKeys = new bytes32[](2);
            underlyingAssetKeys[0] = _getKeyFromAsset(token0, 0);
            underlyingAssetKeys[1] = _getKeyFromAsset(token1, 0);
        }
    }

    /**
     * @notice Calculates for a given asset the corresponding amount(s) of Underlying Asset(s).
     * @param creditor The contract address of the creditor.
     * @param assetKey The unique identifier of the asset.
     * param assetAmount The amount of the asset, in the decimal precision of the Asset.
     * param underlyingAssetKeys The unique identifiers of the Underlying Assets.
     * @return underlyingAssetsAmounts The corresponding amount(s) of Underlying Asset(s), in the decimal precision of the Underlying Asset.
     * @return rateUnderlyingAssetsToUsd The usd rates of 1e18 tokens of Underlying Asset, with 18 decimals precision.
     * @dev External price feeds of the Underlying Assets are used to calculate the flashloan resistant amounts.
     * This approach accommodates scenarios where an underlying asset could be
     * a derived asset itself (e.g., USDC/aUSDC pool), ensuring more versatile and accurate price calculations.
     */
    function _getUnderlyingAssetsAmounts(address creditor, bytes32 assetKey, uint256 amount, bytes32[] memory)
        internal
        view
        override
        returns (uint256[] memory underlyingAssetsAmounts, AssetValueAndRiskFactors[] memory rateUnderlyingAssetsToUsd)
    {
        // Amount of a Slipstream LP can only be either 0 or 1.
        if (amount == 0) {
            return (new uint256[](2), rateUnderlyingAssetsToUsd);
        }

        (, uint256 assetId) = _getAssetFromKey(assetKey);

        (address token0, address token1, int24 tickLower, int24 tickUpper, uint128 liquidity) = _getPosition(assetId);

        // Get the trusted rates to USD of the Underlying Assets.
        bytes32[] memory underlyingAssetKeys = new bytes32[](2);
        underlyingAssetKeys[0] = _getKeyFromAsset(token0, 0);
        underlyingAssetKeys[1] = _getKeyFromAsset(token1, 0);
        rateUnderlyingAssetsToUsd = _getRateUnderlyingAssetsToUsd(creditor, underlyingAssetKeys);

        // Calculate amount0 and amount1 of the principal (the actual liquidity position).
        (uint256 principal0, uint256 principal1) = _getPrincipalAmounts(
            tickLower,
            tickUpper,
            liquidity,
            rateUnderlyingAssetsToUsd[0].assetValue,
            rateUnderlyingAssetsToUsd[1].assetValue
        );

        // Calculate amount0 and amount1 of the accumulated fees.
        (uint256 fee0, uint256 fee1) = _getFeeAmounts(assetId);

        // As the sole liquidity provider in a new pool,
        // a malicious actor could bypass the max exposure by
        // continuously swapping large amounts and increasing the fee portion
        // of the liquidity position.
        fee0 = fee0 > principal0 ? principal0 : fee0;
        fee1 = fee1 > principal1 ? principal1 : fee1;

        underlyingAssetsAmounts = new uint256[](2);
        unchecked {
            underlyingAssetsAmounts[0] = principal0 + fee0;
            underlyingAssetsAmounts[1] = principal1 + fee1;
        }
    }

    /**
     * @notice Returns the position information.
     * @param assetId The id of the asset.
     * @return token0 Token0 of the Liquidity Pool.
     * @return token1 Token1 of the Liquidity Pool.
     * @return tickLower The lower tick of the liquidity position.
     * @return tickUpper The upper tick of the liquidity position.
     * @return liquidity The liquidity per tick of the liquidity position.
     */
    function _getPosition(uint256 assetId)
        internal
        view
        returns (address token0, address token1, int24 tickLower, int24 tickUpper, uint128 liquidity)
    {
        // For deposited assets, the liquidity of the Liquidity Position is stored in the Asset Module,
        // not fetched from the NonfungiblePositionManager.
        // Since liquidity of a position can be increased by a non-owner, the max exposure checks could otherwise be circumvented.
        liquidity = uint128(assetToLiquidity[assetId]);

        if (liquidity > 0) {
            (,, token0, token1,, tickLower, tickUpper,,,,,) = NON_FUNGIBLE_POSITION_MANAGER.positions(assetId);
        } else {
            // Only used as an off-chain view function by getValue() to return the value of a non deposited Liquidity Position.
            (,, token0, token1,, tickLower, tickUpper, liquidity,,,,) = NON_FUNGIBLE_POSITION_MANAGER.positions(assetId);
        }
    }

    /**
     * @notice Calculates the underlying token amounts of a liquidity position, given external trusted prices.
     * @param tickLower The lower tick of the liquidity position.
     * @param tickUpper The upper tick of the liquidity position.
     * @param priceToken0 The price of 1e18 tokens of token0 in USD, with 18 decimals precision.
     * @param priceToken1 The price of 1e18 tokens of token1 in USD, with 18 decimals precision.
     * @return amount0 The amount of underlying token0 tokens.
     * @return amount1 The amount of underlying token1 tokens.
     */
    function _getPrincipalAmounts(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint256 priceToken0,
        uint256 priceToken1
    ) internal pure returns (uint256 amount0, uint256 amount1) {
        // Calculate the square root of the relative rate sqrt(token1/token0) from the trusted USD price of both tokens.
        // sqrtPriceX96 is a binary fixed point number with 96 digits precision.
        uint160 sqrtPriceX96 = _getSqrtPriceX96(priceToken0, priceToken1);

        // Calculate amount0 and amount1 of the principal (the liquidity position without accumulated fees).
        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96, TickMath.getSqrtRatioAtTick(tickLower), TickMath.getSqrtRatioAtTick(tickUpper), liquidity
        );
    }

    /**
     * @notice Calculates the sqrtPriceX96 (token1/token0) from trusted USD prices of both tokens.
     * @param priceToken0 The price of 1e18 tokens of token0 in USD, with 18 decimals precision.
     * @param priceToken1 The price of 1e18 tokens of token1 in USD, with 18 decimals precision.
     * @return sqrtPriceX96 The square root of the price (token1/token0), with 96 binary precision.
     * @dev The price in Slipstream is defined as:
     * price = amountToken1/amountToken0.
     * The usdPriceToken is defined as: usdPriceToken = amountUsd/amountToken.
     * => amountToken = amountUsd/usdPriceToken.
     * Hence we can derive the Slipstream price as:
     * price = (amountUsd/usdPriceToken1)/(amountUsd/usdPriceToken0) = usdPriceToken0/usdPriceToken1.
     */
    function _getSqrtPriceX96(uint256 priceToken0, uint256 priceToken1) internal pure returns (uint160 sqrtPriceX96) {
        if (priceToken1 == 0) return TickMath.MAX_SQRT_RATIO;

        // Both priceTokens have 18 decimals precision and result of division should have 28 decimals precision.
        // -> multiply by 1e28
        // priceXd28 will overflow if priceToken0 is greater than 1.158e+49.
        // For WBTC (which only has 8 decimals) this would require a bitcoin price greater than 115 792 089 237 316 198 989 824 USD/BTC.
        uint256 priceXd28 = priceToken0.mulDivDown(1e28, priceToken1);
        // Square root of a number with 28 decimals precision has 14 decimals precision.
        uint256 sqrtPriceXd14 = FixedPointMathLib.sqrt(priceXd28);

        // Change sqrtPrice from a decimal fixed point number with 14 digits to a binary fixed point number with 96 digits.
        // Unsafe cast: Cast will only overflow when priceToken0/priceToken1 >= 2^128.
        sqrtPriceX96 = uint160((sqrtPriceXd14 << FixedPoint96.RESOLUTION) / 1e14);
    }

    /**
     * @notice Calculates the underlying token amounts of accrued fees, both collected and uncollected.
     * @param id The id of the Liquidity Position.
     * @return amount0 The amount of fees in underlying token0 tokens.
     * @return amount1 The amount of fees in underlying token1 tokens.
     */
    function _getFeeAmounts(uint256 id) internal view returns (uint256 amount0, uint256 amount1) {
        (
            ,,
            address token0,
            address token1,
            int24 tickSpacing,
            int24 tickLower,
            int24 tickUpper,
            uint256 liquidity, // gas: cheaper to use uint256 instead of uint128.
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint256 tokensOwed0, // gas: cheaper to use uint256 instead of uint128.
            uint256 tokensOwed1 // gas: cheaper to use uint256 instead of uint128.
        ) = NON_FUNGIBLE_POSITION_MANAGER.positions(id);

        (uint256 feeGrowthInside0CurrentX128, uint256 feeGrowthInside1CurrentX128) =
            _getFeeGrowthInside(token0, token1, tickSpacing, tickLower, tickUpper);

        // Calculate the total amount of fees by adding the already realized fees (tokensOwed),
        // to the accumulated fees since the last time the position was updated:
        // (feeGrowthInsideCurrentX128 - feeGrowthInsideLastX128) * liquidity.
        // Fee calculations in NonfungiblePositionManager.sol overflow (without reverting) when
        // one or both terms, or their sum, is bigger than a uint128.
        // This is however much bigger than any realistic situation.
        unchecked {
            amount0 = FullMath.mulDiv(
                feeGrowthInside0CurrentX128 - feeGrowthInside0LastX128, liquidity, FixedPoint128.Q128
            ) + tokensOwed0;
            amount1 = FullMath.mulDiv(
                feeGrowthInside1CurrentX128 - feeGrowthInside1LastX128, liquidity, FixedPoint128.Q128
            ) + tokensOwed1;
        }
    }

    /**
     * @notice Calculates the current fee growth inside the Liquidity Range.
     * @param token0 Token0 of the Liquidity Pool.
     * @param token1 Token1 of the Liquidity Pool.
     * @param tickSpacing The tickSpacing of the Liquidity Pool.
     * @param tickLower The lower tick of the liquidity position.
     * @param tickUpper The upper tick of the liquidity position.
     * @return feeGrowthInside0X128 The amount of fees in underlying token0 tokens.
     * @return feeGrowthInside1X128 The amount of fees in underlying token1 tokens.
     */
    function _getFeeGrowthInside(address token0, address token1, int24 tickSpacing, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128)
    {
        ICLPool pool = ICLPool(PoolAddress.computeAddress(CL_FACTORY, token0, token1, tickSpacing));

        // To calculate the pending fees, the current tick has to be used, even if the pool would be unbalanced.
        (, int24 tickCurrent,,,,) = pool.slot0();
        (,,, uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128,,,,,) = pool.ticks(tickLower);
        (,,, uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128,,,,,) = pool.ticks(tickUpper);

        // Calculate the fee growth inside of the Liquidity Range since the last time the position was updated.
        // feeGrowthInside can overflow (without reverting), as is the case in the Slipstream fee calculations.
        unchecked {
            if (tickCurrent < tickLower) {
                feeGrowthInside0X128 = lowerFeeGrowthOutside0X128 - upperFeeGrowthOutside0X128;
                feeGrowthInside1X128 = lowerFeeGrowthOutside1X128 - upperFeeGrowthOutside1X128;
            } else if (tickCurrent < tickUpper) {
                feeGrowthInside0X128 =
                    pool.feeGrowthGlobal0X128() - lowerFeeGrowthOutside0X128 - upperFeeGrowthOutside0X128;
                feeGrowthInside1X128 =
                    pool.feeGrowthGlobal1X128() - lowerFeeGrowthOutside1X128 - upperFeeGrowthOutside1X128;
            } else {
                feeGrowthInside0X128 = upperFeeGrowthOutside0X128 - lowerFeeGrowthOutside0X128;
                feeGrowthInside1X128 = upperFeeGrowthOutside1X128 - lowerFeeGrowthOutside1X128;
            }
        }
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
        uint256[] memory assetIds = new uint256[](2);

        (assets[0], assetIds[0]) = _getAssetFromKey(underlyingAssetKeys[0]);
        (assets[1], assetIds[1]) = _getAssetFromKey(underlyingAssetKeys[1]);

        (uint16[] memory collateralFactors, uint16[] memory liquidationFactors) =
            IRegistry(REGISTRY).getRiskFactors(creditor, assets, assetIds);

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
     * @dev super.processDirectDeposit checks that msg.sender is the Registry.
     */
    function processDirectDeposit(address creditor, address asset, uint256 assetId, uint256 amount)
        public
        override
        returns (uint256 recursiveCalls)
    {
        // Amount deposited of a Slipstream LP can be either 0 or 1 (checked in the Account).
        // For Slipstream every id is a unique asset -> on every deposit the asset must added to the Asset Module.
        if (amount == 1) _addAsset(assetId);

        // Also checks that msg.sender == Registry.
        recursiveCalls = super.processDirectDeposit(creditor, asset, assetId, amount);
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
     * @dev super.processIndirectDeposit checks that msg.sender is the Registry.
     * @dev deltaExposureUpperAssetToAsset of a Slipstream LP must be either 0 or 1 for processIndirectDeposit().
     */
    function processIndirectDeposit(
        address creditor,
        address asset,
        uint256 assetId,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) public override returns (uint256 recursiveCalls, uint256 usdExposureUpperAssetToAsset) {
        // deltaExposureUpperAssetToAsset of a Slipstream LP can be either 0 or 1.
        // For Slipstream every id is a unique asset -> on a deposit, the asset must added to the Asset Module.
        if (deltaExposureUpperAssetToAsset == 1) _addAsset(assetId);
        else if (deltaExposureUpperAssetToAsset != 0) revert InvalidAmount();

        // Also checks that msg.sender == Registry.
        (recursiveCalls, usdExposureUpperAssetToAsset) = super.processIndirectDeposit(
            creditor, asset, assetId, exposureUpperAssetToAsset, deltaExposureUpperAssetToAsset
        );
    }

    /**
     * @notice Decreases the exposure to an asset on a direct withdrawal.
     * @param creditor The contract address of the Creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param amount The amount of tokens.
     * @dev super.processDirectWithdrawal checks that msg.sender is the Registry.
     * @dev If the asset is withdrawn, remove its liquidity from the mapping.
     * If we would keep the liquidity of the asset in storage,
     * _getUnderlyingAssets() would keep using the liquidity of the asset at the time of deposit.
     * This might result in a wrongly calculated getValue() of the non-deposited asset (for off-chain purposes).
     */
    function processDirectWithdrawal(address creditor, address asset, uint256 assetId, uint256 amount) public override {
        // Also checks that msg.sender == Registry.
        super.processDirectWithdrawal(creditor, asset, assetId, amount);

        // Amount withdrawn of a Slipstream LP can be either 0 or 1 (checked in the Account).
        if (amount == 1) delete assetToLiquidity[assetId];
    }

    /**
     * @notice Decreases the exposure to an asset on an indirect withdrawal.
     * @param creditor The contract address of the creditor.
     * @param asset The contract address of the asset.
     * @param assetId The id of the asset.
     * @param exposureUpperAssetToAsset The amount of exposure of the upper asset to the asset of this Asset Module.
     * @param deltaExposureUpperAssetToAsset The increase or decrease in exposure of the upper asset to the asset of this Asset Module since last interaction.
     * @return usdExposureUpperAssetToAsset The USD value of the exposure of the upper asset to the asset of this Asset Module, 18 decimals precision.
     * @dev super.processIndirectWithdrawal checks that msg.sender is the Registry.
     * @dev If the asset is withdrawn, remove its liquidity from the mapping.
     * If we would keep the liquidity of the asset in storage,
     * _getUnderlyingAssets() would keep using the liquidity of the asset at the time of deposit.
     * This might result in a wrongly calculated getValue() of the non-deposited asset (for off-chain purposes).
     * @dev deltaExposureUpperAssetToAsset of a Slipstream LP must be either 0 or -1 for processIndirectWithdrawal().
     * But we do NOT revert if the value is different from 0 or -1, since this would block withdrawals and hence liquidations,
     * which is worse as having wrongly calculated exposures.
     */
    function processIndirectWithdrawal(
        address creditor,
        address asset,
        uint256 assetId,
        uint256 exposureUpperAssetToAsset,
        int256 deltaExposureUpperAssetToAsset
    ) public override returns (uint256 usdExposureUpperAssetToAsset) {
        // Also checks that msg.sender == Registry.
        usdExposureUpperAssetToAsset = super.processIndirectWithdrawal(
            creditor, asset, assetId, exposureUpperAssetToAsset, deltaExposureUpperAssetToAsset
        );

        // deltaExposureUpperAssetToAsset of a Slipstream LP can be either 0 or -1.
        if (deltaExposureUpperAssetToAsset == -1) delete assetToLiquidity[assetId];
    }
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/UniswapV3/libraries/FixedPoint128.sol
// ============================================================

// https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/FixedPoint128.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.34;

/// @title FixedPoint128
/// @notice A library for handling binary fixed point numbers, see https://en.wikipedia.org/wiki/Q_(number_format)
library FixedPoint128 {
    uint256 internal constant Q128 = 0x100000000000000000000000000000000;
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/UniswapV3/libraries/FixedPoint96.sol
// ============================================================

// https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/FixedPoint96.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.34;

/// @title FixedPoint96
/// @notice A library for handling binary fixed point numbers, see https://en.wikipedia.org/wiki/Q_(number_format)
/// @dev Used in SqrtPriceMath.sol
library FixedPoint96 {
    uint8 internal constant RESOLUTION = 96;
    uint256 internal constant Q96 = 0x1000000000000000000000000;
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/UniswapV3/libraries/FullMath.sol
// ============================================================

// https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/FullMath.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.34;

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
            // correct result modulo 2**256. Since the preconditions guarantee
            // that the outcome is less than 2**256, this is the final result.
            // We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inv;
        }
        return result;
    }

    /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    function mulDivRoundingUp(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
            require(result < type(uint256).max);
            result++;
        }
    }
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/UniswapV3/libraries/LiquidityAmounts.sol
// ============================================================

// https://github.com/Uniswap/v3-periphery/blob/main/contracts/libraries/LiquidityAmounts.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.34;

import { FullMath } from "./FullMath.sol";
import { FixedPoint96 } from "./FixedPoint96.sol";

/// @title Liquidity amount functions
/// @notice Provides functions for computing liquidity amounts from token amounts and prices
// forge-lint: disable-next-item(mixed-case-variable)
library LiquidityAmounts {
    /// @notice Computes the amount of token0 for a given amount of liquidity and a price range
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    function getAmount0ForLiquidity(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint128 liquidity)
        internal
        pure
        returns (uint256 amount0)
    {
        unchecked {
            if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

            return FullMath.mulDiv(
                uint256(liquidity) << FixedPoint96.RESOLUTION, sqrtRatioBX96 - sqrtRatioAX96, sqrtRatioBX96
            ) / sqrtRatioAX96;
        }
    }

    /// @notice Computes the amount of token1 for a given amount of liquidity and a price range
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount1 The amount of token1
    function getAmount1ForLiquidity(uint160 sqrtRatioAX96, uint160 sqrtRatioBX96, uint128 liquidity)
        internal
        pure
        returns (uint256 amount1)
    {
        unchecked {
            if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

            return FullMath.mulDiv(liquidity, sqrtRatioBX96 - sqrtRatioAX96, FixedPoint96.Q96);
        }
    }

    /// @notice Computes the token0 and token1 value for a given amount of liquidity, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtRatioX96 A sqrt price representing the current pool prices
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount0, uint256 amount1) {
        if (sqrtRatioAX96 > sqrtRatioBX96) {
            (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        }

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            amount0 = getAmount0ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            amount0 = getAmount0ForLiquidity(sqrtRatioX96, sqrtRatioBX96, liquidity);
            amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioX96, liquidity);
        } else {
            amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
        }
    }
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/asset-modules/UniswapV3/libraries/TickMath.sol
// ============================================================

//https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/TickMath.sol
// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.34;

// forge-lint: disable-next-item(mixed-case-variable,unsafe-typecast)
library TickMath {
    /// @dev The minimum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**-128
    int24 internal constant MIN_TICK = -887_272;
    /// @dev The maximum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**128
    int24 internal constant MAX_TICK = -MIN_TICK;

    /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_RATIO = 4_295_128_739;
    /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_RATIO = 1_461_446_703_485_210_103_287_273_052_203_988_822_378_723_970_342;

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the above formula
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the ratio of the two assets (token1/token0)
    /// at the given tick
    function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        unchecked {
            uint256 absTick = tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick));
            require(absTick <= uint256(uint24(MAX_TICK)), "T");

            uint256 ratio =
                absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000;
            if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
            if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
            if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
            if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
            if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
            if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
            if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
            if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
            if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
            if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
            if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
            if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
            if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
            if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
            if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
            if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
            if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
            if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
            if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;

            if (tick > 0) ratio = type(uint256).max / ratio;

            // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
            // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
            // we round up in the division so getTickAtSqrtRatio of the output price is always consistent
            sqrtPriceX96 = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1));
        }
    }

    /// @notice Calculates the greatest tick value such that getRatioAtTick(tick) <= ratio
    /// @dev Throws in case sqrtPriceX96 < MIN_SQRT_RATIO, as MIN_SQRT_RATIO is the lowest value getRatioAtTick may
    /// ever return.
    /// @param sqrtPriceX96 The sqrt ratio for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the ratio is less than or equal to the input ratio
    function getTickAtSqrtRatio(uint160 sqrtPriceX96) internal pure returns (int24 tick) {
        unchecked {
            // second inequality must be < because the price can never reach the price at the max tick
            require(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO, "R");
            uint256 ratio = uint256(sqrtPriceX96) << 32;

            uint256 r = ratio;
            uint256 msb = 0;

            assembly {
                let f := shl(7, gt(r, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := shl(6, gt(r, 0xFFFFFFFFFFFFFFFF))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := shl(5, gt(r, 0xFFFFFFFF))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := shl(4, gt(r, 0xFFFF))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := shl(3, gt(r, 0xFF))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := shl(2, gt(r, 0xF))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := shl(1, gt(r, 0x3))
                msb := or(msb, f)
                r := shr(f, r)
            }
            assembly {
                let f := gt(r, 0x1)
                msb := or(msb, f)
            }

            if (msb >= 128) r = ratio >> (msb - 127);
            else r = ratio << (127 - msb);

            int256 log_2 = (int256(msb) - 128) << 64;

            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(63, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(62, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(61, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(60, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(59, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(58, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(57, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(56, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(55, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(54, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(53, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(52, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(51, f))
                r := shr(f, r)
            }
            assembly {
                r := shr(127, mul(r, r))
                let f := shr(128, r)
                log_2 := or(log_2, shl(50, f))
            }

            int256 log_sqrt10001 = log_2 * 255_738_958_999_603_826_347_141; // 128.128 number

            int24 tickLow = int24((log_sqrt10001 - 3_402_992_956_809_132_418_596_140_100_660_247_210) >> 128);
            int24 tickHi = int24((log_sqrt10001 + 291_339_464_771_989_622_907_027_621_153_398_088_495) >> 128);

            tick = tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow;
        }
    }
}

// ============================================================
// FILE: lib/lending-v2/lib/accounts-v2/src/interfaces/IAssetModule.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: MIT
 */
pragma solidity ^0.8.0;

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
// FILE: lib/lending-v2/lib/accounts-v2/src/libraries/AssetValuationLib.sol
// ============================================================

/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

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
