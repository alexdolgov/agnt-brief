// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

// Oracle core
import {ChainlinkAdapter} from "./Adapters/ChainlinkAdapter.sol";
import {UniswapAdapter} from "./Adapters/UniswapAdapter.sol";
import {AssetInfo} from "../core/Structs.sol";

// Utils
import {Ownable} from "../utils/Ownable.sol";
import {PercentageMath} from "../utils/PercentageMath.sol";

// Interfaces
import {AggregatorInterface} from "./Adapters/ChainlinkAdapter.sol";
import {IFyde} from "src/interfaces/IFyde.sol";

///@title OracleModule contract
///@notice Handle oracle logic, fetch price from chainlink and uniswap v3 TWAP, implement circuit
/// breaker
///        in case of oracle failure the contract will revert.
contract OracleModule is ChainlinkAdapter, UniswapAdapter, Ownable {
  struct OracleData {
    uint256 clPrice;
    uint256 clTimestamp;
    uint256 quoteTokenUsdPrice;
    uint256 uniPrice;
  }

  struct ManualPrice {
    uint128 price;
    uint128 validUntil;
    uint128 minPrice;
    uint128 maxPrice;
  }

  /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

  ///@notice ETH address for chainlink price feed
  address constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  ///@notice WBTC address
  address constant WBTC = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;

  ///@notice WETH address for Uniswap
  address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

  ///@notice address of relayer allowed to enable cache
  address public relayer;
  ///@notice address of the fyde contract
  address public fyde;

  ///@notice address of the yield manager allowed to register yield token
  address public yieldManager;

  ///@notice if true use value from mapping rather than read from oracle
  bool cacheEnabled;

  ///@notice Period for checking if chainlink data is stale
  ///@dev At init set at 25 hours, most of the chainlink feed have an heartbeat of 24h
  uint32 public stalePeriod;

  ///@notice twapPeriods for uniswap v3 to be compared
  uint16 public twapPeriodLong;
  uint16 public twapPeriodShort;

  ///@notice Threshold of deviation for oracle price
  uint16 public deviationThreshold;

  ///@notice In case of wrong oracle data we return a manual gwei price
  uint256 public manualGweiPrice;

  ///@notice By default USD pricing, but can be set to ETH pricing --> Allow some assets with no USD
  /// pair on chainlink
  mapping(address => bool) public useChainlinkEthPair;

  ///@notice In case we don't have a chainlink feed / uniswap pool we can use a manual price
  /// in order to not block price to 0
  mapping(address => ManualPrice) public manualPrice;

  ///@notice authorization to update price
  mapping(address => bool) public isPriceKeeper;

  ///@notice cached price for each asset
  mapping(address => uint256) public cache;

  mapping(address => address) public yieldTokenToToken;

  error PriceOutsideBounds();

  constructor(address _feedRegistry, address _gasFeed) Ownable(msg.sender) {
    // mainnet 0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf
    setChainlinkFeedRegistry(_feedRegistry);
    // mainnet 0x169E633A2D1E6c10dD91238Ba11c4A708dfEF37C
    setGasFeedAddress(_gasFeed);
    setDeviationThreshold(500); // 5%
    setTwapPeriodLong(1800);
    setTwapPeriodShort(60);
    setStalePeriod(90_000); //25hours
    setManualGweiPrice(50e9);
  }
  /*//////////////////////////////////////////////////////////////
                                 ADMIN
    //////////////////////////////////////////////////////////////*/

  ///@notice Set the address of the chainlink registry
  ///@param feedRegistry Address of the chainlink registry
  ///@dev Address 0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf
  function setChainlinkFeedRegistry(address feedRegistry) public onlyOwner {
    clRegistry = feedRegistry;
  }

  ///@notice Set the address of the gas feed
  ///@param _gasFeed Address of the gas feed
  ///@dev Address 0x169E633A2D1E6c10dD91238Ba11c4A708dfEF37C
  function setGasFeedAddress(address _gasFeed) public onlyOwner {
    gasFeed = AggregatorInterface(_gasFeed);
  }

  ///@notice Set the long TWAP window for querying Uniswap price
  ///@param _twapPeriodLong TWAP period in seconds
  function setTwapPeriodLong(uint16 _twapPeriodLong) public onlyOwner {
    twapPeriodLong = _twapPeriodLong;
  }

  ///@notice Set the short TWAP window for querying Uniswap price
  ///@param _twapPeriodShort TWAP period in seconds
  function setTwapPeriodShort(uint16 _twapPeriodShort) public onlyOwner {
    twapPeriodShort = _twapPeriodShort;
  }

  ///@notice Set the stale period
  ///@param _stalePeriod Stale period in seconds
  function setStalePeriod(uint32 _stalePeriod) public onlyOwner {
    stalePeriod = _stalePeriod;
  }

  ///@notice Set the deviation threshold
  ///@param _deviationThreshold Deviation threshold in percentage (500 -> 5%)
  function setDeviationThreshold(uint16 _deviationThreshold) public onlyOwner {
    deviationThreshold = _deviationThreshold;
  }

  ///@notice Set the manual gwei price
  ///@param _gweiPrice Gwei price
  ///@dev In case of gas feed failure we return this gwei price
  function setManualGweiPrice(uint256 _gweiPrice) public onlyOwner {
    manualGweiPrice = _gweiPrice;
  }

  ///@notice Set the useChainlinkEthPair mapping
  ///@param asset Address of the asset
  ///@dev By default if not set use USD pair in chainlink
  function setUseChainlinkEthPair(address asset, bool _useChainlinkEthPair) external onlyOwner {
    useChainlinkEthPair[asset] = _useChainlinkEthPair;
  }

  ///@notice Set the manual price
  ///@param _asset Address of the asset
  ///@param _price Price of the asset
  ///@param _validity Validity of the price
  function setManualPrice(address _asset, uint128 _price, uint128 _validity) external {
    if (!isPriceKeeper[msg.sender]) revert Unauthorized();
    uint128 minPrice = manualPrice[_asset].minPrice;
    uint128 maxPrice = manualPrice[_asset].maxPrice;
    if (_price > maxPrice || _price < minPrice) revert PriceOutsideBounds();
    manualPrice[_asset] =
      ManualPrice(_price, uint128(block.timestamp) + _validity, minPrice, maxPrice);
  }

  ///@notice Set the manual price as owner directly
  ///@param _asset Address of the asset
  ///@param _price Price of the asset
  ///@param _validity Validity of the price
  function setManualPriceOwner(address _asset, uint128 _price, uint128 _validity)
    external
    onlyOwner
  {
    manualPrice[_asset].price = _price;
    manualPrice[_asset].validUntil = uint128(block.timestamp) + _validity;
  }

  ///@notice Set the manual price bounds
  ///@param _asset Address of the asset
  ///@param _minPrice Minimum pPrice of the asset
  ///@param _maxPrice Maximum of the price
  function setManualPriceBounds(address _asset, uint128 _minPrice, uint128 _maxPrice)
    external
    onlyOwner
  {
    manualPrice[_asset].minPrice = _minPrice;
    manualPrice[_asset].maxPrice = _maxPrice;
  }

  function addPriceKeeper(address _keeper) external onlyOwner {
    isPriceKeeper[_keeper] = true;
  }

  function removePriceKeeper(address _keeper) external onlyOwner {
    isPriceKeeper[_keeper] = false;
  }

  ///@notice Set the relayer
  ///@param _relayer Address of the relayer
  function setRelayer(address _relayer) external onlyOwner {
    relayer = _relayer;
  }

  ///@notice Set fyde
  ///@param _fyde Address of fyde
  function setFyde(address _fyde) external onlyOwner {
    fyde = _fyde;
  }

  ///@notice Set the yield manager
  ///@param _yieldManager Address of the yield manager
  function setYieldManager(address _yieldManager) external onlyOwner {
    yieldManager = _yieldManager;
  }

  ///@notice Register a token as a yield token
  ///@param _baseToken Address of the asset
  ///@param _yieldToken Address of the yield token
  function registerYieldToken(address _baseToken, address _yieldToken) external {
    if (msg.sender != yieldManager) revert Unauthorized();
    yieldTokenToToken[_yieldToken] = _baseToken;
  }

  ///@notice Write prices to the cache and enables it
  ///@param addr Addresses of the assets
  ///@param assetInfo information about the assets
  function useCache(address[] calldata addr, AssetInfo[] calldata assetInfo) external {
    if (msg.sender != relayer) revert Unauthorized();
    for (uint256 i; i < addr.length; ++i) {
      cache[addr[i]] = getPriceInUSD(addr[i], assetInfo[i]);
    }
    cacheEnabled = true;
  }

  ///@notice Disable cache - prices will be read from oracle
  ///@dev should always be called within the same function as useCache to make sure cachec price
  /// only used within same block
  function disableCache() external {
    cacheEnabled = false;
  }

  /*//////////////////////////////////////////////////////////////
                                 EXTERNAL
    //////////////////////////////////////////////////////////////*/

  ///@notice Get the price of an asset in USD
  ///@param assetAddress Address of the asset to fetch price
  ///@param assetInfo AssetInfo struct
  ///@return Price of the asset in USD
  function getPriceInUSD(address assetAddress, AssetInfo memory assetInfo)
    public
    view
    returns (uint256)
  {
    address baseToken = yieldTokenToToken[assetAddress];
    if (baseToken != address(0x0)) {
      assetAddress = baseToken;
      assetInfo = IFyde(fyde).assetInfo(assetAddress);
    }
    if (cacheEnabled) return cache[assetAddress];
    OracleData memory oracleData;

    // We fetch price from chainlink we cover WBTC / ETH / ERC20 price
    oracleData = assetAddress == WBTC
      ? _setWbtcPrice(oracleData, assetAddress)
      : _setChainlinkPrice(oracleData, assetAddress);

    // We check if price is stale
    oracleData = _checkForStaleness(oracleData);

    // if chainlink is valid we return price, dont query uniswap price
    if (_isChainlinkValid(oracleData)) return oracleData.clPrice;

    // if uniswap pool available, set price
    if (assetInfo.uniswapPool != address(0)) {
      // We fetch the quoteToken price (i.e USDC/USD price)
      oracleData = _setQuoteTokenChainlinkPrice(oracleData, assetInfo);
      // get price in quote token
      oracleData = _setUniswapPrice(oracleData, assetAddress, assetInfo);
      // We convert uniswap price in USD (ASSET/WETH => WETH/USD or ASSET/DAI ==> DAI/USD)
      oracleData = _convertToUSD(oracleData);
    }

    // If uniswap is valid we use it
    if (_isUniswapValid(oracleData)) {
      return oracleData.uniPrice;
    } // If no chainlink and no uniswap and manual price is valid we use manual price
    else if (manualPrice[assetAddress].validUntil > uint32(block.timestamp)) {
      return manualPrice[assetAddress].price;
    } else {
      // If no correct oracle we return 0
      return 0;
    }
  }

  ///@notice Get gwei price
  function getGweiPrice() external view returns (uint256) {
    uint256 gweiPrice = _getGweiPrice();
    uint256 correctedPrice = gweiPrice != 0 ? gweiPrice : manualGweiPrice;
    return correctedPrice;
  }

  /*//////////////////////////////////////////////////////////////
                                 INTERNAL
    //////////////////////////////////////////////////////////////*/

  ///@notice Write chainlink asset price and timestamp in OracleData
  ///@param oracleData OracleData struct
  ///@param asset Address of the asset to fetch price
  ///@return OracleData struct
  function _setChainlinkPrice(OracleData memory oracleData, address asset)
    internal
    view
    returns (OracleData memory)
  {
    address clQuoteToken = useChainlinkEthPair[asset] == false ? USD : ETH;
    (uint256 price, uint256 timestamp) =
      asset == WETH ? _getChainlinkPrice(ETH, USD) : _getChainlinkPrice(asset, clQuoteToken);

    if (clQuoteToken == ETH) {
      (uint256 ethPrice,) = _getChainlinkPrice(ETH, USD);
      price = price * ethPrice / 1e18;
    }

    oracleData.clPrice = price;
    oracleData.clTimestamp = timestamp;
    return oracleData;
  }

  ///@notice Write chainlink WBTC/USD (via WBTC/BTC => BTC/USD) pair price and timestamp in
  /// OracleData
  ///@param oracleData OracleData struct
  ///@param wbtcAddress wbtc address
  ///@return OracleData object
  function _setWbtcPrice(OracleData memory oracleData, address wbtcAddress)
    internal
    view
    returns (OracleData memory)
  {
    (uint256 wtbcPair, uint256 wTimestamp) = _getChainlink_wBtcPairPrice(wbtcAddress);
    (uint256 btcusd, uint256 bTimestamp) = _getChainlinkPrice(BTC, USD);
    oracleData.clPrice = wtbcPair * btcusd / 1e18;
    oracleData.clTimestamp = wTimestamp;
    if (_isStale(wTimestamp) || _isStale(bTimestamp)) {
      oracleData.clPrice = 0;
      oracleData.clTimestamp = 0;
    }
    return oracleData;
  }

  ///@notice Write quoteTokenPrice from chainlink (get USDC/USD; DAI/USD; USDT/USD)
  ///@return OracleData object
  function _setQuoteTokenChainlinkPrice(OracleData memory oracleData, AssetInfo memory assetInfo)
    internal
    view
    returns (OracleData memory)
  {
    (uint256 price, uint256 quoteTimestamp) = assetInfo.uniswapQuoteToken == WETH
      ? _getChainlinkPrice(ETH, USD)
      : _getChainlinkPrice(assetInfo.uniswapQuoteToken, USD);
    oracleData.quoteTokenUsdPrice = _isStale(quoteTimestamp) ? 0 : price;
    return oracleData;
  }

  ///@notice Write uniswap price and timestamp in OracleData
  function _setUniswapPrice(OracleData memory oracleData, address asset, AssetInfo memory assetInfo)
    internal
    view
    returns (OracleData memory)
  {
    // compare long and short TWAP, return 0 if deviationThreshold exceeded
    uint256 priceShortTwap = _getUniswapPrice(asset, assetInfo, twapPeriodShort);
    uint256 priceLongTwap = _getUniswapPrice(asset, assetInfo, twapPeriodLong);

    if (_isInRange(priceShortTwap, priceLongTwap)) oracleData.uniPrice = priceLongTwap;
    else oracleData.uniPrice = 0;
    return oracleData;
  }

  ///@notice Convert ASSET/WETH pair price in ASSET/USD
  ///@param oracleData OracleData struct
  ///@return OracleData object
  function _convertToUSD(OracleData memory oracleData) internal pure returns (OracleData memory) {
    oracleData.uniPrice = oracleData.uniPrice * oracleData.quoteTokenUsdPrice / 1e18;
    return oracleData;
  }

  ///@notice If Chainlink data is stale set data to 0
  ///@param oracleData OracleData struct
  ///@return OracleData object
  function _checkForStaleness(OracleData memory oracleData)
    internal
    view
    returns (OracleData memory)
  {
    if (_isStale(oracleData.clTimestamp)) {
      oracleData.clPrice = 0;
      oracleData.clTimestamp = 0;
    }
    return oracleData;
  }

  ///@notice Check if chainlink data is stale
  ///@return Bool
  function _isStale(uint256 timestamp) internal view returns (bool) {
    return block.timestamp - timestamp <= stalePeriod ? false : true;
  }

  ///@notice Check if chainlink is valid
  ///@param oracleData OracleData struct
  ///@return Bool
  function _isChainlinkValid(OracleData memory oracleData) internal view returns (bool) {
    if (
      oracleData.clPrice == 0 || oracleData.clTimestamp == 0
        || oracleData.clTimestamp > block.timestamp
    ) return false;
    else return true;
  }

  ///@notice Check if Uniswap is valid
  ///@param oracleData OracleData struct
  ///@return Bool
  function _isUniswapValid(OracleData memory oracleData) internal pure returns (bool) {
    return oracleData.uniPrice == 0 ? false : true;
  }

  ///@notice Check if value are within the range
  function _isInRange(uint256 priceA, uint256 priceB) internal view returns (bool) {
    uint256 lowerBound = PercentageMath.percentSub(priceA, deviationThreshold);
    uint256 upperBound = PercentageMath.percentAdd(priceA, deviationThreshold);

    if (priceB < lowerBound || priceB > upperBound) return false;
    else return true;
  }

  function _mean(uint256 priceA, uint256 priceB) internal pure returns (uint256) {
    return (priceA + priceB) / 2;
  }
}
