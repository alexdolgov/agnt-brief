// SPDX-License-Identifier: GPL-2.0-or-later

pragma solidity 0.8.19;

/**
 * @title IGetter
 * @dev Interface for the MUX Degen Protocol Getter contract.
 */
interface IGetter {
    /**
     * @dev Returns the owner of the diamond contract.
     * @return The address of the diamond owner.
     */
    function diamondOwner() external view returns (address);

    /**
     * @dev Returns the value of a pool parameter.
     * @param key The key of the pool parameter.
     * @return The value of the pool parameter.
     */
    function getPoolParameter(bytes32 key) external view returns (bytes32);

    /**
     * @dev Returns whether an address is a maintainer.
     * @param maintainer The address to check.
     * @return True if the address is a maintainer, false otherwise.
     */
    function isMaintainer(address maintainer) external view returns (bool);

    /**
     * @dev Returns the value of a maintenance parameter.
     * @param key The key of the maintenance parameter.
     * @return The value of the maintenance parameter.
     */
    function getMaintenanceParameter(bytes32 key) external view returns (bool);

    /**
     * @dev Returns the storage values of the pool.
     * @return assetsCount The number of assets in the pool.
     * @return sequence The sequence number of the pool.
     * @return lastFundingTime The timestamp of the last funding event.
     * @return brokerTransactions The number of broker transactions.
     */
    function getPoolStorage()
        external
        view
        returns (uint8 assetsCount, uint32 sequence, uint32 lastFundingTime, uint32 brokerTransactions);

    /**
     * @dev Returns the value of an asset parameter.
     * @param assetId The ID of the asset.
     * @param key The key of the asset parameter.
     * @return The value of the asset parameter.
     */
    function getAssetParameter(uint8 assetId, bytes32 key) external view returns (bytes32);

    /**
     * @dev Returns the flags of an asset.
     * @param assetId The ID of the asset.
     * @return The flags of the asset.
     */
    function getAssetFlags(uint8 assetId) external view returns (uint56);

    function getAssetStorageV2(
        uint8 assetId
    )
        external
        view
        returns (
            uint56 flags,
            uint96 spotLiquidity,
            uint96 totalLongPosition,
            uint96 averageLongPrice,
            uint96 totalShortPosition,
            uint96 averageShortPrice,
            uint128 longCumulativeFunding,
            uint128 shortCumulativeFunding
        );

    function getSubAccount(
        bytes32 subAccountId
    )
        external
        view
        returns (uint96 collateral, uint96 size, uint32 lastIncreasedTime, uint96 entryPrice, uint128 entryFunding);

    /**
     * @dev Returns the PnL of a sub-account.
     */
    function traderPnl(
        bytes32 subAccountId,
        uint96 price
    ) external returns (bool hasProfit, uint96 positionPnlUsd, uint96 cappedPnlUsd);

    /**
     * @dev Returns the PnL rate for a given sub-account and mark price.
     * @param subAccountId The ID of the sub-account.
     * @param markPrice The mark price used to calculate the PnL rate.
     * @return The PnL rate as a uint96 value.
     */
    function isDeleverageAllowed(bytes32 subAccountId, uint96 markPrice) external returns (bool);

    /**
     * @dev Returns the sub-account IDs within a range.
     * @param begin The beginning index of the range.
     * @param end The ending index of the range.
     * @return subAccountIds The sub-account IDs within the range.
     * @return totalCount The total number of sub-accounts.
     */
    function getSubAccountIds(
        uint256 begin,
        uint256 end
    ) external view returns (bytes32[] memory subAccountIds, uint256 totalCount);

    /**
     * @dev Returns the sub-account IDs of a trader within a range.
     * @param trader The address of the trader.
     * @param begin The beginning index of the range.
     * @param end The ending index of the range.
     * @return subAccountIds The sub-account IDs of the trader within the range.
     * @return totalCount The total number of sub-accounts.
     */
    function getSubAccountIdsOf(
        address trader,
        uint256 begin,
        uint256 end
    ) external view returns (bytes32[] memory subAccountIds, uint256 totalCount);

    function getMlpPrice(uint96[] memory markPrices) external returns (uint96 mlpPrice);
}
