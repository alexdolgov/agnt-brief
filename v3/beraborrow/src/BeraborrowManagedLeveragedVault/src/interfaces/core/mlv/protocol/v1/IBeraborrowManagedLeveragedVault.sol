// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";

interface IBeraborrowManagedLeveragedVault {
    // --- Enums ------------------------------------------------
    enum DenStatus { nonExistent, active, closedByOwner, closedByLiquidation, closedByRedemption }

    struct ProtocolInitParams {
        address borrowerOperations;
        address denManager;
        address leverageRouter;
        address deleverageRouter;
    }

    struct VaultState {
        uint256 prevColl;
        uint256 prevDebt;
        uint256 newColl;
        uint256 newDebt;
        uint256 prevDebtBalance;
        uint256 prevCollateralBalance;
        uint256 debtBalance;
        uint256 collateralBalance;
        uint256 targetCR;
        uint256 collPrice;
    }
    
    // --- Errors -----------------------------------------------
    error BadDebt(uint256 debt);
    error CollateralNotIncreased(uint256 actual, uint256 previous);
    error DebtNotIncreased(uint256 actual, uint256 previous);
    error CollateralNotDecreased(uint256 actual, uint256 previous);
    error DebtNotDecreased(uint256 actual, uint256 previous);

    // --- Events -----------------------------------------------
    event NewLeverageRouter(address leverageRouter);
    event NewDeleverageRouter(address deleverageRouter);
    event NewDelegation(address delegation, bool enabled);

    // --- Functions ---------------------------------------------
    function initialize(IBaseManagedLeveragedVault.BaseInitParams calldata baseParams, ProtocolInitParams calldata protocolParams) external;
    function setLeverageRouter(address _leverageRouter) external;
    function setDeleverageRouter(address _deleverageRouter) external;
    function setDelegateApproval(address user, bool isDelegated) external;
}