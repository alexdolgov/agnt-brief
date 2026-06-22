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

contract MantaOracle is IPriceCalculator, PriceOracle, OwnableUpgradeable {
    uint256 private THRESHOLD;
    IPriceCalculator public fallBackPriceCalculator; // fallback oracle

    mapping(address => ReferenceData) public references; // 18 decimals of precision
    mapping(address => bool) public isReporter;

    mapping(string => uint256) public baseUnits; // cTokenSymbol => baseUnit usdc = 1e6
    mapping(string => address) public underlying; // cTokenSymbol => underlying address

    address public stone;

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

    function setReporter(address reporter, bool status) external onlyOwner {
        isReporter[reporter] = status;
    }

    function priceOfETH() public view override returns (uint256) {
        ReferenceData memory referenceToken = references[address(0)];

        if (block.timestamp - referenceToken.lastUpdated < THRESHOLD) {
            return referenceToken.lastData;
        }
        return fallBackPriceCalculator.priceOfETH();
    }

    function priceOf(address asset) public view returns (uint256) {
        if (asset == address(0)) {
            return priceOfETH();
        }
        if (asset == stone) {
            return (getStoneExchangeRate() * priceOfETH()) / 1e18;
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
}
