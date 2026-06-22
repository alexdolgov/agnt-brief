// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../libraries/Upgradeable.sol";
import "./interfaces/IOracle.sol";

abstract contract BaseOracle is IOracle, Upgradeable {
    uint256 public immutable PRICE_DECIMALS = 30;
    uint256 public priceAge;

    address public oracleManager;

    mapping(address => bytes32) public tokenPriceIds;
    mapping(bytes32 => address) public priceIdTokens;

    // blockTime + round => token => price
    mapping(bytes32 => mapping(address => uint256)) public backtrackTokenPrices;

    mapping(uint64 => mapping(address => uint256)) public tokenPrices;

    mapping(address => uint64) public tokenPricePublishTime;

    modifier onlyOracleManager() {
        require(msg.sender == oracleManager, "only oracle manager");
        _;
    }

    function __init_oracle(
        IAddressesProvider addressProvider,
        address _oracleManager
    ) internal onlyInitializing {
        priceAge = 10;
        ADDRESS_PROVIDER = addressProvider;
        oracleManager = _oracleManager;
    }

    function updateOracleManager(address newAddress) external onlyPoolAdmin {
        address oldAddress = oracleManager;
        oracleManager = newAddress;
        emit OracleManagerUpdated(oldAddress, newAddress);
    }

    function updatePriceAge(uint256 age) external onlyOracleManager {
        uint256 oldAge = priceAge;
        priceAge = age;
        emit PriceAgeUpdated(oldAge, priceAge);
    }

    function setTokenPriceIds(
        address[] memory tokens,
        bytes32[] memory priceIds
    ) external onlyOracleManager {
        require(tokens.length == priceIds.length, "inconsistent params length");
        for (uint256 i = 0; i < tokens.length; i++) {
            tokenPriceIds[tokens[i]] = priceIds[i];
            priceIdTokens[priceIds[i]] = tokens[i];
            emit TokenPriceIdUpdated(tokens[i], priceIds[i]);
        }
    }

    function updatePrice(
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable onlyOracleManager override {
        PriceInfo[] memory priceInfos = _verifyPrice(tokens, updateData, publishTimes);

        for (uint256 i = 0; i < priceInfos.length; i++) {
            PriceInfo memory priceInfo = priceInfos[i];

            uint64 publishTime = priceInfo.publishTime;
            require(publishTime + priceAge >= block.timestamp, "too old price");

            address token = priceIdTokens[priceInfo.id];
            uint256 price = priceInfo.price;
            tokenPrices[publishTime][token] = price;

            if (publishTime > tokenPricePublishTime[token]) {
                tokenPricePublishTime[token] = publishTime;
            }

            emit PriceUpdated(address(this), token, price, publishTime);
        }
    }

    function updateHistoricalPrice(
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64 publishTime
    ) external payable onlyOracleManager override {
        PriceInfo[] memory priceInfos = _verifyHistoricalPrice(tokens, updateData, publishTime);

        for (uint256 i = 0; i < priceInfos.length; i++) {
            PriceInfo memory priceInfo = priceInfos[i];

            address token = priceIdTokens[priceInfo.id];
            bytes32 backtrackRound = bytes32(abi.encodePacked(uint64(block.timestamp), publishTime));
            uint256 price = priceInfo.price;
            backtrackTokenPrices[backtrackRound][token] = price;

            emit PriceUpdated(address(this), token, price, publishTime);
        }
    }

    function removeHistoricalPrice(
        uint64 _backtrackRound,
        address[] calldata tokens
    ) external onlyOracleManager {
        bytes32 backtrackRound = bytes32(abi.encodePacked(uint64(block.timestamp), _backtrackRound));
        for (uint256 i = 0; i < tokens.length; i++) {
            delete backtrackTokenPrices[backtrackRound][tokens[i]];
        }
    }

    function getHistoricalPrice(
        uint64 publishTime,
        address token
    ) external view onlyOracleManager override returns (uint256) {
        bytes32 backtrackRound = bytes32(abi.encodePacked(uint64(block.timestamp), publishTime));
        uint256 price = backtrackTokenPrices[backtrackRound][token];
        if (price == 0) {
            revert("invalid price");
        }
        return price;
    }

    function getPrice(address token) external view override returns (uint256) {
        return tokenPrices[tokenPricePublishTime[token]][token];
    }

    function getPriceSafely(address token) external view override returns (uint256) {
        uint64 publishTime = tokenPricePublishTime[token];
        require(publishTime + priceAge >= block.timestamp, "too old price");

        return tokenPrices[publishTime][token];
    }

    function decimals() public pure override returns (uint256) {
        return PRICE_DECIMALS;
    }

    function _verifyPrice(
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) internal virtual returns (PriceInfo[] memory);

    function _verifyHistoricalPrice(
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64 publishTime
    ) internal virtual returns (PriceInfo[] memory);

}
