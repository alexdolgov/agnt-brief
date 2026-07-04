// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import { OracleWrapper } from "../peripheral/OracleWrapper.sol";
import { GMI } from "../index/GMI.sol";
import { GmxStorage } from "./GmxStorage.sol";
import { PriceCast } from "./PriceCast.sol";
import { MarketUtils, DataStore, Market } from "@gmx/market/MarketUtils.sol";
import { TOKEN_WETH, TOKEN_USDC_NATIVE, GMX_V2_DATA_STORE } from "../constants.sol";

/// @title GMPricing
/// @author Umami Devs
library GMPricing {
    function getMarketPrice(address _oracle, address _gm, bool _useLlo)
        internal
        view
        returns (GmxStorage.MarketPrices memory)
    {
        uint256 ethPrice = getTokenPrice(_oracle, TOKEN_WETH, _useLlo);
        uint256 usdcPrice = OracleWrapper(_oracle).getChainlinkPrice(TOKEN_USDC_NATIVE);

        return getMarketPrice(_oracle, _gm, ethPrice, usdcPrice, _useLlo);
    }

    function getMarketPrice(address _oracle, address _gm, uint256 _ethPrice, uint256 _usdcPrice, bool _useLlo)
        internal
        view
        returns (GmxStorage.MarketPrices memory marketPrice)
    {
        address indexToken = MarketUtils.getEnabledMarket(DataStore(GMX_V2_DATA_STORE), _gm).indexToken;
        marketPrice.longTokenPrice = GmxStorage.Price({ min: _ethPrice, max: _ethPrice });
        marketPrice.shortTokenPrice = GmxStorage.Price({ min: _usdcPrice, max: _usdcPrice });
        uint256 indexTokenPrice = getTokenPrice(_oracle, indexToken, _useLlo);
        marketPrice.indexTokenPrice = GmxStorage.Price({ min: indexTokenPrice, max: indexTokenPrice });
    }

    function getTokenPrice(address _oracle, address _token, bool _withLlo) internal view returns (uint256) {
        return _withLlo
            ? OracleWrapper(_oracle).getLloPriceWithinL1Blocks(_token)
            : OracleWrapper(_oracle).getChainlinkPrice(_token);
    }
}

/// @title Pricing
/// @author Umami Devs
library Pricing {
    function getMarketPrices(address _oracle, GMI _gmi, bool _useLlo)
        internal
        view
        returns (GmxStorage.MarketPrices[] memory marketPrices)
    {
        uint256 indexSize = _gmi.INDEX_SIZE();
        marketPrices = new GmxStorage.MarketPrices[](indexSize);
        address[] memory marketTokens = _gmi.indexAssets();
        uint256 ethPrice = getTokenPrice(_oracle, TOKEN_WETH, _useLlo);
        uint256 usdcPrice = OracleWrapper(_oracle).getChainlinkPrice(TOKEN_USDC_NATIVE);
        for (uint256 i = 0; i < indexSize; i++) {
            marketPrices[i] = getMarketPrice(_oracle, marketTokens[i], ethPrice, usdcPrice, _useLlo);
        }
        return marketPrices;
    }

    function getIndexTvl(address _oracle, GMI _gmi) internal view returns (uint256) {
        return _gmi.tvl(getMarketPrices(_oracle, _gmi, true));
    }

    function getIndexTvlChainlink(address _oracle, GMI _gmi) internal view returns (uint256) {
        return _gmi.tvl(getMarketPrices(_oracle, _gmi, false));
    }

    function getIndexPps(address _oracle, GMI _gmi) internal view returns (uint256) {
        return _gmi.pps(getMarketPrices(_oracle, _gmi, true));
    }

    function getIndexPpsChainlink(address _oracle, GMI _gmi) internal view returns (uint256) {
        return _gmi.pps(getMarketPrices(_oracle, _gmi, false));
    }

    function getMarketPrice(address _oracle, address _gm, bool _useLlo)
        internal
        view
        returns (GmxStorage.MarketPrices memory)
    {
        return GMPricing.getMarketPrice(_oracle, _gm, _useLlo);
    }

    function getMarketPrice(address _oracle, address _gm, uint256 _ethPrice, uint256 _usdcPrice, bool _useLlo)
        internal
        view
        returns (GmxStorage.MarketPrices memory marketPrice)
    {
        return GMPricing.getMarketPrice(_oracle, _gm, _ethPrice, _usdcPrice, _useLlo);
    }

    function getTokenPrice(address _oracle, address _token, bool _withLlo) internal view returns (uint256) {
        return GMPricing.getTokenPrice(_oracle, _token, _withLlo);
    }
}
