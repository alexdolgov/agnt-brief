// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

interface ILiquidationable {
    event VaultLiquidationSnapshotted(
        uint256 withdrawn,
        uint256 price,
        uint256 supplyLossAtLiquidation,
        uint256 borrowLossAtLiquidation,
        uint256 supplyIndexAtLiquidation,
        uint256 supplyBalanceAtLiquidation,
        uint256 borrowIndexAtLiquidation,
        uint256 borrowBalanceAtLiquidation,
        uint256 liquidationBonus,
        uint256 vaultBalanceAtLiquidation,
        uint256 vaultWindfall
    );

    // Liqjuidation errors
    error LM_V1_CAN_NOT_CALC_SWAP();
    error LM_V1_CAN_NOT_PROCEED_SWAP();

    function snapshotVaultLiquidation() external payable;
}
