// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import "../pricing/IPriceOracle.sol";

/**
 * @title PriceRouter
 * @notice Registry from token → {IPriceOracle}. Used across deposit/redemption/reserve contexts.
 * @dev Returns prices in WAD (1e18). Only VALID or CAPPED statuses are accepted; STALE reverts.
 *
 * **Security**
 * - Oracle assignment is gated by {AccessManaged}. Misconfiguration will cause hard reverts,
 *   which is preferable to using unsafe prices.
 */
contract PriceRouter is AccessManaged {
    // ============ Constants ============
    // Role identifier for backward compatibility (informational only)
    bytes32 public constant CONFIG_ROLE = keccak256("CONFIG_ROLE");

    // ============ State ============
    mapping(address => IPriceOracle) public priceFeeds;
    string public description;

    // ============ Events ============
    event PriceFeedSet(address indexed token, address indexed feed);
    event PriceFeedRemoved(address indexed token);

    // ============ Errors ============
    error TokenNotConfigured();
    error InvalidPriceFeed();
    error StalePrice();
    error InvalidPrice();

    // ============ Constructor ============

    /**
     * @notice Initialize the price router
     * @param _accessManager Address of the AccessManager contract
     * @param _description Human-readable description of this router instance
     */
    constructor(address _accessManager, string memory _description) AccessManaged(_accessManager) {
        description = _description;
    }

    // ============ Configuration Functions ============

    /**
     * @notice Set the price feed for a token
     * @param token Token address
     * @param feed Price oracle address
     */
    function setPriceFeed(address token, address feed) external restricted {
        if (feed == address(0)) revert InvalidPriceFeed();
        priceFeeds[token] = IPriceOracle(feed);
        emit PriceFeedSet(token, feed);
    }

    /**
     * @notice Remove the price feed for a token
     * @param token Token address
     */
    function removePriceFeed(address token) external restricted {
        delete priceFeeds[token];
        emit PriceFeedRemoved(token);
    }

    // ============ View Functions ============

    /**
     * @notice Get the current price of a token
     * @param token Token address
     * @return Price in WAD format (18 decimals)
     */
    function getPrice(address token) external view returns (uint256) {
        IPriceOracle feed = priceFeeds[token];
        if (address(feed) == address(0)) revert TokenNotConfigured();

        IPriceOracle.PriceInfo memory info = feed.latestPriceInfo();

        // Check for stale price first
        if (info.status == IPriceOracle.PriceStatus.STALE) {
            revert StalePrice();
        }

        // Accept VALID and CAPPED prices
        if (
            info.status != IPriceOracle.PriceStatus.VALID
                && info.status != IPriceOracle.PriceStatus.CAPPED
        ) {
            revert InvalidPrice();
        }

        return info.price;
    }

    /**
     * @notice Check if a price feed is configured for a token
     * @param token Token address
     * @return True if a price feed is configured
     */
    function hasPrice(address token) external view returns (bool) {
        return address(priceFeeds[token]) != address(0);
    }
}
