// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

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
// FILE: src/fira_bonding/core/Market/MarketMathCore.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../libraries/math/LogExpMath.sol";
import "../../libraries/math/PMath.sol";

import "../../StandardizedYield/BCIndex.sol";

import "../../libraries/Errors.sol";
import "../../libraries/MiniHelpers.sol";

/**
 * @notice Complete state of a FiraMarket, loaded into memory for gas-efficient operations
 * @param totalBt Total Bond Token reserves
 * @param totalFw Total Fira Wrapped token reserves
 * @param totalLp Total LP token supply
 * @param treasury Address receiving fees
 * @param scalarRoot Scaling parameter for the pricing curve
 * @param expiry Unix timestamp when the market expires
 * @param lnFeeRateRoot Natural log of fee rate root
 * @param reserveFeePercent Percentage of fees sent to reserve (base 100)
 * @param lastLnImpliedRate Last recorded ln(impliedRate) after a trade
 */
struct MarketState {
    int256 totalBt;
    int256 totalFw;
    int256 totalLp;
    address treasury;
    /// immutable variables ///
    int256 scalarRoot;
    uint256 expiry;
    /// fee data ///
    uint256 lnFeeRateRoot;
    uint256 reserveFeePercent; // base 100
    uint256 lastLnImpliedRate;
}

/**
 * @notice Pre-computed parameters for trade calculations
 * @dev These values are expensive to compute, so we calculate them once per trade
 * @param rateScalar Time-adjusted scalar for the pricing curve
 * @param totalAsset Total FW reserves converted to underlying asset units
 * @param rateAnchor Current anchor point for the exchange rate calculation
 * @param feeRate Time-adjusted fee multiplier
 */
struct MarketPreCompute {
    int256 rateScalar;
    int256 totalAsset;
    int256 rateAnchor;
    int256 feeRate;
}

/**
 * @title MarketMathCore
 * @notice Core mathematical library for FiraMarket AMM operations
 * @dev Implements an AMM with time-decaying implied interest rates.
 *      The pricing model uses logit functions to maintain exchange rates above 1.0,
 *      ensuring BT always trades at a discount to FW (reflecting the time value of money).
 */
library MarketMathCore {
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;
    using BCIndexLib for BCIndex;

    /// @dev Minimum LP tokens locked forever to prevent rounding exploits
    int256 internal constant MINIMUM_LIQUIDITY = 10 ** 3;

    /// @dev Base for percentage calculations (100 = 100%)
    int256 internal constant PERCENTAGE_DECIMALS = 100;

    /// @dev Seconds in a day
    uint256 internal constant DAY = 86400;

    /// @dev Annualized time period for implied rate calculations (365 days)
    uint256 internal constant IMPLIED_RATE_TIME = 365 * DAY;

    /// @dev Maximum proportion of BT in the pool (96%) to prevent extreme prices
    int256 internal constant MAX_MARKET_PROPORTION = (1e18 * 96) / 100;

    /* ///////////////////////////////////////////////////////////////
                UINT FUNCTIONS TO PROXY TO CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds liquidity to the market, receiving LP tokens in return
     * @dev Wrapper around addLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param fwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens locked as minimum liquidity (only on first deposit)
     * @return lpToAccount LP tokens minted to the depositor
     * @return fwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidity(MarketState memory market, uint256 fwDesired, uint256 btDesired, uint256 blockTime)
        internal
        pure
        returns (uint256 lpToReserve, uint256 lpToAccount, uint256 fwUsed, uint256 btUsed)
    {
        (int256 _lpToReserve, int256 _lpToAccount, int256 _fwUsed, int256 _btUsed) =
            addLiquidityCore(market, fwDesired.Int(), btDesired.Int(), blockTime);

        lpToReserve = _lpToReserve.Uint();
        lpToAccount = _lpToAccount.Uint();
        fwUsed = _fwUsed.Uint();
        btUsed = _btUsed.Uint();
    }

    /**
     * @notice Removes liquidity from the market by burning LP tokens
     * @dev Wrapper around removeLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens returned to the withdrawer
     * @return netBtToAccount BT tokens returned to the withdrawer
     */
    function removeLiquidity(MarketState memory market, uint256 lpToRemove)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netBtToAccount)
    {
        (int256 _fwToAccount, int256 _btToAccount) = removeLiquidityCore(market, lpToRemove.Int());

        netFwToAccount = _fwToAccount.Uint();
        netBtToAccount = _btToAccount.Uint();
    }

    /**
     * @notice Swaps an exact amount of BT for FW
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactBtToMarket Exact amount of BT to sell
     * @param blockTime Current block timestamp
     * @return netFwToAccount FW tokens received by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapExactBtForFw(MarketState memory market, BCIndex index, uint256 exactBtToMarket, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactBtToMarket.neg(), blockTime);

        netFwToAccount = _netFwToAccount.Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /**
     * @notice Swaps FW for an exact amount of BT
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactbtToAccount Exact amount of BT to receive
     * @param blockTime Current block timestamp
     * @return netFwToMarket FW tokens paid by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapFwForExactBt(MarketState memory market, BCIndex index, uint256 exactbtToAccount, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToMarket, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactbtToAccount.Int(), blockTime);

        netFwToMarket = _netFwToAccount.neg().Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /* ///////////////////////////////////////////////////////////////
                    CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Core logic for adding liquidity to the market
     * @dev On first deposit, mints sqrt(fw * bt) LP tokens and locks MINIMUM_LIQUIDITY.
     *      On subsequent deposits, mints LP proportional to the limiting token.
     * @param market The current market state (will be modified)
     * @param FwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens to lock as minimum liquidity
     * @return lpToAccount LP tokens to mint to depositor
     * @return FwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidityCore(MarketState memory market, int256 FwDesired, int256 btDesired, uint256 blockTime)
        internal
        pure
        returns (int256 lpToReserve, int256 lpToAccount, int256 FwUsed, int256 btUsed)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (FwDesired == 0 || btDesired == 0) revert Errors.MarketZeroAmountsInput();
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        if (market.totalLp == 0) {
            lpToAccount = PMath.sqrt((FwDesired * btDesired).Uint()).Int() - MINIMUM_LIQUIDITY;
            lpToReserve = MINIMUM_LIQUIDITY;
            FwUsed = FwDesired;
            btUsed = btDesired;
        } else {
            int256 netLpBybt = (btDesired * market.totalLp) / market.totalBt;
            int256 netLpByFw = (FwDesired * market.totalLp) / market.totalFw;
            if (netLpBybt < netLpByFw) {
                lpToAccount = netLpBybt;
                btUsed = btDesired;
                FwUsed = (market.totalFw * lpToAccount).rawDivUp(market.totalLp);
            } else {
                lpToAccount = netLpByFw;
                FwUsed = FwDesired;
                btUsed = (market.totalBt * lpToAccount).rawDivUp(market.totalLp);
            }
        }

        if (lpToAccount <= 0 || FwUsed <= 0 || btUsed <= 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalFw += FwUsed;
        market.totalBt += btUsed;
        market.totalLp += lpToAccount + lpToReserve;
    }

    /**
     * @notice Core logic for removing liquidity from the market
     * @dev Returns proportional share of both BT and FW reserves
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens to return
     * @return netbtToAccount BT tokens to return
     */
    function removeLiquidityCore(MarketState memory market, int256 lpToRemove)
        internal
        pure
        returns (int256 netFwToAccount, int256 netbtToAccount)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (lpToRemove == 0) revert Errors.MarketZeroAmountsInput();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        netFwToAccount = (lpToRemove * market.totalFw) / market.totalLp;
        netbtToAccount = (lpToRemove * market.totalBt) / market.totalLp;

        if (netFwToAccount == 0 && netbtToAccount == 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalLp = market.totalLp.subNoNeg(lpToRemove);
        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount);
    }

    /**
     * @notice Core logic for executing a BT/FW swap
     * @dev Positive netbtToAccount = buying BT (selling FW), negative = selling BT (buying FW)
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper (positive = receiving, negative = paying)
     * @param blockTime Current block timestamp
     * @return netFwToAccount Net FW flow to swapper (positive = receiving, negative = paying)
     * @return netFwFee Total fee in FW terms
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function executeTradeCore(MarketState memory market, BCIndex index, int256 netbtToAccount, uint256 blockTime)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();
        if (market.totalBt <= netbtToAccount) {
            revert Errors.MarketInsufficientBtForTrade(market.totalBt, netbtToAccount);
        }

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        MarketPreCompute memory comp = getMarketPreCompute(market, index, blockTime);

        (netFwToAccount, netFwFee, netFwToReserve) = calcTrade(market, comp, index, netbtToAccount);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        _setNewMarketStateTrade(market, comp, index, netbtToAccount, netFwToAccount, netFwToReserve, blockTime);
    }

    /**
     * @notice Pre-computes expensive parameters needed for trade calculations
     * @dev Calculates rate scalar, total asset value, rate anchor, and fee rate
     * @param market The current market state
     * @param index Current BC index for FW/asset conversion
     * @param blockTime Current block timestamp
     * @return res Pre-computed values for trade math
     */
    function getMarketPreCompute(MarketState memory market, BCIndex index, uint256 blockTime)
        internal
        pure
        returns (MarketPreCompute memory res)
    {
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        uint256 timeToExpiry = market.expiry - blockTime;

        res.rateScalar = _getRateScalar(market, timeToExpiry);
        res.totalAsset = index.fwToAsset(market.totalFw);

        if (market.totalBt == 0 || res.totalAsset == 0) {
            revert Errors.MarketZeroTotalBtOrTotalAsset(market.totalBt, res.totalAsset);
        }

        res.rateAnchor =
            _getRateAnchor(market.totalBt, market.lastLnImpliedRate, res.totalAsset, res.rateScalar, timeToExpiry);
        res.feeRate = _getExchangeRateFromImpliedRate(market.lnFeeRateRoot, timeToExpiry);
    }

    /**
     * @notice Calculates the FW amounts for a given BT trade
     * @dev Applies the exchange rate formula and fee calculations
     * @param market The current market state
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netBtToAccount Net BT flow to swapper
     * @return netFwToAccount Net FW flow to swapper
     * @return netFwFee Total fee in FW
     * @return netFwToReserve Fee portion for reserve
     */
    function calcTrade(MarketState memory market, MarketPreCompute memory comp, BCIndex index, int256 netBtToAccount)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        int256 preFeeExchangeRate =
            _getExchangeRate(market.totalBt, comp.totalAsset, comp.rateScalar, comp.rateAnchor, netBtToAccount);

        int256 preFeeAssetToAccount = netBtToAccount.divDown(preFeeExchangeRate).neg();
        int256 fee = comp.feeRate;

        if (netBtToAccount > 0) {
            int256 postFeeExchangeRate = preFeeExchangeRate.divDown(fee);
            if (postFeeExchangeRate < PMath.IONE) {
                revert Errors.MarketExchangeRateBelowOne(postFeeExchangeRate);
            }

            fee = preFeeAssetToAccount.mulDown(PMath.IONE - fee);
        } else {
            fee = ((preFeeAssetToAccount * (PMath.IONE - fee)) / fee).neg();
        }

        int256 netAssetToReserve = (fee * market.reserveFeePercent.Int()) / PERCENTAGE_DECIMALS;
        int256 netAssetToAccount = preFeeAssetToAccount - fee;

        netFwToAccount =
            netAssetToAccount < 0 ? index.assetToFwUp(netAssetToAccount) : index.assetToFw(netAssetToAccount);
        netFwFee = index.assetToFw(fee);
        netFwToReserve = index.assetToFw(netAssetToReserve);
    }

    /**
     * @notice Updates market state after a trade
     * @dev Adjusts reserves and recalculates the implied rate
     * @param market The current market state (will be modified)
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper
     * @param netFwToAccount Net FW flow to swapper
     * @param netFwToReserve FW fee portion sent to reserve
     * @param blockTime Current block timestamp
     */
    function _setNewMarketStateTrade(
        MarketState memory market,
        MarketPreCompute memory comp,
        BCIndex index,
        int256 netbtToAccount,
        int256 netFwToAccount,
        int256 netFwToReserve,
        uint256 blockTime
    ) internal pure {
        uint256 timeToExpiry = market.expiry - blockTime;

        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount + netFwToReserve);

        market.lastLnImpliedRate = _getLnImpliedRate(
            market.totalBt, index.fwToAsset(market.totalFw), comp.rateScalar, comp.rateAnchor, timeToExpiry
        );

        if (market.lastLnImpliedRate == 0) revert Errors.MarketZeroLnImpliedRate();
    }

    /**
     * @notice Calculates the rate anchor from the last implied rate
     * @dev The anchor is adjusted so that the current proportion yields the last implied rate
     * @param totalbt Total BT reserves
     * @param lastLnImpliedRate Last recorded natural log of the implied rate
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param timeToExpiry Seconds until expiry
     * @return rateAnchor The calculated rate anchor
     */
    function _getRateAnchor(
        int256 totalbt,
        uint256 lastLnImpliedRate,
        int256 totalAsset,
        int256 rateScalar,
        uint256 timeToExpiry
    ) internal pure returns (int256 rateAnchor) {
        int256 newExchangeRate = _getExchangeRateFromImpliedRate(lastLnImpliedRate, timeToExpiry);

        if (newExchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(newExchangeRate);

        {
            int256 proportion = totalbt.divDown(totalbt + totalAsset);

            int256 lnProportion = _logProportion(proportion);

            rateAnchor = newExchangeRate - lnProportion.divDown(rateScalar);
        }
    }

    /**
     * @notice Calculates the natural log of the implied interest rate
     * @dev Derived from the current exchange rate and time to expiry
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param timeToExpiry Seconds until expiry
     * @return lnImpliedRate The natural log of the annualized implied rate
     */
    function _getLnImpliedRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        uint256 timeToExpiry
    ) internal pure returns (uint256 lnImpliedRate) {
        // This will check for exchange rates < PMath.IONE
        int256 exchangeRate = _getExchangeRate(totalbt, totalAsset, rateScalar, rateAnchor, 0);

        // exchangeRate >= 1 so its ln >= 0
        uint256 lnRate = exchangeRate.ln().Uint();

        lnImpliedRate = (lnRate * IMPLIED_RATE_TIME) / timeToExpiry;
    }

    /**
     * @notice Converts an implied rate to an exchange rate given time to expiry
     * @dev Uses the formula E = e^(rt) where r is the implied rate and t is time
     * @param lnImpliedRate Natural log of the annualized implied rate
     * @param timeToExpiry Seconds until expiry
     * @return exchangeRate The exchange rate (BT per FW, scaled by 1e18)
     */
    function _getExchangeRateFromImpliedRate(uint256 lnImpliedRate, uint256 timeToExpiry)
        internal
        pure
        returns (int256 exchangeRate)
    {
        uint256 rt = (lnImpliedRate * timeToExpiry) / IMPLIED_RATE_TIME;

        exchangeRate = LogExpMath.exp(rt.Int());
    }

    /**
     * @notice Calculates the exchange rate for a given trade
     * @dev Uses logit function: exchangeRate = ln(proportion / (1 - proportion)) / rateScalar + rateAnchor
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param netbtToAccount Net BT being traded (for post-trade rate calculation)
     * @return exchangeRate The exchange rate (always >= 1e18)
     */
    function _getExchangeRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        int256 netbtToAccount
    ) internal pure returns (int256 exchangeRate) {
        int256 numerator = totalbt.subNoNeg(netbtToAccount);

        int256 proportion = (numerator.divDown(totalbt + totalAsset));

        if (proportion > MAX_MARKET_PROPORTION) {
            revert Errors.MarketProportionTooHigh(proportion, MAX_MARKET_PROPORTION);
        }

        int256 lnProportion = _logProportion(proportion);

        exchangeRate = lnProportion.divDown(rateScalar) + rateAnchor;

        if (exchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(exchangeRate);
    }

    /**
     * @notice Calculates the logit of a proportion: ln(p / (1-p))
     * @dev Used in the pricing curve formula
     * @param proportion The proportion value (must be < 1e18)
     * @return res The logit value
     */
    function _logProportion(int256 proportion) internal pure returns (int256 res) {
        if (proportion == PMath.IONE) revert Errors.MarketProportionMustNotEqualOne();

        int256 logitP = proportion.divDown(PMath.IONE - proportion);

        res = logitP.ln();
    }

    /**
     * @notice Calculates the time-adjusted rate scalar
     * @dev Scales inversely with time to expiry, making prices more sensitive near expiry
     * @param market The market state containing scalarRoot
     * @param timeToExpiry Seconds until expiry
     * @return rateScalar The adjusted rate scalar
     */
    function _getRateScalar(MarketState memory market, uint256 timeToExpiry) internal pure returns (int256 rateScalar) {
        rateScalar = (market.scalarRoot * IMPLIED_RATE_TIME.Int()) / timeToExpiry.Int();
        if (rateScalar <= 0) revert Errors.MarketRateScalarBelowZero(rateScalar);
    }

    /**
     * @notice Sets the initial implied rate when the market is first initialized
     * @dev Called only once when the first LP deposits liquidity
     * @param market The market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param initialAnchor The configured initial anchor value
     * @param blockTime Current block timestamp
     */
    function setInitialLnImpliedRate(MarketState memory market, BCIndex index, int256 initialAnchor, uint256 blockTime)
        internal
        pure
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        int256 totalAsset = index.fwToAsset(market.totalFw);
        uint256 timeToExpiry = market.expiry - blockTime;
        int256 rateScalar = _getRateScalar(market, timeToExpiry);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.lastLnImpliedRate =
            _getLnImpliedRate(market.totalBt, totalAsset, rateScalar, initialAnchor, timeToExpiry);
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/BoringOwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @title BoringOwnableUpgradeableData
/// @notice Storage contract for BoringOwnableUpgradeable ownership state
/// @dev Separated to maintain clean storage layout for upgradeable contracts
contract BoringOwnableUpgradeableData {
    /// @notice Current owner of the contract
    address public owner;
    /// @notice Address that can claim ownership (two-step transfer)
    address public pendingOwner;
}

/// @title BoringOwnableUpgradeable
/// @notice Upgradeable ownership contract with two-step transfer and renounce capability
/// @dev Implements a safer ownership transfer pattern where new owner must explicitly claim
abstract contract BoringOwnableUpgradeable is BoringOwnableUpgradeableData, Initializable {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    function __BoringOwnable_init() internal onlyInitializing {
        owner = msg.sender;
    }

    /// @notice Transfers ownership to `newOwner`. Either directly or claimable by the new pending
    /// owner.
    /// Can only be invoked by the current `owner`.
    /// @param newOwner Address of the new owner.
    /// @param direct True if `newOwner` should be set immediately. False if `newOwner` needs to use
    /// `claimOwnership`.
    /// @param renounce Allows the `newOwner` to be `address(0)` if `direct` and `renounce` is True.
    /// Has no effect
    /// otherwise.
    function transferOwnership(address newOwner, bool direct, bool renounce) public onlyOwner {
        if (direct) {
            // Checks
            require(newOwner != address(0) || renounce, "Ownable: zero address");

            // Effects
            emit OwnershipTransferred(owner, newOwner);
            owner = newOwner;
            pendingOwner = address(0);
        } else {
            // Effects
            pendingOwner = newOwner;
        }
    }

    /// @notice Needs to be called by `pendingOwner` to claim ownership.
    function claimOwnership() public {
        address _pendingOwner = pendingOwner;

        // Checks
        require(msg.sender == _pendingOwner, "Ownable: caller != pending owner");

        // Effects
        emit OwnershipTransferred(owner, _pendingOwner);
        owner = _pendingOwner;
        pendingOwner = address(0);
    }

    /// @notice Only allows the `owner` to execute the function.
    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: caller is not the owner");
        _;
    }

    uint256[48] private __gap;
}

// ============================================================
// FILE: src/fira_bonding/libraries/Errors.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title Errors
/// @notice Centralized error definitions for the Fira protocol
/// @dev All custom errors are defined here to maintain consistency and reduce bytecode size
///      through error code reuse across contracts.
library Errors {
    // BulkSeller
    error BulkInsufficientFwForTrade(uint256 currentAmount, uint256 requiredAmount);
    error BulkInsufficientTokenForTrade(uint256 currentAmount, uint256 requiredAmount);
    error BulkInSufficientFwOut(uint256 actualFwOut, uint256 requiredFwOut);
    error BulkInSufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);
    error BulkInsufficientFwReceived(uint256 actualBalance, uint256 requiredBalance);
    error BulkNotMaintainer();
    error BulkNotAdmin();
    error BulkSellerAlreadyExisted(address token, address FW, address bulk);
    error BulkSellerInvalidToken(address token, address FW);
    error BulkBadRateTokenToFw(uint256 actualRate, uint256 currentRate, uint256 eps);
    error BulkBadRateFwToToken(uint256 actualRate, uint256 currentRate, uint256 eps);

    // APPROX
    error ApproxFail();
    error ApproxParamsInvalid(uint256 guessMin, uint256 guessMax, uint256 eps);
    error ApproxBinarySearchInputInvalid(
        uint256 approxGuessMin, uint256 approxGuessMax, uint256 minGuessMin, uint256 maxGuessMax
    );

    // MARKET + MARKET MATH CORE
    error MarketExpired();
    error MarketZeroAmountsInput();
    error MarketZeroAmountsOutput();
    error MarketZeroLnImpliedRate();
    error MarketInsufficientBtForTrade(int256 currentAmount, int256 requiredAmount);
    error MarketInsufficientBtReceived(uint256 actualBalance, uint256 requiredBalance);
    error MarketInsufficientFwReceived(uint256 actualBalance, uint256 requiredBalance);
    error MarketZeroTotalBtOrTotalAsset(int256 totalBw, int256 totalAsset);
    error MarketExchangeRateBelowOne(int256 exchangeRate);
    error MarketProportionMustNotEqualOne();
    error MarketRateScalarBelowZero(int256 rateScalar);
    error MarketScalarRootBelowZero(int256 scalarRoot);
    error MarketProportionTooHigh(int256 proportion, int256 maxProportion);

    error OracleUninitialized();
    error OracleTargetTooOld(uint32 target, uint32 oldest);
    error OracleZeroCardinality();

    error MarketFactoryExpiredBt();
    error MarketFactoryInvalidBt();
    error MarketFactoryMarketExists();

    error MarketFactoryLnFeeRateRootTooHigh(uint80 lnFeeRateRoot, uint256 maxLnFeeRateRoot);
    error MarketFactoryOverriddenFeeTooHigh(uint80 overriddenFee, uint256 marketLnFeeRateRoot);
    error MarketFactoryReserveFeePercentTooHigh(uint8 reserveFeePercent, uint8 maxReserveFeePercent);
    error MarketFactoryZeroTreasury();
    error MarketFactoryInitialAnchorTooLow(int256 initialAnchor, int256 minInitialAnchor);
    error MFNotFiraMarket(address addr);

    // ROUTER
    error RouterInsufficientLpOut(uint256 actualLpOut, uint256 requiredLpOut);
    error RouterInsufficientFwOut(uint256 actualFwOut, uint256 requiredFwOut);
    error RouterInsufficientBtOut(uint256 actualBwOut, uint256 requiredBwOut);
    error RouterInsufficientCtOut(uint256 actualCtOut, uint256 requiredCtOut);
    error RouterInsufficientPYOut(uint256 actualPYOut, uint256 requiredPYOut);
    error RouterInsufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);
    error RouterInsufficientFwRepay(uint256 actualFwRepay, uint256 requiredFwRepay);
    error RouterInsufficientBtRepay(uint256 actualBwRepay, uint256 requiredBwRepay);
    error RouterNotAllFWUsed(uint256 netFwDesired, uint256 netFwUsed);

    error RouterTimeRangeZero();
    error RouterCallbackNotFiraMarket(address caller);
    error RouterInvalidAction(bytes4 selector);
    error RouterInvalidFacet(address facet);

    error RouterKyberSwapDataZero();

    error SimulationResults(bool success, bytes res);

    // YIELD CONTRACT
    error YCExpired();
    error YCNotExpired();
    error YieldContractInsufficientFw(uint256 actualFw, uint256 requiredFw);
    error YCNothingToRedeem();
    error YCPostExpiryDataNotSet();
    error YCNoFloatingFw();

    // YieldFactory
    error YCFactoryInvalidExpiry();
    error YCFactoryYieldContractExisted();
    error YCFactoryZeroExpiryDivisor();
    error YCFactoryZeroTreasury();
    error YCFactoryInterestFeeRateTooHigh(uint256 interestFeeRate, uint256 maxInterestFeeRate);
    error YCFactoryRewardFeeRateTooHigh(uint256 newRewardFeeRate, uint256 maxRewardFeeRate);

    //FW
    error FWInvalidTokenIn(address token);
    error FWInvalidTokenOut(address token);
    error FWZeroDeposit();
    error FWZeroRedeem();
    error FWInsufficientSharesOut(uint256 actualSharesOut, uint256 requiredSharesOut);
    error FWInsufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);

    // FW-specific
    error FWQiTokenMintFailed(uint256 errCode);
    error FWQiTokenRedeemFailed(uint256 errCode);
    error FWQiTokenRedeemRewardsFailed(uint256 rewardAccruedType0, uint256 rewardAccruedType1);
    error FWQiTokenBorrowRateTooHigh(uint256 borrowRate, uint256 borrowRateMax);

    error FWCurveInvalidPid();
    error FWCurve3crvPoolNotFound();

    error FWApeDepositAmountTooSmall(uint256 amountDeposited);
    error FWBalancerInvalidPid();
    error FWInvalidRewardToken(address token);

    error FWStargateRedeemCapExceeded(uint256 amountLpDesired, uint256 amountLpRedeemable);

    error FWBalancerReentrancy();

    /// @dev Reverts when FW exchangeRate is 0 but totalSupply > 0 (total vault wipeout)
    error FWFullWipeout();

    error NotFromTrustedRemote(uint16 srcChainId, bytes path);

    error ApxETHNotEnoughBuffer();

    /// @dev Error for when caller is not the pauser
    error FWOnlyPauser();

    /// @dev Error for when deposits are paused
    error FWDepositsPaused();

    /// @dev Error for when redemptions are paused
    error FWRedemptionsPaused();

    // Cross-Chain
    error MsgNotFromSendEndpoint(uint16 srcChainId, bytes path);
    error MsgNotFromReceiveEndpoint(address sender);
    error InsufficientFeeToSendMsg(uint256 currentFee, uint256 requiredFee);
    error ApproxDstExecutionGasNotSet();
    error InvalidRetryData();

    // GENERIC MSG
    error ArrayLengthMismatch();
    error ArrayEmpty();
    error ArrayOutOfBounds();
    error ZeroAddress();
    error FailedToSendEther();
    error InvalidMerkleProof();

    error OnlyLayerZeroEndpoint();
    error OnlyCT();
    error OnlyYCFactory();
    error OnlyWhitelisted();
    error OnlyLI();

    // Swap Aggregator
    error SAInsufficientTokenIn(address tokenIn, uint256 amountExpected, uint256 amountActual);
    error UnsupportedSelector(uint256 aggregatorType, bytes4 selector);
}

// ============================================================
// FILE: src/fira_bonding/libraries/math/LogExpMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
// associated
// documentation files (the “Software”), to deal in the Software without restriction, including
// without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
// Software, and to
// permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the
// Software.

// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
// BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
// SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
// CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

pragma solidity ^0.8.0;

/* solhint-disable */

/// @title LogExpMath
/// @notice Exponentiation and logarithm functions for 18-decimal fixed-point numbers
/// @dev Implements exp(x), ln(x), and pow(x,y) for 1e18-scaled fixed-point numbers.
///      Exponentiation and logarithm with arbitrary bases are computed via conversion
///      to natural exponentiation and logarithm (base e).
/// @author Fernando Martinelli - @fernandomartinelli
/// @author Sergio Yuhjtman - @sergioyuhjtman
/// @author Daniel Fernandez - @dmf7z
library LogExpMath {
    // All fixed point multiplications and divisions are inlined. This means we need to divide by
    // ONE when multiplying
    // two numbers, and multiply by ONE when dividing them.

    // All arguments and return values are 18 decimal fixed point numbers.
    int256 constant ONE_18 = 1e18;

    // Internally, intermediate values are computed with higher precision as 20 decimal fixed point
    // numbers, and in the
    // case of ln36, 36 decimals.
    int256 constant ONE_20 = 1e20;
    int256 constant ONE_36 = 1e36;

    // The domain of natural exponentiation is bound by the word size and number of decimals used.
    //
    // Because internally the result will be stored using 20 decimals, the largest possible result
    //is
    // (2^255 - 1) / 10^20, which makes the largest exponent ln((2^255 - 1) / 10^20) =
    // 130.700829182905140221.
    // The smallest possible result is 10^(-18), which makes largest negative argument
    // ln(10^(-18)) = -41.446531673892822312.
    // We use 130.0 and -41.0 to have some safety margin.
    int256 constant MAX_NATURAL_EXPONENT = 130e18;
    int256 constant MIN_NATURAL_EXPONENT = -41e18;

    // Bounds for ln_36's argument. Both ln(0.9) and ln(1.1) can be represented with 36 decimal
    // places in a fixed point
    // 256 bit integer.
    int256 constant LN_36_LOWER_BOUND = ONE_18 - 1e17;
    int256 constant LN_36_UPPER_BOUND = ONE_18 + 1e17;

    uint256 constant MILD_EXPONENT_BOUND = 2 ** 254 / uint256(ONE_20);

    // 18 decimal constants
    int256 constant x0 = 128000000000000000000; // 2ˆ7
    int256 constant a0 = 38877084059945950922200000000000000000000000000000000000; // eˆ(x0)
        // (no decimals)
    int256 constant x1 = 64000000000000000000; // 2ˆ6
    int256 constant a1 = 6235149080811616882910000000; // eˆ(x1) (no decimals)

    // 20 decimal constants
    int256 constant x2 = 3200000000000000000000; // 2ˆ5
    int256 constant a2 = 7896296018268069516100000000000000; // eˆ(x2)
    int256 constant x3 = 1600000000000000000000; // 2ˆ4
    int256 constant a3 = 888611052050787263676000000; // eˆ(x3)
    int256 constant x4 = 800000000000000000000; // 2ˆ3
    int256 constant a4 = 298095798704172827474000; // eˆ(x4)
    int256 constant x5 = 400000000000000000000; // 2ˆ2
    int256 constant a5 = 5459815003314423907810; // eˆ(x5)
    int256 constant x6 = 200000000000000000000; // 2ˆ1
    int256 constant a6 = 738905609893065022723; // eˆ(x6)
    int256 constant x7 = 100000000000000000000; // 2ˆ0
    int256 constant a7 = 271828182845904523536; // eˆ(x7)
    int256 constant x8 = 50000000000000000000; // 2ˆ-1
    int256 constant a8 = 164872127070012814685; // eˆ(x8)
    int256 constant x9 = 25000000000000000000; // 2ˆ-2
    int256 constant a9 = 128402541668774148407; // eˆ(x9)
    int256 constant x10 = 12500000000000000000; // 2ˆ-3
    int256 constant a10 = 113314845306682631683; // eˆ(x10)
    int256 constant x11 = 6250000000000000000; // 2ˆ-4
    int256 constant a11 = 106449445891785942956; // eˆ(x11)

    /**
     * @dev Natural exponentiation (e^x) with signed 18 decimal fixed point exponent.
     *
     * Reverts if `x` is smaller than MIN_NATURAL_EXPONENT, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function exp(int256 x) internal pure returns (int256) {
        unchecked {
            require(x >= MIN_NATURAL_EXPONENT && x <= MAX_NATURAL_EXPONENT, "Invalid exponent");

            if (x < 0) {
                // We only handle positive exponents: e^(-x) is computed as 1 / e^x. We can safely
                // make x positive since
                //it
                // fits in the signed 256 bit range (as it is larger than MIN_NATURAL_EXPONENT).
                // Fixed point division requires multiplying by ONE_18.
                return ((ONE_18 * ONE_18) / exp(-x));
            }

            // First, we use the fact that e^(x+y) = e^x * e^y to decompose x into a sum of powers
            // of two, which we call
            // x_n,
            // where x_n == 2^(7 - n), and e^x_n = a_n has been precomputed. We choose the first
            // x_n, x0, to equal 2^7
            // because all larger powers are larger than MAX_NATURAL_EXPONENT, and therefore not
            // present in the
            // decomposition.
            // At the end of this process we will have the product of all e^x_n = a_n that apply,
            // and the remainder of
            // this
            // decomposition, which will be lower than the smallest x_n.
            // exp(x) = k_0 * a_0 * k_1 * a_1 * ... + k_n * a_n * exp(remainder), where each k_n
            // equals either 0 or 1.
            // We mutate x by subtracting x_n, making it the remainder of the decomposition.

            // The first two a_n (e^(2^7) and e^(2^6)) are too large if stored as 18 decimal
            // numbers, and could cause
            // intermediate overflows. Instead we store them as plain integers, with 0 decimals.
            // Additionally, x0 + x1 is larger than MAX_NATURAL_EXPONENT, which means they will not
            // both be present in
            // the
            // decomposition.

            // For each x_n, we test if that term is present in the decomposition (if x is larger
            // than it), and if so
            // deduct
            // it and compute the accumulated product.

            int256 firstAN;
            if (x >= x0) {
                x -= x0;
                firstAN = a0;
            } else if (x >= x1) {
                x -= x1;
                firstAN = a1;
            } else {
                firstAN = 1; // One with no decimal places
            }

            // We now transform x into a 20 decimal fixed point number, to have enhanced precision
            // when computing the
            // smaller terms.
            x *= 100;

            // `product` is the accumulated product of all a_n (except a0 and a1), which starts at
            // 20 decimal fixed
            // point
            // one. Recall that fixed point multiplication requires dividing by ONE_20.
            int256 product = ONE_20;

            if (x >= x2) {
                x -= x2;
                product = (product * a2) / ONE_20;
            }
            if (x >= x3) {
                x -= x3;
                product = (product * a3) / ONE_20;
            }
            if (x >= x4) {
                x -= x4;
                product = (product * a4) / ONE_20;
            }
            if (x >= x5) {
                x -= x5;
                product = (product * a5) / ONE_20;
            }
            if (x >= x6) {
                x -= x6;
                product = (product * a6) / ONE_20;
            }
            if (x >= x7) {
                x -= x7;
                product = (product * a7) / ONE_20;
            }
            if (x >= x8) {
                x -= x8;
                product = (product * a8) / ONE_20;
            }
            if (x >= x9) {
                x -= x9;
                product = (product * a9) / ONE_20;
            }

            // x10 and x11 are unnecessary here since we have high enough precision already.

            // Now we need to compute e^x, where x is small (in particular, it is smaller than x9).
            // We use the Taylor
            // series
            // expansion for e^x: 1 + x + (x^2 / 2!) + (x^3 / 3!) + ... + (x^n / n!).

            int256 seriesSum = ONE_20; // The initial one in the sum, with 20 decimal places.
            int256 term; // Each term in the sum, where the nth term is (x^n / n!).

            // The first term is simply x.
            term = x;
            seriesSum += term;

            // Each term (x^n / n!) equals the previous one times x, divided by n. Since x is a
            // fixed point number,
            // multiplying by it requires dividing by ONE_20, but dividing by the non-fixed point n
            // values does not.

            term = ((term * x) / ONE_20) / 2;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 3;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 4;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 5;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 6;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 7;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 8;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 9;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 10;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 11;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 12;
            seriesSum += term;

            // 12 Taylor terms are sufficient for 18 decimal precision.

            // We now have the first a_n (with no decimals), and the product of all other a_n
            // present, and the Taylor
            // approximation of the exponentiation of the remainder (both with 20 decimals). All
            // that remains is to
            // multiply
            // all three (one 20 decimal fixed point multiplication, dividing by ONE_20, and one
            // integer
            // multiplication),
            // and then drop two digits to return an 18 decimal value.

            return (((product * seriesSum) / ONE_20) * firstAN) / 100;
        }
    }

    /**
     * @dev Natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function ln(int256 a) internal pure returns (int256) {
        unchecked {
            // The real natural logarithm is not defined for negative numbers or zero.
            require(a > 0, "out of bounds");
            if (LN_36_LOWER_BOUND < a && a < LN_36_UPPER_BOUND) {
                return _ln_36(a) / ONE_18;
            } else {
                return _ln(a);
            }
        }
    }

    /**
     * @dev Exponentiation (x^y) with unsigned 18 decimal fixed point base and exponent.
     *
     * Reverts if ln(x) * y is smaller than `MIN_NATURAL_EXPONENT`, or larger than
     * `MAX_NATURAL_EXPONENT`.
     */
    function pow(uint256 x, uint256 y) internal pure returns (uint256) {
        unchecked {
            if (y == 0) {
                // We solve the 0^0 indetermination by making it equal one.
                return uint256(ONE_18);
            }

            if (x == 0) {
                return 0;
            }

            // Instead of computing x^y directly, we instead rely on the properties of logarithms
            // and exponentiation to
            // arrive at that r`esult. In particular, exp(ln(x)) = x, and ln(x^y) = y * ln(x). This
            // means
            // x^y = exp(y * ln(x)).

            // The ln function takes a signed value, so we need to make sure x fits in the signed
            // 256 bit range.
            require(x < 2 ** 255, "x out of bounds");
            int256 x_int256 = int256(x);

            // We will compute y * ln(x) in a single step. Depending on the value of x, we can
            // either use ln or ln_36. In
            // both cases, we leave the division by ONE_18 (due to fixed point multiplication) to
            // the end.

            // This prevents y * ln(x) from overflowing, and at the same time guarantees y fits in
            // the signed 256 bit
            // range.
            require(y < MILD_EXPONENT_BOUND, "y out of bounds");
            int256 y_int256 = int256(y);

            int256 logx_times_y;
            if (LN_36_LOWER_BOUND < x_int256 && x_int256 < LN_36_UPPER_BOUND) {
                int256 ln_36_x = _ln_36(x_int256);

                // ln_36_x has 36 decimal places, so multiplying by y_int256 isn't as
                // straightforward, since we can't
                // just
                // bring y_int256 to 36 decimal places, as it might overflow. Instead, we perform
                // two 18 decimal
                // multiplications and add the results: one with the first 18 decimals of ln_36_x,
                // and one with the
                // (downscaled) last 18 decimals.
                logx_times_y = ((ln_36_x / ONE_18) * y_int256 + ((ln_36_x % ONE_18) * y_int256) / ONE_18);
            } else {
                logx_times_y = _ln(x_int256) * y_int256;
            }
            logx_times_y /= ONE_18;

            // Finally, we compute exp(y * ln(x)) to arrive at x^y
            require(
                MIN_NATURAL_EXPONENT <= logx_times_y && logx_times_y <= MAX_NATURAL_EXPONENT, "product out of bounds"
            );

            return uint256(exp(logx_times_y));
        }
    }

    /**
     * @dev Internal natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function _ln(int256 a) private pure returns (int256) {
        unchecked {
            if (a < ONE_18) {
                // Since ln(a^k) = k * ln(a), we can compute ln(a) as ln(a) = ln((1/a)^(-1)) = -
                // ln((1/a)). If a is less
                // than one, 1/a will be greater than one, and this if statement will not be entered
                // in the recursive
                // call.
                // Fixed point division requires multiplying by ONE_18.
                return (-_ln((ONE_18 * ONE_18) / a));
            }

            // First, we use the fact that ln^(a * b) = ln(a) + ln(b) to decompose ln(a) into a sum
            // of powers of two,
            // which
            // we call x_n, where x_n == 2^(7 - n), which are the natural logarithm of precomputed
            // quantities a_n (that
            // is,
            // ln(a_n) = x_n). We choose the first x_n, x0, to equal 2^7 because the exponential of
            // all larger powers
            // cannot
            // be represented as 18 fixed point decimal numbers in 256 bits, and are therefore
            // larger than a.
            // At the end of this process we will have the sum of all x_n = ln(a_n) that apply, and
            // the remainder of
            // this
            // decomposition, which will be lower than the smallest a_n.
            // ln(a) = k_0 * x_0 + k_1 * x_1 + ... + k_n * x_n + ln(remainder), where each k_n
            // equals either 0 or 1.
            // We mutate a by subtracting a_n, making it the remainder of the decomposition.

            // For reasons related to how `exp` works, the first two a_n (e^(2^7) and e^(2^6)) are
            // not stored as fixed
            // point
            // numbers with 18 decimals, but instead as plain integers with 0 decimals, so we need
            // to multiply them by
            // ONE_18 to convert them to fixed point.
            // For each a_n, we test if that term is present in the decomposition (if a is larger
            // than it), and if so
            // divide
            // by it and compute the accumulated sum.

            int256 sum = 0;
            if (a >= a0 * ONE_18) {
                a /= a0; // Integer, not fixed point division
                sum += x0;
            }

            if (a >= a1 * ONE_18) {
                a /= a1; // Integer, not fixed point division
                sum += x1;
            }

            // All other a_n and x_n are stored as 20 digit fixed point numbers, so we convert the
            // sum and a to this
            // format.
            sum *= 100;
            a *= 100;

            // Because further a_n are 20 digit fixed point numbers, we multiply by ONE_20 when
            // dividing by them.

            if (a >= a2) {
                a = (a * ONE_20) / a2;
                sum += x2;
            }

            if (a >= a3) {
                a = (a * ONE_20) / a3;
                sum += x3;
            }

            if (a >= a4) {
                a = (a * ONE_20) / a4;
                sum += x4;
            }

            if (a >= a5) {
                a = (a * ONE_20) / a5;
                sum += x5;
            }

            if (a >= a6) {
                a = (a * ONE_20) / a6;
                sum += x6;
            }

            if (a >= a7) {
                a = (a * ONE_20) / a7;
                sum += x7;
            }

            if (a >= a8) {
                a = (a * ONE_20) / a8;
                sum += x8;
            }

            if (a >= a9) {
                a = (a * ONE_20) / a9;
                sum += x9;
            }

            if (a >= a10) {
                a = (a * ONE_20) / a10;
                sum += x10;
            }

            if (a >= a11) {
                a = (a * ONE_20) / a11;
                sum += x11;
            }

            // a is now a small number (smaller than a_11, which roughly equals 1.06). This means we
            // can use a Taylor
            // series
            // that converges rapidly for values of `a` close to one - the same one used in ln_36.
            // Let z = (a - 1) / (a + 1).
            // ln(a) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

            // Recall that 20 digit fixed point division requires multiplying by ONE_20, and
            // multiplication requires
            // division by ONE_20.
            int256 z = ((a - ONE_20) * ONE_20) / (a + ONE_20);
            int256 z_squared = (z * z) / ONE_20;

            // num is the numerator of the series: the z^(2 * n + 1) term
            int256 num = z;

            // seriesSum holds the accumulated sum of each term in the series, starting with the
            // initial z
            int256 seriesSum = num;

            // In each step, the numerator is multiplied by z^2
            num = (num * z_squared) / ONE_20;
            seriesSum += num / 3;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 5;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 7;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 9;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 11;

            // 6 Taylor terms are sufficient for 36 decimal precision.

            // Finally, we multiply by 2 (non fixed point) to compute ln(remainder)
            seriesSum *= 2;

            // We now have the sum of all x_n present, and the Taylor approximation of the logarithm
            // of the remainder
            // (both
            // with 20 decimals). All that remains is to sum these two, and then drop two digits to
            // return a 18 decimal
            // value.

            return (sum + seriesSum) / 100;
        }
    }

    /**
     * @dev Intrnal high precision (36 decimal places) natural logarithm (ln(x)) with signed 18
     * decimal fixed point
     * argument,
     * for x close to one.
     *
     * Should only be used if x is between LN_36_LOWER_BOUND and LN_36_UPPER_BOUND.
     */
    function _ln_36(int256 x) private pure returns (int256) {
        unchecked {
            // Since ln(1) = 0, a value of x close to one will yield a very small result, which
            // makes using 36 digits
            // worthwhile.

            // First, we transform x to a 36 digit fixed point value.
            x *= ONE_18;

            // We will use the following Taylor expansion, which converges very rapidly. Let z = (x
            // - 1) / (x + 1).
            // ln(x) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

            // Recall that 36 digit fixed point division requires multiplying by ONE_36, and
            // multiplication requires
            // division by ONE_36.
            int256 z = ((x - ONE_36) * ONE_36) / (x + ONE_36);
            int256 z_squared = (z * z) / ONE_36;

            // num is the numerator of the series: the z^(2 * n + 1) term
            int256 num = z;

            // seriesSum holds the accumulated sum of each term in the series, starting with the
            // initial z
            int256 seriesSum = num;

            // In each step, the numerator is multiplied by z^2
            num = (num * z_squared) / ONE_36;
            seriesSum += num / 3;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 5;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 7;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 9;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 11;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 13;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 15;

            // 8 Taylor terms are sufficient for 36 decimal precision.

            // All that remains is multiplying by 2 (non fixed point).
            return seriesSum * 2;
        }
    }
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
// FILE: src/fira_bonding/libraries/MiniHelpers.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title MiniHelpers
/// @notice Small utility functions for time-based checks
/// @dev Provides expiry and timestamp validation helpers used throughout the protocol
library MiniHelpers {
    function isCurrentlyExpired(uint256 expiry) internal view returns (bool) {
        return (expiry <= block.timestamp);
    }

    function isExpired(uint256 expiry, uint256 blockTime) internal pure returns (bool) {
        return (expiry <= blockTime);
    }

    function isTimeInThePast(uint256 timestamp) internal view returns (bool) {
        return (timestamp <= block.timestamp); // same definition as isCurrentlyExpired
    }
}

// ============================================================
// FILE: src/fira_bonding/oracles/BCLpOracle.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../libraries/BoringOwnableUpgradeable.sol";
import "./BCOracleLib.sol";
import "./LpOracleLib.sol";

/// @title IPBCLpOracle
/// @notice Interface for the BCLpOracle contract providing TWAP price feeds for BT, CT, and LP tokens
interface IPBCLpOracle {
    /// @notice Emitted when the block cycle numerator is updated
    /// @param newBlockCycleNumerator The new block cycle numerator value
    event SetBlockCycleNumerator(uint16 newBlockCycleNumerator);

    /// @notice Returns the TWAP rate of BT per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/Asset rate scaled by 1e18
    function getBtToAssetRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of CT per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/Asset rate scaled by 1e18
    function getCtToAssetRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of LP per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/Asset rate scaled by 1e18
    function getLpToAssetRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of BT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/FW rate scaled by 1e18
    function getBtToFwRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of CT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/FW rate scaled by 1e18
    function getCtToFwRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of LP per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/FW rate scaled by 1e18
    function getLpToFwRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Checks if the market's oracle has sufficient cardinality for the requested duration
    /// @param market The Fira market address to check
    /// @param duration The desired TWAP duration in seconds
    /// @return increaseCardinalityRequired True if cardinality needs to be increased
    /// @return cardinalityRequired The minimum cardinality needed for the duration
    /// @return oldestObservationSatisfied True if oldest observation is old enough for the duration
    function getOracleState(address market, uint32 duration)
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied);

    /// @notice Returns the configured block cycle numerator
    /// @return The block cycle numerator used for cardinality calculations
    function blockCycleNumerator() external view returns (uint16);
}

/// @title BCLpOracle
/// @notice Pre-deployed oracle contract for BT, CT, and LP token price queries
/// @dev This is a pre-deployed version of BCOracleLib & LpOracleLib with additional utility functions.
///      Using this contract rather than direct library integration results in smaller bytecode size
///      and simpler structure, but slightly higher gas usage (~4000 gas for 2 external calls & 1 cold code load).
contract BCLpOracle is BoringOwnableUpgradeable, IPBCLpOracle {
    using BCOracleLib for IPMarket;
    using LpOracleLib for IPMarket;

    /// @notice Thrown when block cycle numerator is less than denominator
    error InvalidBlockRate(uint256 blockCycleNumerator);

    /// @notice Thrown when the requested TWAP duration requires more cardinality than uint16 max
    error TwapDurationTooLarge(uint32 duration, uint32 cardinalityRequired);

    /// @notice Block cycle numerator for cardinality calculations
    /// @dev Cardinality lowerbound = twap_duration * 1000 / blockCycleNumerator
    ///      Should be configured so that blockCycleNumerator / 1000 < actual block cycle time
    ///      Must be >= 1000 since oracle only records one rate per timestamp
    ///      Examples: Ethereum = 11000 (11 < 12s blocks), Arbitrum = 1000 (minimum)
    uint16 public blockCycleNumerator;

    /// @notice Denominator used with blockCycleNumerator for cardinality calculations
    uint16 public constant BLOCK_CYCLE_DENOMINATOR = 1000;

    /// @notice Initializes the oracle with a block cycle numerator
    /// @param _blockCycleNumerator The block cycle numerator for this chain
    constructor(uint16 _blockCycleNumerator) initializer {
        _setBlockCycleNumerator(_blockCycleNumerator);
        __BoringOwnable_init();
    }

    /* ///////////////////////////////////////////////////////////////
                    BT, CT, LP to FW
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the TWAP rate of BT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/FW rate scaled by 1e18
    function getBtToFwRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getBtToFwRate(duration);
    }

    /// @notice Returns the TWAP rate of CT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/FW rate scaled by 1e18
    function getCtToFwRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getCtToFwRate(duration);
    }

    /// @notice Returns the TWAP rate of LP per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/FW rate scaled by 1e18
    function getLpToFwRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getLpToFwRate(duration);
    }

    /* ///////////////////////////////////////////////////////////////
                    BT, CT, LP to Asset
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the TWAP rate of BT per underlying asset
    /// @dev Caution: Consider the risk of not being able to withdraw from FW to Asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/Asset rate scaled by 1e18
    function getBtToAssetRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getBtToAssetRate(duration);
    }

    /// @notice Returns the TWAP rate of CT per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/Asset rate scaled by 1e18
    function getCtToAssetRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getCtToAssetRate(duration);
    }

    /// @notice Returns the TWAP rate of LP per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/Asset rate scaled by 1e18
    function getLpToAssetRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getLpToAssetRate(duration);
    }

    /* ///////////////////////////////////////////////////////////////
                        Utility functions
    //////////////////////////////////////////////////////////////*/

    /// @notice Checks if the market's oracle can support the requested TWAP duration
    /// @dev Returns information about cardinality requirements and observation history
    /// @param market The Fira market address to check
    /// @param duration The desired TWAP duration in seconds
    /// @return increaseCardinalityRequired True if reserved cardinality is insufficient
    /// @return cardinalityRequired The minimum cardinality needed for the duration
    /// @return oldestObservationSatisfied True if oldest observation timestamp is old enough
    function getOracleState(address market, uint32 duration)
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied)
    {
        (,,, uint16 observationIndex, uint16 observationCardinality, uint16 cardinalityReserved) =
            IPMarket(market)._storage();

        // checkIncreaseCardinalityRequired
        cardinalityRequired = _calcCardinalityRequiredRequired(duration);
        increaseCardinalityRequired = cardinalityReserved < cardinalityRequired;

        // check oldestObservationSatisfied
        (uint32 oldestTimestamp,, bool initialized) =
            IPMarket(market).observations((observationIndex + 1) % observationCardinality);
        if (!initialized) {
            (oldestTimestamp,,) = IPMarket(market).observations(0);
        }
        oldestObservationSatisfied = oldestTimestamp < block.timestamp - duration;
    }

    /// @notice Calculates the cardinality required for a given TWAP duration
    /// @dev Uses block cycle numerator to estimate observations needed
    /// @param duration The TWAP duration in seconds
    /// @return The minimum cardinality required
    function _calcCardinalityRequiredRequired(uint32 duration) internal view returns (uint16) {
        uint32 cardinalityRequired =
            (duration * BLOCK_CYCLE_DENOMINATOR + blockCycleNumerator - 1) / blockCycleNumerator + 1;
        if (cardinalityRequired > type(uint16).max) {
            revert TwapDurationTooLarge(duration, cardinalityRequired);
        }
        return uint16(cardinalityRequired);
    }

    /// @notice Updates the block cycle numerator
    /// @dev Should only be called by authorized accounts (access control not shown)
    /// @param newBlockCycleNumerator The new block cycle numerator value
    function setBlockCycleNumerator(uint16 newBlockCycleNumerator) external onlyOwner {
        _setBlockCycleNumerator(newBlockCycleNumerator);
    }

    /// @notice Internal function to set the block cycle numerator with validation
    /// @param newBlockCycleNumerator The new block cycle numerator value
    function _setBlockCycleNumerator(uint16 newBlockCycleNumerator) internal {
        if (newBlockCycleNumerator < BLOCK_CYCLE_DENOMINATOR) {
            revert InvalidBlockRate(newBlockCycleNumerator);
        }

        blockCycleNumerator = newBlockCycleNumerator;
        emit SetBlockCycleNumerator(newBlockCycleNumerator);
    }
}

// ============================================================
// FILE: src/fira_bonding/oracles/BCOracleLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPMarket.sol";
import "../libraries/math/PMath.sol";

/// @title BCOracleLib
/// @notice Library for computing TWAP rates for BT (Bond Token) and CT (Coupon Token) relative to assets
/// @dev This library can and should be integrated directly for optimal gas usage.
///      If direct integration is not preferred, use the BCLpOracle contract (pre-deployed version).
///      Handles edge cases where FW becomes insolvent with decreasing exchange rate.
library BCOracleLib {
    using PMath for uint256;
    using PMath for int256;

    /// @notice Returns the TWAP rate of BT per underlying asset, adjusted for FW solvency
    /// @dev Accounts for edge cases where underlying asset becomes insolvent with decreasing exchange rate.
    ///      If FW index < BC index (insolvency), scales down the rate proportionally.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/Asset rate scaled by 1e18
    function getBtToAssetRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getBtToAssetRateRaw(market, duration);
        } else {
            return (getBtToAssetRateRaw(market, duration) * fwIndex) / bcIndex;
        }
    }

    /// @notice Returns the TWAP rate of CT per underlying asset, adjusted for FW solvency
    /// @dev Accounts for edge cases where underlying asset becomes insolvent with decreasing exchange rate.
    ///      If FW index < BC index (insolvency), scales down the rate proportionally.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/Asset rate scaled by 1e18
    function getCtToAssetRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getCtToAssetRateRaw(market, duration);
        } else {
            return (getCtToAssetRateRaw(market, duration) * fwIndex) / bcIndex;
        }
    }

    /// @notice Returns the TWAP rate of BT per FW token, adjusted for FW solvency
    /// @dev Divides the asset rate by the appropriate index (FW or BC) based on solvency
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/FW rate scaled by 1e18
    function getBtToFwRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getBtToAssetRateRaw(market, duration).divDown(fwIndex);
        } else {
            return getBtToAssetRateRaw(market, duration).divDown(bcIndex);
        }
    }

    /// @notice Returns the TWAP rate of CT per FW token, adjusted for FW solvency
    /// @dev Divides the asset rate by the appropriate index (FW or BC) based on solvency
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/FW rate scaled by 1e18
    function getCtToFwRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getCtToAssetRateRaw(market, duration).divDown(fwIndex);
        } else {
            return getCtToAssetRateRaw(market, duration).divDown(bcIndex);
        }
    }

    /// @notice Returns the raw BT/Asset rate without FW solvency adjustment
    /// @dev Post-expiry, 1 BT = 1 Asset. Pre-expiry, uses TWAP implied rate to calculate discount.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The raw BT/Asset rate scaled by 1e18
    function getBtToAssetRateRaw(IPMarket market, uint32 duration) public view returns (uint256) {
        uint256 expiry = market.expiry();

        if (expiry <= block.timestamp) {
            return PMath.ONE;
        } else {
            uint256 lnImpliedRate = getMarketLnImpliedRate(market, duration);
            uint256 timeToExpiry = expiry - block.timestamp;
            uint256 assetToBtRate = MarketMathCore._getExchangeRateFromImpliedRate(lnImpliedRate, timeToExpiry).Uint();
            return PMath.ONE.divDown(assetToBtRate);
        }
    }

    /// @notice Returns the raw CT/Asset rate without FW solvency adjustment
    /// @dev CT value = 1 - BT value (since BT + CT = 1 asset)
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The raw CT/Asset rate scaled by 1e18
    function getCtToAssetRateRaw(IPMarket market, uint32 duration) public view returns (uint256) {
        return PMath.ONE - getBtToAssetRateRaw(market, duration);
    }

    /// @notice Returns the current FW and BC indices for a market
    /// @dev BC index is max(fwIndex, bcIndexStored) unless caching is enabled and index was updated this block
    /// @param market The Fira market to query
    /// @return fwIndex The current FW exchange rate
    /// @return bcIndex The current BC index (used for BT+CT minting/redeeming)
    function getFWandBCIndexCurrent(IPMarket market) public view returns (uint256 fwIndex, uint256 bcIndex) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = market.readTokens();

        fwIndex = FW.exchangeRate();
        uint256 bcIndexStored = CT.bcIndexStored();

        if (CT.doCacheIndexSameBlock() && CT.bcIndexLastUpdatedBlock() == block.number) {
            bcIndex = bcIndexStored;
        } else {
            bcIndex = PMath.max(fwIndex, bcIndexStored);
        }
    }

    /// @notice Returns the TWAP ln(impliedRate) for a market over a given duration
    /// @dev Queries the market's oracle for cumulative values and computes the average.
    ///      When duration is 0, returns the spot rate directly from market storage.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds (0 for spot rate)
    /// @return The average ln(impliedRate) over the duration, or spot rate if duration is 0
    function getMarketLnImpliedRate(IPMarket market, uint32 duration) public view returns (uint256) {
        if (duration == 0) {
            (,, uint96 lastLnImpliedRate,,,) = market._storage();
            return uint256(lastLnImpliedRate);
        }

        uint32[] memory durations = new uint32[](2);
        durations[0] = duration;

        uint216[] memory lnImpliedRateCumulative = market.observe(durations);
        return (lnImpliedRateCumulative[1] - lnImpliedRateCumulative[0]) / duration;
    }
}

// ============================================================
// FILE: src/fira_bonding/oracles/LpOracleLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./BCOracleLib.sol";

/// @title LpOracleLib
/// @notice Library for computing TWAP rates for LP tokens relative to assets and FW
/// @dev Calculates LP token value by simulating a hypothetical trade to rebalance the pool,
///      then computing the total asset value. Accounts for FW insolvency edge cases.
library LpOracleLib {
    using BCOracleLib for IPMarket;
    using PMath for uint256;
    using PMath for int256;
    using MarketMathCore for MarketState;

    /// @notice Returns the approximated TWAP rate of LP per underlying asset, adjusted for FW solvency
    /// @dev Calculates LP value by simulating a hypothetical rebalancing trade at the oracle rate.
    ///      If FW index < BC index (insolvency), scales down the rate proportionally.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/Asset rate scaled by 1e18
    function getLpToAssetRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = market.getFWandBCIndexCurrent();
        uint256 lpToAssetRateRaw = _getLpToAssetRateRaw(market, duration, bcIndex);
        if (fwIndex >= bcIndex) {
            return lpToAssetRateRaw;
        } else {
            return (lpToAssetRateRaw * fwIndex) / bcIndex;
        }
    }

    /// @notice Returns the approximated TWAP rate of LP per FW token, adjusted for FW solvency
    /// @dev Calculates LP value and divides by the appropriate index (FW or BC) based on solvency
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/FW rate scaled by 1e18
    function getLpToFwRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = market.getFWandBCIndexCurrent();
        uint256 lpToAssetRateRaw = _getLpToAssetRateRaw(market, duration, bcIndex);
        if (fwIndex >= bcIndex) {
            return lpToAssetRateRaw.divDown(fwIndex);
        } else {
            return lpToAssetRateRaw.divDown(bcIndex);
        }
    }

    /// @notice Calculates the raw LP/Asset rate without FW solvency adjustment
    /// @dev Post-expiry: LP value = totalBt + fwToAsset(totalFw) / totalLp
    ///      Pre-expiry: Simulates a hypothetical trade to calculate total asset value at oracle rate
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @param bcIndex The current BC index for asset conversion
    /// @return lpToAssetRateRaw The raw LP/Asset rate scaled by 1e18
    function _getLpToAssetRateRaw(IPMarket market, uint32 duration, uint256 bcIndex)
        public
        view
        returns (uint256 lpToAssetRateRaw)
    {
        MarketState memory state = market.readState(address(0));

        int256 totalHypotheticalAsset;
        if (state.expiry <= block.timestamp) {
            // 1 BT = 1 Asset post-expiry
            totalHypotheticalAsset = state.totalBt + BCIndexLib.fwToAsset(BCIndex.wrap(bcIndex), state.totalFw);
        } else {
            MarketPreCompute memory comp = state.getMarketPreCompute(BCIndex.wrap(bcIndex), block.timestamp);

            (int256 rateOracle, int256 rateHypTrade) = _getBtRatesRaw(market, state, duration);
            int256 cParam = LogExpMath.exp(comp.rateScalar.mulDown((rateOracle - comp.rateAnchor)));

            int256 tradeSize =
                (cParam.mulDown(comp.totalAsset) - state.totalBt).divDown(PMath.IONE + cParam.divDown(rateHypTrade));

            totalHypotheticalAsset =
                comp.totalAsset - tradeSize.divDown(rateHypTrade) + (state.totalBt + tradeSize).divDown(rateOracle);
        }

        lpToAssetRateRaw = totalHypotheticalAsset.divDown(state.totalLp).Uint();
    }

    /// @notice Calculates the oracle and hypothetical trade BT rates
    /// @dev The hypothetical trade rate is the average of the oracle rate and the last trade rate,
    ///      used for simulating the rebalancing trade impact.
    /// @param market The Fira market to query
    /// @param state The current market state
    /// @param duration The TWAP duration in seconds
    /// @return rateOracle The BT exchange rate from the oracle TWAP
    /// @return rateHypTrade The hypothetical trade rate (average of oracle and last trade)
    function _getBtRatesRaw(IPMarket market, MarketState memory state, uint32 duration)
        public
        view
        returns (int256 rateOracle, int256 rateHypTrade)
    {
        uint256 lnImpliedRate = market.getMarketLnImpliedRate(duration);
        uint256 timeToExpiry = state.expiry - block.timestamp;
        rateOracle = MarketMathCore._getExchangeRateFromImpliedRate(lnImpliedRate, timeToExpiry);

        int256 rateLastTrade = MarketMathCore._getExchangeRateFromImpliedRate(state.lastLnImpliedRate, timeToExpiry);
        rateHypTrade = (rateLastTrade + rateOracle) / 2;
    }
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
// FILE: src/interfaces/IFiraWrappedStandardized.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */

pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IFiraWrappedStandardized is IERC20Metadata {
    /// @dev Emitted when any base tokens is deposited to mint shares
    event Deposit(
        address indexed caller,
        address indexed receiver,
        address indexed tokenIn,
        uint256 amountDeposited,
        uint256 amountFwOut
    );

    /// @dev Emitted when any shares are redeemed for base tokens
    event Redeem(
        address indexed caller,
        address indexed receiver,
        address indexed tokenOut,
        uint256 amountFwToRedeem,
        uint256 amountTokenOut
    );

    /// @dev Emitted when deposits are paused or unpaused
    event DepositsPaused(bool paused);
    /// @dev Emitted when redemptions are paused or unpaused
    event RedemptionsPaused(bool paused);
    /// @dev Emitted when pauser is changed
    event PauserChanged(address indexed newPauser);

    /// @dev check `assetInfo()` for more information
    enum AssetType {
        TOKEN,
        LIQUIDITY
    }

    /// @dev Emitted when (`user`) claims their rewards
    event ClaimRewards(address indexed user, address[] rewardTokens, uint256[] rewardAmounts);

    /**
     * @notice mints an amount of shares by depositing a base token.
     * @param receiver shares recipient address
     * @param tokenIn address of the base tokens to mint shares
     * @param amountTokenToDeposit amount of base tokens to be transferred from (`msg.sender`)
     * @param minSharesOut reverts if amount of shares minted is lower than this
     * @return amountSharesOut amount of shares minted
     * @dev Emits a {Deposit} event
     *
     * Requirements:
     * - (`tokenIn`) must be a valid base token.
     */
    function deposit(address receiver, address tokenIn, uint256 amountTokenToDeposit, uint256 minSharesOut)
        external
        payable
        returns (uint256 amountSharesOut);

    /**
     * @notice redeems an amount of base tokens by burning some shares
     * @param receiver recipient address
     * @param amountSharesToRedeem amount of shares to be burned
     * @param tokenOut address of the base token to be redeemed
     * @param minTokenOut reverts if amount of base token redeemed is lower than this
     * @param burnFromInternalBalance if true, burns from balance of `address(this)`, otherwise
     * burns from `msg.sender`
     * @return amountTokenOut amount of base tokens redeemed
     * @dev Emits a {Redeem} event
     *
     * Requirements:
     * - (`tokenOut`) must be a valid base token.
     */
    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    ) external returns (uint256 amountTokenOut);

    /**
     * @notice exchangeRate * fwBalance / 1e18 must return the asset balance of the account
     * @notice vice-versa, if a user uses some amount of tokens equivalent to X asset, the amount of
     * fw
     *  he can mint must be X * exchangeRate / 1e18
     * @dev FWUtils's assetToFw & fwToAsset should be used instead of raw multiplication
     *  & division
     */
    function exchangeRate() external view returns (uint256 res);

    /**
     * @notice claims reward for (`user`)
     * @param user the user receiving their rewards
     * @return rewardAmounts an array of reward amounts in the same order as `getRewardTokens`
     * @dev
     * Emits a `ClaimRewards` event
     * See {getRewardTokens} for list of reward tokens
     */
    function claimRewards(address user) external returns (uint256[] memory rewardAmounts);

    /**
     * @notice get the amount of unclaimed rewards for (`user`)
     * @param user the user to check for
     * @return rewardAmounts an array of reward amounts in the same order as `getRewardTokens`
     */
    function accruedRewards(address user) external view returns (uint256[] memory rewardAmounts);

    function rewardIndexesCurrent() external returns (uint256[] memory indexes);

    function rewardIndexesStored() external view returns (uint256[] memory indexes);

    /**
     * @notice returns the list of reward token addresses
     */
    function getRewardTokens() external view returns (address[] memory);

    /**
     * @notice returns the address of the underlying yield token
     */
    function yieldToken() external view returns (address);

    /**
     * @notice returns all tokens that can mint this FW
     */
    function getTokensIn() external view returns (address[] memory res);

    /**
     * @notice returns all tokens that can be redeemed by this FW
     */
    function getTokensOut() external view returns (address[] memory res);

    function isValidTokenIn(address token) external view returns (bool);

    function isValidTokenOut(address token) external view returns (bool);

    function previewDeposit(address tokenIn, uint256 amountTokenToDeposit)
        external
        view
        returns (uint256 amountSharesOut);

    function previewRedeem(address tokenOut, uint256 amountSharesToRedeem)
        external
        view
        returns (uint256 amountTokenOut);

    /**
     * @notice This function contains information to interpret what the asset is
     * @return assetType the type of the asset (0 for ERC20 tokens, 1 for AMM liquidity tokens,
     *     2 for bridged yield bearing tokens like wstETH, rETH on Arbi whose the underlying asset
     * doesn't exist on the
     * chain)
     * @return assetAddress the address of the asset
     * @return assetDecimals the decimals of the asset
     */
    function assetInfo() external view returns (AssetType assetType, address assetAddress, uint8 assetDecimals);
}

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
// FILE: src/interfaces/IPMarket.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/core/Market/MarketMathCore.sol";

import "./IBondToken.sol";

import "./IBCToken.sol";
import "./IFiraWrappedStandardized.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IPMarket is IERC20Metadata {
    event Mint(address indexed receiver, uint256 netLpMinted, uint256 netFwUsed, uint256 netBtUsed);

    event Burn(
        address indexed receiverFw, address indexed receiverBt, uint256 netLpBurned, uint256 netFwOut, uint256 netBtOut
    );

    event Swap(
        address indexed caller,
        address indexed receiver,
        int256 netBtOut,
        int256 netFwOut,
        uint256 netFwFee,
        uint256 netFwToReserve
    );

    event UpdateImpliedRate(uint256 indexed timestamp, uint256 lnLastImpliedRate);

    event IncreaseObservationCardinalityNext(
        uint16 observationCardinalityNextOld, uint16 observationCardinalityNextNew
    );

    function mint(address receiver, uint256 netFwDesired, uint256 netBtDesired)
        external
        returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed);

    function burn(address receiverFw, address receiverBt, uint256 netLpToBurn)
        external
        returns (uint256 netFwOut, uint256 netBtOut);

    function swapExactBtForFw(address receiver, uint256 exactBtIn, bytes calldata data)
        external
        returns (uint256 netFwOut, uint256 netFwFee);

    function swapFwForExactBt(address receiver, uint256 exactBtOut, bytes calldata data)
        external
        returns (uint256 netFwIn, uint256 netFwFee);

    function redeemRewards(address user) external returns (uint256[] memory);

    function readState(address router) external view returns (MarketState memory market);

    function observe(uint32[] memory secondsAgos) external view returns (uint216[] memory lnImpliedRateCumulative);

    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external;

    function readTokens() external view returns (IFiraWrappedStandardized _FW, IBondToken _BT, IBCToken _CT);

    function getRewardTokens() external view returns (address[] memory);

    function isExpired() external view returns (bool);

    function expiry() external view returns (uint256);

    function observations(uint256 index)
        external
        view
        returns (uint32 blockTimestamp, uint216 lnImpliedRateCumulative, bool initialized);

    function _storage()
        external
        view
        returns (
            int128 totalBt,
            int128 totalFw,
            uint96 lastLnImpliedRate,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext
        );
}
