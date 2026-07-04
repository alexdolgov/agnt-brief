// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

interface IArrakisV2Oracle {
    /// ERRORS ///

    /// @notice Error emitted when the ArrakisV2 address is zero.
    error AeraPeriphery__ArrakisV2IsZeroAddress();
    /// @notice Error emitted when the ArrakisV2Helper address is zero.
    error AeraPeriphery__ArrakisV2HelperIsZeroAddress();
    /// @notice Error emitted when both price feeds are zero address.
    error AeraPeriphery__BothPriceFeedsAreZeroAddress();
    /// @notice Error emitted when both price feeds have the same address.
    error AeraPeriphery__PriceFeedsAreSame();
    /// @notice Thrown when the price <= 0.
    error AeraPeriphery__InvalidPrice(address priceFeed, int256 price);
}
