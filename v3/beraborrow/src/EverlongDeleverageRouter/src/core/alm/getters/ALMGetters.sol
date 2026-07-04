// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {
    IUniswapV3Pool
} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {
    PositionKey
} from "@uniswap/v3-periphery/contracts/libraries/PositionKey.sol";
import {TickMath} from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import {PropMath} from "src/libraries/PropMath.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";
import {IEverlongALM} from "src/interfaces/core/alm/IEverlongALM.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {ALMLib} from "src/core/alm/library/ALMLib.sol";

library EverlongALMStorageLib {
    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.EverlongALM")) - 1)) & ~bytes32(uint(0xff))
    bytes32 internal constant EVERLONG_ALM_STORAGE_LOC =
        0xb4801203179a1f53d2a89513756c4fddeb24d0f949ce9fc7cf03114c341dc500;

    uint256 internal constant MANAGER_SLOT = 5;
    uint256 internal constant PENDING_MANAGER_SLOT = 6;
    uint256 internal constant REBALANCE_DELEGATE_SLOT = 7;
    uint256 internal constant DEPOSIT_DELEGATE_SLOT = 8;
    uint256 internal constant MAX_TOTAL_SUPPLY_SLOT = 9;
    uint256 internal constant ACCRUED_PROTOCOL_FEES_SLOT = 10;
    uint256 internal constant PARAMS_SLOT = 11;
    uint256 internal constant RANGE_SLOT = 12;
    uint256 internal constant RATIO_SLOT = 13;
    uint256 internal constant SWAPPER_DATA_SLOT = 14;
    uint256 internal constant GETTERS_SLOT = 15;
    uint256 internal constant LEVERAGE_ROUTER_SLOT = 16;
    uint256 internal constant DEBT_REGULATOR_SLOT = 17;

    // PARAMS_SLOT bit offsets
    uint256 internal constant PROTOCOL_FEE_OFFSET = 32;
    uint256 internal constant PENDING_PROTOCOL_FEE_OFFSET = 56;
    uint256 internal constant WIDE_RANGE_WEIGHT_OFFSET = 80;
    uint256 internal constant BASE_THRESHOLD_OFFSET = 104;
    uint256 internal constant LIMIT_THRESHOLD_OFFSET = 128;
    uint256 internal constant WIDE_THRESHOLD_OFFSET = 152;
    uint256 internal constant MIN_TICK_MOVE_OFFSET = 176;
    uint256 internal constant TICK_SPACING_OFFSET = 200;
    uint256 internal constant MAX_TWAP_DEVIATION_OFFSET = 224;

    // RANGE_SLOT bit offsets
    uint256 internal constant TWAP_DURATION_OFFSET = 0;
    uint256 internal constant WIDE_LOWER_OFFSET = 32;
    uint256 internal constant WIDE_UPPER_OFFSET = 56;
    uint256 internal constant BASE_LOWER_OFFSET = 80;
    uint256 internal constant BASE_UPPER_OFFSET = 104;
    uint256 internal constant LIMIT_LOWER_OFFSET = 128;
    uint256 internal constant LIMIT_UPPER_OFFSET = 152;
    uint256 internal constant LAST_TICK_OFFSET = 176;
    uint256 internal constant LAST_TIMESTAMP_OFFSET = 200;

    // RATIO_SLOT bit offsets
    uint256 internal constant MAX_TICK_OFFSET = 0;
    uint256 internal constant SWAP_DEVIATION_THRESHOLD_OFFSET = 24;
    uint256 internal constant RATIO_DEVIATION_THRESHOLD_OFFSET = 48;
    uint256 internal constant REBALANCE_DELEGATE_COOLDOWN_OFFSET = 72;
    uint256 internal constant LAST_RATIO_DEV_UPDATE_TIMESTAMP_OFFSET = 96;
    uint256 internal constant MAX_RATIO_DEV_THRESHOLD_INCREASE_OFFSET = 136;

    // DEBT_REGULATOR_SLOT bit offsets
    // debtRegulator address occupies bits 0-159
    uint256 internal constant LAST_EMERGENCY_BURN_TIMESTAMP_OFFSET = 160;
    uint256 internal constant EMERGENCY_BURN_COOLDOWN_OFFSET = 208;

    function managerSlot() internal pure returns (bytes32) {
        return bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + MANAGER_SLOT);
    }

    function pendingManagerSlot() internal pure returns (bytes32) {
        return
            bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + PENDING_MANAGER_SLOT);
    }

    function rebalanceDelegateSlot() internal pure returns (bytes32) {
        return
            bytes32(
                uint256(EVERLONG_ALM_STORAGE_LOC) + REBALANCE_DELEGATE_SLOT
            );
    }

    function depositDelegateSlot() internal pure returns (bytes32) {
        return
            bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + DEPOSIT_DELEGATE_SLOT);
    }

    function maxTotalSupplySlot() internal pure returns (bytes32) {
        return
            bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + MAX_TOTAL_SUPPLY_SLOT);
    }

    function accruedProtocolFeesSlot() internal pure returns (bytes32) {
        return
            bytes32(
                uint256(EVERLONG_ALM_STORAGE_LOC) + ACCRUED_PROTOCOL_FEES_SLOT
            );
    }

    function paramsSlot() internal pure returns (bytes32) {
        return bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + PARAMS_SLOT);
    }

    function rangeSlot() internal pure returns (bytes32) {
        return bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + RANGE_SLOT);
    }

    function ratioSlot() internal pure returns (bytes32) {
        return bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + RATIO_SLOT);
    }

    function swapperDataSlot() internal pure returns (bytes32) {
        return bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + SWAPPER_DATA_SLOT);
    }

    function gettersSlot() internal pure returns (bytes32) {
        return bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + GETTERS_SLOT);
    }
    function leverageRouterSlot() internal pure returns (bytes32) {
        return
            bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + LEVERAGE_ROUTER_SLOT);
    }

    function debtRegulatorSlot() internal pure returns (bytes32) {
        return
            bytes32(uint256(EVERLONG_ALM_STORAGE_LOC) + DEBT_REGULATOR_SLOT);
    }
}

interface IALMGetters {
    error EV_PeriodNotElapsed();
    error EV_TickNotMoved();
    error EV_PriceOutOfBounds();
    error EV_TwapPriceDeviation();
    error EV_SwapSlippageExceeded(uint256 receivedValue, uint256 sentValue);
    error EV_InsufficientSwapOutput(uint256 actual, uint256 required);
    error EV_RatioDeviationExceeded(
        uint256 tokenInValue,
        uint256 tokenOutValue
    );
    error EV_EmergencyBurnCooldownActive();

    function getTotalAmounts(
        bool roundUp
    ) external view returns (uint256 total0, uint256 total1);
    function getPositionAmounts(
        int24 tickLower,
        int24 tickUpper,
        bool roundUp
    ) external view returns (uint256 amount0, uint256 amount1);
    function checkCanRebalance() external view;
    function checkPriceNearTwap() external view;
    function checkNotInEmergencyBurnCooldown() external view;
    function getTwap() external view returns (int24);
    function lastEmergencyBurnTimestamp() external view returns (uint48);
    function emergencyBurnCooldown() external view returns (uint48);
    function checkMaxSlippageAndRatioDeviation(
        IEverlongALM.ExternalRebalanceParams memory params,
        uint256 tokenOutBalanceBefore,
        address tokenIn,
        address tokenOut,
        uint256 sentPrice,
        uint256 receivedPrice
    ) external view returns (uint256 amountOut);
}

contract ALMGetters is IALMGetters {
    using PriceLib for uint256;

    IEverlongALM public immutable alm;
    IUniswapV3Pool public immutable pool;

    uint24 constant HUNDRED_PERCENT = 1e6;

    constructor(address _alm, address _pool) {
        alm = IEverlongALM(_alm);
        /// @dev Assumes pool never changes
        pool = IUniswapV3Pool(_pool);
    }

    // ─── extSloads helpers ───────────────────────────────────────────
    function _loadSlot(bytes32 slot) private view returns (uint256 word) {
        bytes32[] memory slots = new bytes32[](1);
        slots[0] = slot;
        word = uint256(alm.extSloads(slots)[0]);
    }

    function _loadCoreSlots()
        private
        view
        returns (uint256 params, uint256 ranges, uint256 ratios)
    {
        bytes32[] memory slots = new bytes32[](3);
        slots[0] = EverlongALMStorageLib.paramsSlot();
        slots[1] = EverlongALMStorageLib.rangeSlot();
        slots[2] = EverlongALMStorageLib.ratioSlot();

        bytes32[] memory r = alm.extSloads(slots);
        params = uint256(r[0]);
        ranges = uint256(r[1]);
        ratios = uint256(r[2]);
    }

    function _loadParams() private view returns (uint256) {
        return _loadSlot(EverlongALMStorageLib.paramsSlot());
    }

    function _loadRange() private view returns (uint256) {
        return _loadSlot(EverlongALMStorageLib.rangeSlot());
    }

    function _loadRatios() private view returns (uint256) {
        return _loadSlot(EverlongALMStorageLib.ratioSlot());
    }

    function _decodeUint24(
        uint256 word,
        uint256 offset
    ) private pure returns (uint24) {
        return uint24(word >> offset);
    }

    function _decodeInt24(
        uint256 word,
        uint256 offset
    ) private pure returns (int24) {
        return int24(uint24(word >> offset));
    }

    function getters() public view returns (address) {
        return address(uint160(_loadSlot(EverlongALMStorageLib.gettersSlot())));
    }

    function lastEmergencyBurnTimestamp() public view returns (uint48) {
        return uint48(_loadSlot(EverlongALMStorageLib.debtRegulatorSlot()) >> EverlongALMStorageLib.LAST_EMERGENCY_BURN_TIMESTAMP_OFFSET);
    }

    function emergencyBurnCooldown() public view returns (uint48) {
        return uint48(_loadSlot(EverlongALMStorageLib.debtRegulatorSlot()) >> EverlongALMStorageLib.EMERGENCY_BURN_COOLDOWN_OFFSET);
    }

    function checkNotInEmergencyBurnCooldown() public view {
        uint256 word = _loadSlot(EverlongALMStorageLib.debtRegulatorSlot());
        uint48 _lastEmergencyBurn = uint48(word >> EverlongALMStorageLib.LAST_EMERGENCY_BURN_TIMESTAMP_OFFSET);
        uint48 _cooldown = uint48(word >> EverlongALMStorageLib.EMERGENCY_BURN_COOLDOWN_OFFSET);
        if (_lastEmergencyBurn != 0 && block.timestamp < uint256(_lastEmergencyBurn) + _cooldown) {
            revert EV_EmergencyBurnCooldownActive();
        }
    }

    function isSwapperWhitelisted(address swapper) public view returns (bool) {
        bytes32[] memory slots = new bytes32[](1);
        slots[0] = keccak256(
            abi.encode(swapper, EverlongALMStorageLib.swapperDataSlot())
        );
        return uint256(alm.extSloads(slots)[0]) != 0;
    }

    // ─── extSloads-backed getters ─────────────────────────────────────
    function manager() public view returns (address) {
        return address(uint160(_loadSlot(EverlongALMStorageLib.managerSlot())));
    }

    function pendingManager() public view returns (address) {
        return
            address(
                uint160(_loadSlot(EverlongALMStorageLib.pendingManagerSlot()))
            );
    }

    function rebalanceDelegate() public view returns (address) {
        return
            address(
                uint160(
                    _loadSlot(EverlongALMStorageLib.rebalanceDelegateSlot())
                )
            );
    }

    function depositDelegate() public view returns (address) {
        return
            address(
                uint160(_loadSlot(EverlongALMStorageLib.depositDelegateSlot()))
            );
    }

    function leverageRouter() public view returns (address) {
        return
            address(
                uint160(_loadSlot(EverlongALMStorageLib.leverageRouterSlot()))
            );
    }

    function maxTotalSupply() public view returns (uint256) {
        return _loadSlot(EverlongALMStorageLib.maxTotalSupplySlot());
    }

    function accruedProtocolFees0() public view returns (uint128) {
        uint256 word = _loadSlot(
            EverlongALMStorageLib.accruedProtocolFeesSlot()
        );
        return uint128(word);
    }

    function accruedProtocolFees1() public view returns (uint128) {
        uint256 word = _loadSlot(
            EverlongALMStorageLib.accruedProtocolFeesSlot()
        );
        return uint128(word >> 128);
    }

    function period() public view returns (uint32) {
        return uint32(_loadParams());
    }

    function protocolFee() public view returns (uint24) {
        return
            _decodeUint24(
                _loadParams(),
                EverlongALMStorageLib.PROTOCOL_FEE_OFFSET
            );
    }

    function pendingProtocolFee() public view returns (uint24) {
        uint24 pendingProtocolFeePlusOne = _decodeUint24(
            _loadParams(),
            EverlongALMStorageLib.PENDING_PROTOCOL_FEE_OFFSET
        );
        return
            pendingProtocolFeePlusOne == 0 ? 0 : pendingProtocolFeePlusOne - 1;
    }

    function wideRangeWeight() public view returns (uint24) {
        return
            _decodeUint24(
                _loadParams(),
                EverlongALMStorageLib.WIDE_RANGE_WEIGHT_OFFSET
            );
    }

    function baseThreshold() public view returns (int24) {
        return
            _decodeInt24(
                _loadParams(),
                EverlongALMStorageLib.BASE_THRESHOLD_OFFSET
            );
    }

    function limitThreshold() public view returns (int24) {
        return
            _decodeInt24(
                _loadParams(),
                EverlongALMStorageLib.LIMIT_THRESHOLD_OFFSET
            );
    }

    function wideThreshold() public view returns (int24) {
        return
            _decodeInt24(
                _loadParams(),
                EverlongALMStorageLib.WIDE_THRESHOLD_OFFSET
            );
    }

    function minTickMove() public view returns (int24) {
        return
            _decodeInt24(
                _loadParams(),
                EverlongALMStorageLib.MIN_TICK_MOVE_OFFSET
            );
    }

    function tickSpacing() public view returns (int24) {
        return
            _decodeInt24(
                _loadParams(),
                EverlongALMStorageLib.TICK_SPACING_OFFSET
            );
    }

    function maxTwapDeviation() public view returns (int24) {
        return
            _decodeInt24(
                _loadParams(),
                EverlongALMStorageLib.MAX_TWAP_DEVIATION_OFFSET
            );
    }

    function twapDuration() public view returns (uint32) {
        return
            uint32(_loadRange() >> EverlongALMStorageLib.TWAP_DURATION_OFFSET);
    }

    function lastTick() public view returns (int24) {
        return
            _decodeInt24(_loadRange(), EverlongALMStorageLib.LAST_TICK_OFFSET);
    }

    function lastTimestamp() public view returns (uint40) {
        return
            uint40(_loadRange() >> EverlongALMStorageLib.LAST_TIMESTAMP_OFFSET);
    }

    function swapDeviationThreshold() public view returns (uint24) {
        return
            _decodeUint24(
                _loadRatios(),
                EverlongALMStorageLib.SWAP_DEVIATION_THRESHOLD_OFFSET
            );
    }

    function ratioDeviationThreshold() public view returns (uint24) {
        return
            _decodeUint24(
                _loadRatios(),
                EverlongALMStorageLib.RATIO_DEVIATION_THRESHOLD_OFFSET
            );
    }

    function rebalanceDelegateCooldown() public view returns (uint24) {
        return
            _decodeUint24(
                _loadRatios(),
                EverlongALMStorageLib.REBALANCE_DELEGATE_COOLDOWN_OFFSET
            );
    }

    function lastRatioDeviationThresholdUpdateTimestamp()
        public
        view
        returns (uint40)
    {
        return
            uint40(
                _loadRatios() >>
                    EverlongALMStorageLib.LAST_RATIO_DEV_UPDATE_TIMESTAMP_OFFSET
            );
    }

    function maxRatioDeviationThresholdIncrease() public view returns (uint24) {
        return
            _decodeUint24(
                _loadRatios(),
                EverlongALMStorageLib.MAX_RATIO_DEV_THRESHOLD_INCREASE_OFFSET
            );
    }

    /**
     * @notice Returns total amounts of token0 and token1 held by the ALM, in the 3 LPs and as idle balance.
     * @param roundUp Whether to round up the amounts when calculating from liquidity.
     * @return total0 Total amount of token0 held by the ALM.
     * @return total1 Total amount of token1 held by the ALM.
     */
    function getTotalAmounts(
        bool roundUp
    ) public view override returns (uint256 total0, uint256 total1) {
        int24[2][3] memory positions = alm.getPositions();
        (uint256 wideAmount0, uint256 wideAmount1) = getPositionAmounts(
            positions[0][0],
            positions[0][1],
            roundUp
        );
        (uint256 baseAmount0, uint256 baseAmount1) = getPositionAmounts(
            positions[1][0],
            positions[1][1],
            roundUp
        );
        (uint256 limitAmount0, uint256 limitAmount1) = getPositionAmounts(
            positions[2][0],
            positions[2][1],
            roundUp
        );
        total0 = alm.getBalance0() + wideAmount0 + baseAmount0 + limitAmount0;
        total1 = alm.getBalance1() + wideAmount1 + baseAmount1 + limitAmount1;
    }

    /**
     * @notice Amounts of token0 and token1 held in vault's position. Includes
     * owed fees but excludes the proportion of fees that will be paid to the
     * protocol. Doesn't include fees accrued since last poke.
     */
    function getPositionAmounts(
        int24 tickLower,
        int24 tickUpper,
        bool roundUp
    ) public view returns (uint256 amount0, uint256 amount1) {
        (
            uint128 liquidity,
            ,
            ,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        ) = _position(tickLower, tickUpper);
        (amount0, amount1) = ALMLib._amountsForLiquidity(
            address(pool),
            tickLower,
            tickUpper,
            liquidity,
            roundUp
        );

        // Subtract protocol and manager fees
        uint256 paramsWord = _loadParams();
        uint24 _protocolFee = _decodeUint24(
            paramsWord,
            EverlongALMStorageLib.PROTOCOL_FEE_OFFSET
        );
        uint128 protocolFees0 = (tokensOwed0 * _protocolFee) / HUNDRED_PERCENT;
        uint128 protocolFees1 = (tokensOwed1 * _protocolFee) / HUNDRED_PERCENT;

        amount0 += tokensOwed0 - protocolFees0;
        amount1 += tokensOwed1 - protocolFees1;
    }

    /**
     * @notice Checks invariants to decide whether the ALM can rebalance.
     * @dev Invariants include time elapsed since last rebalance, price movement since last
     * rebalance, and price being within acceptable bounds.
     * Is designed to avoid pool price manipulations on the context of changes on liquidity ranges.
     */
    function checkCanRebalance() public view {
        checkPriceNearTwap();
        (
            uint256 paramsWord,
            uint256 rangesWord,
            uint256 ratiosWord
        ) = _loadCoreSlots();

        uint40 _lastTimestamp = uint40(
            rangesWord >> EverlongALMStorageLib.LAST_TIMESTAMP_OFFSET
        );
        int24 lastTick = _decodeInt24(
            rangesWord,
            EverlongALMStorageLib.LAST_TICK_OFFSET
        );
        int24 baseThreshold = _decodeInt24(
            paramsWord,
            EverlongALMStorageLib.BASE_THRESHOLD_OFFSET
        );
        int24 limitThreshold = _decodeInt24(
            paramsWord,
            EverlongALMStorageLib.LIMIT_THRESHOLD_OFFSET
        );
        int24 tickSpacing = _decodeInt24(
            paramsWord,
            EverlongALMStorageLib.TICK_SPACING_OFFSET
        );
        uint32 _period = uint32(paramsWord);
        int24 minTickMove_ = _decodeInt24(
            paramsWord,
            EverlongALMStorageLib.MIN_TICK_MOVE_OFFSET
        );

        // check enough time has passed
        if (block.timestamp < (_lastTimestamp + _period))
            revert EV_PeriodNotElapsed();

        // check price has moved enough
        (, int24 tick, , , , , ) = pool.slot0();
        int24 tickMove = tick > lastTick ? tick - lastTick : lastTick - tick;
        if (_lastTimestamp != 0 && tickMove < minTickMove_)
            revert EV_TickNotMoved();
        // check price not too close to boundary
        int24 maxThreshold = baseThreshold > limitThreshold
            ? baseThreshold
            : limitThreshold;
        if (
            !(tick >= TickMath.MIN_TICK + maxThreshold + tickSpacing &&
                tick <= TickMath.MAX_TICK - maxThreshold - tickSpacing)
        ) revert EV_PriceOutOfBounds();
    }

    /**
     * @notice Checks that the current price is near the TWAP price.
     * @dev Reverts if the deviation between the current tick and the TWAP tick is greater than the maximum allowed TWAP deviation.
     * Used to prevent price manipulation during rebalances.
     */
    function checkPriceNearTwap() public view {
        (, int24 tick, , , , , ) = pool.slot0();
        int24 twap = getTwap();
        int24 twapDeviation = tick > twap ? tick - twap : twap - tick;
        if (twapDeviation > maxTwapDeviation()) revert EV_TwapPriceDeviation();
    }

    /// @dev Fetches time-weighted average price in ticks from Uniswap pool.
    function getTwap() public view returns (int24) {
        uint32 _twapDuration = twapDuration();
        uint32[] memory secondsAgo = new uint32[](2);
        secondsAgo[0] = _twapDuration;
        secondsAgo[1] = 0;

        (int56[] memory tickCumulatives, ) = pool.observe(secondsAgo);
        return
            int24(
                (tickCumulatives[1] - tickCumulatives[0]) /
                    int56(uint56((_twapDuration)))
            );
    }

    /**
     * @notice Checks that the slippage of a swap and the deviation of token ratios are within invariant limits.
     * @dev Invariants include maximum slippage for the swap and maximum deviation from target token ratios.
     * @param params Rebalance parameters including amounts and direction.
     * @param tokenOutBalanceBefore Balance of the token being received before the swap.
     * @param tokenIn Address of the token being sent.
     * @param tokenOut Address of the token being received.
     * @param sentPrice Price of the token being sent.
     * @param receivedPrice Price of the token being received.
     */
    function checkMaxSlippageAndRatioDeviation(
        IEverlongALM.ExternalRebalanceParams memory params,
        uint256 tokenOutBalanceBefore,
        address tokenIn,
        address tokenOut,
        uint256 sentPrice,
        uint256 receivedPrice
    ) external view returns (uint256 amountOut) {
        uint8 tokenInDecimals = IAsset(tokenIn).decimals();
        uint8 tokenOutDecimals = IAsset(tokenOut).decimals();
        uint24 _ratioDeviationThreshold;

        {
            uint256 ratiosWord = _loadRatios();
            uint24 _swapDeviationThreshold = _decodeUint24(
                ratiosWord,
                EverlongALMStorageLib.SWAP_DEVIATION_THRESHOLD_OFFSET
            );
            _ratioDeviationThreshold = _decodeUint24(
                ratiosWord,
                EverlongALMStorageLib.RATIO_DEVIATION_THRESHOLD_OFFSET
            );

            uint256 tokenOutBalanceAfter = params.isZeroForOne
                ? alm.getBalance1()
                : alm.getBalance0();
            amountOut = tokenOutBalanceAfter - tokenOutBalanceBefore;

            uint256 sentValue = _assetValue(
                params.sentAmount,
                sentPrice,
                tokenInDecimals
            );
            uint256 receivedValue = _assetValue(
                amountOut,
                receivedPrice,
                tokenOutDecimals
            );
            if (
                receivedValue <
                (sentValue * (HUNDRED_PERCENT - _swapDeviationThreshold)) /
                    HUNDRED_PERCENT
            ) {
                revert EV_SwapSlippageExceeded(receivedValue, sentValue);
            }

            if (amountOut < params.minRebalanceOut) {
                revert EV_InsufficientSwapOutput(
                    amountOut,
                    params.minRebalanceOut
                );
            }
        }

        {
            (uint256 total0, uint256 total1) = alm.getTotalAmounts();
            uint256 totalTokenIn = params.isZeroForOne ? total0 : total1;
            uint256 totalTokenOut = params.isZeroForOne ? total1 : total0;
            uint256 tokenInBalanceValue = _assetValue(
                totalTokenIn,
                sentPrice,
                tokenInDecimals
            );
            uint256 tokenOutBalanceValue = _assetValue(
                totalTokenOut,
                receivedPrice,
                tokenOutDecimals
            );
            uint256 maxDelta = (Math.min(
                tokenInBalanceValue,
                tokenOutBalanceValue
            ) * _ratioDeviationThreshold) / HUNDRED_PERCENT;

            if (
                !PropMath._isApproxEqAbs(
                    tokenInBalanceValue,
                    tokenOutBalanceValue,
                    maxDelta
                )
            ) {
                revert EV_RatioDeviationExceeded(
                    tokenInBalanceValue,
                    tokenOutBalanceValue
                );
            }
        }
    }

    /// @dev Wrapper around `IUniswapV3Pool.positions()`.
    function _position(
        int24 tickLower,
        int24 tickUpper
    ) internal view returns (uint128, uint256, uint256, uint128, uint128) {
        bytes32 positionKey = PositionKey.compute(
            address(alm),
            tickLower,
            tickUpper
        );
        return pool.positions(positionKey);
    }

    /// @dev Returned in WAD
    function _assetValue(
        uint256 amount,
        uint256 price,
        uint8 decimals
    ) internal pure returns (uint256) {
        return amount.convertToValue(price, decimals);
    }
}
