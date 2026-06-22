// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

/// @title IComet
/// @dev This interface corresponds to the following version of the Comet contract:
/// https://github.com/compound-finance/comet/blob/fcf518865ae26584d205af169060bc3ccac5be2f
interface IComet {
    struct AssetInfo {
        uint8 offset;
        address asset;
        address priceFeed;
        uint64 scale;
        uint64 borrowCollateralFactor;
        uint64 liquidateCollateralFactor;
        uint64 liquidationFactor;
        uint128 supplyCap;
    }

    /**
     * @dev UserBasic stores a user's basic balance information
     * @param principal Amount of base asset that the account has supplied (greater than zero) or owes (less than zero) to the protocol.
     * @param baseTrackingIndex Index of the account.
     * @param baseTrackingAccrued Ihe interest that the account has accrued.
     * @param assetsIn Tracks which assets the account has supplied as collateral.
     */
    struct UserBasic {
        int104 principal;
        uint64 baseTrackingIndex;
        uint64 baseTrackingAccrued;
        uint16 assetsIn;
        uint8 _reserved;
    }

    struct TotalsBasic {
        // 1st slot
        uint64 baseSupplyIndex;
        uint64 baseBorrowIndex;
        uint64 trackingSupplyIndex;
        uint64 trackingBorrowIndex;
        // 2nd slot
        uint104 totalSupplyBase;
        uint104 totalBorrowBase;
        uint40 lastAccrualTime;
        uint8 pauseFlags;
    }

    function userBasic(address) external view returns (UserBasic memory);

    function collateralBalanceOf(
        address account,
        address asset
    ) external view returns (uint128);

    function numAssets() external view returns (uint8);

    function getAssetInfo(uint8 i) external view returns (AssetInfo memory);

    function baseToken() external view returns (address);
    function baseTokenPriceFeed() external view returns (address);
    function baseScale() external view returns (uint64);
    function totalsBasic() external view returns (TotalsBasic memory);

    function baseMinForRewards() external view returns (uint256);
    function baseTrackingSupplySpeed() external view returns (uint256);
    function baseTrackingBorrowSpeed() external view returns (uint256);
    function trackingIndexScale() external view returns (uint64);
}
