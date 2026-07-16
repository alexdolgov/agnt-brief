// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { IAssetPriceOracle } from "./IAssetPriceOracle.sol";

/**
 * @title IAssetPriceProvider interface
 * @notice Interface for the collateral price provider.
 *
 */
interface IAssetPriceProvider {
    /**
     * @dev returns the asset price
     * @param asset the address of the asset
     * @return price of the asset
     *
     */
    function getAssetPrice(address asset) external view returns (uint256);
}
