// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./PropertyFactory.sol";
import "./Asset.sol";
import "./interfaces/IAsset.sol";
import "./interfaces/IRewardsDistributor.sol";

contract UiProvider {
    struct TotalRewards {
        uint currentAccountValue;
        uint totalRentEarned;
        uint totalPropertyValue;
        uint totalRentBalance;
    }

    struct AssetInfoReward {
        address assetAddress;
        uint maxTotalSupply;
        uint userBalance;
        uint accountValue;
        uint totalEarnedPerAsset;
        uint currentRentBalance;
        IAsset.AssetInfo info;
        IAsset.AssetLocationData locationData;
    }

    struct AssetSellProgress {
        uint maxTotalSupply;
        uint leftToBuy;
        uint tokenPrice;
    }

    struct AssetInfoCombined {
        address pointer;
        string name;
        string symbol;
        uint8 status;
        bool isInitialized;
        IAsset.AssetInfo info;
        IAsset.AssetLocationData locationData;
        IAsset.Document[] documents;
        uint256 saleEndDate;
    }

    struct Reward {
        uint amount;
        uint claimableReward;
        uint claimed;
    }

    IAddressesProvider private addressesProvider;

    constructor(address _addressesProvider) {
        addressesProvider = IAddressesProvider(_addressesProvider);
    }

    function getAssets() public view returns (AssetInfoCombined[] memory, AssetSellProgress[] memory) {
        IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
        PropertyFactory assetFactory = PropertyFactory(addressesProvider.getPropertyFactory());
        AssetPriceOracle assetPriceOracle = AssetPriceOracle(addressesProvider.getAssetPriceOracle());

        address[] memory assets = assetFactory.getAssets();
        uint count = assets.length;
        AssetSellProgress[] memory sellInfos = new AssetSellProgress[](count);
        AssetInfoCombined[] memory assetInfos = new AssetInfoCombined[](count);

        for (uint i = 0; i < count; i++) {
            Asset asset = Asset(assets[i]);
            sellInfos[i] = AssetSellProgress(asset.maxTotalSupply(), asset.leftToBuy(), assetPriceOracle.latestPrice(address(asset)));

            IAsset.Document[] memory documents = asset.getDocuments();
            assetInfos[i] = AssetInfoCombined(
                address(asset),
                asset.name(),
                asset.symbol(),
                uint8(asset.status()),
                rewardsDistributor.getPoolInfo(address(asset)).isInitialized,
                asset.getAssetInfo(),
                asset.getAssetLocation(),
                documents,
                asset.saleEndDate()
            );
        }
        return (assetInfos, sellInfos);
    }

    function getAssetSellProgress(address[] memory assets) public view returns (AssetSellProgress[] memory) {
        AssetSellProgress[] memory sellInfos = new AssetSellProgress[](assets.length);

        for (uint i = 0; i < assets.length; i++) {
            Asset asset = Asset(assets[i]);
            sellInfos[i] = AssetSellProgress(
                asset.maxTotalSupply(),
                asset.leftToBuy(),
                AssetPriceOracle(addressesProvider.getAssetPriceOracle()).latestPrice(address(asset))
            );
        }
        return sellInfos;
    }

    function getRewards(address[] memory assets, address userAddress) public view returns (Reward[] memory) {
        IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
        Reward[] memory rewards = new Reward[](assets.length);
        uint[] memory claimableRewards = rewardsDistributor.claimableRewards(userAddress, assets);

        for (uint i = 0; i < assets.length; i++) {
            Asset asset = Asset(assets[i]);
            rewards[i] = Reward(
                rewardsDistributor.getUserInfo(address(asset), userAddress).amount,
                claimableRewards[i] + rewardsDistributor.getUserInfo(address(asset), userAddress).baseClaimable,
                rewardsDistributor.getUserInfo(address(asset), userAddress).claimed
            );
        }
        return rewards;
    }

    function getMyRewards(address userAddress) public view returns (AssetInfoCombined[] memory, AssetSellProgress[] memory, Reward[] memory) {
        IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
        address[] memory assets = rewardsDistributor.getUserRewards(userAddress);
        AssetInfoCombined[] memory assetInfos = new AssetInfoCombined[](assets.length);

        for (uint i = 0; i < assets.length; i++) {
            Asset asset = Asset(assets[i]);
            assetInfos[i] = AssetInfoCombined(
                address(asset),
                asset.name(),
                asset.symbol(),
                uint8(asset.status()),
                rewardsDistributor.getPoolInfo(address(asset)).isInitialized,
                asset.getAssetInfo(),
                asset.getAssetLocation(),
                asset.getDocuments(),
                asset.saleEndDate()
            );
        }
        return (assetInfos, getAssetSellProgress(assets), getRewards(assets, userAddress));
    }

    function getMyRewardsTotal(address userAddress) public view returns (TotalRewards memory, AssetInfoReward[] memory) {
        IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
        AssetPriceOracle assetPriceOracle = AssetPriceOracle(addressesProvider.getAssetPriceOracle());

        address[] memory assets = rewardsDistributor.getUserRewards(userAddress);
        TotalRewards memory totalRewards;
        AssetInfoReward[] memory assetInfoReward = new AssetInfoReward[](assets.length);
        uint[] memory claimableRewards = rewardsDistributor.claimableRewards(userAddress, assets);

        for (uint i = 0; i < assets.length; i++) {
            Asset asset = Asset(assets[i]);
            IRewardsDistributor.UserInfo memory user = rewardsDistributor.getUserInfo(address(asset), userAddress);

            uint totalPropertyValue = ((assetPriceOracle.latestPrice(address(asset)) / 1e6) * user.amount) / 1e18;
            uint currentAccountValue = totalPropertyValue + claimableRewards[i] / 1e6;

            totalRewards.totalPropertyValue += totalPropertyValue;
            totalRewards.totalRentEarned += user.claimed;
            totalRewards.currentAccountValue += currentAccountValue;
            totalRewards.totalRentBalance += claimableRewards[i] + user.baseClaimable;

            assetInfoReward[i] = AssetInfoReward(
                address(asset),
                asset.maxTotalSupply(),
                user.amount,
                currentAccountValue,
                user.claimed,
                claimableRewards[i] + user.baseClaimable,
                asset.getAssetInfo(),
                asset.getAssetLocation()
            );
        }
        return (totalRewards, assetInfoReward);
    }
}
