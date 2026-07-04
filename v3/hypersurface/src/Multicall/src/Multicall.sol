// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Importing iterfaces
import "./interfaces/ITradingStorage.sol";
import "./interfaces/IMulticall.sol";

// Importing contracts
import "./library/Multicall3.sol";

/**
 * @title Avantis Multicall
 * @notice Built on top of MultiCall3. Helpers deep aggregate results from multiple function calls.
 */
contract Multicall is Multicall3, IMulticall {
    // Contracts
    ITradingStorage storageT;
    IExtendedPairInfos pairInfos;
    IExtendedPairStorage pairsStorage;
    IExtendedTrading trading;

    // Modifiers
    modifier onlyGov() {
        require(msg.sender == storageT.gov(), "GOV_ONLY");
        _;
    }

    /**
     * @notice Constructor
     * @param _storage The address of the trading storage contract
     * @param _pairInfos The address of the pair infos contract
     * @param _pairsStorage The address of the pair storage contract
     * @param _trading The address of the trading contract
     * @dev This constructor is used to set the addresses of the storage and pair infos contracts
     */
    constructor(
        address _storage,
        address _pairInfos,
        address _pairsStorage,
        address _trading
    ) {
        storageT = ITradingStorage(_storage);
        pairInfos = IExtendedPairInfos(_pairInfos);
        pairsStorage = IExtendedPairStorage(_pairsStorage);
        trading = IExtendedTrading(_trading);
    }

    /**
     * @notice Updates the addresses of the storage and pair infos contracts
     * @param _storage The address of the trading storage contract
     * @param _pairInfos The address of the pair infos contract
     * @param _pairsStorage The address of the pair storage contract
     * @param _trading The address of the trading contract
     * @dev This function is used to change the addresses of the storage and pair infos contracts. Only gov can call it.
     */
    function updateContracts(
        address _storage,
        address _pairInfos,
        address _pairsStorage,
        address _trading
    ) external onlyGov {
        storageT = ITradingStorage(_storage);
        pairInfos = IExtendedPairInfos(_pairInfos);
        pairsStorage = IExtendedPairStorage(_pairsStorage);
        trading = IExtendedTrading(_trading);
    }

    /**
     * @notice Gets the aggregated trades and orders for a given user address
     * @param userAddress The address of the user
     * @return AggregatedTrade An array of aggregated trades
     * @return AggregatedOrder An array of aggregated orders
     * @dev This function is used to get the aggregated trades and orders for a given user address
     * **/
    function getPositions(
        address userAddress
    )
        external
        view
        override
        returns (AggregatedTrade[] memory, AggregatedOrder[] memory)
    {
        uint256 pairCount = pairsStorage.pairsCount();

        uint256 maxTradesPerPair = storageT.maxTradesPerPair();

        uint256 totalPositions = maxTradesPerPair * pairCount;

        // Create an array of aggregated trades and orders
        AggregatedTrade[] memory aggregatedTrades = new AggregatedTrade[](
            totalPositions
        );
        AggregatedOrder[] memory aggregatedOrders = new AggregatedOrder[](
            totalPositions
        );

        aggregatedTrades = _getTrades(
            userAddress,
            pairCount,
            maxTradesPerPair,
            aggregatedTrades
        );
        aggregatedOrders = _getOrders(
            userAddress,
            pairCount,
            maxTradesPerPair,
            aggregatedOrders
        );

        return (aggregatedTrades, aggregatedOrders);
    }

    /**
     * @notice Gets the aggregated trades and orders for a given user address
     * @param userAddress The address of the user
     * @param startPairIndex Start PairIndex
     * @param endPairIndex End pairIndex
     * @param maxTradesPerPair MAX trades per pair
     * @return AggregatedTrade An array of aggregated trades
     * @return AggregatedOrder An array of aggregated orders
     * @dev This function is used to get the aggregated trades and orders for a given user address
     * **/
    function getPositionsForPairIndexes(
        address userAddress,
        uint256 startPairIndex,
        uint256 endPairIndex,
        uint256 maxTradesPerPair
    )
        external
        view
        override
        returns (AggregatedTrade[] memory, AggregatedOrder[] memory)
    {
        uint256 pairCount = endPairIndex - startPairIndex;

        uint256 totalPositions = maxTradesPerPair * pairCount;

        // Create an array of aggregated trades and orders
        AggregatedTrade[] memory aggregatedTrades = new AggregatedTrade[](
            totalPositions
        );
        AggregatedOrder[] memory aggregatedOrders = new AggregatedOrder[](
            totalPositions
        );

        aggregatedTrades = _getTradesForPairIndexes(
            userAddress,
            startPairIndex,
            endPairIndex,
            maxTradesPerPair,
            aggregatedTrades
        );
        aggregatedOrders = _getOrdersForPairIndexes(
            userAddress,
            startPairIndex,
            endPairIndex,
            maxTradesPerPair,
            aggregatedOrders
        );

        return (aggregatedTrades, aggregatedOrders);
    }

    /**
    @notice Public facing helper method to compute liquidation price of a position. 
    @notice Reverts with string "NON_EXISTENT_POSITION" if position does not exist.
    @param trader  Address of trader
    @param pairIndex Asset index
    @param index Position specific index
    @return liquidationPrice Liquidation price for trade.
     */
    function getLiquidationPrice(
        address trader,
        uint pairIndex,
        uint index
    ) public view returns (uint liquidationPrice) {
        ITradingStorage.Trade memory trade = storageT.openTrades(
            trader,
            pairIndex,
            index
        );
        require(trade.leverage != 0, "NON_EXISTENT_POSITION");

        liquidationPrice = pairInfos.getTradeLiquidationPrice(
            trader,
            pairIndex,
            index,
            trade.openPrice,
            trade.buy,
            trade.initialPosToken,
            trade.leverage
        );
    }

    /**
     * @notice [INTERNAL] Gets the aggregated trades for a given user address
     * @param userAddress The address of the user
     * @param pairCount The number of pairs
     * @param maxTradesPerPair The maximum number of trades per pair
     * @param aggregatedTrades An array of aggregated trades
     * @return AggregatedTrade An array of aggregated trades
     * @dev This internal function is used to get the aggregated trades for a given user address
     */
    function _getTrades(
        address userAddress,
        uint256 pairCount,
        uint256 maxTradesPerPair,
        AggregatedTrade[] memory aggregatedTrades
    ) internal view returns (AggregatedTrade[] memory) {
        uint256 tradeCounter = 0;
        for (uint256 pairIndex = 0; pairIndex < pairCount; pairIndex++) {
            for (
                uint256 tradeIndex = 0;
                tradeIndex < maxTradesPerPair;
                tradeIndex++
            ) {
                // Try-Catch Open Trades
                // Get trade data
                try
                    storageT.openTrades(userAddress, pairIndex, tradeIndex)
                returns (ITradingStorage.Trade memory tradeData) {
                    if (tradeData.leverage == 0) {
                        tradeCounter++;
                        continue;
                    }

                    // Get rollover fee
                    uint rolloverFee = pairInfos.getTradeRolloverFee(
                        userAddress,
                        pairIndex,
                        tradeIndex,
                        tradeData.buy,
                        tradeData.initialPosToken,
                        tradeData.leverage
                    );

                    bool isPnl = pairsStorage.getPosType(
                        userAddress,
                        pairIndex,
                        tradeIndex
                    );

                    // Try-Catch Liquidation Price
                    // Get liquidation price
                    try
                        pairInfos.getTradeLiquidationPrice(
                            userAddress,
                            pairIndex,
                            tradeIndex,
                            tradeData.openPrice,
                            tradeData.buy,
                            tradeData.initialPosToken,
                            tradeData.leverage
                        )
                    returns (uint liquidationPrice) {
                        // Get trade info
                        ITradingStorage.TradeInfo memory tradeInfo = storageT
                            .openTradesInfo(userAddress, pairIndex, tradeIndex);

                        // Add aggregated trade to array
                        aggregatedTrades[tradeCounter] = AggregatedTrade({
                            trade: tradeData,
                            tradeInfo: tradeInfo,
                            rolloverFee: rolloverFee,
                            liquidationPrice: liquidationPrice,
                            isPnl: isPnl
                        });
                        tradeCounter++;
                    } catch {
                        // Catch Liquidation Price
                        tradeCounter++;
                        continue;
                    }
                } catch {
                    // Catch Open Trades
                    tradeCounter++;
                    continue;
                }
            }
        }
        return aggregatedTrades;
    }

    /**
     * @notice [INTERNAL] Gets the aggregated trades for a given user address
     * @param userAddress The address of the user
     * @param startPairIndex The Start Pair Index
     * @param endPairIndex The End Pair Index
     * @param maxTradesPerPair The maximum number of trades per pair
     * @param aggregatedTrades An array of aggregated trades
     * @return AggregatedTrade An array of aggregated trades
     * @dev This internal function is used to get the aggregated trades for a given user address
     */
    function _getTradesForPairIndexes(
        address userAddress,
        uint256 startPairIndex,
        uint256 endPairIndex,
        uint256 maxTradesPerPair,
        AggregatedTrade[] memory aggregatedTrades
    ) internal view returns (AggregatedTrade[] memory) {
        uint256 tradeCounter = 0;
        for (
            uint256 pairIndex = startPairIndex;
            pairIndex < endPairIndex;
            pairIndex++
        ) {
            for (
                uint256 tradeIndex = 0;
                tradeIndex < maxTradesPerPair;
                tradeIndex++
            ) {
                // Try-Catch Open Trades
                // Get trade data
                try
                    storageT.openTrades(userAddress, pairIndex, tradeIndex)
                returns (ITradingStorage.Trade memory tradeData) {
                    if (tradeData.leverage == 0) {
                        tradeCounter++;
                        continue;
                    }

                    // Get rollover fee
                    uint rolloverFee = pairInfos.getTradeRolloverFee(
                        userAddress,
                        pairIndex,
                        tradeIndex,
                        tradeData.buy,
                        tradeData.initialPosToken,
                        tradeData.leverage
                    );

                    bool isPnl = pairsStorage.getPosType(
                        userAddress,
                        pairIndex,
                        tradeIndex
                    );

                    // Try-Catch Liquidation Price
                    // Get liquidation price
                    try
                        pairInfos.getTradeLiquidationPrice(
                            userAddress,
                            pairIndex,
                            tradeIndex,
                            tradeData.openPrice,
                            tradeData.buy,
                            tradeData.initialPosToken,
                            tradeData.leverage
                        )
                    returns (uint liquidationPrice) {
                        // Get trade info
                        ITradingStorage.TradeInfo memory tradeInfo = storageT
                            .openTradesInfo(userAddress, pairIndex, tradeIndex);

                        // Add aggregated trade to array
                        aggregatedTrades[tradeCounter] = AggregatedTrade({
                            trade: tradeData,
                            tradeInfo: tradeInfo,
                            rolloverFee: rolloverFee,
                            liquidationPrice: liquidationPrice,
                            isPnl: isPnl
                        });
                        tradeCounter++;
                    } catch {
                        // Catch Liquidation Price
                        tradeCounter++;
                        continue;
                    }
                } catch {
                    // Catch Open Trades
                    tradeCounter++;
                    continue;
                }
            }
        }
        return aggregatedTrades;
    }

    /**
     * @notice [INTERNAL] Gets the aggregated orders for a given user address
     * @param userAddress The address of the user
     * @param pairCount The number of pairs
     * @param maxTradesPerPair The maximum number of trades per pair
     * @param aggregatedOrders An array of aggregated orders
     * @return AggregatedOrder An array of aggregated orders
     * @dev This internal function is used to get the aggregated orders for a given user address
     */
    function _getOrders(
        address userAddress,
        uint256 pairCount,
        uint256 maxTradesPerPair,
        AggregatedOrder[] memory aggregatedOrders
    ) internal view returns (AggregatedOrder[] memory) {
        uint256 orderCounter = 0;
        for (uint256 pairIndex = 0; pairIndex < pairCount; pairIndex++) {
            for (
                uint256 orderIndex = 0;
                orderIndex < maxTradesPerPair;
                orderIndex++
            ) {
                // Try-Catch Limit Orders
                // Get order data
                try
                    storageT.getOpenLimitOrder(
                        userAddress,
                        pairIndex,
                        orderIndex
                    )
                returns (ITradingStorage.OpenLimitOrder memory orderData) {
                    if (orderData.leverage == 0) {
                        orderCounter++;
                        continue;
                    }

                    // Try-Catch Liquidation Price
                    // Get liquidation price
                    try
                        pairInfos.getTradeLiquidationPrice(
                            userAddress,
                            pairIndex,
                            orderData.index,
                            orderData.price,
                            orderData.buy,
                            orderData.positionSize,
                            orderData.leverage
                        )
                    returns (uint liquidationPrice) {
                        // Add aggregated order to array
                        aggregatedOrders[orderCounter] = AggregatedOrder({
                            order: orderData,
                            liquidationPrice: liquidationPrice
                        });
                        orderCounter++;
                    } catch {
                        // Catch Liquidation Price
                        orderCounter++;
                        continue;
                    }
                } catch {
                    // Catch Limit Orders
                    orderCounter++;
                    continue;
                }
            }
        }
        return aggregatedOrders;
    }

    /**
     * @notice [INTERNAL] Gets the aggregated orders for a given user address
     * @param userAddress The address of the user
     * @param startPairIndex The Start Pair Index
     * @param endPairIndex The End Pair Index
     * @param maxTradesPerPair The maximum number of trades per pair
     * @param aggregatedOrders An array of aggregated orders
     * @return AggregatedOrder An array of aggregated orders
     * @dev This internal function is used to get the aggregated orders for a given user address
     */
    function _getOrdersForPairIndexes(
        address userAddress,
        uint256 startPairIndex,
        uint256 endPairIndex,
        uint256 maxTradesPerPair,
        AggregatedOrder[] memory aggregatedOrders
    ) internal view returns (AggregatedOrder[] memory) {
        uint256 orderCounter = 0;
        for (
            uint256 pairIndex = startPairIndex;
            pairIndex < endPairIndex;
            pairIndex++
        ) {
            for (
                uint256 orderIndex = 0;
                orderIndex < maxTradesPerPair;
                orderIndex++
            ) {
                // Try-Catch Limit Orders
                // Get order data
                try
                    storageT.getOpenLimitOrder(
                        userAddress,
                        pairIndex,
                        orderIndex
                    )
                returns (ITradingStorage.OpenLimitOrder memory orderData) {
                    if (orderData.leverage == 0) {
                        orderCounter++;
                        continue;
                    }

                    // Try-Catch Liquidation Price
                    // Get liquidation price
                    try
                        pairInfos.getTradeLiquidationPrice(
                            userAddress,
                            pairIndex,
                            orderData.index,
                            orderData.price,
                            orderData.buy,
                            orderData.positionSize,
                            orderData.leverage
                        )
                    returns (uint liquidationPrice) {
                        // Add aggregated order to array
                        aggregatedOrders[orderCounter] = AggregatedOrder({
                            order: orderData,
                            liquidationPrice: liquidationPrice
                        });
                        orderCounter++;
                    } catch {
                        // Catch Liquidation Price
                        orderCounter++;
                        continue;
                    }
                } catch {
                    // Catch Limit Orders
                    orderCounter++;
                    continue;
                }
            }
        }
        return aggregatedOrders;
    }

    /**
     * @notice Gets long, and short ratios for all pairs
     * @return longRatio An array of long ratios
     * @return shortRatio An array of short ratios
     * @dev This function is used to get long, and short ratios for all pairs
     */
    function getLongShortRatios()
        external
        view
        override
        returns (uint[] memory longRatio, uint[] memory shortRatio)
    {
        uint256 pairCount = pairsStorage.pairsCount();

        longRatio = new uint[](pairCount);
        shortRatio = new uint[](pairCount);

        for (uint256 i = 0; i < pairCount; i++) {
            longRatio[i] = storageT.openInterestUSDC(i, 0);
            shortRatio[i] = storageT.openInterestUSDC(i, 1);
        }
    }

    /**
     * @notice Get empty trade indexes for a given user address
     * @param userAddress The address of the user
     * @return firstEmptyTradeIndexes An array of first empty trade indexes
     * @dev This function is used to get all empty trade indexes for a given user address
     */
    function getFirstEmptyTradeIndexes(
        address userAddress
    ) external view override returns (uint[] memory firstEmptyTradeIndexes) {
        uint256 pairCount = pairsStorage.pairsCount();

        firstEmptyTradeIndexes = new uint[](pairCount);

        for (uint256 i = 0; i < pairCount; i++) {
            firstEmptyTradeIndexes[i] = storageT.firstEmptyTradeIndex(
                userAddress,
                i
            );
        }
    }

    /**
     * @notice Get order counts for a given user address
     * @param userAddress The address of the user
     * @return openLimitOrdersCounts An array of open limit orders counts
     * @dev This function is used to get all order counts for a given user address
     */
    function getOpenLimitOrdersCounts(
        address userAddress
    ) external view override returns (uint[] memory openLimitOrdersCounts) {
        uint256 pairCount = pairsStorage.pairsCount();

        openLimitOrdersCounts = new uint[](pairCount);

        for (uint256 i = 0; i < pairCount; i++) {
            openLimitOrdersCounts[i] = storageT.openLimitOrdersCount(
                userAddress,
                i
            );
        }
    }

    /**
     * @notice Get margins for all pairs
     * @return rolloverFeePerBlockP An array of rollover fee per block
     * @return rolloverFeePerBlockLong An array of rollover fee per block for long
     * @return rolloverFeePerBlockShort An array of rollover fee per block for short in 1e10 precision
     * @return openInterestUSDCLong The open interest for Long
     * @return openInterestUSDCShort The open interest for Short
     * @dev This function is used to get margins for all pairs
     */
    function getMargins()
        external
        view
        override
        returns (
            uint[] memory rolloverFeePerBlockP,
            uint[] memory rolloverFeePerBlockLong,
            uint[] memory rolloverFeePerBlockShort,
            uint[] memory openInterestUSDCLong,
            uint[] memory openInterestUSDCShort
        )
    {
        uint256 pairCount = pairsStorage.pairsCount();

        uint256 precision = 1e10;
        rolloverFeePerBlockP = new uint[](pairCount);
        rolloverFeePerBlockLong = new uint[](pairCount);
        rolloverFeePerBlockShort = new uint[](pairCount);
        openInterestUSDCLong = new uint[](pairCount);
        openInterestUSDCShort = new uint[](pairCount);

        for (uint256 i = 0; i < pairCount; i++) {
            (
                uint pairRolloverFeePerBlockP,
                uint pairRolloverFeePerBlockLong,
                uint pairRolloverFeePerBlockShort,
                uint pairOpenInterestUSDCLong,
                uint pairOpenInterestUSDCShort
            ) = _getMarginsForPair(i);

            rolloverFeePerBlockP[i] = pairRolloverFeePerBlockP;
            rolloverFeePerBlockLong[i] = pairRolloverFeePerBlockLong;
            rolloverFeePerBlockShort[i] = pairRolloverFeePerBlockShort;
            openInterestUSDCLong[i] = pairOpenInterestUSDCLong;
            openInterestUSDCShort[i] = pairOpenInterestUSDCShort;
        }
    }

    /**
     * @notice Get margins for a given pair index
     * @param pairIndex The Pair Index
     * @return rolloverFeePerBlockP The rollover fee per block for P
     * @return rolloverFeePerBlockLong The rollover fee per block for Long
     * @return rolloverFeePerBlockShort The rollover fee per block for Short
     * @return openInterestUSDCLong The open interest for Long
     * @return openInterestUSDCShort The open interest for Short
     * @dev This function is used to get the margins for a given pair index
     */
    function getMarginsForPair(
        uint256 pairIndex
    )
        external
        view
        override
        returns (
            uint rolloverFeePerBlockP,
            uint rolloverFeePerBlockLong,
            uint rolloverFeePerBlockShort,
            uint openInterestUSDCLong,
            uint openInterestUSDCShort
        )
    {
        (
            rolloverFeePerBlockP,
            rolloverFeePerBlockLong,
            rolloverFeePerBlockShort,
            openInterestUSDCLong,
            openInterestUSDCShort
        ) = _getMarginsForPair(pairIndex);
    }

    /**
     * @notice [INTERNAL] Gets the margins for a given pair index
     * @param pairIndex The Pair Index
     * @return rolloverFeePerBlockP The rollover fee per block for P
     * @return rolloverFeePerBlockLong The rollover fee per block for Long
     * @return rolloverFeePerBlockShort The rollover fee per block for Short
     * @return openInterestUSDCLong The open interest for Long
     * @return openInterestUSDCShort The open interest for Short
     * @dev This internal function is used to get the margins for a given pair index
     */
    function _getMarginsForPair(
        uint256 pairIndex
    )
        internal
        view
        returns (
            uint rolloverFeePerBlockP,
            uint rolloverFeePerBlockLong,
            uint rolloverFeePerBlockShort,
            uint openInterestUSDCLong,
            uint openInterestUSDCShort
        )
    {
        uint precision = 1e10;

        rolloverFeePerBlockP = pairInfos.getRolloverFeePerBlockP(pairIndex);
        openInterestUSDCLong = storageT.openInterestUSDC(pairIndex, 0);
        openInterestUSDCShort = storageT.openInterestUSDC(pairIndex, 1);

        uint blendedUtilizationRatio;
        uint skewRatio;
        // Try-catch block for pairInfos.getBlendedUtilizationRatio(i, openInterestUSDCLong, openInterestUSDCShort)
        try
            pairInfos.getBlendedUtilizationRatio(
                pairIndex,
                openInterestUSDCLong,
                openInterestUSDCShort
            )
        returns (uint ratio) {
            blendedUtilizationRatio = ratio;
        } catch {
            blendedUtilizationRatio = 0; // Handle the failure scenario
        }

        // Try-catch block for pairInfos.getBlendedSkew(i, true, openInterestUSDCLong, openInterestUSDCShort)
        try
            pairInfos.getBlendedSkew(
                pairIndex,
                true,
                openInterestUSDCLong,
                openInterestUSDCShort
            )
        returns (uint skew) {
            skewRatio = skew;
        } catch {
            skewRatio = 0; // Handle the failure scenario
        }

        uint longMultiplier = (precision *
            (blendedUtilizationRatio * skewRatio)) /
            (precision * 1e2 - blendedUtilizationRatio * skewRatio);

        rolloverFeePerBlockLong =
            (longMultiplier * precision * rolloverFeePerBlockP) /
            precision /
            precision;

        uint shortSkewRatio = pairInfos.getBlendedSkew(
            pairIndex,
            false,
            openInterestUSDCLong,
            openInterestUSDCShort
        );
        uint shortMultiplier = (precision *
            (blendedUtilizationRatio * shortSkewRatio)) /
            (precision * 1e2 - blendedUtilizationRatio * shortSkewRatio);

        rolloverFeePerBlockShort =
            (shortMultiplier * precision * rolloverFeePerBlockP) /
            precision /
            precision;
    }

    /**
    @notice Returns Pending Order Details for a trader
    @param _trader Trader Address
     */
    function getPendingOrder(
        address _trader
    )
        external
        view
        override
        returns (AggregatedPendingOrder[] memory pendingOrders)
    {
        uint[] memory pendingOrderIds = storageT.getPendingOrderIds(_trader);
        pendingOrders = new AggregatedPendingOrder[](pendingOrderIds.length);
        for (uint i; i < pendingOrderIds.length; i++) {
            pendingOrders[i].orderId = pendingOrderIds[i];
            pendingOrders[i].orderInfo = storageT.reqIDpendingMarketOrder(
                pendingOrderIds[i]
            );
        }
    }
}
