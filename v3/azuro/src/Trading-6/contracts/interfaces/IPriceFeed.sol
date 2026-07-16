// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.28;

interface IPriceFeed {
    struct PriceUpdate {
        uint256 indexId; // actually uint64
        uint256 price; // actually uint128
        uint256 updatedAt; // actually uint64
    }

    struct OraclePrice {
        uint128 value;
        uint128 updatedAt;
    }

    function updateOracle(address account, bool authorized) external;

    function updatePrices(IPriceFeed.PriceUpdate[] calldata updates) external;

    function getPrices(uint256[] calldata indexIds) external view returns (uint256[] memory prices);

    function getPrice(uint256 indexId) external view returns (uint256 price);

    event OracleStatusChanged(address indexed account, bool isAuthorized);
    event PricesUpdated(uint256[] data, uint256 length);

    error DataOverflow(uint256 indexId);
    error InvalidPrice(uint256 indexId);
    error NoChanges();
    error NoPriceAvailable(uint256 indexId);
    error OutdatedPrice(uint256 indexId);
    error UnauthorizedOracle(address account);
}
