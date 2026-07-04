// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./ISnapshotable.sol";
import "../harvestable/IHarvestableVault.sol";
import "../liquidation/ILiquidationableVault.sol";

interface ISnapshotableVaultV1 is
    ISnapshotable,
    IHarvestableVaultV1,
    ILiquidationableVaultV1
{
    function setSnapshotableConfig(
        VaultTypes.SnapshotableConfig memory config
    ) external;

    function getSnapshotableConfig() external view returns (address, uint256);

    function calcCommitUser(
        address account,
        uint256 snapshotIndex
    ) external view returns (HarvestTypes.CommitPosition memory hcp);

    function totalSnapshots() external view returns (uint256);

    function getSnapshot(
        uint256 index
    ) external view returns (CommonTypes.CommitType memory);

    function claimableRewards(address account) external view returns (uint256);
}
