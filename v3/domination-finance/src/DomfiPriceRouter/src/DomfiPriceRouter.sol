// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import { IDomfiOracle } from "./interfaces/IDomfiOracle.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiPairsStorage } from "./interfaces/IDomfiPairsStorage.sol";
import { IDomfiPriceUpKeep } from "./interfaces/IDomfiPriceUpKeep.sol";
import { IDomfiPriceRouter } from "./interfaces/IDomfiPriceRouter.sol";

contract DomfiPriceRouter is IDomfiPriceRouter, Initializable {
    IDomfiRegistry public registry;

    uint32 internal constant MAX_TS_VALIDITY = 900; // 15 min
    uint32 internal constant MAX_PUBLISH_VALIDITY = 15;

    uint256 public currentOrderId;
    uint32 public maxTsValidity;
    uint32 public maxPublishValidity;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IDomfiRegistry registryAddress,
        uint32 initialMaxTsValidity,
        uint32 initialMaxPublishValidity,
        uint256 initialOrderId
    ) external initializer {
        if (
            address(registryAddress) == address(0) || initialMaxTsValidity > MAX_TS_VALIDITY
                || initialMaxTsValidity == 0 || initialMaxPublishValidity > MAX_PUBLISH_VALIDITY
                || initialMaxPublishValidity == 0
        ) {
            revert WrongParams();
        }

        registry = registryAddress;
        currentOrderId = initialOrderId;

        _setMaxTsValidity(initialMaxTsValidity);
        _setMaxPublishValidity(initialMaxPublishValidity);
    }

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() private view {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
    }

    modifier onlyTrading() {
        _onlyTrading();
        _;
    }

    function _onlyTrading() private view {
        if (msg.sender != registry.getContractAddress("trading")) {
            revert NotTrading(msg.sender);
        }
    }

    modifier onlyTradesUpKeepOrTrading() {
        _onlyTradesUpKeepOrTrading();
        _;
    }

    function _onlyTradesUpKeepOrTrading() private view {
        if (
            msg.sender != registry.getContractAddress("tradesUpKeep")
                && msg.sender != registry.getContractAddress("trading")
        ) {
            revert NotTradesUpKeepOrTrading(msg.sender);
        }
    }

    function setMaxTsValidity(uint32 newMaxTsValidity) external onlyGov {
        _setMaxTsValidity(newMaxTsValidity);
    }

    function _setMaxTsValidity(uint32 newMaxTsValidity) private {
        if (newMaxTsValidity > MAX_TS_VALIDITY || newMaxTsValidity == 0) {
            revert WrongParams();
        }

        maxTsValidity = newMaxTsValidity;
        emit MaxTsValidityUpdated(newMaxTsValidity);
    }

    function setMaxPublishValidity(uint32 newMaxPublishValidity) external onlyGov {
        _setMaxPublishValidity(newMaxPublishValidity);
    }

    function _setMaxPublishValidity(uint32 newMaxPublishValidity) private {
        if (newMaxPublishValidity > MAX_PUBLISH_VALIDITY || newMaxPublishValidity == 0) {
            revert WrongParams();
        }

        maxPublishValidity = newMaxPublishValidity;
        emit MaxPublishValidityUpdated(newMaxPublishValidity);
    }

    // EXTERNAL CORE ROUTER FUNCTIONS

    function getPriceNoIncrementNoStore(uint16 pairIndex) external onlyTrading {
        address priceUpkeepAddress = _getPriceUpkeepAddress(pairIndex);
        IDomfiPriceUpKeep(priceUpkeepAddress).getPriceNoStore(pairIndex);
    }

    function storeOrder(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType, uint256 publishId)
        external
        onlyTradesUpKeepOrTrading
        returns (uint256)
    {
        _requireValidPublishId(pairIndex, publishId);

        ++currentOrderId;

        address priceUpkeepAddress = _getPriceUpkeepAddress(pairIndex);
        IDomfiPriceUpKeep(priceUpkeepAddress)
            .storeOrder(currentOrderId, pairIndex, orderType, publishId);

        return currentOrderId;
    }

    function getPrice(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType, uint256 validator)
        external
        onlyTradesUpKeepOrTrading
        returns (uint256)
    {
        bool pairHasNativeOracleFeed = IDomfiPairsStorage(
                registry.getContractAddress("pairsStorage")
            ).pairHasNativeOracleFeed(pairIndex);

        if (pairHasNativeOracleFeed) {
            return _getPriceByPublishId(pairIndex, orderType, validator);
        } else {
            return _getPriceByTimestamp(pairIndex, orderType, validator);
        }
    }

    function getPriceLatest(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType)
        external
        onlyTrading
        returns (uint256)
    {
        bool pairHasNativeOracleFeed = IDomfiPairsStorage(
                registry.getContractAddress("pairsStorage")
            ).pairHasNativeOracleFeed(pairIndex);

        if (pairHasNativeOracleFeed) {
            return _getPriceByLatestPublishId(pairIndex, orderType);
        } else {
            return _getPriceByLatestTimestamp(pairIndex, orderType);
        }
    }

    function getLatestPriceValidator(uint16 pairIndex) external view returns (uint256) {
        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        bytes32 feed = pairsStorage.pairFeed(pairIndex);

        if (!pairsStorage.pairHasNativeOracleFeed(pairIndex)) {
            revert NotNativeFeed(pairIndex);
        }

        return IDomfiOracle(registry.getContractAddress("oracle")).getPublishId(feed);
    }

    // INTERNAL CORE ROUTER FUNCTIONS

    function _getPriceByTimestamp(
        uint16 pairIndex,
        IDomfiPriceUpKeep.OrderType orderType,
        uint256 timestamp
    ) internal returns (uint256) {
        uint256 currTimestamp = block.timestamp;
        if (
            // slither-disable-next-line timestamp
            timestamp > currTimestamp || currTimestamp - timestamp > maxTsValidity
        ) {
            revert WrongTimestamp();
        }

        return _getPrice(pairIndex, orderType, timestamp);
    }

    function _getPriceByPublishId(
        uint16 pairIndex,
        IDomfiPriceUpKeep.OrderType orderType,
        uint256 publishId
    ) internal returns (uint256) {
        _requireValidPublishId(pairIndex, publishId);
        return _getPrice(pairIndex, orderType, publishId);
    }

    function _getPriceByLatestTimestamp(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType)
        internal
        returns (uint256)
    {
        return _getPrice(pairIndex, orderType, block.timestamp);
    }

    function _getPriceByLatestPublishId(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType)
        internal
        returns (uint256)
    {
        bytes32 feed =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage")).pairFeed(pairIndex);

        uint256 latestPublishId =
            IDomfiOracle(registry.getContractAddress("oracle")).getPublishId(feed);

        return _getPrice(pairIndex, orderType, latestPublishId);
    }

    function _getPrice(uint16 pairIndex, IDomfiPriceUpKeep.OrderType orderType, uint256 validator)
        internal
        returns (uint256)
    {
        ++currentOrderId;

        address priceUpkeepAddress = _getPriceUpkeepAddress(pairIndex);

        IDomfiPriceUpKeep(payable(priceUpkeepAddress))
            .getPrice(currentOrderId, pairIndex, orderType, validator);

        return currentOrderId;
    }

    // INTERNAL HELPER FUNCTIONS

    function _getPriceUpkeepAddress(uint16 pairIndex) internal view returns (address) {
        // This appends the oracle name to the contract, e.g. we are using `chainlink` the resulting
        // string looks like: `chainlinkPriceUpKeep`.

        // slither-disable-next-line unused-return
        (, string memory priceUpKeepContractName) =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage")).getFeedInfo(pairIndex);

        bytes32 contractNameBytes = bytes32(abi.encodePacked(priceUpKeepContractName));

        return registry.getContractAddress(contractNameBytes);
    }

    function _requireValidPublishId(uint16 pairIndex, uint256 publishId) internal view {
        bytes32 feed =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage")).pairFeed(pairIndex);
        uint256 latestPublishId =
            IDomfiOracle(registry.getContractAddress("oracle")).getPublishId(feed);

        if (publishId > latestPublishId || latestPublishId - publishId > maxPublishValidity) {
            revert WrongPublishId();
        }
    }
}
