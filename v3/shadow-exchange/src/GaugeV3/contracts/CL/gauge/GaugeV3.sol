// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IGaugeV3} from "contracts/CL/gauge/interfaces/IGaugeV3.sol";
import {IPoolUpdater} from "contracts/CL/gauge/interfaces/IPoolUpdater.sol";
import {INonfungiblePositionManager} from "contracts/CL/periphery/interfaces/INonfungiblePositionManager.sol";
import {IFeeCollector} from "contracts/CL/gauge/interfaces/IFeeCollector.sol";
import {FullMath} from "contracts/CL/core/libraries/FullMath.sol";

import {IShadowV3Pool, IShadowV3PoolState, IShadowV3PoolErrors} from "contracts/CL/core/interfaces/IShadowV3Pool.sol";

import {GaugeV3Storage} from "contracts/CL/gauge/libraries/GaugeV3Storage.sol";
import {Observation} from "contracts/CL/core/libraries/PoolStorage.sol";
import {
    PoolStorageOld,
    PositionCheckpoint,
    TickInfo,
    PeriodInfo,
    Slot0,
    RewardInfo
} from "contracts/CL/core/libraries/PoolStorageOld.sol";
import {Oracle} from "contracts/CL/core/libraries/Oracle.sol";
import {FixedPoint32} from "contracts/CL/core/libraries/FixedPoint32.sol";
import {FixedPoint96} from "contracts/CL/core/libraries/FixedPoint96.sol";

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IXShadow} from "contracts/interfaces/IXShadow.sol";
import {Errors} from "contracts/libraries/Errors.sol";

import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract GaugeV3 is IGaugeV3, Initializable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 internal constant PRECISION = 10 ** 18;

    address public immutable voter;
    address public immutable shadow;
    address public immutable xShadow;

    IFeeCollector public immutable feeCollector;

    /// @dev Mutually exclusive reentrancy protection into the pool to/from a method. This method also prevents entrance
    /// @dev to a function before the Gauge is initialized.
    modifier lock() {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        require($._unlocked, IShadowV3PoolErrors.LOK());
        $._unlocked = false;
        _;
        $._unlocked = true;
    }

    /// @dev pushes fees from the pool to fee distributor on notify rewards
    modifier pushFees() {
        feeCollector.collectProtocolFees(address(GaugeV3Storage.getStorage().pool));
        _;
    }

    modifier pullData() {
        updatePool();
        _;
    }

    constructor(address _voter, address _feeCollector) {
        _disableInitializers();

        voter = _voter;
        feeCollector = IFeeCollector(_feeCollector);

        (address _shadow, address _xShadow) = (IVoter(_voter).shadow(), IVoter(_voter).xShadow());
        shadow = _shadow;
        xShadow = _xShadow;
    }

    function initialize(address _nfpManager, address _pool) external initializer {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        $._unlocked = true;

        $.firstPeriod = block.timestamp / 1 weeks;

        $.pool = IShadowV3Pool(_pool);

        $.nfpManager = _nfpManager;
        $.nfpManagers.add(_nfpManager);
        $.rewards.add(shadow);
        $.rewards.add(xShadow);

        // increase pool oracle cardinality to ensure we have enough observation for 5 minutes after period flips
        (,,, uint16 observationCardinality,,,) = IShadowV3Pool(_pool).slot0();
        if (observationCardinality < 300) {
            IShadowV3Pool(_pool).increaseObservationCardinalityNext(300);
            observationCardinality = 300;
        }

        $.lastCardinality = observationCardinality;
        $.cachedPoolLastPeriod = _getPeriod();
    }

    /// @inheritdoc IGaugeV3
    function updatePool() public {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        uint256 _lastCardinality = $.lastCardinality;

        // increase cardinality if needed
        if ($.lastCardinality < 1 hours) {
            IShadowV3Pool _pool = $.pool;

            (,,, _lastCardinality,,,) = _pool.slot0();

            _lastCardinality += 10;
            _pool.increaseObservationCardinalityNext(uint16(_lastCardinality));
            $.lastCardinality = _lastCardinality;
        }

        uint256 period = _getPeriod();
        uint256 lastPeriod = $.cachedPoolLastPeriod;
        if (lastPeriod != period) {
            IShadowV3Pool _pool = $.pool;

            if (_pool.lastPeriod() != period) {
                address _poolUpdater = IVoter(voter).poolUpdater();
                IPoolUpdater(_poolUpdater).updatePool(address(_pool));
                require(_pool.lastPeriod() == period, Errors.NO_UPDATES());
            }

            ($.usePoolData[lastPeriod], $.periodEndSecondsPerLiquidityCumulativeX128[lastPeriod]) =
                findLastObservation(lastPeriod);
            $.periodEndVersion[lastPeriod]++;
            $.cachedPoolLastPeriod = period;
        }
    }

    function findLastObservation(uint256 period) public view returns (bool usePoolData, uint160 endPeriodSPLX128) {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        uint32 targetTimestamp = uint32((period + 1) * 1 weeks - 2); // target timestamp is 2 seconds before period flip
        uint32 currentTimestamp = uint32(block.timestamp);

        IShadowV3Pool _pool = $.pool;

        uint256 cardinality;
        uint256 observationIndex;
        (,, observationIndex, cardinality,,,) = _pool.slot0();

        Observation memory beforeOrAt;
        Observation memory atOrAfter;

        unchecked {
            /// @dev oldest observation
            uint256 l = (observationIndex + 1) % cardinality;
            /// @dev newest observation
            uint256 r = l + cardinality - 1;
            uint256 i;

            for (uint256 loop = 0; loop < 32; loop++) {
                // at most 16 loops since there can be no more than uint16 indexes
                if (loop > 16) {
                    revert Errors.NEED_TEAM_TO_UPDATE();
                }

                i = (l + r) / 2;

                (beforeOrAt.blockTimestamp,, beforeOrAt.secondsPerLiquidityCumulativeX128, beforeOrAt.initialized) =
                    _pool.observations(i % cardinality);

                /// @dev we've landed on an uninitialized tick, keep searching higher (more recently)
                if (!beforeOrAt.initialized) {
                    l = i + 1;
                    continue;
                }

                (atOrAfter.blockTimestamp,, atOrAfter.secondsPerLiquidityCumulativeX128, atOrAfter.initialized) =
                    _pool.observations((i + 1) % cardinality);

                bool targetAtOrAfter = lte(currentTimestamp, beforeOrAt.blockTimestamp, targetTimestamp);

                /// @dev check if we've found the answer!
                if (targetAtOrAfter && lte(currentTimestamp, targetTimestamp, atOrAfter.blockTimestamp)) break;

                if (!targetAtOrAfter) r = i - 1;
                else l = i + 1;
            }

            /// @dev check if there is a repeat observation
            (uint256 secondAfter,,,) = _pool.observations((i + 2) % cardinality);

            if (atOrAfter.blockTimestamp == secondAfter) {
                return (false, atOrAfter.secondsPerLiquidityCumulativeX128);
            } else {
                return (true, atOrAfter.secondsPerLiquidityCumulativeX128);
            }
        }
    }

    /// @notice comparator for 32-bit timestamps
    /// @dev safe for 0 or 1 overflows, a and b _must_ be chronologically before or equal to time
    /// @param time A timestamp truncated to 32 bits
    /// @param a A comparison timestamp from which to determine the relative position of `time`
    /// @param b From which to determine the relative position of `time`
    /// @return Whether `a` is chronologically <= `b`
    function lte(uint32 time, uint32 a, uint32 b) private pure returns (bool) {
        unchecked {
            /// @dev if there hasn't been overflow, no need to adjust
            if (a <= time && b <= time) return a <= b;

            uint256 aAdjusted = a > time ? a : a + 2 ** 32;
            uint256 bAdjusted = b > time ? b : b + 2 ** 32;

            return aAdjusted <= bAdjusted;
        }
    }

    function _getPeriod() internal view returns (uint256) {
        return block.timestamp / 1 weeks;
    }

    ////////////////////
    // View Functions //
    ////////////////////

    /// @inheritdoc IGaugeV3
    function pool() external view returns (address) {
        return address(GaugeV3Storage.getStorage().pool);
    }

    /// @inheritdoc IGaugeV3
    function firstPeriod() external view returns (uint256) {
        return GaugeV3Storage.getStorage().firstPeriod;
    }

    /// @inheritdoc IGaugeV3
    function nfpManager() external view returns (address) {
        return GaugeV3Storage.getStorage().nfpManager;
    }

    /// @inheritdoc IGaugeV3
    /// @dev period => token => total supply
    function tokenTotalSupplyByPeriod(uint256 period, address token) external view returns (uint256) {
        return GaugeV3Storage.getStorage().tokenTotalSupplyByPeriod[period][token];
    }

    /// @inheritdoc IGaugeV3
    /// @dev period => position hash => reward token => amount
    function periodClaimedAmount(uint256 period, bytes32 _positionHash, address rewardToken)
        external
        view
        returns (uint256)
    {
        return GaugeV3Storage.getStorage().periodClaimedAmount[period][_positionHash][rewardToken];
    }

    /// @dev token => position hash => period
    /// @inheritdoc IGaugeV3
    function lastClaimByToken(address token, bytes32 _positionHash) external view returns (uint256) {
        return GaugeV3Storage.getStorage().lastClaimByToken[token][_positionHash];
    }

    /// @inheritdoc IGaugeV3
    function syncNfpManager() external {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        address voterNfpManager = IVoter(voter).nfpManager();

        if (voterNfpManager != address($.nfpManager)) {
            emit NfpManagerChanged(voterNfpManager, address($.nfpManager));

            $.nfpManager = voterNfpManager;
            $.nfpManagers.add(voterNfpManager);
        }
    }

    /// @inheritdoc IGaugeV3
    function getNfpManagers() external view returns (address[] memory) {
        return GaugeV3Storage.getStorage().nfpManagers.values();
    }

    /// @inheritdoc IGaugeV3
    function left(address token) external view override returns (uint256) {
        uint256 period = block.timestamp / 1 weeks;
        uint256 remainingTime = ((period + 1) * 1 weeks) - block.timestamp;
        return (GaugeV3Storage.getStorage().tokenTotalSupplyByPeriod[period][token] * remainingTime) / 1 weeks;
    }

    /// @inheritdoc IGaugeV3
    function rewardRate(address token) external view returns (uint256) {
        uint256 period = block.timestamp / 1 weeks;
        return (GaugeV3Storage.getStorage().tokenTotalSupplyByPeriod[period][token] / 1 weeks);
    }

    /// @inheritdoc IGaugeV3
    function getRewardTokens() external view override returns (address[] memory) {
        return GaugeV3Storage.getStorage().rewards.values();
    }

    /// @inheritdoc IGaugeV3
    function positionHash(address owner, uint256 index, int24 tickLower, int24 tickUpper)
        public
        pure
        returns (bytes32)
    {
        return keccak256(abi.encodePacked(owner, index, tickLower, tickUpper));
    }

    /// @inheritdoc IGaugeV3
    function periodAmountsWrittenVersion(uint256 period, bytes32 positionHash) external view returns (uint256) {
        return GaugeV3Storage.getStorage().periodAmountsWrittenVersion[period][positionHash];
    }

    /// @inheritdoc IGaugeV3
    function periodNfpSecondsX96(uint256 period, bytes32 positionHash) external view returns (uint256) {
        return GaugeV3Storage.getStorage().periodNfpSecondsX96[period][positionHash];
    }

    /// @inheritdoc IGaugeV3
    function periodEndSecondsPerLiquidityCumulativeX128(uint256 period) external view returns (uint160) {
        return GaugeV3Storage.getStorage().periodEndSecondsPerLiquidityCumulativeX128[period];
    }

    /// @inheritdoc IGaugeV3
    function usePoolData(uint256 period) external view returns (bool) {
        return GaugeV3Storage.getStorage().usePoolData[period];
    }

    /// @inheritdoc IGaugeV3
    function periodEndVersion(uint256 period) external view returns (uint256) {
        return GaugeV3Storage.getStorage().periodEndVersion[period];
    }

    /// @inheritdoc IGaugeV3
    function lastCardinality() external view returns (uint256) {
        return GaugeV3Storage.getStorage().lastCardinality;
    }

    /// @inheritdoc IGaugeV3
    function cachedPoolLastPeriod() external view returns (uint256) {
        return GaugeV3Storage.getStorage().cachedPoolLastPeriod;
    }

    ////////////////////
    // Notify Rewards //
    ////////////////////

    /// @inheritdoc IGaugeV3
    function notifyRewardAmount(address token, uint256 amount) external override pushFees lock pullData {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        require(amount > 0, Errors.NOT_GT_ZERO(amount));
        require(isWhitelisted(token), Errors.NOT_WHITELISTED(token));
        IShadowV3Pool($.pool)._advancePeriod();
        uint256 period = block.timestamp / 1 weeks;
        if (!$.rewards.contains(token)) {
            $.rewards.add(token);
        }

        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));

        amount = balanceAfter - balanceBefore;
        $.tokenTotalSupplyByPeriod[period][token] += amount;
        emit NotifyReward(msg.sender, token, amount, period);
    }

    /// @inheritdoc IGaugeV3
    function notifyRewardAmountNextPeriod(address token, uint256 amount) external {
        uint256 period = block.timestamp / 1 weeks + 1;
        notifyRewardAmountForPeriod(token, amount, period);
    }

    /// @inheritdoc IGaugeV3
    function notifyRewardAmountForPeriod(address token, uint256 amount, uint256 period) public lock pullData {
        require(amount > 0, Errors.NOT_GT_ZERO(amount));
        require(isWhitelisted(token), Errors.NOT_WHITELISTED(token));
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));

        amount = balanceAfter - balanceBefore;
        GaugeV3Storage.getStorage().tokenTotalSupplyByPeriod[period][token] += amount;

        emit NotifyReward(msg.sender, token, amount, period);
    }

    /// @inheritdoc IGaugeV3
    function earned(address token, uint256 tokenId) external view returns (uint256 reward) {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        INonfungiblePositionManager _nfpManager = INonfungiblePositionManager($.nfpManager);
        (,,, int24 tickLower, int24 tickUpper,,,,,) = _nfpManager.positions(tokenId);

        bytes32 _positionHash = positionHash(address(_nfpManager), tokenId, tickLower, tickUpper);

        uint256 lastClaim = Math.max($.lastClaimByToken[token][_positionHash], $.firstPeriod);
        uint256 currentPeriod = block.timestamp / 1 weeks;
        for (uint256 period = lastClaim; period <= currentPeriod; ++period) {
            reward += periodEarned(period, token, address(_nfpManager), tokenId, tickLower, tickUpper);
        }
    }

    /// @inheritdoc IGaugeV3
    function periodEarned(uint256 period, address token, uint256 tokenId) public view override returns (uint256) {
        INonfungiblePositionManager _nfpManager = INonfungiblePositionManager(GaugeV3Storage.getStorage().nfpManager);
        (,,, int24 tickLower, int24 tickUpper,,,,,) = _nfpManager.positions(tokenId);

        return periodEarned(period, token, address(_nfpManager), tokenId, tickLower, tickUpper);
    }

    /// @inheritdoc IGaugeV3
    function periodEarned(uint256 period, address token, address owner, uint256 index, int24 tickLower, int24 tickUpper)
        public
        view
        returns (uint256 amount)
    {
        (bool success, bytes memory data) = address(this).staticcall(
            abi.encodeCall(this.cachePeriodEarned, (period, token, owner, index, tickLower, tickUpper, false))
        );

        if (!success) {
            return 0;
        }

        return abi.decode(data, (uint256));
    }

    /// @inheritdoc IGaugeV3
    /// @dev used by getReward() and saves gas by saving states
    function cachePeriodEarned(
        uint256 period,
        address token,
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        bool caching
    ) public override returns (uint256 amount) {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        uint256 periodSecondsInsideX96;

        bytes32 _positionHash = positionHash(owner, index, tickLower, tickUpper);

        /// @dev get seconds from pool if not already written into storage
        uint256 amountsWrittenVersion = $.periodAmountsWrittenVersion[period][_positionHash];
        uint256 periodEndVersion = $.periodEndVersion[period];
        if (amountsWrittenVersion < periodEndVersion || amountsWrittenVersion == 0) {
            // if before deadline, read from pool
            if ($.usePoolData[period] || block.timestamp < ((period + 1) * 1 weeks - 1)) {
                (bool success, bytes memory data) = address($.pool).staticcall(
                    abi.encodeCall(
                        IShadowV3PoolState.positionPeriodSecondsInRange, (period, owner, index, tickLower, tickUpper)
                    )
                );

                if (!success) {
                    return 0;
                }

                (periodSecondsInsideX96) = abi.decode(data, (uint256));
            }
            // read from storage otherwise
            else {
                // return 0 if periodEndSecondsPerLiquidityCumulativeX128 isn't updated yet
                if ($.periodEndSecondsPerLiquidityCumulativeX128[period] == 0) {
                    return 0;
                }

                periodSecondsInsideX96 = _positionPeriodSecondsInRange(period, _positionHash, tickLower, tickUpper);
            }

            if (period < block.timestamp / 1 weeks && caching) {
                $.periodAmountsWrittenVersion[period][_positionHash] = periodEndVersion;
                $.periodNfpSecondsX96[period][_positionHash] = periodSecondsInsideX96;
            }
        } else {
            periodSecondsInsideX96 = $.periodNfpSecondsX96[period][_positionHash];
        }

        amount = FullMath.mulDiv($.tokenTotalSupplyByPeriod[period][token], periodSecondsInsideX96, 1 weeks << 96);

        uint256 claimed = $.periodClaimedAmount[period][_positionHash][token];
        if (amount >= claimed) {
            amount -= claimed;
        } else {
            amount = 0;
        }

        return amount;
    }

    /// @notice Get the period seconds in range of a specific position
    /// @return periodSecondsInsideX96 seconds the position was not in range for the period
    function _positionPeriodSecondsInRange(uint256 period, bytes32 _positionHash, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint256 periodSecondsInsideX96)
    {
        PoolStorageOld.PoolState storage $ = PoolStorageOld.getStorage();
        IShadowV3Pool _pool = GaugeV3Storage.getStorage().pool;

        {
            uint256 currentPeriod = _getPeriod();
            if (period > currentPeriod) revert Errors.CANT_CLAIM_FUTURE();
        }

        uint256 liquidity;
        /// @dev get checkpoint at period, or last checkpoint before the period
        {
            PositionCheckpoint[] storage checkpoints = $.positionCheckpoints[_positionHash];
            uint256 checkpointPeriod;
            (checkpointPeriod, liquidity) = _getCheckpoint(checkpoints, period);

            /// @dev Return 0s if checkpointPeriod is 0
            if (checkpointPeriod == 0) {
                return 0;
            }
        }

        bytes32 readSlot;
        bytes32[] memory slots = new bytes32[](1);
        bytes32[] memory readResult;

        // int160 secondsPerLiquidityPeriodStartX128 =
        //     $.positions[_positionHash].periodRewardInfo[period].secondsPerLiquidityPeriodStartX128;
        RewardInfo storage rewardInfo = $.positions[_positionHash].periodRewardInfo[period];
        assembly ("memory-safe") {
            readSlot := add(rewardInfo.slot, 1) // secondsPerLiquidityPeriodStartX128 is in slot 1 of the struct
        }
        slots[0] = readSlot;
        readResult = _pool.readStorage(slots);
        readSlot = readResult[0]; // using readSlot as scratch space

        int160 secondsPerLiquidityPeriodStartX128;
        assembly ("memory-safe") {
            // shift according to struct layout
            secondsPerLiquidityPeriodStartX128 := shr(96, shl(88, readSlot))
        }

        uint160 secondsPerLiquidityInsideX128 = _periodCumulativesInside(uint32(period), tickLower, tickUpper);

        /// @dev underflow will be protected by sanity check
        secondsPerLiquidityInsideX128 =
            uint160(int160(secondsPerLiquidityInsideX128) - secondsPerLiquidityPeriodStartX128);

        // int256 secondsDebtX96 = rewardInfo.secondsDebtX96;
        assembly ("memory-safe") {
            readSlot := rewardInfo.slot // secondsDebtX96 is in slot 0 of the struct
        }
        slots[0] = readSlot;
        readResult = _pool.readStorage(slots);
        int256 secondsDebtX96 = int256(uint256(readResult[0]));

        /// @dev addDelta checks for under and overflows
        periodSecondsInsideX96 = FullMath.mulDiv(liquidity, secondsPerLiquidityInsideX128, FixedPoint32.Q32);

        /// @dev Need to check if secondsDebtX96>periodSecondsInsideX96, since rounding can cause underflows
        if (secondsDebtX96 < 0 || periodSecondsInsideX96 > uint256(secondsDebtX96)) {
            periodSecondsInsideX96 = secondsDebtX96 < 0
                ? periodSecondsInsideX96 + uint256(-secondsDebtX96)
                : periodSecondsInsideX96 - uint256(secondsDebtX96);
        } else {
            periodSecondsInsideX96 = 0;
        }

        /// @dev sanity
        if (periodSecondsInsideX96 > 1 weeks * FixedPoint96.Q96) {
            periodSecondsInsideX96 = 0;
        }
    }

    function _getCheckpoint(PositionCheckpoint[] storage checkpoints, uint256 period)
        internal
        view
        returns (uint256 checkpointPeriod, uint256 liquidity)
    {
        IShadowV3Pool _pool = GaugeV3Storage.getStorage().pool;

        bytes32 readSlot;
        bytes32[] memory slots = new bytes32[](1);
        bytes32[] memory readResult;
        uint256 checkpointIndex;

        assembly ("memory-safe") {
            readSlot := checkpoints.slot // length slot is the same as the pointer
        }
        bytes32 checkpoints0Slot = keccak256(abi.encode(readSlot));

        {
            // uint256 checkpointLength = checkpoints.length;
            slots[0] = readSlot;
            readResult = _pool.readStorage(slots);
            uint256 checkpointLength = uint256(readResult[0]);

            /// @dev return 0 if length is 0
            if (checkpointLength == 0) {
                return (0, 0);
            }

            // checkpointPeriod = checkpoints[0].period;
            assembly ("memory-safe") {
                readSlot := checkpoints0Slot // period is in slot 0 of the struct
            }
            slots[0] = readSlot;
            readResult = _pool.readStorage(slots);

            checkpointPeriod = uint256(readResult[0]);

            /// @dev return 0 if first checkpoint happened after period
            if (checkpointPeriod > period) {
                return (0, 0);
            }

            checkpointIndex = checkpointLength - 1;

            // checkpointPeriod = checkpoints[checkpointIndex].period;
            assembly ("memory-safe") {
                readSlot := add(checkpoints0Slot, mul(checkpointIndex, 2)) // period is in slot 0 of the struct
            }
            slots[0] = readSlot;
            readResult = _pool.readStorage(slots);

            checkpointPeriod = uint256(readResult[0]);
        }

        /// @dev Find relevant checkpoint if latest checkpoint isn't before period of interest
        if (checkpointPeriod > period) {
            uint256 lower = 0;
            uint256 upper = checkpointIndex;
            bool foundEarly;
            while (upper > lower) {
                /// @dev ceil, avoiding overflow
                uint256 center = upper - (upper - lower) / 2;
                // checkpointPeriod = checkpoints[center].period;
                assembly ("memory-safe") {
                    readSlot := add(checkpoints0Slot, mul(center, 2)) // period is in slot 0 of the struct
                }
                slots[0] = readSlot;
                readResult = _pool.readStorage(slots);
                checkpointPeriod = uint256(readResult[0]);

                if (checkpointPeriod == period) {
                    checkpointIndex = center;
                    foundEarly = true;
                    break;
                    // return (checkpointIndex, checkpointPeriod);
                } else if (checkpointPeriod < period) {
                    lower = center;
                } else {
                    upper = center - 1;
                }
            }

            if (!foundEarly) {
                checkpointIndex = lower;
            }
        }

        // checkpointPeriod = checkpoints[checkpointIndex].period;
        assembly ("memory-safe") {
            readSlot := add(checkpoints0Slot, mul(checkpointIndex, 2)) // period is in slot 0 of the struct
        }
        slots[0] = readSlot;
        readResult = _pool.readStorage(slots);
        checkpointPeriod = uint256(readResult[0]);

        // liquidity = checkpoints[checkpointIndex].liquidity;
        assembly ("memory-safe") {
            readSlot := add(add(checkpoints0Slot, mul(checkpointIndex, 2)), 1) // liquidity is in slot 1 of the struct
        }
        slots[0] = readSlot;
        readResult = _pool.readStorage(slots);
        liquidity = uint256(readResult[0]);

        return (checkpointPeriod, liquidity);
    }

    /// @notice Returns the seconds per liquidity and seconds inside a tick range for a period
    /// @dev This does not ensure the range is a valid range
    /// @param period The timestamp of the period
    /// @param tickLower The lower tick of the range
    /// @param tickUpper The upper tick of the range
    /// @return secondsPerLiquidityInsideX128 The snapshot of seconds per liquidity for the range
    function _periodCumulativesInside(uint32 period, int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint160 secondsPerLiquidityInsideX128)
    {
        PoolStorageOld.PoolState storage $ = PoolStorageOld.getStorage();
        IShadowV3Pool _pool = GaugeV3Storage.getStorage().pool;

        Oracle.SnapShot memory snapshot;

        bytes32 readSlot;
        bytes32[] memory slots = new bytes32[](1);
        bytes32[] memory readResult;

        {
            // int24 startTick = $.periods[period].startTick;
            // uint256 previousPeriod = $.periods[period].previousPeriod;
            int24 startTick;
            uint256 previousPeriod;
            {
                PeriodInfo storage periodInfo = $.periods[period];
                assembly ("memory-safe") {
                    readSlot := periodInfo.slot
                }
                slots[0] = readSlot;
                readResult = _pool.readStorage(slots);
                readSlot = readResult[0]; // using readSlot as scratch space

                assembly ("memory-safe") {
                    // shift read result according to struct offsets
                    startTick := shr(232, shl(200, readSlot))
                    previousPeriod := shr(224, shl(224, readSlot))
                }
            }

            // snapshot.secondsPerLiquidityOutsideLowerX128 =
            //     uint160($._ticks[tickLower].periodSecondsPerLiquidityOutsideX128[period]);
            {
                mapping(uint256 => uint256) storage splOutsideX128 =
                    $._ticks[tickLower].periodSecondsPerLiquidityOutsideX128;
                assembly ("memory-safe") {
                    readSlot := splOutsideX128.slot
                }
                readSlot = keccak256(abi.encode(period, readSlot));
                slots[0] = readSlot;
                readResult = _pool.readStorage(slots);
                snapshot.secondsPerLiquidityOutsideLowerX128 = uint160(uint256(readResult[0]));
            }

            if (tickLower <= startTick && snapshot.secondsPerLiquidityOutsideLowerX128 == 0) {
                // snapshot.secondsPerLiquidityOutsideLowerX128 =
                //     $.periods[previousPeriod].endSecondsPerLiquidityPeriodX128;
                PeriodInfo storage periodInfo = $.periods[previousPeriod];
                assembly ("memory-safe") {
                    readSlot := periodInfo.slot
                }
                slots[0] = readSlot;
                readResult = _pool.readStorage(slots);
                readSlot = readResult[0]; // using readSlot as scratch space

                assembly ("memory-safe") {
                    // shift read result according to struct offsets
                    readSlot := shr(96, shl(16, readSlot))
                }
                snapshot.secondsPerLiquidityOutsideLowerX128 = uint160(uint256(readSlot));
            }

            // snapshot.secondsPerLiquidityOutsideUpperX128 =
            //     uint160($._ticks[tickUpper].periodSecondsPerLiquidityOutsideX128[period]);
            {
                mapping(uint256 => uint256) storage splOutsideX128 =
                    $._ticks[tickUpper].periodSecondsPerLiquidityOutsideX128;
                assembly ("memory-safe") {
                    readSlot := splOutsideX128.slot
                }
                readSlot = keccak256(abi.encode(period, readSlot));
                slots[0] = readSlot;
                readResult = _pool.readStorage(slots);
                snapshot.secondsPerLiquidityOutsideUpperX128 = uint160(uint256(readResult[0]));
            }

            if (tickUpper <= startTick && snapshot.secondsPerLiquidityOutsideUpperX128 == 0) {
                // snapshot.secondsPerLiquidityOutsideUpperX128 =
                //     $.periods[previousPeriod].endSecondsPerLiquidityPeriodX128;
                PeriodInfo storage periodInfo = $.periods[previousPeriod];
                assembly ("memory-safe") {
                    readSlot := periodInfo.slot
                }
                slots[0] = readSlot;
                readResult = _pool.readStorage(slots);
                readSlot = readResult[0]; // using readSlot as scratch space

                assembly ("memory-safe") {
                    // shift read result according to struct offsets
                    readSlot := shr(96, shl(16, readSlot))
                }
                snapshot.secondsPerLiquidityOutsideUpperX128 = uint160(uint256(readSlot));
            }
        }

        /// @dev use period's last tick, this function will only be called after a period is finalized
        // int24 lastTick = $.periods[period].lastTick;
        PeriodInfo storage periodInfoForLastTick = $.periods[period];
        assembly ("memory-safe") {
            readSlot := periodInfoForLastTick.slot
        }
        slots[0] = readSlot;
        readResult = _pool.readStorage(slots);
        readSlot = readResult[0]; // using readSlot as scratch space

        int24 lastTick;
        assembly ("memory-safe") {
            // shift read result according to struct offsets
            lastTick := shr(232, shl(176, readSlot))
        }

        unchecked {
            if (lastTick < tickLower) {
                return snapshot.secondsPerLiquidityOutsideLowerX128 - snapshot.secondsPerLiquidityOutsideUpperX128;
            } else if (lastTick < tickUpper) {
                /// @dev use endSecondsPerLiquidityPeriodX128, this function can only be called when a period is finalized
                return GaugeV3Storage.getStorage().periodEndSecondsPerLiquidityCumulativeX128[period]
                    - snapshot.secondsPerLiquidityOutsideLowerX128 - snapshot.secondsPerLiquidityOutsideUpperX128;
            } else {
                return snapshot.secondsPerLiquidityOutsideUpperX128 - snapshot.secondsPerLiquidityOutsideLowerX128;
            }
        }
    }

    /// @inheritdoc IGaugeV3
    function getPeriodReward(uint256 period, address[] calldata tokens, uint256 tokenId, address receiver)
        external
        override
    {
        getNfpPeriodReward(address(GaugeV3Storage.getStorage().nfpManager), period, tokens, tokenId, receiver);
    }

    /// @inheritdoc IGaugeV3
    function getNfpPeriodReward(
        address __nfpManager,
        uint256 period,
        address[] calldata tokens,
        uint256 tokenId,
        address receiver
    ) public override lock pullData {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        require(period <= block.timestamp / 1 weeks, Errors.CANT_CLAIM_FUTURE());
        require($.nfpManagers.contains(__nfpManager), Errors.NOT_NFP_MANAGER(__nfpManager));

        INonfungiblePositionManager _nfpManager = INonfungiblePositionManager(__nfpManager);

        /// @dev stack-too-deep
        {
            address owner = _nfpManager.ownerOf(tokenId);
            address operator = _nfpManager.getApproved(tokenId);

            /// @dev check if owner, operator, or approved for all
            require(
                msg.sender == owner || msg.sender == operator || _nfpManager.isApprovedForAll(owner, msg.sender),
                Errors.NOT_AUTHORIZED(msg.sender)
            );
        }

        (,,, int24 tickLower, int24 tickUpper,,,,,) = _nfpManager.positions(tokenId);

        bytes32 _positionHash = positionHash(address(_nfpManager), tokenId, tickLower, tickUpper);

        for (uint256 i = 0; i < tokens.length; ++i) {
            if (period < block.timestamp / 1 weeks) {
                $.lastClaimByToken[tokens[i]][_positionHash] = period;
            }

            _getReward(period, tokens[i], address(_nfpManager), tokenId, tickLower, tickUpper, _positionHash, receiver);
        }
    }

    /// @inheritdoc IGaugeV3
    function getPeriodReward(
        uint256 period,
        address[] calldata tokens,
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        address receiver
    ) external override lock pullData {
        /// @dev ensure only the owner can call
        require(msg.sender == owner, Errors.NOT_AUTHORIZED(msg.sender));
        bytes32 _positionHash = positionHash(owner, index, tickLower, tickUpper);

        for (uint256 i = 0; i < tokens.length; ++i) {
            if (period < block.timestamp / 1 weeks) {
                GaugeV3Storage.getStorage().lastClaimByToken[tokens[i]][_positionHash] = period;
            }

            _getReward(period, tokens[i], owner, index, tickLower, tickUpper, _positionHash, receiver);
        }
    }

    /// @inheritdoc IGaugeV3
    /// @dev validation is handled in the getReward function
    function getReward(uint256[] calldata tokenIds, address[] memory tokens) external {
        uint256 length = tokenIds.length;

        for (uint256 i = 0; i < length; ++i) {
            getReward(tokenIds[i], tokens);
        }
    }

    /// @inheritdoc IGaugeV3
    function getReward(uint256 tokenId, address[] memory tokens) public lock pullData {
        INonfungiblePositionManager _nfpManager = INonfungiblePositionManager(GaugeV3Storage.getStorage().nfpManager);
        address owner = _nfpManager.ownerOf(tokenId);
        address operator = _nfpManager.getApproved(tokenId);
        /// @dev check if owner, operator, or approved for all
        require(
            msg.sender == owner || msg.sender == operator || _nfpManager.isApprovedForAll(owner, msg.sender),
            Errors.NOT_AUTHORIZED(msg.sender)
        );

        (,,, int24 tickLower, int24 tickUpper,,,,,) = _nfpManager.positions(tokenId);

        _getAllRewards(address(_nfpManager), tokenId, tickLower, tickUpper, tokens, msg.sender);
    }

    /// @inheritdoc IGaugeV3
    function getRewardForOwner(uint256 tokenId, address[] memory tokens) external lock pullData {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        INonfungiblePositionManager _nfpManager =
            msg.sender == voter ? INonfungiblePositionManager($.nfpManager) : INonfungiblePositionManager(msg.sender);

        require(msg.sender == voter || $.nfpManagers.contains(msg.sender), Errors.NOT_AUTHORIZED(msg.sender));

        address owner = _nfpManager.ownerOf(tokenId);

        (,,, int24 tickLower, int24 tickUpper,,,,,) = _nfpManager.positions(tokenId);

        _getAllRewards(address(_nfpManager), tokenId, tickLower, tickUpper, tokens, owner);
    }

    /// @inheritdoc IGaugeV3
    /// @dev this requires auth checks to be done a the Voter/NFPManager level
    /// since this is meant to send xShadow the back to msg.sender and exits it for the user
    function getXShadowRewardForOwner(uint256 tokenId) external lock pullData {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        INonfungiblePositionManager _nfpManager =
            msg.sender == voter ? INonfungiblePositionManager($.nfpManager) : INonfungiblePositionManager(msg.sender);

        require(msg.sender == voter || $.nfpManagers.contains(msg.sender), Errors.NOT_AUTHORIZED(msg.sender));

        (,,, int24 tickLower, int24 tickUpper,,,,,) = _nfpManager.positions(tokenId);
        address[] memory tokens = new address[](1);
        tokens[0] = xShadow;

        /// @dev send xShadow to this address for exiting
        _getAllRewards(address(_nfpManager), tokenId, tickLower, tickUpper, tokens, msg.sender);
    }

    function getReward(
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        address[] memory tokens,
        address receiver
    ) external lock pullData {
        require(msg.sender == owner, Errors.NOT_AUTHORIZED(msg.sender));
        _getAllRewards(owner, index, tickLower, tickUpper, tokens, receiver);
    }

    function _getAllRewards(
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        address[] memory tokens,
        address receiver
    ) internal {
        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        bytes32 _positionHash = positionHash(owner, index, tickLower, tickUpper);
        uint256 currentPeriod = block.timestamp / 1 weeks;
        uint256 lastClaim;
        for (uint256 i = 0; i < tokens.length; ++i) {
            lastClaim = Math.max($.lastClaimByToken[tokens[i]][_positionHash], $.firstPeriod);
            for (uint256 period = lastClaim; period <= currentPeriod; ++period) {
                _getReward(period, tokens[i], owner, index, tickLower, tickUpper, _positionHash, receiver);
            }
            $.lastClaimByToken[tokens[i]][_positionHash] = currentPeriod - 1;
        }
    }

    function _getReward(
        uint256 period,
        address token,
        address owner,
        uint256 index,
        int24 tickLower,
        int24 tickUpper,
        bytes32 _positionHash,
        address receiver
    ) internal {
        uint256 _reward = cachePeriodEarned(period, token, owner, index, tickLower, tickUpper, true);

        if (_reward > 0) {
            GaugeV3Storage.getStorage().periodClaimedAmount[period][_positionHash][token] += _reward;

            IERC20(token).safeTransfer(receiver, _reward);
            emit ClaimRewards(period, _positionHash, receiver, token, _reward);
        }
    }

    /// @dev return directly from the voter
    function isWhitelisted(address token) public view returns (bool) {
        return IVoter(voter).isWhitelisted(token);
    }

    /// @dev use the enumerable set to fetch reward validation
    function isGaugeReward(address token) public view returns (bool) {
        return GaugeV3Storage.getStorage().rewards.contains(token);
    }

    /// @dev used when the oracle data is already overwritten
    /// shouldn't happen unless the team took too long to call distribute()
    function updatePeriodData(uint256 period, uint160 periodEndSecondsPerLiquidityCumulativeX128) external {
        require(msg.sender == IVoter(voter).accessHub(), Errors.NOT_ACCESSHUB());

        GaugeV3Storage.GaugeV3State storage $ = GaugeV3Storage.getStorage();

        $.periodEndSecondsPerLiquidityCumulativeX128[period] = periodEndSecondsPerLiquidityCumulativeX128;
        $.periodEndVersion[period]++;
        $.cachedPoolLastPeriod = period + 1;
    }
}
