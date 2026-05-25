// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./abstract/AuthModifiers.sol";
import "./interfaces/IPriceOracle.sol";

contract PriceOracle is IPriceOracle, Ownable, AuthModifiers {
    uint256 public price;
    uint32 public lastUpdateTimestamp;

    constructor(address _registry, uint256 _price) {
        __AuthModifiers_init(_registry);
        price = _price;
        lastUpdateTimestamp = uint32(block.timestamp);
    }

    function setPrice(uint256 _price) external onlyPriceOracle {
        emit UpdatePrice(price, _price);
        price = _price;
        lastUpdateTimestamp = uint32(block.timestamp);
    }
}
