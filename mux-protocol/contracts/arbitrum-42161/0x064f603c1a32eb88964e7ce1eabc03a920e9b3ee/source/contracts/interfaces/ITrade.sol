// SPDX-License-Identifier: GPL-2.0-or-later

/**
 * @title ITrade
 * @dev Interface for the Trade contract, which handles opening, closing, and liquidating positions, as well as withdrawing profits.
 */
pragma solidity 0.8.19;

interface ITrade {
    struct OpenPositionArgs {
        bytes32 subAccountId;
        uint8 collateralId;
        bool isLong;
        uint96 amount;
        uint96 tradingPrice;
        uint96 assetPrice;
        uint96 collateralPrice;
        uint96 newEntryPrice;
        uint96 feeUsd;
        uint96 remainPosition;
        uint96 remainCollateral;
    }
    struct ClosePositionArgs {
        bytes32 subAccountId;
        uint8 collateralId;
        uint8 profitAssetId;
        bool isLong;
        uint96 amount;
        uint96 tradingPrice;
        uint96 assetPrice;
        uint96 collateralPrice;
        uint96 profitAssetPrice;
        uint96 feeUsd;
        bool hasProfit;
        uint96 pnlUsd;
        uint96 remainPosition;
        uint96 remainCollateral;
    }
    struct LiquidateArgs {
        bytes32 subAccountId;
        uint8 collateralId;
        uint8 profitAssetId;
        bool isLong;
        uint96 amount;
        uint96 tradingPrice;
        uint96 assetPrice;
        uint96 collateralPrice;
        uint96 profitAssetPrice;
        uint96 feeUsd;
        bool hasProfit;
        uint96 pnlUsd;
        uint96 remainCollateral;
    }

    /**
     * @dev Emitted when a position is opened.
     * @param trader The address of the trader who opened the position.
     * @param assetId The ID of the asset being traded.
     * @param args The arguments of the open position.
     */
    event OpenPosition(address indexed trader, uint8 indexed assetId, OpenPositionArgs args);

    /**
     * @dev Emitted when a position is closed.
     * @param trader The address of the trader who closed the position.
     * @param assetId The ID of the asset being traded.
     * @param args The arguments of the close position.
     */
    event ClosePosition(address indexed trader, uint8 indexed assetId, ClosePositionArgs args);

    /**
     * @dev Emitted when a position is liquidated.
     * @param trader The address of the trader whose position was liquidated.
     * @param assetId The ID of the asset being traded.
     * @param args The arguments of the liquidation.
     */
    event Liquidate(address indexed trader, uint8 indexed assetId, LiquidateArgs args);

    /**
     * @dev Opens a new position.
     * @param subAccountId The ID of the sub-account.
     * @param amount The amount of the asset being traded.
     * @param tradingPrice The price at which the asset is being traded.
     * @param markPrices The mark prices of the assets being traded.
     * @return The new entry price.
     */
    function openPosition(
        bytes32 subAccountId,
        uint96 amount,
        uint96 tradingPrice,
        uint96[] memory markPrices
    ) external returns (uint96);

    /**
     * @dev Closes an existing position.
     * @param subAccountId The ID of the sub-account.
     * @param amount The amount of the asset being traded.
     * @param tradingPrice The price at which the asset is being traded.
     * @param profitAssetId The ID of the asset used to calculate profit.
     * @param markPrices The prices of the assets being traded.
     * @return The profit or loss in USD.
     */
    function closePosition(
        bytes32 subAccountId,
        uint96 amount,
        uint96 tradingPrice,
        uint8 profitAssetId,
        uint96[] memory markPrices
    ) external returns (uint96);

    /**
     * @dev Liquidates a position.
     * @param subAccountId The ID of the sub-account.
     * @param profitAssetId The ID of the asset used to calculate profit.
     * @param tradingPrice The price at which the asset is being traded.
     * @param markPrices The prices of the assets being traded.
     * @return The profit or loss in USD.
     */
    function liquidate(
        bytes32 subAccountId,
        uint8 profitAssetId,
        uint96 tradingPrice,
        uint96[] memory markPrices
    ) external returns (uint96);
}
