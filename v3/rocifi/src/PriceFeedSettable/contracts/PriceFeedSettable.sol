// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {PriceFeed} from "./PriceFeed.sol";
import {Roles} from "./lib/Roles.sol";

contract PriceFeedSettable is PriceFeed {
    mapping(address => uint256) public latestAnswer;

    function init(address _owner) public initializer {
        PriceFeed.initialize(_owner);
    }

    function setLatestAnswer(address feed, uint256 amount) external onlyRole(Roles.ADMIN) {
        latestAnswer[feed] = amount;
    }

    function queryFeed(address feedAddress) internal view override returns (uint256) {
        uint256 price = latestAnswer[feedAddress];
        if (price == 0) {
            return super.queryFeed(feedAddress);
        }
        return price;
    }
}
