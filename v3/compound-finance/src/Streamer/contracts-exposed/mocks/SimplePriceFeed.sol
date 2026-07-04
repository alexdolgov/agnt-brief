// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/mocks/SimplePriceFeed.sol";
import "../../contracts/interfaces/AggregatorV3Interface.sol";

contract $SimplePriceFeed is SimplePriceFeed {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(int256 answer_, uint8 decimals_) SimplePriceFeed(answer_, decimals_) payable {
    }

    function $roundId() external view returns (uint80) {
        return roundId;
    }

    function $answer() external view returns (int256) {
        return answer;
    }

    function $startedAt() external view returns (uint256) {
        return startedAt;
    }

    function $updatedAt() external view returns (uint256) {
        return updatedAt;
    }

    function $answeredInRound() external view returns (uint80) {
        return answeredInRound;
    }

    receive() external payable {}
}
