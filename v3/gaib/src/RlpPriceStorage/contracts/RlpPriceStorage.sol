// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {AccessControlDefaultAdminRules} from "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";
import {IRlpPriceStorage} from "./interfaces/IRlpPriceStorage.sol";

contract RlpPriceStorage is IRlpPriceStorage, AccessControlDefaultAdminRules {

    bytes32 public constant SERVICE_ROLE = keccak256("SERVICE_ROLE");

    mapping(bytes32 key => uint256 price) public prices;
    uint256 public lastPrice;

    constructor() AccessControlDefaultAdminRules(1 days, msg.sender) {}

    function setPrice(bytes32 _key, uint256 _price) external onlyRole(SERVICE_ROLE) {
        if (prices[_key] != 0) revert PriceAlreadySet(_key);

        prices[_key] = _price;
        lastPrice = _price;

        emit PriceSet(_key, _price);
    }

}
