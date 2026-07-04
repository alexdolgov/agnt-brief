// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@overnight-contracts/connectors/contracts/stuff/Chainlink.sol";

library LibCoreStorage {

    bytes32 constant CORE_STORAGE_POSITION = keccak256("core.storage");

    struct CoreStorage {
        address exchanger;
        address roleManager;
        address diamond;
        bool exit;
        address inchRouter;

        address baseToken;
        address sideToken;
        uint256 baseDecimals;
        uint256 sideDecimals;
        address baseOracle;
        address sideOracle;

        uint256 balanceSlippageBp;
        uint256 stakeSlippageBp;
        uint256 swapSlippageBp;
        uint256 priceSlippageBp;
    }

    function coreStorage() internal pure returns (CoreStorage storage ds) {
        bytes32 position = CORE_STORAGE_POSITION;
        assembly {
            ds.slot := position
        }
    }

    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }

    function toInt256(uint256 value) internal pure returns (int256) {
        require(value <= uint256(type(int256).max), "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }

    function baseToUsd(uint256 amount) internal view returns (uint256) {
        IPriceFeed baseOracle = IPriceFeed(coreStorage().baseOracle);
        uint256 baseDecimals = coreStorage().baseDecimals;
        (uint80 roundID, int256 price, , uint256 timeStamp, uint80 answeredInRound) = baseOracle.latestRoundData();
        require(answeredInRound >= roundID, "Old data");
        require(timeStamp > 0, "Round not complete");
        return amount * uint256(price) / baseDecimals / 100;
    }

    function usdToBase(uint256 amount) internal view returns (uint256) {
        IPriceFeed baseOracle = IPriceFeed(coreStorage().baseOracle);
        uint256 baseDecimals = coreStorage().baseDecimals;
        (uint80 roundID, int256 price, , uint256 timeStamp, uint80 answeredInRound) = baseOracle.latestRoundData();
        require(answeredInRound >= roundID, "Old data");
        require(timeStamp > 0, "Round not complete");
        return amount * 100 * baseDecimals / uint256(price);
    }

    function sideToUsd(uint256 amount) internal view returns (uint256) {
        IPriceFeed sideOracle = IPriceFeed(coreStorage().sideOracle);
        uint256 sideDecimals = coreStorage().sideDecimals;
        (uint80 roundID, int256 price, , uint256 timeStamp, uint80 answeredInRound) = sideOracle.latestRoundData();
        require(answeredInRound >= roundID, "Old data");
        require(timeStamp > 0, "Round not complete");
        return amount * uint256(price) / sideDecimals / 100;
    }

    function usdToSide(uint256 amount) internal view returns (uint256) {
        IPriceFeed sideOracle = IPriceFeed(coreStorage().sideOracle);
        uint256 sideDecimals = coreStorage().sideDecimals;
        (uint80 roundID, int256 price, , uint256 timeStamp, uint80 answeredInRound) = sideOracle.latestRoundData();
        require(answeredInRound >= roundID, "Old data");
        require(timeStamp > 0, "Round not complete");
        return amount * 100 * sideDecimals / uint256(price);
    }

}
