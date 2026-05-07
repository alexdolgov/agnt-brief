// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/Proxy.sol)

pragma solidity ^0.8.20;

/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback
     * function and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
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

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
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

// ============================================================
// FILE: src/fira_bonding/libraries/math/PMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.8.0;

/* solhint-disable private-vars-leading-underscore, reason-string */

/// @title PMath
/// @notice Fixed-point math library for 18-decimal precision arithmetic
/// @dev Provides multiplication, division, and utility functions for 1e18-scaled fixed-point numbers.
///      Includes safe casting functions between signed and unsigned types of various sizes.
library PMath {
    uint256 internal constant ONE = 1e18; // 18 decimal places
    int256 internal constant IONE = 1e18; // 18 decimal places

    function subMax0(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            return (a >= b ? a - b : 0);
        }
    }

    function subNoNeg(int256 a, int256 b) internal pure returns (int256) {
        require(a >= b, "negative");
        return a - b; // no unchecked since if b is very negative, a - b might overflow
    }

    function mulDown(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 product = a * b;
        unchecked {
            return product / ONE;
        }
    }

    function mulDown(int256 a, int256 b) internal pure returns (int256) {
        int256 product = a * b;
        unchecked {
            return product / IONE;
        }
    }

    function divDown(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 aInflated = a * ONE;
        unchecked {
            return aInflated / b;
        }
    }

    function divDown(int256 a, int256 b) internal pure returns (int256) {
        int256 aInflated = a * IONE;
        unchecked {
            return aInflated / b;
        }
    }

    function rawDivUp(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a + b - 1) / b;
    }

    function rawDivUp(int256 a, int256 b) internal pure returns (int256) {
        return (a + b - 1) / b;
    }

    function tweakUp(uint256 a, uint256 factor) internal pure returns (uint256) {
        return mulDown(a, ONE + factor);
    }

    function tweakDown(uint256 a, uint256 factor) internal pure returns (uint256) {
        return mulDown(a, ONE - factor);
    }

    /// @return res = min(a + b, bound)
    /// @dev This function should handle arithmetic operation and bound check without
    /// overflow/underflow
    function addWithUpperBound(uint256 a, uint256 b, uint256 bound) internal pure returns (uint256 res) {
        unchecked {
            if (type(uint256).max - b < a) res = bound;
            else res = min(bound, a + b);
        }
    }

    /// @return res = max(a - b, bound)
    /// @dev This function should handle arithmetic operation and bound check without
    /// overflow/underflow
    function subWithLowerBound(uint256 a, uint256 b, uint256 bound) internal pure returns (uint256 res) {
        unchecked {
            if (b > a) res = bound;
            else res = max(a - b, bound);
        }
    }

    function clamp(uint256 x, uint256 lower, uint256 upper) internal pure returns (uint256 res) {
        res = x;
        if (x < lower) res = lower;
        else if (x > upper) res = upper;
    }

    // @author Uniswap
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    function square(uint256 x) internal pure returns (uint256) {
        return x * x;
    }

    function squareDown(uint256 x) internal pure returns (uint256) {
        return mulDown(x, x);
    }

    function abs(int256 x) internal pure returns (uint256) {
        return uint256(x > 0 ? x : -x);
    }

    function neg(int256 x) internal pure returns (int256) {
        return x * (-1);
    }

    function neg(uint256 x) internal pure returns (int256) {
        return Int(x) * (-1);
    }

    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x > y ? x : y);
    }

    function max(int256 x, int256 y) internal pure returns (int256) {
        return (x > y ? x : y);
    }

    function min(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x < y ? x : y);
    }

    function min(int256 x, int256 y) internal pure returns (int256) {
        return (x < y ? x : y);
    }

    /* ///////////////////////////////////////////////////////////////
                               SIGNED CASTS
    //////////////////////////////////////////////////////////////*/

    function Int(uint256 x) internal pure returns (int256) {
        require(x <= uint256(type(int256).max));
        return int256(x);
    }

    function Int128(int256 x) internal pure returns (int128) {
        require(type(int128).min <= x && x <= type(int128).max);
        return int128(x);
    }

    function Int128(uint256 x) internal pure returns (int128) {
        return Int128(Int(x));
    }

    /* ///////////////////////////////////////////////////////////////
                               UNSIGNED CASTS
    //////////////////////////////////////////////////////////////*/

    function Uint(int256 x) internal pure returns (uint256) {
        require(x >= 0);
        return uint256(x);
    }

    function Uint32(uint256 x) internal pure returns (uint32) {
        require(x <= type(uint32).max);
        return uint32(x);
    }

    function Uint64(uint256 x) internal pure returns (uint64) {
        require(x <= type(uint64).max);
        return uint64(x);
    }

    function Uint112(uint256 x) internal pure returns (uint112) {
        require(x <= type(uint112).max);
        return uint112(x);
    }

    function Uint96(uint256 x) internal pure returns (uint96) {
        require(x <= type(uint96).max);
        return uint96(x);
    }

    function Uint128(uint256 x) internal pure returns (uint128) {
        require(x <= type(uint128).max);
        return uint128(x);
    }

    function Uint192(uint256 x) internal pure returns (uint192) {
        require(x <= type(uint192).max);
        return uint192(x);
    }

    function isAApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return mulDown(b, ONE - eps) <= a && a <= mulDown(b, ONE + eps);
    }

    function isAGreaterApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return a >= b && a <= mulDown(b, ONE + eps);
    }

    function isASmallerApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return a <= b && a >= mulDown(b, ONE - eps);
    }
}

// ============================================================
// FILE: src/fira_bonding/router/FiraRouterV4.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionStorageV4.sol";
import "./RouterStorage.sol";
import "@openzeppelin/contracts/proxy/Proxy.sol";

/// @title FiraRouterV4
/// @notice Main entry point for all Fira protocol user interactions using a diamond-like proxy pattern
/// @dev Implements a facet-based routing system where function selectors map to implementation contracts.
///      All user-facing operations (swaps, liquidity, borrowing) are routed through this contract.
///      The router delegates calls to specialized action facets based on the function selector:
///      - ActionSwapBTV3: Bond Token swap operations
///      - ActionSwapCTV3: Coupon Token swap operations
///      - ActionAddRemoveLiqV3: Liquidity provision and removal
///      - ActionMiscV3: Miscellaneous operations (minting, redeeming, exits)
///      - ActionBorrow: Lending market integration for borrowing
///      - ActionSimple: Simplified versions using on-chain approximation
///      - ActionCallbackV3: Callback handlers for flash-style operations
contract FiraRouterV4 is Proxy, RouterStorage {
    /// @notice Initializes the router with an owner and the storage facet
    /// @param _owner Address that will own and control the router
    /// @param actionStorage Address of the ActionStorageV4 facet for selector management
    constructor(address _owner, address actionStorage) {
        RouterStorage.CoreStorage storage $ = _getCoreStorage();
        $.owner = _owner;
        $.selectorToFacet[IPActionStorageV4.setSelectorToFacets.selector] = actionStorage;
        $.selectorToFacet[IPActionStorageV4.selectorToFacet.selector] = actionStorage;
    }

    /// @notice Returns the facet address that implements the current function call
    /// @dev Looks up the implementation based on msg.sig (the function selector)
    /// @return The address of the facet contract to delegatecall
    function _implementation() internal view override returns (address) {
        RouterStorage.CoreStorage storage $ = _getCoreStorage();
        address facet = $.selectorToFacet[msg.sig];
        require(facet != address(0), "INVALID_SELECTOR");
        return facet;
    }

    /// @notice Allows the router to receive native ETH for operations involving WETH wrapping
    receive() external payable {}
}

// ============================================================
// FILE: src/fira_bonding/router/RouterStorage.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title RouterStorage
/// @notice Abstract contract providing namespaced storage for the Fira Router
/// @dev Uses ERC-7201 namespaced storage pattern to avoid storage collisions in the
///      diamond-like proxy architecture. All router state is stored at a deterministic
///      slot derived from "fira.routerv4.Core".
///
///      This pattern allows facets to share storage safely and enables upgrades
///      without storage layout conflicts.
abstract contract RouterStorage {
    /// @notice Core storage struct containing router state
    /// @param owner Current owner address with admin privileges
    /// @param pendingOwner Address that can claim ownership (for two-step transfer)
    /// @param selectorToFacet Mapping of function selectors to their implementation facets
    struct CoreStorage {
        address owner;
        address pendingOwner;
        mapping(bytes4 => address) selectorToFacet;
    }

    // keccak256(abi.encode(uint256(keccak256("fira.routerv4.Core")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant CORE_STORAGE_LOCATION = 0x76869e0e64e8c296a2019055b290aee738d2502c92798a50d3ffc89d61abe800;

    /// @notice Returns the CoreStorage struct at the designated storage slot
    /// @return $ Storage pointer to the CoreStorage struct
    function _getCoreStorage() internal pure returns (CoreStorage storage $) {
        assembly {
            $.slot := CORE_STORAGE_LOCATION
        }
    }
}

// ============================================================
// FILE: src/fira_bonding/router/swap-aggregator/IPSwapAggregator.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

struct SwapData {
    SwapType swapType;
    address extRouter;
    bytes extCalldata;
    bool needScale;
}

struct SwapDataExtra {
    address tokenIn;
    address tokenOut;
    uint256 minOut;
    SwapData swapData;
}

enum SwapType {
    NONE,
    KYBERSWAP,
    ODOS,
    // ETH_WETH not used in Aggregator
    ETH_WETH,
    OKX,
    ONE_INCH,
    RESERVE_1,
    RESERVE_2,
    RESERVE_3,
    RESERVE_4,
    RESERVE_5
}

interface IPSwapAggregator {
    event SwapSingle(SwapType indexed swapType, address indexed tokenIn, uint256 amountIn);

    function swap(address tokenIn, uint256 amountIn, SwapData calldata swapData) external payable;
}

// ============================================================
// FILE: src/fira_bonding/StandardizedYield/BCIndex.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../../interfaces/IBCToken.sol";
import "../../interfaces/IBondToken.sol";

import "../libraries/math/PMath.sol";
import "./FWUtils.sol";

/// @notice Custom type representing the BC (Bond+Coupon) exchange rate index
/// @dev Wraps a uint256 representing the exchange rate between FW and BC assets
type BCIndex is uint256;

/// @title BCIndexLib
/// @notice Library for converting between FW amounts and BC asset amounts using the BC index
/// @dev The BC index represents how much underlying asset 1 FW token is worth.
///      Used for minting/redeeming Bond+Coupon token pairs.
library BCIndexLib {
    using PMath for uint256;
    using PMath for int256;

    /// @notice Creates a new BCIndex from a Coupon Token's current index
    /// @param CT The Coupon Token contract to get the index from
    /// @return The current BC index wrapped as BCIndex type
    function newIndex(IBCToken CT) internal returns (BCIndex) {
        return BCIndex.wrap(CT.bcIndexCurrent());
    }

    /// @notice Converts FW amount to underlying asset amount (rounds down)
    /// @param index The BC exchange rate index
    /// @param fwAmount Amount of FW tokens
    /// @return Equivalent amount of underlying assets
    function fwToAsset(BCIndex index, uint256 fwAmount) internal pure returns (uint256) {
        return FWUtils.fwToAsset(BCIndex.unwrap(index), fwAmount);
    }

    /// @notice Converts underlying asset amount to FW amount (rounds down)
    /// @param index The BC exchange rate index
    /// @param assetAmount Amount of underlying assets
    /// @return Equivalent amount of FW tokens
    function assetToFw(BCIndex index, uint256 assetAmount) internal pure returns (uint256) {
        return FWUtils.assetToFw(BCIndex.unwrap(index), assetAmount);
    }

    /// @notice Converts underlying asset amount to FW amount (rounds up)
    /// @param index The BC exchange rate index
    /// @param assetAmount Amount of underlying assets
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(BCIndex index, uint256 assetAmount) internal pure returns (uint256) {
        return FWUtils.assetToFwUp(BCIndex.unwrap(index), assetAmount);
    }

    /// @notice Converts FW amount to underlying asset amount (rounds up)
    /// @param index The BC exchange rate index
    /// @param fwAmount Amount of FW tokens
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(BCIndex index, uint256 fwAmount) internal pure returns (uint256) {
        uint256 _index = BCIndex.unwrap(index);
        return FWUtils.fwToAssetUp(_index, fwAmount);
    }

    /// @notice Converts signed FW amount to signed asset amount (preserves sign, rounds down magnitude)
    /// @param index The BC exchange rate index
    /// @param fwAmount Signed amount of FW tokens
    /// @return Equivalent signed amount of underlying assets
    function fwToAsset(BCIndex index, int256 fwAmount) internal pure returns (int256) {
        int256 sign = fwAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.fwToAsset(BCIndex.unwrap(index), fwAmount.abs())).Int();
    }

    /// @notice Converts signed asset amount to signed FW amount (preserves sign, rounds down magnitude)
    /// @param index The BC exchange rate index
    /// @param assetAmount Signed amount of underlying assets
    /// @return Equivalent signed amount of FW tokens
    function assetToFw(BCIndex index, int256 assetAmount) internal pure returns (int256) {
        int256 sign = assetAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.assetToFw(BCIndex.unwrap(index), assetAmount.abs())).Int();
    }

    /// @notice Converts signed asset amount to signed FW amount (preserves sign, rounds up magnitude)
    /// @param index The BC exchange rate index
    /// @param assetAmount Signed amount of underlying assets
    /// @return Equivalent signed amount of FW tokens, magnitude rounded up
    function assetToFwUp(BCIndex index, int256 assetAmount) internal pure returns (int256) {
        int256 sign = assetAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.assetToFwUp(BCIndex.unwrap(index), assetAmount.abs())).Int();
    }
}

// ============================================================
// FILE: src/fira_bonding/StandardizedYield/FWUtils.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title FWUtils
/// @notice Utility library for converting between FW token amounts and underlying asset amounts
/// @dev All conversions use 18-decimal fixed-point math with the exchange rate scaled by 1e18.
///      The exchange rate represents how much underlying asset 1 FW token is worth.
library FWUtils {
    /// @notice Scaling factor for fixed-point math (1e18)
    uint256 internal constant ONE = 1e18;

    /// @notice Converts FW token amount to underlying asset amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded down
    function fwToAsset(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate) / ONE;
    }

    /// @notice Converts FW token amount to underlying asset amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate + ONE - 1) / ONE;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded down
    function assetToFw(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE) / exchangeRate;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE + exchangeRate - 1) / exchangeRate;
    }
}

// ============================================================
// FILE: src/interfaces/IBCToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./IPInterestManagerCT.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBCToken is IERC20Metadata, IPInterestManagerCT {
    event NewInterestIndex(uint256 indexed newIndex);

    event Mint(
        address indexed caller,
        address indexed receiverBT,
        address indexed receiverCT,
        uint256 amountFwToMint,
        uint256 amountPYOut
    );

    event Burn(address indexed caller, address indexed receiver, uint256 amountBcToRedeem, uint256 amountFwOut);

    event RedeemRewards(address indexed user, uint256[] amountRewardsOut);

    event RedeemInterest(address indexed user, uint256 interestOut);

    event CollectRewardFee(address indexed rewardToken, uint256 amountRewardFee);

    function mintBC(address receiverBT, address receiverCT) external returns (uint256 amountBCOut);

    function redeemBC(address receiver) external returns (uint256 amountFwOut);

    function redeemBCMulti(address[] calldata receivers, uint256[] calldata amountBcToRedeems)
        external
        returns (uint256[] memory amountFwOuts);

    function redeemDueInterestAndRewards(address user, bool redeemInterest, bool redeemRewards)
        external
        returns (uint256 interestOut, uint256[] memory rewardsOut);

    function rewardIndexesCurrent() external returns (uint256[] memory);

    function bcIndexCurrent() external returns (uint256);

    function bcIndexStored() external view returns (uint256);

    function getRewardTokens() external view returns (address[] memory);

    function FW() external view returns (address);

    function BT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);

    function doCacheIndexSameBlock() external view returns (bool);

    function bcIndexLastUpdatedBlock() external view returns (uint128);

    function postExpiry() external view returns (uint128 firstBCIndex, uint128 totalFwInterestForTreasury);
}

// ============================================================
// FILE: src/interfaces/IBondToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBondToken is IERC20Metadata {
    function burnByCT(address user, uint256 amount) external;

    function mintByCT(address user, uint256 amount) external;

    function mintByLI(address user, uint256 amount) external;

    function burnByLI(address user, uint256 amount) external;

    function initialize(address CT) external;

    function FW() external view returns (address);

    function CT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IPActionStorageV4.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IPAllEventsV3} from "./IPAllEventsV3.sol";

interface IPActionStorageV4 is IPAllEventsV3 {
    struct SelectorsToFacet {
        address facet;
        bytes4[] selectors;
    }

    function owner() external view returns (address);

    function pendingOwner() external view returns (address);

    function transferOwnership(address newOwner, bool direct, bool renounce) external;

    function claimOwnership() external;

    function setSelectorToFacets(SelectorsToFacet[] calldata arr) external;

    function selectorToFacet(bytes4 selector) external view returns (address);
}

// ============================================================
// FILE: src/interfaces/IPAllActionTypeV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/swap-aggregator/IPSwapAggregator.sol";
import "./IPLimitRouter.sol";

/*
 * NOTICE:
 * For detailed information on TokenInput, TokenOutput, ApproxParams, and LimitOrderData,
 * refer to https://docs.fira.finance/Developers/Contracts/FiraRouter
 *
 * It's recommended to use Fira's Hosted SDK to generate these parameters for:
 * 1. Optimal liquidity and gas efficiency
 * 2. Access to deeper liquidity via limit orders
 * 3. Zapping in/out using any ERC20 token
 *
 * Else, to generate these parameters fully onchain, use the following functions:
 * - For TokenInput: Use createTokenInputSimple
 * - For TokenOutput: Use createTokenOutputSimple
 * - For ApproxParams: Use createDefaultApproxParams
 * - For LimitOrderData: Use createEmptyLimitOrderData
 *
 * These generated parameters can be directly passed into the respective function calls.
 *
 * Examples:
 *
 * addLiquiditySingleToken(
 *     msg.sender,
 *     MARKET_ADDRESS,
 *     minLpOut,
 *     createDefaultApproxParams(),
 *     createTokenInputSimple(USDC_ADDRESS, 1000e6),
 *     createEmptyLimitOrderData()
 * )
 *
 * swapExactTokenForBt(
 *     msg.sender,
 *     MARKET_ADDRESS,
 *     minBtOut,
 *     createDefaultApproxParams(),
 *     createTokenInputSimple(USDC_ADDRESS, 1000e6),
 *     createEmptyLimitOrderData()
 * )
 */

/// @dev Creates a TokenInput struct without using any swap aggregator
/// @param tokenIn must be one of the FW's tokens in (obtain via `IFiraWrappedStandardized#getTokensIn`)
/// @param netTokenIn amount of token in
function createTokenInputSimple(address tokenIn, uint256 netTokenIn) pure returns (TokenInput memory) {
    return TokenInput({
        tokenIn: tokenIn,
        netTokenIn: netTokenIn,
        tokenMintFw: tokenIn,
        firaSwap: address(0),
        swapData: createSwapTypeNoAggregator()
    });
}

/// @dev Creates a TokenOutput struct without using any swap aggregator
/// @param tokenOut must be one of the FW's tokens out (obtain via
/// `IFiraWrappedStandardized#getTokensOut`)
/// @param minTokenOut minimum amount of token out
function createTokenOutputSimple(address tokenOut, uint256 minTokenOut) pure returns (TokenOutput memory) {
    return TokenOutput({
        tokenOut: tokenOut,
        minTokenOut: minTokenOut,
        tokenRedeemFw: tokenOut,
        firaSwap: address(0),
        swapData: createSwapTypeNoAggregator()
    });
}

function createEmptyLimitOrderData() pure returns (LimitOrderData memory) {}

/// @dev Creates default ApproxParams for on-chain approximation
function createDefaultApproxParams() pure returns (ApproxParams memory) {
    return ApproxParams({guessMin: 0, guessMax: type(uint256).max, guessOffchain: 0, maxIteration: 256, eps: 1e14});
}

function createSwapTypeNoAggregator() pure returns (SwapData memory) {}

struct TokenInput {
    address tokenIn;
    uint256 netTokenIn;
    address tokenMintFw;
    address firaSwap;
    SwapData swapData;
}

struct TokenOutput {
    address tokenOut;
    uint256 minTokenOut;
    address tokenRedeemFw;
    address firaSwap;
    SwapData swapData;
}

struct LimitOrderData {
    address limitRouter;
    uint256 epsSkipMarket;
    FillOrderParams[] normalFills;
    FillOrderParams[] flashFills;
    bytes optData;
}

struct ApproxParams {
    uint256 guessMin;
    uint256 guessMax;
    uint256 guessOffchain;
    uint256 maxIteration;
    uint256 eps;
}

struct ExitPreExpReturnParams {
    uint256 netBtFromRemove;
    uint256 netFwFromRemove;
    uint256 netBcRedeem;
    uint256 netFwFromRedeem;
    uint256 netBtSwap;
    uint256 netCtSwap;
    uint256 netFwFromSwap;
    uint256 netFwFee;
    uint256 totalFwOut;
}

struct ExitPostExpReturnParams {
    uint256 netBtFromRemove;
    uint256 netFwFromRemove;
    uint256 netBtRedeem;
    uint256 netFwFromRedeem;
    uint256 totalFwOut;
}

struct RedeemCtIncomeToTokenStruct {
    IBCToken ct;
    bool doRedeemInterest;
    bool doRedeemRewards;
    address tokenRedeemFw;
    uint256 minTokenRedeemOut;
}

// ============================================================
// FILE: src/interfaces/IPAllEventsV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ExitPostExpReturnParams, ExitPreExpReturnParams} from "./IPAllActionTypeV3.sol";

interface IPActionAddRemoveLiqV3Events {
    event AddLiquidityDualFwAndBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netFwUsed,
        uint256 netBtUsed,
        uint256 netLpOut
    );

    event AddLiquidityDualTokenAndBt(
        address indexed caller,
        address indexed market,
        address indexed tokenIn,
        address receiver,
        uint256 netTokenUsed,
        uint256 netBtUsed,
        uint256 netLpOut,
        uint256 netFwInterm
    );

    event AddLiquiditySingleBt(
        address indexed caller, address indexed market, address indexed receiver, uint256 netBtIn, uint256 netLpOut
    );

    event AddLiquiditySingleFw(
        address indexed caller, address indexed market, address indexed receiver, uint256 netFwIn, uint256 netLpOut
    );

    event AddLiquiditySingleToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netTokenIn,
        uint256 netLpOut,
        uint256 netFwInterm
    );

    event AddLiquiditySingleFwKeepCt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netFwIn,
        uint256 netFwMintBc,
        uint256 netLpOut,
        uint256 netCtOut
    );

    event AddLiquiditySingleTokenKeepCt(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netTokenIn,
        uint256 netLpOut,
        uint256 netCtOut,
        uint256 netFwMintBc,
        uint256 netFwInterm
    );

    event RemoveLiquidityDualFwAndBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netBtOut,
        uint256 netFwOut
    );

    event RemoveLiquidityDualTokenAndBt(
        address indexed caller,
        address indexed market,
        address indexed tokenOut,
        address receiver,
        uint256 netLpToRemove,
        uint256 netBtOut,
        uint256 netTokenOut,
        uint256 netFwInterm
    );

    event RemoveLiquiditySingleBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netBtOut
    );

    event RemoveLiquiditySingleFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netFwOut
    );

    event RemoveLiquiditySingleToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpToRemove,
        uint256 netTokenOut,
        uint256 netFwInterm
    );
}

interface IPActionSwapBTV3Events {
    event SwapBtAndFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        int256 netBtToAccount,
        int256 netFwToAccount
    );

    event SwapBtAndToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        int256 netBtToAccount,
        int256 netTokenToAccount,
        uint256 netFwInterm
    );
}

interface IPActionSwapCTV3Events {
    event SwapCtAndFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        int256 netCtToAccount,
        int256 netFwToAccount
    );

    event SwapCtAndToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        int256 netCtToAccount,
        int256 netTokenToAccount,
        uint256 netFwInterm
    );
}

interface IPActionMiscV3Events {
    event MintFwFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed FW,
        address receiver,
        uint256 netTokenIn,
        uint256 netFwOut
    );

    event RedeemFwToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed FW,
        address receiver,
        uint256 netFwIn,
        uint256 netTokenOut
    );

    event MintBcFromFw(
        address indexed caller, address indexed receiver, address indexed CT, uint256 netFwIn, uint256 netBcOut
    );

    event RedeemBcToFw(
        address indexed caller, address indexed receiver, address indexed CT, uint256 netBcIn, uint256 netFwOut
    );

    event MintBcFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed CT,
        address receiver,
        uint256 netTokenIn,
        uint256 netBcOut,
        uint256 netFwInterm
    );

    event RedeemBcToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed CT,
        address receiver,
        uint256 netBcIn,
        uint256 netTokenOut,
        uint256 netFwInterm
    );

    event ExitPreExpToToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpIn,
        uint256 totalTokenOut,
        ExitPreExpReturnParams params
    );

    event ExitPreExpToFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpIn,
        ExitPreExpReturnParams params
    );

    event ExitPostExpToToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpIn,
        uint256 totalTokenOut,
        ExitPostExpReturnParams params
    );

    event ExitPostExpToFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpIn,
        ExitPostExpReturnParams params
    );
}

interface IPActionStorageEvents {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    event SelectorToFacetSet(bytes4 indexed selector, address indexed facet);
}

interface IPAllEventsV3 is
    IPActionAddRemoveLiqV3Events,
    IPActionSwapBTV3Events,
    IPActionSwapCTV3Events,
    IPActionMiscV3Events,
    IPActionStorageEvents
{}

// ============================================================
// FILE: src/interfaces/IPInterestManagerCT.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPInterestManagerCT {
    event CollectInterestFee(uint256 amountInterestFee);

    function userInterest(address user) external view returns (uint128 lastBCIndex, uint128 accruedInterest);
}

// ============================================================
// FILE: src/interfaces/IPLimitRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/StandardizedYield/BCIndex.sol";

interface IPLimitOrderType {
    enum OrderType {
        FW_FOR_BT,
        BT_FOR_FW,
        FW_FOR_CT,
        CT_FOR_FW
    }

    // Fixed-size order part with core information
    struct StaticOrder {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        OrderType orderType;
        address token;
        address CT;
        address maker;
        address receiver;
        uint256 makingAmount;
        uint256 lnImpliedRate;
        uint256 failSafeRate;
    }

    struct FillResults {
        uint256 totalMaking;
        uint256 totalTaking;
        uint256 totalFee;
        uint256 totalNotionalVolume;
        uint256[] netMakings;
        uint256[] netTakings;
        uint256[] netFees;
        uint256[] notionalVolumes;
    }
}

struct Order {
    uint256 salt;
    uint256 expiry;
    uint256 nonce;
    IPLimitOrderType.OrderType orderType;
    address token;
    address CT;
    address maker;
    address receiver;
    uint256 makingAmount;
    uint256 lnImpliedRate;
    uint256 failSafeRate;
    bytes permit;
}

struct FillOrderParams {
    Order order;
    bytes signature;
    uint256 makingAmount;
}

interface IPLimitRouterCallback is IPLimitOrderType {
    function limitRouterCallback(uint256 actualMaking, uint256 actualTaking, uint256 totalFee, bytes memory data)
        external
        returns (bytes memory);
}

interface IPLimitRouter is IPLimitOrderType {
    struct OrderStatus {
        uint128 filledAmount;
        uint128 remaining;
    }

    event OrderCanceled(address indexed maker, bytes32 indexed orderHash);

    event OrderFilledV2(
        bytes32 indexed orderHash,
        OrderType indexed orderType,
        address indexed CT,
        address token,
        uint256 netInputFromMaker,
        uint256 netOutputToMaker,
        uint256 feeAmount,
        uint256 notionalVolume,
        address maker,
        address taker
    );

    // event added on 2/1/2025
    event LnFeeRateRootsSet(address[] CTs, uint256[] lnFeeRateRoots);

    // @dev actualMaking, actualTaking are in the FW form
    function fill(
        FillOrderParams[] memory params,
        address receiver,
        uint256 maxTaking,
        bytes calldata optData,
        bytes calldata callback
    ) external returns (uint256 actualMaking, uint256 actualTaking, uint256 totalFee, bytes memory callbackReturn);

    function feeRecipient() external view returns (address);

    function hashOrder(Order memory order) external view returns (bytes32);

    function cancelSingle(Order calldata order) external;

    function cancelBatch(Order[] calldata orders) external;

    function orderStatusesRaw(bytes32[] memory orderHashes)
        external
        view
        returns (uint256[] memory remainingsRaw, uint256[] memory filledAmounts);

    function orderStatuses(bytes32[] memory orderHashes)
        external
        view
        returns (uint256[] memory remainings, uint256[] memory filledAmounts);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function simulate(address target, bytes calldata data) external payable;

    function WNATIVE() external view returns (address);

    function _checkSig(Order memory order, bytes memory signature)
        external
        view
        returns (
            bytes32,
            /* orderHash*/
            uint256,
            /* remainingMakerAmount*/
            uint256
        ); /* filledMakerAmount*/

    /* --- Deprecated events --- */

    // deprecate on 7/1/2024, prior to official launch
    event OrderFilled(
        bytes32 indexed orderHash,
        OrderType indexed orderType,
        address indexed CT,
        address token,
        uint256 netInputFromMaker,
        uint256 netOutputToMaker,
        uint256 feeAmount,
        uint256 notionalVolume
    );
}
