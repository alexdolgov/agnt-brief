// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ConditionalTokensFeesHandler} from "./ConditionalTokensFeesHandler.sol";

/**
 * @title ConditionalTokensFeesHandlerV2
 * @notice This contract handles the withdrawal of fees from the fee module contracts including collateral.
 * @author predict.fun protocol team
 */
contract ConditionalTokensFeesHandlerV2 is ConditionalTokensFeesHandler {
    using SafeERC20 for IERC20;

    event CollateralWithdrawnFromFeeModules(
        uint256 feeModuleCollateralBalance,
        uint256 negRiskFeeModuleCollateralBalance
    );

    constructor(
        address _feeModule,
        address _negRiskFeeModule,
        address _ctf,
        address _negRiskCtf,
        address _collateralReceiver,
        address _ctfReceiver
    )
        ConditionalTokensFeesHandler(
            _feeModule,
            _negRiskFeeModule,
            _ctf,
            _negRiskCtf,
            _collateralReceiver,
            _ctfReceiver
        )
    {}

    /**
     * @notice Withdraw collateral from the fee modules. Only callable by users with the WITHDRAW_AND_MERGE_ROLE role.
     */
    function withdrawCollateralFromFeeModules() external onlyRole(WITHDRAW_AND_MERGE_ROLE) {
        uint256 feeModuleCollateralBalance = IERC20(FEE_MODULE.collateral()).balanceOf(address(FEE_MODULE));

        if (feeModuleCollateralBalance > 0) {
            FEE_MODULE.withdrawFees(collateralReceiver, 0, feeModuleCollateralBalance);
        }

        uint256 negRiskFeeModuleCollateralBalance = IERC20(NEG_RISK_FEE_MODULE.collateral()).balanceOf(
            address(NEG_RISK_FEE_MODULE)
        );

        if (negRiskFeeModuleCollateralBalance > 0) {
            NEG_RISK_FEE_MODULE.withdrawFees(collateralReceiver, 0, negRiskFeeModuleCollateralBalance);
        }

        emit CollateralWithdrawnFromFeeModules(feeModuleCollateralBalance, negRiskFeeModuleCollateralBalance);
    }
}
