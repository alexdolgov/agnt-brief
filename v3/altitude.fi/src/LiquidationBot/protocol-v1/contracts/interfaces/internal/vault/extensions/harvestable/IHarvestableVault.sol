// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./IHarvestable.sol";
import "../../../../../libraries/types/VaultTypes.sol";
import "../../../../../libraries/types/HarvestTypes.sol";

interface IHarvestableVaultV1 is IHarvestable {
    function reserveAmount() external view returns (uint256);

    function getHarvest(
        uint256 index
    ) external view returns (HarvestTypes.HarvestData memory);

    function getHarvestsCount() external view returns (uint256);

    function getUserHarvest(
        address user
    ) external view returns (HarvestTypes.UserHarvestData memory);

    function getHarvestData()
        external
        view
        returns (
            uint256 vaultUncommittedCosts,
            uint256 vaultUncommittedEarnings,
            uint256 userClaimableEarnings,
            uint256 realClaimableEarnings,
            uint256 realUncommittedEarnings,
            uint256 vaultReserve
        );
}
