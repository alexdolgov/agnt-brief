// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IBacktracker.sol";
import "./BaseOracle.sol";
import "./OracleTypes.sol";
import "./interfaces/IOracleManager.sol";
import {IOrderManager} from "../interfaces/IOrderManager.sol";
import {Upgradeable} from "../libraries/Upgradeable.sol";

contract OracleManager is IOracleManager, Upgradeable {
    address public executor;

    mapping(OracleTypes.OracleType => address) public oracleMap;

    //indexToken
    mapping(address => OracleTypes.OracleType) public lastUsedOracle;

    function initialize(
        IAddressesProvider addressProvider,
        address _executor
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        executor = _executor;
    }

    modifier onlyExecutor() {
        require(msg.sender == executor, "only executor");
        _;
    }

    modifier onlyBacktracking() {
        require(IBacktracker(ADDRESS_PROVIDER.backtracker()).backtracking(), "only backtracking");
        _;
    }

    function updateOracleAddress(
        OracleTypes.OracleType oracleType,
        address newAddress
    ) external onlyPoolAdmin {
        oracleMap[oracleType] = newAddress;
        emit UpdateOracleAddress(oracleType, newAddress);
    }

    function updateOracleVerifyAddress(
        OracleTypes.OracleType oracleType,
        address newAddress
    ) external onlyPoolAdmin {
        IOracle(oracleMap[oracleType]).updateVerifyAddress(newAddress);
    }

    function updateExecutorAddress(address newAddress) external onlyPoolAdmin {
        address oldAddress = executor;
        executor = newAddress;
        emit UpdatedExecutorAddress(msg.sender, oldAddress, newAddress);
    }

    function updatePriceAge(OracleTypes.OracleType oracleType, uint256 age) external onlyPoolAdmin {
        IOracle(oracleMap[oracleType]).updatePriceAge(age);
    }

    function setTokenPriceIds(
        OracleTypes.OracleType oracleType,
        address[] memory tokens,
        bytes32[] memory priceIds
    ) external onlyPoolAdmin {
        IOracle(oracleMap[oracleType]).setTokenPriceIds(tokens, priceIds);
    }

    function updatePrice(
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable override {
        _checkTokenUsedOracle(oracleType, tokens);
        IOracle(oracleMap[oracleType]).updatePrice{value: msg.value}(tokens, updateData, publishTimes);
    }

    function updateHistoricalPrice(
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64 publishTime
    ) external payable onlyExecutor onlyBacktracking override {
        IOracle(oracleMap[oracleType]).updateHistoricalPrice{value: msg.value}(tokens, updateData, publishTime);
    }

    function removeHistoricalPrice(
        OracleTypes.OracleType oracleType,
        uint64 _backtrackRound,
        address[] calldata tokens
    ) external onlyExecutor onlyBacktracking {
        IOracle(oracleMap[oracleType]).removeHistoricalPrice(_backtrackRound, tokens);
    }

    function getHistoricalPrice(
        OracleTypes.OracleType oracleType,
        uint64 publishTime,
        address token
    ) external view onlyBacktracking override returns (uint256) {
        return IOracle(oracleMap[oracleType]).getHistoricalPrice(publishTime, token);
    }

    function getPrice(OracleTypes.OracleType oracleType, address token) external view override returns (uint256) {
        return IOracle(oracleMap[oracleType]).getPrice(token);
    }

    function getPriceSafely(OracleTypes.OracleType oracleType, address token) external view override returns (uint256) {
        return IOracle(oracleMap[oracleType]).getPriceSafely(token);
    }

    function getLastUsedOracle(address token) external view returns (OracleTypes.OracleType) {
        return lastUsedOracle[token];
    }

    function _checkTokenUsedOracle(OracleTypes.OracleType oracleType, address[] calldata tokens) private {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (lastUsedOracle[tokens[i]] != oracleType) {
                lastUsedOracle[tokens[i]] = oracleType;
            }
        }
    }
}
