// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../PriceOracle.sol";

interface IPriceCalculator {
    struct ReferenceData {
        uint256 lastData;
        uint256 lastUpdated;
    }

    // return 18 decimals of precision
    function priceOf(address asset) external view returns (uint256);

    function priceOfETH() external view returns (uint256);
}

interface IStone {
    function tokenPrice() external view returns (uint256);
}

interface IWstManta {
    function pricePerShare() external view returns (uint256);
}

interface ISupraSValueFeed {
    // Data structure to hold the pair data
    struct priceFeed {
        uint256 round;
        uint256 decimals;
        uint256 time;
        uint256 price;
    }

    // Data structure to hold the derived/connverted data pairs.  This depends on your requirements.

    struct derivedData {
        int256 roundDifference;
        uint256 derivedPrice;
        uint256 decimals;
    }

    // Below functions enable you to retrieve different flavours of S-Value
    // Term "pair ID" and "Pair index" both refer to the same, pair index mentioned in our data pairs list.

    // Function to retrieve the data for a single data pair
    function getSvalue(uint256 _pairIndex) external view returns (priceFeed memory);

    //Function to fetch the data for a multiple data pairs
    function getSvalues(uint256[] memory _pairIndexes) external view returns (priceFeed[] memory);

    // Function to convert and derive new data pairs using two pair IDs and a mathematical operator multiplication(*) or division(/).
    //** Curreently only available in testnets
    function getDerivedSvalue(uint256 pair_id_1, uint256 pair_id_2, uint256 operation)
        external
        view
        returns (derivedData memory);

    // Function to check  the latest Timestamp on which a data pair is updated. This will help you check the staleness of a data pair before performing an action.
    function getTimestamp(uint256 _tradingPair) external view returns (uint256);
}

contract MantaOracle is IPriceCalculator, PriceOracle, OwnableUpgradeable {
    uint256 private THRESHOLD;
    IPriceCalculator public fallBackPriceCalculator; // fallback oracle

    mapping(address => ReferenceData) public references; // 18 decimals of precision
    mapping(address => bool) public isReporter;

    mapping(string => uint256) public baseUnits; // cTokenSymbol => baseUnit usdc = 1e6
    mapping(string => address) public underlying; // cTokenSymbol => underlying address

    address public stone;

    // upgrade
    address public manta; // 0x95CeF13441Be50d20cA4558CC0a27B601aC544E5
    address public wstManta; // 0x7AC168c81F4F3820Fa3F22603ce5864D6aB3C547

    // upgrade supra
    ISupraSValueFeed public supraSValueFeed;
    mapping(string => bool) public isSupraPairRegistered;
    mapping(string => uint256) public cTokenPairIndexes;

    modifier onlyReporter() {
        require(isReporter[msg.sender], "ShoebillOracle: caller is not the reporter");
        _;
    }

    function initialize(
        address _fallBackPriceCalculator,
        string[] memory _cTokenSymbols,
        uint256[] memory _baseUnits,
        address[] memory _underlying
    ) external initializer {
        __Ownable_init();

        fallBackPriceCalculator = IPriceCalculator(_fallBackPriceCalculator);

        isReporter[msg.sender] = true;
        THRESHOLD = 45 minutes;

        stone = 0xEc901DA9c68E90798BbBb74c11406A32A70652C3;

        for (uint256 i = 0; i < _cTokenSymbols.length; i++) {
            baseUnits[_cTokenSymbols[i]] = _baseUnits[i];
            underlying[_cTokenSymbols[i]] = _underlying[i];
        }
    }

    function setCTokenInfos(string[] memory _cTokenSymbols, uint256[] memory _baseUnits, address[] memory _underlying)
        external
        onlyOwner
    {
        for (uint256 i = 0; i < _cTokenSymbols.length; i++) {
            baseUnits[_cTokenSymbols[i]] = _baseUnits[i];
            underlying[_cTokenSymbols[i]] = _underlying[i];
        }
    }

    function setSupraInfos(string[] memory _cTokenSymbols, uint256[] memory _cTokenPairIndexes) external onlyOwner {
        for (uint256 i = 0; i < _cTokenSymbols.length; i++) {
            cTokenPairIndexes[_cTokenSymbols[i]] = _cTokenPairIndexes[i];
            isSupraPairRegistered[_cTokenSymbols[i]] = true;
        }
    }

    function setReporter(address reporter, bool status) external onlyOwner {
        isReporter[reporter] = status;
    }

    function setSupraSValueFeed(address _supraSValueFeed) external onlyOwner {
        supraSValueFeed = ISupraSValueFeed(_supraSValueFeed);
    }

    function priceOfETH() public view override returns (uint256) {
        ReferenceData memory referenceToken = references[address(0)];

        if (block.timestamp - referenceToken.lastUpdated < THRESHOLD) {
            return referenceToken.lastData;
        }

        uint256 fallbackPrice = fallBackPriceCalculator.priceOfETH();

        if (address(supraSValueFeed) != address(0) && isSupraPairRegistered["sbETH"]) {
            uint256 pairIndex = cTokenPairIndexes["sbETH"];
            ISupraSValueFeed.priceFeed memory priceFeed = supraSValueFeed.getSvalue(pairIndex);

            uint256 supraPrice = (priceFeed.price * (10 ** (18 - priceFeed.decimals)));

            fallbackPrice = (fallbackPrice + supraPrice) / 2; // average

            require(fallbackPrice > 0, "ShoebillOracle: invalid price");
        }

        return fallbackPrice;
    }

    function priceOf(address asset) public view returns (uint256) {
        if (asset == address(0)) {
            return priceOfETH();
        }
        if (asset == stone) {
            return (getStoneExchangeRate() * priceOfETH()) / 1e18;
        }

        if (asset == wstManta) {
            return (getWstMantaExchangeRate() * fallBackPriceCalculator.priceOf(manta)) / 1e18;
        }

        ReferenceData memory referenceToken = references[asset];

        if (block.timestamp - referenceToken.lastUpdated < THRESHOLD) {
            return referenceToken.lastData;
        }

        return fallBackPriceCalculator.priceOf(asset);
    }

    function setFallBackPriceCalculator(address _fallBackPriceCalculator) external onlyOwner {
        fallBackPriceCalculator = IPriceCalculator(_fallBackPriceCalculator);
    }

    function setPrice(address asset, uint256 price) external onlyReporter {
        references[asset] = ReferenceData(price, block.timestamp);
    }

    function setPrices(address[] calldata assets, uint256[] calldata prices) external onlyReporter {
        for (uint256 i = 0; i < assets.length; i++) {
            references[assets[i]] = ReferenceData(prices[i], block.timestamp);
        }
    }

    function getUnderlyingPrice(CToken cToken) external view virtual override returns (uint256) {
        string memory symbol = cToken.symbol();
        uint256 feedDecimals = 18;
        address feedSource = underlying[symbol];
        uint256 price = priceOf(feedSource);

        return (price * (10 ** (36 - feedDecimals))) / baseUnits[symbol];
    }

    function getPrice(CToken cToken) external view virtual override returns (uint256) {
        string memory symbol = cToken.symbol();

        address feedSource = underlying[symbol];

        uint256 price = priceOf(feedSource);

        return price;
    }

    function getStoneExchangeRate() public view returns (uint256) {
        return IStone(stone).tokenPrice();
    }

    function getWstMantaExchangeRate() public view returns (uint256) {
        return IWstManta(wstManta).pricePerShare();
    }
}
