//SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.27;

import { IBundleStorage } from "./IBundleStorage.sol";

/**
 * @title IxGoldBundleStorage
 * @notice This contract manages the storage and management of xGold assets and their associated fees.
 * @dev Handles the addition, removal, and retrieval of xGold assets, as well as fee management.
 * @author Swarm
 */
interface IxGoldBundleStorage is IBundleStorage {
    /**
     * @notice Retrieves the price of gold based on the provided asset address.
     * @param asset The address of the gold asset.
     * @return The price of the gold asset.
     */
    function getGoldPrice(address asset) external view returns (uint256);
}
