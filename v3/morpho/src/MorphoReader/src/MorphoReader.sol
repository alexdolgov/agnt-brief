// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Id, IMorpho, MarketParams, Market, Position} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {IIrm} from "../lib/morpho-blue/src/interfaces/IIrm.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";
import {MorphoStorageLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoStorageLib.sol";
import {MorphoLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoLib.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import "../lib/morpho-blue/src/libraries/ConstantsLib.sol";

import "../lib/forge-std/src/console.sol";

import {IMorphoReader, MarketDataExt, PositionExt} from "./interfaces/IMorphoReader.sol";

/// @title Morpho Steakhouse Reader
/// @notice Why wasn't it alraedy in Morpho???
contract MorphoReader is IMorphoReader {
    using MathLib for uint256;
    using MorphoBalancesLib for IMorpho;
    using MorphoStorageLib for IMorpho;
    using MorphoLib for IMorpho;

    IMorpho public immutable morpho;

    constructor(IMorpho morphoAddress) {
        morpho = morphoAddress;
    }

    function getMarketData(
        Id id
    ) public view returns (MarketDataExt memory marketData) {
        Market memory market = morpho.market(id);
        MarketParams memory marketParams = morpho.idToMarketParams(id);

        (
            marketData.totalSupplyAssets,
            marketData.totalSupplyShares,
            marketData.totalBorrowAssets,
            marketData.totalBorrowShares
        ) = morpho.expectedMarketBalances(marketParams);

        marketData.fee = morpho.fee(id);

        // Get the borrow rate
        marketData.borrowRate = 0;
        if (marketParams.irm != address(0)) {
            marketData.borrowRate = IIrm(marketParams.irm)
                .borrowRateView(marketParams, market)
                .wTaylorCompounded(365 days);
        }

        // Get the supply rate
        marketData.utilization = marketData.totalSupplyAssets == 0
            ? 0
            : marketData.totalBorrowAssets.wDivUp(marketData.totalSupplyAssets);

        marketData.supplyRate = marketData
            .borrowRate
            .wMulDown(1 ether - market.fee)
            .wMulDown(marketData.utilization);
    }

    function getPosition(
        Id id,
        address user
    ) public view returns (PositionExt memory position) {
        MarketParams memory marketParams = morpho.idToMarketParams(id);

        Position memory p = morpho.position(id, user);

        uint256 collateralPrice = (marketParams.oracle == address(0))
            ? 0
            : IOracle(marketParams.oracle).price();
        position.collateral = p.collateral;
        position.collateralValue = position.collateral.mulDivDown(
            collateralPrice,
            ORACLE_PRICE_SCALE
        );
        position.borrowedAssets = morpho.expectedBorrowAssets(
            marketParams,
            user
        );
        position.borrowedShares = p.borrowShares;
        position.suppliedAssets = morpho.expectedSupplyAssets(
            marketParams,
            user
        );
        position.suppliedShares = p.supplyShares;
        position.ltv = (position.collateralValue == 0)
            ? 0
            : position.borrowedAssets.wDivUp(position.collateralValue);

        uint256 maxBorrow = position
            .collateral
            .mulDivDown(collateralPrice, ORACLE_PRICE_SCALE)
            .wMulDown(marketParams.lltv);

        position.healthFactor = (position.borrowedAssets == 0)
            ? type(uint256).max
            : maxBorrow.wDivDown(position.borrowedAssets);
    }
}
