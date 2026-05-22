// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./ILiquidationable.sol";
import "../../../../../libraries/types/VaultLiquidationTypes.sol";

interface ILiquidationableVaultV1 is ILiquidationable {
    function getLiquidationSnapshot(
        uint256 index
    ) external view returns (VaultLiquidationTypes.Liquidation memory);
}
