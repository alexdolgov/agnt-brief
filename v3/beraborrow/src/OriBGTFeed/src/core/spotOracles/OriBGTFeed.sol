// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";

/**
 * @title OriBGTFeed
 * @dev Contract for managing and providing OriBGT token price rates in USD 
 */
contract OriBGTFeed is ISpotOracle {
    IERC4626 private immutable oriBGT;
    address private immutable asset;
    IPriceFeed private immutable priceFeed;
    
    constructor(address _oriBgt, address _priceFeed) {
        oriBGT = IERC4626(_oriBgt);
        priceFeed = IPriceFeed(_priceFeed);
        asset = oriBGT.asset();
    }

    function fetchPrice() external view returns (uint256) {
        uint256 totalSupply = oriBGT.totalSupply();
        return totalSupply == 0 ? 0 : oriBGT.totalAssets() * priceFeed.fetchPrice(asset) / totalSupply;
    }
}
