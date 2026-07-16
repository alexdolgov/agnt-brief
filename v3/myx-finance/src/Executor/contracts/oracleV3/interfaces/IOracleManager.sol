// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./IOraclePriceFeedV3.sol";
import "./IOraclePriceGetV3.sol";

interface IOracleManager is IOraclePriceFeedV3, IOraclePriceGetV3 {

    event UpdateOracleAddress(OracleTypes.OracleType oracleType, address newAddress);

    event UpdatedExecutorAddress(address sender, address oldAddress, address newAddress);

    function getTokenPriceIds(OracleTypes.OracleType oracleType, address token) external view returns(bytes32);

    function setTokenPriceIds(
        OracleTypes.OracleType oracleType,
        address[] memory tokens,
        bytes32[] memory priceIds
    ) external;
}
