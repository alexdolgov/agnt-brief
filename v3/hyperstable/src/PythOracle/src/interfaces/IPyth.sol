// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IPyth {
    struct Price {
        // Price
        int64 price;
        // Confidence interval around the price
        uint64 conf;
        // Price exponent
        int32 expo;
        // Unix timestamp describing when the price was published
        uint256 publishTime;
    }

    struct PriceFeed {
        // The price ID.
        bytes32 id;
        // Latest available price
        Price price;
        // Latest available exponentially-weighted moving average price
        Price emaPrice;
    }

    function getPrice(bytes32 id) external view returns (Price memory);
    function getPriceNoOlderThan(bytes32 id, uint256 timeFrame) external view returns (Price memory);
    function getPriceUnsafe(bytes32 id) external view returns (Price memory);
    function getUpdateFee(bytes[] calldata id) external view returns (uint256[] calldata);
}
