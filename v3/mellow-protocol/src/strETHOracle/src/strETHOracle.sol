// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

interface IOracle {
    struct DetailedReport {
        uint224 priceD18;
        uint32 timestamp;
        bool isSuspicious;
    }

    function getReport(address asset) external view returns (DetailedReport memory);
}

interface IAggregatorV3 {
    function latestAnswer() external view returns (int256);
}

contract strETHOracle is IAggregatorV3 {
    function latestAnswer() public view returns (int256) {
        IOracle oracle = IOracle(0x8a78e6b7E15C4Ae3aeAeE3bf0DE4F2de4078c1cD);
        address eth = address(type(uint160).max / 0xf * 0xe);
        IOracle.DetailedReport memory report = oracle.getReport(eth);
        if (report.isSuspicious || report.priceD18 == 0 || report.timestamp + 48 hours < block.timestamp) {
            revert("Invalid report");
        }

        int256 price = IAggregatorV3(0x5424384B256154046E9667dDFaaa5e550145215e).latestAnswer();
        uint256 value = Math.mulDiv(uint256(price), 1e18, report.priceD18);
        return int256(value);
    }
}
