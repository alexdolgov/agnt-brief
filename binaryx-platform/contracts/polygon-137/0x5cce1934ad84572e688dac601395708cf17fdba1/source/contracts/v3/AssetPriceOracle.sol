// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./RewardsDistributor.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/IAccessManager.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract AssetPriceOracle is Initializable {
    struct Price {
        uint256 price;
        uint256 timestamp;
    }

    IAddressesProvider public addressesProvider;
    mapping(address => Price) public assetPrice;

    event AssetAdded(address asset, uint256 price, uint256 timestamp);
    event AssetPriceUpdated(address asset, uint256 price, uint256 timestamp);
    event AssetRemoved(address asset);

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "AssetPriceOracle: The caller must be a super oracle");
        _;
    }

    function initialize(address _addressesProvider) public initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
    }

    function getVersion() external pure returns (uint256) {
        return 1;
    }

    function latestPrice(address asset) external view returns (uint256) {
        return assetPrice[asset].price;
    }

    function latestTimestamp(address asset) external view returns (uint256) {
        return assetPrice[asset].timestamp;
    }

    function setAssetPrice(address asset, uint256 price) public onlySuperOracle {
        require(price > 0, "AssetPriceOracle: price must be greater than 0");
        assetPrice[asset].price = price;
        assetPrice[asset].timestamp = block.timestamp;
        emit AssetPriceUpdated(asset, price, block.timestamp);
    }

    function setAssetPrices(address[] memory assets, uint256[] memory prices) external onlySuperOracle {
        require(assets.length == prices.length, "assets and prices must have the same length");
        for (uint256 i = 0; i < assets.length; i++) {
            setAssetPrice(assets[i], prices[i]);
        }
    }

    function addAsset(address asset, uint256 price) public onlySuperOracle {
        require(assetPrice[asset].timestamp == 0, "AssetPriceOracle: asset already exists");
        assetPrice[asset].price = price;
        assetPrice[asset].timestamp = block.timestamp;
        emit AssetAdded(asset, price, block.timestamp);
    }

    function addAssets(address[] memory assets, uint256[] memory prices) external onlySuperOracle {
        require(assets.length == prices.length, "assets and prices must have the same length");
        for (uint256 i = 0; i < assets.length; i++) {
            addAsset(assets[i], prices[i]);
        }
    }

    function removeAsset(address asset) external onlySuperOracle {
        require(assetPrice[asset].timestamp != 0, "AssetPriceOracle: asset does not exist");
        delete assetPrice[asset];
        emit AssetRemoved(asset);
    }
}
