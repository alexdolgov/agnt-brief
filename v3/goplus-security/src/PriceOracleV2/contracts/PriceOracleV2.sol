// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import "./interface/IPriceOracleV2.sol";
import "./interface/IPancakeRouter02.sol";
import "./interface/IWETH.sol";
import "./interface/IUniswapV3Pool.sol";
import "./interface/IUniswapV3Factory.sol";
import "./libraries/TickMath.sol";
import "./libraries/FullMath.sol";
import "./libraries/OracleLibrary.sol";

/**
 * @title PriceOracleV2
 * @dev A comprehensive price oracle contract that provides token price calculations through multiple sources:
 *      - Chainlink price feeds for reliable price data
 *      - Uniswap V3 TWAP (Time-Weighted Average Price) for decentralized price discovery
 *      - Multi-hop routing through Uniswap V3 pools for complex token pairs
 * 
 * Features:
 * - Gas fee estimation in various tokens
 * - Dynamic token pair pricing through multi-hop pools
 * - Whitelist management for supported tokens
 * - Configurable TWAP intervals for price stability
 */
contract PriceOracleV2 is Ownable, IPriceOracleV2 {

    /// @dev Error thrown when an invalid pool path is encountered during multi-hop routing
    error InvalidPoolPath();

    /// @notice The wrapped native token address (e.g., WBNB on BSC, WETH on Ethereum)
    address public immutable wbnb;

    /// @notice Mapping to track whitelisted tokens that are supported by the oracle
    mapping(address => bool) public isWhitelisted;

    /// @notice Time interval in seconds for TWAP calculations (default: 300 seconds = 5 minutes)
    uint16 public twapInterval = 300; // 300 seconds

    /// @notice Mapping from token address to its corresponding Chainlink price feed address
    /// @dev Price feeds should provide prices in native token (e.g., TOKEN/BNB)
    mapping(address => address) internal priceFeedMap;

    /// @notice Nested mapping storing pool paths for token pair conversions
    /// @dev Maps baseToken => quoteToken => array of Uniswap V3 pools for multi-hop routing
    mapping(address baseToken => mapping(address quoteToken => IUniswapV3Pool[] pools)) dynamicTokenPools;

    /**
     * @notice Initializes the PriceOracleV2 contract
     * @param _wNative Address of the wrapped native token (e.g., WBNB, WETH)
     * @param _defaultTokens Array of token addresses to be whitelisted by default
     */
    constructor(
        address _wNative,
        address[] memory _defaultTokens
    ) Ownable(_msgSender()) {
        wbnb = _wNative;
        for(uint256 i = 0; i < _defaultTokens.length; i ++) {
            isWhitelisted[_defaultTokens[i]] = true;
        }
    }

    /**
     * @notice Updates the whitelist status of a token
     * @param token The token address to update
     * @param white True to whitelist the token, false to remove from whitelist
     */
    function setWhitelist(address token, bool white) external onlyOwner {
        isWhitelisted[token] = white;
    }

    /**
     * @notice Updates the TWAP interval used for price calculations
     * @param interval New interval in seconds for TWAP calculations
     */
    function updateTWAPInterval(uint16 interval) external onlyOwner {
        twapInterval = interval;
    }

    /**
     * @notice Sets the Chainlink price feed for a specific token
     * @param token The token address
     * @param priceFeed The Chainlink price feed address (should provide TOKEN/BNB or TOKEN/ETH prices)
     */
    function setPriceFeed(address token, address priceFeed) external onlyOwner {
        priceFeedMap[token] = priceFeed;
    }

    /**
     * @notice Sets the pool path for converting between two tokens
     * @param baseToken The base token address
     * @param quoteToken The quote token address  
     * @param _pools Array of Uniswap V3 pools that form the conversion path from baseToken to quoteToken
     * @dev Also automatically sets the reverse path (quoteToken to baseToken) with reversed pool order
     */
    function setTokenPools(
        address baseToken,
        address quoteToken,
        IUniswapV3Pool[] calldata _pools
    ) external onlyOwner {
        _checkPoolTokens(_pools, baseToken, quoteToken);
        dynamicTokenPools[baseToken][quoteToken] = _pools;
        dynamicTokenPools[quoteToken][baseToken] = reversePools(_pools);
    }

    /**
     * @notice Validates that the pool path correctly connects tokenA to tokenB
     * @param pool Array of Uniswap V3 pools forming the conversion path
     * @param tokenA Starting token address
     * @param tokenB Ending token address
     * @dev Ensures that:
     *      - tokenA is present in the first pool
     *      - Each subsequent pool contains the output token from the previous pool
     *      - tokenB is the final output token from the last pool
     */
    function _checkPoolTokens(IUniswapV3Pool[] memory pool, address tokenA, address tokenB) internal view {
        require(pool.length > 0, "Invalid pools");
        // tokenA in pool[0]
        // another token in pool[0] should in the next pool, and so on... so there need loop check
        // tokenB in pool[-1]
        address currentToken = tokenA;
        for (uint256 i = 0; i < pool.length; i++) {
            address token0 = pool[i].token0();
            address token1 = pool[i].token1();
            require(token0 == currentToken || token1 == currentToken, "Invalid pool token");
            currentToken = token0 == currentToken ? token1 : token0;
        }
        require(currentToken == tokenB, "Invalid pool token");
    }

    /**
     * @notice Reverses the order of pools in an array
     * @param _pools Array of Uniswap V3 pools to reverse
     * @return reversed Array of pools in reverse order
     * @dev Used to create the reverse conversion path when setting token pools
     */
    function reversePools(IUniswapV3Pool[] memory _pools) internal pure returns (IUniswapV3Pool[] memory) {
        IUniswapV3Pool[] memory reversed = new IUniswapV3Pool[](_pools.length);
        for (uint256 i = 0; i < _pools.length; i++) {
            reversed[i] = _pools[_pools.length - 1 - i];
        }
        return reversed;
    }

    /**
     * @notice Checks if a token pair is supported for dynamic pricing through Uniswap V3 pools
     * @param baseToken The base token address
     * @param quoteToken The quote token address
     * @return bool True if the token pair has configured pool paths, false otherwise
     */
    function isSupportedDynamicToken(
        address baseToken,
        address quoteToken
    ) public view returns (bool) {
        return dynamicTokenPools[baseToken][quoteToken].length > 0;
    }

    /**
     * @notice Calculates the price of base token in terms of quote token through multi-hop pools
     * @param base The base token address whose price we want to get
     * @param quote The quote token address in which we want the price denominated
     * @return price Final price with 1e18 precision (e.g., how many quote tokens per base token)
     * @dev Uses TWAP from configured Uniswap V3 pools to calculate prices across multiple hops
     */
    function getMultiHopPrice(address base, address quote) public view returns (uint256) {
        uint256 price = 1e18; // Start with 1.0 (1e18 precision)
        address currentToken = address(base);

        IUniswapV3Pool[] memory pools = dynamicTokenPools[base][quote];

        // Iterate through each pool in the path
        for (uint256 i = 0; i < pools.length; i++) {
            IUniswapV3Pool currentPool = pools[i];

            // Determine if current token is token0 or token1
            bool isToken0InThisPool = _isToken0InPool(currentPool, currentToken);
            // Get TWAP price for this pool
            uint256 poolPrice = getPoolPrice(address(currentPool), isToken0InThisPool);
            price = (price * poolPrice) / 1e18;

            if (isToken0InThisPool) {
                currentToken = currentPool.token1(); // Next token in path
            } else {
                currentToken = currentPool.token0(); // Next token in path
            }
        }

        return price;
    }

    /**
     * @notice Determines if a token is token0 or token1 in a given Uniswap V3 pool
     * @param poolAddress The Uniswap V3 pool address
     * @param tokenAddress The token address to check
     * @return bool True if the token is token0, false if it's token1
     * @dev Reverts with InvalidPoolPath if the token is not found in the pool
     */
    function _isToken0InPool(IUniswapV3Pool poolAddress, address tokenAddress) internal view returns (bool) {
        if (poolAddress.token0() == tokenAddress) {
            return true;
        } else if (poolAddress.token1() == tokenAddress) {
            return false;
        } else {
            revert InvalidPoolPath();
        }
    }


    /**
     * @notice Calculates TWAP (Time-Weighted Average Price) for a single Uniswap V3 pool
     * @param poolAddress Address of the Uniswap V3 pool
     * @param isToken0InThisPool True if we want price of token0, false for token1
     * @return price Token price with 1e18 precision, adjusted for token decimals
     * @dev Uses Uniswap V3's observe function to get time-weighted tick data over the configured interval
     */
    function getPoolPrice(address poolAddress, bool isToken0InThisPool) public view returns (uint256) {   
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;

        (int56[] memory tickCumulatives, ) = IUniswapV3Pool(poolAddress).observe(secondsAgos);
        int56 tickCumulativeDelta = tickCumulatives[1] - tickCumulatives[0];
        int24 arithmeticMeanTick = int24(tickCumulativeDelta / int56(uint56(twapInterval)));

        // Always round to negative infinity
        if (
            tickCumulativeDelta < 0 &&
            (tickCumulativeDelta % int56(int16(twapInterval)) != 0)
        ) arithmeticMeanTick--;

        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(arithmeticMeanTick);
        uint256 numerator = FullMath.mulDiv(
            uint256(sqrtPriceX96),
            uint256(sqrtPriceX96),
            1
        );
        uint256 denominator = (1 << 96) * (1 << 96);
        uint256 ratio = FullMath.mulDiv(numerator, 1e18, denominator);

        uint8 decimals0 = IERC20Metadata(IUniswapV3Pool(poolAddress).token0()).decimals();
        uint8 decimals1 = IERC20Metadata(IUniswapV3Pool(poolAddress).token1()).decimals();
        if (!isToken0InThisPool) {
            ratio = FullMath.mulDiv(1e36, 1, ratio);
            if (decimals1 >= decimals0) {
                ratio = FullMath.mulDiv(ratio, 10 ** (decimals1 - decimals0), 1);
            } else {
                ratio = FullMath.mulDiv(ratio, 1, 10 ** (decimals0 - decimals1));
            }
        } else {
            if (decimals1 >= decimals0) {
                ratio = FullMath.mulDiv(ratio, 1, 10 ** (decimals1 - decimals0));
            } else {
                ratio = FullMath.mulDiv(ratio, 10 ** (decimals0 - decimals1), 1);
            }
        }
        return ratio;
    }
    
    /**
     * @notice Converts a base token amount to equivalent quote token amount
     * @param baseToken The token to convert from
     * @param quoteToken The token to convert to
     * @param baseAmount The amount of base tokens to convert
     * @return quoteAmount The equivalent amount in quote tokens
     * @dev Requires that the token pair is supported (has configured pool paths)
     */
    function getTokenAmount(
        address baseToken,
        address quoteToken,
        uint256 baseAmount
    ) external view returns (uint256 quoteAmount) {
        require(isSupportedDynamicToken(baseToken, quoteToken), "Not supported token pair");
        return FullMath.mulDiv(getMultiHopPrice(baseToken, quoteToken), baseAmount, 1e18);
    }

    /**
     * @notice Calculates the token amount equivalent to a given gas consumption
     * @param quoteToken The token address in which to express the gas cost
     * @param gasAmount The amount of gas consumed
     * @return quoteAmount The equivalent amount in quote tokens
     * @dev Multiplies gas amount by current gas price to get native token cost, then converts to quote token
     */
    function getQuoteAmount4Gas(
        address quoteToken,
        uint256 gasAmount
    ) public view returns (uint256 quoteAmount) {

        uint256 nativeAmount = gasAmount * tx.gasprice;
        return getQuoteAmount4Native(quoteToken, nativeAmount);
    }

    /**
     * @notice Converts native token amount to equivalent quote token amount
     * @param quoteToken The token address to convert to
     * @param nativeAmount The amount of native tokens (e.g., BNB, ETH) to convert
     * @return quoteAmount The equivalent amount in quote tokens
     * @dev First tries Chainlink price feed, falls back to TWAP if available
     */
    function getQuoteAmount4Native(
        address quoteToken, 
        uint256 nativeAmount
    ) public view returns (uint256 quoteAmount) {
        // calculate token amount with chainlink
        quoteAmount = native2TokenAmount(quoteToken, nativeAmount);
        if (quoteAmount != 0) {
            return quoteAmount;
        }
        // calculate token amount with TWAP
        if(isSupportedDynamicToken(wbnb, quoteToken)) {
            return FullMath.mulDiv(getMultiHopPrice(wbnb, quoteToken), nativeAmount, 1e18);
        }
    }

    /**
     * @notice Converts native token amount to token amount using Chainlink price feed
     * @param token The token address to convert to
     * @param gasUsed The amount of native tokens to convert (despite the parameter name)
     * @return uint256 The equivalent token amount, or 0 if no price feed is available or price is invalid
     * @dev Uses Chainlink price feed to get TOKEN/Native price and calculates conversion
     */
    function native2TokenAmount(
        address token,
        uint256 gasUsed
    ) public view returns (uint256) {
        if (priceFeedMap[token] != address(0)) {
            (, int price, , , ) = AggregatorV3Interface(priceFeedMap[token]).latestRoundData();
            if (price > 0) {
                uint256 decimals = IERC20Metadata(token).decimals();
                return (gasUsed * 10 ** decimals) / uint256(price);
            }
        }
        return 0;
    }
}
