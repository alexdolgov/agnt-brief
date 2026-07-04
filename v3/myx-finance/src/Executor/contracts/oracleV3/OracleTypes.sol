// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library OracleTypes {
    enum OracleType {
        PYTH,
        CHAINLINK
    }

    struct OracleFeedParamsV2 {
        OracleType oracleType;
        bytes updateData;
        uint64 publishTime;
    }

    struct OracleFeedParams {
        OracleType oracleType;
        address[] tokens;
        bytes[] updateData;
        uint64[] publishTimes;
    }

    struct PriceFeedParams {
        OracleType oracleType;
        address[] tokens;
        uint256[] prices;
        bytes[] updateData;
        uint64[] publishTimes;
    }
}
