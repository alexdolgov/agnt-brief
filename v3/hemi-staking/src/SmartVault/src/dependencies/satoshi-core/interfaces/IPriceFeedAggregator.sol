// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IPriceFeedAggregator {
    function fetchPrice(IERC20 _token) external returns (uint256);

    function fetchPriceUnsafe(IERC20 _token) external returns (uint256, uint256);

    // function setPriceFeed(IERC20 _token, IPriceFeed _priceFeed) external;

    // function oracleRecords(IERC20) external view returns (IPriceFeed priceFeed, uint8 decimals);
}
