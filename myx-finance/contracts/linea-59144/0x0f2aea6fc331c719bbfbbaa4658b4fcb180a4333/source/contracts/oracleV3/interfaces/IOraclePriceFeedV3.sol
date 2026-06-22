// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../OracleTypes.sol";

interface IOraclePriceFeedV3 {

    function updatePrice(
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable;

    function updateHistoricalPrice(
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64 publishTime
    ) external payable;

    function removeHistoricalPrice(
        OracleTypes.OracleType oracleType,
        uint64 _backtrackRound,
        address[] calldata tokens
    ) external;
}
