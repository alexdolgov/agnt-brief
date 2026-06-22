// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {TradeType} from "../libs/Types.sol";
interface IPairInfos {
    function pairFeedId(uint _pairIndex) external view returns (bytes32);
    function withinMaxSpread(
        uint256 pairIndex,
        TradeType tradeType,
        uint256 limit,
        uint256 current,
        bool isLong
    ) external view returns (bool result);
    function isExceedGroupsCollateralLimit(uint256 pairIndex, uint256 position, bool long) external view returns (bool);
    function isInPairInterestLimit(uint pairIndex, uint256 position, bool isLong) external view returns (bool);
    function legalPositionSizeAndLeverage(
        uint256 pairIndex,
        uint256 margin,
        uint256 leverage
    ) external view returns (bool);
    function pairSpreadP(uint _pairIndex) external view returns (uint);
    function pairOpenFeeP(uint _pairIndex) external view returns (uint);
    function pairCloseFeeP(uint _pairIndex) external view returns (uint);
    function priceRollover(uint _pairIndex) external view returns (bool);
    function guaranteedSlAndTPEnable(uint _pairIndex) external view returns (bool);
    function occupiedCollateral() external view returns (uint256);
    function getTradePriceImpact(
        uint openPrice,
        uint pairIndex,
        bool long,
        uint tradeOpenInterest
    ) external view returns (uint priceAfterImpact);
    function updateGroupCollateral(uint _pairIndex, uint _amount, bool _long, bool _increase) external;
    function updateOpenInterest(uint _pairIndex, uint _amount, bool _long, bool _increase) external;
    function storeTradeInitialAccFees(uint256 orderId, uint256 pairIndex, bool long) external;
    function delTradeInitialAccFees(uint256 orderId) external;
    function getFundingAndRolloverFee(
        uint256 orderId,
        uint256 pairIndex,
        uint256 position,
        bool long
    ) external view returns (int256 fundingFee, uint256 rolloverFee);
    function getTradeLiquidationPrice(
        uint256 orderId,
        uint pairIndex,
        uint openPrice,
        uint collateral,
        uint leverage,
        bool long
    ) external view returns (uint);
}
