// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {Constants} from "./lib/Constants.sol";
import {Types} from "./lib/Types.sol";
import {HookOracleLib} from "./lib/HookOracleLib.sol";
import {ISponsorCenter} from "./interfaces/ISponsorCenter.sol";
import {IRewardCenter} from "./interfaces/IRewardCenter.sol";
import {IAegisShares} from "AEGIS_DFF/contracts/interfaces/IAegisShares.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "@uniswap/v4-core/src/types/PoolId.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {FullMath} from "@uniswap/v4-core/src/libraries/FullMath.sol";
import {LiquidityAmounts} from "AEGIS_DFM/src/libraries/LiquidityAmounts.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {IAegisEngine} from "aegis-engine/contracts/interfaces/IAegisEngine.sol";
import {IAegisStateView} from "aegis-engine/contracts/interfaces/IAegisStateView.sol";
import {IOracleManager} from "aegis-engine/contracts/interfaces/IOracleManager.sol";
import {ISpot} from "AEGIS_DFM/src/interfaces/ISpot.sol";
import {TruncGeoOracleMulti} from "AEGIS_DFM/src/TruncGeoOracleMulti.sol";
import {IFullRangeLiquidityManager} from "AEGIS_DFM/src/interfaces/IFullRangeLiquidityManager.sol";

/// @notice RewardCenter handles reward valuation and payout using state sourced from SponsorCenter.
/// @dev Stateless with respect to pool bindings; relies on SponsorCenter getters and guarded hooks.
contract RewardCenter is IRewardCenter, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @inheritdoc IRewardCenter
    ISponsorCenter public immutable override sponsorCenter;

    modifier onlyTimelock() {
        if (msg.sender != sponsorCenter.timelock()) revert NotAuthorized();
        _;
    }

    modifier onlyMultisig() {
        if (msg.sender != sponsorCenter.multisig()) revert NotAuthorized();
        _;
    }

    // eligibility / oracle config
    mapping(address asset => PoolKey anchorPoolByAsset) internal _anchorPoolByAsset;
    /// @inheritdoc IRewardCenter
    mapping(address asset => bool) public override assetEligible;
    /// @inheritdoc IRewardCenter
    uint24 public override maxTwapTickSpread = 500;
    
    address private cachedAg;

    // engine wiring
    /// @inheritdoc IRewardCenter
    address public override aegisEngine;
    /// @inheritdoc IRewardCenter
    address public override aegisStateView;

    struct ClaimData {
        bytes32 poolId;
        address sponsorTba;
        address parentSponsorTba;
        uint256 polValueAgNow;
        uint256 baseline;
        uint256 delta;
        uint256 rewardValueAg;
        uint256 sponsorOut;
        uint256 agsOut;
        uint256 slotsGranted;
    }

    constructor(address sponsorCenter_) {
        if (sponsorCenter_ == address(0)) revert ZeroAddress();
        sponsorCenter = ISponsorCenter(sponsorCenter_);
    }

    // -------- Reward funding & claiming --------

    /// @inheritdoc IRewardCenter
    function fundRewards(uint256 amount) external override {
        if (amount == 0) {
            revert InvalidAmount();
        }
        address ags = sponsorCenter.agsToken();
        if (ags == address(0)) {
            revert NotInitialized();
        }
        uint256 beforeBalance = IERC20(ags).balanceOf(address(this));
        IERC20(ags).safeTransferFrom(msg.sender, address(this), amount);
        uint256 afterBalance = IERC20(ags).balanceOf(address(this));
        if (afterBalance <= beforeBalance) {
            revert InvalidAmount();
        }
        emit RewardsFunded(msg.sender, afterBalance - beforeBalance, afterBalance);
    }

    /// @inheritdoc IRewardCenter
    function claim(bytes32 poolId) external override nonReentrant returns (uint256 agsClaimed) {
        if (sponsorCenter.paused()) {
            revert Paused();
        }
        return _claim(poolId);
    }

    /// @inheritdoc IRewardCenter
    function claimMany(bytes32[] calldata poolIds)
        external
        override
        nonReentrant
        returns (uint256[] memory agsClaimed)
    {
        if (sponsorCenter.paused()) {
            revert Paused();
        }
        if (poolIds.length > Constants.MAX_CLAIM_MANY) {
            revert MaxClaimManyExceeded();
        }
        uint256 length = poolIds.length;
        agsClaimed = new uint256[](length);
        for (uint256 i = 0; i < length; i++) {
            bytes32 poolId = poolIds[i];
            for (uint256 j = 0; j < i; j++) {
                if (poolIds[j] == poolId) {
                    revert DuplicatePoolId();
                }
            }
            agsClaimed[i] = _claim(poolId);
        }
    }

    /// @inheritdoc IRewardCenter
    function rescueToken(address token, address to, uint256 amount) external override onlyTimelock {
        address msig = sponsorCenter.multisig();
        if (token == address(0) || to == address(0)) {
            revert ZeroAddress();
        }
        if (to != msig) {
            revert NotAuthorized();
        }
        IERC20(token).safeTransfer(to, amount);
        emit RescueToken(token, to, amount);
    }


    // -------- Admin config (governance gated via SponsorCenter) --------

    /// @inheritdoc IRewardCenter
    function setAegisEngineConfig(address engine, address stateView) external override onlyMultisig {
        if (aegisEngine != address(0) && aegisStateView != address(0)) revert AlreadySet();
        if (engine == address(0) || stateView == address(0)) revert ZeroAddress();
        if (engine.code.length == 0 || stateView.code.length == 0) revert InvalidAddress();
        aegisEngine = engine;
        aegisStateView = stateView;
        emit AegisEngineConfigured(engine, stateView);
    }

    /// @inheritdoc IRewardCenter
    function registerAgAnchorPool(PoolKey calldata key) external override onlyTimelock {
        address ag = _agToken();
        address hook = address(key.hooks);
        if (hook == address(0)) revert ZeroAddress();
        Types.HookType hookKind = sponsorCenter.hookType(hook);
        if (hookKind == Types.HookType.NONE) revert InvalidPool();
        if (hookKind == Types.HookType.AEGIS_V2) {
            if (HookOracleLib.engineOracle(hook) == address(0)) revert InvalidPool();
        } else if (hookKind == Types.HookType.AEGIS_V1) {
            if (HookOracleLib.dfmOracle(hook) == address(0)) revert InvalidPool();
        } else {
            revert InvalidPool();
        }
        Currency c0 = key.currency0;
        Currency c1 = key.currency1;
        address t0 = Currency.unwrap(c0);
        address t1 = Currency.unwrap(c1);
        if (t0 == address(0) || t1 == address(0) || t0 == t1) revert InvalidPool();
        bool agIs0 = t0 == ag;
        bool agIs1 = t1 == ag;
        if (!(agIs0 || agIs1)) revert InvalidPool();
        address anchor = agIs0 ? t1 : t0;
        _anchorPoolByAsset[anchor] = key;
        assetEligible[anchor] = true;
        emit EligibleAssetUpdated(anchor, true);
    }

    /// @inheritdoc IRewardCenter
    function clearAgAnchorPool(address asset) external override onlyTimelock {
        if (asset == address(0)) revert ZeroAddress();
        delete _anchorPoolByAsset[asset];
        assetEligible[asset] = false;
        emit EligibleAssetUpdated(asset, false);
    }

    /// @inheritdoc IRewardCenter
    function updateMaxTwapTickSpread(uint24 newMaxSpread) external override onlyTimelock {
        uint24 current = maxTwapTickSpread;
        maxTwapTickSpread = newMaxSpread;
        emit MaxTwapTickSpreadUpdated(current, newMaxSpread);
    }

    /// @inheritdoc IRewardCenter
    function addAssetEligible(address asset) external override onlyTimelock {
        if (asset == address(0)) {
            revert ZeroAddress();
        }
        assetEligible[asset] = true;
        emit EligibleAssetUpdated(asset, true);
    }

    /// @inheritdoc IRewardCenter
    function removeAssetEligible(address asset) external override onlyMultisig {
        if (asset == address(0)) {
            revert ZeroAddress();
        }
        assetEligible[asset] = false;
        emit EligibleAssetUpdated(asset, false);
    }

    /// @inheritdoc IRewardCenter
    function updateAgCache() external override onlyMultisig {
        address dff = sponsorCenter.agsDff();
        address newAg = address(0);
        if (dff != address(0)) {
            try IERC4626(dff).asset() returns (address underlying) {
                newAg = underlying;
            } catch {
                // Leave as address(0) if call fails
            }
        }
        cachedAg = newAg;
        emit AgTokenUpdated(newAg);
    }

    // -------- Internal reward flow --------

    function _claim(bytes32 poolId) internal returns (uint256 agsClaimed) {
        ISponsorCenter sc = sponsorCenter;
        if (!sc.poolConsumesSlot(poolId)) {
            revert InvalidPool();
        }
        if (sc.poolBlacklisted(poolId)) {
            revert PoolBlacklisted();
        }
        ClaimData memory data;
        data.poolId = poolId;
        data.sponsorTba = sc.sponsorTbaByPool(poolId);

        PoolKey memory key = sc.poolKeyByPoolId(poolId);
        address ag = _agToken();
        _requirePoolEligible(key, ag);

        data.polValueAgNow = _polValueAgNow(key, ag);
        if (data.polValueAgNow < sc.minPolValueAg()) {
            revert InvalidAmount();
        }

        data.baseline = sc.lastPolValueAg(poolId);
        if (data.polValueAgNow > data.baseline) {
            data.delta = data.polValueAgNow - data.baseline;
        }

        // Resolve parent lineage and exit early if delta is below the dust threshold.
        data.parentSponsorTba = sc.parentSponsorTbaBySponsorTba(data.sponsorTba);
        if (data.delta <= sc.polRewardDeltaThreshold()) {
            data.rewardValueAg = 0;
            data.sponsorOut = 0;
            data.agsOut = 0;
            data.slotsGranted = 0;
            _emitClaimed(data);
            return 0;
        }

        // Load AGS token and compute the effective reward share for this claim.
        address ags = sc.agsToken();
        if (ags == address(0)) {
            revert NotInitialized();
        }

        uint256 effectiveRewardShareBps = sc.rewardShareBps();
        if (data.parentSponsorTba == data.sponsorTba) {
            revert InvalidSponsorTba();
        }
        if (data.parentSponsorTba == address(0)) {
            effectiveRewardShareBps = effectiveRewardShareBps / 2;
        }

        // Compute full reward, then cap to current AGS balance ("cap-and-advance").
        data.rewardValueAg = FullMath.mulDiv(data.delta, effectiveRewardShareBps, Constants.BPS_DENOMINATOR);
        data.agsOut = _convertAgToAgs(ags, data.rewardValueAg);
        uint256 agsBalance = IERC20(ags).balanceOf(address(this));

        if (data.agsOut > agsBalance) {
            data.agsOut = agsBalance;
            if (data.agsOut == 0) {
                // No funds available: emit zero payout and skip baseline update.
                data.rewardValueAg = 0;
                data.sponsorOut = 0;
                data.slotsGranted = 0;
                _emitClaimed(data);
                return 0;
            }

            // Partial payout: advance baseline proportionally to paid AGS.
            data.rewardValueAg = _convertAgsToAg(ags, data.agsOut);
            uint256 deltaPaid =
                FullMath.mulDiv(data.rewardValueAg, Constants.BPS_DENOMINATOR, effectiveRewardShareBps);
            sc.rewardUpdateBaseline(poolId, data.baseline + deltaPaid);
        } else {
            // Fully funded: advance baseline to current POL value.
            sc.rewardUpdateBaseline(poolId, data.polValueAgNow);
        }

        // Grant slots only when the payout exceeds the configured AGS minimum.
        if (!sc.poolEarnedSlotsGranted(poolId) && data.agsOut > sc.minRewardAgsForSlots()) {
            data.slotsGranted = sc.rewardOnFirstPaidClaim(poolId, data.sponsorTba);
        }

        data.sponsorOut = data.agsOut;
        if (data.parentSponsorTba != address(0)) {
            uint256 parentOut = (data.agsOut * sc.sponsorBenefitBps()) / Constants.BPS_DENOMINATOR;
            data.sponsorOut = data.agsOut - parentOut;
            if (parentOut > 0) {
                IERC20(ags).safeTransfer(data.parentSponsorTba, parentOut);
            }
        }
        IERC20(ags).safeTransfer(data.sponsorTba, data.sponsorOut);

        _emitClaimed(data);
        return data.agsOut;
    }

    function _emitClaimed(ClaimData memory data) internal {
        emit Claimed(
            data.poolId,
            data.sponsorTba,
            data.parentSponsorTba,
            data.polValueAgNow,
            data.baseline,
            data.delta,
            data.rewardValueAg,
            data.sponsorOut,
            data.agsOut,
            data.slotsGranted
        );
    }

    // -------- Internal helpers --------

    function _requirePoolEligible(PoolKey memory key, address ag) internal view {
        address hookAddr = address(key.hooks);
        Types.HookType hookKind = sponsorCenter.hookType(hookAddr);
        if (hookKind == Types.HookType.NONE) {
            revert InvalidPool();
        }
        if (hookKind == Types.HookType.AEGIS_V2) {
            if (aegisEngine == address(0) || aegisStateView == address(0)) {
                revert NotInitialized();
            }
        } else if (hookKind == Types.HookType.AEGIS_V1) {
            if (address(ISpot(hookAddr).liquidityManager()) == address(0)) {
                revert InvalidPool();
            }
        } else {
            revert InvalidPool();
        }
        address curr0 = Currency.unwrap(key.currency0);
        address curr1 = Currency.unwrap(key.currency1);
        // Both pool tokens must be non-zero addresses.
        if (curr0 == address(0) || curr1 == address(0)) {
            revert InvalidPool();
        }
        // At least one token must be listed (has anchor pool) for valuation purposes.
        bool curr0Listed = _isListedAsset(curr0, ag);
        bool curr1Listed = _isListedAsset(curr1, ag);
        if (!(curr0Listed || curr1Listed)) {
            revert InvalidPool();
        }
        // Both tokens must be eligible (either listed or explicitly marked as eligible).
        bool curr0Eligible = curr0Listed || assetEligible[curr0];
        bool curr1Eligible = curr1Listed || assetEligible[curr1];
        if (!(curr0Eligible && curr1Eligible)) {
            revert InvalidPool();
        }
    }

    /// @inheritdoc IRewardCenter
    function anchorPoolByAsset(address asset) external view override returns (PoolKey memory) {
        return _anchorPoolByAsset[asset];
    }

    /// @inheritdoc IRewardCenter
    function hookType(address hook) external view override returns (Types.HookType) {
        return sponsorCenter.hookType(hook);
    }

    /// @inheritdoc IRewardCenter
    function eligibleAsset(address asset) external view override returns (bool) {
        if (asset == address(0)) {
            return false;
        }
        address ag = cachedAg;
        // Fallback to lookup if cache not set
        if (ag == address(0)) {
            address dff = sponsorCenter.agsDff();
            if (dff == address(0)) {
                return false;
            }
            try IERC4626(dff).asset() returns (address underlying) {
                ag = underlying;
            } catch {
                return false;
            }
            if (ag == address(0)) {
                return false;
            }
        }
        return _isListedAsset(asset, ag) || assetEligible[asset];
    }

    /// @inheritdoc IRewardCenter
    function polValueAgNow(PoolKey calldata key) external view override returns (uint256) {
        address ag = _agToken();
        return _polValueAgNow(key, ag);
    }

    /// @inheritdoc IRewardCenter
    function validatePool(PoolKey calldata key) external view override {
        address ag = _agToken();
        _requirePoolEligible(key, ag);
    }

    function _agToken() internal view returns (address ag) {
        ag = cachedAg;
        // Fallback to lookup if cache not set
        if (ag == address(0)) {
            address dff = sponsorCenter.agsDff();
            if (dff == address(0)) revert NotInitialized();
            try IERC4626(dff).asset() returns (address underlying) {
                ag = underlying;
            } catch {
                revert NotInitialized();
            }
            if (ag == address(0)) revert NotInitialized();
        }
    }

    function _hookType(address hook) internal view returns (Types.HookType) {
        return sponsorCenter.hookType(hook);
    }

    function _polValueAgNow(PoolKey memory key, address ag) internal view returns (uint256) {
        return _polValueAgNowWithMode(key, ag, false);
    }

    function _polValueAgNowWithMode(PoolKey memory key, address ag, bool optimistic) internal view returns (uint256) {
        Types.HookType hookKind = sponsorCenter.hookType(address(key.hooks));
        if (hookKind == Types.HookType.AEGIS_V2) {
            return _polValueAgNowEngine(key, ag, optimistic);
        }
        if (hookKind == Types.HookType.AEGIS_V1) {
            return _polValueAgNowDfm(key, ag, optimistic);
        }
        revert InvalidPool();
    }

    function _polValueAgNowEngine(PoolKey memory key, address ag, bool optimistic) internal view returns (uint256) {
        if (ag == address(0)) revert NotInitialized();

        // Pull engine/state wiring (must be configured).
        address engine = aegisEngine;
        address stateView = aegisStateView;
        if (engine == address(0) || stateView == address(0)) {
            revert NotInitialized();
        }

        // For engine pools, protocol-owned shares are held by the hook contract.
        bytes32 poolId = PoolId.unwrap(PoolIdLibrary.toId(key));
        uint256 shareBalance = IAegisEngine(engine).balanceOf(address(key.hooks), uint256(poolId));
        uint256 withdrawnShares = sponsorCenter.polWithdrawnShares(poolId);
        shareBalance += withdrawnShares;
        if (shareBalance == 0) {
            return 0;
        }

        uint256 sharePriceWad = IAegisStateView(stateView).getMarketSharePriceWadLatest(PoolId.wrap(poolId));
        if (sharePriceWad == 0) {
            revert StaleOracle();
        }

        // Engine shares are not 1:1 with liquidity; convert using share price (WAD).
        uint256 liquidityUint256 = FullMath.mulDiv(shareBalance, sharePriceWad, 1e18);
        
        if (liquidityUint256 > type(uint128).max) revert Overflow();
        
        uint128 liquidity = uint128(liquidityUint256);
        if (liquidity == 0) {
            return 0;
        }

        return _valueForHook(key, liquidity, ag, Types.HookType.AEGIS_V2, optimistic);
    }

    function _polValueAgNowDfm(PoolKey memory key, address ag, bool optimistic) internal view returns (uint256) {
        if (ag == address(0)) revert NotInitialized();

        address hookAddr = address(key.hooks);
        IFullRangeLiquidityManager liquidityManager = ISpot(hookAddr).liquidityManager();
        if (address(liquidityManager) == address(0)) {
            revert InvalidPool();
        }

        bytes32 poolId = PoolId.unwrap(PoolIdLibrary.toId(key));
        (uint256 shares,,) = liquidityManager.getProtocolOwnedLiquidity(
            PoolId.wrap(poolId)
        );

        uint256 withdrawnShares = sponsorCenter.polWithdrawnShares(poolId);
        shares += withdrawnShares;
        if (shares == 0) {
            return 0;
        }

        // DFM shares are 1:1 with liquidity (L units).
        if (shares > type(uint128).max) revert Overflow();
        uint128 liquidity = uint128(shares);

        return _valueForHook(key, liquidity, ag, Types.HookType.AEGIS_V1, optimistic);
    }

    function _valueForHook(
        PoolKey memory key,
        uint128 liquidity,
        address ag,
        Types.HookType hookKind,
        bool optimistic
    ) internal view returns (uint256) {
        (int24 tShort, int24 tMed, int24 tLong) = _consultTicksForHook(key, hookKind);
        return _positionValue(key, liquidity, tShort, tMed, tLong, ag, optimistic);
    }

    function _positionValue(
        PoolKey memory key,
        uint128 liquidity,
        int24 tShort,
        int24 tMed,
        int24 tLong,
        address ag,
        bool optimistic
    ) internal view returns (uint256) {
        _requireValidTwapSpread(tShort, tMed, tLong);

        int24 tMin = tShort;
        if (tMed < tMin) tMin = tMed;
        if (tLong < tMin) tMin = tLong;

        int24 tMax = tShort;
        if (tMed > tMax) tMax = tMed;
        if (tLong > tMax) tMax = tLong;

        address token0 = Currency.unwrap(key.currency0);
        address token1 = Currency.unwrap(key.currency1);

        uint256 valueAtMin = _computePositionValue(key, liquidity, tMin, token0, token1, ag, optimistic);
        uint256 valueAtMax = _computePositionValue(key, liquidity, tMax, token0, token1, ag, optimistic);

        if (optimistic) {
            return valueAtMax > valueAtMin ? valueAtMax : valueAtMin;
        }
        return valueAtMin < valueAtMax ? valueAtMin : valueAtMax;
    }

    function _consultTicksForHook(PoolKey memory key, Types.HookType hookKind)
        internal
        view
        returns (int24 tShort, int24 tMed, int24 tLong)
    {
        address hookAddr = address(key.hooks);
        if (hookKind == Types.HookType.AEGIS_V2) {
            address oracle = HookOracleLib.engineOracle(hookAddr);
            if (oracle == address(0)) revert InvalidPool();
            return HookOracleLib.consultTicksEngine(oracle, key);
        }
        if (hookKind == Types.HookType.AEGIS_V1) {
            address oracle = HookOracleLib.dfmOracle(hookAddr);
            if (oracle == address(0)) revert InvalidPool();
            return HookOracleLib.consultTicksDfm(oracle, key);
        }
        revert InvalidPool();
    }

    function _computePositionValue(
        PoolKey memory key,
        uint128 liquidity,
        int24 tick,
        address token0,
        address token1,
        address ag,
        bool optimistic
    ) internal view returns (uint256) {
        (uint256 amount0, uint256 amount1) = _amountsForFullRangeAtTick(key, liquidity, tick);

        // Value each token leg in AG and sum
        uint256 agValue0 = _valueTokenInAg(key, token0, amount0, ag, optimistic);
        uint256 agValue1 = _valueTokenInAg(key, token1, amount1, ag, optimistic);

        return agValue0 + agValue1;
    }

    function _amountsForFullRangeAtTick(PoolKey memory key, uint128 liquidity, int24 tick)
        internal
        view
        returns (uint256 amount0, uint256 amount1)
    {
        // Compute pool price bounds and amounts for the liquidity at this tick
        uint160 sqrtPriceX96 = TickMath.getSqrtPriceAtTick(tick);
        int24 spacing = key.tickSpacing;
        int24 minTick = (TickMath.MIN_TICK / spacing) * spacing;
        if (minTick < TickMath.MIN_TICK) minTick += spacing;
        int24 maxTick = (TickMath.MAX_TICK / spacing) * spacing;
        if (maxTick > TickMath.MAX_TICK) maxTick -= spacing;
        uint160 sqrtMin = TickMath.getSqrtPriceAtTick(minTick);
        uint160 sqrtMax = TickMath.getSqrtPriceAtTick(maxTick);

        return LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtMin, sqrtMax, liquidity);
    }

    function _valueTokenInAg(
        PoolKey memory sponsoredPoolKey,
        address token,
        uint256 amount,
        address ag,
        bool optimistic
    ) internal view returns (uint256) {
        if (amount == 0) {
            return 0;
        }
        if (token == ag) {
            return amount;
        }
        address ags = sponsorCenter.agsToken();
        if (token == ags) {
            return _convertAgsToAgForPol(ags, amount);
        }

        // If token has anchor pool, use it directly to convert to AG.
        if (_hasAnchorPool(token)) {
            return _valueTokenUsingAnchor(token, amount, ag, optimistic);
        }

        // Token has no anchor pool. If it's eligible, value via the other token in the sponsored pool.
        if (!assetEligible[token]) {
            // Token is not eligible at all, shouldn't reach here due to _requirePoolEligible
            return 0;
        }

        return _valueTokenViaOtherAsset(sponsoredPoolKey, token, amount, ag, optimistic);
    }

    function _valueTokenUsingAnchor(address token, uint256 amount, address ag, bool optimistic)
        internal
        view
        returns (uint256)
    {
        PoolKey memory anchorKey = _anchorPoolByAsset[token];
        // Listed assets must have a registered anchor pool for AG pricing.
        if (Currency.unwrap(anchorKey.currency0) == address(0) || Currency.unwrap(anchorKey.currency1) == address(0)) {
            revert InvalidPool();
        }
        address anchor0 = Currency.unwrap(anchorKey.currency0);
        address anchor1 = Currency.unwrap(anchorKey.currency1);
        if (!((anchor0 == ag && anchor1 == token) || (anchor1 == ag && anchor0 == token))) {
            revert InvalidPool();
        }

        Types.HookType anchorHookKind = sponsorCenter.hookType(address(anchorKey.hooks));
        if (anchorHookKind == Types.HookType.NONE) {
            revert InvalidPool();
        }

        (int24 tShortAnchor, int24 tMedAnchor, int24 tLongAnchor) = _consultTicksForHook(anchorKey, anchorHookKind);
        _requireValidTwapSpread(tShortAnchor, tMedAnchor, tLongAnchor);

        bool agIsCurrency1 = Currency.unwrap(anchorKey.currency1) == ag;
        int24 anchorTick = _selectValuationTick(tShortAnchor, tMedAnchor, tLongAnchor, agIsCurrency1, optimistic);

        uint256 agValue = HookOracleLib.anchorValueBase(amount, anchorTick, agIsCurrency1);
        if (agValue == 0) {
            revert StaleOracle();
        }
        return agValue;
    }

    function _valueTokenViaOtherAsset(
        PoolKey memory sponsoredPoolKey,
        address token,
        uint256 amount,
        address ag,
        bool optimistic
    ) internal view returns (uint256) {
        (address otherToken, uint256 otherTokenAmount) =
            _convertViaSponsoredPool(sponsoredPoolKey, token, amount, optimistic);
        return _valueTokenInAg(sponsoredPoolKey, otherToken, otherTokenAmount, ag, optimistic);
    }

    function _convertViaSponsoredPool(
        PoolKey memory sponsoredPoolKey,
        address token,
        uint256 amount,
        bool optimistic
    )
        internal
        view
        returns (address otherToken, uint256 otherTokenAmount)
    {
        // Token is approved but not anchored. Find the other token in the pool.
        address token0 = Currency.unwrap(sponsoredPoolKey.currency0);
        address token1 = Currency.unwrap(sponsoredPoolKey.currency1);
        otherToken = (token == token0) ? token1 : token0;

        // The other token must have an anchor pool to proceed
        if (!_hasAnchorPool(otherToken)) {
            // This should not happen due to _requirePoolEligible requiring at least one anchored token
            revert InvalidPool();
        }
        bool otherTokenIsCurrency1 = (token == token0);
        int24 poolTick = _selectPoolTickForConversion(sponsoredPoolKey, otherTokenIsCurrency1, optimistic);

        // Convert approved token amount to anchor token amount
        otherTokenAmount = HookOracleLib.anchorValueBase(amount, poolTick, otherTokenIsCurrency1);
        if (otherTokenAmount == 0) {
            revert StaleOracle();
        }
    }

    function _selectPoolTickForConversion(
        PoolKey memory sponsoredPoolKey,
        bool otherTokenIsCurrency1,
        bool optimistic
    ) internal view returns (int24) {
        Types.HookType poolHookKind = _hookType(address(sponsoredPoolKey.hooks));
        if (poolHookKind == Types.HookType.NONE) {
            revert InvalidPool();
        }

        (int24 tShortPool, int24 tMedPool, int24 tLongPool) = _consultTicksForHook(sponsoredPoolKey, poolHookKind);
        _requireValidTwapSpread(tShortPool, tMedPool, tLongPool);

        return _selectValuationTick(tShortPool, tMedPool, tLongPool, otherTokenIsCurrency1, optimistic);
    }

    function _convertAgToAgs(address ags, uint256 amountAg) internal view returns (uint256) {
        if (amountAg == 0) {
            return 0;
        }
        uint256 maturityValue = _maturityValueAgPerAgs(ags);
        return FullMath.mulDiv(amountAg, 1e18, maturityValue);
    }

    /// @dev Convert AGS into AG for POL valuation using present redemption value.
    function _convertAgsToAgForPol(address ags, uint256 amountAgs) internal view returns (uint256) {
        if (amountAgs == 0) {
            return 0;
        }
        address dff = sponsorCenter.agsDff();
        if (dff == address(0)) {
            revert NotInitialized();
        }
        uint256 dffShares = IAegisShares(ags).aegisDffForShares(amountAgs);
        if (dffShares == 0) {
            return 0;
        }
        uint256 totalAssets = IERC4626(dff).totalAssets();
        uint256 totalSupply = IERC20(dff).totalSupply();
        if (totalAssets == 0 || totalSupply == 0) {
            revert InvalidDffAccounting();
        }
        return FullMath.mulDiv(dffShares, totalAssets, totalSupply);
    }

    /// @dev Convert an amount of AGS into AG using the vault's full-maturity value (AG per AGS).
    function _convertAgsToAg(address ags, uint256 amountAgs) internal view returns (uint256) {
        if (amountAgs == 0) {
            return 0;
        }
        uint256 maturityValue = _maturityValueAgPerAgs(ags); // AG per 1 AGS (1e18 scale)
        return FullMath.mulDiv(amountAgs, maturityValue, 1e18);
    }

    /// @dev Fetch the current AG-per-AGS exchange rate from the DFF vault.
    function _maturityValueAgPerAgs(address ags) internal view returns (uint256) {
        uint256 maturityValue;
        address dff = sponsorCenter.agsDff();
        if (dff == address(0) || ags == address(0)) {
            revert NotInitialized();
        }
        uint256 totalAssets = IERC4626(dff).totalAssets(); // AG-denominated assets in the vault
        uint256 totalSupply = IERC20(ags).totalSupply();   // Total AGS supply
        if (totalAssets == 0 || totalSupply == 0) {
            revert StaleOracle();
        }
        // AG per AGS = totalAssets / totalSupply (scaled to 1e18)
        maturityValue = FullMath.mulDiv(totalAssets, 1e18, totalSupply);
        if (maturityValue == 0) revert StaleOracle();
        return maturityValue;
    }

    /// @notice Select the tick that gives the desired valuation direction for the value token.
    /// @param valueTokenIsCurrency1 True if the token we're valuing (e.g., AG) is currency1 in the pool.
    /// @param optimistic True to maximize value, false to minimize value.
    /// @dev Price = token1/token0. For optimistic valuation:
    ///      - If valuing token1: higher tick = more token1/token0.
    ///      - If valuing token0: lower tick = more token0/token1.
    ///      For pessimistic valuation, the inverse applies.
    function _selectValuationTick(
        int24 tShort,
        int24 tMed,
        int24 tLong,
        bool valueTokenIsCurrency1,
        bool optimistic
    ) internal pure returns (int24) {
        int24 tMin = tShort;
        if (tMed < tMin) tMin = tMed;
        if (tLong < tMin) tMin = tLong;

        int24 tMax = tShort;
        if (tMed > tMax) tMax = tMed;
        if (tLong > tMax) tMax = tLong;

        if (valueTokenIsCurrency1) {
            return optimistic ? tMax : tMin;
        }
        return optimistic ? tMin : tMax;
    }

    function _requireValidTwapSpread(int24 tShort, int24 tMed, int24 tLong) internal view {
        // Check TWAP spread is within acceptable bounds
        int24 maxTick = tShort;
        int24 minTick = tShort;
        if (tMed > maxTick) maxTick = tMed;
        if (tLong > maxTick) maxTick = tLong;
        if (tMed < minTick) minTick = tMed;
        if (tLong < minTick) minTick = tLong;
        if (uint24(maxTick - minTick) > maxTwapTickSpread) {
            revert StaleOracle();
        }
    }

    function _hasAnchorPool(address asset) internal view returns (bool) {
        PoolKey memory key = _anchorPoolByAsset[asset];
        return Currency.unwrap(key.currency0) != address(0) && Currency.unwrap(key.currency1) != address(0);
    }

    function _isListedAsset(address asset, address ag) internal view returns (bool) {
        if (asset == ag) {
            return true;
        }
        return _hasAnchorPool(asset);
    }

    // -------- Optimistic TWAP Pricing (Initial Baseline) --------

    /// @inheritdoc IRewardCenter
    function polValueAgNowOptimistic(PoolKey calldata key) external view override returns (uint256) {
        address ag = _agToken();
        return _polValueAgNowWithMode(key, ag, true);
    }


}
