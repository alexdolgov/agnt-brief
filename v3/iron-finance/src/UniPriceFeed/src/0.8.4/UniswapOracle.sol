// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./libs/UniswapLib.sol";
import "./ChainlinkLib.sol";

contract UniswapOracle {
    using FixedPoint for FixedPoint.uq144x112;
    using FixedPoint for FixedPoint.uq112x112;

    enum BaseToken {MATIC, ETH, USDC}

    struct PriceRoute {
        bytes32 id;
        BaseToken base;
        address uniswapPair;
    }

    uint256 public constant PRECISION = 1e18;
    uint256 public PERIOD = 600; // 10 minutes
    uint256 public blockTimestampLast;

    address[] public whitelistedTokens;

    /// @dev official TWAP usd per token price
    mapping(address => uint256) public prices;

    /// @dev price of token used as base. Get from chainlink. MUST be update before all update to price
    mapping(BaseToken => uint256) public basePrice;

    mapping(BaseToken => address) public getBaseTokenChainlinkFeed;

    /// @dev array of available route
    mapping(address => PriceRoute[]) public getPriceRoute;

    /// @dev last cumulative price for a route
    mapping(bytes32 => uint256) public lastCumulativePrice;

    constructor() {
        getBaseTokenChainlinkFeed[BaseToken.ETH] = 0xF9680D99D6C9589e2a93a78A04A279e509205945;
        getBaseTokenChainlinkFeed[BaseToken.MATIC] = 0xAB594600376Ec9fD91F8e885dADF0CE036862dE0;
        getBaseTokenChainlinkFeed[BaseToken.USDC] = 0xfE4A8cc5b5B2366C1B58Bea3858e81843581b2F7;
    }

    function getTwapPrice(address _token, uint256 _amountIn) internal view returns (uint256) {
        return (_amountIn * prices[_token]) / PRECISION;
    }

    function update() external {
        uint256 timeElapsed = block.timestamp - blockTimestampLast;
        require(timeElapsed >= PERIOD, "!period");
        fetchBasePrice();
        for (uint256 i = 0; i < whitelistedTokens.length; i++) {
            updateOne(whitelistedTokens[i], timeElapsed);
        }

        blockTimestampLast = block.timestamp;
    }

    function fetchBasePrice() internal {
        basePrice[BaseToken.ETH] = ChainlinkLib.consult(getBaseTokenChainlinkFeed[BaseToken.ETH], PRECISION);
        basePrice[BaseToken.MATIC] = ChainlinkLib.consult(getBaseTokenChainlinkFeed[BaseToken.MATIC], PRECISION);
        basePrice[BaseToken.USDC] = ChainlinkLib.consult(getBaseTokenChainlinkFeed[BaseToken.USDC], PRECISION);
    }

    function updateOne(address _token, uint256 timeElapsed) internal {
        uint256 sum = 0;
        for (uint256 i = 0; i < getPriceRoute[_token].length; i++) {
            PriceRoute memory route = getPriceRoute[_token][i];
            sum += getTwapPriceInternal(_token, route, timeElapsed);
        }

        prices[_token] = sum / getPriceRoute[_token].length;
    }

    function getTwapPriceInternal(
        address _token,
        PriceRoute memory _route,
        uint256 _timeElapsed
    ) internal returns (uint256) {
        uint256 currentPrice = currentCumulativePrice(_token, _route.uniswapPair);
        uint256 basePrice_ = basePrice[_route.base];
        uint256 twap =
            FixedPoint
                .uq112x112(uint224((currentPrice - lastCumulativePrice[_route.id]) / _timeElapsed))
                .mul(basePrice_)
                .decode144();
        lastCumulativePrice[_route.id] = currentPrice;
        return twap;
    }

    function currentCumulativePrice(address _token, address _pair) internal view returns (uint256) {
        (uint256 cumulativePrice0, uint256 cumulativePrice1, ) = UniswapV2OracleLibrary.currentCumulativePrices(_pair);
        if (_token == IUniswapV2Pair(_pair).token0()) {
            return cumulativePrice0;
        }

        return cumulativePrice1;
    }

    function addTokenLPPairInternal(
        address _token,
        BaseToken[] calldata _bases,
        address[] calldata _pairs
    ) internal {
        require(getPriceRoute[_token].length == 0, "token already added");
        require(_bases.length == _pairs.length && _bases.length > 0, "invalid config");
        for (uint256 i = 0; i < _bases.length; i++) {
            PriceRoute memory route = PriceRoute (
                keccak256(abi.encodePacked(_bases[i], _pairs[i])),
                _bases[i],
                _pairs[i]
            );

            getPriceRoute[_token].push(route);
        }

        whitelistedTokens.push(_token);
    }
}
