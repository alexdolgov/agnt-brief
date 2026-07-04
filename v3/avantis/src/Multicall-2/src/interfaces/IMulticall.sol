// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "./ITradingStorage.sol";
import "./IPairStorage.sol";
import "./IPairInfos.sol";

interface IMulticall {
    struct AggregatedTrade {
        ITradingStorage.Trade trade;
        ITradingStorage.TradeInfo tradeInfo;
        uint rolloverFee;
        uint liquidationPrice;
        bool isPnl;
    }

    struct AggregatedPendingOrder {
        uint orderId;
        ITradingStorage.PendingMarketOrder orderInfo;
    }

    struct AggregatedOrder {
        ITradingStorage.OpenLimitOrder order;
        uint liquidationPrice;
    }

    function getPositions(
        address userAddress
    ) external view returns (AggregatedTrade[] memory, AggregatedOrder[] memory);

    // function getPairs() external view returns (IPairStorage.Pair[] memory resultPairs);

    function getLongShortRatios()
        external
        view
        returns (uint[] memory longRatio, uint[] memory shortRatio);

    function getFirstEmptyTradeIndexes(
        address userAddress
    ) external view returns (uint[] memory firstEmptyTradeIndexes);

    function getOpenLimitOrdersCounts(address userAddress) external view returns (uint[] memory openLimitOrdersCounts);

    function getMargins()
        external
        view
        returns (
            uint[] memory rolloverFeePerBlockP,
            uint[] memory rolloverFeePerBlockLong,
            uint[] memory rolloverFeePerBlockShort,
            uint[] memory openInterestUSDCLong,
            uint[] memory openInterestUSDCShort
        );

    function getMarginsForPair(
        uint256 pairIndex
    )
        external
        view
        returns (
            uint rolloverFeePerBlockP,
            uint rolloverFeePerBlockLong,
            uint rolloverFeePerBlockShort,
            uint openInterestUSDCLong,
            uint openInterestUSDCShort
        );
    

    //     function updateSlTp(
    //         uint _pairIndex,
    //         uint _index,
    //         uint _newSl,
    //         uint _newTp,
    //         bytes[] calldata priceUpdateData
    //     ) external payable;

    function getPositionsForPairIndexes(
        address userAddress,
        uint256 startPairIndex,
        uint256 endPairIndex,
        uint256 maxTradesPerPair
    )
        external
        view
        returns (AggregatedTrade[] memory, AggregatedOrder[] memory);


    function getPendingOrder(address _trader) external view returns(AggregatedPendingOrder[] memory pendingOrders);
}

interface IExtendedPairStorage is IPairStorage {
    function pairs(uint) external view returns (Pair memory);
}

interface IExtendedPairInfos is IPairInfos {
    function getRolloverFeePerBlockP(uint pairIndex) external view returns (uint);

    function getUtilizationMultiplier(uint pairIndex) external view returns (uint);

    function getLongMultiplier(uint pairIndex) external view returns (uint);

    function getShortMultiplier(uint pairIndex) external view returns (uint);

    function getBlendedUtilizationRatio(uint _pairIndex, uint _longOI, uint _shortOI) external view returns(uint256);

    function getBlendedSkew(uint _pairIndex, bool _long,  uint _longOI, uint _shortOI) external view returns(uint256);
}

interface IExtendedTrading {
    function updateSl(uint _pairIndex, uint _index, uint _newSl, bytes[] calldata priceUpdateData) external payable;

    function updateTp(uint _pairIndex, uint _index, uint _newTp) external;
}