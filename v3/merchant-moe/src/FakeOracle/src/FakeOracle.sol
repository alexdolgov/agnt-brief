/// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FakeOracle is Ownable {
    uint256 price;

    constructor(uint256 _price) {
        price = _price;
    }

    function latestRoundData()
        public
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        roundId = 1;
        answer = int256(price);
        startedAt = block.timestamp;
        updatedAt = block.timestamp;
    }

    function decimals() public view returns (uint8) {
        return 8;
    }

    function setPrice(uint256 _price) external onlyOwner {
        price = _price;
    }
}
