// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./CommonTypes.sol";

/**
 * @title VaultLiquidationTypes
 * @dev Input parameters for not having "Stack too deep"
 * @author Altitude Labs
 **/

library VaultLiquidationTypes {
    // @notice track commit position for a user
    struct CommitPosition {
        uint256 supplyBalanceAtSnapshot;
        uint256 borrowBalanceAtSnapshot;
        uint256 supplyLoss;
        uint256 borrowLoss;
        uint256 activeAssetLoss;
        uint256 activeAssetAmount;
        CommonTypes.UserPosition up;
    }

    // @notice track data for a liquidation
    struct Liquidation {
        uint256 supplyLossAtLiquidation;
        uint256 borrowLossAtLiquidation;
        uint256 supplyIndexAtLiquidation;
        uint256 supplyBalanceAtLiquidation;
        uint256 borrowIndexAtLiquidation;
        uint256 borrowBalanceAtLiquidation;
        uint256 liquidationBonus;
    }

    // @notice liquidation storage
    struct VaultLiquidationStorage {
        Liquidation[] vaultLiquidations;
    }
}
