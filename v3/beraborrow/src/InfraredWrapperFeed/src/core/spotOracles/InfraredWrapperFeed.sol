// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";

interface IInfraredWrapper {
    function totalAssets() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function scaling() external view returns (uint256);
    function asset() external view returns (address);
}

/**
 * @title WBYUSDFeed
 * @dev Contract for managing and providing WBY token price rates in USD 
 */
contract InfraredWrapperFeed is ISpotOracle {
    IInfraredWrapper private immutable vault;
    address private immutable asset;
    IPriceFeed private immutable priceFeed;

    constructor(address _vault, address _priceFeed) {
        vault = IInfraredWrapper(_vault);
        priceFeed = IPriceFeed(_priceFeed);
        asset = vault.asset();
    }

    function fetchPrice() external view returns (uint256) {
        uint256 totalSupply = vault.totalSupply();
        return totalSupply == 0 ? 0 : vault.totalAssets() * vault.scaling() * priceFeed.fetchPrice(asset) / totalSupply;
    }
}