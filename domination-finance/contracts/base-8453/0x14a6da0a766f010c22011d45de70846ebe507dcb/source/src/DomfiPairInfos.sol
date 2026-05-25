// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { SignedMath } from "@openzeppelin/contracts/utils/math/SignedMath.sol";

import { ChainUtils } from "./lib/ChainUtils.sol";

import { IDomfiOpenPnl } from "./interfaces/IDomfiOpenPnl.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiTradingStorage } from "./interfaces/IDomfiTradingStorage.sol";
import { IDomfiPairInfos } from "./interfaces/IDomfiPairInfos.sol";

contract DomfiPairInfos is IDomfiPairInfos, Initializable {
    using Math for uint256;
    using SafeCast for uint256;
    using SafeCast for uint32;
    using SafeCast for int256;
    using SignedMath for int256;
    using SignedMath for int64;

    IDomfiRegistry public registry;
    address public manager;

    uint64 internal constant MAX_FUNDING_FEE = 761035007608; // 1000% annum, PRECISION_18
    uint64 internal constant MAX_FR_SPRING_FACTOR = PRECISION_18; // PRECISION_2
    uint64 internal constant PADE_ERROR_THRESHOLD = 793231258909201900; // PRECISION_18

    // slither-disable-next-line too-many-digits
    uint64 internal constant POWERTWO_APPROX_THRESHOLD = 6906000000000000000; // PRECISION_18

    uint64 internal constant PRECISION_18 = 1e18; // 18 decimals
    uint32 internal constant PRECISION_6 = 1e6; // 6 decimals

    // slither-disable-next-line unused-state
    uint32 internal constant MAX_FEEP = 1e7; // 10%, PRECISION_6,

    uint16 internal constant MAX_USAGE_THRESHOLDP = 10000; // 100%, PRECISION_2
    uint16 internal constant MAX_MAKER_LEVERAGE = 10000; // PRECISION_2
    uint16 internal constant MAX_HILL_SCALE = 250; // PRECISION_2

    uint8 internal constant PRECISION_2 = 1e2; // 2 decimals
    uint8 internal constant MAX_LIQ_MARGIN_THRESHOLD_P = 50;

    uint8 public liqMarginThresholdP;
    uint8 public maxNegativePnlOnOpenP; // (%)

    mapping(uint16 pairIndex => PairOpeningFees) public pairOpeningFees;
    mapping(uint16 pairIndex => PairClosingFees) public pairClosingFees;
    mapping(uint16 pairIndex => PairFundingFees) public pairFundingFees;

    // slither-disable-next-line uninitialized-state
    mapping(
        address trader
            => mapping(uint16 pairIndex => mapping(uint8 tradeIndex => TradeInitialAccFees))
    ) public tradeInitialAccFees;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IDomfiRegistry registryAddress,
        address managerAddress,
        uint8 initialLiqMarginThresholdP,
        uint8 initialMaxNegativePnlOnOpenP
    ) external initializer {
        if (address(registryAddress) == address(0) || managerAddress == address(0)) {
            revert WrongParams();
        }

        registry = registryAddress;
        _setManager(managerAddress);
        _setLiqMarginThresholdP(initialLiqMarginThresholdP);
        _setMaxNegativePnlOnOpenP(initialMaxNegativePnlOnOpenP);
    }

    // Modifiers
    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() internal view {
        if (msg.sender != registry.gov()) revert NotGov(msg.sender);
    }

    modifier onlyCallbacks() {
        _onlyCallbacks();
        _;
    }

    function _onlyCallbacks() internal view {
        if (msg.sender != registry.getContractAddress("callbacks")) {
            revert NotCallbacks(msg.sender);
        }
    }

    function setManager(address newManager) external onlyGov {
        _setManager(newManager);
    }

    function _setManager(address newManager) private {
        if (newManager == address(0)) {
            revert WrongParams();
        }
        manager = newManager;

        emit ManagerUpdated(newManager);
    }

    function setLiqMarginThresholdP(uint8 newLiqMarginThresholdP) external onlyGov {
        _setLiqMarginThresholdP(newLiqMarginThresholdP);
    }

    function _setLiqMarginThresholdP(uint8 newLiqMarginThresholdP) private {
        if (
            newLiqMarginThresholdP > MAX_LIQ_MARGIN_THRESHOLD_P
                || maxNegativePnlOnOpenP > 100 - newLiqMarginThresholdP
        ) {
            revert WrongParams();
        }
        liqMarginThresholdP = newLiqMarginThresholdP;

        emit LiqMarginThresholdPUpdated(newLiqMarginThresholdP);
    }

    function setMaxNegativePnlOnOpenP(uint8 newMaxNegativePnlOnOpenP) external onlyGov {
        _setMaxNegativePnlOnOpenP(newMaxNegativePnlOnOpenP);
    }

    function _setMaxNegativePnlOnOpenP(uint8 newMaxNegativePnlOnOpenP) private {
        if (newMaxNegativePnlOnOpenP == 0 || newMaxNegativePnlOnOpenP > 100 - liqMarginThresholdP) {
            revert WrongParams();
        }
        maxNegativePnlOnOpenP = newMaxNegativePnlOnOpenP;

        emit MaxNegativePnlOnOpenPUpdated(newMaxNegativePnlOnOpenP);
    }

    function setPairOpeningFees(uint16 pairIndex, PairOpeningFees calldata newOpeningFees)
        public
        onlyGov
    {
        if (
            newOpeningFees.makerFeeP > MAX_FEEP || newOpeningFees.takerFeeP > MAX_FEEP
                || newOpeningFees.usageFeeP > MAX_FEEP
                || newOpeningFees.utilizationThresholdP >= MAX_USAGE_THRESHOLDP
                || newOpeningFees.makerMaxLeverage > MAX_MAKER_LEVERAGE
                || newOpeningFees.vaultFeePercent > 100
        ) {
            revert WrongParams();
        }
        pairOpeningFees[pairIndex] = newOpeningFees;

        emit PairOpeningFeesUpdated(pairIndex, newOpeningFees);
    }

    function setPairOpeningFeesArray(
        uint16[] calldata indices,
        PairOpeningFees[] calldata newValues
    ) external onlyGov {
        if (indices.length != newValues.length) {
            revert WrongParams();
        }

        for (uint256 i = 0; i < indices.length; i++) {
            setPairOpeningFees(indices[i], newValues[i]);
        }
    }

    function setPairOpeningVaultFeePercent(uint16 pairIndex, uint8 newVaultFeePercent)
        public
        onlyGov
    {
        if (newVaultFeePercent > 100) {
            revert WrongParams();
        }
        pairOpeningFees[pairIndex].vaultFeePercent = newVaultFeePercent;

        emit VaultFeePercentUpdated(pairIndex, newVaultFeePercent);
    }

    function setPairOpeningVaultFeePercentArray(
        uint16[] calldata indices,
        uint8[] calldata newValues
    ) external onlyGov {
        if (indices.length != newValues.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setPairOpeningVaultFeePercent(indices[i], newValues[i]);
        }
    }

    function setPairClosingFees(uint16 pairIndex, PairClosingFees calldata newClosingFees)
        public
        onlyGov
    {
        if (
            newClosingFees.makerFeeP > MAX_FEEP || newClosingFees.takerFeeP > MAX_FEEP
                || newClosingFees.usageFeeP > MAX_FEEP
                || newClosingFees.utilizationThresholdP >= MAX_USAGE_THRESHOLDP
                || newClosingFees.makerMaxLeverage > MAX_MAKER_LEVERAGE
                || newClosingFees.vaultFeePercent > 100
        ) {
            revert WrongParams();
        }
        pairClosingFees[pairIndex] = newClosingFees;

        emit PairClosingFeesUpdated(pairIndex, newClosingFees);
    }

    function setPairClosingFeesArray(
        uint16[] calldata indices,
        PairClosingFees[] calldata newValues
    ) external onlyGov {
        if (indices.length != newValues.length) {
            revert WrongParams();
        }

        for (uint256 i = 0; i < indices.length; i++) {
            setPairClosingFees(indices[i], newValues[i]);
        }
    }

    function setPairClosingVaultFeePercent(uint16 pairIndex, uint8 newVaultFeePercent)
        public
        onlyGov
    {
        if (newVaultFeePercent > 100) {
            revert WrongParams();
        }
        pairClosingFees[pairIndex].vaultFeePercent = newVaultFeePercent;

        emit VaultFeePercentUpdated(pairIndex, newVaultFeePercent);
    }

    function setPairClosingVaultFeePercentArray(
        uint16[] calldata indices,
        uint8[] calldata newValues
    ) external onlyGov {
        if (indices.length != newValues.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setPairClosingVaultFeePercent(indices[i], newValues[i]);
        }
    }

    function setPairFundingFees(uint16 pairIndex, PairFundingFees calldata newFundingFees)
        public
        onlyGov
    {
        if (
            newFundingFees.maxFundingFeePerBlock > MAX_FUNDING_FEE
                || newFundingFees.hillInflectionPoint.abs() > PRECISION_18
                || (uint256(newFundingFees.springFactor) * newFundingFees.sFactorUpScaleP) / 100e2
                    > MAX_FR_SPRING_FACTOR || newFundingFees.hillPosScale > MAX_HILL_SCALE
                || newFundingFees.hillNegScale > MAX_HILL_SCALE
                || newFundingFees.sFactorUpScaleP < 100e2
                || newFundingFees.sFactorDownScaleP > 100e2
        ) revert WrongParams();

        PairFundingFees storage p = pairFundingFees[pairIndex];

        if (p.lastUpdateBlock != 0) {
            storeAccFundingFees(pairIndex);
        }

        p.maxFundingFeePerBlock = newFundingFees.maxFundingFeePerBlock;
        p.hillInflectionPoint = newFundingFees.hillInflectionPoint;
        p.springFactor = newFundingFees.springFactor;
        p.hillPosScale = newFundingFees.hillPosScale;
        p.hillNegScale = newFundingFees.hillNegScale;
        p.sFactorUpScaleP = newFundingFees.sFactorUpScaleP;
        p.sFactorDownScaleP = newFundingFees.sFactorDownScaleP;

        emit PairFundingFeesUpdated(pairIndex, newFundingFees);
    }

    function setPairFundingFeesArray(
        uint16[] calldata indices,
        PairFundingFees[] calldata newValues
    ) external onlyGov {
        if (indices.length != newValues.length) {
            revert WrongParams();
        }

        for (uint256 i = 0; i < indices.length; i++) {
            setPairFundingFees(indices[i], newValues[i]);
        }
    }

    function setHillFunctionParams(
        uint16 pairIndex,
        int64 newHillInflectionPoint,
        uint16 newHillPosScale,
        uint16 newHillNegScale
    ) public onlyGov {
        if (
            newHillInflectionPoint.abs() > PRECISION_18 || newHillPosScale > MAX_HILL_SCALE
                || newHillNegScale > MAX_HILL_SCALE
        ) {
            revert WrongParams();
        }

        storeAccFundingFees(pairIndex);

        PairFundingFees storage p = pairFundingFees[pairIndex];
        p.hillInflectionPoint = newHillInflectionPoint;
        p.hillPosScale = newHillPosScale;
        p.hillNegScale = newHillNegScale;

        emit HillParamsUpdated(pairIndex, newHillInflectionPoint, newHillPosScale, newHillNegScale);
    }

    function setHillFunctionParamsArray(
        uint16[] calldata indices,
        int64[] calldata newHillInflectionPoints,
        uint16[] calldata newHillPosScales,
        uint16[] calldata newHillNegScales
    ) external onlyGov {
        uint256 indicesLength = indices.length;
        if (
            indicesLength != newHillInflectionPoints.length
                || indicesLength != newHillPosScales.length
                || indicesLength != newHillNegScales.length
        ) revert WrongParams();

        for (uint256 i = 0; i < indicesLength; i++) {
            setHillFunctionParams(
                indices[i], newHillInflectionPoints[i], newHillPosScales[i], newHillNegScales[i]
            );
        }
    }

    function setMaxFundingFeePerBlock(uint16 pairIndex, uint64 newMaxFundingFeePerBlock)
        public
        onlyGov
    {
        if (newMaxFundingFeePerBlock > MAX_FUNDING_FEE) revert WrongParams();

        storeAccFundingFees(pairIndex);

        pairFundingFees[pairIndex].maxFundingFeePerBlock = newMaxFundingFeePerBlock;

        emit MaxFundingFeePerBlockUpdated(pairIndex, newMaxFundingFeePerBlock);
    }

    function setMaxFundingFeePerBlockArray(uint16[] calldata indices, uint64[] calldata newValues)
        external
        onlyGov
    {
        if (indices.length != newValues.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setMaxFundingFeePerBlock(indices[i], newValues[i]);
        }
    }

    function storeTradeInitialAccFees(
        uint256 tradeId,
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long
    ) external onlyCallbacks {
        storeAccFundingFees(pairIndex);

        TradeInitialAccFees storage t = tradeInitialAccFees[trader][pairIndex][index];

        t.funding = long
            ? pairFundingFees[pairIndex].accPerOiLong
            : pairFundingFees[pairIndex].accPerOiShort;

        emit TradeInitialAccFeesStored(tradeId, trader, pairIndex, index, t.funding);
    }

    function getOpeningFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta
    ) external view returns (uint256 devFee, uint256 vaultFee) {
        uint256 baseFee = _getBaseOpeningFee(pairIndex, leveragedPositionSize, leverage, oiDelta);

        vaultFee = (baseFee * pairOpeningFees[pairIndex].vaultFeePercent) / PRECISION_2;
        devFee = baseFee >= vaultFee ? baseFee - vaultFee : 0;
    }

    function _getBaseOpeningFee(uint16 pairIndex, int256 tradeSize, uint32 leverage, int256 oiDelta)
        private
        view
        returns (uint256)
    {
        uint256 makerAmount = 0;
        uint256 takerAmount = 0;

        if (oiDelta * tradeSize < 0 && leverage <= pairOpeningFees[pairIndex].makerMaxLeverage) {
            if (oiDelta * (oiDelta + tradeSize) >= 0) {
                makerAmount = tradeSize.abs();
            } else {
                makerAmount = oiDelta.abs();
                takerAmount = (oiDelta + tradeSize).abs();
            }
        } else {
            takerAmount = tradeSize.abs();
        }

        return (pairOpeningFees[pairIndex].makerFeeP
                * makerAmount
                + pairOpeningFees[pairIndex].takerFeeP
                * takerAmount) / PRECISION_6 / 100;
    }

    function getClosingFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta
    ) external view returns (uint256 devFee, uint256 vaultFee) {
        uint256 baseFee = _getBaseClosingFee(pairIndex, leveragedPositionSize, leverage, oiDelta);

        vaultFee = (baseFee * pairClosingFees[pairIndex].vaultFeePercent) / PRECISION_2;
        devFee = baseFee >= vaultFee ? baseFee - vaultFee : 0;
    }

    function _getBaseClosingFee(uint16 pairIndex, int256 tradeSize, uint32 leverage, int256 oiDelta)
        private
        view
        returns (uint256)
    {
        uint256 makerAmount = 0;
        uint256 takerAmount = 0;

        if (oiDelta * tradeSize < 0 && leverage <= pairClosingFees[pairIndex].makerMaxLeverage) {
            if (oiDelta * (oiDelta + tradeSize) >= 0) {
                makerAmount = tradeSize.abs();
            } else {
                makerAmount = oiDelta.abs();
                takerAmount = (oiDelta + tradeSize).abs();
            }
        } else {
            takerAmount = tradeSize.abs();
        }

        return (pairClosingFees[pairIndex].makerFeeP
                * makerAmount
                + pairClosingFees[pairIndex].takerFeeP
                * takerAmount) / PRECISION_6 / 100;
    }

    function storeAccFundingFees(uint16 pairIndex) private {
        PairFundingFees storage f = pairFundingFees[pairIndex];

        (int256 accPerOiLong, int256 accPerOiShort, int64 lastFundingRate, int256 oiDelta) =
            getPendingAccFundingFees(pairIndex);

        (f.accPerOiLong, f.accPerOiShort, f.lastFundingRate, f.lastOiDelta) =
        (accPerOiLong, accPerOiShort, lastFundingRate, oiDelta);

        f.lastUpdateBlock = ChainUtils.getBlockNumber().toUint32();

        emit AccFundingFeesStored(pairIndex, accPerOiLong, accPerOiShort, oiDelta, lastFundingRate);
    }

    function getOiDelta(uint16 pairIndex)
        private
        view
        returns (int256 oiDelta, int256 openInterestLong, int256 openInterestShort)
    {
        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        int256 price =
            IDomfiOpenPnl(registry.getContractAddress("openPnl")).lastTradePrice(pairIndex);

        // slither-disable-next-line unused-return
        (uint256 u_oiLong, uint256 u_oiShort, uint256 u_oiCap,,) =
            tradingStorage.getPairOpenInterestInfo(pairIndex);

        openInterestLong = (u_oiLong.toInt256() * price) / int64(PRECISION_18) / 1e12;
        openInterestShort = (u_oiShort.toInt256() * price) / int64(PRECISION_18) / 1e12;

        int256 openInterestMax = SignedMath.max(openInterestLong, openInterestShort);
        int256 openInterestCap = SignedMath.max(u_oiCap.toInt256(), openInterestMax);

        oiDelta = ((openInterestLong - openInterestShort) * int32(PRECISION_6)) / openInterestCap;
    }

    function getPendingAccFundingFees(uint16 pairIndex)
        public
        view
        returns (int256, int256, int64, int256)
    {
        PairFundingFees memory f = pairFundingFees[pairIndex];

        int256 valueLong = f.accPerOiLong;
        int256 valueShort = f.accPerOiShort;

        (int256 oiDelta, int256 openInterestLong, int256 openInterestShort) = getOiDelta(pairIndex);
        uint256 numBlocksToCharge = ChainUtils.getBlockNumber() - f.lastUpdateBlock;

        int256 targetFr = getTargetFundingRate(
            oiDelta, f.hillInflectionPoint, f.maxFundingFeePerBlock, f.hillPosScale, f.hillNegScale
        );

        uint256 sFactor;
        if (f.lastFundingRate * targetFr >= 0) {
            if (targetFr.abs() > f.lastFundingRate.abs()) {
                sFactor = f.springFactor;
            } else {
                sFactor = (uint256(f.sFactorDownScaleP) * f.springFactor) / 100e2;
            }
        } else {
            sFactor = (uint256(f.sFactorUpScaleP) * f.springFactor) / 100e2;
        }

        // slither-disable-next-line divide-before-multiply
        int256 exp = exponentialApproximation(-(sFactor * numBlocksToCharge).toInt256()).toInt256();

        int256 accFundingRate = targetFr * numBlocksToCharge.toInt256()
            + ((int64(PRECISION_18) - exp) * (f.lastFundingRate - targetFr)) / sFactor.toInt256();
        int64 fr =
            (targetFr + ((f.lastFundingRate - targetFr) * exp) / int64(PRECISION_18)).toInt64();

        if (accFundingRate > 0) {
            if (openInterestLong > 0) {
                valueLong += accFundingRate;
                valueShort -= openInterestShort > 0
                    ? (accFundingRate * openInterestLong) / openInterestShort
                    : int8(0);
            }
        } else {
            if (openInterestShort > 0) {
                valueShort -= accFundingRate;
                valueLong += openInterestLong > 0
                    ? (accFundingRate * openInterestShort) / openInterestLong
                    : int8(0);
            }
        }

        return (valueLong, valueShort, fr, oiDelta);
    }

    function exponentialApproximation(int256 value) private pure returns (uint256) {
        // Pade approximation
        if (value.abs() < PADE_ERROR_THRESHOLD) {
            int256 threeWithPrecision = int8(3) * int64(PRECISION_18);
            int256 numeratorTmp = value + threeWithPrecision;
            uint256 numerator = (numeratorTmp * numeratorTmp).toUint256() / PRECISION_18
                + threeWithPrecision.toUint256();
            int256 denominatorTmp = value - threeWithPrecision;
            uint256 denominator = (denominatorTmp * denominatorTmp).toUint256() / PRECISION_18
                + threeWithPrecision.toUint256();

            return (numerator * PRECISION_18) / denominator;
        }
        // Power of two approximation
        else if (value.abs() <= POWERTWO_APPROX_THRESHOLD) {
            uint24[10] memory k = [
                1648721,
                1284025,
                1133148,
                1064494,
                1031743,
                1015748,
                1007843,
                1003915,
                1001955,
                1000977
            ];
            uint256 integerPart = value.abs() / PRECISION_18;
            // slither-disable-next-line divide-before-multiply
            uint256 decimalPart = value.abs() - integerPart * PRECISION_18;

            uint256 approx = PRECISION_6;

            for (uint8 i = 0; i < k.length; i++) {
                decimalPart = decimalPart * 2;
                if (decimalPart >= PRECISION_18) {
                    approx = (approx * k[i]) / PRECISION_6;
                    decimalPart -= PRECISION_18;
                }
                if (decimalPart == 0) {
                    break;
                }
            }

            // slither-disable-next-line divide-before-multiply
            return ((uint256(PRECISION_18) * PRECISION_18)
                    / ((2 ** integerPart) * ((approx / 1e3) * 1e15))
                    / 1e15) * 1e15;
        }
        // Returns 0 due to decimal's precision of 3 for Power of Two.
        else {
            return 0;
        }
    }

    function getTargetFundingRate(
        int256 normalizedOiDelta,
        int64 hillInflectionPoint,
        uint64 maxFundingFeePerBlock,
        uint16 hillPosScale,
        uint16 hillNegScale
    ) private pure returns (int256) {
        int64 a = 184;
        int64 k = 16;
        // slither-disable-next-line divide-before-multiply
        int256 x = (a * normalizedOiDelta) / int8(PRECISION_2);
        int256 x2 = x * x * 1e6; // convert to PRECISION_18
        // slither-disable-next-line divide-before-multiply
        int256 hill = (x2 * int64(PRECISION_18)) / ((k * 1e16) + x2);

        int256 targetFr = normalizedOiDelta >= 0
            ? ((int16(hillPosScale) * hill) / int8(PRECISION_2)) + hillInflectionPoint
            : -((int16(hillNegScale) * hill) / int8(PRECISION_2)) + hillInflectionPoint;

        if (targetFr > int64(PRECISION_18)) {
            targetFr = int64(PRECISION_18);
        } else if (targetFr < -int64(PRECISION_18)) {
            targetFr = -int64(PRECISION_18);
        }

        return (targetFr * int64(maxFundingFeePerBlock)) / int64(PRECISION_18);
    }

    function getTradeFundingFee(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (int256, int256) {
        TradeInitialAccFees memory t = tradeInitialAccFees[trader][pairIndex][index];

        (int256 pendingLong, int256 pendingShort,, int256 oiDelta) =
            getPendingAccFundingFees(pairIndex);

        return (
            getTradeFundingFeePure(
                t.funding, long ? pendingLong : pendingShort, collateral, leverage
            ),
            oiDelta
        );
    }

    function getTradeFundingFeePure(
        int256 accFundingFeesPerOi,
        int256 endAccFundingFeesPerOi,
        uint256 collateral,
        uint32 leverage
    ) public pure returns (int256) {
        int256 accFundingDelta = endAccFundingFeesPerOi - accFundingFeesPerOi;
        int256 fundingFee = (accFundingDelta * (collateral * leverage).toInt256())
            / int64(PRECISION_18) / int8(PRECISION_2);

        return (fundingFee != 0) ? fundingFee : (accFundingDelta > 0) ? int8(1) : int8(0);
    }

    function getTradeLiquidationPrice(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        uint32 maxLeverage
    ) external view returns (uint256) {
        int256 fundingFee;
        {
            (int256 accPerOiLong, int256 accPerOiShort,,) = getPendingAccFundingFees(pairIndex);
            fundingFee = getTradeFundingFeePure(
                tradeInitialAccFees[trader][pairIndex][index].funding,
                long ? accPerOiLong : accPerOiShort,
                collateral,
                leverage
            );
        }
        return getTradeLiquidationPricePure(
            openPrice, long, collateral, leverage, fundingFee, maxLeverage
        );
    }

    function getTradeLiquidationPricePure(
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        int256 fundingFee,
        uint32 maxLeverage
    ) public view returns (uint256) {
        int256 liqMarginValue = getTradeLiquidationMargin(collateral, leverage, maxLeverage)
            .toInt256();

        int256 targetCollateralAfterFees = collateral.toInt256() - liqMarginValue - fundingFee;
        int8 targetCollateralSign = targetCollateralAfterFees < 0 ? int8(-1) : int8(1);

        int256 liqPriceDistance = int256(
            openPrice.mulDiv(
                uint256(targetCollateralAfterFees) * PRECISION_2,
                collateral * leverage,
                Math.Rounding.Ceil
            )
        ) * targetCollateralSign;

        int256 liqPrice = long
            ? openPrice.toInt256() - liqPriceDistance
            : openPrice.toInt256() + liqPriceDistance;

        return liqPrice > 0 ? uint256(liqPrice) : 0;
    }

    function getTradeValue(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage,
        int256 percentProfit,
        uint32 maxLeverage
    ) external onlyCallbacks returns (uint256 tradeValue, uint256 liqMarginValue, int256 f) {
        storeAccFundingFees(pairIndex);

        f = getTradeFundingFeePure(
            tradeInitialAccFees[trader][pairIndex][index].funding,
            long
                ? pairFundingFees[pairIndex].accPerOiLong
                : pairFundingFees[pairIndex].accPerOiShort,
            collateral,
            leverage
        );

        liqMarginValue = getTradeLiquidationMargin(collateral, leverage, maxLeverage);
        tradeValue = getTradeValuePure(collateral, percentProfit, f, liqMarginValue);

        if (tradeValue <= liqMarginValue) {
            tradeValue = 0;
        }
    }

    function getTradeValuePure(
        uint256 collateral,
        int256 percentProfit,
        int256 fundingFee,
        uint256 liqMarginValue
    ) public pure returns (uint256) {
        int256 signedCollateral = collateral.toInt256();
        int256 value = signedCollateral
            + ((signedCollateral * percentProfit) / int32(PRECISION_6) / 100) - fundingFee;

        if (value <= liqMarginValue.toInt256()) {
            value = 0;
        }

        return value.toUint256();
    }

    function getTradeLiquidationMargin(uint256 collateral, uint32 leverage, uint32 maxLeverage)
        public
        view
        returns (uint256)
    {
        uint256 rawAdjustedThreshold =
            (uint256(liqMarginThresholdP) * leverage * PRECISION_6) / maxLeverage;
        // slither-disable-next-line divide-before-multiply
        return collateral * rawAdjustedThreshold / (100 * PRECISION_6);
    }

    function getAccFundingFeesLong(uint16 pairIndex) external view returns (int256) {
        return pairFundingFees[pairIndex].accPerOiLong;
    }

    function getAccFundingFeesShort(uint16 pairIndex) external view returns (int256) {
        return pairFundingFees[pairIndex].accPerOiShort;
    }

    function getAccFundingFeesUpdateBlock(uint16 pairIndex) external view returns (uint256) {
        return pairFundingFees[pairIndex].lastUpdateBlock;
    }

    function getTradeInitialAccFundingFeesPerOi(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (int256)
    {
        return tradeInitialAccFees[trader][pairIndex][index].funding;
    }

    function getHillFunctionParams(uint16 pairIndex)
        external
        view
        returns (int256, uint16, uint16)
    {
        return (
            pairFundingFees[pairIndex].hillInflectionPoint,
            pairFundingFees[pairIndex].hillPosScale,
            pairFundingFees[pairIndex].hillNegScale
        );
    }

    function getFrSpringFactor(uint16 pairIndex) external view returns (uint64) {
        return pairFundingFees[pairIndex].springFactor;
    }
}
