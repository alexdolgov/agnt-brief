// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title IOracleFeed
/// @author luoyhang003
/// @notice Standardized interface for oracle price feeds.
/// @dev Provides a unified method for fetching the latest asset price.
///      Implementations may differ (e.g., Chainlink, Redstone, custom oracles),
///      but must conform to this interface.
interface IOracleFeed {
    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the latest price from the oracle.
    /// @dev The return value should be normalized to 18 decimals whenever possible
    ///      to maintain consistency across different oracle implementations.
    /// @return price_ The most recent valid price.
    function peek() external view returns (uint256 price_);
}
