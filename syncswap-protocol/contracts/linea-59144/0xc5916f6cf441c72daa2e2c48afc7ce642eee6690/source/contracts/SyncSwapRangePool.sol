// SPDX-License-Identifier: GPL-2.0-or-later

pragma solidity =0.7.6;
pragma abicoder v2;

import "./interfaces/IFeeRecipient.sol";
import "./interfaces/IPoolMaster.sol";
import "./interfaces/ISyncSwapRangePool.sol";
import "./interfaces/ISyncSwapRangePoolFactory.sol";
import "./interfaces/callback/ICLFlashCallback.sol";
import "./interfaces/callback/ICLMintCallback.sol";

import "./interfaces/callback/ICLSwapCallback.sol";
import "./interfaces/callback/ISyncSwapBaseCallback.sol";
import "./interfaces/external/IERC20Minimal.sol";

import "./libraries/LiquidityMath.sol";
import "./libraries/Position.sol";
import "./libraries/SqrtPriceMath.sol";

import "./libraries/Tick.sol";
import "./libraries/TickMath.sol";
import "./libraries/external/FixedPoint128.sol";
import "./libraries/external/FullMath.sol";
import "./libraries/external/LowGasSafeMath.sol";
import "./libraries/external/SafeCast.sol";
import "./libraries/external/TransferHelper.sol";
import "./libraries/SwapLib.sol";

/**
 move to SwapLib
 import "./libraries/TickBitmap.sol";
 import "./libraries/SwapMath.sol";
 import "./libraries/Oracle.sol";
**/

contract SyncSwapRangePool is ISyncSwapRangePool {
    using LowGasSafeMath for uint256;
    using LowGasSafeMath for int256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using Tick for mapping(int24 => Tick.Info);
    using SwapLib for mapping(int16 => uint256);
    using Position for mapping(bytes32 => Position.Info);
    using Position for Position.Info;
    using SwapLib for SwapLib.Observation[65535];

    /// @dev Pool type `4` for concentrated pools.
    uint16 public constant poolType = 4;

    /// @dev Protocol version 3.
    uint public constant poolVersion = 3;

    /// @inheritdoc ICLPoolConstants
    address public override master;
    /// @inheritdoc ICLPoolConstants
    address public override factory;
    /// @inheritdoc ICLPoolConstants
    address public override token0;
    /// @inheritdoc ICLPoolConstants
    address public override token1;
    /// @inheritdoc ICLPoolConstants
    address public override gauge;
    /// @inheritdoc ICLPoolConstants
    address public override nft;

    struct Slot0 {
        // the current price
        uint160 sqrtPriceX96;
        // the current tick
        int24 tick;
        // the most-recently updated index of the observations array
        uint16 observationIndex;
        // the current maximum number of observations that are being stored
        uint16 observationCardinality;
        // the next maximum number of observations to store, triggered in observations.write
        uint16 observationCardinalityNext;
        // whether the pool is locked
        bool unlocked;
    }

    /// @inheritdoc ICLPoolState
    Slot0 public override slot0;

    /// @inheritdoc ICLPoolState
    uint256 public override feeGrowthGlobal0X128;
    /// @inheritdoc ICLPoolState
    uint256 public override feeGrowthGlobal1X128;
    /// @inheritdoc ICLPoolState
    uint256 public override rewardGrowthGlobalX128;

    // accumulated gauge fees in token0/token1 units
    struct GaugeFees {
        uint128 token0;
        uint128 token1;
    }
    /// @inheritdoc ICLPoolState
    GaugeFees public override gaugeFees;

    /// @inheritdoc ICLPoolState
    uint256 public override rewardRate;
    /// @inheritdoc ICLPoolState
    uint256 public override rewardReserve;
    /// @inheritdoc ICLPoolState
    uint256 public override periodFinish;
    /// @inheritdoc ICLPoolState
    uint256 public override rollover;

    /// @inheritdoc ICLPoolState
    uint128 public override stakedLiquidity;
    /// @inheritdoc ICLPoolState
    uint32 public override lastUpdated;
    /// @inheritdoc ICLPoolConstants
    int24 public override tickSpacing;

    /// @inheritdoc ICLPoolState
    uint128 public override liquidity;
    /// @inheritdoc ICLPoolConstants
    uint128 public override maxLiquidityPerTick;

    /// @inheritdoc ICLPoolState
    mapping(int24 => Tick.Info) public override ticks;
    /// @inheritdoc ICLPoolState
    mapping(int16 => uint256) public override tickBitmap;
    /// @inheritdoc ICLPoolState
    mapping(bytes32 => Position.Info) public override positions;
    /// @inheritdoc ICLPoolState
    SwapLib.Observation[65535] public override observations;

    /// @dev Mutually exclusive reentrancy protection into the pool to/from a method. This method also prevents entrance
    /// to a function before the pool is initialized. The reentrancy guard is required throughout the contract because
    /// we use balance checks to determine the payment status of interactions such as mint, swap and flash.
    modifier lock() {
        require(slot0.unlocked);
        slot0.unlocked = false;
        _;
        slot0.unlocked = true;
    }

    modifier onlyGauge() {
        require(msg.sender == gauge);
        _;
    }

    modifier onlyNFTManager() {
        require(msg.sender == nft);
        _;
    }

    /// @inheritdoc ICLPoolActions
    function initialize(
        address _factory,
        address _token0,
        address _token1,
        int24 _tickSpacing,
        uint160 _sqrtPriceX96
    ) external override {
        require(factory == address(0));

        factory = _factory;
        master = ISyncSwapRangePoolFactory(_factory).master();

        token0 = _token0;
        token1 = _token1;
        tickSpacing = _tickSpacing;

        maxLiquidityPerTick = Tick.tickSpacingToMaxLiquidityPerTick(_tickSpacing);

        int24 tick = TickMath.getTickAtSqrtRatio(_sqrtPriceX96);

        (uint16 cardinality, uint16 cardinalityNext) = observations.initialize(_blockTimestamp());

        slot0 = Slot0({
            sqrtPriceX96: _sqrtPriceX96,
            tick: tick,
            observationIndex: 0,
            observationCardinality: cardinality,
            observationCardinalityNext: cardinalityNext,
            unlocked: true
        });

        emit Initialize(_sqrtPriceX96, tick);
    }

    /*
    function fee() public view override returns (uint24) {
        return ISyncSwapRangePoolFactory(factory).getSwapFee(address(this));
    }
    */

    function getProtocolFee() public view override returns (uint24) {
        try ISyncSwapRangePoolFactory(factory).getProtocolFee(address(this)) returns (uint24 _protocolFee) {
            return _protocolFee;
        } catch {
            return 30000; // 30%
        }
    }

    /// @dev Common checks for valid tick inputs.
    function checkTicks(int24 tickLower, int24 tickUpper) private pure {
        require(tickLower < tickUpper);
        require(tickLower >= TickMath.MIN_TICK);
        require(tickUpper <= TickMath.MAX_TICK);
    }

    /// @dev Returns the block timestamp truncated to 32 bits, i.e. mod 2**32. This method is overridden in tests.
    function _blockTimestamp() private view returns (uint32) {
        return uint32(block.timestamp); // truncation is desired
    }

    /// @dev Get the pool's balance of token0
    /// @dev This function is gas optimized to avoid a redundant extcodesize check in addition to the returndatasize
    /// check
    function balance0() private view returns (uint256) {
        return _getBalance(token0);
    }

    /// @dev Get the pool's balance of token1
    /// @dev This function is gas optimized to avoid a redundant extcodesize check in addition to the returndatasize
    /// check
    function balance1() private view returns (uint256) {
        return _getBalance(token1);
    }

    function _getBalance(address _token) private view returns (uint256) {
        (bool success, bytes memory data) =
            _token.staticcall(abi.encodeWithSelector(IERC20Minimal.balanceOf.selector, address(this)));
        require(success && data.length >= 32);
        return abi.decode(data, (uint256));
    }

    /// @inheritdoc ICLPoolDerivedState
    function snapshotCumulativesInside(int24 tickLower, int24 tickUpper)
        external
        view
        override
        returns (int56 tickCumulativeInside, uint160 secondsPerLiquidityInsideX128, uint32 secondsInside)
    {
        checkTicks(tickLower, tickUpper);

        int56 tickCumulativeLower;
        int56 tickCumulativeUpper;
        uint160 secondsPerLiquidityOutsideLowerX128;
        uint160 secondsPerLiquidityOutsideUpperX128;
        uint32 secondsOutsideLower;
        uint32 secondsOutsideUpper;

        {
            Tick.Info storage lower = ticks[tickLower];
            Tick.Info storage upper = ticks[tickUpper];
            bool initializedLower;
            (tickCumulativeLower, secondsPerLiquidityOutsideLowerX128, secondsOutsideLower, initializedLower) = (
                lower.tickCumulativeOutside,
                lower.secondsPerLiquidityOutsideX128,
                lower.secondsOutside,
                lower.initialized
            );
            require(initializedLower);

            bool initializedUpper;
            (tickCumulativeUpper, secondsPerLiquidityOutsideUpperX128, secondsOutsideUpper, initializedUpper) = (
                upper.tickCumulativeOutside,
                upper.secondsPerLiquidityOutsideX128,
                upper.secondsOutside,
                upper.initialized
            );
            require(initializedUpper);
        }

        Slot0 memory _slot0 = slot0;

        if (_slot0.tick < tickLower) {
            return (
                tickCumulativeLower - tickCumulativeUpper,
                secondsPerLiquidityOutsideLowerX128 - secondsPerLiquidityOutsideUpperX128,
                secondsOutsideLower - secondsOutsideUpper
            );
        } else if (_slot0.tick < tickUpper) {
            uint32 time = _blockTimestamp();
            (int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128) = observations.observeSingle(
                time, 0, _slot0.tick, _slot0.observationIndex, liquidity, _slot0.observationCardinality
            );
            return (
                tickCumulative - tickCumulativeLower - tickCumulativeUpper,
                secondsPerLiquidityCumulativeX128 - secondsPerLiquidityOutsideLowerX128
                    - secondsPerLiquidityOutsideUpperX128,
                time - secondsOutsideLower - secondsOutsideUpper
            );
        } else {
            return (
                tickCumulativeUpper - tickCumulativeLower,
                secondsPerLiquidityOutsideUpperX128 - secondsPerLiquidityOutsideLowerX128,
                secondsOutsideUpper - secondsOutsideLower
            );
        }
    }

    /// @inheritdoc ICLPoolDerivedState
    function observe(uint32[] calldata secondsAgos)
        external
        view
        override
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s)
    {
        return observations.observe(
            _blockTimestamp(), secondsAgos, slot0.tick, slot0.observationIndex, liquidity, slot0.observationCardinality
        );
    }

    /// @inheritdoc ICLPoolActions
    function increaseObservationCardinalityNext(uint16 observationCardinalityNext) external override lock {
        uint16 observationCardinalityNextOld = slot0.observationCardinalityNext; // for the event
        uint16 observationCardinalityNextNew =
            observations.grow(observationCardinalityNextOld, observationCardinalityNext);
        slot0.observationCardinalityNext = observationCardinalityNextNew;
        if (observationCardinalityNextOld != observationCardinalityNextNew) {
            emit IncreaseObservationCardinalityNext(observationCardinalityNextOld, observationCardinalityNextNew);
        }
    }

    struct ModifyPositionParams {
        // the address that owns the position
        address owner;
        // the lower and upper tick of the position
        int24 tickLower;
        int24 tickUpper;
        // any change in liquidity
        int128 liquidityDelta;
    }

    /// @dev Effect some changes to a position
    /// @param params the position details and the change to the position's liquidity to effect
    /// @return position a storage pointer referencing the position with the given owner and tick range
    /// @return amount0 the amount of token0 owed to the pool, negative if the pool should pay the recipient
    /// @return amount1 the amount of token1 owed to the pool, negative if the pool should pay the recipient
    function _modifyPosition(ModifyPositionParams memory params)
        private
        returns (Position.Info storage position, int256 amount0, int256 amount1)
    {
        checkTicks(params.tickLower, params.tickUpper);

        Slot0 memory _slot0 = slot0; // SLOAD for gas optimization

        position = _updatePosition(params.owner, params.tickLower, params.tickUpper, params.liquidityDelta, _slot0.tick);

        if (params.liquidityDelta != 0) {
            if (_slot0.tick < params.tickLower) {
                // current tick is below the passed range; liquidity can only become in range by crossing from left to
                // right, when we'll need _more_ token0 (it's becoming more valuable) so user must provide it
                amount0 = SqrtPriceMath.getAmount0Delta(
                    TickMath.getSqrtRatioAtTick(params.tickLower),
                    TickMath.getSqrtRatioAtTick(params.tickUpper),
                    params.liquidityDelta
                );
            } else if (_slot0.tick < params.tickUpper) {
                // current tick is inside the passed range
                uint128 liquidityBefore = liquidity; // SLOAD for gas optimization

                // write an oracle entry
                (slot0.observationIndex, slot0.observationCardinality) = observations.write(
                    _slot0.observationIndex,
                    _blockTimestamp(),
                    _slot0.tick,
                    liquidityBefore,
                    _slot0.observationCardinality,
                    _slot0.observationCardinalityNext
                );

                amount0 = SqrtPriceMath.getAmount0Delta(
                    _slot0.sqrtPriceX96, TickMath.getSqrtRatioAtTick(params.tickUpper), params.liquidityDelta
                );
                amount1 = SqrtPriceMath.getAmount1Delta(
                    TickMath.getSqrtRatioAtTick(params.tickLower), _slot0.sqrtPriceX96, params.liquidityDelta
                );

                liquidity = LiquidityMath.addDelta(liquidityBefore, params.liquidityDelta);
            } else {
                // current tick is above the passed range; liquidity can only become in range by crossing from right to
                // left, when we'll need _more_ token1 (it's becoming more valuable) so user must provide it
                amount1 = SqrtPriceMath.getAmount1Delta(
                    TickMath.getSqrtRatioAtTick(params.tickLower),
                    TickMath.getSqrtRatioAtTick(params.tickUpper),
                    params.liquidityDelta
                );
            }
        }
    }

    /// @dev Gets and updates a position with the given liquidity delta
    /// @param owner the owner of the position
    /// @param tickLower the lower tick of the position's tick range
    /// @param tickUpper the upper tick of the position's tick range
    /// @param tick the current tick, passed to avoid sloads
    function _updatePosition(address owner, int24 tickLower, int24 tickUpper, int128 liquidityDelta, int24 tick)
        private
        returns (Position.Info storage position)
    {
        position = positions.get(owner, tickLower, tickUpper);

        uint256 _feeGrowthGlobal0X128 = feeGrowthGlobal0X128; // SLOAD for gas optimization
        uint256 _feeGrowthGlobal1X128 = feeGrowthGlobal1X128; // SLOAD for gas optimization
        uint256 _rewardGrowthGlobalX128 = rewardGrowthGlobalX128; // SLOAD for gas optimization

        // if we need to update the ticks, do it
        bool flippedLower;
        bool flippedUpper;
        if (liquidityDelta != 0) {
            uint32 time = _blockTimestamp();
            (int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128) = observations.observeSingle(
                time, 0, slot0.tick, slot0.observationIndex, liquidity, slot0.observationCardinality
            );

            flippedLower = ticks.update(
                tickLower,
                tick,
                liquidityDelta,
                _feeGrowthGlobal0X128,
                _feeGrowthGlobal1X128,
                _rewardGrowthGlobalX128,
                secondsPerLiquidityCumulativeX128,
                tickCumulative,
                time,
                false,
                maxLiquidityPerTick
            );
            flippedUpper = ticks.update(
                tickUpper,
                tick,
                liquidityDelta,
                _feeGrowthGlobal0X128,
                _feeGrowthGlobal1X128,
                _rewardGrowthGlobalX128,
                secondsPerLiquidityCumulativeX128,
                tickCumulative,
                time,
                true,
                maxLiquidityPerTick
            );

            if (flippedLower) {
                tickBitmap.flipTick(tickLower, tickSpacing);
            }
            if (flippedUpper) {
                tickBitmap.flipTick(tickUpper, tickSpacing);
            }
        }

        (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =
            ticks.getFeeGrowthInside(tickLower, tickUpper, tick, _feeGrowthGlobal0X128, _feeGrowthGlobal1X128);

        bool staked = (owner == gauge) && (owner != address(0));
        position.update(liquidityDelta, feeGrowthInside0X128, feeGrowthInside1X128, staked);

        // clear any tick data that is no longer needed
        if (liquidityDelta < 0) {
            if (flippedLower) {
                ticks.clear(tickLower);
            }
            if (flippedUpper) {
                ticks.clear(tickUpper);
            }
        }
    }

    /// @inheritdoc ICLPoolActions
    function mint(address recipient, int24 tickLower, int24 tickUpper, uint128 amount, bytes calldata data)
        external
        override
        lock
        returns (uint256 amount0, uint256 amount1)
    {
        require(amount != 0);
        (, int256 amount0Int, int256 amount1Int) = _modifyPosition(
            ModifyPositionParams({
                owner: recipient,
                tickLower: tickLower,
                tickUpper: tickUpper,
                liquidityDelta: int256(amount).toInt128()
            })
        );

        amount0 = uint256(amount0Int);
        amount1 = uint256(amount1Int);

        uint256 balance0Before;
        uint256 balance1Before;
        if (amount0 != 0) {
            balance0Before = balance0();
        }
        if (amount1 != 0) {
            balance1Before = balance1();
        }
        
        ICLMintCallback(msg.sender).uniswapV3MintCallback(amount0, amount1, data);
        if (amount0 != 0) {
            require(balance0Before.add(amount0) <= balance0());
        }
        if (amount1 != 0) {
            require(balance1Before.add(amount1) <= balance1());
        }

        emit Mint(msg.sender, recipient, tickLower, tickUpper, amount, amount0, amount1);
    }

    /// @inheritdoc ICLPoolActions
    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external override returns (uint128 amount0, uint128 amount1) {
        (amount0, amount1) = _collect({
            recipient: recipient,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Requested: amount0Requested,
            amount1Requested: amount1Requested,
            owner: msg.sender
        });
    }

    /// @inheritdoc ICLPoolActions
    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested,
        address owner
    ) external override onlyNFTManager returns (uint128 amount0, uint128 amount1) {
        (amount0, amount1) = _collect({
            recipient: recipient,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Requested: amount0Requested,
            amount1Requested: amount1Requested,
            owner: owner
        });
    }

    function _collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested,
        address owner
    ) private lock returns (uint128 amount0, uint128 amount1) {
        // we don't need to checkTicks here, because invalid positions will never have non-zero tokensOwed{0,1}
        Position.Info storage position = positions.get(owner, tickLower, tickUpper);

        amount0 = amount0Requested > position.tokensOwed0 ? position.tokensOwed0 : amount0Requested;
        amount1 = amount1Requested > position.tokensOwed1 ? position.tokensOwed1 : amount1Requested;

        if (amount0 != 0) {
            position.tokensOwed0 -= amount0;
            TransferHelper.safeTransfer(token0, recipient, amount0);
        }
        if (amount1 != 0) {
            position.tokensOwed1 -= amount1;
            TransferHelper.safeTransfer(token1, recipient, amount1);
        }

        emit Collect(owner, recipient, tickLower, tickUpper, amount0, amount1);
    }

    /// @inheritdoc ICLPoolActions
    function burn(int24 tickLower, int24 tickUpper, uint128 amount)
        external
        override
        lock
        returns (uint256 amount0, uint256 amount1)
    {
        (amount0, amount1) = _burn({tickLower: tickLower, tickUpper: tickUpper, amount: amount, owner: msg.sender});
    }

    /// @inheritdoc ICLPoolActions
    function burn(int24 tickLower, int24 tickUpper, uint128 amount, address owner)
        external
        override
        lock
        onlyNFTManager
        returns (uint256 amount0, uint256 amount1)
    {
        (amount0, amount1) = _burn({tickLower: tickLower, tickUpper: tickUpper, amount: amount, owner: owner});
    }

    function _burn(int24 tickLower, int24 tickUpper, uint128 amount, address owner)
        private
        returns (uint256 amount0, uint256 amount1)
    {
        (Position.Info storage position, int256 amount0Int, int256 amount1Int) = _modifyPosition(
            ModifyPositionParams({
                owner: owner,
                tickLower: tickLower,
                tickUpper: tickUpper,
                liquidityDelta: -int256(amount).toInt128()
            })
        );

        amount0 = uint256(-amount0Int);
        amount1 = uint256(-amount1Int);

        if (amount0 != 0 || amount1 != 0) {
            (position.tokensOwed0, position.tokensOwed1) =
                (position.tokensOwed0 + uint128(amount0), position.tokensOwed1 + uint128(amount1));
        }

        emit Burn(owner, tickLower, tickUpper, amount, amount0, amount1);
    }

    /// @inheritdoc ICLPoolActions
    function stake(int128 stakedLiquidityDelta, int24 tickLower, int24 tickUpper, bool positionUpdate)
        external
        override
        lock
        onlyGauge
    {
        int24 tick = slot0.tick;
        // Increase staked liquidity in the current tick
        if (tick >= tickLower && tick < tickUpper) {
            _updateRewardsGrowthGlobal();
            stakedLiquidity = LiquidityMath.addDelta(stakedLiquidity, stakedLiquidityDelta);
        }

        if (positionUpdate) {
            Position.Info storage nftPosition = positions.get(nft, tickLower, tickUpper);
            Position.Info storage gaugePosition = positions.get(gauge, tickLower, tickUpper);

            (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =
                ticks.getFeeGrowthInside(tickLower, tickUpper, tick, feeGrowthGlobal0X128, feeGrowthGlobal1X128);

            // Assign the staked positions virtually to the gauge
            nftPosition.update(-stakedLiquidityDelta, feeGrowthInside0X128, feeGrowthInside1X128, false);
            gaugePosition.update(stakedLiquidityDelta, feeGrowthInside0X128, feeGrowthInside1X128, true);
        }

        // Update tick locations where staked liquidity needs to be added or subtracted
        // Only update ticks if current tick is initialized
        if (ticks[tickLower].initialized) {
            ticks.updateStake(tickLower, stakedLiquidityDelta, false);
        }
        if (ticks[tickUpper].initialized) {
            ticks.updateStake(tickUpper, stakedLiquidityDelta, true);
        }
    }

    struct SwapCache {
        // liquidity at the beginning of the swap
        uint128 liquidityStart;
        // staked liquidity at the beginning of the swap
        uint128 stakedLiquidityStart;
        // the timestamp of the current block
        uint32 blockTimestamp;
        // the current value of the tick accumulator, computed only if we cross an initialized tick
        int56 tickCumulative;
        // the current value of seconds per liquidity accumulator, computed only if we cross an initialized tick
        uint160 secondsPerLiquidityCumulativeX128;
        // whether we've computed and cached the above two accumulators
        bool computedLatestObservation;
    }

    // the top level state of the swap, the results of which are recorded in storage at the end
    struct SwapState {
        // the amount remaining to be swapped in/out of the input/output asset
        int256 amountSpecifiedRemaining;
        // the amount already swapped out/in of the output/input asset
        int256 amountCalculated;
        // current sqrt(price)
        uint160 sqrtPriceX96;
        // the tick associated with the current price
        int24 tick;
        // the fee associated with the pool
        uint24 fee;
        // wether we've updated the fees in the current swap
        bool hasUpdatedFees;
        // the global fee growth of the input token
        uint256 feeGrowthGlobalX128;
        // amount of input token paid as gauge fee
        uint128 gaugeFee;
        // the current liquidity in range
        uint128 liquidity;
        // the current staked liquidity in range
        uint128 stakedLiquidity;
        // whether the swap is using exact input
        bool exactInput;
        // how much fee is being paid in total
        uint256 totalFeeAmount;
        // balance of token0 before swap transfers
        uint256 balance0Before;
        // balance of token1 before swap transfers
        uint256 balance1Before;
        // balance of swap input token after swap transfers
        uint256 balanceAfter;
    }

    struct StepComputations {
        // the price at the beginning of the step
        uint160 sqrtPriceStartX96;
        // the next tick to swap to from the current tick in the swap direction
        int24 tickNext;
        // whether tickNext is initialized or not
        bool initialized;
        // sqrt(price) for the next tick (1/0)
        uint160 sqrtPriceNextX96;
        // how much is being swapped in in this step
        uint256 amountIn;
        // how much is being swapped out
        uint256 amountOut;
        // how much fee is being paid in
        uint256 feeAmount;
    }

    struct SwapParams {
        address recipient;
        bool zeroForOne;
        int256 amountSpecified;
        uint160 sqrtPriceLimitX96;
        address sender;
        bytes data;
        address callback;
        bytes callbackData;
    }

    /// @inheritdoc ICLPoolActions
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external override returns (int256 amount0, int256 amount1) {
        (amount0, amount1) = swap(SwapParams({
            recipient: recipient,
            zeroForOne: zeroForOne,
            amountSpecified: amountSpecified,
            sqrtPriceLimitX96: sqrtPriceLimitX96,
            sender: msg.sender,
            data: data,
            callback: address(0),
            callbackData: ""
        }));
    }

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data,
        address sender,
        address callback,
        bytes calldata callbackData
    ) external override returns (int256 amount0, int256 amount1) {
        (amount0, amount1) = swap(
            SwapParams({
                recipient: recipient,
                zeroForOne: zeroForOne,
                amountSpecified: amountSpecified,
                sqrtPriceLimitX96: sqrtPriceLimitX96,
                sender: sender,
                data: data,
                callback: callback,
                callbackData: callbackData
            })
        );
    }

    function swap(SwapParams memory params) public returns (int256 amount0, int256 amount1) {
        require(params.amountSpecified != 0);

        Slot0 memory slot0Start = slot0;

        require(slot0Start.unlocked);
        require(
            params.zeroForOne
                ? params.sqrtPriceLimitX96 < slot0Start.sqrtPriceX96 && params.sqrtPriceLimitX96 > TickMath.MIN_SQRT_RATIO
                : params.sqrtPriceLimitX96 > slot0Start.sqrtPriceX96 && params.sqrtPriceLimitX96 < TickMath.MAX_SQRT_RATIO
        );

        slot0.unlocked = false;

        SwapCache memory cache = SwapCache({
            liquidityStart: liquidity,
            stakedLiquidityStart: stakedLiquidity,
            blockTimestamp: _blockTimestamp(),
            secondsPerLiquidityCumulativeX128: 0,
            tickCumulative: 0,
            computedLatestObservation: false
        });

        //bool exactInput = amountSpecified > 0;
        params.sender = _getVerifiedSender(params.sender);

        SwapState memory state = SwapState({
            amountSpecifiedRemaining: params.amountSpecified,
            amountCalculated: 0,
            sqrtPriceX96: slot0Start.sqrtPriceX96,
            tick: slot0Start.tick,
            //fee: fee(),
            fee: params.zeroForOne ? _getSwapFee(params.sender, token0, token1) : _getSwapFee(params.sender, token1, token0),
            hasUpdatedFees: false,
            feeGrowthGlobalX128: params.zeroForOne ? feeGrowthGlobal0X128 : feeGrowthGlobal1X128,
            gaugeFee: 0,
            liquidity: cache.liquidityStart,
            stakedLiquidity: cache.stakedLiquidityStart,
            exactInput: params.amountSpecified > 0,
            totalFeeAmount: 0,
            balance0Before: 0,
            balance1Before: 0,
            balanceAfter: 0
        });

        // continue swapping as long as we haven't used the entire input/output and haven't reached the price limit
        while (state.amountSpecifiedRemaining != 0 && state.sqrtPriceX96 != params.sqrtPriceLimitX96) {
            StepComputations memory step;

            step.sqrtPriceStartX96 = state.sqrtPriceX96;

            (step.tickNext, step.initialized) =
                tickBitmap.nextInitializedTickWithinOneWord(state.tick, tickSpacing, params.zeroForOne);

            // ensure that we do not overshoot the min/max tick, as the tick bitmap is not aware of these bounds
            if (step.tickNext < TickMath.MIN_TICK) {
                step.tickNext = TickMath.MIN_TICK;
            } else if (step.tickNext > TickMath.MAX_TICK) {
                step.tickNext = TickMath.MAX_TICK;
            }

            // get the price for the next tick
            step.sqrtPriceNextX96 = TickMath.getSqrtRatioAtTick(step.tickNext);

            // compute values to swap to the target tick, price limit, or point where input/output amount is exhausted
            (state.sqrtPriceX96, step.amountIn, step.amountOut, step.feeAmount) = SwapLib.computeSwapStep(
                state.sqrtPriceX96,
                (params.zeroForOne ? step.sqrtPriceNextX96 < params.sqrtPriceLimitX96 : step.sqrtPriceNextX96 > params.sqrtPriceLimitX96)
                    ? params.sqrtPriceLimitX96
                    : step.sqrtPriceNextX96,
                state.liquidity,
                state.amountSpecifiedRemaining,
                state.fee
            );

            if (state.exactInput) {
                state.amountSpecifiedRemaining -= (step.amountIn + step.feeAmount).toInt256();
                state.amountCalculated = state.amountCalculated.sub(step.amountOut.toInt256());
            } else {
                state.amountSpecifiedRemaining += step.amountOut.toInt256();
                state.amountCalculated = state.amountCalculated.add((step.amountIn + step.feeAmount).toInt256());
            }

            // update global fee tracker and gauge fee
            if (state.liquidity != 0) {
                (uint256 _feeGrowthGlobalX128, uint256 _protocolFeeAmount) =
                    _calculateFees(step.feeAmount, state.liquidity);

                state.feeGrowthGlobalX128 += _feeGrowthGlobalX128;
                state.gaugeFee += uint128(_protocolFeeAmount);
                state.totalFeeAmount += step.feeAmount;
            }

            // shift tick if we reached the next price
            if (state.sqrtPriceX96 == step.sqrtPriceNextX96) {
                // if the tick is initialized, run the tick transition
                if (step.initialized) {
                    // check for the placeholder value, which we replace with the actual value the first time the swap
                    // crosses an initialized tick
                    if (!cache.computedLatestObservation) {
                        (cache.tickCumulative, cache.secondsPerLiquidityCumulativeX128) = observations.observeSingle(
                            cache.blockTimestamp,
                            0,
                            slot0Start.tick,
                            slot0Start.observationIndex,
                            cache.liquidityStart,
                            slot0Start.observationCardinality
                        );
                        cache.computedLatestObservation = true;
                    }
                    if (!state.hasUpdatedFees) {
                        _updateRewardsGrowthGlobal();
                        state.hasUpdatedFees = true;
                    }
                    Tick.LiquidityNets memory nets = ticks.cross(
                        step.tickNext,
                        (params.zeroForOne ? state.feeGrowthGlobalX128 : feeGrowthGlobal0X128),
                        (params.zeroForOne ? feeGrowthGlobal1X128 : state.feeGrowthGlobalX128),
                        cache.secondsPerLiquidityCumulativeX128,
                        cache.tickCumulative,
                        cache.blockTimestamp,
                        rewardGrowthGlobalX128
                    );
                    // if we're moving leftward, we interpret liquidityNet & stakedLiquidityNet as the opposite sign
                    // safe because liquidityNet & stakedLiquidityNet cannot be type(int128).min
                    if (params.zeroForOne) {
                        nets.liquidityNet = -nets.liquidityNet;
                        nets.stakedLiquidityNet = -nets.stakedLiquidityNet;
                    }

                    state.liquidity = LiquidityMath.addDelta(state.liquidity, nets.liquidityNet);
                    state.stakedLiquidity = LiquidityMath.addDelta(state.stakedLiquidity, nets.stakedLiquidityNet);
                }

                state.tick = params.zeroForOne ? step.tickNext - 1 : step.tickNext;
            } else if (state.sqrtPriceX96 != step.sqrtPriceStartX96) {
                // recompute unless we're on a lower tick boundary (i.e. already transitioned ticks), and haven't moved
                state.tick = TickMath.getTickAtSqrtRatio(state.sqrtPriceX96);
            }
        }

        // update tick and write an oracle entry if the tick change
        if (state.tick != slot0Start.tick) {
            (uint16 observationIndex, uint16 observationCardinality) = observations.write(
                slot0Start.observationIndex,
                cache.blockTimestamp,
                slot0Start.tick,
                cache.liquidityStart,
                slot0Start.observationCardinality,
                slot0Start.observationCardinalityNext
            );
            (slot0.sqrtPriceX96, slot0.tick, slot0.observationIndex, slot0.observationCardinality) =
                (state.sqrtPriceX96, state.tick, observationIndex, observationCardinality);
        } else {
            // otherwise just update the price
            slot0.sqrtPriceX96 = state.sqrtPriceX96;
        }

        // update liquidity and stakedLiquidity if it changed
        if (cache.liquidityStart != state.liquidity) liquidity = state.liquidity;
        if (cache.stakedLiquidityStart != state.stakedLiquidity) stakedLiquidity = state.stakedLiquidity;

        // update fee growth global and, if necessary, gauge fees
        // overflow is acceptable, protocol has to withdraw before it hits type(uint128).max fees
        if (params.zeroForOne) {
            feeGrowthGlobal0X128 = state.feeGrowthGlobalX128;
            if (state.gaugeFee != 0) {
                gaugeFees.token0 += state.gaugeFee;
            }
            _notifyFeeAmount(token0, state.fee, state.totalFeeAmount, state.gaugeFee); // notify fee amount
        } else {
            feeGrowthGlobal1X128 = state.feeGrowthGlobalX128;
            if (state.gaugeFee != 0) {
                gaugeFees.token1 += state.gaugeFee;
            }
            _notifyFeeAmount(token1, state.fee, state.totalFeeAmount, state.gaugeFee); // notify fee amount
        }

        (amount0, amount1) = params.zeroForOne == state.exactInput
            ? (params.amountSpecified - state.amountSpecifiedRemaining, state.amountCalculated)
            : (state.amountCalculated, params.amountSpecified - state.amountSpecifiedRemaining);

        // do the transfers and collect payment
        if (params.zeroForOne) {
            if (amount1 < 0) {
                TransferHelper.safeTransfer(token1, params.recipient, uint256(-amount1));
            }

            if (params.callback != address(0)) {
                state.balance1Before = balance1();
            }

            state.balance0Before = balance0();
            ICLSwapCallback(msg.sender).uniswapV3SwapCallback(amount0, amount1, params.data);
            state.balanceAfter = balance0();
            require(state.balance0Before.add(uint256(amount0)) <= state.balanceAfter, "I");
        } else {
            if (amount0 < 0) {
                TransferHelper.safeTransfer(token0, params.recipient, uint256(-amount0));
            }

            if (params.callback != address(0)) {
                state.balance0Before = balance0();
            }

            state.balance1Before = balance1();
            ICLSwapCallback(msg.sender).uniswapV3SwapCallback(amount0, amount1, params.data);
            state.balanceAfter = balance1();
            require(state.balance1Before.add(uint256(amount1)) <= state.balanceAfter, "I");
        }

        // execute callback
        if (params.callback != address(0)) {
            ISyncSwapBaseCallback(params.callback).syncSwapBaseSwapCallback(
                ISyncSwapBaseCallback.BaseSwapCallbackParams({
                    sender: params.sender,
                    to: params.recipient,
                    tokenIn: params.zeroForOne ? token0 : token1,
                    tokenOut: params.zeroForOne ? token1 : token0,
                    reserve0: state.balance0Before,
                    reserve1: state.balance1Before,
                    balance0: params.zeroForOne ? state.balanceAfter : balance0(),
                    balance1: params.zeroForOne ? balance1() : state.balanceAfter,
                    amountIn: params.amountSpecified > 0 ? uint256(params.amountSpecified) : 0,
                    amountOut: params.zeroForOne ? uint256(-amount1) : uint256(-amount0),
                    feeIn: state.totalFeeAmount,
                    swapFee: state.fee,
                    withdrawMode: 3,
                    callbackData: params.callbackData
                })
            );
        }

        emit Swap(msg.sender, params.recipient, amount0, amount1, state.sqrtPriceX96, state.liquidity, state.tick);
        slot0.unlocked = true;
    }

    /// @inheritdoc ICLPoolActions
    function flash(
        address recipient,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external override lock {
        uint128 _liquidity = liquidity;
        require(_liquidity != 0);

        uint24 feeRate0 = getSwapFee(msg.sender, token1, token0, abi.encode(msg.sender, amount0));
        uint24 feeRate1 = getSwapFee(msg.sender, token0, token1, abi.encode(msg.sender, amount1));
        uint256 fee0 = FullMath.mulDivRoundingUp(amount0, feeRate0, 1e6);
        uint256 fee1 = FullMath.mulDivRoundingUp(amount1, feeRate1, 1e6);
        uint256 balance0Before = balance0();
        uint256 balance1Before = balance1();

        if (amount0 != 0) {
            TransferHelper.safeTransfer(token0, recipient, amount0);
        }
        if (amount1 != 0) {
            TransferHelper.safeTransfer(token1, recipient, amount1);
        }

        ICLFlashCallback(msg.sender).uniswapV3FlashCallback(fee0, fee1, data);

        uint256 paid0;
        uint256 paid1;
        {
            uint256 balance0After = balance0();
            uint256 balance1After = balance1();

            require(balance0Before.add(fee0) <= balance0After);
            require(balance1Before.add(fee1) <= balance1After);

            // sub is safe because we know balanceAfter is gt balanceBefore by at least fee
            paid0 = balance0After - balance0Before;
            paid1 = balance1After - balance1Before;
        }

        if (paid0 != 0) {
            (uint256 _feeGrowthGlobalX128, uint256 _protocolFeeAmount) = _calculateFees(paid0, _liquidity);

            if (_feeGrowthGlobalX128 != 0) {
                feeGrowthGlobal0X128 += _feeGrowthGlobalX128;
            }
            if (uint128(_protocolFeeAmount) != 0) {
                gaugeFees.token0 += uint128(_protocolFeeAmount);
            }
            _notifyFeeAmount(token0, feeRate0, fee0, _protocolFeeAmount); // notify fee amount
        }
        if (paid1 != 0) {
            (uint256 _feeGrowthGlobalX128, uint256 _protocolFeeAmount) = _calculateFees(paid1, _liquidity);

            if (_feeGrowthGlobalX128 != 0) {
                feeGrowthGlobal1X128 += _feeGrowthGlobalX128;
            }
            if (uint128(_protocolFeeAmount) != 0) {
                gaugeFees.token1 += uint128(_protocolFeeAmount);
            }
            _notifyFeeAmount(token1, feeRate1, fee1, _protocolFeeAmount); // notify fee amount
        }
        emit Flash(msg.sender, recipient, amount0, amount1, paid0, paid1);
    }

    /// @inheritdoc ICLPoolState
    function getRewardGrowthInside(int24 tickLower, int24 tickUpper, uint256 _rewardGrowthGlobalX128)
        external
        view
        override
        returns (uint256 rewardGrowthInside)
    {
        checkTicks(tickLower, tickUpper);
        if (_rewardGrowthGlobalX128 == 0) {
            _rewardGrowthGlobalX128 = rewardGrowthGlobalX128;
        }

        return ticks.getRewardGrowthInside(tickLower, tickUpper, slot0.tick, _rewardGrowthGlobalX128);
    }

    /// @inheritdoc ICLPoolActions
    function updateRewardsGrowthGlobal() external override lock onlyGauge {
        _updateRewardsGrowthGlobal();
    }

    /// @dev timeDelta != 0 handles case when function is called twice in the same block.
    /// @dev stakedLiquidity > 0 handles case when depositing staked liquidity and there is no liquidity staked yet,
    /// @dev or when notifying rewards when there is no liquidity stake
    function _updateRewardsGrowthGlobal() internal {
        uint32 timestamp = _blockTimestamp();
        uint256 _lastUpdated = lastUpdated;
        uint256 timeDelta = timestamp - _lastUpdated; // skip if second call in same block

        if (timeDelta != 0) {
            uint256 _rewardReserve = rewardReserve;
            if (_rewardReserve != 0) {
                uint256 reward = rewardRate * timeDelta;
                if (reward > _rewardReserve) {
                    reward = _rewardReserve;
                    rewardReserve = 0;
                } else {
                    rewardReserve -= reward;
                }
                uint128 _stakedLiquidity = stakedLiquidity;
                if (_stakedLiquidity != 0) {
                    rewardGrowthGlobalX128 += FullMath.mulDiv(reward, FixedPoint128.Q128, _stakedLiquidity);
                } else {
                    rollover += reward;
                }
            }

            lastUpdated = timestamp;
        }
    }

    /// @inheritdoc ICLPoolActions
    function syncReward(
        uint256 _rewardRate,
        uint256 _rewardReserve,
        uint256 _periodFinish
    ) external override lock onlyGauge {
        rewardRate = _rewardRate;
        rewardReserve = _rewardReserve;
        periodFinish = _periodFinish;
        delete rollover;
    }

    /*
    /// @notice Calculates the fees owed to staked liquidity, then calculates fee levied on unstaked liquidity
    /// @param feeAmount Total fees
    /// @param _liquidity Current liquidity in active tick
    /// @param _stakedLiquidity Current staked liquidity in active tick
    /// @return unstakedFeeAmount Fee amount for unstaked LPs after accounting for staked liquidity contribution and unstaked fee
    /// @return stakedFeeAmount Fee amount for staked LPs consisting of staked liquidity contribution and unstaked fee
    function splitFees(uint256 feeAmount, uint128 _liquidity, uint128 _stakedLiquidity)
        internal
        view
        returns (uint256 unstakedFeeAmount, uint256 stakedFeeAmount)
    {
        stakedFeeAmount = FullMath.mulDivRoundingUp(feeAmount, _stakedLiquidity, _liquidity);
        (unstakedFeeAmount, stakedFeeAmount) = applyUnstakedFees(feeAmount - stakedFeeAmount, stakedFeeAmount);
    }
    */

    /*
    /// @notice Calculates fee for levied on unstaked liquidity only
    /// @param _unstakedFeeAmount Fee amount for unstaked LPs net of staked liquidity contribution
    /// @param _stakedFeeAmount Fee amount for staked LPs consisting of staked liquidity contribution
    /// @return unstakedFeeAmount Fee amount for unstaked LPs after accounting for staked liquidity contribution and unstaked fee
    /// @return stakedFeeAmount Fee amount for staked LPs consisting of staked liquidity contribution and unstaked fee
    function applyUnstakedFees(uint256 _unstakedFeeAmount, uint256 _stakedFeeAmount)
        internal
        view
        returns (uint256 unstakedFeeAmount, uint256 stakedFeeAmount)
    {
        uint256 _stakedFee = FullMath.mulDivRoundingUp(_unstakedFeeAmount, unstakedFee(), 1e6);
        unstakedFeeAmount = _unstakedFeeAmount - _stakedFee;
        stakedFeeAmount = _stakedFeeAmount + _stakedFee;
    }
    */

    // calculates the protocol fee amount and fee growths
    function _calculateFees(
        uint256 _feeAmount,
        uint128 _liquidity/*, uint128 _stakedLiquidity*/
    ) private view returns (uint256 _feeGrowthGlobalX128, uint256 _protocolFeeAmount) {
        // amount of protocol fees
        _protocolFeeAmount = FullMath.mulDivRoundingUp(_feeAmount, getProtocolFee(), 1e5);

        // amount of position accrued fees
        uint256 _positionFeeAmount = _feeAmount.sub(_protocolFeeAmount);
        
        // calculate fee growth
        _feeGrowthGlobalX128 = FullMath.mulDiv(_positionFeeAmount, FixedPoint128.Q128, _liquidity);

        /*
        // if there is only staked liquidity
        if (_liquidity == _stakedLiquidity) {
            stakedFeeAmount = _feeAmount;
        }
        // if there is only unstaked liquidity
        else if (_stakedLiquidity == 0) {
            (uint256 unstakedFeeAmount, uint256 _stakedFeeAmount) = applyUnstakedFees(_feeAmount, 0);
            feeGrowthGlobalX128 = FullMath.mulDiv(unstakedFeeAmount, FixedPoint128.Q128, _liquidity);
            stakedFeeAmount = _stakedFeeAmount;
        }
        // if there are staked and unstaked liquidities
        else {
            (uint256 unstakedFeeAmount, uint256 _stakedFeeAmount) = splitFees(_feeAmount, _liquidity, _stakedLiquidity);
            feeGrowthGlobalX128 = FullMath.mulDiv(unstakedFeeAmount, FixedPoint128.Q128, _liquidity - _stakedLiquidity);
            stakedFeeAmount = _stakedFeeAmount;
        }
        */
    }

    /// @inheritdoc ICLPoolOwnerActions
    function collectFee(bool isTokenZero) external override lock returns (uint128 amount) {
        require(msg.sender == gauge || msg.sender == ISyncSwapRangePoolFactory(factory).feeCollector());

        amount = isTokenZero ? gaugeFees.token0 : gaugeFees.token1;
        if (amount > 1) {
            // ensure that the slot is not cleared, for gas savings
            if (isTokenZero) {
                gaugeFees.token0 = 1;
            } else {
                gaugeFees.token1 = 1;
            }
            TransferHelper.safeTransfer(isTokenZero ? token0 : token1, msg.sender, --amount);
        }

        emit CollectFees(msg.sender, isTokenZero ? amount : 0, isTokenZero ? 0 : amount);
    }

    /// @inheritdoc ICLPoolActions
    function setGaugeAndPositionManager(address _gauge, address _nft) external override lock {
        require(gauge == address(0)); // ensures not initialized
        require(msg.sender == ISyncSwapRangePoolFactory(factory).gaugeFactory()); // only gauge factory
        gauge = _gauge;
        nft = _nft;
    }

    /// @dev Returns the verified sender address otherwise `address(0)`.
    function _getVerifiedSender(address _sender) private view returns (address) {
        if (_sender != msg.sender) {
            // The sender from non-forwarder is invalid.
            if (IPoolMaster(master).isForwarder(msg.sender)) {
                return _sender;
            }
        }
        return msg.sender;
    }

    function _getSwapFee(address _sender, address _tokenIn, address _tokenOut) private view returns (uint24 _swapFee) {
        _swapFee = getSwapFee(_sender, _tokenIn, _tokenOut, abi.encode(msg.sender));
    }

    /// @dev This function doesn't check the forwarder.
    function getSwapFee(address _sender, address _tokenIn, address _tokenOut, bytes memory _data) public view override returns (uint24) {
        /*
        try ISyncSwapRangePoolFactory(factory).getSwapFee(
            address(this),
            _sender,
            _tokenIn,
            _tokenOut,
            _data
        ) returns (uint24 _swapFee) {
            return _swapFee;
        } catch {
            return 1000; // 0.1%
        }
        */
        return ISyncSwapRangePoolFactory(factory).getSwapFee(
            address(this),
            _sender,
            _tokenIn,
            _tokenOut,
            _data
        );
    }

    /// @dev Compatibility function. Directional fee and sender forwarder is not supported. Use `getSwapFee()` instead.
    function fee() external view override returns (uint24) {
        return _getSwapFee(msg.sender, token0, token1);
    }

    function _notifyFeeAmount(address token, uint24 feeRate, uint256 tokenAmount, uint256 protocolFeeAmount) private {
        address _feeRecipient = _getFeeRecipient();
        if (_feeRecipient != address(0)) {
            try
                IFeeRecipient(_feeRecipient).notifyFees(4, token, tokenAmount, feeRate, abi.encode(4))
            {} catch {}
            
            emit FeeAmount(token, feeRate, tokenAmount, protocolFeeAmount);
        }
    }

    function _getFeeRecipient() private view returns (address) {
        try IPoolMaster(master).getFeeRecipient() returns (address _feeRecipient) {
            return _feeRecipient;
        } catch {
            return address(0);
        }
    }
}