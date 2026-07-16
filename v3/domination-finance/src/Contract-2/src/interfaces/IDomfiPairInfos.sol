// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiPairInfos {
    struct PairOpeningFees {
        uint32 makerFeeP; // PRECISION_6 (%)
        uint32 takerFeeP; // PRECISION_6 (%)
        uint32 usageFeeP; // PRECISION_6 (%)
        uint16 utilizationThresholdP; // PRECISION_2 (%)
        uint16 makerMaxLeverage; // PRECISION_2
        uint8 vaultFeePercent;
    }

    struct PairClosingFees {
        uint32 makerFeeP; // PRECISION_6 (%)
        uint32 takerFeeP; // PRECISION_6 (%)
        uint32 usageFeeP; // PRECISION_6 (%)
        uint16 utilizationThresholdP; // PRECISION_2 (%)
        uint16 makerMaxLeverage; // PRECISION_2
        uint8 vaultFeePercent;
    }

    struct PairFundingFees {
        int256 accPerOiLong; // PRECISION_18 (but USDC)
        int256 accPerOiShort; // PRECISION_18 (but USDC)
        int64 lastFundingRate; // PRECISION_18
        int64 hillInflectionPoint; // PRECISION_18
        uint64 maxFundingFeePerBlock; // PRECISION_18
        uint64 springFactor; // PRECISION_18
        uint32 lastUpdateBlock;
        uint16 hillPosScale; // PRECISION_2
        uint16 hillNegScale; // PRECISION_2
        uint16 sFactorUpScaleP; // PRECISION_2
        uint16 sFactorDownScaleP; // PRECISION_2
        int256 lastOiDelta; // PRECISION_6
    }

    struct TradeInitialAccFees {
        int256 funding; // PRECISION_18 (but USDC)
        bool openedAfterUpdate;
    }

    event ManagerUpdated(address indexed newManager);
    event LiqMarginThresholdPUpdated(uint8 newLiqMarginThresholdP);
    event MaxNegativePnlOnOpenPUpdated(uint8 newMaxNegativePnlOnOpenP);
    event VaultFeePercentUpdated(uint16 indexed pairIndex, uint8 newVaultFeePercent);
    event PairOpeningFeesUpdated(uint16 indexed pairIndex, PairOpeningFees newOpeningFees);
    event PairClosingFeesUpdated(uint16 indexed pairIndex, PairClosingFees newClosingFees);
    event PairFundingFeesUpdated(uint16 indexed pairIndex, PairFundingFees newFundingFees);
    event MaxFundingFeePerBlockUpdated(uint16 indexed pairIndex, uint64 newMaxFundingFeePerBlock);
    event TradeInitialAccFeesStored(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        int256 funding
    );
    event AccFundingFeesStored(
        uint16 indexed pairIndex,
        int256 valueLong,
        int256 valueShort,
        int256 lastOiDelta,
        int64 lastFundingRate
    );
    event FeesCharged(
        uint256 indexed orderId, uint256 indexed tradeId, address indexed trader, int256 fundingFees
    );
    event HillParamsUpdated(
        uint16 indexed pairIndex,
        int64 newHillInflectionPoint,
        uint16 newHillPosScale,
        uint16 newHillNegScale
    );

    error WrongParams();
    error NotGov(address caller);
    error NotManager(address caller);
    error NotCallbacks(address caller);

    function pairOpeningFees(uint16 pairIndex)
        external
        returns (uint32, uint32, uint32, uint16, uint16, uint8);
    function pairClosingFees(uint16 pairIndex)
        external
        returns (uint32, uint32, uint32, uint16, uint16, uint8);
    function pairFundingFees(uint16 pairIndex)
        external
        returns (
            int256,
            int256,
            int64,
            int64,
            uint64,
            uint64,
            uint32,
            uint16,
            uint16,
            uint16,
            uint16,
            int256
        );
    function tradeInitialAccFees(address trader, uint16 pairIndex, uint8 tradeIndex)
        external
        returns (int256, bool);
    function maxNegativePnlOnOpenP() external view returns (uint8);
    function getTradeLiquidationPrice(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        uint32 maxLeverage
    ) external view returns (uint256);
    function getTradeValue(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage,
        int256 percentProfit,
        uint32 maxLeverage
    ) external returns (uint256 tradeValue, uint256 liqMarginValue, int256 f);
    function manager() external view returns (address);
    function liqMarginThresholdP() external view returns (uint8);
    function getOpeningFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta
    ) external view returns (uint256, uint256);
    function getClosingFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta
    ) external view returns (uint256, uint256);
    function getPendingAccFundingFees(uint16 pairIndex)
        external
        view
        returns (int256 valueLong, int256 valueShort, int64 fr, int256 oiDelta);
    function getTradeFundingFee(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (int256, int256);
    function getTradeFundingFeePure(
        int256 accFundingFeesPerOi,
        int256 endAccFundingFeesPerOi,
        uint256 collateral,
        uint32 leverage
    ) external pure returns (int256);
    function getTradeLiquidationPricePure(
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        int256 fundingFee,
        uint32 maxLeverage
    ) external view returns (uint256);
    function getTradeValuePure(
        uint256 collateral,
        int256 percentProfit,
        int256 fundingFee,
        uint256 liqMarginValue
    ) external view returns (uint256);
    function getAccFundingFeesLong(uint16 pairIndex) external view returns (int256);
    function getAccFundingFeesShort(uint16 pairIndex) external view returns (int256);
    function getAccFundingFeesUpdateBlock(uint16 pairIndex) external view returns (uint256);
    function getTradeInitialAccFundingFeesPerOi(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (int256);

    // only gov
    function setManager(address newManager) external;
    function setLiqMarginThresholdP(uint8 newLiqMarginThresholdP) external;
    function setMaxNegativePnlOnOpenP(uint8 newMaxNegativePnlPOnOpenP) external;
    function setPairOpeningFees(uint16 pairIndex, PairOpeningFees calldata newOpeningFees) external;
    function setPairOpeningFeesArray(
        uint16[] calldata indices,
        PairOpeningFees[] calldata newValues
    ) external;
    function setPairOpeningVaultFeePercent(uint16 pairIndex, uint8 newVaultFeePercent) external;
    function setPairOpeningVaultFeePercentArray(
        uint16[] calldata pairIndex,
        uint8[] calldata newValues
    ) external;
    function setPairClosingFees(uint16 pairIndex, PairClosingFees calldata newClosingFees) external;
    function setPairClosingFeesArray(
        uint16[] calldata indices,
        PairClosingFees[] calldata newValues
    ) external;
    function setPairClosingVaultFeePercent(uint16 pairIndex, uint8 newVaultFeePercent) external;
    function setPairClosingVaultFeePercentArray(
        uint16[] calldata pairIndex,
        uint8[] calldata newValues
    ) external;
    function setPairFundingFees(uint16 pairIndex, PairFundingFees calldata newFundingFees) external;
    function setPairFundingFeesArray(
        uint16[] calldata indices,
        PairFundingFees[] calldata newValues
    ) external;
    function setHillFunctionParams(
        uint16 pairIndex,
        int64 newHillInflectionPoint,
        uint16 newHillPosScale,
        uint16 newHillNegScale
    ) external;
    function setHillFunctionParamsArray(
        uint16[] calldata indices,
        int64[] calldata newHillInflectionPoints,
        uint16[] calldata newHillPosScales,
        uint16[] calldata newHillNegScales
    ) external;
    function setMaxFundingFeePerBlock(uint16 pairIndex, uint64 newMaxFundingFeePerBlock) external;
    function setMaxFundingFeePerBlockArray(uint16[] calldata indices, uint64[] calldata newValues)
        external;

    // only callbacks
    function storeTradeInitialAccFees(
        uint256 tradeId,
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long
    ) external;
    function getHillFunctionParams(uint16 pairIndex) external view returns (int256, uint16, uint16);
    function getFrSpringFactor(uint16 pairIndex) external view returns (uint64);
}
