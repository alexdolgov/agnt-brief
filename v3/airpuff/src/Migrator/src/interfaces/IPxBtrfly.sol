// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

interface IPxBtrfly {
    /**
     * @notice Retrieves the balance of `account` at the time `snapshotId` was created.
     * @param  account     address  Account address.
     * @param  snapshotId  uint256  Snapshot id.
     * @return             uint256  Balance.
     */
    function balanceOfAt(
        address account,
        uint256 snapshotId
    ) external view returns (uint256);

    /**
     * @notice Retrieves the total supply at the time `snapshotId` was created.
     * @param  snapshotId  uint256  Snapshot id.
     * @return             uint256  Total supply.
     */
    function totalSupplyAt(uint256 snapshotId) external view returns (uint256);

    /**
     * @notice Get epoch.
     * @param  epoch            uint256    Epoch.
     * @return snapshotId       uint256    Snapshot id.
     * @return rewards          address[]  Reward tokens.
     * @return snapshotRewards  uint256[]  Snapshot reward amounts.
     * @return futuresRewards   uint256[]  Futures reward amounts.
     */
    function getEpoch(
        uint256 epoch
    )
        external
        view
        returns (
            uint256 snapshotId,
            bytes32[] memory rewards,
            uint256[] memory snapshotRewards,
            uint256[] memory futuresRewards
        );

    /**
     * @notice Get redeemed snapshot rewards bitmap.
     * @param  account  address   Account.
     * @param  epoch    uint256   Epoch.
     * @return          uint256  Redeemed snapshot bitmap.
     */
    function getEpochRedeemedSnapshotRewards(
        address account,
        uint256 epoch
    ) external view returns (uint256);

    /**
     * @notice Set redeemed snapshot rewards bitmap.
     * @param  account   address  Account.
     * @param  epoch     uint256  Epoch.
     * @param  redeemed  uint256  Redeemed bitmap.
     */
    function setEpochRedeemedSnapshotRewards(
        address account,
        uint256 epoch,
        uint256 redeemed
    ) external;

    /**
     * @notice Update epoch futures rewards to reflect amounts remaining after redemptions.
     * @param  epoch           uint256    Epoch.
     * @param  futuresRewards  uint256[]  Futures rewards.
     */
    function updateEpochFuturesRewards(
        uint256 epoch,
        uint256[] memory futuresRewards
    ) external;

    /**
     * @notice Burn the specified amount of tokens from the specified account.
     * @param  account  address  Owner of the tokens.
     * @param  amount   uint256  Amount to be burned.
     */
    function burn(address account, uint256 amount) external;
}
