// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";

/**
 * @title VaultFeed
 * @dev Contract for managing and providing vault token price rates in USD 
 */
contract VaultFeed is ISpotOracle {
    IERC4626 private immutable vault;
    address private immutable asset;
    IPriceFeed private immutable priceFeed;
    
    constructor(address _vault, address _priceFeed) {
        vault = IERC4626(_vault);
        priceFeed = IPriceFeed(_priceFeed);
        asset = vault.asset();
    }

    function fetchPrice() external view returns (uint256) {
        uint256 totalSupply = vault.totalSupply();
        return totalSupply == 0 ? 0 : vault.totalAssets() * priceFeed.fetchPrice(asset) / totalSupply;
    }
}
