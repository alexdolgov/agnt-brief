// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../OracleTypes.sol";

interface IOraclePriceGetV3 {

    function getHistoricalPrice(
        OracleTypes.OracleType oracleType,
        uint64 publishTime,
        address token
    ) external view returns (uint256);

    function getPrice(OracleTypes.OracleType oracleType, address token) external view returns (uint256);

    function getPriceSafely(OracleTypes.OracleType oracleType, address token) external view returns (uint256);

    function getLastUsedOracle(address token) external view returns (OracleTypes.OracleType);
}
