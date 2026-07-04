// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

interface IGuardedPriceOracle {
    /// @notice The event emitted when new prices are posted but the stored price is not updated due to the anchor
    event PriceGuarded(string symbol, uint256 reporter, uint256 anchor);

    /// @notice The event emitted when the stored price is updated
    event PriceUpdated(string symbol, uint256 price);

    /// @notice The event emitted when anchor price is updated
    event AnchorPriceUpdated(
        string symbol,
        address uniswapMarket,
        uint256 anchorPrice,
        uint256 oldTimestamp,
        uint256 newTimestamp
    );

    /// @notice The event emitted when the uniswap window changes
    event UniswapWindowUpdated(
        bytes32 indexed symbolHash,
        uint256 oldTimestamp,
        uint256 newTimestamp,
        uint256 oldPrice,
        uint256 newPrice
    );

    /// @notice The event emitted when reporter invalidates itself
    event ReporterInvalidated(address reporter);

    /**
     * @notice Post open oracle reporter prices, and recalculate stored price by comparing to anchor
     * @dev only prices from configured reporter will be stored in the view.
     * @param messages The messages to post to the oracle
     * @param symbols The symbols to compare to anchor for authoritative reading
     */
    function postPrices(
        bytes[] calldata messages,
        string[] calldata symbols
    ) external;


    /**
      * @notice Get the underlying price of a rToken asset
      * @param rToken The rToken to get the underlying price of
      * @return The underlying asset price mantissa (scaled by 36 - underlying decimals).
      *  Zero means the price is unavailable.
      */
    function getUnderlyingPrice(address rToken) external view returns (uint);
}
