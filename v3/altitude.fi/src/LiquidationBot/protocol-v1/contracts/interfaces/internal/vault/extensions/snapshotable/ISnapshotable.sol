// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "../harvestable/IHarvestable.sol";
import "../liquidation/ILiquidationable.sol";

interface ISnapshotable is IHarvestable, ILiquidationable {
    event JoinProtocol(address account);
    event UserCommit(
        address account,
        uint256 supplyIndex,
        uint256 supplyBalance,
        uint256 borrowIndex,
        uint256 borrowBalance,
        uint256 userHarvestUncommittedCosts,
        uint256 userHarvestUncommittedEarnings
    );

    error SN_V1_VAULT_LIQUIDATION_SNAPSHOT_NEEDED();

    function commitUser(address account) external payable;

    function commitUserTo(address account, uint256 snapshotIndex) external;

    function commitUsers(
        address[] calldata accounts
    ) external returns (uint256 totalCommitted);
}
