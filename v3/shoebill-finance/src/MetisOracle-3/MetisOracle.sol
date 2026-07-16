// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../PriceOracle.sol";

interface IAggregator {
    function latestAnswer() external view returns (int256 answer);
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function decimals() external view returns (uint8);
}

// 0x96C4A48Abdf781e9c931cfA92EC0167Ba219ad8E
interface IArtMETISMinter {
    function totalDeposits() external view returns (uint256);

    function getArtMetisAmountToMint(uint256 amount) external view returns (uint256);
}

// 0x79F3522a1b56f22a6549e42f9cfa92eF5FEb81e8
interface ISeMETIS {
    function convertToAssets(uint256 amount) external view returns (uint256);
}

contract MetisOracle is PriceOracle, OwnableUpgradeable {
    uint256 private THRESHOLD;

    mapping(address => bool) public isReporter;
    mapping(string => uint256) public baseUnits;
    mapping(string => IAggregator) public priceFeeds;

    address public artMetis;
    address public artMetisMinter;

    address public seMetis;

    modifier onlyReporter() {
        require(isReporter[msg.sender], "ShoebillOracle: caller is not the reporter");
        _;
    }

    function initialize() external initializer {
        __Ownable_init();

        priceFeeds["sbMETIS"] = IAggregator(0xD4a5Bb03B5D66d9bf81507379302Ac2C2DFDFa6D);
        baseUnits["sbMETIS"] = 1e18;
        baseUnits["sbartMETIS"] = 1e18;

        isReporter[msg.sender] = true;

        artMetisMinter = 0x96C4A48Abdf781e9c931cfA92EC0167Ba219ad8E;
    }

    function setArtMetis(address artMetis_) external onlyOwner {
        artMetis = artMetis_;
    }

    function setSeMetis(address seMetis_) external onlyOwner {
        seMetis = seMetis_;
    }

    function setReporter(address reporter, bool isReporter_) external onlyOwner {
        isReporter[reporter] = isReporter_;
    }

    function setSbFeed(string memory symbol, IAggregator feed, uint256 baseUnit) external onlyOwner {
        priceFeeds[symbol] = feed;
        baseUnits[symbol] = baseUnit;
    }

    function getChainlinkPrice(CToken cToken) public view returns (uint256) {
        string memory symbol = cToken.symbol();

        if (compareString(symbol, "sbartMETIS")) {
            symbol = "sbMETIS";
        }

        if (compareString(symbol, "sbseMETIS")) {
            symbol = "sbMETIS";
        }

        IAggregator feed = priceFeeds[symbol];

        uint256 price = uint256(feed.latestAnswer());

        uint256 price_e18 = price * (10 ** (18 - feed.decimals()));

        if (compareString(symbol, "sbartMETIS")) {
            price_e18 = price_e18 * 1e18 / IArtMETISMinter(artMetisMinter).getArtMetisAmountToMint(1e18);
        }

        if (compareString(symbol, "sbseMETIS")) {
            price_e18 = price_e18 * ISeMETIS(seMetis).convertToAssets(1e18) / 1e18;
        }

        return price_e18;
    }

    function getPrice(CToken cToken) public view override returns (uint256) {
        uint256 price = getChainlinkPrice(cToken);

        return price;
    }

    function getUnderlyingPrice(CToken cToken) external view override returns (uint256) {
        string memory symbol = cToken.symbol();
        uint256 feedDecimals = 18;
        uint256 price = getPrice(cToken);

        return (price * (10 ** (36 - feedDecimals))) / baseUnits[symbol];
    }
}

function compareString(string memory a, string memory b) pure returns (bool) {
    return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
}
