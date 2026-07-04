// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";

/**
 * @title DolomiteERC4626Feed
 * @author Beraborrow Team
 * @notice Spot feed for Dolomite ERC4626 vaults (dTokens).
 */
contract DolomiteERC4626Feed is ISpotOracle {
    IERC4626 public immutable DOLOMITE_ERC4626;
    IPriceFeed public immutable PRICE_FEED;
    IAsset public immutable asset;

    error AddressZero();
    error NoFeed();

    constructor(address _dolomiteERC4626, address _priceFeed) {
        if (_dolomiteERC4626 == address(0)) revert AddressZero();

        DOLOMITE_ERC4626 = IERC4626(_dolomiteERC4626);
        PRICE_FEED = IPriceFeed(_priceFeed);
        asset = IAsset(DOLOMITE_ERC4626.asset());

        if (DOLOMITE_ERC4626.totalAssets() == 0 || PRICE_FEED.fetchPrice(address(asset)) == 0) revert NoFeed();
    }

    function fetchPrice() external view returns (uint256) {
        uint256 totalAssets = DOLOMITE_ERC4626.totalAssets();
        uint256 totalSupply = DOLOMITE_ERC4626.totalSupply();
        uint256 price = PRICE_FEED.fetchPrice(address(asset));

        return totalAssets * price / totalSupply;
    }
}