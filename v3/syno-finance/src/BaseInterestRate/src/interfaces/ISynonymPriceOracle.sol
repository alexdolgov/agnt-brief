// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {ISynonymPriceSource} from "./ISynonymPriceSource.sol";

interface ISynonymPriceOracle is ISynonymPriceSource {
    struct PriceSource {
        ISynonymPriceSource priceSource;
        uint256 maxPriceAge;
    }

    function getPrice(address _asset) external view returns (Price memory price);
    function setPriceSource(address _asset, PriceSource memory _priceSource) external;
    function removePriceSource(address _asset) external;
    function getPriceSource(address _asset) external view returns (PriceSource memory);
}
