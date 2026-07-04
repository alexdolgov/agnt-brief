// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/**
 * @title IPythOracle
 * @notice Minimal Pyth Network interface for PriceFeedV2 integration
 * @dev Based on @pythnetwork/pyth-sdk-solidity IPyth interface
 *      We use a minimal interface to reduce external dependencies.
 *      Full SDK: https://github.com/pyth-network/pyth-sdk-solidity
 */
interface IPythOracle {
    /**
     * @notice Price data structure returned by Pyth
     * @param price The price value (scaled by 10^expo)
     * @param conf The confidence interval around the price
     * @param expo The exponent (e.g., -8 means price is scaled by 10^8)
     * @param publishTime Unix timestamp when this price was published
     */
    struct Price {
        int64 price;
        uint64 conf;
        int32 expo;
        uint256 publishTime;
    }

    /**
     * @notice Get price no older than maxAge seconds
     * @dev Reverts if the price is older than maxAge
     * @param id The price feed ID (bytes32)
     * @param maxAge Maximum acceptable age in seconds
     * @return price The price data
     */
    function getPriceNoOlderThan(bytes32 id, uint256 maxAge) external view returns (Price memory price);

    /**
     * @notice Get the latest price without age validation
     * @dev Use with caution - price may be stale
     * @param id The price feed ID (bytes32)
     * @return price The price data
     */
    function getPriceUnsafe(bytes32 id) external view returns (Price memory price);
}
