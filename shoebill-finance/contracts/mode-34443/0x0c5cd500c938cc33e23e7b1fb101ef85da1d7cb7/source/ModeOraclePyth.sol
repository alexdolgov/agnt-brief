// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../PriceOracle.sol";

interface IStone {
    function tokenPrice() external view returns (uint256);
}

contract ModeOraclePyth is PriceOracle, OwnableUpgradeable {
    uint256 private THRESHOLD;

    mapping(address => bool) public isReporter;

    mapping(string => IPyth) public priceFeeds;
    mapping(string => uint256) public baseUnits;
    mapping(string => bytes32) public priceIds;

    address public stone;

    modifier onlyReporter() {
        require(isReporter[msg.sender], "ShoebillOracle: caller is not the reporter");
        _;
    }

    function initialize(
        string[] memory symbols_,
        IPyth[] memory feeds_,
        uint256[] memory baseUnits_,
        bytes32[] memory priceIds_
    ) external initializer {
        for (uint256 i = 0; i < symbols_.length; i++) {
            priceFeeds[symbols_[i]] = feeds_[i];
            baseUnits[symbols_[i]] = baseUnits_[i];
            priceIds[symbols_[i]] = priceIds_[i];
        }

        isReporter[msg.sender] = true;
    }

    function setStone(address _stone) external onlyOwner {
        stone = _stone;
    }

    function setReporter(address reporter, bool isReporter_) external onlyOwner {
        isReporter[reporter] = isReporter_;
    }

    function getPrice(CToken cToken) public view override returns (uint256) {
        string memory symbol = cToken.symbol();

        (uint256 price,) = _getLatestPrice(symbol);

        return price * 10 ** 10;
    }

    function getUnderlyingPrice(CToken cToken) external view override returns (uint256) {
        string memory symbol = cToken.symbol();
        uint256 feedDecimals = 8;

        (uint256 price,) = _getLatestPrice(symbol);
        return (price * (10 ** (36 - feedDecimals))) / baseUnits[symbol];
    }

    function _getLatestPrice(string memory symbol) internal view returns (uint256, uint256) {
        require(address(priceFeeds[symbol]) != address(0), "missing priceFeed");

        PythStructs.Price memory priceData = priceFeeds[symbol].getPriceUnsafe(priceIds[symbol]);

        require(priceData.price > 0, "price cannot be zero");
        uint256 uPrice = uint256(uint64(priceData.price));

        if (compareString(symbol, "STONE")) {
            return (uPrice * getStoneExchangeRate() / (10 ** 18), priceData.publishTime);
        }

        return (uPrice, priceData.publishTime);
    }

    function getStoneExchangeRate() public view returns (uint256) {
        return IStone(stone).tokenPrice();
    }
}

function compareString(string memory a, string memory b) pure returns (bool) {
    return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
}
