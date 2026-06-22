// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./IOraclePriceFeedV3.sol";
import "./IOraclePriceGetV3.sol";

interface IOracleManager is IOraclePriceFeedV3, IOraclePriceGetV3 {

    event UpdateOracleAddress(OracleTypes.OracleType oracleType, address newAddress);

    event UpdatedExecutorAddress(address sender, address oldAddress, address newAddress);

}
