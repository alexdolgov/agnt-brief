// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IAggregatorV2V3} from "../interfaces/IAggregatorV2V3.sol";
import {IOracleRouter} from "../interfaces/IOracleRouter.sol";
import {Ownable} from "../../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {Errors} from "../errors.sol";

contract OracleRouter is Ownable, IOracleRouter {
    // Mapping of asset address to its price feed address
    mapping(address => IAggregatorV2V3) private assetToFeed;

    event FeedUpdated(address indexed asset, address indexed feedAddress);

    /* ───────── Constructor ───────── */
    constructor(address _owner) Ownable(_owner) {}

    /* ───────── Views ───────── */

    /// @notice Gets the address of the source for an asset address
    /// @param asset The address of the asset
    /// @return address The address of the source (will be our managed custom oracles)
    function getSourceOfAsset(address asset) external view override returns (address) {
        return address(assetToFeed[asset]);
    }

    /// @notice Get the price of an asset
    /// @param asset The address of the asset
    /// @return price The price of the asset in ETH, scaled to 18 decimals
    /// @return decimals The number of decimals the price is scaled to
    function getAssetPrice(address asset) external view override returns (uint256, uint8) {
        IAggregatorV2V3 feed = assetToFeed[asset];
        // If feed is not set, return 0 price
        if (address(feed) == address(0)) revert Errors.FeedNotSet();

        int256 price = feed.latestAnswer();
        if (price <= 0) revert Errors.InvalidPrice();
        return (uint256(price), feed.decimals());
    }

    /* ───────── Admin Functions ───────── */
    /// @notice Set the source of an asset
    /// @param asset The address of the asset
    /// @param feedAddress The address of the feed. Only used for chainlink oracles
    function setAssetSource(address asset, address feedAddress) external override onlyOwner {
        if (feedAddress == address(0)) {
            revert Errors.NullAddress();
        }
        // Make sure feed address is a contract:
        if (feedAddress.code.length == 0) {
            revert Errors.NotAContract();
        }
        assetToFeed[asset] = IAggregatorV2V3(feedAddress);
        emit FeedUpdated(asset, feedAddress);
    }
}
