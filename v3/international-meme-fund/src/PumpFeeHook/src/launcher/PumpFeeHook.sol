// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { ReentrancyGuardTransient } from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { BaseHook } from "@uniswap/v4-periphery/src/utils/BaseHook.sol";
import { Hooks } from "@uniswap/v4-core/src/libraries/Hooks.sol";
import { IHooks } from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { BalanceDelta } from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import {
    BeforeSwapDelta,
    BeforeSwapDeltaLibrary,
    toBeforeSwapDelta
} from "@uniswap/v4-core/src/types/BeforeSwapDelta.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { LPFeeLibrary } from "@uniswap/v4-core/src/libraries/LPFeeLibrary.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { SwapParams } from "@uniswap/v4-core/src/types/PoolOperation.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import { SafeCast } from "@uniswap/v4-core/src/libraries/SafeCast.sol";

import { IBondingCurve } from "./interfaces/IBondingCurve.sol";
import { IFactory } from "./interfaces/IFactory.sol";
import { IToken } from "./interfaces/IToken.sol";
import { IPumpFeeHook } from "./interfaces/IPumpFeeHook.sol";
import { IV4Migrator } from "./interfaces/IV4Migrator.sol";

/// @title  PumpFeeHook
/// @notice v4 hook that resolves a per-pool fee tier from the token's market cap and
///         charges (creator + protocol) fees on the trader's input currency. The LP fee
///         is applied natively by the pool via the dynamic-fee override.
/// @dev    Tiers are baked at construction. Boundaries are exclusive-upper; the final tier
///         must end at `type(uint256).max`. The hook address must encode the permission
///         flags listed in {getHookPermissions} in its low 14 bits.
contract PumpFeeHook is IPumpFeeHook, BaseHook, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using Address for address payable;
    using StateLibrary for IPoolManager;
    using LPFeeLibrary for uint24;

    /* -------------------------------------------------------------------------- */
    /*                                   ERRORS                                   */
    /* -------------------------------------------------------------------------- */

    error ZeroAddress();
    error NotBondingCurve(address sender);
    error PoolNotRegistered(PoolId id);
    error CurrencyMismatch();
    error AlreadyInitialized(PoolId id);
    error InvalidTierSchedule();

    /* -------------------------------------------------------------------------- */
    /*                                  CONSTANTS                                 */
    /* -------------------------------------------------------------------------- */

    /// @notice Fee denominator. v4 pips = hundredths of a bip; 1 % = 10 000 pips.
    uint256 public constant PIPS_DENOM = 1_000_000;

    /// @notice Cap on `creatorPips + protocolPips` per tier. LP fee is capped separately
    ///         by {LPFeeLibrary.MAX_LP_FEE}.
    uint256 public constant MAX_HOOK_FEE_PIPS = 15_000;

    /* -------------------------------------------------------------------------- */
    /*                                 IMMUTABLES                                 */
    /* -------------------------------------------------------------------------- */

    IFactory public immutable FACTORY;

    /// @inheritdoc IPumpFeeHook
    address public immutable override PROTOCOL_FEE_RECIPIENT;

    /* -------------------------------------------------------------------------- */
    /*                                  STORAGE                                   */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IPumpFeeHook
    mapping(PoolId id => PoolState) public override poolState;

    /// @inheritdoc IPumpFeeHook
    mapping(PoolId id => mapping(Currency => uint256)) public override creatorOwed;

    /// @inheritdoc IPumpFeeHook
    mapping(PoolId id => mapping(Currency => uint256)) public override protocolOwed;

    Tier[] private _tiers;

    /* -------------------------------------------------------------------------- */
    /*                                CONSTRUCTOR                                 */
    /* -------------------------------------------------------------------------- */

    /// @param manager_              v4 PoolManager.
    /// @param factory_              Launcher factory; gates which curves can register pools.
    /// @param protocolFeeRecipient_ Receives the protocol share on {skim}.
    /// @param tiers_                Sorted ascending by `mcUpperBoundWei`, ending at
    ///                              `type(uint256).max`. Each tier's
    ///                              `creatorPips + protocolPips` ≤ {MAX_HOOK_FEE_PIPS}.
    constructor(IPoolManager manager_, IFactory factory_, address protocolFeeRecipient_, Tier[] memory tiers_)
        BaseHook(manager_)
    {
        if (address(factory_) == address(0) || protocolFeeRecipient_ == address(0)) revert ZeroAddress();
        _installTiers(tiers_);
        FACTORY = factory_;
        PROTOCOL_FEE_RECIPIENT = protocolFeeRecipient_;
    }

    /* -------------------------------------------------------------------------- */
    /*                              HOOK PERMISSIONS                              */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc BaseHook
    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: false,
            afterInitialize: true,
            beforeAddLiquidity: false,
            afterAddLiquidity: false,
            beforeRemoveLiquidity: false,
            afterRemoveLiquidity: false,
            beforeSwap: true,
            afterSwap: true,
            beforeDonate: false,
            afterDonate: false,
            beforeSwapReturnDelta: true,
            afterSwapReturnDelta: true,
            afterAddLiquidityReturnDelta: false,
            afterRemoveLiquidityReturnDelta: false
        });
    }

    /* -------------------------------------------------------------------------- */
    /*                               afterInitialize                              */
    /* -------------------------------------------------------------------------- */

    function _afterInitialize(address sender, PoolKey calldata key, uint160, int24) internal override returns (bytes4) {
        PoolId id = key.toId();
        if (poolState[id].creator != address(0)) revert AlreadyInitialized(id);

        // Layered impersonation defense: sender must be the migrator currently driving this
        // initialize call, the resolved curve must be factory-registered, and that curve
        // must point back at the same migrator.
        address curveAddr = IV4Migrator(sender).currentGraduatingCurve();
        if (curveAddr == address(0) || !FACTORY.isBondingCurve(curveAddr)) revert NotBondingCurve(curveAddr);

        IBondingCurve curve = IBondingCurve(curveAddr);
        if (curve.MIGRATOR() != sender) revert NotBondingCurve(curveAddr);

        address tok = curve.TOKEN();
        bool c0 = Currency.unwrap(key.currency0) == tok;
        bool c1 = Currency.unwrap(key.currency1) == tok;
        if (c0 == c1) revert CurrencyMismatch();

        poolState[id] = PoolState({ creator: curve.CREATOR(), token: tok });
        emit PoolRegistered(id, curveAddr, curve.CREATOR());

        return IHooks.afterInitialize.selector;
    }

    /* -------------------------------------------------------------------------- */
    /*                                 beforeSwap                                 */
    /* -------------------------------------------------------------------------- */

    /// @dev Cast-safety: `totalFee ≤ inputAmount * MAX_HOOK_FEE_PIPS / PIPS_DENOM`, and v4
    ///      bounds `inputAmount` at `int256.max`. Therefore `int256(totalFee)` never wraps,
    ///      and {SafeCast.toInt128} reverts if the result does not fit in int128.
    function _beforeSwap(address, PoolKey calldata key, SwapParams calldata params, bytes calldata)
        internal
        override
        returns (bytes4, BeforeSwapDelta, uint24)
    {
        PoolId id = key.toId();
        PoolState memory ps = poolState[id];
        if (ps.creator == address(0)) revert PoolNotRegistered(id);

        // Tier resolved at pre-swap spot price.
        (uint8 tierIdx, Tier memory t) = _tierForSpot(id, ps.token, key);

        // The override fee applies to LP for both swap directions; beforeSwap runs first.
        uint24 lpFeeOverride = t.lpPips | LPFeeLibrary.OVERRIDE_FEE_FLAG;

        if (params.amountSpecified >= 0) {
            // exactOutput: hook fee taken from the input side in afterSwap.
            return (IHooks.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride);
        }

        uint256 totalHookPips = uint256(t.creatorPips) + uint256(t.protocolPips);
        if (totalHookPips == 0) {
            return (IHooks.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride);
        }

        uint256 inputAmount = uint256(-params.amountSpecified);
        uint256 creatorFee = Math.mulDiv(inputAmount, t.creatorPips, PIPS_DENOM);
        uint256 protocolFee = Math.mulDiv(inputAmount, t.protocolPips, PIPS_DENOM);
        uint256 totalFee = creatorFee + protocolFee;
        if (totalFee == 0) {
            return (IHooks.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride);
        }

        Currency inputCurrency = params.zeroForOne ? key.currency0 : key.currency1;
        creatorOwed[id][inputCurrency] += creatorFee;
        protocolOwed[id][inputCurrency] += protocolFee;
        emit FeeAccrued(id, inputCurrency, creatorFee, protocolFee, tierIdx);

        poolManager.take(inputCurrency, address(this), totalFee);

        return (IHooks.beforeSwap.selector, toBeforeSwapDelta(SafeCast.toInt128(int256(totalFee)), 0), lpFeeOverride);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  afterSwap                                 */
    /* -------------------------------------------------------------------------- */

    /// @dev Same cast-safety reasoning as {_beforeSwap}; `inputSigned` is int128 (from
    ///      {BalanceDelta}) and checked positive before the uint128→uint256 widen.
    function _afterSwap(address, PoolKey calldata key, SwapParams calldata params, BalanceDelta delta, bytes calldata)
        internal
        override
        returns (bytes4, int128)
    {
        if (params.amountSpecified < 0) {
            // exactInput is handled in beforeSwap.
            return (IHooks.afterSwap.selector, int128(0));
        }

        PoolId id = key.toId();
        PoolState memory ps = poolState[id];
        if (ps.creator == address(0)) revert PoolNotRegistered(id);

        (uint8 tierIdx, Tier memory t) = _tierForSpot(id, ps.token, key);
        uint256 totalHookPips = uint256(t.creatorPips) + uint256(t.protocolPips);
        if (totalHookPips == 0) return (IHooks.afterSwap.selector, int128(0));

        // For exactOutput the unspecified side is the input; flip the pool's negative delta.
        int128 inputSigned;
        Currency inputCurrency;
        if (params.zeroForOne) {
            inputSigned = -delta.amount0();
            inputCurrency = key.currency0;
        } else {
            inputSigned = -delta.amount1();
            inputCurrency = key.currency1;
        }
        if (inputSigned <= 0) return (IHooks.afterSwap.selector, int128(0));

        uint256 inputAmount = uint256(uint128(inputSigned));
        uint256 creatorFee = Math.mulDiv(inputAmount, t.creatorPips, PIPS_DENOM);
        uint256 protocolFee = Math.mulDiv(inputAmount, t.protocolPips, PIPS_DENOM);
        uint256 totalFee = creatorFee + protocolFee;
        if (totalFee == 0) return (IHooks.afterSwap.selector, int128(0));

        creatorOwed[id][inputCurrency] += creatorFee;
        protocolOwed[id][inputCurrency] += protocolFee;
        emit FeeAccrued(id, inputCurrency, creatorFee, protocolFee, tierIdx);

        poolManager.take(inputCurrency, address(this), totalFee);

        return (IHooks.afterSwap.selector, SafeCast.toInt128(int256(totalFee)));
    }

    /* -------------------------------------------------------------------------- */
    /*                            CREATOR SYNC + SKIM                             */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IPumpFeeHook
    function syncCreator(PoolId id) external override {
        PoolState memory ps = poolState[id];
        if (ps.creator == address(0)) revert PoolNotRegistered(id);

        // Resolve the curve via the token's immutable `bondingCurve`; verify it's factory-
        // registered AND points back at the same token before adopting its CREATOR.
        address curveAddr = IToken(ps.token).bondingCurve();
        if (!FACTORY.isBondingCurve(curveAddr)) revert NotBondingCurve(curveAddr);
        if (IBondingCurve(curveAddr).TOKEN() != ps.token) revert NotBondingCurve(curveAddr);

        address newCreator = IBondingCurve(curveAddr).CREATOR();
        if (newCreator == address(0)) revert NotBondingCurve(curveAddr);

        address oldCreator = ps.creator;
        if (oldCreator == newCreator) return;
        poolState[id].creator = newCreator;
        emit CreatorSynced(id, oldCreator, newCreator);
    }

    /// @inheritdoc IPumpFeeHook
    function skim(PoolId id, Currency currency) external override nonReentrant {
        PoolState memory ps = poolState[id];
        if (ps.creator == address(0)) revert PoolNotRegistered(id);

        uint256 creatorAmt = creatorOwed[id][currency];
        uint256 protocolAmt = protocolOwed[id][currency];
        if (creatorAmt == 0 && protocolAmt == 0) return;

        creatorOwed[id][currency] = 0;
        protocolOwed[id][currency] = 0;

        bool creatorOk = _payout(ps.creator, currency, creatorAmt);
        bool protocolOk = _payout(PROTOCOL_FEE_RECIPIENT, currency, protocolAmt);

        if (!creatorOk) {
            creatorOwed[id][currency] = creatorAmt;
            emit PayoutFailed(id, ps.creator, currency, creatorAmt);
        }
        if (!protocolOk) {
            protocolOwed[id][currency] = protocolAmt;
            emit PayoutFailed(id, PROTOCOL_FEE_RECIPIENT, currency, protocolAmt);
        }

        emit Skimmed(id, msg.sender, currency, creatorAmt, protocolAmt, creatorOk, protocolOk);
    }

    function _payout(address to, Currency currency, uint256 amount) private returns (bool ok) {
        if (amount == 0) return true;
        if (Currency.unwrap(currency) == address(0)) {
            (ok,) = payable(to).call{ value: amount, gas: 30_000 }("");
        } else {
            try IERC20(Currency.unwrap(currency)).transfer(to, amount) returns (bool success) {
                ok = success;
            } catch {
                ok = false;
            }
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   VIEWS                                    */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IPumpFeeHook
    function tierCount() external view override returns (uint256) {
        return _tiers.length;
    }

    /// @inheritdoc IPumpFeeHook
    function tierAt(uint256 i) external view override returns (Tier memory) {
        return _tiers[i];
    }

    /// @inheritdoc IPumpFeeHook
    function tierForMarketCap(uint256 mcWei) external view override returns (uint256 index, Tier memory tier) {
        index = _findTierIndex(mcWei);
        tier = _tiers[index];
    }

    /// @inheritdoc IPumpFeeHook
    function currentMarketCap(PoolId id) external view override returns (uint256) {
        return _marketCapFromSpot(id);
    }

    /* -------------------------------------------------------------------------- */
    /*                              INTERNAL HELPERS                              */
    /* -------------------------------------------------------------------------- */

    /// @dev Market cap from the pool's current sqrt price. The launcher always orients
    ///      currency0 = native ETH, so the token is currency1 and price (ETH/TOKEN) is
    ///      `2^192 / sqrtPrice^2`.
    function _marketCapFromSpot(PoolId id) internal view returns (uint256 mcWei) {
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(id);
        if (sqrtPriceX96 == 0) return 0;

        uint256 sqrtSquared = uint256(sqrtPriceX96) * uint256(sqrtPriceX96);
        uint256 supply = IToken(poolState[id].token).totalSupply();
        mcWei = Math.mulDiv(supply, 1 << 192, sqrtSquared);
    }

    function _tierForSpot(PoolId id, address, /*token*/ PoolKey calldata /*key*/ )
        internal
        view
        returns (uint8 index, Tier memory tier)
    {
        uint256 mc = _marketCapFromSpot(id);
        index = _findTierIndex(mc);
        tier = _tiers[index];
    }

    function _findTierIndex(uint256 mcWei) internal view returns (uint8) {
        uint256 n = _tiers.length;
        // Linear scan; n is small (typically <= 25). Lower tiers are the common case.
        for (uint256 i = 0; i < n; ++i) {
            if (mcWei < _tiers[i].mcUpperBoundWei) return uint8(i);
        }
        // Unreachable: the final tier's upper bound is `type(uint256).max`.
        return uint8(n - 1);
    }

    function _installTiers(Tier[] memory ts) private {
        uint256 n = ts.length;
        // Bound `n` so the `uint8` cast in {_findTierIndex} is safe by construction.
        if (n == 0 || n > type(uint8).max) revert InvalidTierSchedule();
        uint256 prevBound = 0;
        for (uint256 i = 0; i < n; ++i) {
            Tier memory t = ts[i];
            if (t.mcUpperBoundWei <= prevBound) revert InvalidTierSchedule();
            uint256 hookPips = uint256(t.creatorPips) + uint256(t.protocolPips);
            if (hookPips > MAX_HOOK_FEE_PIPS) revert InvalidTierSchedule();
            if (t.lpPips > LPFeeLibrary.MAX_LP_FEE) revert InvalidTierSchedule();
            prevBound = t.mcUpperBoundWei;
            _tiers.push(t);
        }
        if (_tiers[n - 1].mcUpperBoundWei != type(uint256).max) revert InvalidTierSchedule();
    }

    /// @dev Accept native ETH from `PoolManager.take`.
    receive() external payable { }
}
