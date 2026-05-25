// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IDomfiPriceUpKeep } from "./IDomfiPriceUpKeep.sol";

interface IDomfiPriceRouter {
    error WrongParams();
    error WrongTimestamp();
    error WrongPublishId();
    error NotNativeFeed(uint16 pairIndex);
    error NotGov(address caller);
    error NotTradesUpKeepOrTrading(address caller);
    error NotTrading(address caller);

    event MaxTsValidityUpdated(uint32 newMaxTsValidity);
    event MaxPublishValidityUpdated(uint32 newMaxPublishValidity);

    function maxTsValidity() external returns (uint32);
    function maxPublishValidity() external returns (uint32);
    function getLatestPriceValidator(uint16 pairIndex) external view returns (uint256);

    // onlyTrading
    function getPrice(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType, uint256 validator)
        external
        returns (uint256);

    function getPriceLatest(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType)
        external
        returns (uint256);

    function storeOrder(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType, uint256 timestamp)
        external
        returns (uint256);

    function getPriceNoIncrementNoStore(uint16 pairIndex) external;

    // onlyGov
    function setMaxTsValidity(uint32 newMaxTsValidity) external;
    function setMaxPublishValidity(uint32 newMaxPublishValidity) external;
}
