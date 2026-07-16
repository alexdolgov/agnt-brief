// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract TokenConfigWrapper {
    enum BaseToken {
        ETH,
        USDC,
        MATIC
    }

    enum PriceSource {
        // price fixed to a number
        FIXED_USD,

        // price feetch from chainlink
        FIXED_CHAINLINK,

        // posted by a trusted reporter
        REPORTER
    }

    struct PriceRoute {
        bytes32 routeHash;
        address uniswapPair;
        BaseToken baseToken;
        bool isUniswapReversed;
    }

    struct TokenConfig {
        address rToken;
        bytes32 symbolHash;
        PriceSource priceSource;
        uint256 baseUnit; // unit scale by token decimals
    }

    mapping(bytes32 => TokenConfig) getTokenConfigBySymbolHash;

    mapping(address => TokenConfig) getTokenConfigByRToken;

    /// @dev route to fetch anchor price
    mapping(bytes32 => PriceRoute[]) getPriceRouteBySymbolHash;

    mapping(bytes32 => address) getChainlinkFeedBySymbolHash;

    function _setTokenConfig(
        address rToken,
        bytes32 symbolHash,
        uint256 decimal,
        PriceSource priceSource
    ) internal {
        require (getTokenConfigByRToken[rToken].symbolHash == 0, "tokenAlreadyConfigured");
        require(decimal > 0, "zeroDecimal");

        TokenConfig memory config = TokenConfig({
            symbolHash: symbolHash,
            rToken: rToken,
            priceSource: priceSource,
            baseUnit: 10**decimal
        });

        getTokenConfigBySymbolHash[symbolHash] = config;
        getTokenConfigByRToken[rToken] = config;
    }

    function _setAnchorPriceRoute(
        bytes32 symbolHash,
        bytes32 routeHash,
        BaseToken baseToken,
        address uniswapPair,
        bool isUniswapReversed
    ) internal {
        require(uniswapPair != address(0), "zeroUniswapPair");

        getPriceRouteBySymbolHash[symbolHash].push(
            PriceRoute({
                routeHash: routeHash,
                uniswapPair: uniswapPair,
                baseToken: baseToken,
                isUniswapReversed: isUniswapReversed
            })
        );
    }

    function getTokenConfigBySymbol(string memory symbol) public view returns (TokenConfig memory) {
        return getTokenConfigBySymbolHash[keccak256(abi.encodePacked(symbol))];
    }
}
