// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Owned} from "./Owned.sol";
import {IPancakeV3Pool} from "./interfaces/IPancakeV3Pool.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IPancakePair} from "./interfaces/IPancakePair.sol";
import {IStableSwap} from "./interfaces/IStableSwap.sol";
import {AggregatorV3Interface} from "./interfaces/AggregatorV3Interface.sol";

/// @title Provide a way to get the price of a token in USD for reference
/// @notice This contracts provide a simple usd price reference, it does not provide any protection against price manipulation, do not use it for trading
contract PriceLens0 is Owned {
    event UpdateSource(
        address indexed token, SourceType indexed sourceType, address sourceAddress, address indexed baseAddress
    );

    error IncorrectChainlinkPrice();
    error UnknowPrice();
    error IncorrectSourceAddress();
    error IncorrectBaseAddress();

    enum SourceType {
        V2,
        V3,
        SS,
        CHAINLINK
    }

    struct Source {
        SourceType sourceType;
        address sourceAddress;
        address baseAddress;
    }

    mapping(address => Source) public sources;

    uint256 public constant DECIMALS = 6;
    address public immutable _wnative;
    address public _nativePriceAggregator;

    constructor(address nativePriceAggregator, address wnative) Owned(msg.sender) {
        _wnative = wnative;
        setNativePriceAggregator(nativePriceAggregator);
    }

    function setNativePriceAggregator(address nativePriceAggregator) public onlyOwner {
        _getUsdFromChainlink(nativePriceAggregator);
        _nativePriceAggregator = nativePriceAggregator;
    }

    function setSource(address token, SourceType sourceType, address sourceAddress, address baseAddress)
        public
        onlyOwner
    {
        Source memory source = Source(sourceType, sourceAddress, baseAddress);
        _validateSource(source, token);
        sources[token] = source;
        emit UpdateSource(token, sourceType, sourceAddress, baseAddress);
    }

    struct SourceList {
        address token;
        SourceType sourceType;
        address sourceAddress;
        address baseAddress;
    }

    function setSourceList(SourceList[] memory sourceList) public onlyOwner {
        for (uint256 i = 0; i < sourceList.length; i++) {
            Source memory source =
                Source(sourceList[i].sourceType, sourceList[i].sourceAddress, sourceList[i].baseAddress);
            _validateSource(source, sourceList[i].token);
            sources[sourceList[i].token] = source;
            emit UpdateSource(
                sourceList[i].token, sourceList[i].sourceType, sourceList[i].sourceAddress, sourceList[i].baseAddress
            );
        }
    }

    function getUsd(address token) external view returns (uint256 price) {
        uint256 nativeUsd = _getUsdFromChainlink(_nativePriceAggregator);
        if (token == _wnative) return nativeUsd;
        uint256 nativePrice = _getTokenNativePrice(token);
        if (nativePrice == 0) revert UnknowPrice();
        return nativeUsd * nativePrice / 10 ** DECIMALS;
    }

    function getNativePrice(address token) external view returns (uint256 nativePrice) {
        if (token == _wnative) {
            nativePrice = 10 ** DECIMALS;
        } else {
            nativePrice = _getTokenNativePrice(token);
            if (nativePrice == 0) revert UnknowPrice();
        }
    }

    function _validateSource(Source memory source, address token) private view {
        uint256 price = _getPriceFromSource(source, token);
        if (price == 0) revert UnknowPrice();

        if (source.sourceType == SourceType.V2 || source.sourceType == SourceType.V3) {
            IPancakePair pair = IPancakePair(source.sourceAddress);
            address token0 = pair.token0();
            address token1 = pair.token1();

            if (token0 != token && token1 != token) revert IncorrectSourceAddress();
            if (token0 != source.baseAddress && token1 != source.baseAddress) revert IncorrectBaseAddress();
        }
        if (source.sourceType == SourceType.SS) {
            IStableSwap swap = IStableSwap(source.sourceAddress);
            // TODO: support tripool
            address token0 = swap.coins(uint256(0));
            address token1 = swap.coins(uint256(1));
            if (token0 != token && token1 != token) revert IncorrectSourceAddress();
            if (token0 != source.baseAddress && token1 != source.baseAddress) revert IncorrectBaseAddress();
        }
    }

    function _getPriceFromSource(Source memory source, address token) private view returns (uint256 price) {
        if (source.sourceType == SourceType.CHAINLINK) return _getUsdFromChainlink(source.sourceAddress);
        if (source.sourceType == SourceType.V2) return _getPriceFromV2(source.sourceAddress, token);
        if (source.sourceType == SourceType.V3) return _getPriceFromV3(source.sourceAddress, token);
        if (source.sourceType == SourceType.SS) return _getPriceFromSS(source.sourceAddress, token);
        revert UnknowPrice();
    }

    function _getPriceFromV2(address pairAddress, address token) private view returns (uint256 price) {
        IPancakePair pair = IPancakePair(pairAddress);

        address token0 = pair.token0();
        address token1 = pair.token1();

        (uint112 reserve0, uint112 reserve1,) = pair.getReserves();
        if (reserve0 == 0 || reserve1 == 0) revert UnknowPrice();

        bool isToken0 = token == token0;

        uint256 decimals0 = IERC20(token0).decimals();
        uint256 decimals1 = IERC20(token1).decimals();

        // Return the price with 6 decimals
        if (isToken0) {
            price = reserve0 == 0 ? 0 : (reserve1 * 10 ** (decimals0 + DECIMALS)) / (reserve0 * 10 ** decimals1);
        } else {
            price = reserve1 == 0 ? 0 : (reserve0 * 10 ** (decimals1 + DECIMALS)) / (reserve1 * 10 ** decimals0);
        }
    }

    function _getPriceFromV3(address poolAddress, address token) private view returns (uint256 price) {
        IPancakeV3Pool pool = IPancakeV3Pool(poolAddress);
        (uint160 sqrtPriceX96,,,,,,) = pool.slot0();
        if (sqrtPriceX96 == 0) revert UnknowPrice();

        address token0 = pool.token0();
        address token1 = pool.token1();

        uint256 decimals0 = IERC20(token0).decimals();
        uint256 decimals1 = IERC20(token1).decimals();

        bool isToken0 = token == token0;

        uint256 p = (uint256(sqrtPriceX96) * uint256(sqrtPriceX96)) * ((10 ** (decimals0 + DECIMALS)) / 10 ** decimals1)
            / (2 ** 96 * 2 ** 96);

        if (isToken0) {
            price = p;
        } else {
            uint256 numerator = (10 ** DECIMALS) ** 2;
            price = numerator / p;
        }
    }

    function _getPriceFromSS(address swapAddress, address token) private view returns (uint256 price) {
        IStableSwap ss = IStableSwap(swapAddress);
        address token0 = ss.coins(uint256(0));
        address token1 = ss.coins(uint256(1));
        uint256 decimals0 = IERC20(token0).decimals();
        uint256 decimals1 = IERC20(token1).decimals();
        bool isToken0 = token == token0;
        if (isToken0) {
            uint256 dy = ss.get_dy(0, 1, 10 ** decimals0);
            return dy * (10 ** DECIMALS) / 10 ** decimals1;
        } else {
            uint256 dy = ss.get_dy(1, 0, 1 ** decimals1);
            return dy * (10 ** DECIMALS) / 10 ** decimals0;
        }
    }

    function _getTokenNativePrice(address token) private view returns (uint256 price) {
        Source memory source = sources[token];

        if (source.baseAddress == _wnative) return _getPriceFromSource(source, token);
        Source memory baseSource = sources[source.baseAddress];
        if (baseSource.baseAddress != address(0) && baseSource.baseAddress == _wnative) {
            uint256 basePrice = _getPriceFromSource(baseSource, source.baseAddress);
            uint256 tokenPrice = _getPriceFromSource(source, token);
            // tokenPrice = token / source.baseAddress, basePrice = source.baseAddress / _wnative.
            // TokenNativePrice = token / source.baseAddress * source.baseAddress / _wnative / 10 ** DECIMALS = token / _wnative / 10 ** DECIMALS.
            // TokenNativePrice = tokenPrice * basePrice / 10 ** DECIMALS.
            return tokenPrice * basePrice / 10 ** DECIMALS;
        }
    }

    function _getUsdFromChainlink(address aggregatorAddress) private view returns (uint256 price) {
        AggregatorV3Interface aggregator = AggregatorV3Interface(aggregatorAddress);

        (, int256 answer,,,) = aggregator.latestRoundData();
        if (answer <= 0) revert IncorrectChainlinkPrice();

        price = uint256(answer);

        uint256 aggregatorDecimals = aggregator.decimals();

        // Return the price with 6 decimals
        if (aggregatorDecimals < DECIMALS) price *= 10 ** (DECIMALS - aggregatorDecimals);
        else if (aggregatorDecimals > DECIMALS) price /= 10 ** (aggregatorDecimals - DECIMALS);
        else return price;
    }
}
