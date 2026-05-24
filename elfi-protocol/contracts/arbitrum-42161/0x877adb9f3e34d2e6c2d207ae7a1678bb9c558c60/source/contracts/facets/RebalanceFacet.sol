// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../interfaces/IRebalance.sol";
import "../process/RebalanceProcess.sol";
import "../process/SwapProcess.sol";
import "../process/GasProcess.sol";
import "../storage/RoleAccessControl.sol";
import "../utils/ReentrancyGuard.sol";

contract RebalanceFacet is IRebalance, ReentrancyGuard {
    function autoRebalance(OracleProcess.OracleParam[] calldata oracles) external override nonReentrant {
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        uint256 startGas = gasleft();
        OracleProcess.setOraclePrice(oracles);
        RebalanceProcess.autoRebalance();
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }

    function rebalanceUnsettle(OracleProcess.OracleParam[] calldata oracles) external override nonReentrant {
        RoleAccessControl.checkRole(RoleAccessControl.ROLE_KEEPER);
        uint256 startGas = gasleft();
        OracleProcess.setOraclePrice(oracles);
        RebalanceProcess.rebalanceUnsettle();
        OracleProcess.clearOraclePrice();
        GasProcess.addLossExecutionFee(startGas);
    }
    
}
