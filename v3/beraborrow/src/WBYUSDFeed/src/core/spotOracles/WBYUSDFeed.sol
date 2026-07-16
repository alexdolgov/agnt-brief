// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";

interface IWBYUSD is IERC4626 {
    function scaling() external view returns (uint256);
}

/**
 * @title WBYUSDFeed
 * @dev Contract for managing and providing WBY token price rates in USD 
 */
contract WBYUSDFeed is ISpotOracle {
    IWBYUSD private immutable vault;
    address private immutable asset;
    IPriceFeed private immutable priceFeed;

    constructor(address _vault, address _priceFeed) {
        vault = IWBYUSD(_vault);
        priceFeed = IPriceFeed(_priceFeed);
        asset = vault.asset();
    }

    function fetchPrice() external view returns (uint256) {
        uint256 totalSupply = vault.totalSupply();
        return totalSupply == 0 ? 0 : vault.totalAssets() * vault.scaling() * priceFeed.fetchPrice(asset) / totalSupply;
    }
}